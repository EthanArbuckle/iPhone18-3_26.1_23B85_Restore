@interface UIPrintPanelViewController
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)shouldShowDuplex;
- (BOOL)shouldShowLayout;
- (BOOL)shouldShowOrientation;
- (BOOL)shouldShowPageRange;
- (BOOL)shouldShowScaling;
- (BOOL)showingVerticalPreview;
- (CGSize)preferredSizeForScene:(id)a3;
- (UIEdgeInsets)contentInsetForPreviewWithHeight:(double)a3;
- (UIPrintPanelViewController)initWithPrintInterationController:(id)a3 inParentController:(id)a4 usingSplitView:(BOOL)a5;
- (UIViewController)parentController;
- (id)controlTintColor;
- (id)createShareablePDFFileURL:(id)a3;
- (id)keyCommands;
- (id)shareableURLForPreviewing;
- (void)_presentInParentAnimated:(BOOL)a3 hostingScene:(id)a4;
- (void)addCanelButtonToNavItem:(id)a3;
- (void)addPrintShareButtonsToNavItem:(id)a3;
- (void)backButtonPressed:(id)a3;
- (void)cancelQuickLookPDFGeneration;
- (void)dealloc;
- (void)dismissKeyboard;
- (void)dismissPrintPanelWithAction:(int64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)generateQuickLookPDFWithCompletionHandler:(id)a3;
- (void)hideGeneratingPDFProgress:(id)a3;
- (void)loadView;
- (void)lookupLastUsedPrinter;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preferredContentSizeCategoryChanged;
- (void)presentPrintPanelAnimated:(BOOL)a3 hostingScene:(id)a4;
- (void)presentPrintPanelFromBarButtonItem:(id)a3 animated:(BOOL)a4;
- (void)presentPrintPanelFromRect:(CGRect)a3 inView:(id)a4 animated:(BOOL)a5;
- (void)printButtonPressed:(id)a3;
- (void)printNavigationConrollerDidDismiss;
- (void)printPanelDidDisappear;
- (void)removeShareablePDFFiles;
- (void)resetPreviewPages;
- (void)setPrinter:(id)a3;
- (void)shareButtonPress:(id)a3;
- (void)showCompactPreview;
- (void)showGeneratingPDFProgressPanel;
- (void)showSharePanelForPDFURL:(id)a3;
- (void)showsSidebarPreview;
- (void)splitViewController:(id)a3 didHideColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 didShowColumn:(int64_t)a4;
- (void)startPrinting;
- (void)updatePageCount;
- (void)updatePageRange;
- (void)updatePreviewLayoutConstraints;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIPrintPanelViewController

- (UIPrintPanelViewController)initWithPrintInterationController:(id)a3 inParentController:(id)a4 usingSplitView:(BOOL)a5
{
  v5 = a5;
  v44[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v43.receiver = self;
  v43.super_class = UIPrintPanelViewController;
  v11 = [(UIPrintPanelViewController *)&v43 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_printInteractionController, a3);
    objc_storeWeak(&v12->_parentController, v10);
    if (v5)
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

    v16 = [v9 _currentPrintInfo];
    [(UIPrintPanelViewController *)v12 setPrintInfo:v16];

    v17 = [(UIPrintPanelViewController *)v12 printInteractionController];
    v18 = [v17 paper];
    v19 = [(UIPrintPanelViewController *)v12 printInfo];
    [v19 setPrintPaper:v18];

    v20 = [(UIPrintPanelViewController *)v12 printInteractionController];
    v21 = [v20 _canShowAnnotations];
    v22 = [(UIPrintPanelViewController *)v12 printInfo];
    [v22 setPdfAnnotationsAvailable:v21];

    v23 = [(UIPrintPanelViewController *)v12 printInteractionController];
    [v23 setShowsPaperSelectionForLoadedPapers:1];

    v24 = [(UIPrintPanelViewController *)v12 printInfo];
    [v24 addObserver:v12 forKeyPath:0x2871AF150 options:0 context:0];

    v25 = [(UIPrintPanelViewController *)v12 printInfo];
    [v25 addObserver:v12 forKeyPath:0x2871AF110 options:0 context:0];

    v26 = [(UIPrintPanelViewController *)v12 printInfo];
    [v26 addObserver:v12 forKeyPath:0x2871AF1B0 options:0 context:0];

    v27 = [(UIPrintPanelViewController *)v12 printInfo];
    [v27 addObserver:v12 forKeyPath:0x2871AF290 options:0 context:0];

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v12 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    _UIPrinterInfoCancelRequests();
    v29 = [(UIPrintPanelViewController *)v12 printInteractionController];
    v30 = [v29 _currentPrintInfo];
    v31 = [v30 printerID];
    LOBYTE(v22) = v31 == 0;

    if (v22)
    {
      [(UIPrintPanelViewController *)v12 lookupLastUsedPrinter];
    }

    else
    {
      v32 = MEMORY[0x277D410A8];
      v33 = [v9 _currentPrintInfo];
      v34 = [v33 printerID];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __98__UIPrintPanelViewController_initWithPrintInterationController_inParentController_usingSplitView___block_invoke;
      v41[3] = &unk_279A9BE90;
      v42 = v12;
      [v32 printerWithName:v34 discoveryTimeout:v41 completionHandler:30.0];
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
  v3 = [(UIPrintPanelViewController *)self updatePageCountThread];
  [v3 cancel];

  v4 = [(UIPrintPanelViewController *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5 = [(UIPrintPanelViewController *)self printInfo];
  [v5 removeObserver:self forKeyPath:0x2871AF110];

  v6 = [(UIPrintPanelViewController *)self printInfo];
  [v6 removeObserver:self forKeyPath:0x2871AF1B0];

  v7 = [(UIPrintPanelViewController *)self printInfo];
  [v7 removeObserver:self forKeyPath:0x2871AF290];

  v8 = [(UIPrintPanelViewController *)self view];
  [v8 removeObserver:self forKeyPath:@"frame"];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:self];

  [(UIPrintPanelViewController *)self removeShareablePDFFiles];
  v10.receiver = self;
  v10.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v10 dealloc];
}

- (BOOL)isKindOfClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  v5 = [(UIPrintPanelViewController *)&v7 isKindOfClass:?];
  if (objc_opt_class() == a3)
  {
    return [(UIPrintPanelViewController *)self usingSplitView];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if ([v7 isEqualToString:0x2871AF150])
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

  if ([v7 isEqualToString:0x2871AF290])
  {
    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:0x2871AF1B0])
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:0x2871AF110])
  {
    v8 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v9 = __77__UIPrintPanelViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"frame"])
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"UIPrintPanelDidChangeSizeNotification" object:0 userInfo:0];

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
  v11 = [(UIPrintPanelViewController *)self printOptionsTableView];
  v12 = [(UIPrintPanelViewController *)self printInfo];
  v13 = [(UIPrintOptionsTableViewController *)v10 initWithTableView:v11 printInfo:v12 printPanelViewController:self];
  [(UIPrintPanelViewController *)self setPrintOptionsTableViewController:v13];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Options" value:@"Options" table:@"Localizable"];
  v16 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [v16 setTitle:v15];

  v17 = [UIPrintPanelNavigationController alloc];
  v18 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  v19 = [(UIPrintPanelNavigationController *)v17 initWithRootViewController:v18];
  [(UIPrintPanelViewController *)self setPrintOptionsNavController:v19];

  if ([(UIPrintPanelViewController *)self usingSplitView])
  {
    v20 = [[UIPrintPreviewContainerView alloc] initWithFrame:v5, v4, v7, v6];
    [(UIPrintPanelViewController *)self setSidebarPreviewContainerView:v20];

    v21 = [UIPrintPreviewViewController alloc];
    v22 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v23 = [(UIPrintPreviewViewController *)v21 initWithPrintPanelViewController:self useCompactPreview:0 withContainerView:v22];
    [(UIPrintPanelViewController *)self setSidebarPreviewViewController:v23];

    v24 = [objc_alloc(MEMORY[0x277D75A50]) initWithStyle:1];
    [(UIPrintPanelViewController *)self setSplitViewController:v24];

    v25 = [(UIPrintPanelViewController *)self view];
    v26 = [(UIPrintPanelViewController *)self splitViewController];
    v27 = [v26 view];
    [v25 addSubview:v27];

    v28 = [(UIPrintPanelViewController *)self splitViewController];
    v29 = [v28 view];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v92 = MEMORY[0x277CCAAD0];
    v114 = [(UIPrintPanelViewController *)self splitViewController];
    v112 = [v114 view];
    v108 = [v112 leadingAnchor];
    v110 = [(UIPrintPanelViewController *)self view];
    v106 = [v110 leadingAnchor];
    v104 = [v108 constraintEqualToAnchor:v106];
    v119[0] = v104;
    v102 = [(UIPrintPanelViewController *)self splitViewController];
    v100 = [v102 view];
    v96 = [v100 trailingAnchor];
    v98 = [(UIPrintPanelViewController *)self view];
    v94 = [v98 trailingAnchor];
    v90 = [v96 constraintEqualToAnchor:v94];
    v119[1] = v90;
    v88 = [(UIPrintPanelViewController *)self splitViewController];
    v86 = [v88 view];
    v82 = [v86 topAnchor];
    v84 = [(UIPrintPanelViewController *)self view];
    v30 = [v84 topAnchor];
    v31 = [v82 constraintEqualToAnchor:v30];
    v119[2] = v31;
    v32 = [(UIPrintPanelViewController *)self splitViewController];
    v33 = [v32 view];
    v34 = [v33 bottomAnchor];
    v35 = [(UIPrintPanelViewController *)self view];
    v36 = [v35 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v119[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:4];
    [v92 activateConstraints:v38];

    v39 = [(UIPrintPanelViewController *)self splitViewController];
    [v39 setDelegate:self];

    v40 = [(UIPrintPanelViewController *)self splitViewController];
    [v40 setPreferredDisplayMode:2];

    v41 = [(UIPrintPanelViewController *)self splitViewController];
    [v41 setPreferredSplitBehavior:1];

    v42 = [(UIPrintPanelViewController *)self splitViewController];
    [v42 setDisplayModeButtonVisibility:1];

    v43 = [(UIPrintPanelViewController *)self splitViewController];
    [v43 setPrimaryBackgroundStyle:1];

    v44 = [(UIPrintPanelViewController *)self splitViewController];
    [v44 setPreferredPrimaryColumnWidthFraction:0.3];

    v45 = [MEMORY[0x277D759A0] mainScreen];
    [v45 bounds];
    v47 = v46 * 0.3;
    v48 = [(UIPrintPanelViewController *)self splitViewController];
    [v48 setMaximumPrimaryColumnWidth:v47];

    v49 = [(UIPrintPanelViewController *)self splitViewController];
    [v49 setMinimumPrimaryColumnWidth:200.0];

    v50 = [(UIPrintPanelViewController *)self splitViewController];
    v51 = [(UIPrintPanelViewController *)self printOptionsNavController];
    [v50 setViewController:v51 forColumn:2];

    v52 = objc_alloc_init(MEMORY[0x277D75D28]);
    v53 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    [v52 setView:v53];

    v54 = [(UIPrintPanelViewController *)self splitViewController];
    v109 = v52;
    [v54 setViewController:v52 forColumn:0];

    v55 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v56 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v57 = [v56 view];
    [v55 addSubview:v57];

    v58 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    [v52 addChildViewController:v58];

    v59 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v60 = [v59 view];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

    v91 = MEMORY[0x277CCAAD0];
    v99 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v115 = [v99 view];
    v111 = [v115 topAnchor];
    v113 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v107 = [v113 topAnchor];
    v105 = [v111 constraintEqualToAnchor:v107];
    v118[0] = v105;
    v103 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v101 = [v103 view];
    v95 = [v101 bottomAnchor];
    v97 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v93 = [v97 bottomAnchor];
    v89 = [v95 constraintEqualToAnchor:v93];
    v118[1] = v89;
    v87 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v85 = [v87 view];
    v81 = [v85 leadingAnchor];
    v83 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v61 = [v83 leadingAnchor];
    v62 = [v81 constraintEqualToAnchor:v61];
    v118[2] = v62;
    v63 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v64 = [v63 view];
    v65 = [v64 trailingAnchor];
    v66 = [(UIPrintPanelViewController *)self sidebarPreviewContainerView];
    v67 = [v66 trailingAnchor];
    v68 = [v65 constraintEqualToAnchor:v67];
    v118[3] = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:4];
    [v91 activateConstraints:v69];

    v70 = v99;
    v71 = v109;
  }

  else
  {
    v71 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v4, v7, v6}];
    v72 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v71 setBackgroundColor:v72];

    [(UIPrintPanelViewController *)self setView:v71];
    v73 = [(UIPrintPanelViewController *)self printOptionsNavController];
    v70 = [v73 view];

    [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v71 addSubview:v70];
    v74 = [(UIPrintPanelViewController *)self printOptionsNavController];
    [(UIPrintPanelViewController *)self addChildViewController:v74];

    v75 = MEMORY[0x277CCAAD0];
    v76 = [MEMORY[0x277CCAAD0] constraintWithItem:v70 attribute:3 relatedBy:0 toItem:v71 attribute:3 multiplier:1.0 constant:0.0];
    v117[0] = v76;
    v77 = [MEMORY[0x277CCAAD0] constraintWithItem:v70 attribute:6 relatedBy:0 toItem:v71 attribute:6 multiplier:1.0 constant:0.0];
    v117[1] = v77;
    v78 = [MEMORY[0x277CCAAD0] constraintWithItem:v70 attribute:4 relatedBy:0 toItem:v71 attribute:4 multiplier:1.0 constant:0.0];
    v117[2] = v78;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:3];
    [v75 activateConstraints:v79];

    [(UIPrintPanelViewController *)self showCompactPreview];
  }

  v80 = [(UIPrintPanelViewController *)self view];
  [v80 addObserver:self forKeyPath:@"frame" options:0 context:0];
}

- (void)splitViewController:(id)a3 didHideColumn:(int64_t)a4
{
  if (!a4)
  {
    [(UIPrintPanelViewController *)self showCompactPreview];
  }
}

- (void)splitViewController:(id)a3 didShowColumn:(int64_t)a4
{
  if (!a4)
  {
    [(UIPrintPanelViewController *)self showsSidebarPreview];
  }
}

- (void)showCompactPreview
{
  v151[4] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintPanelViewController *)self compactPreviewViewController];

  if (!v3)
  {
    v4 = [UIPrintPreviewContainerView alloc];
    v5 = [(UIPrintPreviewContainerView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(UIPrintPanelViewController *)self setCompactPreviewContainerView:v5];

    v6 = [UIPrintPreviewViewController alloc];
    v7 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v8 = [(UIPrintPreviewViewController *)v6 initWithPrintPanelViewController:self useCompactPreview:1 withContainerView:v7];
    [(UIPrintPanelViewController *)self setCompactPreviewViewController:v8];

    v9 = [(UIPrintPanelViewController *)self usingSplitView];
    v10 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [v10 setHidden:v9];

    v11 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (_UISolariumEnabled())
    {
      v12 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
      v13 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [v13 setBackgroundColor:v12];

      v14 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:10];
      v15 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [v15 _setBackground:v14];
    }

    else
    {
      v14 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
      v15 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      [v15 setBackgroundColor:v14];
    }

    v16 = [(UIPrintPanelViewController *)self view];
    v17 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [v16 addSubview:v17];

    v18 = [MEMORY[0x277D759A0] mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v20, v20}];
    [(UIPrintPanelViewController *)self setPreviewHorizSeparatorView:v21];

    v22 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    v23 = [MEMORY[0x277D75348] separatorColor];
    v24 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [v24 setBackgroundColor:v23];

    v25 = 0;
    if (_UISolariumEnabled())
    {
      v25 = [(UIPrintPanelViewController *)self showingVerticalPreview];
    }

    v26 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [v26 setHidden:v25];

    v27 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v28 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    [v27 addSubview:v28];

    v115 = MEMORY[0x277CCAAD0];
    v142 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    v133 = [v142 leadingAnchor];
    v138 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v130 = [v138 leadingAnchor];
    v127 = [v133 constraintEqualToAnchor:v130];
    v151[0] = v127;
    v124 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    v118 = [v124 trailingAnchor];
    v121 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v112 = [v121 trailingAnchor];
    v29 = [v118 constraintEqualToAnchor:v112];
    v151[1] = v29;
    v30 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    v31 = [v30 bottomAnchor];
    v32 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v151[2] = v34;
    v35 = MEMORY[0x277CCAAD0];
    v36 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    v37 = [v35 constraintWithItem:v36 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v151[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
    [v115 activateConstraints:v38];

    v39 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v20, v20}];
    [(UIPrintPanelViewController *)self setPreviewVertSeparatorView:v39];

    v40 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = [MEMORY[0x277D75348] separatorColor];
    v42 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [v42 setBackgroundColor:v41];

    v43 = _UISolariumEnabled();
    v44 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [v44 setHidden:v43];

    v45 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v46 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    [v45 addSubview:v46];

    v116 = MEMORY[0x277CCAAD0];
    v143 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    v134 = [v143 topAnchor];
    v139 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v131 = [v139 topAnchor];
    v128 = [v134 constraintEqualToAnchor:v131];
    v150[0] = v128;
    v125 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    v119 = [v125 bottomAnchor];
    v122 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v113 = [v122 bottomAnchor];
    v47 = [v119 constraintEqualToAnchor:v113];
    v150[1] = v47;
    v48 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    v49 = [v48 leadingAnchor];
    v50 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v51 = [v50 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v150[2] = v52;
    v53 = MEMORY[0x277CCAAD0];
    v54 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
    v55 = [v53 constraintWithItem:v54 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v150[3] = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
    [v116 activateConstraints:v56];

    v135 = MEMORY[0x277CCAAD0];
    v144 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v140 = [v144 leadingAnchor];
    v57 = [(UIPrintPanelViewController *)self view];
    v58 = [v57 leadingAnchor];
    v59 = [v140 constraintEqualToAnchor:v58];
    v149[0] = v59;
    v60 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v61 = [v60 bottomAnchor];
    v62 = [(UIPrintPanelViewController *)self view];
    v63 = [v62 bottomAnchor];
    v64 = [v61 constraintEqualToAnchor:v63];
    v149[1] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
    [v135 activateConstraints:v65];

    v66 = [(UIPrintPanelViewController *)self printOptionsNavController];
    v67 = [v66 view];

    v68 = [MEMORY[0x277CCAAD0] constraintWithItem:v67 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:333.0];
    [(UIPrintPanelViewController *)self setPrintOptionsWidthConstraint:v68];

    v141 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v136 = [v141 topAnchor];
    v69 = [(UIPrintPanelViewController *)self view];
    v70 = [v69 topAnchor];
    v71 = [v136 constraintEqualToAnchor:v70];
    v148[0] = v71;
    v72 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v73 = [v72 trailingAnchor];
    v145 = v67;
    v74 = [v67 leadingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    v148[1] = v75;
    v76 = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
    v148[2] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
    [(UIPrintPanelViewController *)self setVertScrollPrintPanelConstraints:v77];

    v78 = MEMORY[0x277CCAAD0];
    v79 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v80 = [v78 constraintWithItem:v79 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:250.0];
    [(UIPrintPanelViewController *)self setPreviewHeightConstraint:v80];

    if ([(UIPrintPanelViewController *)self usingSplitView])
    {
      v81 = [(UIPrintPanelViewController *)self view];
      v82 = [v81 leadingAnchor];
      v83 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      v84 = [v83 leadingAnchor];
      v85 = [v82 constraintEqualToAnchor:v84];
      [(UIPrintPanelViewController *)self setPrintOptionsLeadingConstraint:v85];
    }

    else
    {
      v81 = [v145 leadingAnchor];
      v82 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
      v83 = [v82 leadingAnchor];
      v84 = [v81 constraintEqualToAnchor:v83];
      [(UIPrintPanelViewController *)self setPrintOptionsLeadingConstraint:v84];
    }

    v86 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v87 = [v86 trailingAnchor];
    v88 = [(UIPrintPanelViewController *)self view];
    v89 = [v88 trailingAnchor];
    v90 = [v87 constraintEqualToAnchor:v89];
    v147[0] = v90;
    v91 = [(UIPrintPanelViewController *)self previewHeightConstraint];
    v147[1] = v91;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
    [(UIPrintPanelViewController *)self setHorizScrollPrintPanelConstraints:v92];

    v93 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    v94 = [v93 collectionView];

    v95 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [v95 addSubview:v94];

    v96 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    [(UIPrintPanelViewController *)self addChildViewController:v96];

    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    v111 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v132 = [v94 leadingAnchor];
    v137 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v129 = [v137 safeAreaLayoutGuide];
    v126 = [v129 leadingAnchor];
    v123 = [v132 constraintEqualToAnchor:v126];
    v146[0] = v123;
    v117 = [v94 trailingAnchor];
    v120 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v114 = [v120 trailingAnchor];
    v110 = [v117 constraintEqualToAnchor:v114];
    v146[1] = v110;
    v108 = [v94 topAnchor];
    v109 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v97 = [v109 topAnchor];
    v98 = [v108 constraintEqualToAnchor:v97];
    v146[2] = v98;
    v99 = [v94 bottomAnchor];
    v100 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    v101 = [v100 safeAreaLayoutGuide];
    v102 = [v101 bottomAnchor];
    v103 = [v99 constraintEqualToAnchor:v102];
    v146[3] = v103;
    v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:4];
    [v111 addConstraints:v104];

    if ([(UIPrintPanelViewController *)self usingSplitView])
    {
      v105 = [(UIPrintPanelViewController *)self compactPreviewViewController];
      [v105 setScrollDirection:1];
    }

    v106 = [(UIPrintPanelViewController *)self view];
    [v106 setNeedsUpdateConstraints];
  }

  v107 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
  [v107 setHidden:0];
}

- (void)showsSidebarPreview
{
  v3 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
  [v3 setHidden:1];

  v13 = [(UIPrintPanelViewController *)self previewHeightConstraint];
  [v13 constant];
  [(UIPrintPanelViewController *)self contentInsetForPreviewWithHeight:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIPrintPanelViewController *)self printOptionsTableView];
  [v12 setContentInset:{v5, v7, v9, v11}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [v5 updatePrintPreviewPages:0];

  v6 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [v6 updatePrintPreviewPages:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v7 viewWillAppear:a3];
  v4 = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    [v4 setNavigationBarHidden:1];
  }

  v5 = [(UIPrintPanelViewController *)self splitViewController];
  v6 = [v5 isShowingColumn:0];

  if ((v6 & 1) == 0)
  {
    [(UIPrintPanelViewController *)self showCompactPreview];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = UIPrintPanelViewController;
  [(UIPrintPanelViewController *)&v8 viewDidDisappear:a3];
  v4 = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    [v4 setNavigationBarHidden:0];
  }

  v5 = [(UIPrintPanelViewController *)self compactPreviewViewController];
  if ([v5 showingPreviewDocumentInteractionController])
  {
  }

  else
  {
    v6 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
    v7 = [v6 showingPreviewDocumentInteractionController];

    if ((v7 & 1) == 0)
    {
      [(UIPrintPanelViewController *)self printPanelDidDisappear];
    }
  }
}

- (void)preferredContentSizeCategoryChanged
{
  v3 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [v3 resetAllPages];

  v4 = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [v4 resetAllPages];
}

- (BOOL)showingVerticalPreview
{
  v3 = [(UIPrintPanelViewController *)self view];
  [v3 frame];
  v5 = v4 > 500.0;

  if ([(UIPrintPanelViewController *)self usingSplitView])
  {
    v6 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    if (v6)
    {
      v7 = [(UIPrintPanelViewController *)self splitViewController];
      v5 = [v7 isShowingColumn:0];
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
  v3 = [(UIPrintPanelViewController *)self compactPreviewViewController];

  if (v3)
  {
    v4 = [(UIPrintPanelViewController *)self showingVerticalPreview];
    v5 = [(UIPrintPanelViewController *)self view];
    [v5 frame];
    if (v4)
    {
      v8 = v6 * 0.6667;

      v9 = 333.0;
      if (v8 >= 333.0)
      {
        v9 = v8;
      }

      v10 = v9;
      v11 = floorf(v10);
      v5 = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
      [v5 setConstant:v11];
    }

    else
    {
      v12 = v7 * 0.38;
      v13 = floorf(v12);
      v14 = [(UIPrintPanelViewController *)self compactPreviewViewController];
      [v14 headerHeight];
      v16 = v15 + v13;
      v17 = [(UIPrintPanelViewController *)self previewHeightConstraint];
      [v17 setConstant:v16];
    }

    v18 = [(UIPrintPanelViewController *)self showingVerticalPreview];
    v19 = MEMORY[0x277CCAAD0];
    if (v18)
    {
      v20 = [(UIPrintPanelViewController *)self horizScrollPrintPanelConstraints];
      [v19 deactivateConstraints:v20];

      v21 = [(UIPrintPanelViewController *)self printOptionsLeadingConstraint];
      [v21 setActive:0];

      v22 = MEMORY[0x277CCAAD0];
      v23 = [(UIPrintPanelViewController *)self vertScrollPrintPanelConstraints];
      [v22 activateConstraints:v23];

      v24 = [(UIPrintPanelViewController *)self previewHorizSeparatorView];
      [v24 setHidden:1];

      v25 = _UISolariumEnabled();
      [(UIPrintPanelViewController *)self previewVertSeparatorView];
    }

    else
    {
      v26 = [(UIPrintPanelViewController *)self vertScrollPrintPanelConstraints];
      [v19 deactivateConstraints:v26];

      v27 = MEMORY[0x277CCAAD0];
      v28 = [(UIPrintPanelViewController *)self horizScrollPrintPanelConstraints];
      [v27 activateConstraints:v28];

      v29 = [(UIPrintPanelViewController *)self printOptionsLeadingConstraint];
      [v29 setActive:1];

      v30 = [(UIPrintPanelViewController *)self previewVertSeparatorView];
      [v30 setHidden:1];

      v25 = _UISolariumEnabled();
      [(UIPrintPanelViewController *)self previewHorizSeparatorView];
    }
    v31 = ;
    [v31 setHidden:v25];

    v41 = [(UIPrintPanelViewController *)self previewHeightConstraint];
    [v41 constant];
    [(UIPrintPanelViewController *)self contentInsetForPreviewWithHeight:?];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [(UIPrintPanelViewController *)self printOptionsTableView];
    [v40 setContentInset:{v33, v35, v37, v39}];
  }
}

- (UIEdgeInsets)contentInsetForPreviewWithHeight:(double)a3
{
  v3 = a3;
  if (a3 == 0.0)
  {
    v5 = [(UIPrintPanelViewController *)self compactPreviewContainerView];
    [v5 bounds];
    v3 = v6;
  }

  v7 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 24);
  if ([(UIPrintPanelViewController *)self showingVerticalPreview])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3 + -40.0;
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
    v3 = [(UIPrintPanelViewController *)self showingVerticalPreview];
    v4 = [(UIPrintPanelViewController *)self compactPreviewViewController];
    [v4 setScrollDirection:!v3];

    v5 = [(UIPrintPanelViewController *)self view];
    [v5 setNeedsUpdateConstraints];
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

  v6 = [(UIPrintPanelViewController *)self updatePageCountThread];
  [v6 setName:@"com.apple.UIKit.UIPrintPreviewViewController.updatePageCountThread"];

  v7 = [(UIPrintPanelViewController *)self updatePageCountThread];
  [v7 start];

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
    v6 = [(UIPrintPanelViewController *)self printInfo];
    v3 = [v6 pageRanges];
    v4 = [v3 copy];
    v5 = [(UIPrintPanelViewController *)self printInteractionController];
    [v5 setPageRanges:v4];
  }
}

- (id)controlTintColor
{
  v2 = [(UIPrintPanelViewController *)self view];
  v3 = [v2 tintColor];

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.iBooks"];

  if (v6)
  {
    v7 = [MEMORY[0x277D75348] systemBlueColor];

    v3 = v7;
  }

  return v3;
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

- (void)backButtonPressed:(id)a3
{
  v5 = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)printButtonPressed:(id)a3
{
  v4 = [(UIPrintPanelViewController *)self printInfo];
  v5 = [v4 currentPrinter];

  if (v5)
  {
    v6 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
    v7 = [v6 canDismissPrintOptions];

    if (v7)
    {

      [(UIPrintPanelViewController *)self startPrinting];
    }
  }
}

- (void)dismissKeyboard
{
  v2 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [v2 dismissKeyboard];
}

- (void)resetPreviewPages
{
  v3 = [(UIPrintPanelViewController *)self sidebarPreviewViewController];
  [v3 resetAllPages];

  v4 = [(UIPrintPanelViewController *)self compactPreviewViewController];
  [v4 resetAllPages];
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

      v7 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      v8 = MEMORY[0x277D750F8];
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"PRINT_INTERACTION_CANCEL_BUTTON" value:@"Cancel" table:@"Localizable"];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__UIPrintPanelViewController_showGeneratingPDFProgressPanel__block_invoke;
      v18[3] = &unk_279A9CA70;
      v18[4] = self;
      v11 = [v8 actionWithTitle:v10 style:1 handler:v18];
      [v7 addAction:v11];

      v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v12 startAnimating];
      v13 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      v14 = [v13 view];

      [v14 addSubview:v12];
      v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v14 attribute:9 multiplier:1.0 constant:0.0];
      [v14 addConstraint:v15];

      v16 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v14 attribute:10 multiplier:1.0 constant:0.0];
      [v14 addConstraint:v16];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(UIPrintPanelViewController *)self setProgressPresentationTime:?];
      v17 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
      [(UIPrintPanelViewController *)self presentViewController:v17 animated:1 completion:0];
    }
  }
}

- (void)showSharePanelForPDFURL:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UIPrintPanelViewController *)self createShareablePDFFileURL:v4];
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

    v11 = [(UIPrintPanelViewController *)self activityViewController];
    v12 = [(UIPrintPanelViewController *)self printInfo];
    v13 = [v12 jobName];
    [v11 setValue:v13 forKey:@"subject"];

    v14 = [(UIPrintPanelViewController *)self activityViewController];
    [v14 setExcludedActivityTypes:&unk_2871BC230];

    v15 = [(UIPrintPanelViewController *)self printInteractionController];
    v16 = [v15 isContentManaged];
    v17 = [(UIPrintPanelViewController *)self activityViewController];
    [v17 setIsContentManaged:v16];

    v18 = [MEMORY[0x277D75418] currentDevice];
    LOBYTE(v16) = [v18 userInterfaceIdiom] == 0;

    if ((v16 & 1) == 0)
    {
      v19 = [(UIPrintPanelViewController *)self activityViewController];
      [v19 setModalPresentationStyle:7];

      v20 = [(UIPrintPanelViewController *)self activityViewController];
      v21 = [v20 popoverPresentationController];

      v22 = [(UIPrintPanelViewController *)self shareButton];
      [v21 setBarButtonItem:v22];

      [v21 setPermittedArrowDirections:1];
    }

    objc_initWeak(location, self);
    v23 = [(UIPrintPanelViewController *)self activityViewController];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __54__UIPrintPanelViewController_showSharePanelForPDFURL___block_invoke;
    v28 = &unk_279A9C860;
    objc_copyWeak(&v29, location);
    [v23 setCompletionWithItemsHandler:&v25];

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

- (void)shareButtonPress:(id)a3
{
  v4 = a3;
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

- (void)hideGeneratingPDFProgress:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__UIPrintPanelViewController_hideGeneratingPDFProgress___block_invoke;
  v7[3] = &unk_279A9BF78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
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

- (void)addPrintShareButtonsToNavItem:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D751E0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"printer"];
  v8 = [v6 initWithImage:v7 style:2 target:self action:sel_printButtonPressed_];

  v9 = [(UIPrintPanelViewController *)self printInfo];
  v10 = [v9 currentPrinter];
  [v8 setEnabled:v10 != 0];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_shareButtonPress_];
  [(UIPrintPanelViewController *)self setShareButton:v11];

  v12 = [(UIPrintPanelViewController *)self printInteractionController];
  LODWORD(v10) = [v12 preventPDFCreation];
  v13 = [(UIPrintPanelViewController *)self shareButton];
  [v13 setEnabled:v10 ^ 1];

  v14 = [MEMORY[0x277D751E0] fixedSpaceItemOfWidth:{0.0, v8}];
  v17[1] = v14;
  v15 = [(UIPrintPanelViewController *)self shareButton];
  v17[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v5 setRightBarButtonItems:v16];
}

- (void)addCanelButtonToNavItem:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UIPrintPanelViewController *)self parentController];
  if ([(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    v6 = [v5 viewControllers];
    if ([v6 count] < 2)
    {
      v9 = 0;
    }

    else
    {
      v7 = [v6 objectAtIndex:{objc_msgSend(v6, "count") - 2}];
      v8 = v7;
      if (v7 == self)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v11 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];
      }

      else
      {
        v9 = [(UIPrintPanelViewController *)v7 title];
      }

      if (v9)
      {
        v12 = [(UIPrintPanelViewController *)self printOptionsWidthConstraint];
        [v12 constant];
        v14 = v13;

        if (v14 > 433.0)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];

    v9 = v16;
LABEL_11:
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:0 target:self action:sel_backButtonPressed_];
    [v10 _setShowsBackButtonIndicator:1];
    goto LABEL_12;
  }

  v9 = [MEMORY[0x277D755D0] configurationWithWeight:6];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v9];
  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:self action:sel_cancelButtonPressed_];
LABEL_12:

  v18[0] = v10;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v4 setLeftBarButtonItems:v17];
}

- (void)setPrinter:(id)a3
{
  v4 = a3;
  v5 = [v4 pkPrinter];
  _UIPrinterInfoCancelRequest(v5);
  v6 = [(UIPrintPanelViewController *)self printInteractionController];
  [v6 setPrinter:v5];

  v7 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  [v7 setCurrentPrinter:v4];

  v8 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
  v9 = v8;
  if (v4)
  {
    [v8 setShowContactingPrinter:1];

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__0;
    v31 = __Block_byref_object_dispose__0;
    v32 = v5;
    v10 = v28[5];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __41__UIPrintPanelViewController_setPrinter___block_invoke;
    v26[3] = &unk_279A9CAC0;
    v26[4] = self;
    v26[5] = &v27;
    _UIPrintInfoPrinterLookup(v10, v26);
    v11 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
    [v11 setShowingGatheringPrinterInfo:1];

    v12 = [v4 pkPrinter];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__UIPrintPanelViewController_setPrinter___block_invoke_2;
    v25[3] = &unk_279A9C090;
    v25[4] = self;
    State = _UIPrinterInfoGetState(v12, v25);

    if (State)
    {
      v14 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
      [v14 setShowingGatheringPrinterInfo:0];
      if (State == 1)
      {

        v15 = [v4 pkPrinter];
        v16 = [v15 printInfoSupported];
        v17 = [(UIPrintPanelViewController *)self printInfo];
        v18 = [v17 currentPrinter];
        [v18 setPrinterInfoDict:v16];

        v14 = [(UIPrintPanelViewController *)self printInteractionController];
        v19 = [v14 paper];
        v20 = [(UIPrintPanelViewController *)self printInfo];
        [v20 setPrintPaper:v19];
      }
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    [v8 setShowContactingPrinter:0];
  }

  v21 = [(UIPrintPanelViewController *)self printOptionsNavController];
  v22 = [v21 topViewController];
  v23 = [v22 navigationItem];
  v24 = [v23 rightBarButtonItem];
  [v24 setEnabled:v4 != 0];
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
  v3 = [(UIPrintPanelViewController *)self lastUsedPrinterArray];

  if (!v3)
  {
    v4 = [MEMORY[0x277D41090] lastUsedPrinters];
    [(UIPrintPanelViewController *)self setLastUsedPrinterArray:v4];
  }

  if ([(UIPrintPanelViewController *)self lastUsedPrinterIndex]<= 2)
  {
    v5 = [(UIPrintPanelViewController *)self lastUsedPrinterArray];
    v6 = [v5 count];
    v7 = [(UIPrintPanelViewController *)self lastUsedPrinterIndex];

    if (v6 > v7)
    {
      v8 = [(UIPrintPanelViewController *)self lastUsedPrinterArray];
      v9 = [v8 objectAtIndex:{-[UIPrintPanelViewController lastUsedPrinterIndex](self, "lastUsedPrinterIndex")}];

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
    v3 = [(UIPrintPanelViewController *)self printInteractionController];
    [v3 _printPanelWillDismissWithAction:0];

    [(UIPrintPanelViewController *)self setDismissed:1];
    _UIPrinterInfoCancelRequests();
    v4 = [(UIPrintPanelViewController *)self printOptionsNavController];
    v5 = [v4 topViewController];
    v6 = [(UIPrintPanelViewController *)self printOptionsTableViewController];

    if (v5 != v6)
    {
      v7 = [(UIPrintPanelViewController *)self printOptionsNavController];
      v8 = [(UIPrintPanelViewController *)self printOptionsTableViewController];
      v9 = [v7 popToViewController:v8 animated:0];
    }

    v10 = [(UIPrintPanelViewController *)self printPanelWindow];
    [v10 setHidden:1];

    v11 = [(UIPrintPanelViewController *)self printInteractionController];
    [v11 _printPanelDidDismissWithAction:0];

    [(UIPrintPanelViewController *)self setPrintInteractionController:0];
  }
}

- (void)printPanelDidDisappear
{
  if (![(UIPrintPanelViewController *)self dismissed])
  {
    v8 = [(UIPrintPanelViewController *)self parentController];
    if ([(UIPrintPanelViewController *)self presentingInParentNavController])
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v5 = [v4 topViewController];

    if (v5 == self)
    {
      [(UIPrintPanelViewController *)self dismissPrintPanelWithAction:0 animated:0 completionHandler:0];
    }

    else
    {
      v6 = [v4 viewControllers];
      v7 = [v6 containsObject:self];

      if ((v7 & 1) == 0)
      {
        [(UIPrintPanelViewController *)self printNavigationConrollerDidDismiss];
      }
    }
  }
}

- (BOOL)shouldShowPageRange
{
  v2 = [(UIPrintPanelViewController *)self printInteractionController];
  v3 = [v2 _canShowPageRange];

  return v3;
}

- (BOOL)shouldShowDuplex
{
  v2 = [(UIPrintPanelViewController *)self printInteractionController];
  v3 = [v2 _canShowDuplex];

  return v3;
}

- (BOOL)shouldShowOrientation
{
  v2 = [(UIPrintPanelViewController *)self printInteractionController];
  v3 = [v2 _canShowOrientation];

  return v3;
}

- (BOOL)shouldShowScaling
{
  v2 = [(UIPrintPanelViewController *)self printInteractionController];
  v3 = [v2 _canShowScaling];

  return v3;
}

- (BOOL)shouldShowLayout
{
  v2 = [(UIPrintPanelViewController *)self printInteractionController];
  v3 = [v2 _canShowLayout];

  return v3;
}

- (void)startPrinting
{
  v3 = [(UIPrintPanelViewController *)self printInfo];
  v4 = [v3 currentPrinter];
  v5 = [v4 _printerID];
  v6 = [(UIPrintPanelViewController *)self printInteractionController];
  v7 = [v6 _currentPrintInfo];
  [v7 setPrinterID:v5];

  [(UIPrintPanelViewController *)self dismissPrintPanelWithAction:1 animated:1 completionHandler:0];
}

- (CGSize)preferredSizeForScene:(id)a3
{
  v4 = [a3 screen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  if (v8 <= v6)
  {
    v14 = v6 * 0.66667;
    v6 = floorf(v14);
    v15 = [(UIPrintPanelViewController *)self view];
    [v15 frame];
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
    v9 = [(UIPrintPanelViewController *)self view];
    [v9 frame];
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

- (void)_presentInParentAnimated:(BOOL)a3 hostingScene:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIPrintPanelViewController *)self parentController];
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
    v10 = [(UIPrintPanelViewController *)self parentController];
    v11 = [v10 view];
    [v11 frame];
    [(UIPrintPanelViewController *)self setPreferredContentSize:v12, v13];

    [v7 pushViewController:self animated:v4];
    v14 = [(UIPrintPanelViewController *)self transitionCoordinator];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __68__UIPrintPanelViewController__presentInParentAnimated_hostingScene___block_invoke_2;
    v19 = &unk_279A9CB60;
    v20 = v8;
    v15 = MEMORY[0x25F8E54A0](&v16);
    [v14 animateAlongsideTransition:&__block_literal_global_6 completion:{v15, v16, v17, v18, v19}];
  }

  else
  {
    [(UIPrintPanelViewController *)self preferredSizeForScene:v6];
    [(UIPrintPanelViewController *)self setPreferredContentSize:?];
    if (v4)
    {
      [v7 presentViewController:self withTransition:3 completion:v8];
    }

    else
    {
      [v7 presentViewController:self animated:0 completion:v8];
    }
  }
}

void __68__UIPrintPanelViewController__presentInParentAnimated_hostingScene___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) printInteractionController];
  [v1 _printPanelDidPresent];
}

- (void)presentPrintPanelAnimated:(BOOL)a3 hostingScene:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIPrintPanelViewController *)self parentController];

  if (!v7)
  {
    [(UIPrintPanelViewController *)self preferredSizeForScene:v6];
    [(UIPrintPanelViewController *)self setPreferredContentSize:?];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [MEMORY[0x277D75418] currentDevice];
    if ([v13 userInterfaceIdiom] == 1)
    {
      v14 = [v12 bundleIdentifier];
      v15 = [v14 isEqualToString:@"com.apple.mobileslideshow"];

      if (v15)
      {
        v16 = [[UIPrintPanelWindow alloc] initWithWindowScene:v6];
        [(UIPrintPanelViewController *)self setPrintPanelWindow:v16];

        v17 = *MEMORY[0x277D768D0];
        v18 = [(UIPrintPanelViewController *)self printPanelWindow];
        [v18 setWindowLevel:v17];

        v19 = objc_alloc_init(MEMORY[0x277D75D28]);
        v20 = objc_alloc(MEMORY[0x277D75D18]);
        v21 = [(UIPrintPanelViewController *)self printPanelWindow];
        [v21 frame];
        v22 = [v20 initWithFrame:?];

        [v19 setView:v22];
        v23 = [(UIPrintPanelViewController *)self printPanelWindow];
        [v23 setRootViewController:v19];

        v24 = [(UIPrintPanelViewController *)self printPanelWindow];
        [v24 addSubview:v22];

        v25 = [(UIPrintPanelViewController *)self printPanelWindow];
        [v25 makeKeyAndVisible];

        [(UIPrintPanelViewController *)self setAnimated:v4];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke;
        v31[3] = &unk_279A9BEE0;
        v31[4] = self;
        [v19 presentViewController:self withTransition:3 completion:v31];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
    }

    v26 = [v6 keyWindow];
    v27 = [v26 rootViewController];

    v28 = [v27 presentedViewController];

    if (v28)
    {
      do
      {
        v19 = [v27 presentedViewController];

        v29 = [v19 presentedViewController];

        v27 = v19;
      }

      while (v29);
    }

    else
    {
      v19 = v27;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__UIPrintPanelViewController_presentPrintPanelAnimated_hostingScene___block_invoke_2;
    v30[3] = &unk_279A9BEE0;
    v30[4] = self;
    [v19 presentViewController:self animated:v4 completion:v30];
    goto LABEL_12;
  }

  v8 = [(UIPrintPanelViewController *)self parentController];
  v9 = [v8 view];
  [v9 frame];
  [(UIPrintPanelViewController *)self setPreferredContentSize:v10, v11];

  [(UIPrintPanelViewController *)self _presentInParentAnimated:v4 hostingScene:v6];
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

- (void)presentPrintPanelFromRect:(CGRect)a3 inView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = a4;
  v11 = [(UIPrintPanelViewController *)self printInteractionController];
  v12 = [v11 hostingWindowScene];

  v13 = [(UIPrintPanelViewController *)self printInteractionController];
  v14 = [v13 _canPreviewContent];

  if (v14)
  {
    [(UIPrintPanelViewController *)self presentPrintPanelAnimated:v5 hostingScene:v12];
  }

  else
  {
    v15 = [(UIPrintPanelViewController *)self parentController];

    if (v15)
    {
      [(UIPrintPanelViewController *)self _presentInParentAnimated:v5 hostingScene:v12];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self];
      [(UIPrintPanelViewController *)self setPoverController:v16];

      v17 = [(UIPrintPanelViewController *)self poverController];
      [v17 setDelegate:self];

      v18 = [(UIPrintPanelViewController *)self poverController];
      [v18 presentPopoverFromRect:v21 inView:15 permittedArrowDirections:v5 animated:{x, y, width, height}];

      v19 = [(UIPrintPanelViewController *)self printInteractionController];
      v20 = v19;
      if (v5)
      {
        [v19 performSelector:sel__printPanelDidPresent withObject:0 afterDelay:0.35];
      }

      else
      {
        [v19 _printPanelDidPresent];
      }
    }
  }
}

- (void)presentPrintPanelFromBarButtonItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  v6 = [(UIPrintPanelViewController *)self printInteractionController];
  v7 = [v6 hostingWindowScene];

  v8 = [(UIPrintPanelViewController *)self printInteractionController];
  v9 = [v8 _canPreviewContent];

  if (v9)
  {
    [(UIPrintPanelViewController *)self presentPrintPanelAnimated:v4 hostingScene:v7];
  }

  else
  {
    v10 = [(UIPrintPanelViewController *)self parentController];

    if (v10)
    {
      [(UIPrintPanelViewController *)self _presentInParentAnimated:v4 hostingScene:v7];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:self];
      [(UIPrintPanelViewController *)self setPoverController:v11];

      v12 = [(UIPrintPanelViewController *)self poverController];
      [v12 setDelegate:self];

      v13 = [(UIPrintPanelViewController *)self poverController];
      [v13 presentPopoverFromBarButtonItem:v16 permittedArrowDirections:15 animated:v4];

      v14 = [(UIPrintPanelViewController *)self printInteractionController];
      v15 = v14;
      if (v4)
      {
        [v14 performSelector:sel__printPanelDidPresent withObject:0 afterDelay:0.35];
      }

      else
      {
        [v14 _printPanelDidPresent];
      }
    }
  }
}

- (void)dismissPrintPanelWithAction:(int64_t)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(UIPrintPanelViewController *)self printInteractionController];
  [v9 _printPanelWillDismissWithAction:a3];

  [(UIPrintPanelViewController *)self setDismissed:1];
  _UIPrinterInfoCancelRequests();
  if (![(UIPrintPanelViewController *)self presentingInParentNavController])
  {
    v10 = [(UIPrintPanelViewController *)self printPanelWindow];

    if (v10)
    {
      if (v5)
      {
        v11 = 7;
      }

      else
      {
        v11 = 0;
      }

      v12 = [(UIPrintPanelViewController *)self presentingViewController];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke;
      v31[3] = &unk_279A9CBA8;
      v31[4] = self;
      v32[1] = a3;
      v13 = v32;
      v32[0] = v8;
      [v12 dismissViewControllerWithTransition:v11 completion:v31];
    }

    else
    {
      v12 = [(UIPrintPanelViewController *)self presentingViewController];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __85__UIPrintPanelViewController_dismissPrintPanelWithAction_animated_completionHandler___block_invoke_2;
      v29[3] = &unk_279A9CBA8;
      v29[4] = self;
      v30[1] = a3;
      v13 = v30;
      v30[0] = v8;
      [v12 dismissViewControllerAnimated:v5 completion:v29];
    }
  }

  v14 = [(UIPrintPanelViewController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = [(UIPrintPanelViewController *)self parentController];
    v17 = [(UIPrintPanelViewController *)self printInteractionController];
    v18 = [v17 printActivityDelegate];

    v19 = a3 != 0;
    if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [(UIPrintPanelViewController *)self printInteractionController];
      v19 = [v18 shouldDismissParentViewController:v20];
    }

    else
    {
      v21 = [v16 _popoverController];
      if (v21)
      {
      }

      else
      {
        v22 = [MEMORY[0x277D75418] currentDevice];
        v23 = [v22 userInterfaceIdiom];

        if (v23)
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
    v28 = a3;
    v27 = v8;
    v24 = MEMORY[0x25F8E54A0](v26);
    if (v19)
    {
      [v16 dismissViewControllerAnimated:v5 completion:v24];
    }

    else
    {
      v25 = [v16 popViewControllerAnimated:v5];
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

- (void)generateQuickLookPDFWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (![(UIPrintPanelViewController *)self quickLookPDFGenerationInProgress])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__UIPrintPanelViewController_generateQuickLookPDFWithCompletionHandler___block_invoke;
    v7[3] = &unk_279A9C428;
    objc_copyWeak(&v9, &location);
    v8 = v4;
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
  v3 = [(UIPrintPanelViewController *)self printInteractionController];
  [v3 _cancelAllPreviewGeneration];

  [(UIPrintPanelViewController *)self setQuickLookPDFGenerationCancelled:1];
  [(UIPrintPanelViewController *)self setQuickLookPDFGenerationInProgress:0];
  v4 = [(UIPrintPanelViewController *)self pdfCreationProgressController];

  if (v4)
  {
    v5 = [(UIPrintPanelViewController *)self pdfCreationProgressController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)shareableURLForPreviewing
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintPanelViewController *)self printInfo];
  v4 = [v3 jobName];
  v5 = [v4 stringByStandardizingPath];

  if (!v5 || ![v5 length])
  {
    v6 = GetDefaultJobName();

    v5 = v6;
  }

  v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  if ([v8 length] >= 0x51)
  {
    v9 = [v8 substringToIndex:80];

    v8 = v9;
  }

  v10 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];

  if ((v10 || (memset(out, 0, sizeof(out)), uuid_generate_random(out), uuid_unparse(out, v24), v16 = MEMORY[0x277CCACA8], NSTemporaryDirectory(), v17 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithUTF8String:v24], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringWithFormat:", @"%@/PrintPreviewPDF/%@", v17, v18), v19 = objc_claimAutoreleasedReturnValue(), -[UIPrintPanelViewController setShareablePDFDirectoryPath:](self, "setShareablePDFDirectoryPath:", v19), v19, v18, v17, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v20 = objc_claimAutoreleasedReturnValue(), -[UIPrintPanelViewController shareablePDFDirectoryPath](self, "shareablePDFDirectoryPath"), v21 = objc_claimAutoreleasedReturnValue(), v23 = 0, objc_msgSend(v20, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v21, 1, 0, &v23), v11 = v23, v21, v20, !v11)) && (-[UIPrintPanelViewController shareablePDFDirectoryPath](self, "shareablePDFDirectoryPath"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
    v14 = [v12 stringWithFormat:@"%@/%@.pdf", v13, v8];

    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];

    v11 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)createShareablePDFFileURL:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintPanelViewController *)self shareableURLForPreviewing];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtURL:v6 error:0];
    v15 = 0;
    v8 = [v7 linkItemAtURL:v4 toURL:v6 error:&v15];
    v9 = v15;
    v10 = v9;
    if ((v8 & 1) == 0)
    {

      v14 = 0;
      v11 = [v7 copyItemAtURL:v4 toURL:v6 error:&v14];
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
  v3 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [(UIPrintPanelViewController *)self shareablePDFDirectoryPath];
      v10 = 0;
      v8 = [v4 removeItemAtPath:v7 error:&v10];
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