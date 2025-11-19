@interface SearchUICircleWithLabelButtonItemView
- (id)buttonFont;
- (id)iconFont;
@end

@implementation SearchUICircleWithLabelButtonItemView

- (id)buttonFont
{
  v2 = MEMORY[0x1E69D9138];
  v3 = *MEMORY[0x1E69DDD10];
  v4 = [MEMORY[0x1E69D9240] isMacOS];
  v5 = MEMORY[0x1E69DB970];
  if (!v4)
  {
    v5 = MEMORY[0x1E69DB980];
  }

  v6 = *v5;

  return [v2 cachedFontForTextStyle:v3 isShort:0 fontWeight:v6];
}

- (id)iconFont
{
  v4.receiver = self;
  v4.super_class = SearchUICircleWithLabelButtonItemView;
  v2 = [(SearchUIButtonItemView *)&v4 buttonFont];

  return v2;
}

@end