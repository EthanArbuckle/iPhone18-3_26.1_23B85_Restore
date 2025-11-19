@interface UIFinishingOptionsSection
- (BOOL)updatePrintOptionsList;
- (UIFinishingOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation UIFinishingOptionsSection

- (UIFinishingOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UIFinishingOptionsSection;
  v8 = [(UIPrintOptionSection *)&v16 initWithPrintInfo:v6 printPanelViewController:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Finishing Options" value:@"Finishing Options" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIFinishingsOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIFinishingOptionsSection *)v8 setFinishingPrintOption:v11];

    [(UIPrintOptionSection *)v8 updateSectionSummary];
    v12 = [(UIFinishingOptionsSection *)v8 finishingPrintOption];
    [v12 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v13 = [(UIPrintOptionSection *)v8 printInfo];
    [v13 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

    v14 = [(UIPrintOptionSection *)v8 printInfo];
    [v14 addObserver:v8 forKeyPath:0x2871AF370 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  [v3 removeObserver:self forKeyPath:@"summary"];

  v4 = [(UIPrintOptionSection *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5 = [(UIPrintOptionSection *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF370];

  v6.receiver = self;
  v6.super_class = UIFinishingOptionsSection;
  [(UIPrintOptionSection *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__UIFinishingOptionsSection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __76__UIFinishingOptionsSection_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:0x2871AF150];
  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 currentPrinterChanged];
  }

  else
  {

    return [v3 updateSectionSummary];
  }
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v4 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  v5 = [v4 shouldShow];

  if (v5)
  {
    v6 = [(UIFinishingOptionsSection *)self finishingPrintOption];
    [v3 addObject:v6];
  }

  v7 = [(UIPrintOptionSection *)self printOptions];
  v8 = [v7 isEqualToArray:v3];

  if ((v8 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      v9 = [(UIFinishingOptionsSection *)self finishingPrintOption];
      v10 = [v9 finishingOptionsTableView];
      [v10 reloadData];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__UIFinishingOptionsSection_updatePrintOptionsList__block_invoke;
      block[3] = &unk_279A9BEE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return v8 ^ 1;
}

void __51__UIFinishingOptionsSection_updatePrintOptionsList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) finishingPrintOption];
  v1 = [v2 finishingOptionsTableView];
  [v1 reloadData];
}

- (void)currentPrinterChanged
{
  [(UIFinishingOptionsSection *)self updatePrintOptionsList];

  [(UIPrintOptionSection *)self updateSectionSummary];
}

- (void)didSelectPrintOptionSection
{
  v24 = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  [(UIFinishingOptionsSection *)self setPrintOptionViewController:v3];

  v4 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  v5 = [v4 finishingOptionsTableView];
  v6 = [(UIFinishingOptionsSection *)self printOptionViewController];
  [v6 setView:v5];

  v7 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  v8 = [v7 title];
  v9 = [(UIFinishingOptionsSection *)self printOptionViewController];
  [v9 setTitle:v8];

  [v24 contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  v19 = [v18 finishingOptionsTableView];
  [v19 setContentInset:{v11, v13, v15, v17}];

  v20 = [v24 printOptionsNavController];
  v21 = [(UIFinishingOptionsSection *)self printOptionViewController];
  [v20 pushViewController:v21 animated:1];

  v22 = [(UIFinishingOptionsSection *)self printOptionViewController];
  v23 = [v22 navigationItem];
  [v24 addPrintShareButtonsToNavItem:v23];
}

@end