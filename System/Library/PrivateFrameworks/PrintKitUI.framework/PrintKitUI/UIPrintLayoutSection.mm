@interface UIPrintLayoutSection
- (BOOL)shouldShow;
- (BOOL)updatePrintOptionsList;
- (UIPrintLayoutSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)printOptionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)didSelectPrintOptionSection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewDidChangeSize:(id)size;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation UIPrintLayoutSection

- (UIPrintLayoutSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = UIPrintLayoutSection;
  v8 = [(UIPrintOptionSection *)&v21 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Layout" value:@"Layout" table:@"Localizable"];
    [(UIPrintOptionSection *)v8 setTitle:v10];

    v11 = [[UIPrintPagesPerSheetOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintLayoutSection *)v8 setPagesPerSheetPrintOption:v11];

    v12 = [[UIPrintLayoutDirectionOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintLayoutSection *)v8 setLayoutDirectionPrintOption:v12];

    v13 = [[UIPrintBorderOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintLayoutSection *)v8 setBorderPrintOption:v13];

    v14 = [[UIPrintFlipHorizontalOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintLayoutSection *)v8 setFlipHorizontalPrintOption:v14];

    [(UIPrintLayoutSection *)v8 updatePrintOptionsList];
    [(UIPrintOptionSection *)v8 updateSectionSummary];
    pagesPerSheetPrintOption = [(UIPrintLayoutSection *)v8 pagesPerSheetPrintOption];
    [pagesPerSheetPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    layoutDirectionPrintOption = [(UIPrintLayoutSection *)v8 layoutDirectionPrintOption];
    [layoutDirectionPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    borderPrintOption = [(UIPrintLayoutSection *)v8 borderPrintOption];
    [borderPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    flipHorizontalPrintOption = [(UIPrintLayoutSection *)v8 flipHorizontalPrintOption];
    [flipHorizontalPrintOption addObserver:v8 forKeyPath:@"summary" options:0 context:0];

    printInfo = [(UIPrintOptionSection *)v8 printInfo];
    [printInfo addObserver:v8 forKeyPath:0x2871AF290 options:0 context:0];
  }

  return v8;
}

- (void)dealloc
{
  pagesPerSheetPrintOption = [(UIPrintLayoutSection *)self pagesPerSheetPrintOption];
  [pagesPerSheetPrintOption removeObserver:self forKeyPath:@"summary"];

  layoutDirectionPrintOption = [(UIPrintLayoutSection *)self layoutDirectionPrintOption];
  [layoutDirectionPrintOption removeObserver:self forKeyPath:@"summary"];

  borderPrintOption = [(UIPrintLayoutSection *)self borderPrintOption];
  [borderPrintOption removeObserver:self forKeyPath:@"summary"];

  flipHorizontalPrintOption = [(UIPrintLayoutSection *)self flipHorizontalPrintOption];
  [flipHorizontalPrintOption removeObserver:self forKeyPath:@"summary"];

  printInfo = [(UIPrintOptionSection *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF290];

  v8.receiver = self;
  v8.super_class = UIPrintLayoutSection;
  [(UIPrintOptionSection *)&v8 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__UIPrintLayoutSection_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_279A9BF78;
  v10 = pathCopy;
  selfCopy = self;
  v8 = pathCopy;
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
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  shouldShowLayout = [printPanelViewController shouldShowLayout];

  return shouldShowLayout;
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  pagesPerSheetPrintOption = [(UIPrintLayoutSection *)self pagesPerSheetPrintOption];
  [v3 addObject:pagesPerSheetPrintOption];

  printInfo = [(UIPrintOptionSection *)self printInfo];
  nUpActive = [printInfo nUpActive];

  if (nUpActive)
  {
    layoutDirectionPrintOption = [(UIPrintLayoutSection *)self layoutDirectionPrintOption];
    [v3 addObject:layoutDirectionPrintOption];
  }

  borderPrintOption = [(UIPrintLayoutSection *)self borderPrintOption];
  [v3 addObject:borderPrintOption];

  flipHorizontalPrintOption = [(UIPrintLayoutSection *)self flipHorizontalPrintOption];
  [v3 addObject:flipHorizontalPrintOption];

  printOptions = [(UIPrintOptionSection *)self printOptions];
  v11 = [printOptions isEqualToArray:v3];

  if ((v11 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
    if (pthread_main_np() == 1)
    {
      layoutSectionController = [(UIPrintLayoutSection *)self layoutSectionController];
      tableView = [layoutSectionController tableView];
      [tableView reloadData];
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
  printPanelViewController = [(UIPrintOptionSection *)self printPanelViewController];
  v3 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:2];
  [(UIPrintLayoutSection *)self setLayoutSectionController:v3];

  title = [(UIPrintOptionSection *)self title];
  layoutSectionController = [(UIPrintLayoutSection *)self layoutSectionController];
  [layoutSectionController setTitle:title];

  layoutSectionController2 = [(UIPrintLayoutSection *)self layoutSectionController];
  tableView = [layoutSectionController2 tableView];
  [tableView setDelegate:self];

  layoutSectionController3 = [(UIPrintLayoutSection *)self layoutSectionController];
  tableView2 = [layoutSectionController3 tableView];
  [tableView2 setDataSource:self];

  printPanelViewController2 = [(UIPrintOptionSection *)self printPanelViewController];
  [printPanelViewController2 contentInsetForPreviewWithHeight:0.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  layoutSectionController4 = [(UIPrintLayoutSection *)self layoutSectionController];
  tableView3 = [layoutSectionController4 tableView];
  [tableView3 setContentInset:{v12, v14, v16, v18}];

  layoutSectionController5 = [(UIPrintLayoutSection *)self layoutSectionController];
  navigationItem = [layoutSectionController5 navigationItem];
  [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];

  printOptionsNavController = [printPanelViewController printOptionsNavController];
  layoutSectionController6 = [(UIPrintLayoutSection *)self layoutSectionController];
  [printOptionsNavController pushViewController:layoutSectionController6 animated:1];
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
  layoutSectionController = [(UIPrintLayoutSection *)self layoutSectionController];
  tableView = [layoutSectionController tableView];
  [tableView setContentInset:{v8, v10, v12, v14}];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 2;
  }

  printInfo = [(UIPrintOptionSection *)self printInfo];
  if ([printInfo nUpActive])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)printOptionAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  if (section)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [(UIPrintLayoutSection *)self printOptionAtIndexPath:path];
  createPrintOptionTableViewCell = [v4 createPrintOptionTableViewCell];

  return createPrintOptionTableViewCell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v4 = [(UIPrintLayoutSection *)self printOptionAtIndexPath:path];
  if (v4)
  {
    v5 = v4;
    [v4 didSelectPrintOption];
    v4 = v5;
  }
}

@end