@interface UIPrintOptionViewCell
- (UIPrintOptionViewDelegate)optionViewDelegate;
- (void)prepareForReuse;
- (void)previewDidChangeSize:(id)a3;
- (void)printOptionCellTapped;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIPrintOptionViewCell

- (void)printOptionCellTapped
{
  if ([(UIPrintOptionCell *)self enabled])
  {
    v3 = [(UIPrintOptionViewCell *)self optionViewDelegate];
    v24 = [v3 printPanelViewController];

    v4 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIPrintOptionViewCell *)self setPrintOptionViewController:v4];

    v5 = [(UIPrintOptionViewCell *)self optionViewDelegate];
    v6 = [v5 printOptionDetailView];
    v7 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [v7 setView:v6];

    v8 = [(UIPrintOptionViewCell *)self optionViewDelegate];
    v9 = [v8 title];
    v10 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [v10 setTitle:v9];

    [v24 contentInsetForPreviewWithHeight:0.0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17 + 20.0;
    v19 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [v19 setAdditionalSafeAreaInsets:{v18, v12, v14, v16}];

    v20 = [(UIPrintOptionViewCell *)self printOptionViewController];
    v21 = [v20 navigationItem];
    [v24 addPrintShareButtonsToNavItem:v21];

    v22 = [v24 printOptionsNavController];
    v23 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [v22 pushViewController:v23 animated:1];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPrintOptionViewCell;
  [(UIPrintOptionCell *)&v3 prepareForReuse];
  [(UIPrintOptionViewCell *)self setOptionViewDelegate:0];
  [(UIPrintOptionViewCell *)self setPrintOptionView:0];
  [(UIPrintOptionViewCell *)self setEnabled:1];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UIPrintOptionViewCell;
  [(UIPrintOptionCell *)&v6 setEnabled:?];
  [(UIPrintOptionViewCell *)self setAccessoryType:v3];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(UIPrintOptionViewCell *)self setSelectionStyle:v5];
  [(UIPrintOptionViewCell *)self setSelected:0];
}

- (void)previewDidChangeSize:(id)a3
{
  v4 = [a3 object];
  [v4 floatValue];
  v6 = v5;

  v7 = [(UIPrintOptionViewCell *)self optionViewDelegate];
  v8 = [v7 printPanelViewController];
  [v8 contentInsetForPreviewWithHeight:v6];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(UIPrintOptionViewCell *)self printOptionViewController];
  [v17 setAdditionalSafeAreaInsets:{v10 + 20.0, v12, v14, v16}];
}

- (UIPrintOptionViewDelegate)optionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_optionViewDelegate);

  return WeakRetained;
}

@end