@interface UIPrintOptionListCell
- (UIPrintOptionListDelegate)itemListDelegate;
- (void)prepareForReuse;
- (void)previewDidChangeSize:(id)size;
- (void)printOptionCellTapped;
@end

@implementation UIPrintOptionListCell

- (void)printOptionCellTapped
{
  v3 = [UIPrintOptionListViewController alloc];
  itemListDelegate = [(UIPrintOptionListCell *)self itemListDelegate];
  v5 = [(UIPrintOptionListViewController *)v3 initWithListDelegate:itemListDelegate];
  [(UIPrintOptionListCell *)self setPrintOptionListViewController:v5];

  itemListDelegate2 = [(UIPrintOptionListCell *)self itemListDelegate];
  title = [itemListDelegate2 title];
  printOptionListViewController = [(UIPrintOptionListCell *)self printOptionListViewController];
  [printOptionListViewController setTitle:title];

  itemListDelegate3 = [(UIPrintOptionListCell *)self itemListDelegate];
  printPanelViewController = [itemListDelegate3 printPanelViewController];

  [printPanelViewController contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  printOptionListViewController2 = [(UIPrintOptionListCell *)self printOptionListViewController];
  tableView = [printOptionListViewController2 tableView];
  [tableView setContentInset:{v11, v13, v15, v17}];

  printOptionListViewController3 = [(UIPrintOptionListCell *)self printOptionListViewController];
  navigationItem = [printOptionListViewController3 navigationItem];
  [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];

  printOptionsNavController = [printPanelViewController printOptionsNavController];
  printOptionListViewController4 = [(UIPrintOptionListCell *)self printOptionListViewController];
  [printOptionsNavController pushViewController:printOptionListViewController4 animated:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPrintOptionListCell;
  [(UIPrintOptionCell *)&v3 prepareForReuse];
  [(UIPrintOptionListCell *)self setItemListDelegate:0];
  [(UIPrintOptionListCell *)self setPrintOptionListViewController:0];
}

- (void)previewDidChangeSize:(id)size
{
  object = [size object];
  [object floatValue];
  v6 = v5;

  itemListDelegate = [(UIPrintOptionListCell *)self itemListDelegate];
  printPanelViewController = [itemListDelegate printPanelViewController];

  [printPanelViewController contentInsetForPreviewWithHeight:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  printOptionListViewController = [(UIPrintOptionListCell *)self printOptionListViewController];
  tableView = [printOptionListViewController tableView];
  [tableView setContentInset:{v9, v11, v13, v15}];
}

- (UIPrintOptionListDelegate)itemListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemListDelegate);

  return WeakRetained;
}

@end