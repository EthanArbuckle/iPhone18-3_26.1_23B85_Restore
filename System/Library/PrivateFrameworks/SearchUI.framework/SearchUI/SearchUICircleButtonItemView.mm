@interface SearchUICircleButtonItemView
- (id)defaultButtonFont;
- (int64_t)symbolScale;
@end

@implementation SearchUICircleButtonItemView

- (id)defaultButtonFont
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    if ([(SearchUIButtonItemView *)self isCompact])
    {
      [MEMORY[0x1E69DB878] systemFontOfSize:8.0];
    }

    else
    {
      [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08]];
    }
    v3 = ;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SearchUICircleButtonItemView;
    v3 = [(SearchUIButtonItemView *)&v5 defaultButtonFont];
  }

  return v3;
}

- (int64_t)symbolScale
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v4.receiver = self;
    v4.super_class = SearchUICircleButtonItemView;
    return [(SearchUIButtonItemView *)&v4 symbolScale];
  }

  else if ([(SearchUIButtonItemView *)self isCompact])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end