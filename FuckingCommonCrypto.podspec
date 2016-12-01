Pod::Spec.new do |s|
  s.name             = "FuckingCommonCrypto"
  s.summary          = "CommonCrypto in Swift"
  s.version          = "1.0"
  s.homepage         = "https://github.com/trevest/CommonCrypto"
  s.license          = 'MIT'
  s.author           = { "Forrest McDaniel" => "trevestforvor@gmail.com" }
  s.source           = {
    :git => "https://github.com/trevest/CommonCrypto.git",
    :tag => s.version.to_s
  }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.preserve_paths = 'CCommonCrypto'

  s.pod_target_xcconfig = {
    'MODULEMAP_FILE[sdk=macosx*]'           => '$(PODS_ROOT)/CommonCrypto/macosx.modulemap',
    'MODULEMAP_FILE[sdk=iphoneos*]'         => '$(PODS_ROOT)/CommonCrypto/iphoneos.modulemap',
    'MODULEMAP_FILE[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/CommonCrypto/iphonesimulator.modulemap',
    'MODULEMAP_FILE[sdk=appletvos*]'        => '$(PODS_ROOT)/CommonCrypto/appletvos.modulemap',
    'MODULEMAP_FILE[sdk=appletvsimulator*]' => '$(PODS_ROOT)/CommonCrypto/appletvsimulator.modulemap',
    'MODULEMAP_FILE[sdk=watchos*]'          => '$(PODS_ROOT)/CommonCrypto/watchos.modulemap',
    'MODULEMAP_FILE[sdk=watchsimulator*]'   => '$(PODS_ROOT)/CommonCrypto/watchsimulator.modulemap'
  }

end