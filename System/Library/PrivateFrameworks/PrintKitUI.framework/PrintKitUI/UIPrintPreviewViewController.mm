@interface UIPrintPreviewViewController
- (BOOL)canAddAllPages:(id)pages;
- (BOOL)canAddPage:(id)page forPageIndex:(int64_t)index;
- (BOOL)canRemovePage:(id)page forPageIndex:(int64_t)index;
- (BOOL)canSetEndPage:(id)page forPageIndex:(int64_t)index;
- (BOOL)canSetStartPage:(id)page forPageIndex:(int64_t)index;
- (BOOL)canShowMenuBar;
- (BOOL)pageIndexIsInRange:(int64_t)range;
- (BOOL)showPageRange;
- (CGPoint)pinchGestureLastPoint;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)maxThumbnailSize;
- (CGSize)previewViewSize;
- (CGSize)thumbnailSizeForPageIndex:(int64_t)index;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIPrintInteractionController)printInteractionController;
- (UIPrintPanelViewController)printPanelViewController;
- (UIPrintPreviewViewController)initWithPrintPanelViewController:(id)controller useCompactPreview:(BOOL)preview withContainerView:(id)view;
- (double)headerHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)createGeneratingPDFProgressView:(CGRect)view;
- (id)printPagePreviewActionItemsWithPageIndex:(int64_t)index;
- (id)printPagePreviewViewControllerForItemAtPageIndex:(int64_t)index;
- (int64_t)positionForBar:(id)bar;
- (void)addAllPages:(id)pages;
- (void)addPage:(id)page forPageIndex:(int64_t)index;
- (void)animateCellAndPresentDocumentInteractionController;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)documentInteractionController:(id)controller didEndSendingToApplication:(id)application;
- (void)documentInteractionControllerDidEndPreview:(id)preview;
- (void)fetchThumnailImageInBackground:(int64_t)background previewPageCell:(id)cell;
- (void)handlePinch:(id)pinch;
- (void)hideGeneratingPDFProgress:(id)progress;
- (void)hideGeneratingPreviewProgress;
- (void)layoutPopupButtonChanged:(int64_t)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageBadgeTapped:(int64_t)tapped;
- (void)performThumbnailDispatchBlock:(id)block;
- (void)removePage:(id)page forPageIndex:(int64_t)index;
- (void)resetAllPages;
- (void)scrollToBeginning;
- (void)scrollToEnd;
- (void)setEndPage:(id)page forPageIndex:(int64_t)index;
- (void)setNumberOfSheets:(int64_t)sheets;
- (void)setScrollDirection:(int64_t)direction;
- (void)setStartPage:(id)page forPageIndex:(int64_t)index;
- (void)setupCompactGeneratingPreviewProgress;
- (void)setupLayoutControl;
- (void)showGeneratingPreviewProgress;
- (void)showQuickLookDocumentInteractionController:(id)controller;
- (void)showQuickLookFromPreviewAction;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateHeaderFooters;
- (void)updateLayoutControl;
- (void)updatePageCount;
- (void)updatePageRange:(id)range;
- (void)updatePreviewViewSize;
- (void)updatePrintPreviewPages:(BOOL)pages;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIPrintPreviewViewController

- (UIPrintPreviewViewController)initWithPrintPanelViewController:(id)controller useCompactPreview:(BOOL)preview withContainerView:(id)view
{
  previewCopy = preview;
  controllerCopy = controller;
  viewCopy = view;
  v10 = [controllerCopy showingVerticalPreview] ^ 1;
  v11 = objc_alloc_init(UIPrintPreviewFlowLayout);
  [(UICollectionViewFlowLayout *)v11 setMinimumLineSpacing:12.0];
  [(UICollectionViewFlowLayout *)v11 setMinimumInteritemSpacing:12.0];
  [(UICollectionViewFlowLayout *)v11 setScrollDirection:v10];
  v40.receiver = self;
  v40.super_class = UIPrintPreviewViewController;
  v12 = [(UIPrintPreviewViewController *)&v40 initWithCollectionViewLayout:v11];
  if (v12)
  {
    [(UIPrintPreviewViewController *)v12 setSolariumEnabled:_UISolariumEnabled()];
    [(UIPrintPreviewViewController *)v12 setPrintPanelViewController:controllerCopy];
    printInteractionController = [controllerCopy printInteractionController];
    [(UIPrintPreviewViewController *)v12 setPrintInteractionController:printInteractionController];

    printInfo = [controllerCopy printInfo];
    [(UIPrintPreviewViewController *)v12 setPrintInfo:printInfo];

    [(UIPrintPreviewViewController *)v12 setContainerView:viewCopy];
    containerView = [(UIPrintPreviewViewController *)v12 containerView];
    [containerView setUsingCompactPreview:previewCopy];

    [(UIPrintPreviewViewController *)v12 setPreviewScrollDirection:v10];
    [(UIPrintPreviewViewController *)v12 setUsingCompactPreview:previewCopy];
    [(UIPrintPreviewViewController *)v12 setPreviewLayoutType:0];
    printInteractionController2 = [(UIPrintPreviewViewController *)v12 printInteractionController];
    -[UIPrintPreviewViewController setUsingWebKitFormatter:](v12, "setUsingWebKitFormatter:", [printInteractionController2 usingWebKitFormatter]);

    v17 = [UIPrintSheetController alloc];
    printInfo2 = [(UIPrintPreviewViewController *)v12 printInfo];
    printInteractionController3 = [(UIPrintPreviewViewController *)v12 printInteractionController];
    v20 = [(UIPrintSheetController *)v17 initWithPrintInfo:printInfo2 printPageImageDelegate:printInteractionController3 usingWebKitFormatter:[(UIPrintPreviewViewController *)v12 usingWebKitFormatter]];
    [(UIPrintPreviewViewController *)v12 setPrintSheetController:v20];

    [(UIPrintPreviewViewController *)v12 setNeedsNavBarShown:1];
    printInfo3 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo3 addObserver:v12 forKeyPath:0x2871AF1B0 options:0 context:0];

    printInfo4 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo4 addObserver:v12 forKeyPath:0x2871AF110 options:0 context:0];

    printInfo5 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo5 addObserver:v12 forKeyPath:0x2871AF1D0 options:0 context:0];

    printInfo6 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo6 addObserver:v12 forKeyPath:0x2871AF0D0 options:0 context:0];

    printInfo7 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo7 addObserver:v12 forKeyPath:0x2871AF1F0 options:0 context:0];

    printInfo8 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo8 addObserver:v12 forKeyPath:0x2871AF130 options:0 context:0];

    printInfo9 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo9 addObserver:v12 forKeyPath:0x2871AF290 options:0 context:0];

    printInfo10 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo10 addObserver:v12 forKeyPath:0x2871AF2F0 options:0 context:0];

    printInfo11 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo11 addObserver:v12 forKeyPath:0x2871AF310 options:0 context:0];

    printInfo12 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo12 addObserver:v12 forKeyPath:0x2871AF330 options:0 context:0];

    printInfo13 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo13 addObserver:v12 forKeyPath:0x2871AF350 options:0 context:0];

    printInfo14 = [(UIPrintPreviewViewController *)v12 printInfo];
    [printInfo14 addObserver:v12 forKeyPath:0x2871AF0B0 options:0 context:0];

    v33 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPreviewViewController *)v12 setCachedThumbnailImages:v33];

    cachedThumbnailImages = [(UIPrintPreviewViewController *)v12 cachedThumbnailImages];
    [cachedThumbnailImages setEvictsObjectsWhenApplicationEntersBackground:0];

    v35 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(UIPrintPreviewViewController *)v12 setThumbnailOperationsQueue:v35];

    thumbnailOperationsQueue = [(UIPrintPreviewViewController *)v12 thumbnailOperationsQueue];
    [thumbnailOperationsQueue setMaxConcurrentOperationCount:1];

    thumbnailOperationsQueue2 = [(UIPrintPreviewViewController *)v12 thumbnailOperationsQueue];
    [thumbnailOperationsQueue2 setName:@"com.apple.UIKit.UIPrintPreviewViewController.thumbnailOperationsQueue"];

    if ([(UIPrintPreviewViewController *)v12 usingWebKitFormatter])
    {
      printSheetController = [(UIPrintPreviewViewController *)v12 printSheetController];
      [printSheetController recalculateWebKitPageCount];
    }
  }

  return v12;
}

- (void)dealloc
{
  thumbnailOperationsQueue = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [thumbnailOperationsQueue cancelAllOperations];

  cachedThumbnailImages = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  [cachedThumbnailImages removeAllObjects];

  updatePageCountThread = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [updatePageCountThread cancel];

  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF1B0];

  printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF110];

  printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo3 removeObserver:self forKeyPath:0x2871AF1D0];

  printInfo4 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo4 removeObserver:self forKeyPath:0x2871AF0D0];

  printInfo5 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo5 removeObserver:self forKeyPath:0x2871AF1F0];

  printInfo6 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo6 removeObserver:self forKeyPath:0x2871AF130];

  printInfo7 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo7 removeObserver:self forKeyPath:0x2871AF290];

  printInfo8 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo8 removeObserver:self forKeyPath:0x2871AF2F0];

  printInfo9 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo9 removeObserver:self forKeyPath:0x2871AF310];

  printInfo10 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo10 removeObserver:self forKeyPath:0x2871AF330];

  printInfo11 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo11 removeObserver:self forKeyPath:0x2871AF350];

  printInfo12 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo12 removeObserver:self forKeyPath:0x2871AF0B0];

  v18.receiver = self;
  v18.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v18 dealloc];
}

- (void)setNumberOfSheets:(int64_t)sheets
{
  if (self->_numberOfSheets != sheets)
  {
    self->_numberOfSheets = sheets;
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ([pathCopy isEqualToString:0x2871AF1B0])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__UIPrintPreviewViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__UIPrintPreviewViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v8[3] = &unk_279A9BF78;
    v9 = pathCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __79__UIPrintPreviewViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 printInfo];
  v2 = [v3 pageRanges];
  [v1 updatePageRange:v2];
}

uint64_t __79__UIPrintPreviewViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:0x2871AF1D0] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", 0x2871AF0D0) & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", 0x2871AF1F0) & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", 0x2871AF130))
  {
    v2 = *(a1 + 40);

    return [v2 resetAllPages];
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:0x2871AF290])
    {
      v4 = [*(a1 + 40) printInfo];
      v5 = [v4 nUpActive];

      if (v5)
      {
        [*(a1 + 40) setPreviewLayoutType:1];
      }
    }

    v6 = *(a1 + 40);

    return [v6 updatePrintPreviewPages:1];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v13 viewDidLoad];
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView setDataSource:self];

  collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView3 setPrefetchingEnabled:1];

  collectionView4 = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView4 setPrefetchDataSource:self];

  collectionView5 = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIPrintPreviewPageCell"];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView6 = [(UIPrintPreviewViewController *)self collectionView];
  [collectionView6 setBackgroundColor:clearColor];

  printInteractionController = [(UIPrintPreviewViewController *)self printInteractionController];
  LOBYTE(collectionView6) = [printInteractionController preventPDFCreation];

  if ((collectionView6 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_handlePinch_];
    collectionView7 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView7 addGestureRecognizer:v11];
  }

  [(UIPrintPreviewViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  [(UIPrintPreviewViewController *)self resetAllPages];
}

- (void)setupLayoutControl
{
  v84[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:18.0];
  v5 = [v3 systemImageNamed:@"text.page" withConfiguration:v4];
  [(UIPrintPreviewViewController *)self setPagesImage:v5];

  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:18.0];
  v8 = [v6 systemImageNamed:@"book.pages" withConfiguration:v7];
  [(UIPrintPreviewViewController *)self setSheetsImage:v8];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Page View" value:@"Page View" table:@"Localizable"];
  pagesImage = [(UIPrintPreviewViewController *)self pagesImage];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke;
  v79[3] = &unk_279A9C688;
  objc_copyWeak(&v80, &location);
  v13 = [v9 actionWithTitle:v11 image:pagesImage identifier:0 handler:v79];
  [(UIPrintPreviewViewController *)self setPagesPopupAction:v13];

  v14 = MEMORY[0x277D750C8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Sheet View" value:@"Sheet View" table:@"Localizable"];
  sheetsImage = [(UIPrintPreviewViewController *)self sheetsImage];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke_2;
  v77[3] = &unk_279A9C688;
  objc_copyWeak(&v78, &location);
  v18 = [v14 actionWithTitle:v16 image:sheetsImage identifier:0 handler:v77];
  [(UIPrintPreviewViewController *)self setSheetsPopupAction:v18];

  v19 = MEMORY[0x277D75710];
  pagesPopupAction = [(UIPrintPreviewViewController *)self pagesPopupAction];
  v84[0] = pagesPopupAction;
  sheetsPopupAction = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  v84[1] = sheetsPopupAction;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
  v74 = [v19 menuWithTitle:&stru_2871AE610 children:v22];

  if ([(UIPrintPreviewViewController *)self solariumEnabled])
  {
    if ([(UIPrintPreviewViewController *)self usingCompactPreview])
    {
      v23 = MEMORY[0x277D75220];
      glassButtonConfiguration = [MEMORY[0x277D75230] glassButtonConfiguration];
      v25 = [v23 buttonWithConfiguration:glassButtonConfiguration primaryAction:0];
      [(UIPrintPreviewViewController *)self setLayoutGlassButton:v25];

      layoutGlassButton = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [layoutGlassButton setMenu:v74];

      layoutGlassButton2 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [layoutGlassButton2 setShowsMenuAsPrimaryAction:1];

      layoutGlassButton3 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      pagesImage2 = [(UIPrintPreviewViewController *)self pagesImage];
      [layoutGlassButton3 setImage:pagesImage2 forState:0];

      layoutGlassButton4 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [layoutGlassButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

      v31 = MEMORY[0x277CCAAD0];
      layoutGlassButton5 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      widthAnchor = [layoutGlassButton5 widthAnchor];
      v33 = [widthAnchor constraintEqualToConstant:44.0];
      v82[0] = v33;
      layoutGlassButton6 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      heightAnchor = [layoutGlassButton6 heightAnchor];
      layoutGlassButton7 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      widthAnchor2 = [layoutGlassButton7 widthAnchor];
      v38 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
      v82[1] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
      [v31 activateConstraints:v39];

      containerView = [(UIPrintPreviewViewController *)self containerView];
      layoutGlassButton8 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [containerView addSubview:layoutGlassButton8];

      layoutGlassButton9 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      containerView2 = [(UIPrintPreviewViewController *)self containerView];
      [containerView2 setLayoutGlassButton:layoutGlassButton9];
    }

    else
    {
      v72 = objc_alloc(MEMORY[0x277D751E0]);
      layoutGlassButton9 = [(UIPrintPreviewViewController *)self pagesImage];
      containerView2 = [v72 initWithImage:layoutGlassButton9 menu:v74];
      [(UIPrintPreviewViewController *)self setLayoutBarButton:containerView2];
    }
  }

  else
  {
    layoutGlassButton9 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [layoutGlassButton9 setIndicator:2];
    [layoutGlassButton9 setTitleLineBreakMode:4];
    v43 = [MEMORY[0x277D75220] buttonWithConfiguration:layoutGlassButton9 primaryAction:0];
    [(UIPrintPreviewViewController *)self setLayoutPopupButton:v43];

    layoutPopupButton = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton setMenu:v74];

    layoutPopupButton2 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton2 setShowsMenuAsPrimaryAction:1];

    layoutPopupButton3 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton3 setChangesSelectionAsPrimaryAction:1];

    layoutPopupButton4 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    labelColor = [MEMORY[0x277D75348] labelColor];
    layoutPopupButton5 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton5 setTintColor:labelColor];

    layoutPopupButton6 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton6 setHidden:1];

    containerView3 = [(UIPrintPreviewViewController *)self containerView];
    layoutPopupButton7 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [containerView3 addSubview:layoutPopupButton7];

    layoutPopupButton8 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    topAnchor = [layoutPopupButton8 topAnchor];
    containerView4 = [(UIPrintPreviewViewController *)self containerView];
    topAnchor2 = [containerView4 topAnchor];
    [(UIPrintPreviewViewController *)self headerHeight];
    v58 = v57;
    layoutPopupButton9 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton9 frame];
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:(v58 - v60) * 0.5];
    [(UIPrintPreviewViewController *)self setLayoutPopupButtonTopConstraint:v61];

    containerView2 = [(UIPrintPreviewViewController *)self containerView];
    layoutPopupButtonTopConstraint = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
    v83[0] = layoutPopupButtonTopConstraint;
    v62 = MEMORY[0x277CCAAD0];
    layoutPopupButton10 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    containerView5 = [(UIPrintPreviewViewController *)self containerView];
    v65 = [v62 constraintWithItem:layoutPopupButton10 attribute:19 relatedBy:0 toItem:containerView5 attribute:19 multiplier:1.0 constant:0.0];
    v83[1] = v65;
    layoutPopupButton11 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    widthAnchor3 = [layoutPopupButton11 widthAnchor];
    containerView6 = [(UIPrintPreviewViewController *)self containerView];
    widthAnchor4 = [containerView6 widthAnchor];
    v70 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
    v83[2] = v70;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
    [containerView2 addConstraints:v71];
  }

  objc_destroyWeak(&v78);
  objc_destroyWeak(&v80);
  objc_destroyWeak(&location);
}

void __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutPopupButtonChanged:0];
}

void __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutPopupButtonChanged:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v4 viewWillDisappear:disappear];
  [(UIPrintPreviewViewController *)self setNeedsNavBarShown:1];
  [(UIPrintPreviewViewController *)self updateLayoutControl];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v4 viewWillAppear:appear];
  [(UIPrintPreviewViewController *)self setNeedsNavBarShown:0];
  [(UIPrintPreviewViewController *)self updateLayoutControl];
}

- (int64_t)positionForBar:(id)bar
{
  if ([(UIPrintPreviewViewController *)self usingCompactPreview])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)updateLayoutControl
{
  v91[2] = *MEMORY[0x277D85DE8];
  pagesPopupAction = [(UIPrintPreviewViewController *)self pagesPopupAction];

  if (!pagesPopupAction)
  {
    [(UIPrintPreviewViewController *)self setupLayoutControl];
  }

  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];
  v6 = [pageRanges count];

  printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges2 = [printInfo2 pageRanges];
  v9 = pageRanges2;
  if (v6 == 1)
  {
    v10 = [pageRanges2 objectAtIndex:0];
    [v10 rangeValue];
    v12 = v11;

    printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
    v13 = v12 != [printInfo2 pageCount];
  }

  else
  {
    v13 = [pageRanges2 count] > 1;
  }

  printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
  nUpActive = [printInfo3 nUpActive];

  if ((nUpActive & 1) == 0 && (![(UIPrintPreviewViewController *)self showPageRange]|| !v13))
  {
    [(UIPrintPreviewViewController *)self setPreviewLayoutType:0];
    v30 = 0;
    goto LABEL_30;
  }

  showingPageView = [(UIPrintPreviewViewController *)self showingPageView];
  pagesPopupAction2 = [(UIPrintPreviewViewController *)self pagesPopupAction];
  [pagesPopupAction2 setState:showingPageView];

  v18 = [(UIPrintPreviewViewController *)self showingPageView]^ 1;
  sheetsPopupAction = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  [sheetsPopupAction setState:v18];

  v20 = MEMORY[0x277D75710];
  pagesPopupAction3 = [(UIPrintPreviewViewController *)self pagesPopupAction];
  v91[0] = pagesPopupAction3;
  sheetsPopupAction2 = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  v91[1] = sheetsPopupAction2;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
  v24 = [v20 menuWithTitle:&stru_2871AE610 children:v23];

  layoutPopupButton = [(UIPrintPreviewViewController *)self layoutPopupButton];

  if (layoutPopupButton)
  {
    layoutPopupButton2 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton2 setMenu:v24];
LABEL_28:

    goto LABEL_29;
  }

  layoutGlassButton = [(UIPrintPreviewViewController *)self layoutGlassButton];

  if (layoutGlassButton)
  {
    layoutGlassButton2 = [(UIPrintPreviewViewController *)self layoutGlassButton];
    [layoutGlassButton2 setMenu:v24];

    layoutGlassButton3 = [(UIPrintPreviewViewController *)self layoutGlassButton];
    if ([(UIPrintPreviewViewController *)self showingPageView])
    {
      [(UIPrintPreviewViewController *)self pagesImage];
    }

    else
    {
      [(UIPrintPreviewViewController *)self sheetsImage];
    }
    v33 = ;
    [layoutGlassButton3 setImage:v33 forState:0];

    LODWORD(v33) = [(UIPrintPreviewViewController *)self showingPageView];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    layoutPopupButton2 = v34;
    if (v33)
    {
      v35 = @"Page View";
    }

    else
    {
      v35 = @"Sheet View";
    }

    v36 = [v34 localizedStringForKey:v35 value:v35 table:@"Localizable"];
    layoutGlassButton4 = [(UIPrintPreviewViewController *)self layoutGlassButton];
LABEL_27:
    v42 = layoutGlassButton4;
    [layoutGlassButton4 setAccessibilityLabel:v36];

    goto LABEL_28;
  }

  layoutBarButton = [(UIPrintPreviewViewController *)self layoutBarButton];

  if (layoutBarButton)
  {
    layoutBarButton2 = [(UIPrintPreviewViewController *)self layoutBarButton];
    [layoutBarButton2 setMenu:v24];

    if ([(UIPrintPreviewViewController *)self showingPageView])
    {
      [(UIPrintPreviewViewController *)self pagesImage];
    }

    else
    {
      [(UIPrintPreviewViewController *)self sheetsImage];
    }
    v38 = ;
    layoutBarButton3 = [(UIPrintPreviewViewController *)self layoutBarButton];
    [layoutBarButton3 setImage:v38];

    LODWORD(layoutBarButton3) = [(UIPrintPreviewViewController *)self showingPageView];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    layoutPopupButton2 = v40;
    if (layoutBarButton3)
    {
      v41 = @"Page View";
    }

    else
    {
      v41 = @"Sheet View";
    }

    v36 = [v40 localizedStringForKey:v41 value:v41 table:@"Localizable"];
    layoutGlassButton4 = [(UIPrintPreviewViewController *)self layoutBarButton];
    goto LABEL_27;
  }

LABEL_29:

  v30 = 1;
LABEL_30:
  if (![(UIPrintPreviewViewController *)self solariumEnabled])
  {
    layoutPopupButton3 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [layoutPopupButton3 setHidden:v30 ^ 1u];

    if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
    {
      layoutPopupButtonTopConstraint = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
      [layoutPopupButtonTopConstraint setConstant:8.0];
    }

    else
    {
      collectionView = [(UIPrintPreviewViewController *)self collectionView];
      layoutPopupButtonTopConstraint = [collectionView collectionViewLayout];

      v48 = 0.0;
      if ((v30 & 1) == 0)
      {
        [(UIPrintPreviewViewController *)self headerHeight];
        v48 = v49;
      }

      [layoutPopupButtonTopConstraint setHeaderReferenceSize:{16.0, v48}];
      [(UIPrintPreviewViewController *)self headerHeight];
      v51 = v50;
      layoutPopupButton4 = [(UIPrintPreviewViewController *)self layoutPopupButton];
      [layoutPopupButton4 frame];
      v54 = (v51 - v53) * 0.5;
      layoutPopupButtonTopConstraint2 = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
      [layoutPopupButtonTopConstraint2 setConstant:v54];
    }

    collectionViewContainerTopConstraint = [(UIPrintPreviewViewController *)self collectionViewContainerTopConstraint];

    if (!collectionViewContainerTopConstraint)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      containerView = [(UIPrintPreviewViewController *)self containerView];
      constraints = [containerView constraints];

      v59 = [constraints countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v87;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v87 != v61)
            {
              objc_enumerationMutation(constraints);
            }

            v63 = *(*(&v86 + 1) + 8 * i);
            firstAnchor = [v63 firstAnchor];
            collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
            topAnchor = [collectionView2 topAnchor];

            if (firstAnchor == topAnchor)
            {
              [(UIPrintPreviewViewController *)self setCollectionViewContainerTopConstraint:v63];
            }
          }

          v60 = [constraints countByEnumeratingWithState:&v86 objects:v90 count:16];
        }

        while (v60);
      }
    }

    v67 = 0.0;
    v68 = 0.0;
    if (v30)
    {
      [(UIPrintPreviewViewController *)self headerHeight];
      v68 = v69;
    }

    collectionViewContainerTopConstraint2 = [(UIPrintPreviewViewController *)self collectionViewContainerTopConstraint];
    [collectionViewContainerTopConstraint2 setConstant:v68];

    containerView2 = [(UIPrintPreviewViewController *)self containerView];
    [containerView2 setNeedsUpdateConstraints];

    collectionView3 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView3 bounds];
    v74 = v73;
    if (v30)
    {
      [(UIPrintPreviewViewController *)self headerHeight];
      v67 = v75;
    }

    containerView3 = [(UIPrintPreviewViewController *)self containerView];
    [containerView3 safeAreaInsets];
    v78 = v74 + v67 + v77;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v79 = objc_alloc(MEMORY[0x277CCABB0]);
    *&v80 = v78;
    printPanelViewController = [v79 initWithFloat:v80];
    [defaultCenter postNotificationName:@"UIPrintPreviewHeightDidChangeNotification" object:printPanelViewController userInfo:0];
    goto LABEL_54;
  }

  layoutGlassButton5 = [(UIPrintPreviewViewController *)self layoutGlassButton];

  if (!layoutGlassButton5)
  {
    if (v30)
    {
      v82 = 0;
    }

    else
    {
      v82 = [(UIPrintPreviewViewController *)self needsNavBarShown]^ 1;
    }

    navigationController = [(UIPrintPreviewViewController *)self navigationController];
    [navigationController setNavigationBarHidden:v82];

    navigationController2 = [(UIPrintPreviewViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    defaultCenter = [navigationBar topItem];

    if ([(UIPrintPreviewViewController *)self needsNavBarShown])
    {
      printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
      [printPanelViewController addCanelButtonToNavItem:defaultCenter];
    }

    else
    {
      printPanelViewController = [(UIPrintPreviewViewController *)self layoutBarButton];
      [defaultCenter setLeftBarButtonItem:printPanelViewController];
    }

LABEL_54:

    goto LABEL_55;
  }

  defaultCenter = [(UIPrintPreviewViewController *)self layoutGlassButton];
  [defaultCenter setHidden:v30 ^ 1u];
LABEL_55:
}

- (void)layoutPopupButtonChanged:(int64_t)changed
{
  if ([(UIPrintPreviewViewController *)self previewLayoutType]!= changed)
  {
    [(UIPrintPreviewViewController *)self setPreviewLayoutType:changed];

    [(UIPrintPreviewViewController *)self updatePrintPreviewPages:1];
  }
}

- (void)updatePageCount
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__UIPrintPreviewViewController_updatePageCount__block_invoke;
  v11 = &unk_279A9C210;
  objc_copyWeak(&v12, &location);
  v3 = MEMORY[0x25F8E54A0](&v8);
  v4 = [(UIPrintPreviewViewController *)self updatePageCountThread:v8];
  [v4 cancel];

  v5 = [objc_alloc(MEMORY[0x277CCACC8]) initWithBlock:v3];
  [(UIPrintPreviewViewController *)self setUpdatePageCountThread:v5];

  updatePageCountThread = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [updatePageCountThread setName:@"com.apple.UIKit.UIPrintPreviewViewController.updatePageCountThread"];

  updatePageCountThread2 = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [updatePageCountThread2 start];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __47__UIPrintPreviewViewController_updatePageCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained printInteractionController];
  [v2 _updatePageCount];

  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 isCancelled];

  if ((v4 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__UIPrintPreviewViewController_updatePageCount__block_invoke_2;
    block[3] = &unk_279A9BEE0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __47__UIPrintPreviewViewController_updatePageCount__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) hideGeneratingPreviewProgress];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updatePrintPreviewPages:1];
}

- (void)resetAllPages
{
  printSheetController = [(UIPrintPreviewViewController *)self printSheetController];
  [printSheetController clearPagesCache];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__UIPrintPreviewViewController_resetAllPages__block_invoke;
  v6[3] = &unk_279A9C238;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = MEMORY[0x25F8E54A0](v6);
  if ([(UIPrintPreviewViewController *)self usingWebKitFormatter])
  {
    [(UIPrintPreviewViewController *)self setShouldShowGeneratingPreviewProgress:1];
    [(UIPrintPreviewViewController *)self showGeneratingPreviewProgress];
    printSheetController2 = [(UIPrintPreviewViewController *)self printSheetController];
    [printSheetController2 generateWebKitThumbnailsWithCompletionBlock:v4];
  }

  else
  {
    [(UIPrintPreviewViewController *)self setShouldShowGeneratingPreviewProgress:1];
    [(UIPrintPreviewViewController *)self performSelector:sel_showGeneratingPreviewProgress withObject:0 afterDelay:0.5];
    [(UIPrintPreviewViewController *)self updatePageCount];
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__UIPrintPreviewViewController_resetAllPages__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__UIPrintPreviewViewController_resetAllPages__block_invoke_2;
    v5[3] = &unk_279A9BF78;
    v5[4] = *(a1 + 32);
    v5[5] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

uint64_t __45__UIPrintPreviewViewController_resetAllPages__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  [*(a1 + 32) generatingPreviewPresentationTime];
  v5 = v3 - v4;
  v6 = *(a1 + 40);
  if (v5 >= 1.0)
  {
    [v6 hideGeneratingPreviewProgress];
  }

  else
  {
    [v6 performSelector:sel_hideGeneratingPreviewProgress withObject:0 afterDelay:1.0 - v5];
  }

  v7 = [*(a1 + 40) collectionView];
  [v7 reloadData];

  v8 = *(a1 + 40);

  return [v8 updatePrintPreviewPages:1];
}

- (void)updatePrintPreviewPages:(BOOL)pages
{
  if (pages)
  {
    thumbnailOperationsQueue = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
    [thumbnailOperationsQueue cancelAllOperations];

    cachedThumbnailImages = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    objc_sync_enter(cachedThumbnailImages);
    cachedThumbnailImages2 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    [cachedThumbnailImages2 removeAllObjects];

    objc_sync_exit(cachedThumbnailImages);
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UIPrintPreviewViewController_updatePrintPreviewPages___block_invoke;
  block[3] = &unk_279A9C6B0;
  objc_copyWeak(&v9, &location);
  pagesCopy = pages;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__UIPrintPreviewViewController_updatePrintPreviewPages___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained printSheetController];
  [WeakRetained setNumberOfSheets:{objc_msgSend(v3, "calcNumberOfSheetsForLayoutType:", objc_msgSend(WeakRetained, "previewLayoutType"))}];

  v4 = [WeakRetained collectionView];
  v5 = [v4 _indexPathsForPreparedItems];

  if ([v5 count])
  {
    [WeakRetained previewViewSize];
    v7 = v6;
    v9 = v8;
    [WeakRetained updatePreviewViewSize];
    if (*(a1 + 40) == 1)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [WeakRetained collectionView];
            v17 = [v16 cellForItemAtIndexPath:v15];

            [v17 invalidateThumbnailImage];
            [WeakRetained fetchThumnailImageInBackground:objc_msgSend(v15 previewPageCell:{"item"), v17}];
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      goto LABEL_16;
    }

    v18 = [WeakRetained previewScrollDirection];
    [WeakRetained previewViewSize];
    if (v18 == 1)
    {
      if (v9 == v20)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (v7 != v19)
    {
LABEL_15:
      v10 = [WeakRetained collectionView];
      [v10 reconfigureItemsAtIndexPaths:v5];
LABEL_16:
    }
  }

LABEL_17:
  [WeakRetained updateHeaderFooters];
}

- (void)updatePreviewViewSize
{
  view = [(UIPrintPreviewViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if ([(UIPrintPreviewViewController *)self usingCompactPreview])
  {
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView bounds];
    v10 = v9;
    v12 = v11;

    v13 = v10 + -32.0;
    v7 = v12 + -32.0;
  }

  else
  {
    view2 = [(UIPrintPreviewViewController *)self view];
    [view2 layoutMargins];
    v16 = v15;
    v18 = v17;

    v13 = v5 - (v16 + v18);
  }

  if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
  {

    [(UIPrintPreviewViewController *)self setPreviewViewSize:v13 + -24.0 + -32.0, v7];
  }

  else
  {
    collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView2 bounds];
    [(UIPrintPreviewViewController *)self setPreviewViewSize:v13, v19 + -24.0 + -48.0];
  }
}

- (void)setScrollDirection:(int64_t)direction
{
  [(UIPrintPreviewViewController *)self setPreviewScrollDirection:?];
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if ([collectionViewLayout scrollDirection] != direction)
  {
    [collectionViewLayout setScrollDirection:direction];
    v6 = direction == 1;
    v7 = direction != 1;
    v8 = v6;
    collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView2 setShowsHorizontalScrollIndicator:v8];

    collectionView3 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView3 setBouncesHorizontally:v8];

    collectionView4 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView4 setShowsVerticalScrollIndicator:v7];

    collectionView5 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView5 setBouncesVertically:v7];

    [(UIPrintPreviewViewController *)self updatePrintPreviewPages:1];
    view = [(UIPrintPreviewViewController *)self view];
    [view setNeedsLayout];
  }
}

- (CGSize)maxThumbnailSize
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  previewScrollDirection = [(UIPrintPreviewViewController *)self previewScrollDirection];
  [(UIPrintPreviewViewController *)self previewViewSize];
  if (previewScrollDirection)
  {
    v6 = v3;
  }

  else
  {
    v7 = v4;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)thumbnailSizeForPageIndex:(int64_t)index
{
  [(UIPrintPreviewViewController *)self previewViewSize];
  if (v5 <= 0.0 || ([(UIPrintPreviewViewController *)self previewViewSize], v6 <= 0.0))
  {
    [(UIPrintPreviewViewController *)self updatePreviewViewSize];
  }

  [(UIPrintPreviewViewController *)self previewViewSize];
  v8 = v7;
  v10 = v9;
  printSheetController = [(UIPrintPreviewViewController *)self printSheetController];
  [printSheetController sizeForSheetNum:index + 1 showingPageView:{-[UIPrintPreviewViewController showingPageView](self, "showingPageView")}];
  v13 = v12;
  v15 = v14;

  [(UIPrintPreviewViewController *)self maxThumbnailSize];
  if (v15 > 0.0 && v13 > 0.0)
  {
    v18 = v13 / v15;
    if (v16 == 0.0)
    {
      v8 = ceil(v18 * v17);
      v10 = v17;
    }

    else
    {
      v10 = ceil(v16 / v18);
      v8 = v16;
    }
  }

  v19 = *(MEMORY[0x277CBF3A8] + 8);
  if (fmin(v8, v10) < 0.0)
  {
    v20 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v19 = v10;
    v20 = v8;
  }

  result.height = v19;
  result.width = v20;
  return result;
}

- (double)headerHeight
{
  if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
  {
    layoutPopupButton = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v4 = 0.0;
    if (([layoutPopupButton isHidden] & 1) == 0)
    {
      layoutPopupButton2 = [(UIPrintPreviewViewController *)self layoutPopupButton];
      [layoutPopupButton2 frame];
      v4 = v6;
    }
  }

  else
  {
    v4 = 0.0;
    if (![(UIPrintPreviewViewController *)self solariumEnabled])
    {
      if ([(UIPrintPreviewViewController *)self usingCompactPreview])
      {
        printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
        printOptionsNavController = [printPanelViewController printOptionsNavController];
        navigationBar = [printOptionsNavController navigationBar];
        [navigationBar frame];
        v4 = v10;

        layoutPopupButton3 = [(UIPrintPreviewViewController *)self layoutPopupButton];
        LOBYTE(printOptionsNavController) = [layoutPopupButton3 isHidden];

        if ((printOptionsNavController & 1) == 0)
        {
          layoutPopupButton4 = [(UIPrintPreviewViewController *)self layoutPopupButton];
          [layoutPopupButton4 frame];
          v14 = v13;

          if (v4 < v14)
          {
            return v14;
          }
        }
      }
    }
  }

  return v4;
}

- (void)updateHeaderFooters
{
  [(UIPrintPreviewViewController *)self updateLayoutControl];
  v3 = MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if ([(UIPrintPreviewViewController *)self previewScrollDirection])
  {
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView bounds];
    v7 = v6 + -32.0;

    [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:0];
    v9 = (v7 - v8) * 0.5;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:[(UIPrintPreviewViewController *)self numberOfSheets]- 1];
    v12 = (v7 - v11) * 0.5;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = v4;
  }

  else
  {
    layoutPopupButton = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v14 = 0.0;
    if ([layoutPopupButton isHidden])
    {
      [(UIPrintPreviewViewController *)self headerHeight];
      v14 = v16;
    }

    v13 = *v3;

    v10 = v13;
  }

  collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];

  [collectionViewLayout headerReferenceSize];
  v20 = v19 == v10 && v18 == v14;
  if (!v20 || (([collectionViewLayout footerReferenceSize], v22 == v13) ? (v23 = v21 == v4) : (v23 = 0), !v23))
  {
    [collectionViewLayout setHeaderReferenceSize:{v10, v14}];
    [collectionViewLayout setFooterReferenceSize:{v13, v4}];
  }
}

- (void)updatePageRange:(id)range
{
  v20 = *MEMORY[0x277D85DE8];
  printSheetController = [(UIPrintPreviewViewController *)self printSheetController];
  [printSheetController updateSelectionPageMap];

  if ([(UIPrintPreviewViewController *)self showingPageView])
  {
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    _indexPathsForPreparedItems = [collectionView _indexPathsForPreparedItems];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = _indexPathsForPreparedItems;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
          v14 = [collectionView2 cellForItemAtIndexPath:v12];

          [v14 setInRange:-[UIPrintPreviewViewController pageIndexIsInRange:](self animated:{"pageIndexIsInRange:", objc_msgSend(v14, "pageIndex")), 1}];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(UIPrintPreviewViewController *)self updateLayoutControl];
  }

  else
  {

    [(UIPrintPreviewViewController *)self updatePrintPreviewPages:1];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"UIPrintPreviewPageCell" forIndexPath:pathCopy];
  [v9 setPrintPreviewDelegate:self];
  numberOfSheets = [(UIPrintPreviewViewController *)self numberOfSheets];
  showPageRange = [(UIPrintPreviewViewController *)self showPageRange];
  v12 = [(UIPrintPreviewViewController *)self showingPageView]&& showPageRange;
  if (numberOfSheets > 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:item];
  [v9 updatePageLabelAndImageViewWithIndex:item pageCount:numberOfSheets allowSelection:v13 thumbnailSize:?];
  v14 = v13 != 1 || -[UIPrintPreviewViewController pageIndexIsInRange:](self, "pageIndexIsInRange:", [pathCopy row]);
  [v9 setInRange:v14 animated:0];
  cachedThumbnailImages = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  objc_sync_enter(cachedThumbnailImages);
  cachedThumbnailImages2 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "item")}];
  v18 = [cachedThumbnailImages2 objectForKey:v17];

  objc_sync_exit(cachedThumbnailImages);
  if (v18)
  {
    [v9 setThumbnailImage:v18];
  }

  else
  {
    [v9 invalidateThumbnailImage];
    [(UIPrintPreviewViewController *)self fetchThumnailImageInBackground:item previewPageCell:v9];
  }

  return v9;
}

- (void)fetchThumnailImageInBackground:(int64_t)background previewPageCell:(id)cell
{
  cellCopy = cell;
  v7 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  objc_initWeak(&location, v7);
  objc_initWeak(&from, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke;
  v11[3] = &unk_279A9C748;
  objc_copyWeak(&v14, &from);
  v15[1] = background;
  objc_copyWeak(v15, &location);
  v8 = cellCopy;
  v12 = v8;
  selfCopy = self;
  v9 = MEMORY[0x25F8E54A0](v11);
  [v7 addExecutionBlock:v9];
  thumbnailOperationsQueue = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [thumbnailOperationsQueue addOperation:v7];

  objc_destroyWeak(v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained printSheetController];
  v4 = [v3 imageForSheetNum:*(a1 + 64) + 1 showingPageView:{objc_msgSend(WeakRetained, "showingPageView")}];

  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = [v5 isCancelled];

  if (v6)
  {
    v7 = [WeakRetained printSheetController];
    [v7 clearCacheForSheetNum:*(a1 + 64) + 1];
  }

  else
  {
    v8 = [WeakRetained cachedThumbnailImages];
    objc_sync_enter(v8);
    v9 = [WeakRetained cachedThumbnailImages];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    if (v4)
    {
      [v9 setObject:v4 forKey:v10];
    }

    else
    {
      [v9 removeObjectForKey:v10];
    }

    objc_sync_exit(v8);
    if (*(a1 + 32))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke_2;
      block[3] = &unk_279A9C720;
      v15 = *(a1 + 32);
      v11 = v4;
      v12 = *(a1 + 40);
      v16 = v11;
      v17 = v12;
      v13 = *(a1 + 64);
      v18 = WeakRetained;
      v19 = v13;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setThumbnailImage:*(a1 + 40)];
  v2 = [*(a1 + 48) collectionView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke_3;
  v4[3] = &unk_279A9C6D8;
  v3 = *(a1 + 64);
  v4[4] = *(a1 + 56);
  v4[5] = v3;
  [v2 performBatchUpdates:v4 completion:&__block_literal_global_4];
}

void __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForRow:*(a1 + 40) inSection:0];
  v3 = [*(a1 + 32) collectionView];
  v5[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v3 reconfigureItemsAtIndexPaths:v4];
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        cachedThumbnailImages = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "item")}];
        v13 = [cachedThumbnailImages objectForKey:v12];

        if (!v13)
        {
          -[UIPrintPreviewViewController fetchThumnailImageInBackground:previewPageCell:](self, "fetchThumnailImageInBackground:previewPageCell:", [v10 item], 0);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  item = [path item];

  [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:item];
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 16.0;
  v6 = 16.0;
  v7 = 16.0;
  v8 = 16.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (BOOL)showPageRange
{
  printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
  shouldShowPageRange = [printPanelViewController shouldShowPageRange];

  return shouldShowPageRange;
}

- (void)pageBadgeTapped:(int64_t)tapped
{
  if ([(UIPrintPreviewViewController *)self canRemovePage:self forPageIndex:tapped])
  {

    [(UIPrintPreviewViewController *)self removePage:self forPageIndex:tapped];
  }

  else if ([(UIPrintPreviewViewController *)self canAddPage:self forPageIndex:tapped])
  {

    [(UIPrintPreviewViewController *)self addPage:self forPageIndex:tapped];
  }
}

- (BOOL)pageIndexIsInRange:(int64_t)range
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  v6 = [pageRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(pageRanges);
        }

        rangeValue = [*(*(&v15 + 1) + 8 * i) rangeValue];
        if (range >= rangeValue && range - rangeValue < v11)
        {
          v13 = 1;
          goto LABEL_14;
        }
      }

      v7 = [pageRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)canSetStartPage:(id)page forPageIndex:(int64_t)index
{
  showPageRange = [(UIPrintPreviewViewController *)self showPageRange];
  if (!showPageRange)
  {
    return showPageRange;
  }

  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];
  if (!pageRanges)
  {

    goto LABEL_12;
  }

  v9 = pageRanges;
  printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges2 = [printInfo2 pageRanges];
  v12 = [pageRanges2 count];

  if (!v12)
  {
LABEL_12:
    LOBYTE(showPageRange) = 1;
    return showPageRange;
  }

  printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges3 = [printInfo3 pageRanges];
  v15 = [pageRanges3 objectAtIndexedSubscript:0];
  rangeValue = [v15 rangeValue];
  v18 = v17;

  printInfo4 = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges4 = [printInfo4 pageRanges];
  v21 = [pageRanges4 count];

  LOBYTE(showPageRange) = v21 == 1 && rangeValue != index && rangeValue + v18 > index;
  return showPageRange;
}

- (void)setStartPage:(id)page forPageIndex:(int64_t)index
{
  v19[1] = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  if (!pageRanges || ![pageRanges count])
  {
    v15 = MEMORY[0x277CCAE60];
    printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
    printInfo4 = [v15 valueWithRange:{index, objc_msgSend(printInfo2, "pageCount")}];
    v19[0] = printInfo4;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
    [printInfo3 setPageRanges:v16];

    goto LABEL_6;
  }

  if ([pageRanges count] == 1)
  {
    v8 = [pageRanges objectAtIndexedSubscript:0];
    rangeValue = [v8 rangeValue];
    v11 = v10;

    v12 = [MEMORY[0x277CCAE60] valueWithRange:{index, v11 - index + rangeValue}];
    v18 = v12;
    printInfo2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

    [(UIPrintPreviewViewController *)self updatePageRange:printInfo2];
    printInfo4 = [(UIPrintPreviewViewController *)self printInfo];
    [printInfo4 setPageRanges:printInfo2];
LABEL_6:
  }
}

- (BOOL)canSetEndPage:(id)page forPageIndex:(int64_t)index
{
  if ([(UIPrintPreviewViewController *)self showPageRange])
  {
    printInfo = [(UIPrintPreviewViewController *)self printInfo];
    pageRanges = [printInfo pageRanges];
    if (pageRanges)
    {
      v8 = pageRanges;
      printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
      pageRanges2 = [printInfo2 pageRanges];
      v11 = [pageRanges2 count];

      if (!v11)
      {
        return 1;
      }

      printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
      pageRanges3 = [printInfo3 pageRanges];
      v14 = [pageRanges3 objectAtIndexedSubscript:0];
      rangeValue = [v14 rangeValue];
      v17 = v16;

      printInfo4 = [(UIPrintPreviewViewController *)self printInfo];
      pageRanges4 = [printInfo4 pageRanges];
      v20 = [pageRanges4 count];

      if (v20 != 1 || rangeValue > index || v17 + rangeValue - 1 == index)
      {
        return 0;
      }

      printInfo = [(UIPrintPreviewViewController *)self printInfo];
      v21 = [printInfo pageCount] - 1 > index;
    }

    else
    {
      v21 = 1;
    }

    return v21;
  }

  return 0;
}

- (void)setEndPage:(id)page forPageIndex:(int64_t)index
{
  v15[1] = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  if (!pageRanges || ![pageRanges count])
  {
    v11 = [MEMORY[0x277CCAE60] valueWithRange:{0, index}];
    v15[0] = v11;
    printInfo3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
    [printInfo2 setPageRanges:printInfo3];

    goto LABEL_6;
  }

  if ([pageRanges count] == 1)
  {
    v8 = [pageRanges objectAtIndexedSubscript:0];
    rangeValue = [v8 rangeValue];

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue, index - rangeValue + 1}];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

    [(UIPrintPreviewViewController *)self updatePageRange:v11];
    printInfo3 = [(UIPrintPreviewViewController *)self printInfo];
    [printInfo3 setPageRanges:v11];
LABEL_6:
  }
}

- (BOOL)canAddPage:(id)page forPageIndex:(int64_t)index
{
  showPageRange = [(UIPrintPreviewViewController *)self showPageRange];
  if (showPageRange)
  {
    LOBYTE(showPageRange) = ![(UIPrintPreviewViewController *)self pageIndexIsInRange:index];
  }

  return showPageRange;
}

- (void)addPage:(id)page forPageIndex:(int64_t)index
{
  selfCopy = self;
  v34[1] = *MEMORY[0x277D85DE8];
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  if (!pageRanges || ![pageRanges count])
  {
    v28 = [MEMORY[0x277CCAE60] valueWithRange:{index, 1}];
    v34[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    printInfo2 = [(UIPrintPreviewViewController *)selfCopy printInfo];
    [printInfo2 setPageRanges:v29];

    goto LABEL_21;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pageRanges, "count")}];
  if (![pageRanges count])
  {
    goto LABEL_18;
  }

  v31 = selfCopy;
  range2 = index;
  v9 = 0;
  v10 = 0;
  range2_8 = v8;
  do
  {
    v11 = [pageRanges objectAtIndexedSubscript:v10];
    rangeValue = [v11 rangeValue];
    v14 = v13;

    v35.location = rangeValue;
    v35.length = v14;
    v38.location = index;
    v38.length = 1;
    v15 = NSUnionRange(v35, v38);
    if (v15.length == v14 + 1 && (v9 & 1) == 0)
    {
      if ([pageRanges count] > v10 + 1 && (objc_msgSend(pageRanges, "objectAtIndexedSubscript:", v10 + 1), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeValue"), v19 = v18, v16, v36.location = v17, v36.length = v19, v39.location = range2, v39.length = 1, NSUnionRange(v36, v39).length == v19 + 1))
      {
        v20 = MEMORY[0x277CCAE60];
        v37.location = rangeValue;
        v37.length = v14;
        v40.location = v17;
        v40.length = v19;
        v21 = NSUnionRange(v37, v40);
        v22 = [v20 valueWithRange:{v21.location, v21.length}];
        v9 = 1;
        ++v10;
      }

      else
      {
        v22 = [MEMORY[0x277CCAE60] valueWithRange:{v15.location, v15.length}];
        v9 = 1;
      }

      index = range2;
      goto LABEL_14;
    }

    v23 = [pageRanges objectAtIndexedSubscript:v10];
    v24 = ([v23 rangeValue] <= index) | v9;

    if (v24)
    {
      v22 = [pageRanges objectAtIndexedSubscript:v10];
LABEL_14:
      v8 = range2_8;
      goto LABEL_16;
    }

    v25 = [MEMORY[0x277CCAE60] valueWithRange:{index, 1}];
    v8 = range2_8;
    [range2_8 addObject:v25];

    v22 = [pageRanges objectAtIndexedSubscript:v10];
    v9 = 1;
LABEL_16:
    [v8 addObject:v22];

    ++v10;
  }

  while (v10 < [pageRanges count]);
  selfCopy = v31;
  if ((v9 & 1) == 0)
  {
LABEL_18:
    v26 = [MEMORY[0x277CCAE60] valueWithRange:{index, 1}];
    [v8 addObject:v26];
  }

  [(UIPrintPreviewViewController *)selfCopy updatePageRange:v8];
  printInfo3 = [(UIPrintPreviewViewController *)selfCopy printInfo];
  [printInfo3 setPageRanges:v8];

LABEL_21:
}

- (BOOL)canRemovePage:(id)page forPageIndex:(int64_t)index
{
  v20 = *MEMORY[0x277D85DE8];
  showPageRange = [(UIPrintPreviewViewController *)self showPageRange];
  if (showPageRange)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    printInfo = [(UIPrintPreviewViewController *)self printInfo];
    pageRanges = [printInfo pageRanges];

    v9 = [pageRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(pageRanges);
          }

          [*(*(&v15 + 1) + 8 * i) rangeValue];
          v10 += v13;
        }

        v9 = [pageRanges countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
      v9 = v10 > 1;
    }

    LOBYTE(showPageRange) = [(UIPrintPreviewViewController *)self pageIndexIsInRange:index]& v9;
  }

  return showPageRange;
}

- (void)removePage:(id)page forPageIndex:(int64_t)index
{
  selfCopy = self;
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  pageRanges = [printInfo pageRanges];

  if (pageRanges && [pageRanges count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pageRanges, "count")}];
    v8 = 0;
    if ([pageRanges count])
    {
      v9 = pageRanges;
      while (1)
      {
        v10 = [v9 objectAtIndexedSubscript:v8];
        rangeValue = [v10 rangeValue];
        v13 = v12;

        if (index >= rangeValue && index - rangeValue < v13)
        {
          break;
        }

        ++v8;
        v14 = [pageRanges count];
        v9 = pageRanges;
        if (v8 >= v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v13 = 0;
      rangeValue = 0;
    }

    v9 = pageRanges;
LABEL_11:
    if ([v9 count])
    {
      v15 = 0;
      v16 = v13 - 1 + rangeValue;
      v31 = selfCopy;
      do
      {
        if (v8 == v15 && v13 == 1)
        {
          goto LABEL_25;
        }

        if (v8 == v15 && rangeValue == index)
        {
          v17 = MEMORY[0x277CCAE60];
          location = index + 1;
        }

        else
        {
          if (v8 != v15)
          {
            v20 = [pageRanges objectAtIndexedSubscript:v15];
            goto LABEL_24;
          }

          if (v16 != index)
          {
            printInfo2 = [(UIPrintPreviewViewController *)selfCopy printInfo];
            v23 = v16;
            pageCount = [printInfo2 pageCount];

            v25 = MEMORY[0x277CCAE60];
            v34.location = rangeValue;
            v34.length = v13;
            v36.location = 0;
            v36.length = index;
            v26 = NSIntersectionRange(v34, v36);
            v27 = [v25 valueWithRange:{v26.location, v26.length}];
            [v7 addObject:v27];

            v28 = MEMORY[0x277CCAE60];
            v37.location = index + 1;
            v37.length = pageCount + ~index;
            v16 = v23;
            selfCopy = v31;
            v35.location = rangeValue;
            v35.length = v13;
            v29 = NSIntersectionRange(v35, v37);
            location = v29.location;
            v17 = v28;
            length = v29.length;
            goto LABEL_19;
          }

          v17 = MEMORY[0x277CCAE60];
          location = rangeValue;
        }

        length = v13 - 1;
LABEL_19:
        v20 = [v17 valueWithRange:{location, length}];
LABEL_24:
        v21 = v20;
        [v7 addObject:v20];

LABEL_25:
        ++v15;
      }

      while (v15 < [pageRanges count]);
    }

    [(UIPrintPreviewViewController *)selfCopy updatePageRange:v7];
    printInfo3 = [(UIPrintPreviewViewController *)selfCopy printInfo];
    [printInfo3 setPageRanges:v7];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)canAddAllPages:(id)pages
{
  if (-[UIPrintPreviewViewController showPageRange](self, "showPageRange", pages) && (-[UIPrintPreviewViewController printInfo](self, "printInfo"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 pageCount], v4, v5 >= 1))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 |= ![(UIPrintPreviewViewController *)self pageIndexIsInRange:v6++];
      printInfo = [(UIPrintPreviewViewController *)self printInfo];
      pageCount = [printInfo pageCount];
    }

    while (pageCount > v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (void)addAllPages:(id)pages
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAE60];
  printInfo = [(UIPrintPreviewViewController *)self printInfo];
  v6 = [v4 valueWithRange:{0, objc_msgSend(printInfo, "pageCount")}];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [(UIPrintPreviewViewController *)self updatePageRange:v7];
  printInfo2 = [(UIPrintPreviewViewController *)self printInfo];
  [printInfo2 setPageRanges:v7];
}

- (void)scrollToBeginning
{
  v4 = *MEMORY[0x277D75060];
  v3 = *(MEMORY[0x277D75060] + 8);
  v5 = *(MEMORY[0x277D75060] + 16);
  v6 = *(MEMORY[0x277D75060] + 24);
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  previewScrollDirection = [(UIPrintPreviewViewController *)self previewScrollDirection];
  [collectionViewLayout headerReferenceSize];
  v10 = v9 + 20.0;
  v12 = v11 + 20.0;
  if (previewScrollDirection == 1)
  {
    v3 = v10;
  }

  else
  {
    v4 = v12;
  }

  collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
  v14 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  if ([(UIPrintPreviewViewController *)self previewScrollDirection])
  {
    v15 = 8;
  }

  else
  {
    v15 = 1;
  }

  [collectionView2 _scrollToItemAtIndexPath:v14 atScrollPosition:v15 additionalInsets:1 animated:{v4, v3, v5, v6}];
}

- (void)scrollToEnd
{
  v3 = MEMORY[0x277D75060];
  v4 = *MEMORY[0x277D75060];
  v5 = *(MEMORY[0x277D75060] + 8);
  v6 = *(MEMORY[0x277D75060] + 16);
  if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
  {
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout footerReferenceSize];
    v10 = v9 + 20.0;
  }

  else
  {
    v10 = *(v3 + 24);
  }

  collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:-[UIPrintPreviewViewController numberOfSheets](self inSection:{"numberOfSheets") - 1, 0}];
  if ([(UIPrintPreviewViewController *)self previewScrollDirection])
  {
    v12 = 32;
  }

  else
  {
    v12 = 4;
  }

  [collectionView2 _scrollToItemAtIndexPath:v11 atScrollPosition:v12 additionalInsets:1 animated:{v4, v5, v6, v10}];
}

- (BOOL)canShowMenuBar
{
  navigationController = [(UIPrintPreviewViewController *)self navigationController];

  if (!navigationController)
  {
    return 1;
  }

  view = [(UIPrintPreviewViewController *)self view];
  navigationController2 = [(UIPrintPreviewViewController *)self navigationController];
  topViewController = [navigationController2 topViewController];
  view2 = [topViewController view];
  v8 = [view isDescendantOfView:view2];

  return v8;
}

- (id)printPagePreviewViewControllerForItemAtPageIndex:(int64_t)index
{
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  [mEMORY[0x277D75718] hideMenu];

  longPressImageViewController = [(UIPrintPreviewViewController *)self longPressImageViewController];

  if (!longPressImageViewController)
  {
    cachedThumbnailImages = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v9 = [cachedThumbnailImages objectForKey:v8];

    v10 = objc_alloc(MEMORY[0x277D755E8]);
    [v9 size];
    v12 = v11;
    [v9 size];
    v14 = [v10 initWithFrame:{0.0, 0.0, v12, v13}];
    [v14 setContentMode:2];
    [v14 setImage:v9];
    v15 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIPrintPreviewViewController *)self setLongPressImageViewController:v15];

    longPressImageViewController2 = [(UIPrintPreviewViewController *)self longPressImageViewController];
    [longPressImageViewController2 setView:v14];

    [v9 size];
    v18 = v17;
    v20 = v19;
    longPressImageViewController3 = [(UIPrintPreviewViewController *)self longPressImageViewController];
    [longPressImageViewController3 setPreferredContentSize:{v18, v20}];
  }

  return [(UIPrintPreviewViewController *)self longPressImageViewController];
}

- (id)printPagePreviewActionItemsWithPageIndex:(int64_t)index
{
  v63[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  if ([(UIPrintPreviewViewController *)self showingPageView])
  {
    if ([(UIPrintPreviewViewController *)self canSetStartPage:self forPageIndex:index])
    {
      v5 = MEMORY[0x277D750C8];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"Start at Page %ld" value:@"Start at Page %ld" table:@"Localizable"];
      v9 = [v6 localizedStringWithFormat:v8, index + 1];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke;
      v60[3] = &unk_279A9C770;
      objc_copyWeak(v61, &location);
      v61[1] = index;
      v10 = [v5 actionWithTitle:v9 image:0 identifier:0 handler:v60];
      [array addObject:v10];

      objc_destroyWeak(v61);
    }

    if ([(UIPrintPreviewViewController *)self canSetEndPage:self forPageIndex:index])
    {
      v11 = MEMORY[0x277D750C8];
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"Stop after Page %ld" value:@"Stop after Page %ld" table:@"Localizable"];
      v15 = [v12 localizedStringWithFormat:v14, index + 1];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_2;
      v58[3] = &unk_279A9C770;
      objc_copyWeak(v59, &location);
      v59[1] = index;
      v16 = [v11 actionWithTitle:v15 image:0 identifier:0 handler:v58];
      [array addObject:v16];

      objc_destroyWeak(v59);
    }

    if ([(UIPrintPreviewViewController *)self canAddPage:self forPageIndex:index])
    {
      v17 = MEMORY[0x277D750C8];
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Add Page %ld" value:@"Add Page %ld" table:@"Localizable"];
      v21 = [v18 localizedStringWithFormat:v20, index + 1];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_3;
      v56[3] = &unk_279A9C770;
      objc_copyWeak(v57, &location);
      v57[1] = index;
      v22 = [v17 actionWithTitle:v21 image:0 identifier:0 handler:v56];
      [array addObject:v22];

      objc_destroyWeak(v57);
    }

    if ([(UIPrintPreviewViewController *)self canRemovePage:self forPageIndex:index])
    {
      v23 = MEMORY[0x277D750C8];
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"Skip Page %ld" value:@"Skip Page %ld" table:@"Localizable"];
      v27 = [v24 localizedStringWithFormat:v26, index + 1];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_4;
      v54[3] = &unk_279A9C770;
      objc_copyWeak(v55, &location);
      v55[1] = index;
      v28 = [v23 actionWithTitle:v27 image:0 identifier:0 handler:v54];
      [array addObject:v28];

      objc_destroyWeak(v55);
    }

    if ([(UIPrintPreviewViewController *)self canAddAllPages:self])
    {
      v29 = MEMORY[0x277D750C8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"Print All Pages" value:@"Print All Pages" table:@"Localizable"];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_5;
      v52[3] = &unk_279A9C798;
      objc_copyWeak(&v53, &location);
      v52[4] = self;
      v32 = [v29 actionWithTitle:v31 image:0 identifier:0 handler:v52];
      [array addObject:v32];

      objc_destroyWeak(&v53);
    }
  }

  if ([(UIPrintPreviewViewController *)self numberOfSheets]>= 2)
  {
    v33 = MEMORY[0x277D750C8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"Go to First Page" value:@"Go to First Page" table:@"Localizable"];
    v36 = [MEMORY[0x277D755B8] systemImageNamed:@"backward.end"];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_6;
    v50[3] = &unk_279A9C798;
    objc_copyWeak(&v51, &location);
    v50[4] = self;
    v37 = [v33 actionWithTitle:v35 image:v36 identifier:0 handler:v50];

    v38 = MEMORY[0x277D750C8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"Go to Last Page" value:@"Go to Last Page" table:@"Localizable"];
    v41 = [MEMORY[0x277D755B8] systemImageNamed:@"forward.end"];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_7;
    v48[3] = &unk_279A9C798;
    objc_copyWeak(&v49, &location);
    v48[4] = self;
    v42 = [v38 actionWithTitle:v40 image:v41 identifier:0 handler:v48];

    v43 = MEMORY[0x277D75710];
    v63[0] = v37;
    v63[1] = v42;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    v45 = [v43 menuWithTitle:&stru_2871AE610 image:0 identifier:0 options:1 children:v44];

    [array addObject:v45];
    objc_destroyWeak(&v49);

    objc_destroyWeak(&v51);
  }

  objc_destroyWeak(&location);

  return array;
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStartPage:WeakRetained forPageIndex:*(a1 + 40)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEndPage:WeakRetained forPageIndex:*(a1 + 40)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addPage:WeakRetained forPageIndex:*(a1 + 40)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removePage:WeakRetained forPageIndex:*(a1 + 40)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addAllPages:*(a1 + 32)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained gotoFirstPage:*(a1 + 32)];
}

void __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained gotoLastPage:*(a1 + 32)];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    v9 = [pathsCopy objectAtIndex:0];
    [(UIPrintPreviewViewController *)self setLongPressImageViewController:0];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D753B0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __98__UIPrintPreviewViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke;
    v18[3] = &unk_279A9C7C0;
    objc_copyWeak(&v20, &location);
    v11 = v9;
    v19 = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__UIPrintPreviewViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_2;
    v15[3] = &unk_279A9C7E8;
    objc_copyWeak(&v17, &location);
    v12 = v11;
    v16 = v12;
    v13 = [v10 configurationWithIdentifier:v12 previewProvider:v18 actionProvider:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __98__UIPrintPreviewViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained printPagePreviewViewControllerForItemAtPageIndex:{objc_msgSend(*(a1 + 32), "row")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __98__UIPrintPreviewViewController_collectionView_contextMenuConfigurationForItemsAtIndexPaths_point___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D75710];
    v4 = [WeakRetained printPagePreviewActionItemsWithPageIndex:{objc_msgSend(*(a1 + 32), "row")}];
    v5 = [v3 menuWithTitle:&stru_2871AE610 children:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  identifier = [configurationCopy identifier];

  v8 = [collectionView cellForItemAtIndexPath:identifier];
  thumbnailView = [v8 thumbnailView];

  if (thumbnailView)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:thumbnailView];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  identifier = [configurationCopy identifier];

  v8 = [collectionView cellForItemAtIndexPath:identifier];
  thumbnailView = [v8 thumbnailView];

  if (thumbnailView)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:thumbnailView];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  printInteractionController = [(UIPrintPreviewViewController *)self printInteractionController];
  preventPDFCreation = [printInteractionController preventPDFCreation];

  if ((preventPDFCreation & 1) == 0)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__UIPrintPreviewViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v13[3] = &unk_279A9C210;
    objc_copyWeak(&v14, &location);
    [animatorCopy addCompletion:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __105__UIPrintPreviewViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showQuickLookFromPreviewAction];
    WeakRetained = v2;
  }
}

- (void)showQuickLookFromPreviewAction
{
  printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
  [printPanelViewController dismissKeyboard];

  solariumEnabled = [(UIPrintPreviewViewController *)self solariumEnabled];
  v5 = @"\n";
  if (solariumEnabled)
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = MEMORY[0x277D75110];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Generating PDF" value:@"Generating PDF" table:@"Localizable"];
  v10 = [v7 alertControllerWithTitle:v9 message:v6 preferredStyle:1];
  [(UIPrintPreviewViewController *)self setGeneratingPDFProgressController:v10];

  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 startAnimating];
  generatingPDFProgressController = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  view = [generatingPDFProgressController view];

  [view addSubview:v11];
  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v14];

  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:-12.0];
  [view addConstraint:v15];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(UIPrintPreviewViewController *)self setGeneratingPreviewPresentationTime:?];
  printPanelViewController2 = [(UIPrintPreviewViewController *)self printPanelViewController];
  generatingPDFProgressController2 = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  [printPanelViewController2 presentViewController:generatingPDFProgressController2 animated:1 completion:0];

  objc_initWeak(&location, self);
  printPanelViewController3 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__UIPrintPreviewViewController_showQuickLookFromPreviewAction__block_invoke;
  v19[3] = &unk_279A9C838;
  objc_copyWeak(&v20, &location);
  v19[4] = self;
  [printPanelViewController3 generateQuickLookPDFWithCompletionHandler:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__UIPrintPreviewViewController_showQuickLookFromPreviewAction__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {

    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__UIPrintPreviewViewController_showQuickLookFromPreviewAction__block_invoke_2;
  v10[3] = &unk_279A9C810;
  v8 = *(a1 + 32);
  v10[4] = WeakRetained;
  v10[5] = v8;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], v10);
}

void __62__UIPrintPreviewViewController_showQuickLookFromPreviewAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) generatingPDFProgressController];

  if (v2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    [*(a1 + 40) generatingPreviewPresentationTime];
    v6 = v4 - v5;
    v7 = *(a1 + 40);
    if (v6 >= 1.0)
    {
      v10 = *(a1 + 48);

      [v7 hideGeneratingPDFProgress:v10];
    }

    else
    {
      v8 = *(a1 + 48);
      v9 = 1.0 - v6;

      [v7 performSelector:sel_hideGeneratingPDFProgress_ withObject:v8 afterDelay:v9];
    }
  }

  else if (*(a1 + 48) && (*(a1 + 56) & 1) == 0)
  {
    v11 = *(a1 + 32);

    [v11 showQuickLookDocumentInteractionController:?];
  }
}

- (void)hideGeneratingPDFProgress:(id)progress
{
  progressCopy = progress;
  generatingPDFProgressController = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UIPrintPreviewViewController_hideGeneratingPDFProgress___block_invoke;
  v7[3] = &unk_279A9BF78;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  [generatingPDFProgressController dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __58__UIPrintPreviewViewController_hideGeneratingPDFProgress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setGeneratingPDFProgressController:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 showQuickLookDocumentInteractionController:v3];
}

- (void)showQuickLookDocumentInteractionController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
    v6 = [printPanelViewController createShareablePDFFileURL:controllerCopy];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = controllerCopy;
    }

    v8 = [MEMORY[0x277D546E8] interactionControllerWithURL:v7];
    [(UIPrintPreviewViewController *)self setDocumentInteractionController:v8];

    printInfo = [(UIPrintPreviewViewController *)self printInfo];
    jobName = [printInfo jobName];
    documentInteractionController = [(UIPrintPreviewViewController *)self documentInteractionController];
    [documentInteractionController setName:jobName];

    printPanelViewController2 = [(UIPrintPreviewViewController *)self printPanelViewController];
    objc_initWeak(&location, printPanelViewController2);

    documentInteractionController2 = [(UIPrintPreviewViewController *)self documentInteractionController];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __75__UIPrintPreviewViewController_showQuickLookDocumentInteractionController___block_invoke;
    v19 = &unk_279A9C860;
    objc_copyWeak(&v20, &location);
    [documentInteractionController2 _setCompletionWithItemsHandler:&v16];

    v14 = [(UIPrintPreviewViewController *)self documentInteractionController:v16];
    [v14 setDelegate:self];

    [(UIPrintPreviewViewController *)self setPreviewDocumentInteractionControllerRefCount:[(UIPrintPreviewViewController *)self previewDocumentInteractionControllerRefCount]+ 1];
    documentInteractionController3 = [(UIPrintPreviewViewController *)self documentInteractionController];
    LOBYTE(jobName) = [documentInteractionController3 presentPreviewAnimated:0];

    if ((jobName & 1) == 0)
    {
      NSLog(&cfstr_Uiprintpreview_1.isa);
      [(UIPrintPreviewViewController *)self setPreviewDocumentInteractionControllerRefCount:[(UIPrintPreviewViewController *)self previewDocumentInteractionControllerRefCount]- 1];
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __75__UIPrintPreviewViewController_showQuickLookDocumentInteractionController___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = _UIActivityOpenInApplicationTypeForActivityType();

  v7 = WeakRetained;
  if (a3 && WeakRetained && !v6)
  {
    [WeakRetained cancelPrinting];
    v7 = WeakRetained;
  }
}

- (void)documentInteractionControllerDidEndPreview:(id)preview
{
  v4 = [(UIPrintPreviewViewController *)self previewDocumentInteractionControllerRefCount]- 1;

  [(UIPrintPreviewViewController *)self setPreviewDocumentInteractionControllerRefCount:v4];
}

- (void)documentInteractionController:(id)controller didEndSendingToApplication:(id)application
{
  v4 = [(UIPrintPreviewViewController *)self printPanelViewController:controller];
  [v4 cancelPrinting];
}

- (void)animateCellAndPresentDocumentInteractionController
{
  printPanelViewController = [(UIPrintPreviewViewController *)self printPanelViewController];
  [printPanelViewController dismissKeyboard];

  pinchAnimationView = [(UIPrintPreviewViewController *)self pinchAnimationView];
  pinchAnimationProgressView = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
  pinchGestureBeginningView = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
  [(UIPrintPreviewViewController *)self setPinchAnimationView:0];
  [(UIPrintPreviewViewController *)self setPinchGestureBeginningView:0];
  [(UIPrintPreviewViewController *)self setPinchAnimationProgressView:0];
  objc_initWeak(&location, self);
  printPanelViewController2 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke;
  v15[3] = &unk_279A9C8B0;
  objc_copyWeak(&v19, &location);
  v8 = pinchGestureBeginningView;
  v16 = v8;
  v9 = pinchAnimationView;
  v17 = v9;
  v10 = pinchAnimationProgressView;
  v18 = v10;
  [printPanelViewController2 generateQuickLookPDFWithCompletionHandler:v15];

  if (v10 && v9)
  {
    v11 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke_3;
    v12[3] = &unk_279A9BF78;
    v13 = v10;
    v14 = v9;
    [v11 animateWithDuration:0x10000 delay:v12 options:0 animations:0.3 completion:0.0];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke(id *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {

    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke_2;
  block[3] = &unk_279A9C888;
  block[4] = WeakRetained;
  v10 = v6;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v8 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showQuickLookDocumentInteractionController:*(a1 + 40)];
  [*(a1 + 48) setAlpha:1.0];
  [*(a1 + 56) removeFromSuperview];
  v2 = *(a1 + 64);

  return [v2 performSelector:sel_removeFromSuperview withObject:0 afterDelay:0.200000003];
}

uint64_t __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  CGAffineTransformMakeScale(&v5, 2.0, 2.0);
  v2 = *(a1 + 40);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 40) setAlpha:0.0];
}

- (id)createGeneratingPDFProgressView:(CGRect)view
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{view.origin.x, view.origin.y, view.size.width, view.size.height}];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  [v3 setAlpha:0.0];
  v5 = objc_alloc(MEMORY[0x277D756B8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Generating PDF" value:@"Generating PDF" table:@"Localizable"];
  [v6 setText:v8];

  [v6 sizeToFit];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v6 setTextColor:secondaryLabelColor];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v6];
  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v11];

  v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v12];
  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v12 attribute:3 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:12.0];
  [v3 addConstraint:v14];

  [v12 startAnimating];

  return v3;
}

- (void)handlePinch:(id)pinch
{
  pinchCopy = pinch;
  if ([pinchCopy state] == 1 || self->_pinchGestureBeginningView)
  {
    if ([pinchCopy state] == 1)
    {
      collectionView = [(UIPrintPreviewViewController *)self collectionView];
      collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
      [pinchCopy locationInView:collectionView2];
      pinchAnimationView10 = [collectionView indexPathForItemAtPoint:?];

      if (-[UIPrintPreviewViewController pageIndexIsInRange:](self, "pageIndexIsInRange:", [pinchAnimationView10 row]))
      {
        collectionView3 = [(UIPrintPreviewViewController *)self collectionView];
        v9 = [collectionView3 cellForItemAtIndexPath:pinchAnimationView10];
        thumbnailView = [v9 thumbnailView];

        window = [thumbnailView window];
        [window bounds];
        v12 = [(UIPrintPreviewViewController *)self createGeneratingPDFProgressView:?];
        [(UIPrintPreviewViewController *)self setPinchAnimationProgressView:v12];

        pinchAnimationProgressView = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
        [window addSubview:pinchAnimationProgressView];

        pinchAnimationProgressView2 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
        [window bringSubviewToFront:pinchAnimationProgressView2];

        [(UIPrintPreviewViewController *)self setPinchGestureBeginningView:thumbnailView];
        pinchGestureBeginningView = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
        [pinchGestureBeginningView setAlpha:0.0];

        v16 = objc_alloc(MEMORY[0x277D755E8]);
        image = [thumbnailView image];
        v18 = [v16 initWithImage:image];
        [(UIPrintPreviewViewController *)self setPinchAnimationView:v18];

        [thumbnailView frame];
        v20 = v19;
        v22 = v21;
        superview = [thumbnailView superview];
        [thumbnailView frame];
        [superview convertPoint:window toView:?];
        v25 = v24;
        v27 = v26;

        pinchAnimationView = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [pinchAnimationView setFrame:{v25, v27, v20, v22}];

        pinchAnimationView2 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [window addSubview:pinchAnimationView2];

        pinchAnimationView3 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [window bringSubviewToFront:pinchAnimationView3];

        [(UIPrintPreviewViewController *)self setPinchGestureLastScale:1.0];
        pinchGestureBeginningView2 = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
        [pinchCopy locationInView:pinchGestureBeginningView2];
        [(UIPrintPreviewViewController *)self setPinchGestureLastPoint:?];
      }

LABEL_6:

      goto LABEL_15;
    }

    if ([pinchCopy state] == 3)
    {
      [pinchCopy scale];
      if (v32 > 1.2)
      {
        [(UIPrintPreviewViewController *)self animateCellAndPresentDocumentInteractionController];
        goto LABEL_15;
      }

      v33 = MEMORY[0x277D75D18];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __44__UIPrintPreviewViewController_handlePinch___block_invoke;
      v72[3] = &unk_279A9BEE0;
      v72[4] = self;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __44__UIPrintPreviewViewController_handlePinch___block_invoke_2;
      v71[3] = &unk_279A9C8D8;
      v71[4] = self;
      v34 = v72;
      v35 = v71;
    }

    else
    {
      if ([pinchCopy state] != 4 && objc_msgSend(pinchCopy, "state") != 5)
      {
        [pinchCopy velocity];
        if (v36 > 2.0 || ([pinchCopy scale], v37 > 1.5))
        {
          [(UIPrintPreviewViewController *)self animateCellAndPresentDocumentInteractionController];
          [pinchCopy setEnabled:0];
          [pinchCopy setEnabled:1];
          goto LABEL_15;
        }

        [(UIPrintPreviewViewController *)self pinchGestureLastScale];
        v39 = v38;
        [pinchCopy scale];
        v41 = v40;
        [pinchCopy scale];
        [(UIPrintPreviewViewController *)self setPinchGestureLastScale:?];
        pinchAnimationView4 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [pinchCopy locationInView:pinchAnimationView4];
        v44 = v43;
        v46 = v45;

        [pinchCopy scale];
        if (v47 > 1.0)
        {
          v48 = v41 - v39 + 1.0;
          pinchAnimationView5 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          v50 = pinchAnimationView5;
          if (pinchAnimationView5)
          {
            [pinchAnimationView5 transform];
          }

          else
          {
            memset(&v67, 0, sizeof(v67));
          }

          CGAffineTransformScale(&v68, &v67, v48, v48);
          pinchAnimationView6 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          v67 = v68;
          [pinchAnimationView6 setTransform:&v67];

          [pinchCopy scale];
          v53 = 1.0 / v52;
          pinchAnimationView7 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          [pinchAnimationView7 setAlpha:v53];

          [pinchCopy scale];
          v56 = v55;
          [pinchCopy scale];
          v58 = 1.0 - 1.0 / (v56 * v57);
          pinchAnimationProgressView3 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
          [pinchAnimationProgressView3 setAlpha:v58];
        }

        pinchAnimationView8 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        v61 = pinchAnimationView8;
        if (pinchAnimationView8)
        {
          [pinchAnimationView8 transform];
        }

        else
        {
          memset(&v67, 0, sizeof(v67));
        }

        [(UIPrintPreviewViewController *)self pinchGestureLastPoint];
        v63 = v44 - v62;
        [(UIPrintPreviewViewController *)self pinchGestureLastPoint];
        CGAffineTransformTranslate(&v66, &v67, v63, v46 - v64);
        pinchAnimationView9 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        v67 = v66;
        [pinchAnimationView9 setTransform:&v67];

        pinchAnimationView10 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [pinchCopy locationInView:pinchAnimationView10];
        [(UIPrintPreviewViewController *)self setPinchGestureLastPoint:?];
        goto LABEL_6;
      }

      v33 = MEMORY[0x277D75D18];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __44__UIPrintPreviewViewController_handlePinch___block_invoke_3;
      v70[3] = &unk_279A9BEE0;
      v70[4] = self;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __44__UIPrintPreviewViewController_handlePinch___block_invoke_4;
      v69[3] = &unk_279A9C8D8;
      v69[4] = self;
      v34 = v70;
      v35 = v69;
    }

    [v33 animateWithDuration:0x20000 delay:v34 options:v35 animations:0.2 completion:0.0];
  }

LABEL_15:
}

void __44__UIPrintPreviewViewController_handlePinch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pinchAnimationView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = [*(a1 + 32) pinchGestureBeginningView];
  v8 = [v7 superview];
  v9 = [*(a1 + 32) pinchGestureBeginningView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) pinchGestureBeginningView];
  v15 = [v14 window];
  [v8 convertPoint:v15 toView:{v11, v13}];
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) pinchAnimationView];
  [v20 setFrame:{v17, v19, v4, v6}];

  v21 = [*(a1 + 32) pinchAnimationView];
  [v21 setAlpha:1.0];

  v22 = [*(a1 + 32) pinchAnimationProgressView];
  [v22 setAlpha:0.0];
}

uint64_t __44__UIPrintPreviewViewController_handlePinch___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pinchGestureBeginningView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) pinchAnimationProgressView];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) pinchAnimationView];
  [v4 removeFromSuperview];

  [*(a1 + 32) setPinchAnimationProgressView:0];
  [*(a1 + 32) setPinchAnimationView:0];
  v5 = *(a1 + 32);

  return [v5 setPinchGestureBeginningView:0];
}

void __44__UIPrintPreviewViewController_handlePinch___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pinchAnimationView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = [*(a1 + 32) pinchGestureBeginningView];
  v8 = [v7 superview];
  v9 = [*(a1 + 32) pinchGestureBeginningView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) pinchGestureBeginningView];
  v15 = [v14 window];
  [v8 convertPoint:v15 toView:{v11, v13}];
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) pinchAnimationView];
  [v20 setFrame:{v17, v19, v4, v6}];

  v21 = [*(a1 + 32) pinchAnimationView];
  [v21 setAlpha:1.0];

  v22 = [*(a1 + 32) pinchAnimationProgressView];
  [v22 setAlpha:0.0];
}

uint64_t __44__UIPrintPreviewViewController_handlePinch___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) pinchGestureBeginningView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) pinchAnimationProgressView];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) pinchAnimationView];
  [v4 removeFromSuperview];

  [*(a1 + 32) setPinchAnimationProgressView:0];
  [*(a1 + 32) setPinchAnimationView:0];
  v5 = *(a1 + 32);

  return [v5 setPinchGestureBeginningView:0];
}

- (void)performThumbnailDispatchBlock:(id)block
{
  blockCopy = block;
  thumbnailOperationsQueue = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [thumbnailOperationsQueue addOperationWithBlock:blockCopy];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  isHidden = [collectionView isHidden];

  if (isHidden)
  {
    loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Loading Preview…" value:@"Loading Preview…" table:@"Localizable"];
    [loadingConfiguration setText:v7];
  }

  else
  {
    loadingConfiguration = 0;
  }

  [(UIPrintPreviewViewController *)self setContentUnavailableConfiguration:loadingConfiguration];
}

- (void)showGeneratingPreviewProgress
{
  if ([(UIPrintPreviewViewController *)self shouldShowGeneratingPreviewProgress])
  {
    collectionView = [(UIPrintPreviewViewController *)self collectionView];
    isHidden = [collectionView isHidden];

    if ((isHidden & 1) == 0)
    {
      collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
      [collectionView2 setHidden:1];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(UIPrintPreviewViewController *)self setGeneratingPreviewPresentationTime:?];
      if ([(UIPrintPreviewViewController *)self usingCompactPreview])
      {
        compactGeneratingPreviewProgressView = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];

        if (!compactGeneratingPreviewProgressView)
        {
          [(UIPrintPreviewViewController *)self setupCompactGeneratingPreviewProgress];
        }

        compactGeneratingPreviewProgressView2 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
        [compactGeneratingPreviewProgressView2 setHidden:0];

        compactGeneratingPreviewProgressView3 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
        [compactGeneratingPreviewProgressView3 setSpinSpinner:1];
      }

      else
      {

        [(UIPrintPreviewViewController *)self setNeedsUpdateContentUnavailableConfiguration];
      }
    }
  }
}

- (void)hideGeneratingPreviewProgress
{
  [(UIPrintPreviewViewController *)self setShouldShowGeneratingPreviewProgress:0];
  collectionView = [(UIPrintPreviewViewController *)self collectionView];
  isHidden = [collectionView isHidden];

  if (isHidden)
  {
    collectionView2 = [(UIPrintPreviewViewController *)self collectionView];
    [collectionView2 setHidden:0];

    if (![(UIPrintPreviewViewController *)self usingCompactPreview])
    {
      [(UIPrintPreviewViewController *)self setNeedsUpdateContentUnavailableConfiguration];
    }

    compactGeneratingPreviewProgressView = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
    [compactGeneratingPreviewProgressView setHidden:1];

    compactGeneratingPreviewProgressView2 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
    [compactGeneratingPreviewProgressView2 setSpinSpinner:0];
  }
}

- (void)setupCompactGeneratingPreviewProgress
{
  v23[3] = *MEMORY[0x277D85DE8];
  containerView = [(UIPrintPreviewViewController *)self containerView];
  if (containerView)
  {
    v4 = containerView;
    compactGeneratingPreviewProgressView = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];

    if (!compactGeneratingPreviewProgressView)
    {
      v6 = [UIPrintMessageAndSpinnerView alloc];
      view = [(UIPrintPreviewViewController *)self view];
      [view bounds];
      v8 = [(UIPrintMessageAndSpinnerView *)v6 initWithFrame:?];

      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"Loading Preview…" value:@"Loading Preview…" table:@"Localizable"];
      [(UIPrintMessageAndSpinnerView *)v8 setMessageText:v10];

      [(UIPrintMessageAndSpinnerView *)v8 setSpinnerHidden:0];
      [(UIPrintMessageAndSpinnerView *)v8 setSpinSpinner:1];
      containerView2 = [(UIPrintPreviewViewController *)self containerView];
      [containerView2 addSubview:v8];

      containerView3 = [(UIPrintPreviewViewController *)self containerView];
      v13 = MEMORY[0x277CCAAD0];
      containerView4 = [(UIPrintPreviewViewController *)self containerView];
      v15 = [v13 constraintWithItem:v8 attribute:17 relatedBy:0 toItem:containerView4 attribute:17 multiplier:1.0 constant:0.0];
      v16 = MEMORY[0x277CCAAD0];
      containerView5 = [(UIPrintPreviewViewController *)self containerView];
      v18 = [v16 constraintWithItem:v8 attribute:18 relatedBy:0 toItem:containerView5 attribute:18 multiplier:1.0 constant:0.0];
      v23[1] = v18;
      v19 = MEMORY[0x277CCAAD0];
      containerView6 = [(UIPrintPreviewViewController *)self containerView];
      v21 = [v19 constraintWithItem:v8 attribute:20 relatedBy:0 toItem:containerView6 attribute:20 multiplier:1.0 constant:0.0];
      v23[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      [containerView3 addConstraints:v22];

      [(UIPrintPreviewViewController *)self setCompactGeneratingPreviewProgressView:v8];
    }
  }
}

- (CGSize)previewViewSize
{
  objc_copyStruct(v4, &self->_previewViewSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)pinchGestureLastPoint
{
  objc_copyStruct(v4, &self->_pinchGestureLastPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIPrintPanelViewController)printPanelViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_printPanelViewController);

  return WeakRetained;
}

- (UIPrintInteractionController)printInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_printInteractionController);

  return WeakRetained;
}

@end