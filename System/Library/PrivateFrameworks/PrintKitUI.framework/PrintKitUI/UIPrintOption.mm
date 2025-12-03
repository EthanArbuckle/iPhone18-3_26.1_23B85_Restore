@interface UIPrintOption
- (UIPrintOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (UIPrintPanelViewController)printPanelViewController;
- (void)updatePrintOptionSummary;
@end

@implementation UIPrintOption

- (UIPrintOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = UIPrintOption;
  v9 = [(UIPrintOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_printInfo, info);
    objc_storeWeak(&v10->_printPanelViewController, controllerCopy);
    *&v10->_collapsed = 257;
  }

  return v10;
}

- (void)updatePrintOptionSummary
{
  tableViewCell = [(UIPrintOption *)self tableViewCell];

  if (tableViewCell)
  {
    printPanelViewController = [(UIPrintOption *)self printPanelViewController];
    printOptionsTableView = [printPanelViewController printOptionsTableView];

    tableViewCell2 = [(UIPrintOption *)self tableViewCell];
    v6 = [printOptionsTableView indexPathForCell:tableViewCell2];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
      [printOptionsTableView reloadRowsAtIndexPaths:v7 withRowAnimation:100];
    }
  }
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end