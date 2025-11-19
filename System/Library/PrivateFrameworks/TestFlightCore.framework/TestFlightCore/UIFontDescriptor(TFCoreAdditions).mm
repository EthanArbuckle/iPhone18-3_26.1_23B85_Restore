@interface UIFontDescriptor(TFCoreAdditions)
+ (id)tf_systemFontWithTextStyle:()TFCoreAdditions weight:forTraitCollection:;
@end

@implementation UIFontDescriptor(TFCoreAdditions)

+ (id)tf_systemFontWithTextStyle:()TFCoreAdditions weight:forTraitCollection:
{
  v0 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:? compatibleWithTraitCollection:?];
  v1 = MEMORY[0x277D74300];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];

  return v2;
}

@end