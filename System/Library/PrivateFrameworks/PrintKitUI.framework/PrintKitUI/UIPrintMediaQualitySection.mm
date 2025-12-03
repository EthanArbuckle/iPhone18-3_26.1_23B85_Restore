@interface UIPrintMediaQualitySection
- (BOOL)updatePrintOptionsList;
- (UIPrintMediaQualitySection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)currentPrinterChanged;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewDidChangeSize:(id)size;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation UIPrintMediaQualitySection

- (UIPrintMediaQualitySection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = UIPrintMediaQualitySection;
  v8 = [(UIPrintOptionSection *)&v19 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Media & Quality" value:@"Media & Quality" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIPrintFeedFromOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMediaQualitySection *)v8 setFeedFromPrintOption:v11];

    v12 = [[UIPrintMediaTypeOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMediaQualitySection *)v8 setMediaTypePrintOption:v12];

    v13 = [[UIPrintQualityOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMediaQualitySection *)v8 setQualityPrintOption:v13];

    [(UIPrintMediaQualitySection *)v8 updatePrintOptionsList];
    feedFromPrintOption = [(UIPrintMediaQualitySection *)v8 feedFromPrintOption];
    [feedFromPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    mediaTypePrintOption = [(UIPrintMediaQualitySection *)v8 mediaTypePrintOption];
    [mediaTypePrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    qualityPrintOption = [(UIPrintMediaQualitySection *)v8 qualityPrintOption];
    [qualityPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    printInfo = [(UIPrintOptionSection *)v8 printInfo];
    [printInfo addObserver:v8 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  feedFromPrintOption = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  [feedFromPrintOption removeObserver:self forKeyPath:@"summary"];

  mediaTypePrintOption = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
  [mediaTypePrintOption removeObserver:self forKeyPath:@"summary"];

  qualityPrintOption = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  [qualityPrintOption removeObserver:self forKeyPath:@"summary"];

  printInfo = [(UIPrintOptionSection *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF150];

  v7.receiver = self;
  v7.super_class = UIPrintMediaQualitySection;
  [(UIPrintOptionSection *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__UIPrintMediaQualitySection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
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
  feedFromPrintOption = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  shouldShow = [feedFromPrintOption shouldShow];

  if (shouldShow)
  {
    feedFromPrintOption2 = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    [v3 addObject:feedFromPrintOption2];

    [(UIPrintMediaQualitySection *)self setFeedFromRow:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  mediaTypePrintOption = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
  shouldShow2 = [mediaTypePrintOption shouldShow];

  if (shouldShow2)
  {
    mediaTypePrintOption2 = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    [v3 addObject:mediaTypePrintOption2];

    [(UIPrintMediaQualitySection *)self setMediaTypeRow:v7];
    v7 = 1;
  }

  qualityPrintOption = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  shouldShow3 = [qualityPrintOption shouldShow];

  if (shouldShow3)
  {
    qualityPrintOption2 = [(UIPrintMediaQualitySection *)self qualityPrintOption];
    [v3 addObject:qualityPrintOption2];

    [(UIPrintMediaQualitySection *)self setQualitySectionNum:v7];
  }

  printOptions = [(UIPrintOptionSection *)self printOptions];
  v15 = [printOptions isEqualToArray:v3];

  if ((v15 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      mediaQualitySectionController = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
      tableView = [mediaQualitySectionController tableView];
      [tableView reloadData];
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
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:2];
  [(UIPrintMediaQualitySection *)self setMediaQualitySectionController:v3];

  title = [(UIPrintOptionSection *)self title];
  mediaQualitySectionController = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  [mediaQualitySectionController setTitle:title];

  mediaQualitySectionController2 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  tableView = [mediaQualitySectionController2 tableView];
  [tableView setDelegate:self];

  mediaQualitySectionController3 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  tableView2 = [mediaQualitySectionController3 tableView];
  [tableView2 setDataSource:self];

  [printPanelViewController contentInsetForPreviewWithHeight:0.0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  mediaQualitySectionController4 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  tableView3 = [mediaQualitySectionController4 tableView];
  [tableView3 setContentInset:{v11, v13, v15, v17}];

  printOptionsNavController = [printPanelViewController printOptionsNavController];
  mediaQualitySectionController5 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  [printOptionsNavController pushViewController:mediaQualitySectionController5 animated:1];

  mediaQualitySectionController6 = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  navigationItem = [mediaQualitySectionController6 navigationItem];
  [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];
}

- (void)previewDidChangeSize:(id)size
{
  object = [size object];
  [object floatValue];
  v6 = v5;

  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  [printPanelViewController contentInsetForPreviewWithHeight:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  mediaQualitySectionController = [(UIPrintMediaQualitySection *)self mediaQualitySectionController];
  tableView = [mediaQualitySectionController tableView];
  [tableView setContentInset:{v8, v10, v12, v14}];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(UIPrintMediaQualitySection *)self qualitySectionNum]== section)
  {
    return 1;
  }

  printOptions = [(UIPrintOptionSection *)self printOptions];
  feedFromPrintOption = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
  if ([printOptions containsObject:feedFromPrintOption])
  {
    printOptions2 = [(UIPrintOptionSection *)self printOptions];
    mediaTypePrintOption = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    if ([printOptions2 containsObject:mediaTypePrintOption])
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(UIPrintMediaQualitySection *)self qualitySectionNum])
  {
    qualityPrintOption = [(UIPrintMediaQualitySection *)self qualityPrintOption];
  }

  else
  {
    v8 = [pathCopy row];
    if (v8 == [(UIPrintMediaQualitySection *)self feedFromRow])
    {
      [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    }

    else
    {
      [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    }
    qualityPrintOption = ;
  }

  v9 = qualityPrintOption;
  createPrintOptionTableViewCell = [qualityPrintOption createPrintOptionTableViewCell];

  return createPrintOptionTableViewCell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section != [(UIPrintMediaQualitySection *)self qualitySectionNum])
  {
    v6 = [pathCopy row];
    if (v6 == [(UIPrintMediaQualitySection *)self feedFromRow])
    {
      feedFromPrintOption = [(UIPrintMediaQualitySection *)self feedFromPrintOption];
    }

    else
    {
      v8 = [pathCopy row];
      if (v8 != [(UIPrintMediaQualitySection *)self mediaTypeRow])
      {
        goto LABEL_8;
      }

      feedFromPrintOption = [(UIPrintMediaQualitySection *)self mediaTypePrintOption];
    }

    v9 = feedFromPrintOption;
    if (feedFromPrintOption)
    {
      [feedFromPrintOption didSelectPrintOption];
    }
  }

LABEL_8:
}

@end