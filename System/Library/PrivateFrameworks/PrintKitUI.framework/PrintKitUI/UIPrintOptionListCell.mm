@interface UIPrintOptionListCell
- (UIPrintOptionListDelegate)itemListDelegate;
- (void)prepareForReuse;
- (void)previewDidChangeSize:(id)a3;
- (void)printOptionCellTapped;
@end

@implementation UIPrintOptionListCell

- (void)printOptionCellTapped
{
  v3 = [UIPrintOptionListViewController alloc];
  v4 = [(UIPrintOptionListCell *)self itemListDelegate];
  v5 = [(UIPrintOptionListViewController *)v3 initWithListDelegate:v4];
  [(UIPrintOptionListCell *)self setPrintOptionListViewController:v5];

  v6 = [(UIPrintOptionListCell *)self itemListDelegate];
  v7 = [v6 title];
  v8 = [(UIPrintOptionListCell *)self printOptionListViewController];
  [v8 setTitle:v7];

  v9 = [(UIPrintOptionListCell *)self itemListDelegate];
  v24 = [v9 printPanelViewController];

  [v24 contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIPrintOptionListCell *)self printOptionListViewController];
  v19 = [v18 tableView];
  [v19 setContentInset:{v11, v13, v15, v17}];

  v20 = [(UIPrintOptionListCell *)self printOptionListViewController];
  v21 = [v20 navigationItem];
  [v24 addPrintShareButtonsToNavItem:v21];

  v22 = [v24 printOptionsNavController];
  v23 = [(UIPrintOptionListCell *)self printOptionListViewController];
  [v22 pushViewController:v23 animated:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPrintOptionListCell;
  [(UIPrintOptionCell *)&v3 prepareForReuse];
  [(UIPrintOptionListCell *)self setItemListDelegate:0];
  [(UIPrintOptionListCell *)self setPrintOptionListViewController:0];
}

- (void)previewDidChangeSize:(id)a3
{
  v4 = [a3 object];
  [v4 floatValue];
  v6 = v5;

  v7 = [(UIPrintOptionListCell *)self itemListDelegate];
  v18 = [v7 printPanelViewController];

  [v18 contentInsetForPreviewWithHeight:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(UIPrintOptionListCell *)self printOptionListViewController];
  v17 = [v16 tableView];
  [v17 setContentInset:{v9, v11, v13, v15}];
}

- (UIPrintOptionListDelegate)itemListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemListDelegate);

  return WeakRetained;
}

@end