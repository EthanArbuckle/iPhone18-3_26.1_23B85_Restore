@interface WFAppearanceProxy
+ (id)defaultAppearanceProxy;
+ (id)setupAppearanceProxy;
- (void)apply;
@end

@implementation WFAppearanceProxy

+ (id)setupAppearanceProxy
{
  v2 = objc_alloc_init(WFAppearanceProxy);
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(WFAppearanceProxy *)v2 setTableViewCellBackgroundColor:secondarySystemBackgroundColor];

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
  tableViewCellBackgroundColor = [(WFAppearanceProxy *)self tableViewCellBackgroundColor];

  if (tableViewCellBackgroundColor)
  {
    appearance = [MEMORY[0x277D75B48] appearance];
    tableViewCellBackgroundColor2 = [(WFAppearanceProxy *)self tableViewCellBackgroundColor];
    [appearance setBackgroundColor:tableViewCellBackgroundColor2];
  }
}

@end