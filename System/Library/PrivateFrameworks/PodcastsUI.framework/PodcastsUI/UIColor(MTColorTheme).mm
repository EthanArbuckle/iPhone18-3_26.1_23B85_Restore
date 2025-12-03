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
  primaryTextColor = [a3 primaryTextColor];
  v4 = primaryTextColor;
  if (primaryTextColor)
  {
    blackColor = primaryTextColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v6 = blackColor;

  return v6;
}

+ (id)secondaryTextColorForTheme:()MTColorTheme
{
  v1 = [self primaryTextColorForTheme:?];
  v2 = [v1 colorWithAlphaComponent:0.55];

  return v2;
}

+ (id)backgroundColorForTheme:()MTColorTheme
{
  backgroundColor = [a3 backgroundColor];
  v4 = backgroundColor;
  if (backgroundColor)
  {
    whiteColor = backgroundColor;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = whiteColor;

  return v6;
}

+ (id)selectedBackgroundColorForTheme:()MTColorTheme
{
  v4 = a3;
  v5 = [self backgroundColorForTheme:v4];
  isBackgroundDark = [v4 isBackgroundDark];

  if (isBackgroundDark)
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
  isBackgroundDark = [a3 isBackgroundDark];

  return [self separatorColorForDarkBackground:isBackgroundDark];
}

+ (uint64_t)artworkBorderColorForTheme:()MTColorTheme
{
  v3 = MEMORY[0x277D75348];
  isBackgroundDark = [a3 isBackgroundDark];

  return [v3 artworkBorderColorForDarkBackground:isBackgroundDark];
}

+ (id)moreBackgroundColorForTheme:()MTColorTheme
{
  v4 = a3;
  v5 = [self backgroundColorForTheme:v4];
  isBackgroundDark = [v4 isBackgroundDark];

  if (isBackgroundDark)
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
  secondaryTextColor = [a3 secondaryTextColor];
  v4 = secondaryTextColor;
  if (secondaryTextColor)
  {
    appTintColor = secondaryTextColor;
  }

  else
  {
    appTintColor = [MEMORY[0x277D75348] appTintColor];
  }

  v6 = appTintColor;

  return v6;
}

+ (id)barsTintColorForTheme:()MTColorTheme
{
  secondaryTextColor = [a3 secondaryTextColor];
  v4 = secondaryTextColor;
  if (secondaryTextColor)
  {
    appTintColor = secondaryTextColor;
  }

  else
  {
    appTintColor = [MEMORY[0x277D75348] appTintColor];
  }

  v6 = appTintColor;

  return v6;
}

@end