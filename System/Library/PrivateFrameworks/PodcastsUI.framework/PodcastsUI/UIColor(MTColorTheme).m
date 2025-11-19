@interface UIColor(MTColorTheme)
+ (id)backgroundColorForTheme:()MTColorTheme;
+ (id)barsTintColorForTheme:()MTColorTheme;
+ (id)moreBackgroundColorForTheme:()MTColorTheme;
+ (id)primaryTextColorForTheme:()MTColorTheme;
+ (id)secondaryTextColorForTheme:()MTColorTheme;
+ (id)selectedBackgroundColorForTheme:()MTColorTheme;
+ (id)tintColorForTheme:()MTColorTheme;
+ (uint64_t)artworkBorderColorForTheme:()MTColorTheme;
+ (uint64_t)separatorColorForTheme:()MTColorTheme;
@end

@implementation UIColor(MTColorTheme)

+ (id)primaryTextColorForTheme:()MTColorTheme
{
  v3 = [a3 primaryTextColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  v6 = v5;

  return v6;
}

+ (id)secondaryTextColorForTheme:()MTColorTheme
{
  v1 = [a1 primaryTextColorForTheme:?];
  v2 = [v1 colorWithAlphaComponent:0.55];

  return v2;
}

+ (id)backgroundColorForTheme:()MTColorTheme
{
  v3 = [a3 backgroundColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  return v6;
}

+ (id)selectedBackgroundColorForTheme:()MTColorTheme
{
  v4 = a3;
  v5 = [a1 backgroundColorForTheme:v4];
  v6 = [v4 isBackgroundDark];

  if (v6)
  {
    v7 = 0.1;
    v8 = 1.0;
  }

  else
  {
    v7 = 0.15;
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277D75348] colorWithWhite:v8 alpha:v7];
  v10 = [v5 _colorBlendedWithColor:v9];

  return v10;
}

+ (uint64_t)separatorColorForTheme:()MTColorTheme
{
  v4 = [a3 isBackgroundDark];

  return [a1 separatorColorForDarkBackground:v4];
}

+ (uint64_t)artworkBorderColorForTheme:()MTColorTheme
{
  v3 = MEMORY[0x277D75348];
  v4 = [a3 isBackgroundDark];

  return [v3 artworkBorderColorForDarkBackground:v4];
}

+ (id)moreBackgroundColorForTheme:()MTColorTheme
{
  v4 = a3;
  v5 = [a1 backgroundColorForTheme:v4];
  v6 = [v4 isBackgroundDark];

  if (v6)
  {
    v7 = 0.18;
    v8 = 1.0;
  }

  else
  {
    v7 = 0.13;
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277D75348] colorWithWhite:v8 alpha:v7];
  v10 = [v5 _colorBlendedWithColor:v9];

  return v10;
}

+ (id)tintColorForTheme:()MTColorTheme
{
  v3 = [a3 secondaryTextColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] appTintColor];
  }

  v6 = v5;

  return v6;
}

+ (id)barsTintColorForTheme:()MTColorTheme
{
  v3 = [a3 secondaryTextColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] appTintColor];
  }

  v6 = v5;

  return v6;
}

@end