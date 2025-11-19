@interface UITraitCollection(SBUIAdditions)
+ (id)traitCollectionWithUserInterfaceStyleCompatibleWithLegibilitySettings:()SBUIAdditions;
@end

@implementation UITraitCollection(SBUIAdditions)

+ (id)traitCollectionWithUserInterfaceStyleCompatibleWithLegibilitySettings:()SBUIAdditions
{
  v3 = a3;
  v4 = v3;
  v9 = 0.0;
  if (!v3 || (([v3 primaryColor], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "getWhite:alpha:", &v9, 0), v5, v9 <= 0.5) ? (v6 = 1) : (v6 = 2), objc_msgSend(MEMORY[0x277D75C80], "traitCollectionWithUserInterfaceStyle:", v6, v9), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  }

  return v7;
}

@end