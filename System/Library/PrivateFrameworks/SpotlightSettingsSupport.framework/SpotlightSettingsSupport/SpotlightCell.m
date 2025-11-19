@interface SpotlightCell
+ (id)bundle;
@end

@implementation SpotlightCell

+ (id)bundle
{
  v2 = bundle_sSpotlightBundle_0;
  if (!bundle_sSpotlightBundle_0)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sSpotlightBundle_0;
    bundle_sSpotlightBundle_0 = v3;

    v2 = bundle_sSpotlightBundle_0;
  }

  return v2;
}

@end