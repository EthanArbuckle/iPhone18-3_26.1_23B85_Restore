@interface UIPrinterUtilityTableViewController
- (UIPrinterUtilityTableViewController)initWithPrinter:(id)a3 printPanelViewController:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadPrinterInfoViews;
- (void)setSupplyData:(id)a3;
- (void)startPrinterWarningPoll;
- (void)stopPrinterWarningPolling;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIPrinterUtilityTableViewController

- (void)dealloc
{
  v3 = [(UIPrinterUtilityTableViewController *)self tableView];
  [v3 removeObserver:self forKeyPath:@"frame"];

  v4.receiver = self;
  v4.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v4 dealloc];
}

- (UIPrinterUtilityTableViewController)initWithPrinter:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = UIPrinterUtilityTableViewController;
  v8 = [(UIPrinterUtilityTableViewController *)&v35 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    [(UIPrinterUtilityTableViewController *)v8 setPkPrinter:v6];
    [(UIPrinterUtilityTableViewController *)v9 setPrintPanelViewController:v7];
    [(UIPrinterUtilityTableViewController *)v9 setPrinterWebPageRow:-1];
    [(UIPrinterUtilityTableViewController *)v9 setRemoveKeychainItemSection:-1];
    [(UIPrinterUtilityTableViewController *)v9 setPrinterWarning:0];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Printer Info" value:@"Printer Info" table:@"Localizable"];
    [(UIPrinterUtilityTableViewController *)v9 setTitle:v11];

    if (v6)
    {
      objc_initWeak(&location, v9);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __80__UIPrinterUtilityTableViewController_initWithPrinter_printPanelViewController___block_invoke;
      v31[3] = &unk_279A9CD18;
      objc_copyWeak(&v33, &location);
      v12 = v6;
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
          v16 = [v12 hasIdentifyPrinterOp];
        }

        else
        {
          v16 = 0;
        }

        [(UIPrinterUtilityTableViewController *)v9 setShowIdentifyPrinterItem:v16];
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

    v19 = [(UIPrinterUtilityTableViewController *)v9 tableView];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v19 registerClass:v20 forHeaderFooterViewReuseIdentifier:v22];

    v23 = *MEMORY[0x277D76F30];
    v24 = [(UIPrinterUtilityTableViewController *)v9 tableView];
    [v24 setSectionFooterHeight:v23];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"frame", a4, a5, a6}])
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

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v14 viewDidAppear:a3];
  [(UIPrinterUtilityTableViewController *)self startPrinterWarningPoll];
  v4 = [(UIPrinterUtilityTableViewController *)self printPanelViewController];
  [v4 contentInsetForPreviewWithHeight:0.0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIPrinterUtilityTableViewController *)self tableView];
  [v13 setContentInset:{v6, v8, v10, v12}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(UIPrinterUtilityTableViewController *)self setPkPrinter:0];
  [(UIPrinterUtilityTableViewController *)self stopPrinterWarningPolling];
  v5.receiver = self;
  v5.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIPrinterUtilityTableViewController;
  [(UIPrinterUtilityTableViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
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
    v3 = [(UIPrinterUtilityTableViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = [(UIPrinterUtilityTableViewController *)self tableView];
      [v5 reloadData];
    }
  }
}

- (void)setSupplyData:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_supplyData, a3);
  if ([(UIPrinterUtilityTableViewController *)self isViewLoaded])
  {
    v5 = [(UIPrinterUtilityTableViewController *)self view];
    v6 = [v5 window];

    if (v6)
    {
      v7 = [(UIPrinterUtilityTableViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[UIPrinterUtilityTableViewController suppliesSection](self, "suppliesSection")}];
      [v7 reloadSections:v8 withRowAnimation:100];
    }
  }
}

- (void)startPrinterWarningPoll
{
  v3 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];

  if (!v3)
  {
    v4 = +[UIPrinterAttributesService instance];
    [(UIPrinterUtilityTableViewController *)self setPrinterAttributesService:v4];
  }

  objc_initWeak(&location, self);
  v5 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
  v6 = [v5 name];

  v7 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];
  v8 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__UIPrinterUtilityTableViewController_startPrinterWarningPoll__block_invoke;
  v10[3] = &unk_279A9CD68;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v11 = v9;
  v12 = self;
  [v7 startPollForPrinterWarningStatus:v8 completionHandler:v10];

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
  v3 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];

  if (v3)
  {
    v4 = [(UIPrinterUtilityTableViewController *)self printerAttributesService];
    [v4 stopPrinterWarningPolling];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection]== a4)
  {
    v6 = [(UIPrinterUtilityTableViewController *)self printerWebPageURL];

    if (v6)
    {
      [(UIPrinterUtilityTableViewController *)self setPrinterWebPageRow:3];
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== a4)
  {
    v8 = [(UIPrinterUtilityTableViewController *)self supplyData];
    if (v8)
    {
      v9 = [(UIPrinterUtilityTableViewController *)self supplyData];
      v7 = [v9 count];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection])
  {
    v9 = [v7 row];
    if (v9 == [(UIPrinterUtilityTableViewController *)self printerWebPageRow])
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"PrinterUtilityPrinterWebPageTableViewCell"];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"PrinterUtilityPrinterWebPageTableViewCell"];
      }

      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"Show Printer Web Page" value:@"Show Printer Web Page" table:@"Localizable"];
      v13 = [v10 textLabel];
      [v13 setText:v12];

      v14 = [(UIPrinterUtilityTableViewController *)self view];
      v15 = [v14 tintColor];
      v16 = [v10 textLabel];
      [v16 setTextColor:v15];

      v17 = [v10 textLabel];
      [v17 setNumberOfLines:0];

      v18 = [v10 textLabel];
      [v18 setLineBreakMode:0];
LABEL_19:

      [v10 setSelectionStyle:3];
      goto LABEL_42;
    }

    v10 = [v6 dequeueReusableCellWithIdentifier:@"PrinterUtilityPrinterNameTableViewCell"];
    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"PrinterUtilityPrinterNameTableViewCell"];
    }

    if ([v7 row])
    {
      if ([v7 row] == 1)
      {
        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"Location" value:@"Location" table:@"Localizable"];
        v24 = [v10 textLabel];
        [v24 setText:v23];

        v25 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
        v26 = [v25 location];
        v27 = [v10 detailTextLabel];
        [v27 setText:v26];

        if ([(UIPrinterUtilityTableViewController *)self showIdentifyPrinterItem])
        {
          [v10 setAccessoryType:4];
        }

        goto LABEL_34;
      }

      if ([v7 row] != 2)
      {
LABEL_34:
        [v10 setSelectionStyle:0];
        [v10 setHoverStyle:0];
        goto LABEL_42;
      }

      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v55 localizedStringForKey:@"Model" value:@"Model" table:@"Localizable"];
      v57 = [v10 textLabel];
      [v57 setText:v56];

      v51 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
      v52 = [v51 makeAndModel];
    }

    else
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:@"Name" value:@"Name" table:@"Localizable"];
      v50 = [v10 textLabel];
      [v50 setText:v49];

      v51 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
      v52 = [v51 description];
    }

    v58 = v52;
    v59 = [v10 detailTextLabel];
    [v59 setText:v58];

LABEL_33:
    goto LABEL_34;
  }

  v19 = [v7 section];
  if (v19 == [(UIPrinterUtilityTableViewController *)self suppliesSection])
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
    v20 = [v10 textLabel];
    [v20 setNumberOfLines:0];

    v21 = [(UIPrinterUtilityTableViewController *)self supplyData];
    if (v21)
    {
    }

    else if (![v7 row])
    {
      v63 = [(UIPrinterUtilityTableViewController *)self suppliesCheckComplete];
      v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v65 = v64;
      if (v63)
      {
        v66 = [v64 localizedStringForKey:@"Information Not Available" value:@"Information Not Available" table:@"Localizable"];
        v67 = [v10 textLabel];
        [v67 setText:v66];

        [v10 setAccessoryView:0];
        goto LABEL_34;
      }

      v71 = [v64 localizedStringForKey:@"Gathering Supplies Information" value:@"Gathering Supplies Information" table:@"Localizable"];
      v72 = [v10 textLabel];
      [v72 setText:v71];

      v51 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v10 setAccessoryView:v51];
      [v51 startAnimating];
      goto LABEL_33;
    }

    v34 = [(UIPrinterUtilityTableViewController *)self supplyData];
    v35 = [v34 objectAtIndex:{objc_msgSend(v7, "row")}];

    if (v35)
    {
      v36 = [v35 name];
      v37 = [v36 localizedCapitalizedString];
      v38 = [v10 textLabel];
      [v38 setText:v37];

      if (([v35 level] & 0x80000000) != 0)
      {
        v60 = [v35 level];
        v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v47 = v61;
        if (v60 == -3)
        {
          v62 = @"Level is OK";
        }

        else
        {
          v62 = @"Level is unknown";
        }

        v68 = [(UIPrintSupplyLevelView *)v61 localizedStringForKey:v62 value:v62 table:@"Localizable"];
        v69 = [v10 detailTextLabel];
        [v69 setText:v68];
      }

      else
      {
        [v10 frame];
        v40 = v39;
        v41 = [(UIPrinterUtilityTableViewController *)self tableView];
        [v41 frame];
        v43 = v42 * 0.33333;

        v44 = [v35 colors];
        if ([v44 count] == 1)
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
      v54 = [v10 textLabel];
      [v54 setText:v53];
    }

    [v10 setSelectionStyle:0];
    [v10 setHoverStyle:0];
  }

  else
  {
    v28 = [v7 section];
    if (v28 == [(UIPrinterUtilityTableViewController *)self removeKeychainItemSection])
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"PrinterUtilityRemoveKeychainItemTableViewCell"];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"PrinterUtilityRemoveKeychainItemTableViewCell"];
      }

      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"Forget Username and Password" value:@"Forget Username and Password" table:@"Localizable"];
      v31 = [v10 textLabel];
      [v31 setText:v30];

      v18 = [(UIPrinterUtilityTableViewController *)self view];
      v32 = [v18 tintColor];
      v33 = [v10 textLabel];
      [v33 setTextColor:v32];

      goto LABEL_19;
    }

    v10 = 0;
  }

LABEL_42:

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== a4)
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(UIPrinterUtilityTableViewController *)self printerNameAndLocationSection]== a4)
  {
    v5 = [(UIPrinterUtilityTableViewController *)self printerWarning];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(UIPrinterUtilityTableViewController *)self suppliesSection]== a4)
  {
    v7 = [(UIPrinterUtilityTableViewController *)self supplyData];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v9];

      v10 = [(UIPrinterUtilityTableViewController *)self printerSuppliesInfoURL];
      v11 = [(UIPrinterUtilityTableViewController *)self view];
      v12 = [v11 tintColor];
      [v7 updateDisclaimerTextWithInfoURL:v10 tintColor:v12];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 == -[UIPrinterUtilityTableViewController printerNameAndLocationSection](self, "printerNameAndLocationSection") && (v8 = [v6 row], v8 == -[UIPrinterUtilityTableViewController printerWebPageRow](self, "printerWebPageRow")))
  {
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [(UIPrinterUtilityTableViewController *)self printerWebPageURL];
    [v9 openURL:v10 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  else
  {
    v11 = [v6 section];
    if (v11 != [(UIPrinterUtilityTableViewController *)self removeKeychainItemSection])
    {
      goto LABEL_7;
    }

    v9 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
    [v9 removeCredentialsFromKeychain];
  }

  [v12 deselectRowAtIndexPath:v6 animated:1];
LABEL_7:
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 == -[UIPrinterUtilityTableViewController printerNameAndLocationSection](self, "printerNameAndLocationSection") && [v6 row] == 1)
  {
    v8 = [v10 cellForRowAtIndexPath:v6];
    [v8 setSelectionStyle:3];
    [v8 setSelected:1 animated:1];
    v9 = [(UIPrinterUtilityTableViewController *)self pkPrinter];
    [v9 identifySelf];

    [v8 setSelected:0 animated:1];
    [v8 setSelectionStyle:0];
  }
}

@end