@interface TVUIKitUtilities
+ (id)TVUIKitBundle;
+ (id)preferredGraphicsRenderFormat;
@end

@implementation TVUIKitUtilities

+ (id)TVUIKitBundle
{
  if (TVUIKitBundle_onceToken != -1)
  {
    +[TVUIKitUtilities TVUIKitBundle];
  }

  v3 = TVUIKitBundle_bundle;

  return v3;
}

uint64_t __33__TVUIKitUtilities_TVUIKitBundle__block_invoke()
{
  TVUIKitBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVUIKit"];

  return MEMORY[0x2821F96F8]();
}

+ (id)preferredGraphicsRenderFormat
{
  v2 = MEMORY[0x277D75568];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v5 = [v2 formatForTraitCollection:traitCollection];

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];

  return v5;
}

@end