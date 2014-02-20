# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gramma/version'

Gem::Specification.new do |spec|
  spec.name          = "gramma"
  spec.version       = Gramma::VERSION
  spec.authors       = ["Takashi Nakagawa"]
  spec.email         = ["tak1240@gmail.com"]
  spec.summary       = %q{gramma is the inline English grammer checker}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor', '~> 0.18'
  spec.add_runtime_dependency 'gingerice', '~> 1.2'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
