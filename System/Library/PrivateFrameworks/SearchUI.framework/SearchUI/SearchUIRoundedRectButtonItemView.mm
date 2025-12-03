@interface SearchUIRoundedRectButtonItemView
- (double)cornerRadius;
- (double)horizontalPadding;
- (double)verticalPaddingFontMultipler;
@end

@implementation SearchUIRoundedRectButtonItemView

- (double)horizontalPadding
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 12.0;
  if (isMacOS)
  {
    return 15.0;
  }

  return result;
}

- (double)verticalPaddingFontMultipler
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 2.45;
  if (isMacOS)
  {
    return 1.75;
  }

  return result;
}

- (double)cornerRadius
{
  v3 = MEMORY[0x1E69D91A8];
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 10.0;
  }

  buttonFont = [(SearchUIButtonItemView *)self buttonFont];
  if (buttonFont)
  {
    [v3 scaledValueForValue:buttonFont withFont:self view:v4];
    v7 = v6;
  }

  else
  {
    defaultButtonFont = [(SearchUIButtonItemView *)self defaultButtonFont];
    [v3 scaledValueForValue:defaultButtonFont withFont:self view:v4];
    v7 = v9;
  }

  return v7;
}

@end