@interface UIPrintPanelViewController
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)shouldShowDuplex;
- (BOOL)shouldShowLayout;
- (BOOL)shouldShowOrientation;
- (BOOL)shouldShowPageRange;
- (BOOL)shouldShowScaling;
- (BOOL)showingVerticalPreview;
- (CGSize)preferredSizeForScene:(id)scene;
- (UIEdgeInsets)contentInsetForPreviewWithHeight:(double)height;
- (UIPrintPanelViewController)initWithPrintInterationController:(id)controller inParentController:(id)parentController usingSplitView:(BOOL)view;
- (UIViewController)parentController;
- (id)controlTintColor;
- (id)createShareablePDFFileURL:(id)l;
- (id)keyCommands;
- (id)shareableURLForPreviewing;
- (void)_presentInParentAnimated:(BOOL)animated hostingScene:(id)scene;
- (void)addCanelButtonToNavItem:(id)item;
- (void)addPrintShareButtonsToNavItem:(id)item;
- (void)backButtonPressed:(id)pressed;
- (void)cancelQuickLookPDFGeneration;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)dismissPrintPanelWithAction:(int64_t)action animated:(BOOL)animated completionHandler:(id)handler;
- (void)generateQuickLookPDFWithCompletionHandler:(id)handler;
- (void)hideGeneratingPDFProgress:(id)progress;
- (void)loadView;
- (void)lookupLastUsedPrinter;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preferredContentSizeCategoryChanged;
- (void)presentPrintPanelAnimated:(BOOL)animated hostingScene:(id)scene;
- (void)presentPrintPanelFromBarButtonItem:(id)item animated:(BOOL)animated;
- (void)presentPrintPanelFromRect:(CGRect)rect inView:(id)view animated:(BOOL)animated;
- (void)printButtonPressed:(id)pressed;
- (void)printNavigationConrollerDidDismiss;
- (void)printPanelDidDisappear;
- (void)removeShareablePDFFiles;
- (void)resetPreviewPages;
- (void)setPrinter:(id)printer;
- (void)shareButtonPress:(id)press;
- (void)showCompactPreview;
- (void)showGeneratingPDFProgressPanel;
- (void)showSharePanelForPDFURL:(id)l;
- (void)showsSidebarPreview;
- (void)splitViewController:(id)controller didHideColumn:(int64_t)column;
- (void)splitViewController:(id)controller didShowColumn:(int64_t)column;
- (void)startPrinting;
- (void)updatePageCount;
- (void)updatePageRange;
- (void)updatePreviewLayoutConstraints;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIPrintPanelViewController

- (UIPrintPanelViewController)initWithPrintInterationController:(id)controller inParentController:(id)parentController usingSplitView:(BOOL)view
{
  viewCopy = view;
  v44[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  parentControllerCopy = parentController;
  v43.receiver = self;
  v43.super_class = UIPrintPanelViewController;
  v11 = [(UIPrintPanelViewController *)&v43 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_printInteractionController, controller);
    objc_storeWeak(&v12->_parentController, parentControllerCopy);
    if (viewCopy)
    {
      v13 = _UISolariumEnabled();
    }

    else
    {
      v13 = 0;
    }

    [(UIPrintPanelViewController *)v12 setUsingSplitView:v13];
    [(UIPrintPanelViewController *)v12 setModalPresentationStyle:2];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"Print" value:@"Print" table:@"Localizable"];
    [(UIPrintPanelViewController *)v12 setTitle:v15];

    _currentPrintInfo = [controllerCopy _currentPrintInfo];
    [(UIPrintPanelViewController *)v12 setPrintInfo:_currentPrintInfo];

    printInteractionController = [(UIPrintPanelViewController *)v12 printInteractionController];
    paper = [printInteractionController paper];
    printInfo = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo setPrintPaper:paper];

    printInteractionController2 = [(UIPrintPanelViewController *)v12 printInteractionController];
    _canShowAnnotations = [printInteractionController2 _canShowAnnotations];
    printInfo2 = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo2 setPdfAnnotationsAvailable:_canShowAnnotations];

    printInteractionController3 = [(UIPrintPanelViewController *)v12 printInteractionController];
    [printInteractionController3 setShowsPaperSelectionForLoadedPapers:1];

    printInfo3 = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo3 addObserver:v12 forKeyPath:0x2871AF150 options:0 context:0];

    printInfo4 = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo4 addObserver:v12 forKeyPath:0x2871AF110 options:0 context:0];

    printInfo5 = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo5 addObserver:v12 forKeyPath:0x2871AF1B0 options:0 context:0];

    printInfo6 = [(UIPrintPanelViewController *)v12 printInfo];
    [printInfo6 addObserver:v12 forKeyPath:0x2871AF290 options:0 context:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    _UIPrinterInfoCancelRequests();
    printInteractionController4 = [(UIPrintPanelViewController *)v12 printInteractionController];
    _currentPrintInfo2 = [printInteractionController4 _currentPrintInfo];
    printerID = [_currentPrintInfo2 printerID];
    LOBYTE(printInfo2) = printerID == 0;

    if (printInfo2)
    {
      [(UIPrintPanelViewController *)v12 lookupLastUsedPrinter];
    }

    else
    {
      v32 = MEMORY[0x277D410A8];
      _currentPrintInfo3 = [controllerCopy _currentPrintInfo];
      printerID2 = [_currentPrintInfo3 printerID];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __98__UIPrintPanelViewController_initWithPrintInterationController_inParentController_usingSplitView___block_invoke;
      v41[3] = &unk_279A9BE90;
      v42 = v12;
      [v32 printerWithName:printerID2 discoveryTimeout:v41 completionHandler:30.0];
    }

    objc_initWeak(&location, v12);
    v44[0] = objc_opt_class();
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __98__UIPrintPanelViewController_initWithPrintInterationController_inParentController_usingSplitView___block_invoke_2;
    v38[3] = &unk_279A9C470;
    objc_copyWeak(&v39, &location);
    v36 = [(UIPrintPanelViewController *)v12 registerForTraitChanges:v35 withHandler:v38];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __98__UIPrintPanelViewController_initWithPrintInterationController_inParentController_usingSplitView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 printInfo];
  v4 = [v5 currentPrinter];
  [v4 setPkPrinter:v3];
}

void __98__UIPrintPanelViewController_initWithPrintInterationController_inParentController_usingSplitView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preferredContentSizeCategoryChanged];
}

- (void)dealloc
{
  updatePageCountThread = [(UIPrintPanelViewController *)self updatePageCountThread];
  [updatePageCountThread cancel];

  printInfo = [(UIPrintPanelViewController *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF150];

  printInfo2 = [(UIPrintPanelViewController *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF110];

  printInfo3 = [(UIPrintPanelViewController *)self printInfo];
  [printInfo3 removeObserver:self forKeyPath:0x2871AF1B0];

  printInfo4 = [(UIPrintPanelViewController *)self printInfo];
  [printInfo4 removeObserver:self forKeyPath:0x2871AF290];

  view = [(UIPrintPanelViewController *)self view];
  [view removeObserver:self forKeyPath:@"frame"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIPrintPanelViewController *)self removeShareablePDFFiles];
  v10.receiver = self;
  v10.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v10 dealloc];
}

- (BOOL)isKindOfClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  v5 = [(UIPrintPanelViewController *)&v7 isKindOfClass:?];
  if (objc_opt_class() == class)
  {
    return [(UIPrintPanelViewController *)self usingSplitView];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ([pathCopy isEqualToString:0x2871AF150])
  {
    v8 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
LABEL_11:
    v8[2] = v9;
    v8[3] = &unk_279A9BEE0;
    v8[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
    goto LABEL_12;
  }

  if ([pathCopy isEqualToString:0x2871AF290])
  {
    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:0x2871AF1B0])
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:0x2871AF110])
  {
    v8 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:@"frame"])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"UIPrintPanelDidChangeSizeNotification" object:0 userInfo:0];

    v8 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_5;
    goto LABEL_11;
  }

LABEL_12:
}

void __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 printInfo];
  v2 = [v3 currentPrinter];
  [v1 setPrinter:v2];
}

void __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) printOptionsTableViewController];
  [v1 updatePrintSectionList];
}

void __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsUpdateConstraints];
}

- (void)loadView
{
  v119[4] = *MEMORY[0x277D85DE8];
  v116.receiver = self;
  v116.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v116 loadView];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v4, v7, v6}];
  [(UIPrintPanelViewController *)self setView:v8];

  v9 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:2 style:{v5, v4, v7, v6}];
  [(UIPrintPanelViewController *)self setPrintOptionsTableView:v9];

  v10 = [UIPrintOptionsTableViewController alloc];
  printOptionsTableView = [(UIPrintPanelViewController *)self printOptionsTableView];
  printInfo = [(UIPrintPanelViewController *)self printInfo];
  v13 = [(UIPrintOptionsTableViewController *)v10 initWithTableView:printOptionsTableView printInfo:printInfo printPanelViewController:self];
  [(UIPrintPanelViewController *)self setPrintOptionsTableViewController:v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Options" value:@"Options" table:@"Localizable"];
  printOptionsTableViewController = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [printOptionsTableViewController setTitle:v15];

  v17 = [UIPrintPanelNavigationController alloc];
  printOptionsTableViewController2 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  v19 = [(UIPrintPanelNavigationController *)v17 initWithRootViewController:printOptionsTableViewController2];
  [(UIPrintPanelViewController *)self setPrintOptionsNavController:v19];

  if ([(UIPrintPanelViewController *)self usingSplitView])
  {
    v20 = [[UIPrintPreviewContainerView alloc] initWithFrame:v5, v4, v7, v6];
    [(UIPrintPanelViewController *)self setSidebarPreviewContainerView:v20];

    v21 = [UIPrintPreviewViewController alloc];
    sidebarPreviewContainerView = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v23 = [(UIPrintPreviewViewController *)v21 initWithPrintPanelViewController:self useCompactPreview:0 withContainerView:sidebarPreviewContainerView];
    [(UIPrintPanelViewController *)self setSidebarPreviewViewController:v23];

    v24 = [objc_alloc(MEMORY[0x277D75A50]) initWithStyle:1];
    [(UIPrintPanelViewController *)self setSplitViewController:v24];

    view = [(UIPrintPanelViewController *)self view];
    splitViewController = [(UIPrintPanelViewController *)self splitViewController];
    view2 = [splitViewController view];
    [view addSubview:view2];

    splitViewController2 = [(UIPrintPanelViewController *)self splitViewController];
    view3 = [splitViewController2 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v92 = MEMORY[0x277CCAAD0];
    splitViewController3 = [(UIPrintPanelViewController *)self splitViewController];
    view4 = [splitViewController3 view];
    leadingAnchor = [view4 leadingAnchor];
    view5 = [(UIPrintPanelViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v104 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v119[0] = v104;
    splitViewController4 = [(UIPrintPanelViewController *)self splitViewController];
    view6 = [splitViewController4 view];
    trailingAnchor = [view6 trailingAnchor];
    view7 = [(UIPrintPanelViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v90 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v119[1] = v90;
    splitViewController5 = [(UIPrintPanelViewController *)self splitViewController];
    view8 = [splitViewController5 view];
    topAnchor = [view8 topAnchor];
    view9 = [(UIPrintPanelViewController *)self view];
    topAnchor2 = [view9 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v119[2] = v31;
    splitViewController6 = [(UIPrintPanelViewController *)self splitViewController];
    view10 = [splitViewController6 view];
    bottomAnchor = [view10 bottomAnchor];
    view11 = [(UIPrintPanelViewController *)self view];
    bottomAnchor2 = [view11 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v119[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:4];
    [v92 activateConstraints:v38];

    splitViewController7 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController7 setDelegate:self];

    splitViewController8 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController8 setPreferredDisplayMode:2];

    splitViewController9 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController9 setPreferredSplitBehavior:1];

    splitViewController10 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController10 setDisplayModeButtonVisibility:1];

    splitViewController11 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController11 setPrimaryBackgroundStyle:1];

    splitViewController12 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController12 setPreferredPrimaryColumnWidthFraction:0.3];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v47 = v46 * 0.3;
    splitViewController13 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController13 setMaximumPrimaryColumnWidth:v47];

    splitViewController14 = [(UIPrintPanelViewController *)self splitViewController];
    [splitViewController14 setMinimumPrimaryColumnWidth:200.0];

    splitViewController15 = [(UIPrintPanelViewController *)self splitViewController];
    printOptionsNavController = [(UIPrintPanelViewController *)self printOptionsNavController];
    [splitViewController15 setViewController:printOptionsNavController forColumn:2];

    v52 = objc_alloc_init(MEMORY[0x277D75D28]);
    sidebarPreviewContainerView2 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    [v52 setView:sidebarPreviewContainerView2];

    splitViewController16 = [(UIPrintPanelViewController *)self splitViewController];
    v109 = v52;
    [splitViewController16 setViewController:v52 forColumn:0];

    sidebarPreviewContainerView3 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    sidebarPreviewViewController = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view12 = [sidebarPreviewViewController view];
    [sidebarPreviewContainerView3 addSubview:view12];

    sidebarPreviewViewController2 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    [v52 addChildViewController:sidebarPreviewViewController2];

    sidebarPreviewViewController3 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view13 = [sidebarPreviewViewController3 view];
    [view13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v91 = MEMORY[0x277CCAAD0];
    sidebarPreviewViewController4 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view14 = [sidebarPreviewViewController4 view];
    topAnchor3 = [view14 topAnchor];
    sidebarPreviewContainerView4 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    topAnchor4 = [sidebarPreviewContainerView4 topAnchor];
    v105 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v118[0] = v105;
    sidebarPreviewViewController5 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view15 = [sidebarPreviewViewController5 view];
    bottomAnchor3 = [view15 bottomAnchor];
    sidebarPreviewContainerView5 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    bottomAnchor4 = [sidebarPreviewContainerView5 bottomAnchor];
    v89 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v118[1] = v89;
    sidebarPreviewViewController6 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view16 = [sidebarPreviewViewController6 view];
    leadingAnchor3 = [view16 leadingAnchor];
    sidebarPreviewContainerView6 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    leadingAnchor4 = [sidebarPreviewContainerView6 leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v118[2] = v62;
    sidebarPreviewViewController7 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    view17 = [sidebarPreviewViewController7 view];
    trailingAnchor3 = [view17 trailingAnchor];
    sidebarPreviewContainerView7 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    trailingAnchor4 = [sidebarPreviewContainerView7 trailingAnchor];
    v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v118[3] = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:4];
    [v91 activateConstraints:v69];

    view18 = sidebarPreviewViewController4;
    v71 = v109;
  }

  else
  {
    v71 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v4, v7, v6}];
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v71 setBackgroundColor:systemGroupedBackgroundColor];

    [(UIPrintPanelViewController *)self setView:v71];
    printOptionsNavController2 = [(UIPrintPanelViewController *)self printOptionsNavController];
    view18 = [printOptionsNavController2 view];

    [view18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v71 addSubview:view18];
    printOptionsNavController3 = [(UIPrintPanelViewController *)self printOptionsNavController];
    [(UIPrintPanelViewController *)self addChildViewController:printOptionsNavController3];

    v75 = MEMORY[0x277CCAAD0];
    v76 = [MEMORY[0x277CCAAD0] constraintWithItem:view18 attribute:3 relatedBy:0 toItem:v71 attribute:3 multiplier:1.0 constant:0.0];
    v117[0] = v76;
    v77 = [MEMORY[0x277CCAAD0] constraintWithItem:view18 attribute:6 relatedBy:0 toItem:v71 attribute:6 multiplier:1.0 constant:0.0];
    v117[1] = v77;
    v78 = [MEMORY[0x277CCAAD0] constraintWithItem:view18 attribute:4 relatedBy:0 toItem:v71 attribute:4 multiplier:1.0 constant:0.0];
    v117[2] = v78;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:3];
    [v75 activateConstraints:v79];

    [(UIPrintPanelViewController *)self showCompactPreview];
  }

  view19 = [(UIPrintPanelViewController *)self view];
  [view19 addObserver:self forKeyPath:@"frame" options:0 context:0];
}

- (void)splitViewController:(id)controller didHideColumn:(int64_t)column
{
  if (!column)
  {
    [(UIPrintPanelViewController *)self showCompactPreview];
  }
}

- (void)splitViewController:(id)controller didShowColumn:(int64_t)column
{
  if (!column)
  {
    [(UIPrintPanelViewController *)self showsSidebarPreview];
  }
}

- (void)showCompactPreview
{
  v151[4] = *MEMORY[0x277D85DE8];
  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];

  if (!compactPreviewViewController)
  {
    v4 = [UIPrintPreviewContainerView alloc];
    v5 = [(UIPrintPreviewContainerView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(UIPrintPanelViewController *)self setCompactPreviewContainerView:v5];

    v6 = [UIPrintPreviewViewController alloc];
    compactPreviewContainerView = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v8 = [(UIPrintPreviewViewController *)v6 initWithPrintPanelViewController:self useCompactPreview:1 withContainerView:compactPreviewContainerView];
    [(UIPrintPanelViewController *)self setCompactPreviewViewController:v8];

    usingSplitView = [(UIPrintPanelViewController *)self usingSplitView];
    compactPreviewContainerView2 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [compactPreviewContainerView2 setHidden:usingSplitView];

    compactPreviewContainerView3 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [compactPreviewContainerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (_UISolariumEnabled())
    {
      secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
      compactPreviewContainerView4 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [compactPreviewContainerView4 setBackgroundColor:secondarySystemGroupedBackgroundColor];

      systemGroupedBackgroundColor = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:10];
      compactPreviewContainerView5 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [compactPreviewContainerView5 _setBackground:systemGroupedBackgroundColor];
    }

    else
    {
      systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      compactPreviewContainerView5 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [compactPreviewContainerView5 setBackgroundColor:systemGroupedBackgroundColor];
    }

    view = [(UIPrintPanelViewController *)self view];
    compactPreviewContainerView6 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [view addSubview:compactPreviewContainerView6];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v20, v20}];
    [(UIPrintPanelViewController *)self setPreviewHorizSeparatorView:v21];

    previewHorizSeparatorView = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [previewHorizSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];

    separatorColor = [MEMORY[0x277D75348] separatorColor];
    previewHorizSeparatorView2 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [previewHorizSeparatorView2 setBackgroundColor:separatorColor];

    showingVerticalPreview = 0;
    if (_UISolariumEnabled())
    {
      showingVerticalPreview = [(UIPrintPanelViewController *)self showingVerticalPreview];
    }

    previewHorizSeparatorView3 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [previewHorizSeparatorView3 setHidden:showingVerticalPreview];

    compactPreviewContainerView7 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    previewHorizSeparatorView4 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [compactPreviewContainerView7 addSubview:previewHorizSeparatorView4];

    v115 = MEMORY[0x277CCAAD0];
    previewHorizSeparatorView5 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    leadingAnchor = [previewHorizSeparatorView5 leadingAnchor];
    compactPreviewContainerView8 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    leadingAnchor2 = [compactPreviewContainerView8 leadingAnchor];
    v127 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v151[0] = v127;
    previewHorizSeparatorView6 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    trailingAnchor = [previewHorizSeparatorView6 trailingAnchor];
    compactPreviewContainerView9 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    trailingAnchor2 = [compactPreviewContainerView9 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v151[1] = v29;
    previewHorizSeparatorView7 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    bottomAnchor = [previewHorizSeparatorView7 bottomAnchor];
    compactPreviewContainerView10 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    topAnchor = [compactPreviewContainerView10 topAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:topAnchor];
    v151[2] = v34;
    v35 = MEMORY[0x277CCAAD0];
    previewHorizSeparatorView8 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    v37 = [v35 constraintWithItem:previewHorizSeparatorView8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v151[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
    [v115 activateConstraints:v38];

    v39 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v20, v20}];
    [(UIPrintPanelViewController *)self setPreviewVertSeparatorView:v39];

    previewVertSeparatorView = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [previewVertSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];

    separatorColor2 = [MEMORY[0x277D75348] separatorColor];
    previewVertSeparatorView2 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [previewVertSeparatorView2 setBackgroundColor:separatorColor2];

    v43 = _UISolariumEnabled();
    previewVertSeparatorView3 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [previewVertSeparatorView3 setHidden:v43];

    compactPreviewContainerView11 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    previewVertSeparatorView4 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [compactPreviewContainerView11 addSubview:previewVertSeparatorView4];

    v116 = MEMORY[0x277CCAAD0];
    previewVertSeparatorView5 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    topAnchor2 = [previewVertSeparatorView5 topAnchor];
    compactPreviewContainerView12 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    topAnchor3 = [compactPreviewContainerView12 topAnchor];
    v128 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v150[0] = v128;
    previewVertSeparatorView6 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    bottomAnchor2 = [previewVertSeparatorView6 bottomAnchor];
    compactPreviewContainerView13 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    bottomAnchor3 = [compactPreviewContainerView13 bottomAnchor];
    v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v150[1] = v47;
    previewVertSeparatorView7 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    leadingAnchor3 = [previewVertSeparatorView7 leadingAnchor];
    compactPreviewContainerView14 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    trailingAnchor3 = [compactPreviewContainerView14 trailingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
    v150[2] = v52;
    v53 = MEMORY[0x277CCAAD0];
    previewVertSeparatorView8 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    v55 = [v53 constraintWithItem:previewVertSeparatorView8 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v150[3] = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
    [v116 activateConstraints:v56];

    v135 = MEMORY[0x277CCAAD0];
    compactPreviewContainerView15 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    leadingAnchor4 = [compactPreviewContainerView15 leadingAnchor];
    view2 = [(UIPrintPanelViewController *)self view];
    leadingAnchor5 = [view2 leadingAnchor];
    v59 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v149[0] = v59;
    compactPreviewContainerView16 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    bottomAnchor4 = [compactPreviewContainerView16 bottomAnchor];
    view3 = [(UIPrintPanelViewController *)self view];
    bottomAnchor5 = [view3 bottomAnchor];
    v64 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v149[1] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
    [v135 activateConstraints:v65];

    printOptionsNavController = [(UIPrintPanelViewController *)self printOptionsNavController];
    view4 = [printOptionsNavController view];

    v68 = [MEMORY[0x277CCAAD0] constraintWithItem:view4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:333.0];
    [(UIPrintPanelViewController *)self setPrintOptionsWidthConstraint:v68];

    compactPreviewContainerView17 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    topAnchor4 = [compactPreviewContainerView17 topAnchor];
    view5 = [(UIPrintPanelViewController *)self view];
    topAnchor5 = [view5 topAnchor];
    v71 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v148[0] = v71;
    compactPreviewContainerView18 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    trailingAnchor4 = [compactPreviewContainerView18 trailingAnchor];
    v145 = view4;
    leadingAnchor6 = [view4 leadingAnchor];
    v75 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
    v148[1] = v75;
    printOptionsWidthConstraint = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
    v148[2] = printOptionsWidthConstraint;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
    [(UIPrintPanelViewController *)self setVertScrollPrintPanelConstraints:v77];

    v78 = MEMORY[0x277CCAAD0];
    compactPreviewContainerView19 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v80 = [v78 constraintWithItem:compactPreviewContainerView19 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:250.0];
    [(UIPrintPanelViewController *)self setPreviewHeightConstraint:v80];

    if ([(UIPrintPanelViewController *)self usingSplitView])
    {
      view6 = [(UIPrintPanelViewController *)self view];
      leadingAnchor7 = [view6 leadingAnchor];
      compactPreviewContainerView20 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      leadingAnchor8 = [compactPreviewContainerView20 leadingAnchor];
      v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      [(UIPrintPanelViewController *)self setPrintOptionsLeadingConstraint:v85];
    }

    else
    {
      view6 = [v145 leadingAnchor];
      leadingAnchor7 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      compactPreviewContainerView20 = [leadingAnchor7 leadingAnchor];
      leadingAnchor8 = [view6 constraintEqualToAnchor:compactPreviewContainerView20];
      [(UIPrintPanelViewController *)self setPrintOptionsLeadingConstraint:leadingAnchor8];
    }

    compactPreviewContainerView21 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    trailingAnchor5 = [compactPreviewContainerView21 trailingAnchor];
    view7 = [(UIPrintPanelViewController *)self view];
    trailingAnchor6 = [view7 trailingAnchor];
    v90 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v147[0] = v90;
    previewHeightConstraint = [(UIPrintPanelViewController *)self previewHeightConstraint];
    v147[1] = previewHeightConstraint;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
    [(UIPrintPanelViewController *)self setHorizScrollPrintPanelConstraints:v92];

    compactPreviewViewController2 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    collectionView = [compactPreviewViewController2 collectionView];

    compactPreviewContainerView22 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [compactPreviewContainerView22 addSubview:collectionView];

    compactPreviewViewController3 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    [(UIPrintPanelViewController *)self addChildViewController:compactPreviewViewController3];

    [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    compactPreviewContainerView23 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    leadingAnchor9 = [collectionView leadingAnchor];
    compactPreviewContainerView24 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    safeAreaLayoutGuide = [compactPreviewContainerView24 safeAreaLayoutGuide];
    leadingAnchor10 = [safeAreaLayoutGuide leadingAnchor];
    v123 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v146[0] = v123;
    trailingAnchor7 = [collectionView trailingAnchor];
    compactPreviewContainerView25 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    trailingAnchor8 = [compactPreviewContainerView25 trailingAnchor];
    v110 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v146[1] = v110;
    topAnchor6 = [collectionView topAnchor];
    compactPreviewContainerView26 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    topAnchor7 = [compactPreviewContainerView26 topAnchor];
    v98 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v146[2] = v98;
    bottomAnchor6 = [collectionView bottomAnchor];
    compactPreviewContainerView27 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    safeAreaLayoutGuide2 = [compactPreviewContainerView27 safeAreaLayoutGuide];
    bottomAnchor7 = [safeAreaLayoutGuide2 bottomAnchor];
    v103 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v146[3] = v103;
    v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:4];
    [compactPreviewContainerView23 addConstraints:v104];

    if ([(UIPrintPanelViewController *)self usingSplitView])
    {
      compactPreviewViewController4 = [(UIPrintPanelViewController *)self compactPreviewViewController];
      [compactPreviewViewController4 setScrollDirection:1];
    }

    view8 = [(UIPrintPanelViewController *)self view];
    [view8 setNeedsUpdateConstraints];
  }

  compactPreviewContainerView28 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
  [compactPreviewContainerView28 setHidden:0];
}

- (void)showsSidebarPreview
{
  compactPreviewContainerView = [(UIPrintPanelViewController *)self compactPreviewContainerView];
  [compactPreviewContainerView setHidden:1];

  previewHeightConstraint = [(UIPrintPanelViewController *)self previewHeightConstraint];
  [previewHeightConstraint constant];
  [(UIPrintPanelViewController *)self contentInsetForPreviewWithHeight:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  printOptionsTableView = [(UIPrintPanelViewController *)self printOptionsTableView];
  [printOptionsTableView setContentInset:{v5, v7, v9, v11}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [compactPreviewViewController updatePrintPreviewPages:0];

  sidebarPreviewViewController = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [sidebarPreviewViewController updatePrintPreviewPages:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v7 viewWillAppear:appear];
  parentController = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    [parentController setNavigationBarHidden:1];
  }

  splitViewController = [(UIPrintPanelViewController *)self splitViewController];
  v6 = [splitViewController isShowingColumn:0];

  if ((v6 & 1) == 0)
  {
    [(UIPrintPanelViewController *)self showCompactPreview];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v8 viewDidDisappear:disappear];
  parentController = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    [parentController setNavigationBarHidden:0];
  }

  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
  if ([compactPreviewViewController showingPreviewDocumentInteractionController])
  {
  }

  else
  {
    sidebarPreviewViewController = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    showingPreviewDocumentInteractionController = [sidebarPreviewViewController showingPreviewDocumentInteractionController];

    if ((showingPreviewDocumentInteractionController & 1) == 0)
    {
      [(UIPrintPanelViewController *)self printPanelDidDisappear];
    }
  }
}

- (void)preferredContentSizeCategoryChanged
{
  sidebarPreviewViewController = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [sidebarPreviewViewController resetAllPages];

  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [compactPreviewViewController resetAllPages];
}

- (BOOL)showingVerticalPreview
{
  view = [(UIPrintPanelViewController *)self view];
  [view frame];
  v5 = v4 > 500.0;

  if ([(UIPrintPanelViewController *)self usingSplitView])
  {
    compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
    if (compactPreviewViewController)
    {
      splitViewController = [(UIPrintPanelViewController *)self splitViewController];
      v5 = [splitViewController isShowingColumn:0];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)updatePreviewLayoutConstraints
{
  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];

  if (compactPreviewViewController)
  {
    showingVerticalPreview = [(UIPrintPanelViewController *)self showingVerticalPreview];
    view = [(UIPrintPanelViewController *)self view];
    [view frame];
    if (showingVerticalPreview)
    {
      v8 = v6 * 0.6667;

      v9 = 333.0;
      if (v8 >= 333.0)
      {
        v9 = v8;
      }

      v10 = v9;
      v11 = floorf(v10);
      view = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
      [view setConstant:v11];
    }

    else
    {
      v12 = v7 * 0.38;
      v13 = floorf(v12);
      compactPreviewViewController2 = [(UIPrintPanelViewController *)self compactPreviewViewController];
      [compactPreviewViewController2 headerHeight];
      v16 = v15 + v13;
      previewHeightConstraint = [(UIPrintPanelViewController *)self previewHeightConstraint];
      [previewHeightConstraint setConstant:v16];
    }

    showingVerticalPreview2 = [(UIPrintPanelViewController *)self showingVerticalPreview];
    v19 = MEMORY[0x277CCAAD0];
    if (showingVerticalPreview2)
    {
      horizScrollPrintPanelConstraints = [(UIPrintPanelViewController *)self horizScrollPrintPanelConstraints];
      [v19 deactivateConstraints:horizScrollPrintPanelConstraints];

      printOptionsLeadingConstraint = [(UIPrintPanelViewController *)self printOptionsLeadingConstraint];
      [printOptionsLeadingConstraint setActive:0];

      v22 = MEMORY[0x277CCAAD0];
      vertScrollPrintPanelConstraints = [(UIPrintPanelViewController *)self vertScrollPrintPanelConstraints];
      [v22 activateConstraints:vertScrollPrintPanelConstraints];

      previewHorizSeparatorView = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
      [previewHorizSeparatorView setHidden:1];

      v25 = _UISolariumEnabled();
      [(UIPrintPanelViewController *)self previewVertSeparatorView];
    }

    else
    {
      vertScrollPrintPanelConstraints2 = [(UIPrintPanelViewController *)self vertScrollPrintPanelConstraints];
      [v19 deactivateConstraints:vertScrollPrintPanelConstraints2];

      v27 = MEMORY[0x277CCAAD0];
      horizScrollPrintPanelConstraints2 = [(UIPrintPanelViewController *)self horizScrollPrintPanelConstraints];
      [v27 activateConstraints:horizScrollPrintPanelConstraints2];

      printOptionsLeadingConstraint2 = [(UIPrintPanelViewController *)self printOptionsLeadingConstraint];
      [printOptionsLeadingConstraint2 setActive:1];

      previewVertSeparatorView = [(UIPrintPanelViewController *)self previewVertSeparatorView];
      [previewVertSeparatorView setHidden:1];

      v25 = _UISolariumEnabled();
      [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    }
    v31 = ;
    [v31 setHidden:v25];

    previewHeightConstraint2 = [(UIPrintPanelViewController *)self previewHeightConstraint];
    [previewHeightConstraint2 constant];
    [(UIPrintPanelViewController *)self contentInsetForPreviewWithHeight:?];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    printOptionsTableView = [(UIPrintPanelViewController *)self printOptionsTableView];
    [printOptionsTableView setContentInset:{v33, v35, v37, v39}];
  }
}

- (UIEdgeInsets)contentInsetForPreviewWithHeight:(double)height
{
  heightCopy = height;
  if (height == 0.0)
  {
    compactPreviewContainerView = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [compactPreviewContainerView bounds];
    heightCopy = v6;
  }

  v7 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 24);
  if ([(UIPrintPanelViewController *)self showingVerticalPreview])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = heightCopy + -40.0;
  }

  v10 = -20.0;
  v11 = v7;
  v12 = v8;
  result.right = v12;
  result.bottom = v9;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v3 updateViewConstraints];
  [(UIPrintPanelViewController *)self updatePreviewLayoutConstraints];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v6 viewWillLayoutSubviews];
  if (![(UIPrintPanelViewController *)self usingSplitView])
  {
    showingVerticalPreview = [(UIPrintPanelViewController *)self showingVerticalPreview];
    compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
    [compactPreviewViewController setScrollDirection:!showingVerticalPreview];

    view = [(UIPrintPanelViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)updatePageCount
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__UIPrintPanelViewController_updatePageCount__block_invoke;
  v11 = &unk_279A9C210;
  objc_copyWeak(&v12, &location);
  v3 = MEMORY[0x25F8E54A0](&v8);
  v4 = [(UIPrintPanelViewController *)self updatePageCountThread:v8];
  [v4 cancel];

  v5 = [objc_alloc(MEMORY[0x277CCACC8]) initWithBlock:v3];
  [(UIPrintPanelViewController *)self setUpdatePageCountThread:v5];

  updatePageCountThread = [(UIPrintPanelViewController *)self updatePageCountThread];
  [updatePageCountThread setName:@"com.apple.UIKit.UIPrintPreviewViewController.updatePageCountThread"];

  updatePageCountThread2 = [(UIPrintPanelViewController *)self updatePageCountThread];
  [updatePageCountThread2 start];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __45__UIPrintPanelViewController_updatePageCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained printInteractionController];
  [v1 _updatePageCount];
}

- (void)updatePageRange
{
  if ([(UIPrintPanelViewController *)self shouldShowPageRange])
  {
    printInfo = [(UIPrintPanelViewController *)self printInfo];
    pageRanges = [printInfo pageRanges];
    v4 = [pageRanges copy];
    printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
    [printInteractionController setPageRanges:v4];
  }
}

- (id)controlTintColor
{
  view = [(UIPrintPanelViewController *)self view];
  tintColor = [view tintColor];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.iBooks"];

  if (v6)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];

    tintColor = systemBlueColor;
  }

  return tintColor;
}

- (id)keyCommands
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_cancelButtonPressed_];
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:@"." modifierFlags:0x100000 action:{sel_cancelButtonPressed_, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_printButtonPressed_];
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

- (void)backButtonPressed:(id)pressed
{
  parentController = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    v4 = [parentController popViewControllerAnimated:1];
  }
}

- (void)printButtonPressed:(id)pressed
{
  printInfo = [(UIPrintPanelViewController *)self printInfo];
  currentPrinter = [printInfo currentPrinter];

  if (currentPrinter)
  {
    printOptionsTableViewController = [(UIPrintPanelViewController *)self printOptionsTableViewController];
    canDismissPrintOptions = [printOptionsTableViewController canDismissPrintOptions];

    if (canDismissPrintOptions)
    {

      [(UIPrintPanelViewController *)self startPrinting];
    }
  }
}

- (void)dismissKeyboard
{
  printOptionsTableViewController = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [printOptionsTableViewController dismissKeyboard];
}

- (void)resetPreviewPages
{
  sidebarPreviewViewController = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [sidebarPreviewViewController resetAllPages];

  compactPreviewViewController = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [compactPreviewViewController resetAllPages];
}

- (void)showGeneratingPDFProgressPanel
{
  if ([(UIPrintPanelViewController *)self quickLookPDFGenerationInProgress])
  {
    if (![(UIPrintPanelViewController *)self quickLookPDFGenerationCancelled])
    {
      v3 = MEMORY[0x277D75110];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"Creating PDF" value:@"Creating PDF" table:@"Localizable"];
      v6 = [v3 alertControllerWithTitle:v5 message:@"\n" preferredStyle:1];
      [(UIPrintPanelViewController *)self setPdfCreationProgressController:v6];

      pdfCreationProgressController = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      v8 = MEMORY[0x277D750F8];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"PRINT_INTERACTION_CANCEL_BUTTON" value:@"Cancel" table:@"Localizable"];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__UIPrintPanelViewController_showGeneratingPDFProgressPanel__block_invoke;
      v18[3] = &unk_279A9CA70;
      v18[4] = self;
      v11 = [v8 actionWithTitle:v10 style:1 handler:v18];
      [pdfCreationProgressController addAction:v11];

      v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v12 startAnimating];
      pdfCreationProgressController2 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      view = [pdfCreationProgressController2 view];

      [view addSubview:v12];
      v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
      [view addConstraint:v15];

      v16 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:10 relatedBy:0 toItem:view attribute:10 multiplier:1.0 constant:0.0];
      [view addConstraint:v16];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(UIPrintPanelViewController *)self setProgressPresentationTime:?];
      pdfCreationProgressController3 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      [(UIPrintPanelViewController *)self presentViewController:pdfCreationProgressController3 animated:1 completion:0];
    }
  }
}

- (void)showSharePanelForPDFURL:(id)l
{
  v35[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(UIPrintPanelViewController *)self createShareablePDFFileURL:lCopy];
  if (v5)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v6 = getUIActivityViewControllerClass_softClass;
    v34 = getUIActivityViewControllerClass_softClass;
    if (!getUIActivityViewControllerClass_softClass)
    {
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = __getUIActivityViewControllerClass_block_invoke;
      location[3] = &unk_279A9C300;
      location[4] = &v31;
      __getUIActivityViewControllerClass_block_invoke(location);
      v6 = v32[3];
    }

    v7 = v6;
    _Block_object_dispose(&v31, 8);
    v8 = [v6 alloc];
    v35[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v10 = [v8 initWithActivityItems:v9 applicationActivities:0];
    [(UIPrintPanelViewController *)self setActivityViewController:v10];

    activityViewController = [(UIPrintPanelViewController *)self activityViewController];
    printInfo = [(UIPrintPanelViewController *)self printInfo];
    jobName = [printInfo jobName];
    [activityViewController setValue:jobName forKey:@"subject"];

    activityViewController2 = [(UIPrintPanelViewController *)self activityViewController];
    [activityViewController2 setExcludedActivityTypes:&unk_2871BC230];

    printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
    isContentManaged = [printInteractionController isContentManaged];
    activityViewController3 = [(UIPrintPanelViewController *)self activityViewController];
    [activityViewController3 setIsContentManaged:isContentManaged];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    LOBYTE(isContentManaged) = [currentDevice userInterfaceIdiom] == 0;

    if ((isContentManaged & 1) == 0)
    {
      activityViewController4 = [(UIPrintPanelViewController *)self activityViewController];
      [activityViewController4 setModalPresentationStyle:7];

      activityViewController5 = [(UIPrintPanelViewController *)self activityViewController];
      popoverPresentationController = [activityViewController5 popoverPresentationController];

      shareButton = [(UIPrintPanelViewController *)self shareButton];
      [popoverPresentationController setBarButtonItem:shareButton];

      [popoverPresentationController setPermittedArrowDirections:1];
    }

    objc_initWeak(location, self);
    activityViewController6 = [(UIPrintPanelViewController *)self activityViewController];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __54__UIPrintPanelViewController_showSharePanelForPDFURL___block_invoke;
    v28 = &unk_279A9C860;
    objc_copyWeak(&v29, location);
    [activityViewController6 setCompletionWithItemsHandler:&v25];

    v24 = [(UIPrintPanelViewController *)self activityViewController:v25];
    [(UIPrintPanelViewController *)self presentViewController:v24 animated:1 completion:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }
}

void __54__UIPrintPanelViewController_showSharePanelForPDFURL___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActivityViewController:0];
  if (a3)
  {
    [WeakRetained dismissPrintPanelWithAction:2 animated:1 completionHandler:0];
  }
}

- (void)shareButtonPress:(id)press
{
  pressCopy = press;
  [(UIPrintPanelViewController *)self dismissKeyboard];
  [(UIPrintPanelViewController *)self performSelector:sel_showGeneratingPDFProgressPanel withObject:0 afterDelay:0.5];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__UIPrintPanelViewController_shareButtonPress___block_invoke;
  v5[3] = &unk_279A9C838;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(UIPrintPanelViewController *)self generateQuickLookPDFWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__UIPrintPanelViewController_shareButtonPress___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {

    v6 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__UIPrintPanelViewController_shareButtonPress___block_invoke_2;
  v8[3] = &unk_279A9CA98;
  objc_copyWeak(&v10, (a1 + 40));
  v8[4] = *(a1 + 32);
  v9 = v6;
  v11 = a3;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
}

void __47__UIPrintPanelViewController_shareButtonPress___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained pdfCreationProgressController];

  if (v2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    [*(a1 + 32) progressPresentationTime];
    v6 = v4 - v5;
    if (v6 >= 1.0)
    {
      [WeakRetained hideGeneratingPDFProgress:*(a1 + 40)];
    }

    else
    {
      [WeakRetained performSelector:sel_hideGeneratingPDFProgress_ withObject:*(a1 + 40) afterDelay:1.0 - v6];
    }

    goto LABEL_8;
  }

  v7 = WeakRetained;
  if (*(a1 + 40) && (*(a1 + 56) & 1) == 0)
  {
    [WeakRetained showSharePanelForPDFURL:?];
LABEL_8:
    v7 = WeakRetained;
  }
}

- (void)hideGeneratingPDFProgress:(id)progress
{
  progressCopy = progress;
  pdfCreationProgressController = [(UIPrintPanelViewController *)self pdfCreationProgressController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__UIPrintPanelViewController_hideGeneratingPDFProgress___block_invoke;
  v7[3] = &unk_279A9BF78;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  [pdfCreationProgressController dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __56__UIPrintPanelViewController_hideGeneratingPDFProgress___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setPdfCreationProgressController:0];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 showSharePanelForPDFURL:?];
  }

  return result;
}

- (void)addPrintShareButtonsToNavItem:(id)item
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D751E0];
  itemCopy = item;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"printer"];
  v8 = [v6 initWithImage:v7 style:2 target:self action:sel_printButtonPressed_];

  printInfo = [(UIPrintPanelViewController *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  [v8 setEnabled:currentPrinter != 0];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_shareButtonPress_];
  [(UIPrintPanelViewController *)self setShareButton:v11];

  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  LODWORD(currentPrinter) = [printInteractionController preventPDFCreation];
  shareButton = [(UIPrintPanelViewController *)self shareButton];
  [shareButton setEnabled:currentPrinter ^ 1];

  v14 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:{0.0, v8}];
  v17[1] = v14;
  shareButton2 = [(UIPrintPanelViewController *)self shareButton];
  v17[2] = shareButton2;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [itemCopy setRightBarButtonItems:v16];
}

- (void)addCanelButtonToNavItem:(id)item
{
  v18[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  parentController = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    viewControllers = [parentController viewControllers];
    if ([viewControllers count] < 2)
    {
      title = 0;
    }

    else
    {
      v7 = [viewControllers objectAtIndex:{objc_msgSend(viewControllers, "count") - 2}];
      v8 = v7;
      if (v7 == self)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        title = [v11 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];
      }

      else
      {
        title = [(UIPrintPanelViewController *)v7 title];
      }

      if (title)
      {
        printOptionsWidthConstraint = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
        [printOptionsWidthConstraint constant];
        v14 = v13;

        if (v14 > 433.0)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];

    title = v16;
LABEL_11:
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:title style:0 target:self action:sel_backButtonPressed_];
    [v10 _setShowsBackButtonIndicator:1];
    goto LABEL_12;
  }

  title = [MEMORY[0x277D755D0] configurationWithWeight:6];
  viewControllers = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:title];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:viewControllers style:0 target:self action:sel_cancelButtonPressed_];
LABEL_12:

  v18[0] = v10;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [itemCopy setLeftBarButtonItems:v17];
}

- (void)setPrinter:(id)printer
{
  printerCopy = printer;
  pkPrinter = [printerCopy pkPrinter];
  _UIPrinterInfoCancelRequest(pkPrinter);
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  [printInteractionController setPrinter:pkPrinter];

  printOptionsTableViewController = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [printOptionsTableViewController setCurrentPrinter:printerCopy];

  printOptionsTableViewController2 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  v9 = printOptionsTableViewController2;
  if (printerCopy)
  {
    [printOptionsTableViewController2 setShowContactingPrinter:1];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = pkPrinter;
    v10 = v28[5];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __41__UIPrintPanelViewController_setPrinter___block_invoke;
    v26[3] = &unk_279A9CAC0;
    v26[4] = self;
    v26[5] = &v27;
    _UIPrintInfoPrinterLookup(v10, v26);
    printOptionsTableViewController3 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
    [printOptionsTableViewController3 setShowingGatheringPrinterInfo:1];

    pkPrinter2 = [printerCopy pkPrinter];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__UIPrintPanelViewController_setPrinter___block_invoke_2;
    v25[3] = &unk_279A9C090;
    v25[4] = self;
    State = _UIPrinterInfoGetState(pkPrinter2, v25);

    if (State)
    {
      printOptionsTableViewController4 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
      [printOptionsTableViewController4 setShowingGatheringPrinterInfo:0];
      if (State == 1)
      {

        pkPrinter3 = [printerCopy pkPrinter];
        printInfoSupported = [pkPrinter3 printInfoSupported];
        printInfo = [(UIPrintPanelViewController *)self printInfo];
        currentPrinter = [printInfo currentPrinter];
        [currentPrinter setPrinterInfoDict:printInfoSupported];

        printOptionsTableViewController4 = [(UIPrintPanelViewController *)self printInteractionController];
        paper = [printOptionsTableViewController4 paper];
        printInfo2 = [(UIPrintPanelViewController *)self printInfo];
        [printInfo2 setPrintPaper:paper];
      }
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    [printOptionsTableViewController2 setShowContactingPrinter:0];
  }

  printOptionsNavController = [(UIPrintPanelViewController *)self printOptionsNavController];
  topViewController = [printOptionsNavController topViewController];
  navigationItem = [topViewController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:printerCopy != 0];
}

void __41__UIPrintPanelViewController_setPrinter___block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(a1 + 32) printInfo];
  v6 = [v5 currentPrinter];
  v7 = [v6 pkPrinter];

  if (v4 == v7)
  {
    v8 = *(a1 + 32);
    if (a2)
    {
      v11 = [v8 printOptionsTableViewController];
      [v11 setShowContactingPrinter:0];
    }

    else
    {
      v9 = [v8 printInfo];
      [v9 setCurrentPrinter:0];

      [*(a1 + 32) setLastUsedPrinterIndex:0];
      v10 = *(a1 + 32);

      [v10 lookupLastUsedPrinter];
    }
  }
}

void __41__UIPrintPanelViewController_setPrinter___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  v5 = [*(a1 + 32) printOptionsTableViewController];
  [v5 setShowingGatheringPrinterInfo:0];

  v6 = [*(a1 + 32) printInfo];
  v7 = v6;
  if (a2 == 2)
  {
    [v6 setCurrentPrinter:0];
  }

  else
  {
    v8 = [v6 currentPrinter];
    [v8 setPrinterInfoDict:v11];

    v7 = [*(a1 + 32) printInteractionController];
    v9 = [v7 _updatePrintPaper];
    v10 = [*(a1 + 32) printInfo];
    [v10 setPrintPaper:v9];
  }
}

- (void)lookupLastUsedPrinter
{
  lastUsedPrinterArray = [(UIPrintPanelViewController *)self lastUsedPrinterArray];

  if (!lastUsedPrinterArray)
  {
    lastUsedPrinters = [MEMORY[0x277D41090] lastUsedPrinters];
    [(UIPrintPanelViewController *)self setLastUsedPrinterArray:lastUsedPrinters];
  }

  if ([(UIPrintPanelViewController *)self lastUsedPrinterIndex]<= 2)
  {
    lastUsedPrinterArray2 = [(UIPrintPanelViewController *)self lastUsedPrinterArray];
    v6 = [lastUsedPrinterArray2 count];
    lastUsedPrinterIndex = [(UIPrintPanelViewController *)self lastUsedPrinterIndex];

    if (v6 > lastUsedPrinterIndex)
    {
      lastUsedPrinterArray3 = [(UIPrintPanelViewController *)self lastUsedPrinterArray];
      v9 = [lastUsedPrinterArray3 objectAtIndex:{-[UIPrintPanelViewController lastUsedPrinterIndex](self, "lastUsedPrinterIndex")}];

      v10 = [v9 objectForKey:*MEMORY[0x277D41210]];
      v11 = [v9 objectForKey:*MEMORY[0x277D410D0]];
      v12 = MEMORY[0x277D410A8];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke;
      v15[3] = &unk_279A9CB38;
      v15[4] = self;
      v16 = v10;
      v17 = v11;
      v13 = v11;
      v14 = v10;
      [v12 printerWithName:v14 discoveryTimeout:v15 completionHandler:5.0];
    }
  }
}

void __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke_2;
    v7[3] = &unk_279A9CB10;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    v10 = *(a1 + 48);
    _UIPrintInfoPrinterLookup(v5, v7);
  }

  else
  {
    [*(a1 + 32) setLastUsedPrinterIndex:{objc_msgSend(*(a1 + 32), "lastUsedPrinterIndex") + 1}];
    [*(a1 + 32) lookupLastUsedPrinter];
  }
}

void __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) printInfo];
    v4 = [v3 currentPrinter];

    if (!v4)
    {
      v5 = [[UIPrinter alloc] _initWithPrinter:*(a1 + 40)];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke_3;
      v8[3] = &unk_279A9CAE8;
      v8[4] = *(a1 + 32);
      v9 = v5;
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v6 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }

  else
  {
    [*(a1 + 32) setLastUsedPrinterIndex:{objc_msgSend(*(a1 + 32), "lastUsedPrinterIndex") + 1}];
    v7 = *(a1 + 32);

    [v7 lookupLastUsedPrinter];
  }
}

void __51__UIPrintPanelViewController_lookupLastUsedPrinter__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) printInfo];
  [v3 setCurrentPrinter:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) printInfo];
  [v5 setPrinterID:v4];

  v6 = *(a1 + 56);
  if (v6)
  {
    if ((([v6 isEqualToString:*MEMORY[0x277D410D8]] & 1) != 0 || objc_msgSend(*(a1 + 56), "isEqualToString:", *MEMORY[0x277D410E8])) && (objc_msgSend(*(a1 + 32), "printInfo"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "duplex"), v7, !v8))
    {
      v9 = 1;
    }

    else
    {
      if (![*(a1 + 56) isEqualToString:*MEMORY[0x277D410E0]])
      {
        return;
      }

      v9 = 0;
    }

    v10 = [*(a1 + 32) printInfo];
    [v10 setDuplex:v9];
  }
}

- (void)printNavigationConrollerDidDismiss
{
  if (![(UIPrintPanelViewController *)self dismissed])
  {
    printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
    [printInteractionController _printPanelWillDismissWithAction:0];

    [(UIPrintPanelViewController *)self setDismissed:1];
    _UIPrinterInfoCancelRequests();
    printOptionsNavController = [(UIPrintPanelViewController *)self printOptionsNavController];
    topViewController = [printOptionsNavController topViewController];
    printOptionsTableViewController = [(UIPrintPanelViewController *)self printOptionsTableViewController];

    if (topViewController != printOptionsTableViewController)
    {
      printOptionsNavController2 = [(UIPrintPanelViewController *)self printOptionsNavController];
      printOptionsTableViewController2 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
      v9 = [printOptionsNavController2 popToViewController:printOptionsTableViewController2 animated:0];
    }

    printPanelWindow = [(UIPrintPanelViewController *)self printPanelWindow];
    [printPanelWindow setHidden:1];

    printInteractionController2 = [(UIPrintPanelViewController *)self printInteractionController];
    [printInteractionController2 _printPanelDidDismissWithAction:0];

    [(UIPrintPanelViewController *)self setPrintInteractionController:0];
  }
}

- (void)printPanelDidDisappear
{
  if (![(UIPrintPanelViewController *)self dismissed])
  {
    parentController = [(UIPrintPanelViewController *)self parentController];
    if ([(UIPrintPanelViewController *)self presentingInParentNavController])
    {
      v3 = parentController;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    topViewController = [v4 topViewController];

    if (topViewController == self)
    {
      [(UIPrintPanelViewController *)self dismissPrintPanelWithAction:0 animated:0 completionHandler:0];
    }

    else
    {
      viewControllers = [v4 viewControllers];
      v7 = [viewControllers containsObject:self];

      if ((v7 & 1) == 0)
      {
        [(UIPrintPanelViewController *)self printNavigationConrollerDidDismiss];
      }
    }
  }
}

- (BOOL)shouldShowPageRange
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _canShowPageRange = [printInteractionController _canShowPageRange];

  return _canShowPageRange;
}

- (BOOL)shouldShowDuplex
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _canShowDuplex = [printInteractionController _canShowDuplex];

  return _canShowDuplex;
}

- (BOOL)shouldShowOrientation
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _canShowOrientation = [printInteractionController _canShowOrientation];

  return _canShowOrientation;
}

- (BOOL)shouldShowScaling
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _canShowScaling = [printInteractionController _canShowScaling];

  return _canShowScaling;
}

- (BOOL)shouldShowLayout
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _canShowLayout = [printInteractionController _canShowLayout];

  return _canShowLayout;
}

- (void)startPrinting
{
  printInfo = [(UIPrintPanelViewController *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  _printerID = [currentPrinter _printerID];
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  _currentPrintInfo = [printInteractionController _currentPrintInfo];
  [_currentPrintInfo setPrinterID:_printerID];

  [(UIPrintPanelViewController *)self dismissPrintPanelWithAction:1 animated:1 completionHandler:0];
}

- (CGSize)preferredSizeForScene:(id)scene
{
  screen = [scene screen];
  [screen bounds];
  v6 = v5;
  v8 = v7;

  if (v8 <= v6)
  {
    v14 = v6 * 0.66667;
    v6 = floorf(v14);
    view = [(UIPrintPanelViewController *)self view];
    [view frame];
    v17 = v16;

    if (v17 >= v8)
    {
      v13 = v17;
    }

    else
    {
      v13 = v8;
    }
  }

  else
  {
    view2 = [(UIPrintPanelViewController *)self view];
    [view2 frame];
    v11 = v10;

    if (v11 >= v6)
    {
      v6 = v11;
    }

    v12 = v8 * 0.8;
    v13 = floorf(v12);
  }

  v18 = v6;
  result.height = v13;
  result.width = v18;
  return result;
}

- (void)_presentInParentAnimated:(BOOL)animated hostingScene:(id)scene
{
  animatedCopy = animated;
  sceneCopy = scene;
  parentController = [(UIPrintPanelViewController *)self parentController];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__UIPrintPanelViewController__presentInParentAnimated_hostingScene___block_invoke;
  v21[3] = &unk_279A9BEE0;
  v21[4] = self;
  v8 = MEMORY[0x25F8E54A0](v21);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UIPrintPanelViewController *)self usingSplitView]^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(UIPrintPanelViewController *)self setPresentingInParentNavController:v9];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    parentController2 = [(UIPrintPanelViewController *)self parentController];
    view = [parentController2 view];
    [view frame];
    [(UIPrintPanelViewController *)self setPreferredContentSize:v12, v13];

    [parentController pushViewController:self animated:animatedCopy];
    transitionCoordinator = [(UIPrintPanelViewController *)self transitionCoordinator];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __68__UIPrintPanelViewController__presentInParentAnimated_hostingScene___block_invoke_2;
    v19 = &unk_279A9CB60;
    v20 = v8;
    v15 = MEMORY[0x25F8E54A0](&v16);
    [transitionCoordinator animateAlongsideTransition:&__block_literal_global_6 completion:{v15, v16, v17, v18, v19}];
  }

  else
  {
    [(UIPrintPanelViewController *)self preferredSizeForScene:sceneCopy];
    [(UIPrintPanelViewController *)self setPreferredContentSize:?];
    if (animatedCopy)
    {
      [parentController presentViewController:self withTransition:3 completion:v8];
    }

    else
    {
      [parentController presentViewController:self animated:0 completion:v8];
    }
  }
}

void __68__UIPrintPanelViewController__presentInParentAnimated_hostingScene___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) printInteractionController];
  [v1 _printPanelDidPresent];
}

- (void)presentPrintPanelAnimated:(BOOL)animated hostingScene:(id)scene
{
  animatedCopy = animated;
  sceneCopy = scene;
  parentController = [(UIPrintPanelViewController *)self parentController];

  if (!parentController)
  {
    [(UIPrintPanelViewController *)self preferredSizeForScene:sceneCopy];
    [(UIPrintPanelViewController *)self setPreferredContentSize:?];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      bundleIdentifier = [mainBundle bundleIdentifier];
      v15 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

      if (v15)
      {
        v16 = [[UIPrintPanelWindow alloc] initWithWindowScene:sceneCopy];
        [(UIPrintPanelViewController *)self setPrintPanelWindow:v16];

        v17 = *MEMORY[0x277D768D0];
        printPanelWindow = [(UIPrintPanelViewController *)self printPanelWindow];
        [printPanelWindow setWindowLevel:v17];

        presentedViewController2 = objc_alloc_init(MEMORY[0x277D75D28]);
        v20 = objc_alloc(MEMORY[0x277D75D18]);
        printPanelWindow2 = [(UIPrintPanelViewController *)self printPanelWindow];
        [printPanelWindow2 frame];
        v22 = [v20 initWithFrame:?];

        [presentedViewController2 setView:v22];
        printPanelWindow3 = [(UIPrintPanelViewController *)self printPanelWindow];
        [printPanelWindow3 setRootViewController:presentedViewController2];

        printPanelWindow4 = [(UIPrintPanelViewController *)self printPanelWindow];
        [printPanelWindow4 addSubview:v22];

        printPanelWindow5 = [(UIPrintPanelViewController *)self printPanelWindow];
        [printPanelWindow5 makeKeyAndVisible];

        [(UIPrintPanelViewController *)self setAnimated:animatedCopy];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke;
        v31[3] = &unk_279A9BEE0;
        v31[4] = self;
        [presentedViewController2 presentViewController:self withTransition:3 completion:v31];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
    }

    keyWindow = [sceneCopy keyWindow];
    rootViewController = [keyWindow rootViewController];

    presentedViewController = [rootViewController presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [rootViewController presentedViewController];

        v19PresentedViewController = [presentedViewController2 presentedViewController];

        rootViewController = presentedViewController2;
      }

      while (v19PresentedViewController);
    }

    else
    {
      presentedViewController2 = rootViewController;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke_2;
    v30[3] = &unk_279A9BEE0;
    v30[4] = self;
    [presentedViewController2 presentViewController:self animated:animatedCopy completion:v30];
    goto LABEL_12;
  }

  parentController2 = [(UIPrintPanelViewController *)self parentController];
  view = [parentController2 view];
  [view frame];
  [(UIPrintPanelViewController *)self setPreferredContentSize:v10, v11];

  [(UIPrintPanelViewController *)self _presentInParentAnimated:animatedCopy hostingScene:sceneCopy];
LABEL_13:
}

void __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) printInteractionController];
  [v1 _printPanelDidPresent];
}

void __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) printInteractionController];
  [v1 _printPanelDidPresent];
}

- (void)presentPrintPanelFromRect:(CGRect)rect inView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  hostingWindowScene = [printInteractionController hostingWindowScene];

  printInteractionController2 = [(UIPrintPanelViewController *)self printInteractionController];
  _canPreviewContent = [printInteractionController2 _canPreviewContent];

  if (_canPreviewContent)
  {
    [(UIPrintPanelViewController *)self presentPrintPanelAnimated:animatedCopy hostingScene:hostingWindowScene];
  }

  else
  {
    parentController = [(UIPrintPanelViewController *)self parentController];

    if (parentController)
    {
      [(UIPrintPanelViewController *)self _presentInParentAnimated:animatedCopy hostingScene:hostingWindowScene];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self];
      [(UIPrintPanelViewController *)self setPoverController:v16];

      poverController = [(UIPrintPanelViewController *)self poverController];
      [poverController setDelegate:self];

      poverController2 = [(UIPrintPanelViewController *)self poverController];
      [poverController2 presentPopoverFromRect:viewCopy inView:15 permittedArrowDirections:animatedCopy animated:{x, y, width, height}];

      printInteractionController3 = [(UIPrintPanelViewController *)self printInteractionController];
      v20 = printInteractionController3;
      if (animatedCopy)
      {
        [printInteractionController3 performSelector:sel__printPanelDidPresent withObject:0 afterDelay:0.35];
      }

      else
      {
        [printInteractionController3 _printPanelDidPresent];
      }
    }
  }
}

- (void)presentPrintPanelFromBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  hostingWindowScene = [printInteractionController hostingWindowScene];

  printInteractionController2 = [(UIPrintPanelViewController *)self printInteractionController];
  _canPreviewContent = [printInteractionController2 _canPreviewContent];

  if (_canPreviewContent)
  {
    [(UIPrintPanelViewController *)self presentPrintPanelAnimated:animatedCopy hostingScene:hostingWindowScene];
  }

  else
  {
    parentController = [(UIPrintPanelViewController *)self parentController];

    if (parentController)
    {
      [(UIPrintPanelViewController *)self _presentInParentAnimated:animatedCopy hostingScene:hostingWindowScene];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self];
      [(UIPrintPanelViewController *)self setPoverController:v11];

      poverController = [(UIPrintPanelViewController *)self poverController];
      [poverController setDelegate:self];

      poverController2 = [(UIPrintPanelViewController *)self poverController];
      [poverController2 presentPopoverFromBarButtonItem:itemCopy permittedArrowDirections:15 animated:animatedCopy];

      printInteractionController3 = [(UIPrintPanelViewController *)self printInteractionController];
      v15 = printInteractionController3;
      if (animatedCopy)
      {
        [printInteractionController3 performSelector:sel__printPanelDidPresent withObject:0 afterDelay:0.35];
      }

      else
      {
        [printInteractionController3 _printPanelDidPresent];
      }
    }
  }
}

- (void)dismissPrintPanelWithAction:(int64_t)action animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  [printInteractionController _printPanelWillDismissWithAction:action];

  [(UIPrintPanelViewController *)self setDismissed:1];
  _UIPrinterInfoCancelRequests();
  if (![(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    printPanelWindow = [(UIPrintPanelViewController *)self printPanelWindow];

    if (printPanelWindow)
    {
      if (animatedCopy)
      {
        v11 = 7;
      }

      else
      {
        v11 = 0;
      }

      presentingViewController = [(UIPrintPanelViewController *)self presentingViewController];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke;
      v31[3] = &unk_279A9CBA8;
      v31[4] = self;
      v32[1] = action;
      v13 = v32;
      v32[0] = handlerCopy;
      [presentingViewController dismissViewControllerWithTransition:v11 completion:v31];
    }

    else
    {
      presentingViewController = [(UIPrintPanelViewController *)self presentingViewController];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke_2;
      v29[3] = &unk_279A9CBA8;
      v29[4] = self;
      v30[1] = action;
      v13 = v30;
      v30[0] = handlerCopy;
      [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v29];
    }
  }

  parentController = [(UIPrintPanelViewController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    parentController2 = [(UIPrintPanelViewController *)self parentController];
    printInteractionController2 = [(UIPrintPanelViewController *)self printInteractionController];
    printActivityDelegate = [printInteractionController2 printActivityDelegate];

    v19 = action != 0;
    if (printActivityDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      printInteractionController3 = [(UIPrintPanelViewController *)self printInteractionController];
      v19 = [printActivityDelegate shouldDismissParentViewController:printInteractionController3];
    }

    else
    {
      _popoverController = [parentController2 _popoverController];
      if (_popoverController)
      {
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        if (userInterfaceIdiom)
        {
          goto LABEL_17;
        }
      }

      v19 = 0;
    }

LABEL_17:
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke_3;
    v26[3] = &unk_279A9CBA8;
    v26[4] = self;
    actionCopy = action;
    v27 = handlerCopy;
    v24 = MEMORY[0x25F8E54A0](v26);
    if (v19)
    {
      [parentController2 dismissViewControllerAnimated:animatedCopy completion:v24];
    }

    else
    {
      v25 = [parentController2 popViewControllerAnimated:animatedCopy];
      v24[2](v24);
    }
  }
}

uint64_t __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) printPanelWindow];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) printInteractionController];
  [v3 _printPanelDidDismissWithAction:*(a1 + 48)];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 32);

  return [v5 setPrintInteractionController:0];
}

uint64_t __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) printInteractionController];
  [v2 _printPanelDidDismissWithAction:*(a1 + 48)];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = *(a1 + 32);

  return [v4 setPrintInteractionController:0];
}

uint64_t __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) printInteractionController];
  [v2 _printPanelDidDismissWithAction:*(a1 + 48)];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = *(a1 + 32);

  return [v4 setPrintInteractionController:0];
}

- (void)generateQuickLookPDFWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(UIPrintPanelViewController *)self quickLookPDFGenerationInProgress])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__UIPrintPanelViewController_generateQuickLookPDFWithCompletionHandler___block_invoke;
    v7[3] = &unk_279A9C428;
    objc_copyWeak(&v9, &location);
    v8 = handlerCopy;
    v5 = MEMORY[0x25F8E54A0](v7);
    [(UIPrintPanelViewController *)self setQuickLookPDFGenerationInProgress:1];
    [(UIPrintPanelViewController *)self setQuickLookPDFGenerationCancelled:0];
    if ([(UIPrintPanelViewController *)self usingSplitView])
    {
      [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    }

    else
    {
      [(UIPrintPanelViewController *)self compactPreviewViewController];
    }
    v6 = ;
    [v6 performThumbnailDispatchBlock:v5];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __72__UIPrintPanelViewController_generateQuickLookPDFWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained quickLookPDFGenerationCancelled] & 1) == 0)
  {
    v4 = [WeakRetained printInteractionController];
    [v4 _cancelAllPreviewGeneration];

    v5 = [WeakRetained printInteractionController];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __72__UIPrintPanelViewController_generateQuickLookPDFWithCompletionHandler___block_invoke_2;
    v13 = &unk_279A9CBD0;
    v14 = WeakRetained;
    v6 = v2;
    v15 = v6;
    [v5 _generatePDFWithCompletionHandler:&v10];

    v7 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v6, v7);
    [WeakRetained setQuickLookPDFGenerationInProgress:{0, v10, v11, v12, v13, v14}];
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [WeakRetained quickLookPDFURL];
      (*(v8 + 16))(v8, v9, [WeakRetained quickLookPDFGenerationCancelled]);
    }
  }
}

void __72__UIPrintPanelViewController_generateQuickLookPDFWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v14 = a2;
  if ((a3 & 1) == 0)
  {
    v5 = [*(a1 + 32) printInfo];
    if ([v5 nUpActive])
    {
LABEL_7:

LABEL_8:
      v8 = [*(a1 + 32) printInfo];
      v9 = [*(a1 + 32) printInfo];
      v10 = [v9 printPaper];
      v11 = redrawPDFWithNUp(v14, v8, v10);
      [*(a1 + 32) setQuickLookPDFURL:v11];

      goto LABEL_9;
    }

    v6 = [*(a1 + 32) printInfo];
    if ([v6 borderType])
    {
LABEL_6:

      goto LABEL_7;
    }

    v7 = [*(a1 + 32) printInfo];
    if ([v7 bookletStyle] >= 1)
    {

      goto LABEL_6;
    }

    v12 = [*(a1 + 32) printInfo];
    v13 = [v12 flipHorizontal];

    if (v13)
    {
      goto LABEL_8;
    }

    [*(a1 + 32) setQuickLookPDFURL:v14];
  }

LABEL_9:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)cancelQuickLookPDFGeneration
{
  printInteractionController = [(UIPrintPanelViewController *)self printInteractionController];
  [printInteractionController _cancelAllPreviewGeneration];

  [(UIPrintPanelViewController *)self setQuickLookPDFGenerationCancelled:1];
  [(UIPrintPanelViewController *)self setQuickLookPDFGenerationInProgress:0];
  pdfCreationProgressController = [(UIPrintPanelViewController *)self pdfCreationProgressController];

  if (pdfCreationProgressController)
  {
    pdfCreationProgressController2 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
    [pdfCreationProgressController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)shareableURLForPreviewing
{
  v26 = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintPanelViewController *)self printInfo];
  jobName = [printInfo jobName];
  stringByStandardizingPath = [jobName stringByStandardizingPath];

  if (!stringByStandardizingPath || ![stringByStandardizingPath length])
  {
    v6 = GetDefaultJobName();

    stringByStandardizingPath = v6;
  }

  v7 = [stringByStandardizingPath stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  if ([v8 length] >= 0x51)
  {
    v9 = [v8 substringToIndex:80];

    v8 = v9;
  }

  shareablePDFDirectoryPath = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];

  if ((shareablePDFDirectoryPath || (memset(out, 0, sizeof(out)), uuid_generate_random(out), uuid_unparse(out, v24), v16 = MEMORY[0x277CCACA8], NSTemporaryDirectory(), v17 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithUTF8String:v24], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringWithFormat:", @"%@/PrintPreviewPDF/%@", v17, v18), v19 = objc_claimAutoreleasedReturnValue(), -[UIPrintPanelViewController setShareablePDFDirectoryPath:](self, "setShareablePDFDirectoryPath:", v19), v19, v18, v17, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v20 = objc_claimAutoreleasedReturnValue(), -[UIPrintPanelViewController shareablePDFDirectoryPath](self, "shareablePDFDirectoryPath"), v21 = objc_claimAutoreleasedReturnValue(), v23 = 0, objc_msgSend(v20, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v21, 1, 0, &v23), v11 = v23, v21, v20, !v11)) && (-[UIPrintPanelViewController shareablePDFDirectoryPath](self, "shareablePDFDirectoryPath"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = MEMORY[0x277CCACA8];
    shareablePDFDirectoryPath2 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
    v14 = [v12 stringWithFormat:@"%@/%@.pdf", shareablePDFDirectoryPath2, v8];

    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];

    v11 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)createShareablePDFFileURL:(id)l
{
  lCopy = l;
  shareableURLForPreviewing = [(UIPrintPanelViewController *)self shareableURLForPreviewing];
  v6 = shareableURLForPreviewing;
  if (lCopy && shareableURLForPreviewing)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v6 error:0];
    v15 = 0;
    v8 = [defaultManager linkItemAtURL:lCopy toURL:v6 error:&v15];
    v9 = v15;
    v10 = v9;
    if ((v8 & 1) == 0)
    {

      v14 = 0;
      v11 = [defaultManager copyItemAtURL:lCopy toURL:v6 error:&v14];
      v12 = v14;
      v10 = v12;
      if ((v11 & 1) == 0)
      {
        NSLog(&cfstr_Uiprintpanelvi.isa, v12);

        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)removeShareablePDFFiles
{
  shareablePDFDirectoryPath = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];

  if (shareablePDFDirectoryPath)
  {
    v4 = objc_opt_new();
    shareablePDFDirectoryPath2 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
    v6 = [v4 fileExistsAtPath:shareablePDFDirectoryPath2];

    if (v6)
    {
      shareablePDFDirectoryPath3 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
      v10 = 0;
      v8 = [v4 removeItemAtPath:shareablePDFDirectoryPath3 error:&v10];
      v9 = v10;

      if ((v8 & 1) == 0)
      {
        NSLog(&cfstr_Uiprintpreview_2.isa, v9);
      }
    }

    [(UIPrintPanelViewController *)self setShareablePDFDirectoryPath:0];
  }
}

- (UIViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end