# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kofford_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "kofford_view_tool"
  spec.version       = KoffordViewTool::VERSION
  spec.authors       = ["Vern Kofford"]
  spec.email         = ["cheow3@gmail.com"]

  spec.summary       = %q{Various view specific methods for application I use}
  spec.description   = %q{Provideds generated HTML data for Rails applications.}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "'rspec'", "~> 3.7.0"
end
