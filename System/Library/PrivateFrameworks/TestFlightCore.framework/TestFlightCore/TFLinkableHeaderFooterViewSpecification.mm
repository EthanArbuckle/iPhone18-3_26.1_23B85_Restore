@interface TFLinkableHeaderFooterViewSpecification
+ (double)bottomPaddingForShowingHeader:(BOOL)a3;
+ (double)topPaddingFromFirstBaselineForShowingHeader:(BOOL)a3;
+ (id)createTextViewFontForTraitCollection:(id)a3;
@end

@implementation TFLinkableHeaderFooterViewSpecification

+ (double)topPaddingFromFirstBaselineForShowingHeader:(BOOL)a3
{
  result = 45.0;
  if (!a3)
  {
    return 20.0;
  }

  return result;
}

+ (double)bottomPaddingForShowingHeader:(BOOL)a3
{
  result = 20.0;
  if (a3)
  {
    return 10.0;
  }

  return result;
}

+ (id)createTextViewFontForTraitCollection:(id)a3
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:a3];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end