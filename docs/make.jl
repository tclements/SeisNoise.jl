push!(LOAD_PATH,"../src/")
using Documenter, Noise

makedocs(
    modules = [Noise],
    sitename = "Noise.jl",
    # Uncomment below for local build
    # format = Documenter.HTML(prettyurls = false),
    authors = "Tim Clements",
    pages = Any[
        "Home" => "index.md",
        "Types" => Any[
         "FFTData" => "Types/fftdata.md",
         "CorrData" => "Types/corrdata.md",
        ],
        "Pre-Processing" => "preprocessing.md",
        "Filtering" => "filter.md",
        "Computing FFTs" => "fft.md",
        "Correlation" => "correlation.md",
        "Velocity Change" => "postprocessing.md",
        ],
)

deploydocs(
    repo = "github.com/tclements/Noise.jl.git",
    target = "build",
    deps   = nothing,
    make   = nothing,
)
