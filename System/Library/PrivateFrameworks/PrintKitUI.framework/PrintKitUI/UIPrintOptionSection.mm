@interface UIPrintOptionSection
- (BOOL)canDismiss;
- (BOOL)shouldShow;
- (UIPrintOptionSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (UIPrintPanelViewController)printPanelViewController;
- (id)summaryString;
- (void)dealloc;
- (void)updateSectionSummary;
@end

@implementation UIPrintOptionSection

- (UIPrintOptionSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = UIPrintOptionSection;
  v8 = [(UIPrintOptionSection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setPrintInfo:infoCopy];
    [(UIPrintOptionSection *)v9 setPrintPanelViewController:controllerCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_previewDidChangeSize_ name:@"UIPrintPanelDidChangeSizeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_previewDidChangeSize_ name:@"UIPrintPreviewHeightDidChangeNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UIPrintOptionSection;
  [(UIPrintOptionSection *)&v4 dealloc];
}

- (void)updateSectionSummary
{
  tableViewCell = [(UIPrintOptionSection *)self tableViewCell];
  contentConfiguration = [tableViewCell contentConfiguration];

  summaryString = [(UIPrintOptionSection *)self summaryString];
  [contentConfiguration setSecondaryText:summaryString];

  tableViewCell2 = [(UIPrintOptionSection *)self tableViewCell];
  [tableViewCell2 setContentConfiguration:contentConfiguration];

  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];

  tableViewCell3 = [(UIPrintOptionSection *)self tableViewCell];
  v9 = [printOptionsTableView indexPathForCell:tableViewCell3];
}

- (id)summaryString
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  printOptions = [(UIPrintOptionSection *)self printOptions];
  v5 = [printOptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(printOptions);
        }

        summary = [*(*(&v13 + 1) + 8 * i) summary];
        if (summary)
        {
          if ([v3 length])
          {
            v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v11 = [v10 localizedStringForKey:@" • " value:@" • " table:@"Localizable"];
            [v3 appendString:v11];
          }

          [v3 appendString:summary];
        }
      }

      v6 = [printOptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)shouldShow
{
  [(UIPrintOptionSection *)self updatePrintOptionsList];
  printOptions = [(UIPrintOptionSection *)self printOptions];
  v4 = [printOptions count] != 0;

  return v4;
}

- (BOOL)canDismiss
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  printOptions = [(UIPrintOptionSection *)self printOptions];
  v3 = [printOptions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(printOptions);
        }

        if (![*(*(&v9 + 1) + 8 * i) canDismiss])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [printOptions countByEnumeratingWithState:&v9 objects:v13 count:16];
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