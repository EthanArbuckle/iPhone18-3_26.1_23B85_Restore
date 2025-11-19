@interface SearchUIRoundedRectButtonItemView
- (double)cornerRadius;
- (double)horizontalPadding;
- (double)verticalPaddingFontMultipler;
@end

@implementation SearchUIRoundedRectButtonItemView

- (double)horizontalPadding
{
  v2 = [MEMORY[0x1E69D9240] isMacOS];
  result = 12.0;
  if (v2)
  {
    return 15.0;
  }

  return result;
}

- (double)verticalPaddingFontMultipler
{
  v2 = [MEMORY[0x1E69D9240] isMacOS];
  result = 2.45;
  if (v2)
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

  v5 = [(SearchUIButtonItemView *)self buttonFont];
  if (v5)
  {
    [v3 scaledValueForValue:v5 withFont:self view:v4];
    v7 = v6;
  }

  else
  {
    v8 = [(SearchUIButtonItemView *)self defaultButtonFont];
    [v3 scaledValueForValue:v8 withFont:self view:v4];
    v7 = v9;
  }

  return v7;
}

@end