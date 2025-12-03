@interface UIColor(MTAdditions)
+ (id)appTintColor;
+ (id)cellEmpahsisBackgroundColor;
+ (id)cellEmpahsisSwitchBorderColor;
+ (id)primaryTextColorForDarkBackground:()MTAdditions;
+ (id)secondaryTextColorForDarkBackground:()MTAdditions;
+ (uint64_t)artworkBorderColorForDarkBackground:()MTAdditions;
+ (uint64_t)buttonBackgroundColorForDarkBackground:()MTAdditions;
+ (uint64_t)separatorColorForDarkBackground:()MTAdditions;
- (uint64_t)isBlackColor;
@end

@implementation UIColor(MTAdditions)

+ (id)appTintColor
{
  if ([MEMORY[0x277D3DB60] isRunningOnTV])
  {
    v0 = 0;
  }

  else
  {
    if (appTintColor_onceToken != -1)
    {
      +[UIColor(MTAdditions) appTintColor];
    }

    v0 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:appTintColor_colorsByTraitCollection];
  }

  return v0;
}

+ (id)cellEmpahsisBackgroundColor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UIColor_MTAdditions__cellEmpahsisBackgroundColor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cellEmpahsisBackgroundColor_onceToken != -1)
  {
    dispatch_once(&cellEmpahsisBackgroundColor_onceToken, block);
  }

  v1 = cellEmpahsisBackgroundColor_color;

  return v1;
}

+ (id)cellEmpahsisSwitchBorderColor
{
  if (cellEmpahsisSwitchBorderColor_onceToken != -1)
  {
    +[UIColor(MTAdditions) cellEmpahsisSwitchBorderColor];
  }

  v1 = cellEmpahsisSwitchBorderColor_color;

  return v1;
}

- (uint64_t)isBlackColor
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  v3 = [blackColor isEqual:self];

  return v3;
}

+ (id)primaryTextColorForDarkBackground:()MTAdditions
{
  if (a3)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;

  return v3;
}

+ (id)secondaryTextColorForDarkBackground:()MTAdditions
{
  if (a3)
  {
    v3 = 0.3;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.4;
    v4 = 0.0;
  }

  v5 = [MEMORY[0x277D75348] colorWithWhite:v4 alpha:v3];

  return v5;
}

+ (uint64_t)artworkBorderColorForDarkBackground:()MTAdditions
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  return [MEMORY[0x277D75348] colorWithWhite:v3 alpha:0.18];
}

+ (uint64_t)separatorColorForDarkBackground:()MTAdditions
{
  v3 = 0.0;
  if (a3)
  {
    v3 = 1.0;
  }

  return [MEMORY[0x277D75348] colorWithWhite:v3 alpha:0.2];
}

+ (uint64_t)buttonBackgroundColorForDarkBackground:()MTAdditions
{
  v3 = 0.74;
  if (a3)
  {
    v3 = 0.2;
  }

  return [MEMORY[0x277D75348] colorWithWhite:v3 alpha:1.0];
}

@end