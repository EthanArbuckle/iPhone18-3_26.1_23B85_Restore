@interface UIPrintPreviewViewController
- (BOOL)canAddAllPages:(id)a3;
- (BOOL)canAddPage:(id)a3 forPageIndex:(int64_t)a4;
- (BOOL)canRemovePage:(id)a3 forPageIndex:(int64_t)a4;
- (BOOL)canSetEndPage:(id)a3 forPageIndex:(int64_t)a4;
- (BOOL)canSetStartPage:(id)a3 forPageIndex:(int64_t)a4;
- (BOOL)canShowMenuBar;
- (BOOL)pageIndexIsInRange:(int64_t)a3;
- (BOOL)showPageRange;
- (CGPoint)pinchGestureLastPoint;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)maxThumbnailSize;
- (CGSize)previewViewSize;
- (CGSize)thumbnailSizeForPageIndex:(int64_t)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIPrintInteractionController)printInteractionController;
- (UIPrintPanelViewController)printPanelViewController;
- (UIPrintPreviewViewController)initWithPrintPanelViewController:(id)a3 useCompactPreview:(BOOL)a4 withContainerView:(id)a5;
- (double)headerHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)createGeneratingPDFProgressView:(CGRect)a3;
- (id)printPagePreviewActionItemsWithPageIndex:(int64_t)a3;
- (id)printPagePreviewViewControllerForItemAtPageIndex:(int64_t)a3;
- (int64_t)positionForBar:(id)a3;
- (void)addAllPages:(id)a3;
- (void)addPage:(id)a3 forPageIndex:(int64_t)a4;
- (void)animateCellAndPresentDocumentInteractionController;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)documentInteractionController:(id)a3 didEndSendingToApplication:(id)a4;
- (void)documentInteractionControllerDidEndPreview:(id)a3;
- (void)fetchThumnailImageInBackground:(int64_t)a3 previewPageCell:(id)a4;
- (void)handlePinch:(id)a3;
- (void)hideGeneratingPDFProgress:(id)a3;
- (void)hideGeneratingPreviewProgress;
- (void)layoutPopupButtonChanged:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageBadgeTapped:(int64_t)a3;
- (void)performThumbnailDispatchBlock:(id)a3;
- (void)removePage:(id)a3 forPageIndex:(int64_t)a4;
- (void)resetAllPages;
- (void)scrollToBeginning;
- (void)scrollToEnd;
- (void)setEndPage:(id)a3 forPageIndex:(int64_t)a4;
- (void)setNumberOfSheets:(int64_t)a3;
- (void)setScrollDirection:(int64_t)a3;
- (void)setStartPage:(id)a3 forPageIndex:(int64_t)a4;
- (void)setupCompactGeneratingPreviewProgress;
- (void)setupLayoutControl;
- (void)showGeneratingPreviewProgress;
- (void)showQuickLookDocumentInteractionController:(id)a3;
- (void)showQuickLookFromPreviewAction;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateHeaderFooters;
- (void)updateLayoutControl;
- (void)updatePageCount;
- (void)updatePageRange:(id)a3;
- (void)updatePreviewViewSize;
- (void)updatePrintPreviewPages:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIPrintPreviewViewController

- (UIPrintPreviewViewController)initWithPrintPanelViewController:(id)a3 useCompactPreview:(BOOL)a4 withContainerView:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 showingVerticalPreview] ^ 1;
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
    [(UIPrintPreviewViewController *)v12 setPrintPanelViewController:v8];
    v13 = [v8 printInteractionController];
    [(UIPrintPreviewViewController *)v12 setPrintInteractionController:v13];

    v14 = [v8 printInfo];
    [(UIPrintPreviewViewController *)v12 setPrintInfo:v14];

    [(UIPrintPreviewViewController *)v12 setContainerView:v9];
    v15 = [(UIPrintPreviewViewController *)v12 containerView];
    [v15 setUsingCompactPreview:v6];

    [(UIPrintPreviewViewController *)v12 setPreviewScrollDirection:v10];
    [(UIPrintPreviewViewController *)v12 setUsingCompactPreview:v6];
    [(UIPrintPreviewViewController *)v12 setPreviewLayoutType:0];
    v16 = [(UIPrintPreviewViewController *)v12 printInteractionController];
    -[UIPrintPreviewViewController setUsingWebKitFormatter:](v12, "setUsingWebKitFormatter:", [v16 usingWebKitFormatter]);

    v17 = [UIPrintSheetController alloc];
    v18 = [(UIPrintPreviewViewController *)v12 printInfo];
    v19 = [(UIPrintPreviewViewController *)v12 printInteractionController];
    v20 = [(UIPrintSheetController *)v17 initWithPrintInfo:v18 printPageImageDelegate:v19 usingWebKitFormatter:[(UIPrintPreviewViewController *)v12 usingWebKitFormatter]];
    [(UIPrintPreviewViewController *)v12 setPrintSheetController:v20];

    [(UIPrintPreviewViewController *)v12 setNeedsNavBarShown:1];
    v21 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v21 addObserver:v12 forKeyPath:0x2871AF1B0 options:0 context:0];

    v22 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v22 addObserver:v12 forKeyPath:0x2871AF110 options:0 context:0];

    v23 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v23 addObserver:v12 forKeyPath:0x2871AF1D0 options:0 context:0];

    v24 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v24 addObserver:v12 forKeyPath:0x2871AF0D0 options:0 context:0];

    v25 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v25 addObserver:v12 forKeyPath:0x2871AF1F0 options:0 context:0];

    v26 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v26 addObserver:v12 forKeyPath:0x2871AF130 options:0 context:0];

    v27 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v27 addObserver:v12 forKeyPath:0x2871AF290 options:0 context:0];

    v28 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v28 addObserver:v12 forKeyPath:0x2871AF2F0 options:0 context:0];

    v29 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v29 addObserver:v12 forKeyPath:0x2871AF310 options:0 context:0];

    v30 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v30 addObserver:v12 forKeyPath:0x2871AF330 options:0 context:0];

    v31 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v31 addObserver:v12 forKeyPath:0x2871AF350 options:0 context:0];

    v32 = [(UIPrintPreviewViewController *)v12 printInfo];
    [v32 addObserver:v12 forKeyPath:0x2871AF0B0 options:0 context:0];

    v33 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(UIPrintPreviewViewController *)v12 setCachedThumbnailImages:v33];

    v34 = [(UIPrintPreviewViewController *)v12 cachedThumbnailImages];
    [v34 setEvictsObjectsWhenApplicationEntersBackground:0];

    v35 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(UIPrintPreviewViewController *)v12 setThumbnailOperationsQueue:v35];

    v36 = [(UIPrintPreviewViewController *)v12 thumbnailOperationsQueue];
    [v36 setMaxConcurrentOperationCount:1];

    v37 = [(UIPrintPreviewViewController *)v12 thumbnailOperationsQueue];
    [v37 setName:@"com.apple.UIKit.UIPrintPreviewViewController.thumbnailOperationsQueue"];

    if ([(UIPrintPreviewViewController *)v12 usingWebKitFormatter])
    {
      v38 = [(UIPrintPreviewViewController *)v12 printSheetController];
      [v38 recalculateWebKitPageCount];
    }
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [v3 cancelAllOperations];

  v4 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  [v4 removeAllObjects];

  v5 = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [v5 cancel];

  v6 = [(UIPrintPreviewViewController *)self printInfo];
  [v6 removeObserver:self forKeyPath:0x2871AF1B0];

  v7 = [(UIPrintPreviewViewController *)self printInfo];
  [v7 removeObserver:self forKeyPath:0x2871AF110];

  v8 = [(UIPrintPreviewViewController *)self printInfo];
  [v8 removeObserver:self forKeyPath:0x2871AF1D0];

  v9 = [(UIPrintPreviewViewController *)self printInfo];
  [v9 removeObserver:self forKeyPath:0x2871AF0D0];

  v10 = [(UIPrintPreviewViewController *)self printInfo];
  [v10 removeObserver:self forKeyPath:0x2871AF1F0];

  v11 = [(UIPrintPreviewViewController *)self printInfo];
  [v11 removeObserver:self forKeyPath:0x2871AF130];

  v12 = [(UIPrintPreviewViewController *)self printInfo];
  [v12 removeObserver:self forKeyPath:0x2871AF290];

  v13 = [(UIPrintPreviewViewController *)self printInfo];
  [v13 removeObserver:self forKeyPath:0x2871AF2F0];

  v14 = [(UIPrintPreviewViewController *)self printInfo];
  [v14 removeObserver:self forKeyPath:0x2871AF310];

  v15 = [(UIPrintPreviewViewController *)self printInfo];
  [v15 removeObserver:self forKeyPath:0x2871AF330];

  v16 = [(UIPrintPreviewViewController *)self printInfo];
  [v16 removeObserver:self forKeyPath:0x2871AF350];

  v17 = [(UIPrintPreviewViewController *)self printInfo];
  [v17 removeObserver:self forKeyPath:0x2871AF0B0];

  v18.receiver = self;
  v18.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v18 dealloc];
}

- (void)setNumberOfSheets:(int64_t)a3
{
  if (self->_numberOfSheets != a3)
  {
    self->_numberOfSheets = a3;
    v4 = [(UIPrintPreviewViewController *)self collectionView];
    [v4 reloadData];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if ([v7 isEqualToString:0x2871AF1B0])
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
    v9 = v7;
    v10 = self;
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
  v3 = [(UIPrintPreviewViewController *)self collectionView];
  [v3 setDataSource:self];

  v4 = [(UIPrintPreviewViewController *)self collectionView];
  [v4 setDelegate:self];

  v5 = [(UIPrintPreviewViewController *)self collectionView];
  [v5 setPrefetchingEnabled:1];

  v6 = [(UIPrintPreviewViewController *)self collectionView];
  [v6 setPrefetchDataSource:self];

  v7 = [(UIPrintPreviewViewController *)self collectionView];
  [v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIPrintPreviewPageCell"];

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(UIPrintPreviewViewController *)self collectionView];
  [v9 setBackgroundColor:v8];

  v10 = [(UIPrintPreviewViewController *)self printInteractionController];
  LOBYTE(v9) = [v10 preventPDFCreation];

  if ((v9 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_handlePinch_];
    v12 = [(UIPrintPreviewViewController *)self collectionView];
    [v12 addGestureRecognizer:v11];
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
  v12 = [(UIPrintPreviewViewController *)self pagesImage];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke;
  v79[3] = &unk_279A9C688;
  objc_copyWeak(&v80, &location);
  v13 = [v9 actionWithTitle:v11 image:v12 identifier:0 handler:v79];
  [(UIPrintPreviewViewController *)self setPagesPopupAction:v13];

  v14 = MEMORY[0x277D750C8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Sheet View" value:@"Sheet View" table:@"Localizable"];
  v17 = [(UIPrintPreviewViewController *)self sheetsImage];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __50__UIPrintPreviewViewController_setupLayoutControl__block_invoke_2;
  v77[3] = &unk_279A9C688;
  objc_copyWeak(&v78, &location);
  v18 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v77];
  [(UIPrintPreviewViewController *)self setSheetsPopupAction:v18];

  v19 = MEMORY[0x277D75710];
  v20 = [(UIPrintPreviewViewController *)self pagesPopupAction];
  v84[0] = v20;
  v21 = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  v84[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
  v74 = [v19 menuWithTitle:&stru_2871AE610 children:v22];

  if ([(UIPrintPreviewViewController *)self solariumEnabled])
  {
    if ([(UIPrintPreviewViewController *)self usingCompactPreview])
    {
      v23 = MEMORY[0x277D75220];
      v24 = [MEMORY[0x277D75230] glassButtonConfiguration];
      v25 = [v23 buttonWithConfiguration:v24 primaryAction:0];
      [(UIPrintPreviewViewController *)self setLayoutGlassButton:v25];

      v26 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [v26 setMenu:v74];

      v27 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [v27 setShowsMenuAsPrimaryAction:1];

      v28 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      v29 = [(UIPrintPreviewViewController *)self pagesImage];
      [v28 setImage:v29 forState:0];

      v30 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

      v31 = MEMORY[0x277CCAAD0];
      v75 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      v32 = [v75 widthAnchor];
      v33 = [v32 constraintEqualToConstant:44.0];
      v82[0] = v33;
      v34 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      v35 = [v34 heightAnchor];
      v36 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      v37 = [v36 widthAnchor];
      v38 = [v35 constraintEqualToAnchor:v37];
      v82[1] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
      [v31 activateConstraints:v39];

      v40 = [(UIPrintPreviewViewController *)self containerView];
      v41 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      [v40 addSubview:v41];

      v76 = [(UIPrintPreviewViewController *)self layoutGlassButton];
      v42 = [(UIPrintPreviewViewController *)self containerView];
      [v42 setLayoutGlassButton:v76];
    }

    else
    {
      v72 = objc_alloc(MEMORY[0x277D751E0]);
      v76 = [(UIPrintPreviewViewController *)self pagesImage];
      v42 = [v72 initWithImage:v76 menu:v74];
      [(UIPrintPreviewViewController *)self setLayoutBarButton:v42];
    }
  }

  else
  {
    v76 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v76 setIndicator:2];
    [v76 setTitleLineBreakMode:4];
    v43 = [MEMORY[0x277D75220] buttonWithConfiguration:v76 primaryAction:0];
    [(UIPrintPreviewViewController *)self setLayoutPopupButton:v43];

    v44 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v44 setMenu:v74];

    v45 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v45 setShowsMenuAsPrimaryAction:1];

    v46 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v46 setChangesSelectionAsPrimaryAction:1];

    v47 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

    v48 = [MEMORY[0x277D75348] labelColor];
    v49 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v49 setTintColor:v48];

    v50 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v50 setHidden:1];

    v51 = [(UIPrintPreviewViewController *)self containerView];
    v52 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v51 addSubview:v52];

    v53 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v54 = [v53 topAnchor];
    v55 = [(UIPrintPreviewViewController *)self containerView];
    v56 = [v55 topAnchor];
    [(UIPrintPreviewViewController *)self headerHeight];
    v58 = v57;
    v59 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v59 frame];
    v61 = [v54 constraintEqualToAnchor:v56 constant:(v58 - v60) * 0.5];
    [(UIPrintPreviewViewController *)self setLayoutPopupButtonTopConstraint:v61];

    v42 = [(UIPrintPreviewViewController *)self containerView];
    v73 = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
    v83[0] = v73;
    v62 = MEMORY[0x277CCAAD0];
    v63 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v64 = [(UIPrintPreviewViewController *)self containerView];
    v65 = [v62 constraintWithItem:v63 attribute:19 relatedBy:0 toItem:v64 attribute:19 multiplier:1.0 constant:0.0];
    v83[1] = v65;
    v66 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v67 = [v66 widthAnchor];
    v68 = [(UIPrintPreviewViewController *)self containerView];
    v69 = [v68 widthAnchor];
    v70 = [v67 constraintLessThanOrEqualToAnchor:v69];
    v83[2] = v70;
    v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
    [v42 addConstraints:v71];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v4 viewWillDisappear:a3];
  [(UIPrintPreviewViewController *)self setNeedsNavBarShown:1];
  [(UIPrintPreviewViewController *)self updateLayoutControl];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPrintPreviewViewController;
  [(UIPrintPreviewViewController *)&v4 viewWillAppear:a3];
  [(UIPrintPreviewViewController *)self setNeedsNavBarShown:0];
  [(UIPrintPreviewViewController *)self updateLayoutControl];
}

- (int64_t)positionForBar:(id)a3
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
  v3 = [(UIPrintPreviewViewController *)self pagesPopupAction];

  if (!v3)
  {
    [(UIPrintPreviewViewController *)self setupLayoutControl];
  }

  v4 = [(UIPrintPreviewViewController *)self printInfo];
  v5 = [v4 pageRanges];
  v6 = [v5 count];

  v7 = [(UIPrintPreviewViewController *)self printInfo];
  v8 = [v7 pageRanges];
  v9 = v8;
  if (v6 == 1)
  {
    v10 = [v8 objectAtIndex:0];
    [v10 rangeValue];
    v12 = v11;

    v7 = [(UIPrintPreviewViewController *)self printInfo];
    v13 = v12 != [v7 pageCount];
  }

  else
  {
    v13 = [v8 count] > 1;
  }

  v14 = [(UIPrintPreviewViewController *)self printInfo];
  v15 = [v14 nUpActive];

  if ((v15 & 1) == 0 && (![(UIPrintPreviewViewController *)self showPageRange]|| !v13))
  {
    [(UIPrintPreviewViewController *)self setPreviewLayoutType:0];
    v30 = 0;
    goto LABEL_30;
  }

  v16 = [(UIPrintPreviewViewController *)self showingPageView];
  v17 = [(UIPrintPreviewViewController *)self pagesPopupAction];
  [v17 setState:v16];

  v18 = [(UIPrintPreviewViewController *)self showingPageView]^ 1;
  v19 = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  [v19 setState:v18];

  v20 = MEMORY[0x277D75710];
  v21 = [(UIPrintPreviewViewController *)self pagesPopupAction];
  v91[0] = v21;
  v22 = [(UIPrintPreviewViewController *)self sheetsPopupAction];
  v91[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
  v24 = [v20 menuWithTitle:&stru_2871AE610 children:v23];

  v25 = [(UIPrintPreviewViewController *)self layoutPopupButton];

  if (v25)
  {
    v26 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v26 setMenu:v24];
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(UIPrintPreviewViewController *)self layoutGlassButton];

  if (v27)
  {
    v28 = [(UIPrintPreviewViewController *)self layoutGlassButton];
    [v28 setMenu:v24];

    v29 = [(UIPrintPreviewViewController *)self layoutGlassButton];
    if ([(UIPrintPreviewViewController *)self showingPageView])
    {
      [(UIPrintPreviewViewController *)self pagesImage];
    }

    else
    {
      [(UIPrintPreviewViewController *)self sheetsImage];
    }
    v33 = ;
    [v29 setImage:v33 forState:0];

    LODWORD(v33) = [(UIPrintPreviewViewController *)self showingPageView];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = v34;
    if (v33)
    {
      v35 = @"Page View";
    }

    else
    {
      v35 = @"Sheet View";
    }

    v36 = [v34 localizedStringForKey:v35 value:v35 table:@"Localizable"];
    v37 = [(UIPrintPreviewViewController *)self layoutGlassButton];
LABEL_27:
    v42 = v37;
    [v37 setAccessibilityLabel:v36];

    goto LABEL_28;
  }

  v31 = [(UIPrintPreviewViewController *)self layoutBarButton];

  if (v31)
  {
    v32 = [(UIPrintPreviewViewController *)self layoutBarButton];
    [v32 setMenu:v24];

    if ([(UIPrintPreviewViewController *)self showingPageView])
    {
      [(UIPrintPreviewViewController *)self pagesImage];
    }

    else
    {
      [(UIPrintPreviewViewController *)self sheetsImage];
    }
    v38 = ;
    v39 = [(UIPrintPreviewViewController *)self layoutBarButton];
    [v39 setImage:v38];

    LODWORD(v39) = [(UIPrintPreviewViewController *)self showingPageView];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = v40;
    if (v39)
    {
      v41 = @"Page View";
    }

    else
    {
      v41 = @"Sheet View";
    }

    v36 = [v40 localizedStringForKey:v41 value:v41 table:@"Localizable"];
    v37 = [(UIPrintPreviewViewController *)self layoutBarButton];
    goto LABEL_27;
  }

LABEL_29:

  v30 = 1;
LABEL_30:
  if (![(UIPrintPreviewViewController *)self solariumEnabled])
  {
    v45 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    [v45 setHidden:v30 ^ 1u];

    if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
    {
      v46 = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
      [v46 setConstant:8.0];
    }

    else
    {
      v47 = [(UIPrintPreviewViewController *)self collectionView];
      v46 = [v47 collectionViewLayout];

      v48 = 0.0;
      if ((v30 & 1) == 0)
      {
        [(UIPrintPreviewViewController *)self headerHeight];
        v48 = v49;
      }

      [v46 setHeaderReferenceSize:{16.0, v48}];
      [(UIPrintPreviewViewController *)self headerHeight];
      v51 = v50;
      v52 = [(UIPrintPreviewViewController *)self layoutPopupButton];
      [v52 frame];
      v54 = (v51 - v53) * 0.5;
      v55 = [(UIPrintPreviewViewController *)self layoutPopupButtonTopConstraint];
      [v55 setConstant:v54];
    }

    v56 = [(UIPrintPreviewViewController *)self collectionViewContainerTopConstraint];

    if (!v56)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v57 = [(UIPrintPreviewViewController *)self containerView];
      v58 = [v57 constraints];

      v59 = [v58 countByEnumeratingWithState:&v86 objects:v90 count:16];
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
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v86 + 1) + 8 * i);
            v64 = [v63 firstAnchor];
            v65 = [(UIPrintPreviewViewController *)self collectionView];
            v66 = [v65 topAnchor];

            if (v64 == v66)
            {
              [(UIPrintPreviewViewController *)self setCollectionViewContainerTopConstraint:v63];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v86 objects:v90 count:16];
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

    v70 = [(UIPrintPreviewViewController *)self collectionViewContainerTopConstraint];
    [v70 setConstant:v68];

    v71 = [(UIPrintPreviewViewController *)self containerView];
    [v71 setNeedsUpdateConstraints];

    v72 = [(UIPrintPreviewViewController *)self collectionView];
    [v72 bounds];
    v74 = v73;
    if (v30)
    {
      [(UIPrintPreviewViewController *)self headerHeight];
      v67 = v75;
    }

    v76 = [(UIPrintPreviewViewController *)self containerView];
    [v76 safeAreaInsets];
    v78 = v74 + v67 + v77;

    v44 = [MEMORY[0x277CCAB98] defaultCenter];
    v79 = objc_alloc(MEMORY[0x277CCABB0]);
    *&v80 = v78;
    v81 = [v79 initWithFloat:v80];
    [v44 postNotificationName:@"UIPrintPreviewHeightDidChangeNotification" object:v81 userInfo:0];
    goto LABEL_54;
  }

  v43 = [(UIPrintPreviewViewController *)self layoutGlassButton];

  if (!v43)
  {
    if (v30)
    {
      v82 = 0;
    }

    else
    {
      v82 = [(UIPrintPreviewViewController *)self needsNavBarShown]^ 1;
    }

    v83 = [(UIPrintPreviewViewController *)self navigationController];
    [v83 setNavigationBarHidden:v82];

    v84 = [(UIPrintPreviewViewController *)self navigationController];
    v85 = [v84 navigationBar];
    v44 = [v85 topItem];

    if ([(UIPrintPreviewViewController *)self needsNavBarShown])
    {
      v81 = [(UIPrintPreviewViewController *)self printPanelViewController];
      [v81 addCanelButtonToNavItem:v44];
    }

    else
    {
      v81 = [(UIPrintPreviewViewController *)self layoutBarButton];
      [v44 setLeftBarButtonItem:v81];
    }

LABEL_54:

    goto LABEL_55;
  }

  v44 = [(UIPrintPreviewViewController *)self layoutGlassButton];
  [v44 setHidden:v30 ^ 1u];
LABEL_55:
}

- (void)layoutPopupButtonChanged:(int64_t)a3
{
  if ([(UIPrintPreviewViewController *)self previewLayoutType]!= a3)
  {
    [(UIPrintPreviewViewController *)self setPreviewLayoutType:a3];

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

  v6 = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [v6 setName:@"com.apple.UIKit.UIPrintPreviewViewController.updatePageCountThread"];

  v7 = [(UIPrintPreviewViewController *)self updatePageCountThread];
  [v7 start];

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
  v3 = [(UIPrintPreviewViewController *)self printSheetController];
  [v3 clearPagesCache];

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
    v5 = [(UIPrintPreviewViewController *)self printSheetController];
    [v5 generateWebKitThumbnailsWithCompletionBlock:v4];
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

- (void)updatePrintPreviewPages:(BOOL)a3
{
  if (a3)
  {
    v5 = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
    [v5 cancelAllOperations];

    v6 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    objc_sync_enter(v6);
    v7 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    [v7 removeAllObjects];

    objc_sync_exit(v6);
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UIPrintPreviewViewController_updatePrintPreviewPages___block_invoke;
  block[3] = &unk_279A9C6B0;
  objc_copyWeak(&v9, &location);
  v10 = a3;
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
  v3 = [(UIPrintPreviewViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ([(UIPrintPreviewViewController *)self usingCompactPreview])
  {
    v8 = [(UIPrintPreviewViewController *)self collectionView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    v13 = v10 + -32.0;
    v7 = v12 + -32.0;
  }

  else
  {
    v14 = [(UIPrintPreviewViewController *)self view];
    [v14 layoutMargins];
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
    v20 = [(UIPrintPreviewViewController *)self collectionView];
    [v20 bounds];
    [(UIPrintPreviewViewController *)self setPreviewViewSize:v13, v19 + -24.0 + -48.0];
  }
}

- (void)setScrollDirection:(int64_t)a3
{
  [(UIPrintPreviewViewController *)self setPreviewScrollDirection:?];
  v5 = [(UIPrintPreviewViewController *)self collectionView];
  v14 = [v5 collectionViewLayout];

  if ([v14 scrollDirection] != a3)
  {
    [v14 setScrollDirection:a3];
    v6 = a3 == 1;
    v7 = a3 != 1;
    v8 = v6;
    v9 = [(UIPrintPreviewViewController *)self collectionView];
    [v9 setShowsHorizontalScrollIndicator:v8];

    v10 = [(UIPrintPreviewViewController *)self collectionView];
    [v10 setBouncesHorizontally:v8];

    v11 = [(UIPrintPreviewViewController *)self collectionView];
    [v11 setShowsVerticalScrollIndicator:v7];

    v12 = [(UIPrintPreviewViewController *)self collectionView];
    [v12 setBouncesVertically:v7];

    [(UIPrintPreviewViewController *)self updatePrintPreviewPages:1];
    v13 = [(UIPrintPreviewViewController *)self view];
    [v13 setNeedsLayout];
  }
}

- (CGSize)maxThumbnailSize
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = [(UIPrintPreviewViewController *)self previewScrollDirection];
  [(UIPrintPreviewViewController *)self previewViewSize];
  if (v5)
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

- (CGSize)thumbnailSizeForPageIndex:(int64_t)a3
{
  [(UIPrintPreviewViewController *)self previewViewSize];
  if (v5 <= 0.0 || ([(UIPrintPreviewViewController *)self previewViewSize], v6 <= 0.0))
  {
    [(UIPrintPreviewViewController *)self updatePreviewViewSize];
  }

  [(UIPrintPreviewViewController *)self previewViewSize];
  v8 = v7;
  v10 = v9;
  v11 = [(UIPrintPreviewViewController *)self printSheetController];
  [v11 sizeForSheetNum:a3 + 1 showingPageView:{-[UIPrintPreviewViewController showingPageView](self, "showingPageView")}];
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
    v3 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v4 = 0.0;
    if (([v3 isHidden] & 1) == 0)
    {
      v5 = [(UIPrintPreviewViewController *)self layoutPopupButton];
      [v5 frame];
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
        v7 = [(UIPrintPreviewViewController *)self printPanelViewController];
        v8 = [v7 printOptionsNavController];
        v9 = [v8 navigationBar];
        [v9 frame];
        v4 = v10;

        v11 = [(UIPrintPreviewViewController *)self layoutPopupButton];
        LOBYTE(v8) = [v11 isHidden];

        if ((v8 & 1) == 0)
        {
          v12 = [(UIPrintPreviewViewController *)self layoutPopupButton];
          [v12 frame];
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
    v5 = [(UIPrintPreviewViewController *)self collectionView];
    [v5 bounds];
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
    v15 = [(UIPrintPreviewViewController *)self layoutPopupButton];
    v14 = 0.0;
    if ([v15 isHidden])
    {
      [(UIPrintPreviewViewController *)self headerHeight];
      v14 = v16;
    }

    v13 = *v3;

    v10 = v13;
  }

  v17 = [(UIPrintPreviewViewController *)self collectionView];
  v24 = [v17 collectionViewLayout];

  [v24 headerReferenceSize];
  v20 = v19 == v10 && v18 == v14;
  if (!v20 || (([v24 footerReferenceSize], v22 == v13) ? (v23 = v21 == v4) : (v23 = 0), !v23))
  {
    [v24 setHeaderReferenceSize:{v10, v14}];
    [v24 setFooterReferenceSize:{v13, v4}];
  }
}

- (void)updatePageRange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(UIPrintPreviewViewController *)self printSheetController];
  [v4 updateSelectionPageMap];

  if ([(UIPrintPreviewViewController *)self showingPageView])
  {
    v5 = [(UIPrintPreviewViewController *)self collectionView];
    v6 = [v5 _indexPathsForPreparedItems];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
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
          v13 = [(UIPrintPreviewViewController *)self collectionView];
          v14 = [v13 cellForItemAtIndexPath:v12];

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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 item];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"UIPrintPreviewPageCell" forIndexPath:v7];
  [v9 setPrintPreviewDelegate:self];
  v10 = [(UIPrintPreviewViewController *)self numberOfSheets];
  v11 = [(UIPrintPreviewViewController *)self showPageRange];
  v12 = [(UIPrintPreviewViewController *)self showingPageView]&& v11;
  if (v10 > 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:v8];
  [v9 updatePageLabelAndImageViewWithIndex:v8 pageCount:v10 allowSelection:v13 thumbnailSize:?];
  v14 = v13 != 1 || -[UIPrintPreviewViewController pageIndexIsInRange:](self, "pageIndexIsInRange:", [v7 row]);
  [v9 setInRange:v14 animated:0];
  v15 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  objc_sync_enter(v15);
  v16 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "item")}];
  v18 = [v16 objectForKey:v17];

  objc_sync_exit(v15);
  if (v18)
  {
    [v9 setThumbnailImage:v18];
  }

  else
  {
    [v9 invalidateThumbnailImage];
    [(UIPrintPreviewViewController *)self fetchThumnailImageInBackground:v8 previewPageCell:v9];
  }

  return v9;
}

- (void)fetchThumnailImageInBackground:(int64_t)a3 previewPageCell:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  objc_initWeak(&location, v7);
  objc_initWeak(&from, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__UIPrintPreviewViewController_fetchThumnailImageInBackground_previewPageCell___block_invoke;
  v11[3] = &unk_279A9C748;
  objc_copyWeak(&v14, &from);
  v15[1] = a3;
  objc_copyWeak(v15, &location);
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = MEMORY[0x25F8E54A0](v11);
  [v7 addExecutionBlock:v9];
  v10 = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [v10 addOperation:v7];

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

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "item")}];
        v13 = [v11 objectForKey:v12];

        if (!v13)
        {
          -[UIPrintPreviewViewController fetchThumnailImageInBackground:previewPageCell:](self, "fetchThumnailImageInBackground:previewPageCell:", [v10 item], 0);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [a5 item];

  [(UIPrintPreviewViewController *)self thumbnailSizeForPageIndex:v6];
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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
  v2 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v3 = [v2 shouldShowPageRange];

  return v3;
}

- (void)pageBadgeTapped:(int64_t)a3
{
  if ([(UIPrintPreviewViewController *)self canRemovePage:self forPageIndex:a3])
  {

    [(UIPrintPreviewViewController *)self removePage:self forPageIndex:a3];
  }

  else if ([(UIPrintPreviewViewController *)self canAddPage:self forPageIndex:a3])
  {

    [(UIPrintPreviewViewController *)self addPage:self forPageIndex:a3];
  }
}

- (BOOL)pageIndexIsInRange:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(UIPrintPreviewViewController *)self printInfo];
  v5 = [v4 pageRanges];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) rangeValue];
        if (a3 >= v10 && a3 - v10 < v11)
        {
          v13 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)canSetStartPage:(id)a3 forPageIndex:(int64_t)a4
{
  v6 = [(UIPrintPreviewViewController *)self showPageRange];
  if (!v6)
  {
    return v6;
  }

  v7 = [(UIPrintPreviewViewController *)self printInfo];
  v8 = [v7 pageRanges];
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = [(UIPrintPreviewViewController *)self printInfo];
  v11 = [v10 pageRanges];
  v12 = [v11 count];

  if (!v12)
  {
LABEL_12:
    LOBYTE(v6) = 1;
    return v6;
  }

  v13 = [(UIPrintPreviewViewController *)self printInfo];
  v14 = [v13 pageRanges];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 rangeValue];
  v18 = v17;

  v19 = [(UIPrintPreviewViewController *)self printInfo];
  v20 = [v19 pageRanges];
  v21 = [v20 count];

  LOBYTE(v6) = v21 == 1 && v16 != a4 && v16 + v18 > a4;
  return v6;
}

- (void)setStartPage:(id)a3 forPageIndex:(int64_t)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = [(UIPrintPreviewViewController *)self printInfo];
  v7 = [v6 pageRanges];

  if (!v7 || ![v7 count])
  {
    v15 = MEMORY[0x277CCAE60];
    v13 = [(UIPrintPreviewViewController *)self printInfo];
    v14 = [v15 valueWithRange:{a4, objc_msgSend(v13, "pageCount")}];
    v19[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v17 = [(UIPrintPreviewViewController *)self printInfo];
    [v17 setPageRanges:v16];

    goto LABEL_6;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 rangeValue];
    v11 = v10;

    v12 = [MEMORY[0x277CCAE60] valueWithRange:{a4, v11 - a4 + v9}];
    v18 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];

    [(UIPrintPreviewViewController *)self updatePageRange:v13];
    v14 = [(UIPrintPreviewViewController *)self printInfo];
    [v14 setPageRanges:v13];
LABEL_6:
  }
}

- (BOOL)canSetEndPage:(id)a3 forPageIndex:(int64_t)a4
{
  if ([(UIPrintPreviewViewController *)self showPageRange])
  {
    v6 = [(UIPrintPreviewViewController *)self printInfo];
    v7 = [v6 pageRanges];
    if (v7)
    {
      v8 = v7;
      v9 = [(UIPrintPreviewViewController *)self printInfo];
      v10 = [v9 pageRanges];
      v11 = [v10 count];

      if (!v11)
      {
        return 1;
      }

      v12 = [(UIPrintPreviewViewController *)self printInfo];
      v13 = [v12 pageRanges];
      v14 = [v13 objectAtIndexedSubscript:0];
      v15 = [v14 rangeValue];
      v17 = v16;

      v18 = [(UIPrintPreviewViewController *)self printInfo];
      v19 = [v18 pageRanges];
      v20 = [v19 count];

      if (v20 != 1 || v15 > a4 || v17 + v15 - 1 == a4)
      {
        return 0;
      }

      v6 = [(UIPrintPreviewViewController *)self printInfo];
      v21 = [v6 pageCount] - 1 > a4;
    }

    else
    {
      v21 = 1;
    }

    return v21;
  }

  return 0;
}

- (void)setEndPage:(id)a3 forPageIndex:(int64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = [(UIPrintPreviewViewController *)self printInfo];
  v7 = [v6 pageRanges];

  if (!v7 || ![v7 count])
  {
    v11 = [MEMORY[0x277CCAE60] valueWithRange:{0, a4}];
    v15[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = [(UIPrintPreviewViewController *)self printInfo];
    [v13 setPageRanges:v12];

    goto LABEL_6;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 rangeValue];

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v9, a4 - v9 + 1}];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

    [(UIPrintPreviewViewController *)self updatePageRange:v11];
    v12 = [(UIPrintPreviewViewController *)self printInfo];
    [v12 setPageRanges:v11];
LABEL_6:
  }
}

- (BOOL)canAddPage:(id)a3 forPageIndex:(int64_t)a4
{
  v6 = [(UIPrintPreviewViewController *)self showPageRange];
  if (v6)
  {
    LOBYTE(v6) = ![(UIPrintPreviewViewController *)self pageIndexIsInRange:a4];
  }

  return v6;
}

- (void)addPage:(id)a3 forPageIndex:(int64_t)a4
{
  v5 = self;
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = [(UIPrintPreviewViewController *)self printInfo];
  v7 = [v6 pageRanges];

  if (!v7 || ![v7 count])
  {
    v28 = [MEMORY[0x277CCAE60] valueWithRange:{a4, 1}];
    v34[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v30 = [(UIPrintPreviewViewController *)v5 printInfo];
    [v30 setPageRanges:v29];

    goto LABEL_21;
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if (![v7 count])
  {
    goto LABEL_18;
  }

  v31 = v5;
  range2 = a4;
  v9 = 0;
  v10 = 0;
  range2_8 = v8;
  do
  {
    v11 = [v7 objectAtIndexedSubscript:v10];
    v12 = [v11 rangeValue];
    v14 = v13;

    v35.location = v12;
    v35.length = v14;
    v38.location = a4;
    v38.length = 1;
    v15 = NSUnionRange(v35, v38);
    if (v15.length == v14 + 1 && (v9 & 1) == 0)
    {
      if ([v7 count] > v10 + 1 && (objc_msgSend(v7, "objectAtIndexedSubscript:", v10 + 1), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeValue"), v19 = v18, v16, v36.location = v17, v36.length = v19, v39.location = range2, v39.length = 1, NSUnionRange(v36, v39).length == v19 + 1))
      {
        v20 = MEMORY[0x277CCAE60];
        v37.location = v12;
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

      a4 = range2;
      goto LABEL_14;
    }

    v23 = [v7 objectAtIndexedSubscript:v10];
    v24 = ([v23 rangeValue] <= a4) | v9;

    if (v24)
    {
      v22 = [v7 objectAtIndexedSubscript:v10];
LABEL_14:
      v8 = range2_8;
      goto LABEL_16;
    }

    v25 = [MEMORY[0x277CCAE60] valueWithRange:{a4, 1}];
    v8 = range2_8;
    [range2_8 addObject:v25];

    v22 = [v7 objectAtIndexedSubscript:v10];
    v9 = 1;
LABEL_16:
    [v8 addObject:v22];

    ++v10;
  }

  while (v10 < [v7 count]);
  v5 = v31;
  if ((v9 & 1) == 0)
  {
LABEL_18:
    v26 = [MEMORY[0x277CCAE60] valueWithRange:{a4, 1}];
    [v8 addObject:v26];
  }

  [(UIPrintPreviewViewController *)v5 updatePageRange:v8];
  v27 = [(UIPrintPreviewViewController *)v5 printInfo];
  [v27 setPageRanges:v8];

LABEL_21:
}

- (BOOL)canRemovePage:(id)a3 forPageIndex:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(UIPrintPreviewViewController *)self showPageRange];
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(UIPrintPreviewViewController *)self printInfo];
    v8 = [v7 pageRanges];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * i) rangeValue];
          v10 += v13;
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
      v9 = v10 > 1;
    }

    LOBYTE(v6) = [(UIPrintPreviewViewController *)self pageIndexIsInRange:a4]& v9;
  }

  return v6;
}

- (void)removePage:(id)a3 forPageIndex:(int64_t)a4
{
  v5 = self;
  v6 = [(UIPrintPreviewViewController *)self printInfo];
  v32 = [v6 pageRanges];

  if (v32 && [v32 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v32, "count")}];
    v8 = 0;
    if ([v32 count])
    {
      v9 = v32;
      while (1)
      {
        v10 = [v9 objectAtIndexedSubscript:v8];
        v11 = [v10 rangeValue];
        v13 = v12;

        if (a4 >= v11 && a4 - v11 < v13)
        {
          break;
        }

        ++v8;
        v14 = [v32 count];
        v9 = v32;
        if (v8 >= v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v13 = 0;
      v11 = 0;
    }

    v9 = v32;
LABEL_11:
    if ([v9 count])
    {
      v15 = 0;
      v16 = v13 - 1 + v11;
      v31 = v5;
      do
      {
        if (v8 == v15 && v13 == 1)
        {
          goto LABEL_25;
        }

        if (v8 == v15 && v11 == a4)
        {
          v17 = MEMORY[0x277CCAE60];
          location = a4 + 1;
        }

        else
        {
          if (v8 != v15)
          {
            v20 = [v32 objectAtIndexedSubscript:v15];
            goto LABEL_24;
          }

          if (v16 != a4)
          {
            v22 = [(UIPrintPreviewViewController *)v5 printInfo];
            v23 = v16;
            v24 = [v22 pageCount];

            v25 = MEMORY[0x277CCAE60];
            v34.location = v11;
            v34.length = v13;
            v36.location = 0;
            v36.length = a4;
            v26 = NSIntersectionRange(v34, v36);
            v27 = [v25 valueWithRange:{v26.location, v26.length}];
            [v7 addObject:v27];

            v28 = MEMORY[0x277CCAE60];
            v37.location = a4 + 1;
            v37.length = v24 + ~a4;
            v16 = v23;
            v5 = v31;
            v35.location = v11;
            v35.length = v13;
            v29 = NSIntersectionRange(v35, v37);
            location = v29.location;
            v17 = v28;
            length = v29.length;
            goto LABEL_19;
          }

          v17 = MEMORY[0x277CCAE60];
          location = v11;
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

      while (v15 < [v32 count]);
    }

    [(UIPrintPreviewViewController *)v5 updatePageRange:v7];
    v30 = [(UIPrintPreviewViewController *)v5 printInfo];
    [v30 setPageRanges:v7];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)canAddAllPages:(id)a3
{
  if (-[UIPrintPreviewViewController showPageRange](self, "showPageRange", a3) && (-[UIPrintPreviewViewController printInfo](self, "printInfo"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 pageCount], v4, v5 >= 1))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 |= ![(UIPrintPreviewViewController *)self pageIndexIsInRange:v6++];
      v8 = [(UIPrintPreviewViewController *)self printInfo];
      v9 = [v8 pageCount];
    }

    while (v9 > v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (void)addAllPages:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAE60];
  v5 = [(UIPrintPreviewViewController *)self printInfo];
  v6 = [v4 valueWithRange:{0, objc_msgSend(v5, "pageCount")}];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  [(UIPrintPreviewViewController *)self updatePageRange:v7];
  v8 = [(UIPrintPreviewViewController *)self printInfo];
  [v8 setPageRanges:v7];
}

- (void)scrollToBeginning
{
  v4 = *MEMORY[0x277D75060];
  v3 = *(MEMORY[0x277D75060] + 8);
  v5 = *(MEMORY[0x277D75060] + 16);
  v6 = *(MEMORY[0x277D75060] + 24);
  v7 = [(UIPrintPreviewViewController *)self collectionView];
  v16 = [v7 collectionViewLayout];

  v8 = [(UIPrintPreviewViewController *)self previewScrollDirection];
  [v16 headerReferenceSize];
  v10 = v9 + 20.0;
  v12 = v11 + 20.0;
  if (v8 == 1)
  {
    v3 = v10;
  }

  else
  {
    v4 = v12;
  }

  v13 = [(UIPrintPreviewViewController *)self collectionView];
  v14 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  if ([(UIPrintPreviewViewController *)self previewScrollDirection])
  {
    v15 = 8;
  }

  else
  {
    v15 = 1;
  }

  [v13 _scrollToItemAtIndexPath:v14 atScrollPosition:v15 additionalInsets:1 animated:{v4, v3, v5, v6}];
}

- (void)scrollToEnd
{
  v3 = MEMORY[0x277D75060];
  v4 = *MEMORY[0x277D75060];
  v5 = *(MEMORY[0x277D75060] + 8);
  v6 = *(MEMORY[0x277D75060] + 16);
  if ([(UIPrintPreviewViewController *)self previewScrollDirection]== 1)
  {
    v7 = [(UIPrintPreviewViewController *)self collectionView];
    v8 = [v7 collectionViewLayout];

    [v8 footerReferenceSize];
    v10 = v9 + 20.0;
  }

  else
  {
    v10 = *(v3 + 24);
  }

  v13 = [(UIPrintPreviewViewController *)self collectionView];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:-[UIPrintPreviewViewController numberOfSheets](self inSection:{"numberOfSheets") - 1, 0}];
  if ([(UIPrintPreviewViewController *)self previewScrollDirection])
  {
    v12 = 32;
  }

  else
  {
    v12 = 4;
  }

  [v13 _scrollToItemAtIndexPath:v11 atScrollPosition:v12 additionalInsets:1 animated:{v4, v5, v6, v10}];
}

- (BOOL)canShowMenuBar
{
  v3 = [(UIPrintPreviewViewController *)self navigationController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(UIPrintPreviewViewController *)self view];
  v5 = [(UIPrintPreviewViewController *)self navigationController];
  v6 = [v5 topViewController];
  v7 = [v6 view];
  v8 = [v4 isDescendantOfView:v7];

  return v8;
}

- (id)printPagePreviewViewControllerForItemAtPageIndex:(int64_t)a3
{
  v5 = [MEMORY[0x277D75718] sharedMenuController];
  [v5 hideMenu];

  v6 = [(UIPrintPreviewViewController *)self longPressImageViewController];

  if (!v6)
  {
    v7 = [(UIPrintPreviewViewController *)self cachedThumbnailImages];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = [v7 objectForKey:v8];

    v10 = objc_alloc(MEMORY[0x277D755E8]);
    [v9 size];
    v12 = v11;
    [v9 size];
    v14 = [v10 initWithFrame:{0.0, 0.0, v12, v13}];
    [v14 setContentMode:2];
    [v14 setImage:v9];
    v15 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIPrintPreviewViewController *)self setLongPressImageViewController:v15];

    v16 = [(UIPrintPreviewViewController *)self longPressImageViewController];
    [v16 setView:v14];

    [v9 size];
    v18 = v17;
    v20 = v19;
    v21 = [(UIPrintPreviewViewController *)self longPressImageViewController];
    [v21 setPreferredContentSize:{v18, v20}];
  }

  return [(UIPrintPreviewViewController *)self longPressImageViewController];
}

- (id)printPagePreviewActionItemsWithPageIndex:(int64_t)a3
{
  v63[2] = *MEMORY[0x277D85DE8];
  v47 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  if ([(UIPrintPreviewViewController *)self showingPageView])
  {
    if ([(UIPrintPreviewViewController *)self canSetStartPage:self forPageIndex:a3])
    {
      v5 = MEMORY[0x277D750C8];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"Start at Page %ld" value:@"Start at Page %ld" table:@"Localizable"];
      v9 = [v6 localizedStringWithFormat:v8, a3 + 1];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke;
      v60[3] = &unk_279A9C770;
      objc_copyWeak(v61, &location);
      v61[1] = a3;
      v10 = [v5 actionWithTitle:v9 image:0 identifier:0 handler:v60];
      [v47 addObject:v10];

      objc_destroyWeak(v61);
    }

    if ([(UIPrintPreviewViewController *)self canSetEndPage:self forPageIndex:a3])
    {
      v11 = MEMORY[0x277D750C8];
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"Stop after Page %ld" value:@"Stop after Page %ld" table:@"Localizable"];
      v15 = [v12 localizedStringWithFormat:v14, a3 + 1];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_2;
      v58[3] = &unk_279A9C770;
      objc_copyWeak(v59, &location);
      v59[1] = a3;
      v16 = [v11 actionWithTitle:v15 image:0 identifier:0 handler:v58];
      [v47 addObject:v16];

      objc_destroyWeak(v59);
    }

    if ([(UIPrintPreviewViewController *)self canAddPage:self forPageIndex:a3])
    {
      v17 = MEMORY[0x277D750C8];
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Add Page %ld" value:@"Add Page %ld" table:@"Localizable"];
      v21 = [v18 localizedStringWithFormat:v20, a3 + 1];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_3;
      v56[3] = &unk_279A9C770;
      objc_copyWeak(v57, &location);
      v57[1] = a3;
      v22 = [v17 actionWithTitle:v21 image:0 identifier:0 handler:v56];
      [v47 addObject:v22];

      objc_destroyWeak(v57);
    }

    if ([(UIPrintPreviewViewController *)self canRemovePage:self forPageIndex:a3])
    {
      v23 = MEMORY[0x277D750C8];
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"Skip Page %ld" value:@"Skip Page %ld" table:@"Localizable"];
      v27 = [v24 localizedStringWithFormat:v26, a3 + 1];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __73__UIPrintPreviewViewController_printPagePreviewActionItemsWithPageIndex___block_invoke_4;
      v54[3] = &unk_279A9C770;
      objc_copyWeak(v55, &location);
      v55[1] = a3;
      v28 = [v23 actionWithTitle:v27 image:0 identifier:0 handler:v54];
      [v47 addObject:v28];

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
      [v47 addObject:v32];

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

    [v47 addObject:v45];
    objc_destroyWeak(&v49);

    objc_destroyWeak(&v51);
  }

  objc_destroyWeak(&location);

  return v47;
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
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

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(UIPrintPreviewViewController *)self collectionView];
  v7 = [v5 identifier];

  v8 = [v6 cellForItemAtIndexPath:v7];
  v9 = [v8 thumbnailView];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(UIPrintPreviewViewController *)self collectionView];
  v7 = [v5 identifier];

  v8 = [v6 cellForItemAtIndexPath:v7];
  v9 = [v8 thumbnailView];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIPrintPreviewViewController *)self printInteractionController];
  v12 = [v11 preventPDFCreation];

  if ((v12 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__UIPrintPreviewViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v13[3] = &unk_279A9C210;
    objc_copyWeak(&v14, &location);
    [v10 addCompletion:v13];
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
  v3 = [(UIPrintPreviewViewController *)self printPanelViewController];
  [v3 dismissKeyboard];

  v4 = [(UIPrintPreviewViewController *)self solariumEnabled];
  v5 = @"\n";
  if (v4)
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
  v12 = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  v13 = [v12 view];

  [v13 addSubview:v11];
  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:9 relatedBy:0 toItem:v13 attribute:9 multiplier:1.0 constant:0.0];
  [v13 addConstraint:v14];

  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v11 attribute:4 relatedBy:0 toItem:v13 attribute:4 multiplier:1.0 constant:-12.0];
  [v13 addConstraint:v15];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(UIPrintPreviewViewController *)self setGeneratingPreviewPresentationTime:?];
  v16 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v17 = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  [v16 presentViewController:v17 animated:1 completion:0];

  objc_initWeak(&location, self);
  v18 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__UIPrintPreviewViewController_showQuickLookFromPreviewAction__block_invoke;
  v19[3] = &unk_279A9C838;
  objc_copyWeak(&v20, &location);
  v19[4] = self;
  [v18 generateQuickLookPDFWithCompletionHandler:v19];

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

- (void)hideGeneratingPDFProgress:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintPreviewViewController *)self generatingPDFProgressController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UIPrintPreviewViewController_hideGeneratingPDFProgress___block_invoke;
  v7[3] = &unk_279A9BF78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __58__UIPrintPreviewViewController_hideGeneratingPDFProgress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setGeneratingPDFProgressController:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 showQuickLookDocumentInteractionController:v3];
}

- (void)showQuickLookDocumentInteractionController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIPrintPreviewViewController *)self printPanelViewController];
    v6 = [v5 createShareablePDFFileURL:v4];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x277D546E8] interactionControllerWithURL:v7];
    [(UIPrintPreviewViewController *)self setDocumentInteractionController:v8];

    v9 = [(UIPrintPreviewViewController *)self printInfo];
    v10 = [v9 jobName];
    v11 = [(UIPrintPreviewViewController *)self documentInteractionController];
    [v11 setName:v10];

    v12 = [(UIPrintPreviewViewController *)self printPanelViewController];
    objc_initWeak(&location, v12);

    v13 = [(UIPrintPreviewViewController *)self documentInteractionController];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __75__UIPrintPreviewViewController_showQuickLookDocumentInteractionController___block_invoke;
    v19 = &unk_279A9C860;
    objc_copyWeak(&v20, &location);
    [v13 _setCompletionWithItemsHandler:&v16];

    v14 = [(UIPrintPreviewViewController *)self documentInteractionController:v16];
    [v14 setDelegate:self];

    [(UIPrintPreviewViewController *)self setPreviewDocumentInteractionControllerRefCount:[(UIPrintPreviewViewController *)self previewDocumentInteractionControllerRefCount]+ 1];
    v15 = [(UIPrintPreviewViewController *)self documentInteractionController];
    LOBYTE(v10) = [v15 presentPreviewAnimated:0];

    if ((v10 & 1) == 0)
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

- (void)documentInteractionControllerDidEndPreview:(id)a3
{
  v4 = [(UIPrintPreviewViewController *)self previewDocumentInteractionControllerRefCount]- 1;

  [(UIPrintPreviewViewController *)self setPreviewDocumentInteractionControllerRefCount:v4];
}

- (void)documentInteractionController:(id)a3 didEndSendingToApplication:(id)a4
{
  v4 = [(UIPrintPreviewViewController *)self printPanelViewController:a3];
  [v4 cancelPrinting];
}

- (void)animateCellAndPresentDocumentInteractionController
{
  v3 = [(UIPrintPreviewViewController *)self printPanelViewController];
  [v3 dismissKeyboard];

  v4 = [(UIPrintPreviewViewController *)self pinchAnimationView];
  v5 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
  v6 = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
  [(UIPrintPreviewViewController *)self setPinchAnimationView:0];
  [(UIPrintPreviewViewController *)self setPinchGestureBeginningView:0];
  [(UIPrintPreviewViewController *)self setPinchAnimationProgressView:0];
  objc_initWeak(&location, self);
  v7 = [(UIPrintPreviewViewController *)self printPanelViewController];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__UIPrintPreviewViewController_animateCellAndPresentDocumentInteractionController__block_invoke;
  v15[3] = &unk_279A9C8B0;
  objc_copyWeak(&v19, &location);
  v8 = v6;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 generateQuickLookPDFWithCompletionHandler:v15];

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

- (id)createGeneratingPDFProgressView:(CGRect)a3
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v4 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 setAlpha:0.0];
  v5 = objc_alloc(MEMORY[0x277D756B8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Generating PDF" value:@"Generating PDF" table:@"Localizable"];
  [v6 setText:v8];

  [v6 sizeToFit];
  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v6 setTextColor:v9];

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

- (void)handlePinch:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1 || self->_pinchGestureBeginningView)
  {
    if ([v4 state] == 1)
    {
      v5 = [(UIPrintPreviewViewController *)self collectionView];
      v6 = [(UIPrintPreviewViewController *)self collectionView];
      [v4 locationInView:v6];
      v7 = [v5 indexPathForItemAtPoint:?];

      if (-[UIPrintPreviewViewController pageIndexIsInRange:](self, "pageIndexIsInRange:", [v7 row]))
      {
        v8 = [(UIPrintPreviewViewController *)self collectionView];
        v9 = [v8 cellForItemAtIndexPath:v7];
        v10 = [v9 thumbnailView];

        v11 = [v10 window];
        [v11 bounds];
        v12 = [(UIPrintPreviewViewController *)self createGeneratingPDFProgressView:?];
        [(UIPrintPreviewViewController *)self setPinchAnimationProgressView:v12];

        v13 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
        [v11 addSubview:v13];

        v14 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
        [v11 bringSubviewToFront:v14];

        [(UIPrintPreviewViewController *)self setPinchGestureBeginningView:v10];
        v15 = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
        [v15 setAlpha:0.0];

        v16 = objc_alloc(MEMORY[0x277D755E8]);
        v17 = [v10 image];
        v18 = [v16 initWithImage:v17];
        [(UIPrintPreviewViewController *)self setPinchAnimationView:v18];

        [v10 frame];
        v20 = v19;
        v22 = v21;
        v23 = [v10 superview];
        [v10 frame];
        [v23 convertPoint:v11 toView:?];
        v25 = v24;
        v27 = v26;

        v28 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [v28 setFrame:{v25, v27, v20, v22}];

        v29 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [v11 addSubview:v29];

        v30 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [v11 bringSubviewToFront:v30];

        [(UIPrintPreviewViewController *)self setPinchGestureLastScale:1.0];
        v31 = [(UIPrintPreviewViewController *)self pinchGestureBeginningView];
        [v4 locationInView:v31];
        [(UIPrintPreviewViewController *)self setPinchGestureLastPoint:?];
      }

LABEL_6:

      goto LABEL_15;
    }

    if ([v4 state] == 3)
    {
      [v4 scale];
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
      if ([v4 state] != 4 && objc_msgSend(v4, "state") != 5)
      {
        [v4 velocity];
        if (v36 > 2.0 || ([v4 scale], v37 > 1.5))
        {
          [(UIPrintPreviewViewController *)self animateCellAndPresentDocumentInteractionController];
          [v4 setEnabled:0];
          [v4 setEnabled:1];
          goto LABEL_15;
        }

        [(UIPrintPreviewViewController *)self pinchGestureLastScale];
        v39 = v38;
        [v4 scale];
        v41 = v40;
        [v4 scale];
        [(UIPrintPreviewViewController *)self setPinchGestureLastScale:?];
        v42 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [v4 locationInView:v42];
        v44 = v43;
        v46 = v45;

        [v4 scale];
        if (v47 > 1.0)
        {
          v48 = v41 - v39 + 1.0;
          v49 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          v50 = v49;
          if (v49)
          {
            [v49 transform];
          }

          else
          {
            memset(&v67, 0, sizeof(v67));
          }

          CGAffineTransformScale(&v68, &v67, v48, v48);
          v51 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          v67 = v68;
          [v51 setTransform:&v67];

          [v4 scale];
          v53 = 1.0 / v52;
          v54 = [(UIPrintPreviewViewController *)self pinchAnimationView];
          [v54 setAlpha:v53];

          [v4 scale];
          v56 = v55;
          [v4 scale];
          v58 = 1.0 - 1.0 / (v56 * v57);
          v59 = [(UIPrintPreviewViewController *)self pinchAnimationProgressView];
          [v59 setAlpha:v58];
        }

        v60 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        v61 = v60;
        if (v60)
        {
          [v60 transform];
        }

        else
        {
          memset(&v67, 0, sizeof(v67));
        }

        [(UIPrintPreviewViewController *)self pinchGestureLastPoint];
        v63 = v44 - v62;
        [(UIPrintPreviewViewController *)self pinchGestureLastPoint];
        CGAffineTransformTranslate(&v66, &v67, v63, v46 - v64);
        v65 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        v67 = v66;
        [v65 setTransform:&v67];

        v7 = [(UIPrintPreviewViewController *)self pinchAnimationView];
        [v4 locationInView:v7];
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

- (void)performThumbnailDispatchBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintPreviewViewController *)self thumbnailOperationsQueue];
  [v5 addOperationWithBlock:v4];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [(UIPrintPreviewViewController *)self collectionView];
  v5 = [v4 isHidden];

  if (v5)
  {
    v8 = [MEMORY[0x277D75390] loadingConfiguration];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Loading Preview…" value:@"Loading Preview…" table:@"Localizable"];
    [v8 setText:v7];
  }

  else
  {
    v8 = 0;
  }

  [(UIPrintPreviewViewController *)self setContentUnavailableConfiguration:v8];
}

- (void)showGeneratingPreviewProgress
{
  if ([(UIPrintPreviewViewController *)self shouldShowGeneratingPreviewProgress])
  {
    v3 = [(UIPrintPreviewViewController *)self collectionView];
    v4 = [v3 isHidden];

    if ((v4 & 1) == 0)
    {
      v5 = [(UIPrintPreviewViewController *)self collectionView];
      [v5 setHidden:1];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [(UIPrintPreviewViewController *)self setGeneratingPreviewPresentationTime:?];
      if ([(UIPrintPreviewViewController *)self usingCompactPreview])
      {
        v6 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];

        if (!v6)
        {
          [(UIPrintPreviewViewController *)self setupCompactGeneratingPreviewProgress];
        }

        v7 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
        [v7 setHidden:0];

        v8 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
        [v8 setSpinSpinner:1];
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
  v3 = [(UIPrintPreviewViewController *)self collectionView];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = [(UIPrintPreviewViewController *)self collectionView];
    [v5 setHidden:0];

    if (![(UIPrintPreviewViewController *)self usingCompactPreview])
    {
      [(UIPrintPreviewViewController *)self setNeedsUpdateContentUnavailableConfiguration];
    }

    v6 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
    [v6 setHidden:1];

    v7 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];
    [v7 setSpinSpinner:0];
  }
}

- (void)setupCompactGeneratingPreviewProgress
{
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = [(UIPrintPreviewViewController *)self containerView];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPrintPreviewViewController *)self compactGeneratingPreviewProgressView];

    if (!v5)
    {
      v6 = [UIPrintMessageAndSpinnerView alloc];
      v7 = [(UIPrintPreviewViewController *)self view];
      [v7 bounds];
      v8 = [(UIPrintMessageAndSpinnerView *)v6 initWithFrame:?];

      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"Loading Preview…" value:@"Loading Preview…" table:@"Localizable"];
      [(UIPrintMessageAndSpinnerView *)v8 setMessageText:v10];

      [(UIPrintMessageAndSpinnerView *)v8 setSpinnerHidden:0];
      [(UIPrintMessageAndSpinnerView *)v8 setSpinSpinner:1];
      v11 = [(UIPrintPreviewViewController *)self containerView];
      [v11 addSubview:v8];

      v12 = [(UIPrintPreviewViewController *)self containerView];
      v13 = MEMORY[0x277CCAAD0];
      v14 = [(UIPrintPreviewViewController *)self containerView];
      v15 = [v13 constraintWithItem:v8 attribute:17 relatedBy:0 toItem:v14 attribute:17 multiplier:1.0 constant:0.0];
      v16 = MEMORY[0x277CCAAD0];
      v17 = [(UIPrintPreviewViewController *)self containerView];
      v18 = [v16 constraintWithItem:v8 attribute:18 relatedBy:0 toItem:v17 attribute:18 multiplier:1.0 constant:0.0];
      v23[1] = v18;
      v19 = MEMORY[0x277CCAAD0];
      v20 = [(UIPrintPreviewViewController *)self containerView];
      v21 = [v19 constraintWithItem:v8 attribute:20 relatedBy:0 toItem:v20 attribute:20 multiplier:1.0 constant:0.0];
      v23[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      [v12 addConstraints:v22];

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