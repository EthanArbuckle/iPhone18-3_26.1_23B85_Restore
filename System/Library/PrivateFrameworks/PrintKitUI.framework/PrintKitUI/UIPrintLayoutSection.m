@interface UIPrintLayoutSection
- (BOOL)shouldShow;
- (BOOL)updatePrintOptionsList;
- (UIPrintLayoutSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)printOptionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewDidChangeSize:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation UIPrintLayoutSection

- (UIPrintLayoutSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = UIPrintLayoutSection;
  v8 = [(UIPrintOptionSection *)&v21 initWithPrintInfo:v6 printPanelViewController:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Layout" value:@"Layout" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIPrintPagesPerSheetOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintLayoutSection *)v8 setPagesPerSheetPrintOption:v11];

    v12 = [[UIPrintLayoutDirectionOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintLayoutSection *)v8 setLayoutDirectionPrintOption:v12];

    v13 = [[UIPrintBorderOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintLayoutSection *)v8 setBorderPrintOption:v13];

    v14 = [[UIPrintFlipHorizontalOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintLayoutSection *)v8 setFlipHorizontalPrintOption:v14];

    [(UIPrintLayoutSection *)v8 updatePrintOptionsList];
    [(UIPrintOptionSection *)v8 updateSectionSummary];
    v15 = [(UIPrintLayoutSection *)v8 pagesPerSheetPrintOption];
    [v15 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v16 = [(UIPrintLayoutSection *)v8 layoutDirectionPrintOption];
    [v16 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v17 = [(UIPrintLayoutSection *)v8 borderPrintOption];
    [v17 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v18 = [(UIPrintLayoutSection *)v8 flipHorizontalPrintOption];
    [v18 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v19 = [(UIPrintOptionSection *)v8 printInfo];
    [v19 addObserver:v8 forKeyPath:0x2871AF290 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UIPrintLayoutSection *)self pagesPerSheetPrintOption];
  [v3 removeObserver:self forKeyPath:@"summary"];

  v4 = [(UIPrintLayoutSection *)self layoutDirectionPrintOption];
  [v4 removeObserver:self forKeyPath:@"summary"];

  v5 = [(UIPrintLayoutSection *)self borderPrintOption];
  [v5 removeObserver:self forKeyPath:@"summary"];

  v6 = [(UIPrintLayoutSection *)self flipHorizontalPrintOption];
  [v6 removeObserver:self forKeyPath:@"summary"];

  v7 = [(UIPrintOptionSection *)self printInfo];
  [v7 removeObserver:self forKeyPath:0x2871AF290];

  v8.receiver = self;
  v8.super_class = UIPrintLayoutSection;
  [(UIPrintOptionSection *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintLayoutSection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __71__UIPrintLayoutSection_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:0x2871AF290];
  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 updatePrintOptionsList];
  }

  else
  {

    return [v3 updateSectionSummary];
  }
}

- (BOOL)shouldShow
{
  v2 = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = [v2 shouldShowLayout];

  return v3;
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v4 = [(UIPrintLayoutSection *)self pagesPerSheetPrintOption];
  [v3 addObject:v4];

  v5 = [(UIPrintOptionSection *)self printInfo];
  v6 = [v5 nUpActive];

  if (v6)
  {
    v7 = [(UIPrintLayoutSection *)self layoutDirectionPrintOption];
    [v3 addObject:v7];
  }

  v8 = [(UIPrintLayoutSection *)self borderPrintOption];
  [v3 addObject:v8];

  v9 = [(UIPrintLayoutSection *)self flipHorizontalPrintOption];
  [v3 addObject:v9];

  v10 = [(UIPrintOptionSection *)self printOptions];
  v11 = [v10 isEqualToArray:v3];

  if ((v11 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      v12 = [(UIPrintLayoutSection *)self layoutSectionController];
      v13 = [v12 tableView];
      [v13 reloadData];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__UIPrintLayoutSection_updatePrintOptionsList__block_invoke;
      block[3] = &unk_279A9BEE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return v11 ^ 1;
}

void __46__UIPrintLayoutSection_updatePrintOptionsList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutSectionController];
  v1 = [v2 tableView];
  [v1 reloadData];
}

- (void)didSelectPrintOptionSection
{
  v25 = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:2];
  [(UIPrintLayoutSection *)self setLayoutSectionController:v3];

  v4 = [(UIPrintOptionSection *)self title];
  v5 = [(UIPrintLayoutSection *)self layoutSectionController];
  [v5 setTitle:v4];

  v6 = [(UIPrintLayoutSection *)self layoutSectionController];
  v7 = [v6 tableView];
  [v7 setDelegate:self];

  v8 = [(UIPrintLayoutSection *)self layoutSectionController];
  v9 = [v8 tableView];
  [v9 setDataSource:self];

  v10 = [(UIPrintOptionSection *)self printPanelViewController];
  [v10 contentInsetForPreviewWithHeight:0.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIPrintLayoutSection *)self layoutSectionController];
  v20 = [v19 tableView];
  [v20 setContentInset:{v12, v14, v16, v18}];

  v21 = [(UIPrintLayoutSection *)self layoutSectionController];
  v22 = [v21 navigationItem];
  [v25 addPrintShareButtonsToNavItem:v22];

  v23 = [v25 printOptionsNavController];
  v24 = [(UIPrintLayoutSection *)self layoutSectionController];
  [v23 pushViewController:v24 animated:1];
}

- (void)previewDidChangeSize:(id)a3
{
  v4 = [a3 object];
  [v4 floatValue];
  v6 = v5;

  v17 = [(UIPrintOptionSection *)self printPanelViewController];
  [v17 contentInsetForPreviewWithHeight:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(UIPrintLayoutSection *)self layoutSectionController];
  v16 = [v15 tableView];
  [v16 setContentInset:{v8, v10, v12, v14}];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 2;
  }

  v5 = [(UIPrintOptionSection *)self printInfo];
  if ([v5 nUpActive])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)printOptionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  if (v5)
  {
    if (v6)
    {
      [(UIPrintLayoutSection *)self flipHorizontalPrintOption];
    }

    else
    {
      [(UIPrintLayoutSection *)self borderPrintOption];
    }
  }

  else if (v6)
  {
    [(UIPrintLayoutSection *)self layoutDirectionPrintOption];
  }

  else
  {
    [(UIPrintLayoutSection *)self pagesPerSheetPrintOption];
  }
  v7 = ;

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [(UIPrintLayoutSection *)self printOptionAtIndexPath:a4];
  v5 = [v4 createPrintOptionTableViewCell];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4 = [(UIPrintLayoutSection *)self printOptionAtIndexPath:a4];
  if (v4)
  {
    v5 = v4;
    [v4 didSelectPrintOption];
    v4 = v5;
  }
}

@end