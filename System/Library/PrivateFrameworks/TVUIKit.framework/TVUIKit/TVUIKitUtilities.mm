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
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v3 traitCollection];
  v5 = [v2 formatForTraitCollection:v4];

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];

  return v5;
}

@end