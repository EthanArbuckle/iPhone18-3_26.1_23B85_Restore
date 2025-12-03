@interface UIPrintOptionViewCell
- (UIPrintOptionViewDelegate)optionViewDelegate;
- (void)prepareForReuse;
- (void)previewDidChangeSize:(id)size;
- (void)printOptionCellTapped;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIPrintOptionViewCell

- (void)printOptionCellTapped
{
  if ([(UIPrintOptionCell *)self enabled])
  {
    optionViewDelegate = [(UIPrintOptionViewCell *)self optionViewDelegate];
    printPanelViewController = [optionViewDelegate printPanelViewController];

    v4 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIPrintOptionViewCell *)self setPrintOptionViewController:v4];

    optionViewDelegate2 = [(UIPrintOptionViewCell *)self optionViewDelegate];
    printOptionDetailView = [optionViewDelegate2 printOptionDetailView];
    printOptionViewController = [(UIPrintOptionViewCell *)self printOptionViewController];
    [printOptionViewController setView:printOptionDetailView];

    optionViewDelegate3 = [(UIPrintOptionViewCell *)self optionViewDelegate];
    title = [optionViewDelegate3 title];
    printOptionViewController2 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [printOptionViewController2 setTitle:title];

    [printPanelViewController contentInsetForPreviewWithHeight:0.0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17 + 20.0;
    printOptionViewController3 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [printOptionViewController3 setAdditionalSafeAreaInsets:{v18, v12, v14, v16}];

    printOptionViewController4 = [(UIPrintOptionViewCell *)self printOptionViewController];
    navigationItem = [printOptionViewController4 navigationItem];
    [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];

    printOptionsNavController = [printPanelViewController printOptionsNavController];
    printOptionViewController5 = [(UIPrintOptionViewCell *)self printOptionViewController];
    [printOptionsNavController pushViewController:printOptionViewController5 animated:1];
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = UIPrintOptionViewCell;
  [(UIPrintOptionCell *)&v6 setEnabled:?];
  [(UIPrintOptionViewCell *)self setAccessoryType:enabledCopy];
  if (enabledCopy)
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

- (void)previewDidChangeSize:(id)size
{
  object = [size object];
  [object floatValue];
  v6 = v5;

  optionViewDelegate = [(UIPrintOptionViewCell *)self optionViewDelegate];
  printPanelViewController = [optionViewDelegate printPanelViewController];
  [printPanelViewController contentInsetForPreviewWithHeight:v6];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  printOptionViewController = [(UIPrintOptionViewCell *)self printOptionViewController];
  [printOptionViewController setAdditionalSafeAreaInsets:{v10 + 20.0, v12, v14, v16}];
}

- (UIPrintOptionViewDelegate)optionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_optionViewDelegate);

  return WeakRetained;
}

@end