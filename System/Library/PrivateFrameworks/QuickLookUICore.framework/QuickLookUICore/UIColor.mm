@interface UIColor
@end

@implementation UIColor

void __50__UIColor__QLUtilities___ql_markupBackgroundColor__block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v8[0] = v0;
  v2 = [MEMORY[0x277D75348] colorWithRed:0.909803922 green:0.909803922 blue:0.909803922 alpha:1.0];
  v8[1] = v1;
  v9[0] = v2;
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v5 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v4];
  v6 = _ql_markupBackgroundColor_markupBackgroundColor;
  _ql_markupBackgroundColor_markupBackgroundColor = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end