@interface WLDetailWarningViewController
- (WLDetailWarningViewController)initWithWLDetailItem:(id)item;
@end

@implementation WLDetailWarningViewController

- (WLDetailWarningViewController)initWithWLDetailItem:(id)item
{
  itemCopy = item;
  failed = [itemCopy failed];
  v6 = @"exclamationmark.triangle";
  if (failed)
  {
    v6 = @"xmark";
  }

  v7 = v6;
  text = [itemCopy text];
  detailText = [itemCopy detailText];
  v14.receiver = self;
  v14.super_class = WLDetailWarningViewController;
  v10 = [(WLDetailWarningViewController *)&v14 initWithTitle:text detailText:detailText symbolName:v7];

  if (v10)
  {
    if ([itemCopy failed])
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemOrangeColor];
    }
    v11 = ;
    headerView = [(WLDetailWarningViewController *)v10 headerView];
    [headerView setTintColor:v11];
  }

  return v10;
}

@end