@interface TFLinkableHeaderFooterViewSpecification
+ (double)bottomPaddingForShowingHeader:(BOOL)header;
+ (double)topPaddingFromFirstBaselineForShowingHeader:(BOOL)header;
+ (id)createTextViewFontForTraitCollection:(id)collection;
@end

@implementation TFLinkableHeaderFooterViewSpecification

+ (double)topPaddingFromFirstBaselineForShowingHeader:(BOOL)header
{
  result = 45.0;
  if (!header)
  {
    return 20.0;
  }

  return result;
}

+ (double)bottomPaddingForShowingHeader:(BOOL)header
{
  result = 20.0;
  if (header)
  {
    return 10.0;
  }

  return result;
}

+ (id)createTextViewFontForTraitCollection:(id)collection
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:collection];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end