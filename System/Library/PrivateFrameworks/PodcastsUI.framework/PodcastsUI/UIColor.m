@interface UIColor
@end

@implementation UIColor

void __36__UIColor_MTAdditions__appTintColor__block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithRed:0.447058824 green:0.141176471 blue:0.847058824 alpha:1.0];
  v1 = appTintColor_tintColor;
  appTintColor_tintColor = v0;

  v2 = [MEMORY[0x277D75348] colorWithRed:0.611764706 green:0.352941176 blue:0.949019608 alpha:1.0];
  v3 = appTintColor_lightTintColor;
  appTintColor_lightTintColor = v2;

  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v8[0] = v4;
  v8[1] = v5;
  v9[0] = appTintColor_tintColor;
  v9[1] = appTintColor_lightTintColor;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = appTintColor_colorsByTraitCollection;
  appTintColor_colorsByTraitCollection = v6;
}

void __51__UIColor_MTAdditions__cellEmpahsisBackgroundColor__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) appTintColor];
  v1 = [v3 colorWithAlphaComponent:0.1];
  v2 = cellEmpahsisBackgroundColor_color;
  cellEmpahsisBackgroundColor_color = v1;
}

uint64_t __53__UIColor_MTAdditions__cellEmpahsisSwitchBorderColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.800000012 alpha:1.0];
  v1 = cellEmpahsisSwitchBorderColor_color;
  cellEmpahsisSwitchBorderColor_color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end