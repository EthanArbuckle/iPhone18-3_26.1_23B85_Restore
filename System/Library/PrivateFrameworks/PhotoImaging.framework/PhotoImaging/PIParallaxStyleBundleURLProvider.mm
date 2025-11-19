@interface PIParallaxStyleBundleURLProvider
- (PIParallaxStyleBundleURLProvider)init;
@end

@implementation PIParallaxStyleBundleURLProvider

- (PIParallaxStyleBundleURLProvider)init
{
  v6.receiver = self;
  v6.super_class = PIParallaxStyleBundleURLProvider;
  v2 = [(PIParallaxStyleBundleURLProvider *)&v6 init];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundle = v2->_bundle;
  v2->_bundle = v3;

  return v2;
}

@end