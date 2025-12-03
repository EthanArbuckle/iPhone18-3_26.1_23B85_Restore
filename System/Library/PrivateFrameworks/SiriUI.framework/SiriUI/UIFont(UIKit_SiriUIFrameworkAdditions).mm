@interface UIFont(UIKit_SiriUIFrameworkAdditions)
+ (float)siriui_preferredDynamicBodySize;
+ (float)siriui_preferredDynamicBodySubtextSize;
+ (id)siriUI_dynamicSubHeadlineEmphasizedSizeFont;
+ (id)siriUI_dynamicSubHeadlineMediumSizeFont;
+ (id)siriui_dynamicTitle0Font;
+ (id)siriui_serverTipPrefixFont;
+ (id)siriui_serverUtteranceFont;
+ (uint64_t)siriui_dynamicLightWeightBodySizeFont;
+ (uint64_t)siriui_dynamicLightWeightBodySubtextSizeFont;
+ (uint64_t)siriui_dynamicMediumWeightBodySizeFont;
+ (uint64_t)siriui_dynamicMediumWeightBodySubtextSizeFont;
+ (uint64_t)siriui_dynamicThinWeightBodySizeFont;
+ (uint64_t)siriui_dynamicThinWeightBodySubtextSizeFont;
@end

@implementation UIFont(UIKit_SiriUIFrameworkAdditions)

+ (id)siriui_serverUtteranceFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  fontDescriptor = [v0 fontDescriptor];
  v2 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)siriui_serverTipPrefixFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  fontDescriptor = [v0 fontDescriptor];
  v2 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)siriui_dynamicTitle0Font
{
  v0 = MEMORY[0x277D74300];
  v1 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  [v1 pointSize];
  v2 = [v0 systemFontOfSize:? weight:?];

  return v2;
}

+ (float)siriui_preferredDynamicBodySize
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v0 _scaledValueForValue:18.0];
  v2 = round(v1);

  return fmax(v2, 18.0);
}

+ (float)siriui_preferredDynamicBodySubtextSize
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v0 _scaledValueForValue:14.0];
  v2 = round(v1);

  return fmax(v2, 14.0);
}

+ (uint64_t)siriui_dynamicLightWeightBodySizeFont
{
  [self siriui_preferredDynamicBodySize];
  v3 = v2;

  return [self siriui_lightWeightFontWithSize:v3];
}

+ (uint64_t)siriui_dynamicThinWeightBodySizeFont
{
  [self siriui_preferredDynamicBodySize];
  v3 = v2;

  return [self siriui_thinWeightFontWithSize:v3];
}

+ (uint64_t)siriui_dynamicMediumWeightBodySizeFont
{
  [self siriui_preferredDynamicBodySize];
  v3 = v2;

  return [self siriui_mediumWeightFontWithSize:v3];
}

+ (uint64_t)siriui_dynamicLightWeightBodySubtextSizeFont
{
  [self siriui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [self siriui_lightWeightFontWithSize:v3];
}

+ (uint64_t)siriui_dynamicThinWeightBodySubtextSizeFont
{
  [self siriui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [self siriui_thinWeightFontWithSize:v3];
}

+ (uint64_t)siriui_dynamicMediumWeightBodySubtextSizeFont
{
  [self siriui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [self siriui_mediumWeightFontWithSize:v3];
}

+ (id)siriUI_dynamicSubHeadlineMediumSizeFont
{
  v0 = MEMORY[0x277D74300];
  v1 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  [v1 pointSize];
  v2 = [v0 systemFontOfSize:? weight:?];

  return v2;
}

+ (id)siriUI_dynamicSubHeadlineEmphasizedSizeFont
{
  v0 = MEMORY[0x277D74300];
  v1 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  [v1 pointSize];
  v2 = [v0 systemFontOfSize:? weight:?];

  return v2;
}

@end