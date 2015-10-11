defmodule HTTPoison.Mixfile do
  use Mix.Project

  @description """
    Yet Another HTTP client for Elixir powered by hackney
  """

  def project do
    [ app: :httpoison,
      version: "0.7.5",
      elixir: "~> 1.0",
      name: "HTTPoison",
      description: @description,
      package: package,
      deps: deps,
      source_url: "https://github.com/edgurgel/httpoison" ]
  end

  def application do
    [applications: [:hackney, :katipo]]
  end

  defp deps do
    [
      #{:katipo, "~> 0.2.2"},
      {:katipo, git: "https://github.com/zoldar/katipo.git", branch: "broken-head", compile: "make"},
      {:hackney, "~> 1.3.1"},
      {:exjsx, "~> 3.1", only: :test},
      {:httparrot, "~> 0.3.4", only: :test},
      {:meck, "~> 0.8.2", only: :test},
      {:earmark, "~> 0.1.17", only: :docs},
      {:ex_doc, "~> 0.8.0", only: :docs},
    ]
  end

  defp package do
    [ contributors: ["Eduardo Gurgel Pinho"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/edgurgel/httpoison"} ]
  end
end
