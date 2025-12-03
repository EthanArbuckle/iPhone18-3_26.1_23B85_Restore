@interface UIPrintOptionsTableViewController
- (BOOL)canDismissPrintOptions;
- (BOOL)keyboardShowing;
- (UIPrintOptionsTableViewController)initWithTableView:(id)view printInfo:(id)info printPanelViewController:(id)controller;
- (UIPrintPanelViewController)printPanelViewController;
- (id)printOptionAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)hideGatheringPrinterInfo;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentPrinter:(id)printer;
- (void)setShowContactingPrinter:(BOOL)printer;
- (void)setShowingGatheringPrinterInfo:(BOOL)info;
- (void)showGatheringPrinterInfo;
- (void)startPrinterWarningPoll;
- (void)stopPrinterWarningPolling;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updatePrintSectionList;
- (void)updateWarnings:(id)warnings forPrinter:(id)printer;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIPrintOptionsTableViewController

- (UIPrintOptionsTableViewController)initWithTableView:(id)view printInfo:(id)info printPanelViewController:(id)controller
{
  viewCopy = view;
  infoCopy = info;
  controllerCopy = controller;
  v41.receiver = self;
  v41.super_class = UIPrintOptionsTableViewController;
  v11 = [(UIPrintOptionsTableViewController *)&v41 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    [(UIPrintOptionsTableViewController *)v11 setPrintPanelViewController:controllerCopy];
    printInteractionController = [controllerCopy printInteractionController];
    appOptionsViewController = [printInteractionController appOptionsViewController];
    [(UIPrintOptionsTableViewController *)v12 setAppOptionsViewController:appOptionsViewController];

    [(UIPrintOptionsTableViewController *)v12 setPrintInfo:infoCopy];
    [(UIPrintOptionsTableViewController *)v12 setTableView:viewCopy];
    v15 = [UIPrintStandardOptionsSection alloc];
    printInfo = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v17 = [(UIPrintStandardOptionsSection *)v15 initWithPrintInfo:printInfo printPanelViewController:controllerCopy];
    [(UIPrintOptionsTableViewController *)v12 setStandardOptionsSection:v17];

    v18 = [UIPrintMoreOptionsSection alloc];
    printInfo2 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v20 = [(UIPrintMoreOptionsSection *)v18 initWithPrintInfo:printInfo2 printPanelViewController:controllerCopy];
    [(UIPrintOptionsTableViewController *)v12 setMoreOptionsSection:v20];

    v21 = [UIPrintMediaQualitySection alloc];
    printInfo3 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v23 = [(UIPrintMediaQualitySection *)v21 initWithPrintInfo:printInfo3 printPanelViewController:controllerCopy];
    [(UIPrintOptionsTableViewController *)v12 setMediaQualitySection:v23];

    v24 = [UIPrintLayoutSection alloc];
    printInfo4 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v26 = [(UIPrintLayoutSection *)v24 initWithPrintInfo:printInfo4 printPanelViewController:controllerCopy];
    [(UIPrintOptionsTableViewController *)v12 setLayoutSection:v26];

    v27 = [UIFinishingOptionsSection alloc];
    printInfo5 = [(UIPrintOptionsTableViewController *)v12 printInfo];
    v29 = [(UIFinishingOptionsSection *)v27 initWithPrintInfo:printInfo5 printPanelViewController:controllerCopy];
    [(UIPrintOptionsTableViewController *)v12 setFinishingOptionsSection:v29];

    appOptionsViewController2 = [(UIPrintOptionsTableViewController *)v12 appOptionsViewController];

    if (appOptionsViewController2)
    {
      v31 = [UIPrintAppOptionsSection alloc];
      printInfo6 = [(UIPrintOptionsTableViewController *)v12 printInfo];
      appOptionsViewController3 = [(UIPrintOptionsTableViewController *)v12 appOptionsViewController];
      v34 = [(UIPrintAppOptionsSection *)v31 initWithPrintInfo:printInfo6 printPanelViewController:controllerCopy appOptionsViewController:appOptionsViewController3];
      [(UIPrintOptionsTableViewController *)v12 setAppOptionsSection:v34];
    }

    [(UIPrintOptionsTableViewController *)v12 updatePrintSectionList];
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionCell"];
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionListCell"];
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionViewCell"];
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"UIPrintOptionPopupCell"];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [viewCopy registerClass:v35 forHeaderFooterViewReuseIdentifier:v37];

    [viewCopy setSectionFooterHeight:*MEMORY[0x277D76F30]];
    [viewCopy setEstimatedSectionFooterHeight:10.0];
    v38 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_dismissKeyboard];
    [v38 setCancelsTouchesInView:0];
    view = [(UIPrintOptionsTableViewController *)v12 view];
    [view addGestureRecognizer:v38];
  }

  return v12;
}

- (void)dealloc
{
  currentPrinter = [(UIPrintOptionsTableViewController *)self currentPrinter];
  [currentPrinter removeObserver:self forKeyPath:0x2871B0290];

  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 dealloc];
}

- (BOOL)keyboardShowing
{
  moreOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  keyboardShowing = [moreOptionsSection keyboardShowing];

  return keyboardShowing;
}

- (void)dismissKeyboard
{
  moreOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  [moreOptionsSection dismissKeyboard];
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
  standardOptionsSection = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
  canDismiss = [standardOptionsSection canDismiss];

  if (!canDismiss)
  {
    return 0;
  }

  moreOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
  canDismiss2 = [moreOptionsSection canDismiss];

  if (!canDismiss2)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  printOptionSections = [(UIPrintOptionsTableViewController *)self printOptionSections];
  v8 = [printOptionSections countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(printOptionSections);
        }

        if (![*(*(&v14 + 1) + 8 * i) canDismiss])
        {
          v12 = 0;
          goto LABEL_14;
        }
      }

      v9 = [printOptionSections countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setCurrentPrinter:(id)printer
{
  printerCopy = printer;
  [(UIPrinter *)self->_currentPrinter removeObserver:self forKeyPath:0x2871B0290];
  currentPrinter = self->_currentPrinter;
  self->_currentPrinter = printerCopy;
  v6 = printerCopy;

  [(UIPrinter *)self->_currentPrinter addObserver:self forKeyPath:0x2871B0290 options:0 context:0];
  [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
  [(UIPrintOptionsTableViewController *)self setPrinterWarnings:0];
  [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];

  [(UIPrintOptionsTableViewController *)self updatePrintSectionList];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{0x2871B0290, object, change, context}])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__UIPrintOptionsTableViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  appOptionsSection = [(UIPrintOptionsTableViewController *)self appOptionsSection];

  if (appOptionsSection)
  {
    [(UIPrintOptionsTableViewController *)self setAppOptionsSectionNum:2];
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  printOptionSections = [(UIPrintOptionsTableViewController *)self printOptionSections];
  v7 = [printOptionSections count];

  if (v7)
  {
    [(UIPrintOptionsTableViewController *)self setPrintOptionsSectionNum:v5++];
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    moreOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
    goto LABEL_5;
  }

  if (!section)
  {
    moreOptionsSection = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
LABEL_5:
    printOptionSections = moreOptionsSection;
    printOptions = [moreOptionsSection printOptions];
    v10 = [printOptions count];

LABEL_10:
    goto LABEL_11;
  }

  if ([(UIPrintOptionsTableViewController *)self appOptionsSectionNum]!= section || ([(UIPrintOptionsTableViewController *)self appOptionsSection], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    printOptionSections = [(UIPrintOptionsTableViewController *)self printOptionSections];
    v10 = [printOptionSections count];
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    goto LABEL_2;
  }

  printerWarnings = [(UIPrintOptionsTableViewController *)self printerWarnings];
  if (printerWarnings)
  {
    v9 = printerWarnings;
    printerWarnings2 = [(UIPrintOptionsTableViewController *)self printerWarnings];
    if ([printerWarnings2 length])
    {

LABEL_9:
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v13];

      if ([(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
      {
        printerWarnings3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [printerWarnings3 localizedStringForKey:@"Gathering printer information" value:@"Gathering printer information" table:@"Localizable"];
        [v7 setMessageText:v15];
      }

      else
      {
        printerWarnings3 = [(UIPrintOptionsTableViewController *)self printerWarnings];
        [v7 setMessageText:printerWarnings3];
      }

      [v7 setSpinSpinner:{-[UIPrintOptionsTableViewController showingGatheringPrinterInfo](self, "showingGatheringPrinterInfo")}];
      goto LABEL_13;
    }

    showingGatheringPrinterInfo = [(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo];

    if (showingGatheringPrinterInfo)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1)
  {
    moreOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
    goto LABEL_5;
  }

  if (!section)
  {
    moreOptionsSection = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
LABEL_5:
    v11 = moreOptionsSection;
    printOptions = [moreOptionsSection printOptions];
    appOptionsSection = [printOptions objectAtIndex:v8];

    createPrintOptionTableViewCell = [appOptionsSection createPrintOptionTableViewCell];
    goto LABEL_13;
  }

  if (section == [(UIPrintOptionsTableViewController *)self appOptionsSectionNum]&& ([(UIPrintOptionsTableViewController *)self appOptionsSection], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    appOptionsSection = [(UIPrintOptionsTableViewController *)self appOptionsSection];
  }

  else
  {
    printOptionSections = [(UIPrintOptionsTableViewController *)self printOptionSections];
    appOptionsSection = [printOptionSections objectAtIndex:v8];
  }

  createPrintOptionTableViewCell = [viewCopy dequeueReusableCellWithIdentifier:@"PrintSectionCell"];
  if (!createPrintOptionTableViewCell)
  {
    createPrintOptionTableViewCell = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PrintSectionCell"];
  }

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  title = [appOptionsSection title];
  [cellConfiguration setText:title];

  summaryString = [appOptionsSection summaryString];
  [cellConfiguration setSecondaryText:summaryString];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [createPrintOptionTableViewCell setContentConfiguration:cellConfiguration];
  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [createPrintOptionTableViewCell setTintColor:secondaryLabelColor2];

  [appOptionsSection setTableViewCell:createPrintOptionTableViewCell];
  [createPrintOptionTableViewCell setAccessoryType:1];
  [createPrintOptionTableViewCell setSelectionStyle:3];

LABEL_13:

  return createPrintOptionTableViewCell;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v8 viewWillAppear:appear];
  printPanelViewController = [(UIPrintOptionsTableViewController *)self printPanelViewController];
  navigationItem = [(UIPrintOptionsTableViewController *)self navigationItem];
  [printPanelViewController addPrintShareButtonsToNavItem:navigationItem];

  printPanelViewController2 = [(UIPrintOptionsTableViewController *)self printPanelViewController];
  navigationItem2 = [(UIPrintOptionsTableViewController *)self navigationItem];
  [printPanelViewController2 addCanelButtonToNavItem:navigationItem2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 viewDidAppear:appear];
  [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = UIPrintOptionsTableViewController;
  [(UIPrintOptionsTableViewController *)&v4 viewDidDisappear:disappear];
  [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
}

- (id)printOptionAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    standardOptionsSection = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
    goto LABEL_5;
  }

  if ([pathCopy section] == 1)
  {
    standardOptionsSection = [(UIPrintOptionsTableViewController *)self moreOptionsSection];
LABEL_5:
    v6 = standardOptionsSection;
    printOptions = [standardOptionsSection printOptions];
    v8 = [printOptions objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] > 1)
  {
    section = [pathCopy section];
    if (section == [(UIPrintOptionsTableViewController *)self appOptionsSectionNum]&& ([(UIPrintOptionsTableViewController *)self appOptionsSection], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      appOptionsSection = [(UIPrintOptionsTableViewController *)self appOptionsSection];
      v5 = appOptionsSection;
    }

    else
    {
      printOptionSections = [(UIPrintOptionsTableViewController *)self printOptionSections];
      v5 = [printOptionSections objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      appOptionsSection = v5;
    }

    [appOptionsSection didSelectPrintOptionSection];
  }

  else
  {
    v5 = [(UIPrintOptionsTableViewController *)self printOptionAtIndexPath:pathCopy];
    [v5 didSelectPrintOption];
  }
}

- (void)showGatheringPrinterInfo
{
  if ([(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
  {
    tableView = [(UIPrintOptionsTableViewController *)self tableView];
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [tableView _reloadSectionHeaderFooters:v3 withRowAnimation:100];
  }
}

- (void)hideGatheringPrinterInfo
{
  if (![(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
  {
    tableView = [(UIPrintOptionsTableViewController *)self tableView];
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [tableView _reloadSectionHeaderFooters:v3 withRowAnimation:100];
  }
}

- (void)setShowingGatheringPrinterInfo:(BOOL)info
{
  infoCopy = info;
  [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_showGatheringPrinterInfo object:0];
  [MEMORY[0x277CBEB88] cancelPreviousPerformRequestsWithTarget:self selector:sel_hideGatheringPrinterInfo object:0];
  if (self->_showingGatheringPrinterInfo != infoCopy)
  {
    if (infoCopy)
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

- (void)setShowContactingPrinter:(BOOL)printer
{
  printerCopy = printer;
  if (printer)
  {
    [(UIPrintOptionsTableViewController *)self setPrinterWarnings:0];
    [(UIPrintOptionsTableViewController *)self stopPrinterWarningPolling];
  }

  else
  {
    [(UIPrintOptionsTableViewController *)self startPrinterWarningPoll];
  }

  standardOptionsSection = [(UIPrintOptionsTableViewController *)self standardOptionsSection];
  [standardOptionsSection setShowContactingPrinter:printerCopy];
}

- (void)updateWarnings:(id)warnings forPrinter:(id)printer
{
  warningsCopy = warnings;
  printerCopy = printer;
  currentPrinter = [(UIPrintOptionsTableViewController *)self currentPrinter];

  if (currentPrinter == printerCopy)
  {
    printerWarnings = [(UIPrintOptionsTableViewController *)self printerWarnings];
    v10 = [printerWarnings isEqual:warningsCopy];

    if ((v10 & 1) == 0)
    {
      [(UIPrintOptionsTableViewController *)self setPrinterWarnings:warningsCopy];
      if (![(UIPrintOptionsTableViewController *)self showingGatheringPrinterInfo])
      {
        if (pthread_main_np() == 1)
        {
          tableView = [(UIPrintOptionsTableViewController *)self tableView];
          v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
          [tableView reloadSections:v12 withRowAnimation:100];
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
  printerAttributesService = [(UIPrintOptionsTableViewController *)self printerAttributesService];

  if (!printerAttributesService)
  {
    v4 = +[UIPrinterAttributesService instance];
    [(UIPrintOptionsTableViewController *)self setPrinterAttributesService:v4];
  }

  objc_initWeak(&location, self);
  currentPrinter = [(UIPrintOptionsTableViewController *)self currentPrinter];
  printerAttributesService = self->_printerAttributesService;
  pkPrinter = [currentPrinter pkPrinter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__UIPrintOptionsTableViewController_startPrinterWarningPoll__block_invoke;
  v9[3] = &unk_279A9CD90;
  objc_copyWeak(&v11, &location);
  v8 = currentPrinter;
  v10 = v8;
  [(UIPrinterAttributesService *)printerAttributesService startPollForPrinterWarningStatus:pkPrinter completionHandler:v9];

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
  printerAttributesService = [(UIPrintOptionsTableViewController *)self printerAttributesService];

  if (printerAttributesService)
  {
    printerAttributesService2 = [(UIPrintOptionsTableViewController *)self printerAttributesService];
    [printerAttributesService2 stopPrinterWarningPolling];
  }
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

@end