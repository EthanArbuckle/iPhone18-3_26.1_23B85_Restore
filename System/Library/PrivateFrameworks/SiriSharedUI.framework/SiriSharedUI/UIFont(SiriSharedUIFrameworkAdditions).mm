@interface UIFont(SiriSharedUIFrameworkAdditions)
+ (float)sirisharedui_preferredDynamicBodySize;
+ (float)sirisharedui_preferredDynamicBodySubtextSize;
+ (id)sirisharedui_dynamicTitle0Font;
+ (id)sirisharedui_serverTipPrefixFont;
+ (id)sirisharedui_serverUtteranceFont;
+ (uint64_t)sirisharedui_dynamicLightWeightBodySizeFont;
+ (uint64_t)sirisharedui_dynamicLightWeightBodySubtextSizeFont;
+ (uint64_t)sirisharedui_dynamicMediumWeightBodySizeFont;
+ (uint64_t)sirisharedui_dynamicMediumWeightBodySubtextSizeFont;
+ (uint64_t)sirisharedui_dynamicThinWeightBodySizeFont;
+ (uint64_t)sirisharedui_dynamicThinWeightBodySubtextSizeFont;
@end

@implementation UIFont(SiriSharedUIFrameworkAdditions)

+ (id)sirisharedui_serverUtteranceFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)sirisharedui_serverTipPrefixFont
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithSymbolicTraits:2];

  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)sirisharedui_dynamicTitle0Font
{
  v0 = MEMORY[0x277D74300];
  v1 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  [v1 pointSize];
  v2 = [v0 systemFontOfSize:? weight:?];

  return v2;
}

+ (float)sirisharedui_preferredDynamicBodySize
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v0 _scaledValueForValue:18.0];
  v2 = round(v1);

  return fmax(v2, 18.0);
}

+ (float)sirisharedui_preferredDynamicBodySubtextSize
{
  v0 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v0 _scaledValueForValue:14.0];
  v2 = round(v1);

  return fmax(v2, 14.0);
}

+ (uint64_t)sirisharedui_dynamicLightWeightBodySizeFont
{
  [a1 sirisharedui_preferredDynamicBodySize];
  v3 = v2;

  return [a1 sirisharedui_lightWeightFontWithSize:v3];
}

+ (uint64_t)sirisharedui_dynamicThinWeightBodySizeFont
{
  [a1 sirisharedui_preferredDynamicBodySize];
  v3 = v2;

  return [a1 sirisharedui_thinWeightFontWithSize:v3];
}

+ (uint64_t)sirisharedui_dynamicMediumWeightBodySizeFont
{
  [a1 sirisharedui_preferredDynamicBodySize];
  v3 = v2;

  return [a1 sirisharedui_mediumWeightFontWithSize:v3];
}

+ (uint64_t)sirisharedui_dynamicLightWeightBodySubtextSizeFont
{
  [a1 sirisharedui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [a1 sirisharedui_lightWeightFontWithSize:v3];
}

+ (uint64_t)sirisharedui_dynamicThinWeightBodySubtextSizeFont
{
  [a1 sirisharedui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [a1 sirisharedui_thinWeightFontWithSize:v3];
}

+ (uint64_t)sirisharedui_dynamicMediumWeightBodySubtextSizeFont
{
  [a1 sirisharedui_preferredDynamicBodySubtextSize];
  v3 = v2;

  return [a1 sirisharedui_mediumWeightFontWithSize:v3];
}

@end