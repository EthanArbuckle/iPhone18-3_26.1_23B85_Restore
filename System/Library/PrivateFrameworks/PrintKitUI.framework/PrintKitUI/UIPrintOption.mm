@interface UIPrintOption
- (UIPrintOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (UIPrintPanelViewController)printPanelViewController;
- (void)updatePrintOptionSummary;
@end

@implementation UIPrintOption

- (UIPrintOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UIPrintOption;
  v9 = [(UIPrintOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_printInfo, a3);
    objc_storeWeak(&v10->_printPanelViewController, v8);
    *&v10->_collapsed = 257;
  }

  return v10;
}

- (void)updatePrintOptionSummary
{
  v3 = [(UIPrintOption *)self tableViewCell];

  if (v3)
  {
    v4 = [(UIPrintOption *)self printPanelViewController];
    v8 = [v4 printOptionsTableView];

    v5 = [(UIPrintOption *)self tableViewCell];
    v6 = [v8 indexPathForCell:v5];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
      [v8 reloadRowsAtIndexPaths:v7 withRowAnimation:100];
    }
  }
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end