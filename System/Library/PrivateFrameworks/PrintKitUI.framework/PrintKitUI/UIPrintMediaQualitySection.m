@interface UIPrintMediaQualitySection
- (BOOL)updatePrintOptionsList;
- (UIPrintMediaQualitySection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewDidChangeSize:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation UIPrintMediaQualitySection

- (UIPrintMediaQualitySection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = UIPrintMediaQualitySection;
  v8 = [(UIPrintOptionSection *)&v19 initWithPrintInfo:v6 printPanelViewController:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Media & Quality" value:@"Media & Quality" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIPrintFeedFromOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMediaQualitySection *)v8 setFeedFromPrintOption:v11];

    v12 = [[UIPrintMediaTypeOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMediaQualitySection *)v8 setMediaTypePrintOption:v12];

    v13 = [[UIPrintQualityOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMediaQualitySection *)v8 setQualityPrintOption:v13];

    [(UIPrintMediaQualitySection *)v8 updatePrintOptionsList];
    v14 = [(UIPrintMediaQualitySection *)v8 feedFromPrintOption];
    [v14 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v15 = [(UIPrintMediaQualitySection *)v8 mediaTypePrintOption];
    [v15 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v16 = [(UIPrintMediaQualitySection *)v8 qualityPrintOption];
    [v16 addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    v17 = [(UIPrintOptionSection *)v8 printInfo];
    [v17 addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  [v3 removeObserver:self forKeyPath:@"summary"];

  v4 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
  [v4 removeObserver:self forKeyPath:@"summary"];

  v5 = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  [v5 removeObserver:self forKeyPath:@"summary"];

  v6 = [(UIPrintOptionSection *)self printInfo];
  [v6 removeObserver:self forKeyPath:0x2871AF150];

  v7.receiver = self;
  v7.super_class = UIPrintMediaQualitySection;
  [(UIPrintOptionSection *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__UIPrintMediaQualitySection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = v7;
  v11 = self;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __77__UIPrintMediaQualitySection_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
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

- (void)currentPrinterChanged
{
  [(UIPrintMediaQualitySection *)self updatePrintOptionsList];

  [(UIPrintOptionSection *)self updateSectionSummary];
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  [(UIPrintMediaQualitySection *)self setFeedFromRow:-1];
  [(UIPrintMediaQualitySection *)self setMediaTypeRow:-1];
  [(UIPrintMediaQualitySection *)self setQualitySectionNum:-1];
  v4 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  v5 = [v4 shouldShow];

  if (v5)
  {
    v6 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    [v3 addObject:v6];

    [(UIPrintMediaQualitySection *)self setFeedFromRow:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
  v9 = [v8 shouldShow];

  if (v9)
  {
    v10 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    [v3 addObject:v10];

    [(UIPrintMediaQualitySection *)self setMediaTypeRow:v7];
    v7 = 1;
  }

  v11 = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  v12 = [v11 shouldShow];

  if (v12)
  {
    v13 = [(UIPrintMediaQualitySection *)self qualityPrintOption];
    [v3 addObject:v13];

    [(UIPrintMediaQualitySection *)self setQualitySectionNum:v7];
  }

  v14 = [(UIPrintOptionSection *)self printOptions];
  v15 = [v14 isEqualToArray:v3];

  if ((v15 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      v16 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
      v17 = [v16 tableView];
      [v17 reloadData];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__UIPrintMediaQualitySection_updatePrintOptionsList__block_invoke;
      block[3] = &unk_279A9BEE0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return v15 ^ 1;
}

void __52__UIPrintMediaQualitySection_updatePrintOptionsList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaQualitySectionController];
  v1 = [v2 tableView];
  [v1 reloadData];
}

- (void)didSelectPrintOptionSection
{
  v24 = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:2];
  [(UIPrintMediaQualitySection *)self setMediaQualitySectionController:v3];

  v4 = [(UIPrintOptionSection *)self title];
  v5 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  [v5 setTitle:v4];

  v6 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  v7 = [v6 tableView];
  [v7 setDelegate:self];

  v8 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  v9 = [v8 tableView];
  [v9 setDataSource:self];

  [v24 contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  v19 = [v18 tableView];
  [v19 setContentInset:{v11, v13, v15, v17}];

  v20 = [v24 printOptionsNavController];
  v21 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  [v20 pushViewController:v21 animated:1];

  v22 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  v23 = [v22 navigationItem];
  [v24 addPrintShareButtonsToNavItem:v23];
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
  v15 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  v16 = [v15 tableView];
  [v16 setContentInset:{v8, v10, v12, v14}];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(UIPrintMediaQualitySection *)self qualitySectionNum]< 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(UIPrintMediaQualitySection *)self qualitySectionNum]== a4)
  {
    return 1;
  }

  v6 = [(UIPrintOptionSection *)self printOptions];
  v7 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  if ([v6 containsObject:v7])
  {
    v8 = [(UIPrintOptionSection *)self printOptions];
    v9 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    if ([v8 containsObject:v9])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(UIPrintMediaQualitySection *)self qualitySectionNum])
  {
    v7 = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  }

  else
  {
    v8 = [v5 row];
    if (v8 == [(UIPrintMediaQualitySection *)self feedFromRow])
    {
      [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    }

    else
    {
      [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    }
    v7 = ;
  }

  v9 = v7;
  v10 = [v7 createPrintOptionTableViewCell];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [v10 section];
  if (v5 != [(UIPrintMediaQualitySection *)self qualitySectionNum])
  {
    v6 = [v10 row];
    if (v6 == [(UIPrintMediaQualitySection *)self feedFromRow])
    {
      v7 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    }

    else
    {
      v8 = [v10 row];
      if (v8 != [(UIPrintMediaQualitySection *)self mediaTypeRow])
      {
        goto LABEL_8;
      }

      v7 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    }

    v9 = v7;
    if (v7)
    {
      [v7 didSelectPrintOption];
    }
  }

LABEL_8:
}

@end