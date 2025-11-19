@interface UIPrintOptionsTableViewController
- (BOOL)canDismissPrintOptions;
- (BOOL)keyboardShowing;
- (UIPrintOptionsTableViewController)initWithTableView:(id)a3 printInfo:(id)a4 printPanelViewController:(id)a5;
- (UIPrintPanelViewController)printPanelViewController;
- (id)printOptionAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)hideGatheringPrinterInfo;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentPrinter:(id)a3;
- (void)setShowContactingPrinter:(BOOL)a3;
- (void)setShowingGatheringPrinterInfo:(BOOL)a3;
- (void)showGatheringPrinterInfo;
- (void)startPrinterWarningPoll;
- (void)stopPrinterWarningPolling;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePrintSectionList;
- (void)updateWarnings:(id)a3 forPrinter:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIPrintOptionsTableViewController

- (UIPrintOptionsTableViewController)initWithTableView:(id)a3 printInfo:(id)a4 printPanelViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41.receiver = self;
  v41.super_class = UIPrintOptionsTableViewController;
  v11 = [(UIPrintOptionsTableViewController *)&v41 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    [(UIPrintOptionsTableViewController *)v11 setPrintPanelViewController:v10];
    v13 = [v10 printInteractionController];
    v14 = [v13 appOptionsViewController];
    [(UIPrintOptionsTableViewController *)v12 setAppOptionsViewController:v14];

    [(UIPrintOptionsTableViewController *)v12 setPrintInfo:v9];
    [(UIPrintOptionsTableViewController *)v12 setTableView:v8];
    v15 = [UIPrintStandardOptionsSection alloc];
    v16 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v17 = [(UIPrintStandardOptionsSection *)v15 initWithPrintInfo:v16 printPanelViewController:v10];
    [(UIPrintOptionsTableViewController *)v12 setStandardOptionsSection:v17];

    v18 = [UIPrintMoreOptionsSection alloc];
    v19 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v20 = [(UIPrintMoreOptionsSection *)v18 initWithPrintInfo:v19 printPanelViewController:v10];
    [(UIPrintOptionsTableViewController *)v12 setMoreOptionsSection:v20];

    v21 = [UIPrintMediaQualitySection alloc];
    v22 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v23 = [(UIPrintMediaQualitySection *)v21 initWithPrintInfo:v22 printPanelViewController:v10];
    [(UIPrintOptionsTableViewController *)v12 setMediaQualitySection:v23];

    v24 = [UIPrintLayoutSection alloc];
    v25 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v26 = [(UIPrintLayoutSection *)v24 initWithPrintInfo:v25 printPanelViewController:v10];
    [(UIPrintOptionsTableViewController *)v12 setLayoutSection:v26];

    v27 = [UIFinishingOptionsSection alloc];
    v28 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v29 = [(UIFinishingOptionsSection *)v27 initWithPrintInfo:v28 printPanelViewController:v10];
    [(UIPrintOptionsTableViewController *)v12 setFinishingOptionsSection:v29];

    v30 = [(UIPrintOptionsTableViewController *)v12 appOptionsViewController];

    if (v30)
    {
      v31 = [UIPrintAppOptionsSection alloc];
      v32 = [(UIPrintOptionsTableViewController *)v12 printInfo];
      v33 = [(UIPrintOptionsTableViewController *)v12 appOptionsViewController];
      v34 = [(UIPrintAppOptionsSection *)v31 initWithPrintInfo:v32 printPanelViewController:v10 appOptionsViewController:v33];
      [(UIPrintOptionsTableViewController *)v12 setAppOptionsSection:v34];
    }

    [(UIPrintOptionsTableViewController *)v12 updatePrintSectionList];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionCell"];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionListCell"];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionViewCell"];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionPopupCell"];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [v8 registerClass:v35 forHeaderFooterViewReuseIdentifier:v37];

    [v8 setSectionFooterHeight:*MEMORY[0x277D76F30]];
    [v8 setEstimatedSectionFooterHeight:10.0];
    v38 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_dismissKeyboard];
    [v38 setCancelsTouchesInView:0];
    v39 = [(UIPrintOptionsTableViewController *)v12 view];
    [v39 addGestureRecognizer:v38];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(UIPrintOptionsTableViewController *)self currentPrinter];
  [v3 removeObserver:self forKeyPath:0x2871B0290];

  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 dealloc];
}

- (BOOL)keyboardShowing
{
  v2 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  v3 = [v2 keyboardShowing];

  return v3;
}

- (void)dismissKeyboard
{
  v2 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  [v2 dismissKeyboard];
}

- (void)updatePrintSectionList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__UIPrintOptionsTableViewController_updatePrintSectionList__block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__UIPrintOptionsTableViewController_updatePrintSectionList__block_invoke(uint64_t a1)
{
  v28 = [MEMORY[0x277CBEB18] array];
  v2 = [*(a1 + 32) standardOptionsSection];
  v3 = [v2 updatePrintOptionsList];

  v4 = [*(a1 + 32) moreOptionsSection];
  v5 = [v4 updatePrintOptionsList];

  v6 = [*(a1 + 32) appOptionsSection];

  v7 = [*(a1 + 32) printOptionSections];
  v8 = [*(a1 + 32) mediaQualitySection];
  v9 = [v7 indexOfObject:v8];
  v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;

  v11 = [*(a1 + 32) mediaQualitySection];
  LODWORD(v8) = [v11 shouldShow];

  if (v8)
  {
    v12 = [*(a1 + 32) mediaQualitySection];
    [v28 addObject:v12];
  }

  else
  {
    v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = [*(a1 + 32) printOptionSections];
  v14 = [*(a1 + 32) layoutSection];
  v15 = [v13 indexOfObject:v14];
  v16 = v15 == 0x7FFFFFFFFFFFFFFFLL;

  v17 = [*(a1 + 32) layoutSection];
  LODWORD(v14) = [v17 shouldShow];

  if (v14)
  {
    v18 = [*(a1 + 32) layoutSection];
    [v28 addObject:v18];
  }

  else
  {
    v16 = v15 != 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = (v16 || v10) | (v6 != 0) | v5 | v3;
  v20 = [*(a1 + 32) printOptionSections];
  v21 = [*(a1 + 32) finishingOptionsSection];
  v22 = [v20 indexOfObject:v21];

  v23 = [*(a1 + 32) finishingOptionsSection];
  LODWORD(v21) = [v23 shouldShow];

  if (v21)
  {
    v24 = v22 == 0x7FFFFFFFFFFFFFFFLL;
    v25 = [*(a1 + 32) finishingOptionsSection];
    [v28 addObject:v25];

    v26 = v24 | v19;
  }

  else
  {
    v26 = (v22 != 0x7FFFFFFFFFFFFFFFLL) | v19;
  }

  [*(a1 + 32) setPrintOptionSections:v28];
  if (v26)
  {
    v27 = [*(a1 + 32) tableView];
    [v27 reloadData];
  }
}

- (BOOL)canDismissPrintOptions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
  v4 = [v3 canDismiss];

  if (!v4)
  {
    return 0;
  }

  v5 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  v6 = [v5 canDismiss];

  if (!v6)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(UIPrintOptionsTableViewController *)self printOptionSections];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v14 + 1) + 8 * i) canDismiss])
        {
          v12 = 0;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (void)setCurrentPrinter:(id)a3
{
  v4 = a3;
  [(UIPrinter *)self->_currentPrinter removeObserver:self forKeyPath:0x2871B0290];
  currentPrinter = self->_currentPrinter;
  self->_currentPrinter = v4;
  v6 = v4;

  [(UIPrinter *)self->_currentPrinter addObserver:self forKeyPath:0x2871B0290 options:0 context:0];
  [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
  [(UIPrintOptionsTableViewController *)self setPrinterWarnings:0];
  [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];

  [(UIPrintOptionsTableViewController *)self updatePrintSectionList];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{0x2871B0290, a4, a5, a6}])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__UIPrintOptionsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(UIPrintOptionsTableViewController *)self appOptionsSection];

  if (v4)
  {
    [(UIPrintOptionsTableViewController *)self setAppOptionsSectionNum:2];
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(UIPrintOptionsTableViewController *)self printOptionSections];
  v7 = [v6 count];

  if (v7)
  {
    [(UIPrintOptionsTableViewController *)self setPrintOptionsSectionNum:v5++];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
    goto LABEL_5;
  }

  if (!a4)
  {
    v7 = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
LABEL_5:
    v8 = v7;
    v9 = [v7 printOptions];
    v10 = [v9 count];

LABEL_10:
    goto LABEL_11;
  }

  if ([(UIPrintOptionsTableViewController *)self appOptionsSectionNum]!= a4 || ([(UIPrintOptionsTableViewController *)self appOptionsSection], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v8 = [(UIPrintOptionsTableViewController *)self printOptionSections];
    v10 = [v8 count];
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  v8 = [(UIPrintOptionsTableViewController *)self printerWarnings];
  if (v8)
  {
    v9 = v8;
    v10 = [(UIPrintOptionsTableViewController *)self printerWarnings];
    if ([v10 length])
    {

LABEL_9:
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v13];

      if ([(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"Gathering printer information" value:@"Gathering printer information" table:@"Localizable"];
        [v7 setMessageText:v15];
      }

      else
      {
        v14 = [(UIPrintOptionsTableViewController *)self printerWarnings];
        [v7 setMessageText:v14];
      }

      [v7 setSpinSpinner:{-[UIPrintOptionsTableViewController showingGatheringPrinterInfo](self, "showingGatheringPrinterInfo")}];
      goto LABEL_13;
    }

    v11 = [(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if ([(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
  {
    goto LABEL_9;
  }

LABEL_2:
  v7 = 0;
LABEL_13:

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [v7 section];

  if (v9 == 1)
  {
    v10 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
    goto LABEL_5;
  }

  if (!v9)
  {
    v10 = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
LABEL_5:
    v11 = v10;
    v12 = [v10 printOptions];
    v13 = [v12 objectAtIndex:v8];

    v14 = [v13 createPrintOptionTableViewCell];
    goto LABEL_13;
  }

  if (v9 == [(UIPrintOptionsTableViewController *)self appOptionsSectionNum]&& ([(UIPrintOptionsTableViewController *)self appOptionsSection], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v13 = [(UIPrintOptionsTableViewController *)self appOptionsSection];
  }

  else
  {
    v16 = [(UIPrintOptionsTableViewController *)self printOptionSections];
    v13 = [v16 objectAtIndex:v8];
  }

  v14 = [v6 dequeueReusableCellWithIdentifier:@"PrintSectionCell"];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PrintSectionCell"];
  }

  v17 = [MEMORY[0x277D756E0] cellConfiguration];
  v18 = [v13 title];
  [v17 setText:v18];

  v19 = [v13 summaryString];
  [v17 setSecondaryText:v19];

  v20 = [MEMORY[0x277D75348] secondaryLabelColor];
  v21 = [v17 secondaryTextProperties];
  [v21 setColor:v20];

  [v14 setContentConfiguration:v17];
  v22 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v14 setTintColor:v22];

  [v13 setTableViewCell:v14];
  [v14 setAccessoryType:1];
  [v14 setSelectionStyle:3];

LABEL_13:

  return v14;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v8 viewWillAppear:a3];
  v4 = [(UIPrintOptionsTableViewController *)self printPanelViewController];
  v5 = [(UIPrintOptionsTableViewController *)self navigationItem];
  [v4 addPrintShareButtonsToNavItem:v5];

  v6 = [(UIPrintOptionsTableViewController *)self printPanelViewController];
  v7 = [(UIPrintOptionsTableViewController *)self navigationItem];
  [v6 addCanelButtonToNavItem:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 viewDidAppear:a3];
  [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 viewDidDisappear:a3];
  [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
}

- (id)printOptionAtIndexPath:(id)a3
{
  v4 = a3;
  if (![v4 section])
  {
    v5 = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
    goto LABEL_5;
  }

  if ([v4 section] == 1)
  {
    v5 = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
LABEL_5:
    v6 = v5;
    v7 = [v5 printOptions];
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "row")}];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  if ([v10 section] > 1)
  {
    v6 = [v10 section];
    if (v6 == [(UIPrintOptionsTableViewController *)self appOptionsSectionNum]&& ([(UIPrintOptionsTableViewController *)self appOptionsSection], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [(UIPrintOptionsTableViewController *)self appOptionsSection];
      v5 = v8;
    }

    else
    {
      v9 = [(UIPrintOptionsTableViewController *)self printOptionSections];
      v5 = [v9 objectAtIndex:{objc_msgSend(v10, "row")}];

      v8 = v5;
    }

    [v8 didSelectPrintOptionSection];
  }

  else
  {
    v5 = [(UIPrintOptionsTableViewController *)self printOptionAtIndexPath:v10];
    [v5 didSelectPrintOption];
  }
}

- (void)showGatheringPrinterInfo
{
  if ([(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
  {
    v4 = [(UIPrintOptionsTableViewController *)self tableView];
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v4 _reloadSectionHeaderFooters:v3 withRowAnimation:100];
  }
}

- (void)hideGatheringPrinterInfo
{
  if (![(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
  {
    v4 = [(UIPrintOptionsTableViewController *)self tableView];
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v4 _reloadSectionHeaderFooters:v3 withRowAnimation:100];
  }
}

- (void)setShowingGatheringPrinterInfo:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_showGatheringPrinterInfo object:0];
  [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideGatheringPrinterInfo object:0];
  if (self->_showingGatheringPrinterInfo != v3)
  {
    if (v3)
    {
      self->_showingGatheringPrinterInfo = 1;
      v5 = v8;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v6 = __68__UIPrintOptionsTableViewController_setShowingGatheringPrinterInfo___block_invoke;
    }

    else
    {
      self->_showingGatheringPrinterInfo = 0;
      v5 = v7;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v6 = __68__UIPrintOptionsTableViewController_setShowingGatheringPrinterInfo___block_invoke_2;
    }

    v5[2] = v6;
    v5[3] = &unk_279A9BEE0;
    v5[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)setShowContactingPrinter:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(UIPrintOptionsTableViewController *)self setPrinterWarnings:0];
    [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
  }

  else
  {
    [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];
  }

  v5 = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
  [v5 setShowContactingPrinter:v3];
}

- (void)updateWarnings:(id)a3 forPrinter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPrintOptionsTableViewController *)self currentPrinter];

  if (v8 == v7)
  {
    v9 = [(UIPrintOptionsTableViewController *)self printerWarnings];
    v10 = [v9 isEqual:v6];

    if ((v10 & 1) == 0)
    {
      [(UIPrintOptionsTableViewController *)self setPrinterWarnings:v6];
      if (![(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
      {
        if (pthread_main_np() == 1)
        {
          v11 = [(UIPrintOptionsTableViewController *)self tableView];
          v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
          [v11 reloadSections:v12 withRowAnimation:100];
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__UIPrintOptionsTableViewController_updateWarnings_forPrinter___block_invoke;
          block[3] = &unk_279A9BEE0;
          block[4] = self;
          dispatch_sync(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }

  else
  {
  }
}

void __63__UIPrintOptionsTableViewController_updateWarnings_forPrinter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v2 reloadSections:v1 withRowAnimation:100];
}

- (void)startPrinterWarningPoll
{
  v3 = [(UIPrintOptionsTableViewController *)self printerAttributesService];

  if (!v3)
  {
    v4 = +[UIPrinterAttributesService instance];
    [(UIPrintOptionsTableViewController *)self setPrinterAttributesService:v4];
  }

  objc_initWeak(&location, self);
  v5 = [(UIPrintOptionsTableViewController *)self currentPrinter];
  printerAttributesService = self->_printerAttributesService;
  v7 = [v5 pkPrinter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__UIPrintOptionsTableViewController_startPrinterWarningPoll__block_invoke;
  v9[3] = &unk_279A9CD90;
  objc_copyWeak(&v11, &location);
  v8 = v5;
  v10 = v8;
  [(UIPrinterAttributesService *)printerAttributesService startPollForPrinterWarningStatus:v7 completionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__UIPrintOptionsTableViewController_startPrinterWarningPoll__block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained updateWarnings:v4 forPrinter:*(a1 + 32)];
  }
}

- (void)stopPrinterWarningPolling
{
  v3 = [(UIPrintOptionsTableViewController *)self printerAttributesService];

  if (v3)
  {
    v4 = [(UIPrintOptionsTableViewController *)self printerAttributesService];
    [v4 stopPrinterWarningPolling];
  }
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end