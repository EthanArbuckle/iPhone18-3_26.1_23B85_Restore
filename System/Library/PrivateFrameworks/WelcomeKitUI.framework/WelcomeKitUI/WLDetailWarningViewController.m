@interface WLDetailWarningViewController
- (WLDetailWarningViewController)initWithWLDetailItem:(id)a3;
@end

@implementation WLDetailWarningViewController

- (WLDetailWarningViewController)initWithWLDetailItem:(id)a3
{
  v4 = a3;
  v5 = [v4 failed];
  v6 = @"exclamationmark.triangle";
  if (v5)
  {
    v6 = @"xmark";
  }

  v7 = v6;
  v8 = [v4 text];
  v9 = [v4 detailText];
  v14.receiver = self;
  v14.super_class = WLDetailWarningViewController;
  v10 = [(WLDetailWarningViewController *)&v14 initWithTitle:v8 detailText:v9 symbolName:v7];

  if (v10)
  {
    if ([v4 failed])
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemOrangeColor];
    }
    v11 = ;
    v12 = [(WLDetailWarningViewController *)v10 headerView];
    [v12 setTintColor:v11];
  }

  return v10;
}

@end