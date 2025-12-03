@interface UIFinishingOptionsSection
- (BOOL)updatePrintOptionsList;
- (UIFinishingOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UIFinishingOptionsSection

- (UIFinishingOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = UIFinishingOptionsSection;
  v8 = [(UIPrintOptionSection *)&v16 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Finishing Options" value:@"Finishing Options" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIFinishingsOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIFinishingOptionsSection *)v8 setFinishingPrintOption:v11];

    [(UIPrintOptionSection *)v8 updateSectionSummary];
    finishingPrintOption = [(UIFinishingOptionsSection *)v8 finishingPrintOption];
    [finishingPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    printInfo = [(UIPrintOptionSection *)v8 printInfo];
    [printInfo addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];

    printInfo2 = [(UIPrintOptionSection *)v8 printInfo];
    [printInfo2 addObserver:v8 forKeyPath:0x2871AF370 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  finishingPrintOption = [(UIFinishingOptionsSection *)self finishingPrintOption];
  [finishingPrintOption removeObserver:self forKeyPath:@"summary"];

  printInfo = [(UIPrintOptionSection *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF150];

  printInfo2 = [(UIPrintOptionSection *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF370];

  v6.receiver = self;
  v6.super_class = UIFinishingOptionsSection;
  [(UIPrintOptionSection *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__UIFinishingOptionsSection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
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
  finishingPrintOption = [(UIFinishingOptionsSection *)self finishingPrintOption];
  shouldShow = [finishingPrintOption shouldShow];

  if (shouldShow)
  {
    finishingPrintOption2 = [(UIFinishingOptionsSection *)self finishingPrintOption];
    [v3 addObject:finishingPrintOption2];
  }

  printOptions = [(UIPrintOptionSection *)self printOptions];
  v8 = [printOptions isEqualToArray:v3];

  if ((v8 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      finishingPrintOption3 = [(UIFinishingOptionsSection *)self finishingPrintOption];
      finishingOptionsTableView = [finishingPrintOption3 finishingOptionsTableView];
      [finishingOptionsTableView reloadData];
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
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  [(UIFinishingOptionsSection *)self setPrintOptionViewController:v3];

  finishingPrintOption = [(UIFinishingOptionsSection *)self finishingPrintOption];
  finishingOptionsTableView = [finishingPrintOption finishingOptionsTableView];
  printOptionViewController = [(UIFinishingOptionsSection *)self printOptionViewController];
  [printOptionViewController setView:finishingOptionsTableView];

  finishingPrintOption2 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  title = [finishingPrintOption2 title];
  printOptionViewController2 = [(UIFinishingOptionsSection *)self printOptionViewController];
  [printOptionViewController2 setTitle:title];

  [printPanelViewController contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  finishingPrintOption3 = [(UIFinishingOptionsSection *)self finishingPrintOption];
  finishingOptionsTableView2 = [finishingPrintOption3 finishingOptionsTableView];
  [finishingOptionsTableView2 setContentInset:{v11, v13, v15, v17}];

  printOptionsNavController = [printPanelViewController printOptionsNavController];
  printOptionViewController3 = [(UIFinishingOptionsSection *)self printOptionViewController];
  [printOptionsNavController pushViewController:printOptionViewController3 animated:1];

  printOptionViewController4 = [(UIFinishingOptionsSection *)self printOptionViewController];
  navigationItem = [printOptionViewController4 navigationItem];
  [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];
}

@end