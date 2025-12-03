@interface SearchUICapsuleButtonItemView
- (double)horizontalPadding;
- (double)verticalPaddingFontMultipler;
- (id)defaultButtonFont;
- (int64_t)symbolScale;
@end

@implementation SearchUICapsuleButtonItemView

- (id)defaultButtonFont
{
  if ([(SearchUIButtonItemView *)self isCompact])
  {
    [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD28]];
  }

  else
  {
    [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 fontWeight:*MEMORY[0x1E69DB970]];
  }
  v2 = ;

  return v2;
}

- (double)verticalPaddingFontMultipler
{
  isCompact = [(SearchUIButtonItemView *)self isCompact];
  result = 1.54;
  if (isCompact)
  {
    return 1.96;
  }

  return result;
}

- (double)horizontalPadding
{
  isCompact = [(SearchUIButtonItemView *)self isCompact];
  result = 18.0;
  if (isCompact)
  {
    return 14.0;
  }

  return result;
}

- (int64_t)symbolScale
{
  v3.receiver = self;
  v3.super_class = SearchUICapsuleButtonItemView;
  return [(SearchUIButtonItemView *)&v3 symbolScale];
}

@end