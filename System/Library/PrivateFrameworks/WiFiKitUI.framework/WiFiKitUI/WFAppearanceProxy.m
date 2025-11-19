@interface WFAppearanceProxy
+ (id)defaultAppearanceProxy;
+ (id)setupAppearanceProxy;
- (void)apply;
@end

@implementation WFAppearanceProxy

+ (id)setupAppearanceProxy
{
  v2 = objc_alloc_init(WFAppearanceProxy);
  v3 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(WFAppearanceProxy *)v2 setTableViewCellBackgroundColor:v3];

  v4 = MEMORY[0x277D74300];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 pointSize];
  v6 = [v4 systemFontOfSize:?];
  [(WFAppearanceProxy *)v2 setCellTextLabelFont:v6];

  [(WFAppearanceProxy *)v2 setTableViewStyle:2];

  return v2;
}

+ (id)defaultAppearanceProxy
{
  v2 = objc_alloc_init(WFAppearanceProxy);
  if (WFShouldUseInsetTableView())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(WFAppearanceProxy *)v2 setTableViewStyle:v3];

  return v2;
}

- (void)apply
{
  v3 = [(WFAppearanceProxy *)self tableViewCellBackgroundColor];

  if (v3)
  {
    v5 = [MEMORY[0x277D75B48] appearance];
    v4 = [(WFAppearanceProxy *)self tableViewCellBackgroundColor];
    [v5 setBackgroundColor:v4];
  }
}

@end