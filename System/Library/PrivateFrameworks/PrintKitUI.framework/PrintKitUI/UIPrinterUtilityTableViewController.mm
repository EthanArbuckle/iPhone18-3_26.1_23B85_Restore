@interface UIPrinterUtilityTableViewController
- (UIPrinterUtilityTableViewController)initWithPrinter:(id)printer printPanelViewController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadPrinterInfoViews;
- (void)setSupplyData:(id)data;
- (void)startPrinterWarningPoll;
- (void)stopPrinterWarningPolling;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIPrinterUtilityTableViewController

- (void)dealloc
{
  tableView = [(UIPrinterUtilityTableViewController *)self tableView];
  [tableView removeObserver:self forKeyPath:@"frame"];

  v4.receiver = self;
  v4.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v4 dealloc];
}

- (UIPrinterUtilityTableViewController)initWithPrinter:(id)printer printPanelViewController:(id)controller
{
  printerCopy = printer;
  controllerCopy = controller;
  v35.receiver = self;
  v35.super_class = UIPrinterUtilityTableViewController;
  v8 = [(UIPrinterUtilityTableViewController *)&v35 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    [(UIPrinterUtilityTableViewController *)v8 setPkPrinter:printerCopy];
    [(UIPrinterUtilityTableViewController *)v9 setPrintPanelViewController:controllerCopy];
    [(UIPrinterUtilityTableViewController *)v9 setPrinterWebPageRow:-1];
    [(UIPrinterUtilityTableViewController *)v9 setRemoveKeychainItemSection:-1];
    [(UIPrinterUtilityTableViewController *)v9 setPrinterWarning:0];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Printer Info" value:@"Printer Info" table:@"Localizable"];
    [(UIPrinterUtilityTableViewController *)v9 setTitle:v11];

    if (printerCopy)
    {
      objc_initWeak(&location, v9);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke;
      v31[3] = &unk_279A9CD18;
      objc_copyWeak(&v33, &location);
      v12 = printerCopy;
      v32 = v12;
      if (_UIPrinterInfoGetState(v12, v31) == 1)
      {
        v13 = _UIPrinterInfoHasInfo(v12);
        v14 = [v13 objectForKey:@"PrinterInfoURL"];
        [(UIPrinterUtilityTableViewController *)v9 setPrinterWebPageURL:v14];

        v15 = [v13 objectForKey:@"PrinterSuppliesURL"];
        [(UIPrinterUtilityTableViewController *)v9 setPrinterSuppliesInfoURL:v15];

        if (v13)
        {
          hasIdentifyPrinterOp = [v12 hasIdentifyPrinterOp];
        }

        else
        {
          hasIdentifyPrinterOp = 0;
        }

        [(UIPrinterUtilityTableViewController *)v9 setShowIdentifyPrinterItem:hasIdentifyPrinterOp];
        v17 = [v12 accessState] == 1 || objc_msgSend(v12, "accessState") == 2;
        [(UIPrinterUtilityTableViewController *)v9 setShowRemoveKeychainItem:v17];
        [(UIPrinterUtilityTableViewController *)v9 reloadPrinterInfoViews];
      }

      [(UIPrinterUtilityTableViewController *)v9 setSuppliesCheckComplete:0];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_3;
      v29 = &unk_279A9CD40;
      v30 = v9;
      [v12 getSupplyLevels:&v26];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    v18 = [(UIPrinterUtilityTableViewController *)v9 tableView:v26];
    [v18 addObserver:v9 forKeyPath:@"frame" options:0 context:0];

    tableView = [(UIPrinterUtilityTableViewController *)v9 tableView];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [tableView registerClass:v20 forHeaderFooterViewReuseIdentifier:v22];

    v23 = *MEMORY[0x277D76F30];
    tableView2 = [(UIPrinterUtilityTableViewController *)v9 tableView];
    [tableView2 setSectionFooterHeight:v23];
  }

  return v9;
}

void __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_2;
    block[3] = &unk_279A9CCF0;
    objc_copyWeak(&v9, (a1 + 40));
    v7 = v5;
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
  }
}

void __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] objectForKey:@"PrinterInfoURL"];
  [WeakRetained setPrinterWebPageURL:v2];

  v3 = [a1[4] objectForKey:@"PrinterSuppliesURL"];
  [WeakRetained setPrinterSuppliesInfoURL:v3];

  if (a1[4])
  {
    v4 = [a1[5] hasIdentifyPrinterOp];
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained setShowIdentifyPrinterItem:v4];
  v5 = [a1[5] accessState] == 1 || objc_msgSend(a1[5], "accessState") == 2;
  [WeakRetained setShowRemoveKeychainItem:v5];
  [WeakRetained reloadPrinterInfoViews];
}

void __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_4;
  v5[3] = &unk_279A9BF78;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setSuppliesCheckComplete:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setSupplyData:v3];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"frame", object, change, context}])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__UIPrinterUtilityTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __86__UIPrinterUtilityTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 32), "suppliesSection")}];
  [v3 reloadSections:v2 withRowAnimation:100];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v14 viewDidAppear:appear];
  [(UIPrinterUtilityTableViewController *)self startPrinterWarningPoll];
  printPanelViewController = [(UIPrinterUtilityTableViewController *)self printPanelViewController];
  [printPanelViewController contentInsetForPreviewWithHeight:0.0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  tableView = [(UIPrinterUtilityTableViewController *)self tableView];
  [tableView setContentInset:{v6, v8, v10, v12}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(UIPrinterUtilityTableViewController *)self setPkPrinter:0];
  [(UIPrinterUtilityTableViewController *)self stopPrinterWarningPolling];
  v5.receiver = self;
  v5.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__UIPrinterUtilityTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__UIPrinterUtilityTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) printPanelViewController];
  [v11 contentInsetForPreviewWithHeight:0.0];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) tableView];
  [v10 setContentInset:{v3, v5, v7, v9}];
}

- (void)reloadPrinterInfoViews
{
  if ([(UIPrinterUtilityTableViewController *)self isViewLoaded])
  {
    view = [(UIPrinterUtilityTableViewController *)self view];
    window = [view window];

    if (window)
    {
      tableView = [(UIPrinterUtilityTableViewController *)self tableView];
      [tableView reloadData];
    }
  }
}

- (void)setSupplyData:(id)data
{
  dataCopy = data;
  objc_storeStrong(&self->_supplyData, data);
  if ([(UIPrinterUtilityTableViewController *)self isViewLoaded])
  {
    view = [(UIPrinterUtilityTableViewController *)self view];
    window = [view window];

    if (window)
    {
      tableView = [(UIPrinterUtilityTableViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[UIPrinterUtilityTableViewController suppliesSection](self, "suppliesSection")}];
      [tableView reloadSections:v8 withRowAnimation:100];
    }
  }
}

- (void)startPrinterWarningPoll
{
  printerAttributesService = [(UIPrinterUtilityTableViewController *)self printerAttributesService];

  if (!printerAttributesService)
  {
    v4 = +[UIPrinterAttributesService instance];
    [(UIPrinterUtilityTableViewController *)self setPrinterAttributesService:v4];
  }

  objc_initWeak(&location, self);
  pkPrinter = [(UIPrinterUtilityTableViewController *)self pkPrinter];
  name = [pkPrinter name];

  printerAttributesService2 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];
  pkPrinter2 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__UIPrinterUtilityTableViewController_startPrinterWarningPoll__block_invoke;
  v10[3] = &unk_279A9CD68;
  objc_copyWeak(&v13, &location);
  v9 = name;
  v11 = v9;
  selfCopy = self;
  [printerAttributesService2 startPollForPrinterWarningStatus:pkPrinter2 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__UIPrinterUtilityTableViewController_startPrinterWarningPoll__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [WeakRetained pkPrinter];
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      v10 = [v6 pkPrinter];
      v11 = [v10 name];
      if ([v9 isEqualToString:v11])
      {
        v12 = [v6 printerWarning];
        v13 = [v14 isEqualToString:v12];

        if (v13)
        {
          goto LABEL_8;
        }

        [v6 setPrinterWarning:v14];
        v8 = [*(a1 + 40) tableView];
        v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
        [v8 reloadSections:v10 withRowAnimation:100];
      }

      else
      {
      }
    }
  }

LABEL_8:
}

- (void)stopPrinterWarningPolling
{
  printerAttributesService = [(UIPrinterUtilityTableViewController *)self printerAttributesService];

  if (printerAttributesService)
  {
    printerAttributesService2 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];
    [printerAttributesService2 stopPrinterWarningPolling];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  [(UIPrinterUtilityTableViewController *)self setPrinterNameAndLocationSection:0];
  [(UIPrinterUtilityTableViewController *)self setSuppliesSection:1];
  if (![(UIPrinterUtilityTableViewController *)self showRemoveKeychainItem])
  {
    return 2;
  }

  [(UIPrinterUtilityTableViewController *)self setRemoveKeychainItemSection:2];
  return 3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection]== section)
  {
    printerWebPageURL = [(UIPrinterUtilityTableViewController *)self printerWebPageURL];

    if (printerWebPageURL)
    {
      [(UIPrinterUtilityTableViewController *)self setPrinterWebPageRow:3];
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== section)
  {
    supplyData = [(UIPrinterUtilityTableViewController *)self supplyData];
    if (supplyData)
    {
      supplyData2 = [(UIPrinterUtilityTableViewController *)self supplyData];
      v7 = [supplyData2 count];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    return 1;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection])
  {
    v9 = [pathCopy row];
    if (v9 == [(UIPrinterUtilityTableViewController *)self printerWebPageRow])
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PrinterUtilityPrinterWebPageTableViewCell"];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"PrinterUtilityPrinterWebPageTableViewCell"];
      }

      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"Show Printer Web Page" value:@"Show Printer Web Page" table:@"Localizable"];
      textLabel = [v10 textLabel];
      [textLabel setText:v12];

      view = [(UIPrinterUtilityTableViewController *)self view];
      tintColor = [view tintColor];
      textLabel2 = [v10 textLabel];
      [textLabel2 setTextColor:tintColor];

      textLabel3 = [v10 textLabel];
      [textLabel3 setNumberOfLines:0];

      textLabel4 = [v10 textLabel];
      [textLabel4 setLineBreakMode:0];
LABEL_19:

      [v10 setSelectionStyle:3];
      goto LABEL_42;
    }

    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PrinterUtilityPrinterNameTableViewCell"];
    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"PrinterUtilityPrinterNameTableViewCell"];
    }

    if ([pathCopy row])
    {
      if ([pathCopy row] == 1)
      {
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"Location" value:@"Location" table:@"Localizable"];
        textLabel5 = [v10 textLabel];
        [textLabel5 setText:v23];

        pkPrinter = [(UIPrinterUtilityTableViewController *)self pkPrinter];
        location = [pkPrinter location];
        detailTextLabel = [v10 detailTextLabel];
        [detailTextLabel setText:location];

        if ([(UIPrinterUtilityTableViewController *)self showIdentifyPrinterItem])
        {
          [v10 setAccessoryType:4];
        }

        goto LABEL_34;
      }

      if ([pathCopy row] != 2)
      {
LABEL_34:
        [v10 setSelectionStyle:0];
        [v10 setHoverStyle:0];
        goto LABEL_42;
      }

      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"Model" value:@"Model" table:@"Localizable"];
      textLabel6 = [v10 textLabel];
      [textLabel6 setText:v56];

      pkPrinter2 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
      makeAndModel = [pkPrinter2 makeAndModel];
    }

    else
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:@"Name" value:@"Name" table:@"Localizable"];
      textLabel7 = [v10 textLabel];
      [textLabel7 setText:v49];

      pkPrinter2 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
      makeAndModel = [pkPrinter2 description];
    }

    v58 = makeAndModel;
    detailTextLabel2 = [v10 detailTextLabel];
    [detailTextLabel2 setText:v58];

LABEL_33:
    goto LABEL_34;
  }

  section2 = [pathCopy section];
  if (section2 == [(UIPrinterUtilityTableViewController *)self suppliesSection])
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
    textLabel8 = [v10 textLabel];
    [textLabel8 setNumberOfLines:0];

    supplyData = [(UIPrinterUtilityTableViewController *)self supplyData];
    if (supplyData)
    {
    }

    else if (![pathCopy row])
    {
      suppliesCheckComplete = [(UIPrinterUtilityTableViewController *)self suppliesCheckComplete];
      v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v65 = v64;
      if (suppliesCheckComplete)
      {
        v66 = [v64 localizedStringForKey:@"Information Not Available" value:@"Information Not Available" table:@"Localizable"];
        textLabel9 = [v10 textLabel];
        [textLabel9 setText:v66];

        [v10 setAccessoryView:0];
        goto LABEL_34;
      }

      v71 = [v64 localizedStringForKey:@"Gathering Supplies Information" value:@"Gathering Supplies Information" table:@"Localizable"];
      textLabel10 = [v10 textLabel];
      [textLabel10 setText:v71];

      pkPrinter2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v10 setAccessoryView:pkPrinter2];
      [pkPrinter2 startAnimating];
      goto LABEL_33;
    }

    supplyData2 = [(UIPrinterUtilityTableViewController *)self supplyData];
    v35 = [supplyData2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    if (v35)
    {
      name = [v35 name];
      localizedCapitalizedString = [name localizedCapitalizedString];
      textLabel11 = [v10 textLabel];
      [textLabel11 setText:localizedCapitalizedString];

      if (([v35 level] & 0x80000000) != 0)
      {
        level = [v35 level];
        v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v47 = v61;
        if (level == -3)
        {
          v62 = @"Level is OK";
        }

        else
        {
          v62 = @"Level is unknown";
        }

        v68 = [(UIPrintSupplyLevelView *)v61 localizedStringForKey:v62 value:v62 table:@"Localizable"];
        detailTextLabel3 = [v10 detailTextLabel];
        [detailTextLabel3 setText:v68];
      }

      else
      {
        [v10 frame];
        v40 = v39;
        tableView = [(UIPrinterUtilityTableViewController *)self tableView];
        [tableView frame];
        v43 = v42 * 0.33333;

        colors = [v35 colors];
        if ([colors count] == 1)
        {
          v45 = 20.0;
        }

        else
        {
          v45 = 26.0;
        }

        [v10 frame];
        v47 = [[UIPrintSupplyLevelView alloc] initWithFrame:v35 supplyInfo:v40, (v46 - v45) * 0.5, v43, v45];
        [v10 setAccessoryView:v47];
      }
    }

    else
    {
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v53 = [(UIPrintSupplyLevelView *)v47 localizedStringForKey:@"Information Not Available" value:@"Information Not Available" table:@"Localizable"];
      textLabel12 = [v10 textLabel];
      [textLabel12 setText:v53];
    }

    [v10 setSelectionStyle:0];
    [v10 setHoverStyle:0];
  }

  else
  {
    section3 = [pathCopy section];
    if (section3 == [(UIPrinterUtilityTableViewController *)self removeKeychainItemSection])
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PrinterUtilityRemoveKeychainItemTableViewCell"];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"PrinterUtilityRemoveKeychainItemTableViewCell"];
      }

      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"Forget Username and Password" value:@"Forget Username and Password" table:@"Localizable"];
      textLabel13 = [v10 textLabel];
      [textLabel13 setText:v30];

      textLabel4 = [(UIPrinterUtilityTableViewController *)self view];
      tintColor2 = [textLabel4 tintColor];
      textLabel14 = [v10 textLabel];
      [textLabel14 setTextColor:tintColor2];

      goto LABEL_19;
    }

    v10 = 0;
  }

LABEL_42:

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== section)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Supply Levels" value:@"Supply Levels" table:@"Localizable"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection]== section)
  {
    printerWarning = [(UIPrinterUtilityTableViewController *)self printerWarning];
  }

  else
  {
    printerWarning = 0;
  }

  return printerWarning;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== section)
  {
    supplyData = [(UIPrinterUtilityTableViewController *)self supplyData];

    if (supplyData)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      supplyData = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v9];

      printerSuppliesInfoURL = [(UIPrinterUtilityTableViewController *)self printerSuppliesInfoURL];
      view = [(UIPrinterUtilityTableViewController *)self view];
      tintColor = [view tintColor];
      [supplyData updateDisclaimerTextWithInfoURL:printerSuppliesInfoURL tintColor:tintColor];
    }
  }

  else
  {
    supplyData = 0;
  }

  return supplyData;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[UIPrinterUtilityTableViewController printerNameAndLocationSection](self, "printerNameAndLocationSection") && (v8 = [pathCopy row], v8 == -[UIPrinterUtilityTableViewController printerWebPageRow](self, "printerWebPageRow")))
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    printerWebPageURL = [(UIPrinterUtilityTableViewController *)self printerWebPageURL];
    [mEMORY[0x277D75128] openURL:printerWebPageURL options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 != [(UIPrinterUtilityTableViewController *)self removeKeychainItemSection])
    {
      goto LABEL_7;
    }

    mEMORY[0x277D75128] = [(UIPrinterUtilityTableViewController *)self pkPrinter];
    [mEMORY[0x277D75128] removeCredentialsFromKeychain];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
LABEL_7:
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == -[UIPrinterUtilityTableViewController printerNameAndLocationSection](self, "printerNameAndLocationSection") && [pathCopy row] == 1)
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v8 setSelectionStyle:3];
    [v8 setSelected:1 animated:1];
    pkPrinter = [(UIPrinterUtilityTableViewController *)self pkPrinter];
    [pkPrinter identifySelf];

    [v8 setSelected:0 animated:1];
    [v8 setSelectionStyle:0];
  }
}

@end