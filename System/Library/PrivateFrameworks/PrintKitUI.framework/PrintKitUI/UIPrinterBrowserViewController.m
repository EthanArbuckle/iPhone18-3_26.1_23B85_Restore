@interface UIPrinterBrowserViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (UIPrinterBrowserOwner)ownerPanelViewController;
- (UIPrinterBrowserViewController)initWithOwnerViewController:(id)a3 printInfo:(id)a4 printPanelViewController:(id)a5;
- (id)discoveredPrinterWithUUID:(id)a3;
- (id)printerAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)addPrinter:(id)a3 moreComing:(BOOL)a4;
- (void)adjustPopoverSize;
- (void)dealloc;
- (void)iCloudPrintersListChanged;
- (void)loadView;
- (void)printerInfoButtonTapped:(id)a3;
- (void)removePrinter:(id)a3 moreGoing:(BOOL)a4;
- (void)searchTimeout;
- (void)selectPrinter:(id)a3;
- (void)showCancelButton;
- (void)startPrinterBrowser;
- (void)stopPrinterBrowser;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateSearchingState;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIPrinterBrowserViewController

- (UIPrinterBrowserViewController)initWithOwnerViewController:(id)a3 printInfo:(id)a4 printPanelViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = UIPrinterBrowserViewController;
  v11 = [(UIPrinterBrowserViewController *)&v22 initWithStyle:2];
  if (v11)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Printer" value:@"Printer" table:@"Localizable"];
    [(UIPrinterBrowserViewController *)v11 setTitle:v13];

    v14 = *MEMORY[0x277D76F30];
    v15 = [(UIPrinterBrowserViewController *)v11 tableView];
    [v15 setRowHeight:v14];

    [(UIPrinterBrowserViewController *)v11 setOwnerPanelViewController:v8];
    [(UIPrinterBrowserViewController *)v11 setPrintPanelViewController:v10];
    v16 = [v9 copy];
    [(UIPrinterBrowserViewController *)v11 setPrintInfoForBrowser:v16];

    v17 = [MEMORY[0x277CBEB18] array];
    [(UIPrinterBrowserViewController *)v11 setICloudPrinters:v17];

    v18 = [MEMORY[0x277CBEB18] array];
    [(UIPrinterBrowserViewController *)v11 setAvailablePrinters:v18];

    v19 = [MEMORY[0x277CBEB18] array];
    [(UIPrinterBrowserViewController *)v11 setFilteredOutPrinters:v19];

    -[UIPrinterBrowserViewController setShouldFilterPrinters:](v11, "setShouldFilterPrinters:", [v8 filtersPrinters]);
    [(UIPrinterBrowserViewController *)v11 setMaximumPopoverHeight:1.79769313e308];
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v11 selector:sel_stopPrinterBrowser name:*MEMORY[0x277D76660] object:0];
    [v20 addObserver:v11 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
    [v20 addObserver:v11 selector:sel_iCloudPrintersListChanged name:@"com.apple.printkit.iCloudPrintersChanged.notification" object:0];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(UIPrinterBrowserViewController *)self printerBrowser];

  if (v4)
  {
    v5 = [(UIPrinterBrowserViewController *)self printerBrowser];
    [v5 setDelegate:0];

    [(UIPrinterBrowserViewController *)self setPrinterBrowser:0];
  }

  v6.receiver = self;
  v6.super_class = UIPrinterBrowserViewController;
  [(UIPrinterBrowserViewController *)&v6 dealloc];
}

- (void)selectPrinter:(id)a3
{
  v4 = a3;
  v5 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  [v5 setPrinter:v4];
}

- (void)printerInfoButtonTapped:(id)a3
{
  v8 = [a3 printer];
  v4 = [UIPrinterUtilityTableViewController alloc];
  v5 = [(UIPrinterBrowserViewController *)self printPanelViewController];
  v6 = [(UIPrinterUtilityTableViewController *)v4 initWithPrinter:v8 printPanelViewController:v5];

  v7 = [(UIPrinterBrowserViewController *)self navigationController];
  [v7 pushViewController:v6 animated:1];
}

- (void)adjustPopoverSize
{
  v3 = [(UIPrinterBrowserViewController *)self popoverPresentationController];

  if (v3)
  {
    v4 = [(UIPrinterBrowserViewController *)self tableView];
    if ([v4 numberOfSections] <= 0)
    {
      v8 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v5 = [(UIPrinterBrowserViewController *)self tableView];
      v6 = [(UIPrinterBrowserViewController *)self tableView];
      [v5 rectForSection:{objc_msgSend(v6, "numberOfSections") - 1}];
      v8 = v7;
    }

    v9 = [(UIPrinterBrowserViewController *)self navigationController];
    v20 = [v9 viewControllers];

    if ([v20 count] < 2)
    {
      v17 = 320.0;
    }

    else
    {
      v10 = [v20 objectAtIndex:{objc_msgSend(v20, "count") - 2}];
      v11 = [v10 view];
      [v11 frame];
      v13 = v12;

      if (v8 < v13)
      {
        v8 = v13;
      }

      v14 = [v10 view];
      [v14 frame];
      v16 = v15;

      v17 = fmax(v16, 320.0);
    }

    [(UIPrinterBrowserViewController *)self maximumPopoverHeight];
    if (v8 < v18)
    {
      v18 = v8;
    }

    v19 = 161.0;
    if (v18 >= 161.0)
    {
      v19 = v18;
    }

    [(UIPrinterBrowserViewController *)self setPreferredContentSize:v17, v19];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = UIPrinterBrowserViewController;
  [(UIPrinterBrowserViewController *)&v3 loadView];
  [(UIPrinterBrowserViewController *)self adjustPopoverSize];
}

- (void)startPrinterBrowser
{
  v3 = [(UIPrinterBrowserViewController *)self printerBrowser];

  if (!v3)
  {
    v4 = [(UIPrinterBrowserViewController *)self printInfoForBrowser];
    v5 = [v4 dictionaryRepresentation];

    v6 = [MEMORY[0x277D410B0] browserWithDelegate:self infoDictionary:v5];
    [(UIPrinterBrowserViewController *)self setPrinterBrowser:v6];

    [(UIPrinterBrowserViewController *)self setPrintersSearchState:1];
    [(UIPrinterBrowserViewController *)self updateSearchingState];
  }

  v7 = [MEMORY[0x277D41090] iCloudPrinters];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke;
  v9[3] = &unk_279A9BEB8;
  v9[4] = self;
  [v7 enumerateObjectsUsingBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke_3;
  v8[3] = &unk_279A9BEE0;
  v8[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke_2;
  v3[3] = &unk_279A9BE90;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D410A8] printerWithiCloudPrinter:a2 discoveryTime:v3 completionHandler:5.0];
}

uint64_t __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addPrinter:a2 moreComing:0];
  }

  return result;
}

void __53__UIPrinterBrowserViewController_startPrinterBrowser__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)stopPrinterBrowser
{
  v3 = [(UIPrinterBrowserViewController *)self printerBrowser];

  if (v3)
  {
    v4 = [(UIPrinterBrowserViewController *)self printerBrowser];
    [v4 setDelegate:0];

    [(UIPrinterBrowserViewController *)self setPrinterBrowser:0];
    v5 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    [v5 removeAllObjects];

    v6 = [(UIPrinterBrowserViewController *)self availablePrinters];
    [v6 removeAllObjects];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__UIPrinterBrowserViewController_stopPrinterBrowser__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __52__UIPrinterBrowserViewController_stopPrinterBrowser__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 setLoaded:0];
}

- (void)iCloudPrintersListChanged
{
  [(UIPrinterBrowserViewController *)self stopPrinterBrowser];

  [(UIPrinterBrowserViewController *)self startPrinterBrowser];
}

- (void)searchTimeout
{
  v3 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIPrinterBrowserViewController *)self availablePrinters];
    v4 = 2 * ([v5 count] == 0);
  }

  [(UIPrinterBrowserViewController *)self setPrintersSearchState:v4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UIPrinterBrowserViewController_searchTimeout__block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  if ([(UIPrinterBrowserViewController *)self printersSearchState]== 1)
  {
    v21 = [MEMORY[0x277D75390] loadingConfiguration];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"Looking for Printers…";
LABEL_3:
    v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];
    [v21 setText:v7];

LABEL_7:
    goto LABEL_10;
  }

  if ([(UIPrinterBrowserViewController *)self printersSearchState]== 2)
  {
    v5 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    if ([v5 count])
    {
      v21 = 0;
      goto LABEL_7;
    }

    v8 = [(UIPrinterBrowserViewController *)self availablePrinters];
    v9 = [v8 count];

    if (!v9)
    {
      v21 = [MEMORY[0x277D75390] emptyConfiguration];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"No AirPrint Printers Found";
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_10:
  v10 = [(UIPrinterBrowserViewController *)self printPanelViewController];
  [v10 contentInsetForPreviewWithHeight:0.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(UIPrinterBrowserViewController *)self view];
  [v19 safeAreaInsets];
  [v21 setDirectionalLayoutMargins:{v12, v14 + v20, v16, v18}];

  [(UIPrinterBrowserViewController *)self setContentUnavailableConfiguration:v21];
}

- (void)updateSearchingState
{
  v3 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
  if ([v3 count])
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [(UIPrinterBrowserViewController *)self availablePrinters];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = 1;
  if ([(UIPrinterBrowserViewController *)self printersSearchState]!= 2)
  {
    v7 = 1;
    goto LABEL_6;
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  [(UIPrinterBrowserViewController *)self setPrintersSearchState:v7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UIPrinterBrowserViewController_updateSearchingState__block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v6 && [(UIPrinterBrowserViewController *)self printersSearchState]!= 2)
  {
    [(UIPrinterBrowserViewController *)self performSelector:sel_searchTimeout withObject:0 afterDelay:5.0];
  }

  v8 = [(UIPrinterBrowserViewController *)self tableView];
  [v8 setBounces:v6 ^ 1u];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = UIPrinterBrowserViewController;
  [(UIPrinterBrowserViewController *)&v15 viewIsAppearing:a3];
  v4 = [(UIPrinterBrowserViewController *)self printPanelViewController];
  [v4 contentInsetForPreviewWithHeight:0.0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIPrinterBrowserViewController *)self tableView];
  [v13 setContentInset:{v6, v8, v10, v12}];

  v14 = [(UIPrinterBrowserViewController *)self printerBrowser];

  if (!v14)
  {
    [(UIPrinterBrowserViewController *)self startPrinterBrowser];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = UIPrinterBrowserViewController;
  [(UIPrinterBrowserViewController *)&v8 viewDidDisappear:a3];
  v4 = [(UIPrinterBrowserViewController *)self lockedPrinter];

  if (v4)
  {
    v5 = [(UIPrinterBrowserViewController *)self lockedPrinter];
    [v5 cancelUnlock];

    [(UIPrinterBrowserViewController *)self setLockedPrinter:0];
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateSearchingState object:0];
  [(UIPrinterBrowserViewController *)self stopPrinterBrowser];
  v6 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  [v6 printerBrowserViewDidDisappear];

  [(UIPrinterBrowserViewController *)self setPrintersSearchState:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UIPrinterBrowserViewController_viewDidDisappear___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  LOBYTE(a3) = [v4 shouldAutorotateToInterfaceOrientation:a3];

  return a3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIPrinterBrowserViewController;
  [(UIPrinterBrowserViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__UIPrinterBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__UIPrinterBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) printPanelViewController];
  [v2 contentInsetForPreviewWithHeight:0.0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) tableView];
  [v11 setContentInset:{v4, v6, v8, v10}];

  v12 = *(a1 + 32);

  return [v12 setNeedsUpdateContentUnavailableConfiguration];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
  v5 = [v4 count];

  v6 = [(UIPrinterBrowserViewController *)self availablePrinters];
  v7 = [v6 count];

  v8 = v5 != 0;
  v9 = 1;
  if (v5)
  {
    v9 = 2;
  }

  if (v7)
  {
    v8 = v9;
  }

  if (v8 <= 1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v7 = a3;
  if (!a4)
  {
    v4 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    if ([v4 count])
    {
      v10 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
      v9 = [v10 count];

LABEL_6:
      goto LABEL_7;
    }
  }

  v8 = [(UIPrinterBrowserViewController *)self availablePrinters];
  v9 = [v8 count];

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (a4)
    {
      v9 = @"Other Printers";
    }

    else
    {
      v9 = @"Known Printers";
    }

    v10 = [v7 localizedStringForKey:v9 value:v9 table:@"Localizable"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)printerAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if ([v4 section] || (-[UIPrinterBrowserViewController iCloudPrinters](self, "iCloudPrinters"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    v6 = [(UIPrinterBrowserViewController *)self availablePrinters];
    if (v5 < [v6 count])
    {
      v7 = [(UIPrinterBrowserViewController *)self availablePrinters];
LABEL_7:
      v10 = v7;
      v11 = [v7 objectAtIndexedSubscript:v5];

      goto LABEL_9;
    }
  }

  else
  {
    v6 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    if (v5 < [v6 count])
    {
      v7 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  if (!v11)
  {
    v12 = [v4 section];
    v13 = [v4 row];
    v14 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    v15 = [v14 count];
    v16 = [(UIPrinterBrowserViewController *)self availablePrinters];
    NSLog(&cfstr_InvalidPrinter.isa, v12, v13, v15, [v16 count]);
  }

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PrinterBrowserTableViewCell"];
  if (!v7)
  {
    v7 = [[UIPrinterTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"PrinterBrowserTableViewCell"];
  }

  v8 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  v9 = [v8 printer];

  v10 = [(UIPrinterBrowserViewController *)self printerAtIndexPath:v6];

  [(UIPrinterTableViewCell *)v7 setPrinter:v10];
  v11 = [v10 name];
  v12 = [v9 name];
  if ([v11 isEqualToString:v12])
  {
    [(UIPrinterTableViewCell *)v7 setPrinterSelected:1];
  }

  else
  {
    v13 = [v10 uuid];
    v14 = [v9 uuid];
    -[UIPrinterTableViewCell setPrinterSelected:](v7, "setPrinterSelected:", [v13 isEqualToString:v14]);
  }

  [(UIPrinterTableViewCell *)v7 setDelegate:self];
  v15 = [(UIPrinterBrowserViewController *)self lockedPrinter];

  if (v15)
  {
    v16 = 4;
  }

  else
  {
    v17 = [v10 accessState] - 1;
    if (v17 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = dword_25F6D3FD0[v17];
    }
  }

  [(UIPrinterTableViewCell *)v7 setPrinterState:v16];
  [(UIPrinterTableViewCell *)v7 layoutIfNeeded];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPrinterBrowserViewController *)self printerAtIndexPath:v7];
  v9 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  if ([v8 accessState] == 1)
  {
    [(UIPrinterBrowserViewController *)self setLockedPrinter:v8];
    v10 = [v6 cellForRowAtIndexPath:v7];
    [v10 setPrinterState:4];
    v11 = [(UIPrinterBrowserViewController *)self lockedPrinter];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__UIPrinterBrowserViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v22[3] = &unk_279A9BF08;
    v22[4] = self;
    v23 = v9;
    v24 = v10;
    v25 = v6;
    v12 = v10;
    [v11 unlockWithCompletionHandler:v22];

LABEL_3:
    goto LABEL_12;
  }

  if (![v8 accessState] || objc_msgSend(v8, "accessState") == 2)
  {
    [v9 setPrinter:v8];
    if (objc_opt_respondsToSelector())
    {
      [v9 setUserSelectedPrinter:1];
    }

    v13 = [(UIPrinterBrowserViewController *)self navigationController];
    v14 = [v13 viewControllers];
    v15 = [v14 objectAtIndexedSubscript:0];

    if (v15 == self)
    {
      [v9 dismissAnimated:1];
      goto LABEL_12;
    }

    v16 = [(UIPrinterBrowserViewController *)self navigationController];
    v17 = [v16 viewControllers];
    v18 = [(UIPrinterBrowserViewController *)self navigationController];
    v19 = [v18 viewControllers];
    v20 = [v17 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 1}];

    if (v20 == self)
    {
      v12 = [(UIPrinterBrowserViewController *)self navigationController];
      v21 = [v12 popViewControllerAnimated:1];
      goto LABEL_3;
    }
  }

LABEL_12:
}

void __68__UIPrinterBrowserViewController_tableView_didSelectRowAtIndexPath___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] lockedPrinter];

  if (v4)
  {
    if (a2 == 2)
    {
      v5 = [a1[4] lockedPrinter];
      [a1[5] setPrinter:v5];

      [a1[6] setPrinterState:2];
      if (objc_opt_respondsToSelector())
      {
        [a1[5] setUserSelectedPrinter:1];
      }

      v6 = [a1[4] navigationController];
      v7 = [v6 viewControllers];
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = a1[4];

      if (v8 == v9)
      {
        [a1[5] dismissAnimated:1];
      }

      else
      {
        v10 = [a1[4] navigationController];
        v11 = [v10 viewControllers];
        v12 = [a1[4] navigationController];
        v13 = [v12 viewControllers];
        v14 = [v11 objectAtIndexedSubscript:{objc_msgSend(v13, "count") - 1}];
        v15 = a1[4];

        if (v14 == v15)
        {
          v16 = [a1[4] navigationController];
          v17 = [v16 popViewControllerAnimated:1];
        }
      }
    }

    else
    {
      [a1[6] setPrinterState:1];
      [a1[7] _deselectAllNonMultiSelectRowsAnimated:1 notifyDelegate:0];
    }

    v18 = a1[4];

    [v18 setLockedPrinter:0];
  }
}

- (void)addPrinter:(id)a3 moreComing:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UIPrinterBrowserViewController_addPrinter_moreComing___block_invoke;
  block[3] = &unk_279A9BF50;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__UIPrinterBrowserViewController_addPrinter_moreComing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 discoveredPrinterWithUUID:v3];

  if (v4)
  {
    return;
  }

  v39 = [*(a1 + 32) ownerPanelViewController];
  if (![*(a1 + 32) shouldFilterPrinters] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v39, "shouldShowPrinter:", *(a1 + 40)) & 1) != 0)
  {
    v5 = [*(a1 + 40) isiCloudPrinter];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 iCloudPrinters];
      [v7 addObject:*(a1 + 40)];

      v8 = [*(a1 + 32) iCloudPrinters];
      v9 = [v8 indexOfObject:*(a1 + 40)];

      v10 = [*(a1 + 32) iCloudPrinters];
      v11 = [v10 count];

      if (v11 == 1)
      {
        goto LABEL_11;
      }

      v12 = [*(a1 + 32) tableView];
      v13 = MEMORY[0x277CBEA60];
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
      v15 = v13;
    }

    else
    {
      v16 = [v6 availablePrinters];
      [v16 addObject:*(a1 + 40)];

      v17 = [*(a1 + 32) iCloudPrinters];
      v18 = [v17 count];

      v19 = [*(a1 + 32) availablePrinters];
      [v19 sortUsingComparator:&__block_literal_global];

      v20 = [*(a1 + 32) availablePrinters];
      v21 = [v20 indexOfObject:*(a1 + 40)];

      v22 = [*(a1 + 32) availablePrinters];
      v23 = [v22 count];

      if (v23 == 1)
      {
        goto LABEL_11;
      }

      v24 = v18 != 0;
      v12 = [*(a1 + 32) tableView];
      v25 = MEMORY[0x277CBEA60];
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:v21 inSection:v24];
      v15 = v25;
    }

    v26 = [v15 arrayWithObject:v14];
    [v12 insertRowsAtIndexPaths:v26 withRowAnimation:0];

    if ([*(a1 + 32) loaded])
    {
LABEL_12:
      if (*(a1 + 48))
      {
        goto LABEL_22;
      }

      [*(a1 + 32) adjustPopoverSize];
      if ([*(a1 + 32) loaded])
      {
        goto LABEL_22;
      }

      v28 = [v39 printer];
      v29 = [*(a1 + 32) iCloudPrinters];
      v30 = [v29 indexOfObject:v28];

      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = [*(a1 + 32) availablePrinters];
        v30 = [v31 indexOfObject:v28];

        v32 = [*(a1 + 32) iCloudPrinters];
        v33 = [v32 count] != 0;

        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_21:
          [*(a1 + 32) setLoaded:1];

LABEL_22:
          [*(a1 + 32) updateSearchingState];
          goto LABEL_23;
        }
      }

      else
      {
        v33 = 0;
      }

      v35 = [*(a1 + 32) tableView];
      v36 = [v35 numberOfRowsInSection:v33];

      if (v30 < v36)
      {
        v37 = [*(a1 + 32) tableView];
        v38 = [MEMORY[0x277CCAA70] indexPathForRow:v30 inSection:v33];
        [v37 scrollToRowAtIndexPath:v38 atScrollPosition:2 animated:0];
      }

      goto LABEL_21;
    }

LABEL_11:
    v27 = [*(a1 + 32) tableView];
    [v27 reloadData];

    goto LABEL_12;
  }

  v34 = [*(a1 + 32) filteredOutPrinters];
  [v34 addObject:*(a1 + 40)];

LABEL_23:
}

uint64_t __56__UIPrinterBrowserViewController_addPrinter_moreComing___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)removePrinter:(id)a3 moreGoing:(BOOL)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UIPrinterBrowserViewController_removePrinter_moreGoing___block_invoke;
  v7[3] = &unk_279A9BF78;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __58__UIPrinterBrowserViewController_removePrinter_moreGoing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iCloudPrinters];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v4 iCloudPrinters];
    [v10 removeObject:*(a1 + 40)];

    v11 = [*(a1 + 32) iCloudPrinters];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 0;
LABEL_8:
      v9 = [*(a1 + 32) tableView];
      v18 = MEMORY[0x277CBEA60];
      v19 = [MEMORY[0x277CCAA70] indexPathForRow:v3 inSection:v13];
      v20 = [v18 arrayWithObject:v19];
      [v9 deleteRowsAtIndexPaths:v20 withRowAnimation:0];

      goto LABEL_10;
    }

LABEL_9:
    v9 = [*(a1 + 32) tableView];
    [v9 reloadData];
    goto LABEL_10;
  }

  v5 = [v4 availablePrinters];
  v3 = [v5 indexOfObject:*(a1 + 40)];

  v6 = *(a1 + 32);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v6 availablePrinters];
    [v14 removeObject:*(a1 + 40)];

    v15 = [*(a1 + 32) iCloudPrinters];
    v13 = [v15 count] != 0;

    v16 = [*(a1 + 32) availablePrinters];
    v17 = [v16 count];

    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v7 = [v6 filteredOutPrinters];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) filteredOutPrinters];
  [v9 removeObject:*(a1 + 40)];
LABEL_10:

LABEL_11:
  v21 = *(a1 + 32);

  return [v21 updateSearchingState];
}

- (void)showCancelButton
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [(UIPrinterBrowserViewController *)self ownerPanelViewController];
  v4 = [v3 initWithBarButtonSystemItem:1 target:v6 action:sel_cancelPrinting];
  v5 = [(UIPrinterBrowserViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];
}

- (id)discoveredPrinterWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__UIPrinterBrowserViewController_discoveredPrinterWithUUID___block_invoke;
  v19[3] = &unk_279A9BFA0;
  v6 = v4;
  v20 = v6;
  v7 = [v5 indexOfObjectPassingTest:v19];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(UIPrinterBrowserViewController *)self availablePrinters];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __60__UIPrinterBrowserViewController_discoveredPrinterWithUUID___block_invoke_2;
    v17 = &unk_279A9BFA0;
    v18 = v6;
    v9 = [v8 indexOfObjectPassingTest:&v14];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v12 = [(UIPrinterBrowserViewController *)self availablePrinters:v14];
      v10 = [v12 objectAtIndex:v9];
    }

    v11 = v18;
  }

  else
  {
    v11 = [(UIPrinterBrowserViewController *)self iCloudPrinters];
    v10 = [v11 objectAtIndex:v7];
  }

  return v10;
}

uint64_t __60__UIPrinterBrowserViewController_discoveredPrinterWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __60__UIPrinterBrowserViewController_discoveredPrinterWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (UIPrinterBrowserOwner)ownerPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerPanelViewController);

  return WeakRetained;
}

@end