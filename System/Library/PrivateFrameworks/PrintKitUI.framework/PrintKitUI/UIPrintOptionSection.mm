@interface UIPrintOptionSection
- (BOOL)canDismiss;
- (BOOL)shouldShow;
- (UIPrintOptionSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (UIPrintPanelViewController)printPanelViewController;
- (id)summaryString;
- (void)dealloc;
- (void)updateSectionSummary;
@end

@implementation UIPrintOptionSection

- (UIPrintOptionSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UIPrintOptionSection;
  v8 = [(UIPrintOptionSection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setPrintInfo:v6];
    [(UIPrintOptionSection *)v9 setPrintPanelViewController:v7];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel_previewDidChangeSize_ name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v9 selector:sel_previewDidChangeSize_ name:@"UIPrintPreviewHeightDidChangeNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UIPrintOptionSection;
  [(UIPrintOptionSection *)&v4 dealloc];
}

- (void)updateSectionSummary
{
  v3 = [(UIPrintOptionSection *)self tableViewCell];
  v10 = [v3 contentConfiguration];

  v4 = [(UIPrintOptionSection *)self summaryString];
  [v10 setSecondaryText:v4];

  v5 = [(UIPrintOptionSection *)self tableViewCell];
  [v5 setContentConfiguration:v10];

  v6 = [(UIPrintOptionSection *)self printPanelViewController];
  v7 = [v6 printOptionsTableView];

  v8 = [(UIPrintOptionSection *)self tableViewCell];
  v9 = [v7 indexPathForCell:v8];
}

- (id)summaryString
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UIPrintOptionSection *)self printOptions];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) summary];
        if (v9)
        {
          if ([v3 length])
          {
            v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v11 = [v10 localizedStringForKey:@" • " value:@" • " table:@"Localizable"];
            [v3 appendString:v11];
          }

          [v3 appendString:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)shouldShow
{
  [(UIPrintOptionSection *)self updatePrintOptionsList];
  v3 = [(UIPrintOptionSection *)self printOptions];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)canDismiss
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(UIPrintOptionSection *)self printOptions];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) canDismiss])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end