@interface PXCMMPosterHeaderViewSpec
- (PXCMMPosterHeaderViewSpec)init;
- (PXCMMPosterHeaderViewSpec)initWithPresentationStyle:(int64_t)style;
- (UIFont)preferredStatusFont;
- (UIFont)preferredSubtitleFont;
- (UIFont)preferredTitleFont;
- (double)scaledBottomGradientBaselineOffset;
- (double)scaledStatusBaselineOffset;
- (double)scaledSubtitleBaselineOffset;
- (double)scaledTitleBaselineOffset;
- (double)scaledTopGradientBaselineOffset;
@end

@implementation PXCMMPosterHeaderViewSpec

- (UIFont)preferredStatusFont
{
  statusFontTextStyle = [(PXCMMPosterHeaderViewSpec *)self statusFontTextStyle];
  statusFontDescriptorSymbolicTraits = [(PXCMMPosterHeaderViewSpec *)self statusFontDescriptorSymbolicTraits];
  if ([(PXCMMPosterHeaderViewSpec *)self canShowStatus])
  {
    v5 = MEMORY[0x1A590C430](statusFontTextStyle, statusFontDescriptorSymbolicTraits, 7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIFont)preferredSubtitleFont
{
  [(PXCMMPosterHeaderViewSpec *)self subtitleFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self subtitleFontDescriptorSymbolicTraits];

  JUMPOUT(0x1A590C430);
}

- (UIFont)preferredTitleFont
{
  [(PXCMMPosterHeaderViewSpec *)self titleFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self titleFontDescriptorSymbolicTraits];

  JUMPOUT(0x1A590C430);
}

- (double)scaledBottomGradientBaselineOffset
{
  [(PXCMMPosterHeaderViewSpec *)self bottomGradientFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self bottomGradientFontDescriptorSymbolicTraits];
  [(PXCMMPosterHeaderViewSpec *)self bottomGradientBaselineOffset];
  if ([(PXCMMPosterHeaderViewSpec *)self canShowStatus])
  {

    PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
  }

  return 0.0;
}

- (double)scaledStatusBaselineOffset
{
  [(PXCMMPosterHeaderViewSpec *)self statusFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self statusFontDescriptorSymbolicTraits];
  [(PXCMMPosterHeaderViewSpec *)self statusBaselineOffset];
  if ([(PXCMMPosterHeaderViewSpec *)self canShowStatus])
  {

    PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
  }

  return 0.0;
}

- (double)scaledTopGradientBaselineOffset
{
  [(PXCMMPosterHeaderViewSpec *)self topGradientFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self topGradientFontDescriptorSymbolicTraits];
  [(PXCMMPosterHeaderViewSpec *)self topGradientBaselineOffset];

  PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
}

- (double)scaledSubtitleBaselineOffset
{
  [(PXCMMPosterHeaderViewSpec *)self subtitleFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self subtitleFontDescriptorSymbolicTraits];
  [(PXCMMPosterHeaderViewSpec *)self subtitleBaselineOffset];

  PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
}

- (double)scaledTitleBaselineOffset
{
  [(PXCMMPosterHeaderViewSpec *)self titleFontTextStyle];
  [(PXCMMPosterHeaderViewSpec *)self titleFontDescriptorSymbolicTraits];
  [(PXCMMPosterHeaderViewSpec *)self titleBaselineOffset];

  PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
}

- (PXCMMPosterHeaderViewSpec)initWithPresentationStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = PXCMMPosterHeaderViewSpec;
  result = [(PXCMMPosterHeaderViewSpec *)&v5 init];
  if (result)
  {
    if (style == 1)
    {
      *&result->_titleFontDescriptorSymbolicTraits = 2;
      result->_titleFontTextStyle = 7;
      result->_titleBaselineOffset = 24.0;
      result->_subtitleFontTextStyle = 11;
      result->_subtitleBaselineOffset = 18.0;
      result->_topGradientFontTextStyle = 7;
      result->_topGradientBaselineOffset = 24.0;
      result->_canShowStatus = 0;
      *&result->_statusFontDescriptorSymbolicTraits = 0;
      result->_topGradientFontDescriptorSymbolicTraits = 0x8000;
      *&result->_statusFontTextStyle = 0u;
      *&result->_bottomGradientFontTextStyle = 0u;
    }

    else if (!style)
    {
      result->_titleBaselineOffset = 32.0;
      result->_subtitleFontTextStyle = 7;
      result->_titleFontDescriptorSymbolicTraits = 32770;
      result->_subtitleFontDescriptorSymbolicTraits = 0;
      result->_subtitleBaselineOffset = 24.0;
      result->_topGradientFontTextStyle = 3;
      result->_topGradientFontDescriptorSymbolicTraits = 0x8000;
      result->_canShowStatus = 1;
      result->_topGradientBaselineOffset = 26.0;
      result->_statusFontTextStyle = 12;
      *&result->_statusFontDescriptorSymbolicTraits = 2;
      result->_titleFontTextStyle = 3;
      result->_statusBaselineOffset = 12.0;
      result->_bottomGradientFontTextStyle = 3;
      result->_bottomGradientBaselineOffset = 26.0;
    }
  }

  return result;
}

- (PXCMMPosterHeaderViewSpec)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterHeaderViewSpec.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXCMMPosterHeaderViewSpec init]"}];

  abort();
}

@end