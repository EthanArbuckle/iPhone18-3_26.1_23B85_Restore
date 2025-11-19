@interface _PBFGalleryCollectionViewController
- (BOOL)_reloadCellForPosterPreviewIfVisible:(id)a3;
- (CGRect)previewFrameForScrollingPreviewWithIdentifierToVisible:(id)a3;
- (PUIRecycledViewsContainerProviding)recycledViewsContainerProviding;
- (UIViewController)hostingViewController;
- (_PBFGalleryCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_PBFGalleryCollectionViewControllerDelegate)delegate;
- (id)assetHelper:(id)a3 choosePosterPreviewToGoLive:(id)a4;
- (void)_applySnapshotFromDataProvider:(id)a3;
- (void)_enumerateVisiblePosterPreviews:(id)a3;
- (void)_kickstartAssetHelperIfPossible;
- (void)_resetState;
- (void)_rotationAssertionStateDidChange:(BOOL)a3;
- (void)_updateAssetHelperActiveContexts:(BOOL)a3;
- (void)assetHelper:(id)a3 didUpdateAssetsForPosterPreviews:(id)a4;
- (void)assetHelper:(id)a3 prepareForPosterPreview:(id)a4 movingToLive:(id)a5;
- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)conditionallyShowGalleryControllerDebugView;
- (void)configureCell:(id)a3 forCollectionView:(id)a4 posterPreview:(id)a5 indexPath:(id)a6;
- (void)dealloc;
- (void)noteEditingDidDismiss;
- (void)noteEditingDidPresent;
- (void)noteEditingWillDismiss;
- (void)noteEditingWillPresentFromCell:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setApplicationStateMonitor:(id)a3;
- (void)setDataProvider:(id)a3;
- (void)setHostingViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _PBFGalleryCollectionViewController

- (_PBFGalleryCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _PBFGalleryCollectionViewController;
  v5 = [(_PBFGalleryCollectionViewController *)&v17 initWithCollectionViewLayout:v4];
  if (v5)
  {
    v6 = [[PBFApplicationStateNode alloc] initWithDescription:@"Gallery Collection View Controller"];
    state = v5->_state;
    v5->_state = v6;

    v8 = [objc_alloc(MEMORY[0x277D3EFD0]) initWithDelegate:v5];
    reusableViewMap = v5->_reusableViewMap;
    v5->_reusableViewMap = v8;

    objc_initWeak(&location, v5);
    v10 = MEMORY[0x277CF0BD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68___PBFGalleryCollectionViewController_initWithCollectionViewLayout___block_invoke;
    v14[3] = &unk_2782C70E8;
    objc_copyWeak(&v15, &location);
    v11 = [v10 assertionWithIdentifier:@"galleryRotationAssertion" stateDidChangeHandler:v14];
    rotationAssertion = v5->_rotationAssertion;
    v5->_rotationAssertion = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_viewWillDisappearInteractionAssertion invalidate];
  [(BSInvalidatable *)self->_userInteractionAssertion invalidate];
  [(BSCompoundAssertion *)self->_rotationAssertion invalidate];
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper invalidate];
  [(PUIReusableViewMap *)self->_reusableViewMap invalidate];
  [(PBFApplicationStateNode *)self->_state cancel];
  v3.receiver = self;
  v3.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v34 viewDidLoad];
  v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  displayedCellForIndexPath = self->_displayedCellForIndexPath;
  self->_displayedCellForIndexPath = v3;

  v5 = [(_PBFGalleryCollectionViewController *)self collectionView];
  [v5 pui_setGlassGroupBackground];
  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterHeroCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellWithComplicationsReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterSmartAlbumCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellWithDescriptionReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"KGalleryHeaderElementKind" withReuseIdentifier:@"KGalleryHeaderElementKind"];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v8 = [MEMORY[0x277D75348] blackColor];
  [v7 setBackgroundColor:v8];
  v9 = [MEMORY[0x277D75348] blackColor];
  [v5 setBackgroundColor:v9];

  [v5 setBackgroundView:v7];
  [v5 setShowsVerticalScrollIndicator:0];
  v10 = [MEMORY[0x277CD9EB0] layer];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v36[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v10 setInterpolations:v12];

  v13 = [MEMORY[0x277D75348] blackColor];
  v14 = v13;
  v15 = [v13 CGColor];

  v16 = [MEMORY[0x277D75348] clearColor];
  v17 = v16;
  v18 = [v16 CGColor];

  v35[0] = v15;
  v35[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [v10 setColors:v19];

  [v10 setOpacity:0.0];
  v20 = [(_PBFGalleryCollectionViewController *)self view];
  v21 = [v20 layer];
  [v21 addSublayer:v10];

  objc_storeStrong(&self->_topLegibilityGradientLayer, v10);
  if (!self->_diffableDataSource)
  {
    objc_initWeak(&location, self);
    v22 = objc_alloc(MEMORY[0x277D752D0]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50___PBFGalleryCollectionViewController_viewDidLoad__block_invoke;
    v31[3] = &unk_2782C7110;
    objc_copyWeak(&v32, &location);
    v23 = [v22 initWithCollectionView:v5 cellProvider:v31];
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v23;

    v25 = self->_diffableDataSource;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __50___PBFGalleryCollectionViewController_viewDidLoad__block_invoke_2;
    v29 = &unk_2782C5738;
    objc_copyWeak(&v30, &location);
    [(UICollectionViewDiffableDataSource *)v25 setSupplementaryViewProvider:&v26];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:1, v26, v27, v28, v29];
}

- (void)conditionallyShowGalleryControllerDebugView
{
  v18 = [(_PBFGalleryCollectionViewController *)self collectionView];
  if ([MEMORY[0x277D3EF48] showErrorStateForGallery] && (objc_msgSend(v18, "visibleCells"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, !v4))
  {
    blankGalleryDebugView = self->_blankGalleryDebugView;
    if (!blankGalleryDebugView)
    {
      [v18 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [MEMORY[0x277D3EF48] debugViewForComponent:0];
      v16 = self->_blankGalleryDebugView;
      self->_blankGalleryDebugView = v15;

      [(UIView *)self->_blankGalleryDebugView setFrame:v8, v10, v12, v14];
      v17 = [(_PBFGalleryCollectionViewController *)self view];
      [v17 addSubview:self->_blankGalleryDebugView];

      blankGalleryDebugView = self->_blankGalleryDebugView;
    }

    [(UIView *)blankGalleryDebugView setHidden:0];
  }

  else
  {
    v5 = self->_blankGalleryDebugView;
    if (v5)
    {
      [(UIView *)v5 removeFromSuperview];
    }
  }
}

- (void)setHostingViewController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_hostingViewController, v4);
  v10 = [v4 view];

  containerView = self->_containerView;
  if (!containerView)
  {
    [v10 bounds];
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6 + v6, v7 + v7, v6, v7}];
    v9 = self->_containerView;
    self->_containerView = v8;

    [(UIView *)self->_containerView _setLayoutDebuggingIdentifier:@"PBFPosterGalleryPreviewViewController Container View"];
    [(UIView *)self->_containerView setHidden:1];
    [(UIView *)self->_containerView setUserInteractionEnabled:0];
    containerView = self->_containerView;
  }

  [v10 addSubview:containerView];
  [v10 sendSubviewToBack:self->_containerView];
}

- (void)setDataProvider:(id)a3
{
  v5 = a3;
  dataProvider = self->_dataProvider;
  if (dataProvider != v5)
  {
    v13 = v5;
    [(PBFPosterGalleryDataProvider *)dataProvider removeObserver:self];
    [(PBFPosterGalleryDataProvider *)self->_dataProvider invalidate];
    [(PBFPosterGalleryAssetHelper *)self->_assetHelper invalidate];
    objc_storeStrong(&self->_dataProvider, a3);
    [(PBFPosterGalleryDataProvider *)self->_dataProvider addObserver:self];
    if (v13)
    {
      v7 = [[PBFPosterGalleryAssetHelper alloc] initWithPreviewGenerator:self->_dataProvider extensionProvider:v13];
      assetHelper = self->_assetHelper;
      self->_assetHelper = v7;

      [(PBFPosterGalleryAssetHelper *)self->_assetHelper setReusableViewMap:self->_reusableViewMap];
      [(PBFPosterGalleryAssetHelper *)self->_assetHelper setDelegate:self];
      if ([(_PBFGalleryCollectionViewController *)self isViewLoaded])
      {
        [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:1];
      }

      v9 = self->_assetHelper;
      v10 = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
      [(PBFPosterGalleryAssetHelper *)v9 setPosterPreviews:v10];

      if ([(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared])
      {
        [(PBFPosterGalleryAssetHelper *)self->_assetHelper setSuspended:0];
      }

      else if (!self->_viewWillDisappearInteractionAssertion)
      {
        v11 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"NOT APPEARED YET"];
        viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
        self->_viewWillDisappearInteractionAssertion = v11;
      }
    }

    [(_PBFGalleryCollectionViewController *)self _applySnapshotFromDataProvider:self->_dataProvider];
    v5 = v13;
  }
}

- (void)setApplicationStateMonitor:(id)a3
{
  v5 = a3;
  if (([(PBFApplicationStateMonitor *)self->_applicationStateMonitor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_applicationStateMonitor, a3);
    if ([(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared])
    {
      [(_PBFGalleryCollectionViewController *)self _resetState];
      [v5 pushState:self->_state];
    }
  }
}

- (void)_updateAssetHelperActiveContexts:(BOOL)a3
{
  if (a3)
  {
    [(PBFPosterGalleryAssetHelper *)self->_assetHelper resetKnownDisplayContexts];
  }

  v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper knownDisplayContexts];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = [(UIViewController *)self pbf_displayContext];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72___PBFGalleryCollectionViewController__updateAssetHelperActiveContexts___block_invoke;
  v15 = &unk_2782C7138;
  v16 = v9;
  v17 = v8;
  v10 = v8;
  v11 = v9;
  PBFSnapshotDefinitionEnumerateSupportedOrientationsForCurrentDeviceClass(&v12);
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setActiveDisplayContext:v11, v12, v13, v14, v15];
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setKnownDisplayContexts:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v6 viewWillAppear:a3];
  [(_PBFGalleryCollectionViewController *)self _applySnapshotFromDataProvider:self->_dataProvider];
  if (!self->_viewWillDisappearInteractionAssertion)
  {
    v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"will appear"];
    viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
    self->_viewWillDisappearInteractionAssertion = v4;
  }

  [(PBFApplicationStateMonitor *)self->_applicationStateMonitor pushState:self->_state];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v5 viewDidAppear:a3];
  [(BSInvalidatable *)self->_viewWillDisappearInteractionAssertion invalidate];
  viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
  self->_viewWillDisappearInteractionAssertion = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v6 viewWillDisappear:a3];
  v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"will disappear"];
  viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
  self->_viewWillDisappearInteractionAssertion = v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v11 viewDidDisappear:a3];
  v4 = [(_PBFGalleryCollectionViewController *)self collectionView];
  [v4 setPrefetchingEnabled:0];

  v5 = objc_autoreleasePoolPush();
  [(PUIReusableViewMap *)self->_reusableViewMap invalidate];
  reusableViewMap = self->_reusableViewMap;
  self->_reusableViewMap = 0;

  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setSuspended:1];
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setActiveDisplayContext:0];
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper invalidate];
  assetHelper = self->_assetHelper;
  self->_assetHelper = 0;

  diffableDataSource = self->_diffableDataSource;
  v9 = objc_opt_new();
  [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshotUsingReloadData:v9];

  [(PBFPosterGalleryDataProvider *)self->_dataProvider invalidate];
  [(BSInvalidatable *)self->_viewWillDisappearInteractionAssertion invalidate];
  viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
  self->_viewWillDisappearInteractionAssertion = 0;

  objc_autoreleasePoolPop(v5);
  [(PBFApplicationStateNode *)self->_state cancel];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v4 viewIsAppearing:a3];
  [(_PBFGalleryCollectionViewController *)self _kickstartAssetHelperIfPossible];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v5 viewDidLayoutSubviews];
  topLegibilityGradientLayer = self->_topLegibilityGradientLayer;
  v4 = [(_PBFGalleryCollectionViewController *)self view];
  [v4 bounds];
  [(CAGradientLayer *)topLegibilityGradientLayer setFrame:0.0, 0.0, CGRectGetWidth(v6), 126.0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v30.receiver = self;
  v30.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v30 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(_PBFGalleryCollectionViewController *)self view];
  v9 = [v8 window];

  v10 = [v9 _fromWindowOrientation];
  v11 = [v9 _toWindowOrientation];
  if (v10 != v11)
  {
    v12 = PBFLogGallery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = self;
      _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%p) Gallery orientation changed - hiding live poster previews before rotating", buf, 0xCu);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v29[3] = &unk_2782C7160;
    v29[4] = self;
    [(_PBFGalleryCollectionViewController *)self _enumerateVisiblePosterPreviews:v29];
  }

  v13 = [(_PBFGalleryCollectionViewController *)self collectionView];
  v14 = [v13 collectionViewLayout];
  v15 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"rotating"];
  if (v10 == v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(BSCompoundAssertion *)self->_rotationAssertion acquireForReason:@"viewWillTransitionToSize"];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v24[3] = &unk_2782C71B0;
  v25 = v14;
  v26 = self;
  v28 = v10 != v11;
  v27 = v13;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v21[3] = &unk_2782C5760;
  v22 = v15;
  v23 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v13;
  v20 = v14;
  [v7 animateAlongsideTransition:v24 completion:v21];
}

- (void)_rotationAssertionStateDidChange:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%p) Gallery rotation transitions complete - resuming live asset helper", buf, 0xCu);
    }

    [(PBFPosterGalleryAssetHelper *)self->_assetHelper setSuspended:0];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72___PBFGalleryCollectionViewController__rotationAssertionStateDidChange___block_invoke;
    v4[3] = &unk_2782C7160;
    v4[4] = self;
    [(_PBFGalleryCollectionViewController *)self _enumerateVisiblePosterPreviews:v4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v4 traitCollectionDidChange:a3];
  [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:1];
}

- (CGRect)previewFrameForScrollingPreviewWithIdentifierToVisible:(id)a3
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:a3];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(_PBFGalleryCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];
  if (!v6)
  {

LABEL_5:
    v14 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v18 = *(MEMORY[0x277CBF398] + 16);
    v20 = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [v5 window];
  v9 = [v8 screen];
  v10 = [PBFPosterGalleryViewSpec specForScreen:v9];

  [v10 sectionHeaderBottomSpacing];
  v11 = [v10 sectionHeaderTitleFont];
  [v11 lineHeight];

  [v7 frame];
  UIRectInset();
  [v5 scrollRectToVisible:0 animated:?];
  v12 = [v7 posterPreviewView];
  [v12 posterPreviewFrame];
  [v12 convertRect:v5 toCoordinateSpace:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

LABEL_6:
  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)noteEditingWillPresentFromCell:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_editingPresentationState = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMapTable *)self->_displayedCellForIndexPath objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != v4)
        {
          v11 = [v10 posterPreviewView];
          [v11 prepareForReuse];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)noteEditingDidPresent
{
  if (self->_editingPresentationState == 1)
  {
    self->_editingPresentationState = 2;
    v4 = [(_PBFGalleryCollectionViewController *)self collectionView];
    [v4 setHidden:1];

    assetHelper = self->_assetHelper;

    [(PBFPosterGalleryAssetHelper *)assetHelper setSuspended:1];
  }
}

- (void)noteEditingWillDismiss
{
  self->_editingPresentationState = 3;
  v3 = [(_PBFGalleryCollectionViewController *)self collectionView];
  [v3 setHidden:0];

  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setSuspended:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61___PBFGalleryCollectionViewController_noteEditingWillDismiss__block_invoke;
  v4[3] = &unk_2782C7160;
  v4[4] = self;
  [(_PBFGalleryCollectionViewController *)self _enumerateVisiblePosterPreviews:v4];
}

- (void)noteEditingDidDismiss
{
  if (self->_editingPresentationState == 3)
  {
    self->_editingPresentationState = 0;
  }
}

- (void)_kickstartAssetHelperIfPossible
{
  if ([(_PBFGalleryCollectionViewController *)self isViewLoaded])
  {
    if ([(PBFPosterGalleryAssetHelper *)self->_assetHelper isSuspended])
    {
      assetHelper = self->_assetHelper;
      v4 = [(UIViewController *)self pbf_displayContext];
      [(PBFPosterGalleryAssetHelper *)assetHelper setActiveDisplayContext:v4];

      [(PBFPosterGalleryAssetHelper *)self->_assetHelper setSuspended:0];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __70___PBFGalleryCollectionViewController__kickstartAssetHelperIfPossible__block_invoke;
      v5[3] = &unk_2782C7160;
      v5[4] = self;
      [(_PBFGalleryCollectionViewController *)self _enumerateVisiblePosterPreviews:v5];
    }
  }
}

- (void)_enumerateVisiblePosterPreviews:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(_PBFGalleryCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      dataProvider = self->_dataProvider;
      v13 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v11];
      v14 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v13];

      v15 = 0;
      v4[2](v4, v14, v11, &v15);
      LOBYTE(v11) = v15;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_applySnapshotFromDataProvider:(id)a3
{
  v9 = a3;
  if ([(_PBFGalleryCollectionViewController *)self isViewLoaded])
  {
    v4 = [(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared];
    if (v9)
    {
      if (v4)
      {
        v5 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource snapshot];
        v6 = [v9 buildSnapshot];
        if (!v5 || ([v5 isEqual:v6] & 1) == 0)
        {
          assetHelper = self->_assetHelper;
          v8 = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
          [(PBFPosterGalleryAssetHelper *)assetHelper setPosterPreviews:v8];

          [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshotUsingReloadData:v6];
          [(_PBFGalleryCollectionViewController *)self _resetState];
        }
      }
    }
  }
}

- (void)_resetState
{
  state = self->_state;
  v4 = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
  v3 = [v4 bs_map:&__block_literal_global_414];
  [(PBFApplicationStateNode *)state setComponents:v3];
}

- (void)configureCell:(id)a3 forCollectionView:(id)a4 posterPreview:(id)a5 indexPath:(id)a6
{
  v10 = a3;
  v107 = a4;
  v11 = a5;
  v109 = a6;
  v12 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper activeDisplayContext];
  v13 = [(UIViewController *)self pbf_displayContext];
  v14 = [v12 isEqualToDisplayContext:v13];

  if ((v14 & 1) == 0)
  {
    [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:0];
  }

  v15 = [v10 posterPreviewView];
  [v15 setReusableViewMap:self->_reusableViewMap];

  v16 = [(UIViewController *)self pbf_layoutOrientation];
  v17 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper assetsForPosterPreview:v11];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __95___PBFGalleryCollectionViewController_configureCell_forCollectionView_posterPreview_indexPath___block_invoke;
  aBlock[3] = &unk_2782C71F8;
  objc_copyWeak(&v114, location);
  v110 = _Block_copy(aBlock);
  v111 = v17;
  if (!v17)
  {
    v112 = 0;
    v108 = 0;
    goto LABEL_17;
  }

  v18 = [v11 type];
  v19 = PBFPreviewTypeHero;

  if (v18 == v19)
  {
    v21 = [v111 heroView];
    v112 = 0;
    v108 = 0;
  }

  else
  {
    v108 = [v111 snapshotBundleLayoutView];
    v20 = [v111 assetViewController];
    v112 = v20;
    if (v20)
    {
      v21 = [v20 view];
    }

    else
    {
      v21 = v108;
      v112 = 0;
      v108 = v21;
    }
  }

  v110[2](v110, v21);
  if (v112)
  {
    if (PBFDebugLiveWallpapers())
    {
      v22 = [v10 contentView];
      v23 = [v22 layer];
      [v23 setBorderWidth:1.0];
LABEL_15:
    }
  }

  else if (PBFDebugLiveWallpapers())
  {
    v22 = [v10 contentView];
    v23 = [v22 layer];
    [v23 setBorderWidth:0.0];
    goto LABEL_15;
  }

  [v10 updatePreview:v11 posterPreviewView:v21 layoutOrientation:v16 index:{objc_msgSend(v109, "row")}];

LABEL_17:
  v24 = [v10 posterPreviewView];
  v25 = [v24 complicationContentView];

  v26 = [v25 posterPreview];
  v27 = [v26 isEqual:v11];

  if ((v27 & 1) == 0)
  {
    [v25 setPosterPreview:v11];
    [v25 prepareComplicationPreviewWithGenerator:self->_dataProvider];
  }

  v28 = [v11 galleryLocalizedTitle];
  if (![v28 length])
  {
    goto LABEL_55;
  }

  v29 = [v10 supportsPosterTitle];

  if (v29)
  {
    v30 = [(_PBFGalleryCollectionViewController *)self view];
    v31 = [v30 window];
    v32 = [v31 screen];
    v28 = [PBFPosterGalleryViewSpec specForScreen:v32];

    v33 = [v11 galleryOptions];
    v106 = [v33 modeSymbolImageName];

    if (v106)
    {
      v34 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:1];
      v104 = objc_alloc_init(MEMORY[0x277D74270]);
      v35 = [MEMORY[0x277D755B8] _systemImageNamed:v106 withConfiguration:v34];
      v36 = [v28 previewCellLabelColor];
      v37 = [v35 imageWithTintColor:v36];
      [v104 setImage:v37];

      v102 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v104];
      v38 = objc_alloc(MEMORY[0x277CCA898]);
      v39 = [v11 galleryLocalizedTitle];
      v40 = [v38 initWithString:v39];

      v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"%@ %@"];
      v42 = [(_PBFGalleryCollectionViewController *)self traitCollection];
      v43 = [v42 layoutDirection];

      if (v43 == 1)
      {
        v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v40, v102];
      }

      else
      {
        v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v102, v40];
      }

      [v10 setAttributedPosterTitle:v44];
LABEL_53:

      goto LABEL_54;
    }

    if ([v11 galleryDisplayStyle] != 2)
    {
      v45 = [v11 type];
      v46 = PBFPreviewTypeSmartAlbum;

      if (v45 != v46)
      {
        v34 = [v11 galleryLocalizedTitle];
        [v10 setPosterTitle:v34];
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }
    }

    v47 = [(_PBFGalleryCollectionViewController *)self view];
    v48 = [v47 traitCollection];
    [v48 displayScale];
    v50 = v49;

    if ([v11 galleryDisplayStyle] == 2)
    {
      v51 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedGyroBadge;
    }

    else
    {
      v52 = [v11 type];
      v53 = PBFPreviewTypeSmartAlbum;

      if (v52 != v53)
      {
        goto LABEL_35;
      }

      v51 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedSmartAlbumBadge;
    }

    v54 = *(&self->super.super.super.super.isa + *v51);
    if (v54)
    {
      v55 = v54;
LABEL_49:
      v104 = v55;
      v102 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v55];
      v92 = objc_alloc(MEMORY[0x277CCA898]);
      v93 = [v11 galleryLocalizedTitle];
      v40 = [v92 initWithString:v93];

      v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"%@ %@"];
      v94 = [(_PBFGalleryCollectionViewController *)self traitCollection];
      v95 = [v94 layoutDirection];

      if (v95 == 1)
      {
        v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v102, v40];
      }

      else
      {
        v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v40, v102];
      }

      [v10 setAttributedPosterTitle:v44];
      v34 = v104;
      goto LABEL_53;
    }

LABEL_35:
    v105 = objc_alloc_init(MEMORY[0x277D74270]);
    v56 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:1];
    v57 = [MEMORY[0x277D755D0] configurationWithWeight:7];
    v58 = [v56 configurationByApplyingConfiguration:v57];

    v59 = [MEMORY[0x277D755D0] configurationWithPointSize:10.0];
    v60 = [v58 configurationByApplyingConfiguration:v59];

    v61 = [MEMORY[0x277D755B8] _systemImageNamed:@"shuffle" withConfiguration:v60];
    [MEMORY[0x277D755B8] _systemImageNamed:@"view.3d" withConfiguration:v60];
    v63 = v62 = v105;
    v64 = [v11 galleryDisplayStyle];
    v65 = v63;
    v103 = v63;
    if (v64 == 2 || ([v11 type], v66 = objc_claimAutoreleasedReturnValue(), v67 = PBFPreviewTypeSmartAlbum, v66, v65 = v61, v68 = v66 == v67, v62 = v105, v68))
    {
      v69 = v65;
    }

    else
    {
      v69 = 0;
    }

    v101 = [v28 badgeColor];
    [v61 size];
    v71 = v70;
    [v103 size];
    if (v71 >= v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = v72;
    }

    [v69 size];
    v75 = v74;
    v77 = v76;
    v99 = v61;
    v100 = v60;
    v78 = 1.0 / v50;
    UIRoundToScale();
    v80 = v79;
    v116.width = 1.0 / v50 + 0.0 + v75;
    v116.height = v73 + 1.0 + 1.0;
    UIGraphicsBeginImageContextWithOptions(v116, 0, v50);
    v81 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{1.0, 1.0 / v50 + 0.0 + v75, v73, v80}];
    [v101 setFill];
    [v81 fill];
    [v69 drawInRect:23 blendMode:1.0 / v50 alpha:{(v73 - v77) * 0.5 + 1.0, v75, v77, 1.0}];
    v82 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [v62 setImage:v82];
    [v62 bounds];
    v84 = v83;
    v86 = v85;
    [v82 size];
    [v62 setBounds:{v84, v86 - (v78 + 1.0), v87, v88}];
    if ([v11 galleryDisplayStyle] == 2)
    {
      v89 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedGyroBadge;
    }

    else
    {
      v90 = [v11 type];
      v91 = PBFPreviewTypeSmartAlbum;

      v68 = v90 == v91;
      v62 = v105;
      if (!v68)
      {
        goto LABEL_48;
      }

      v89 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedSmartAlbumBadge;
    }

    objc_storeStrong((&self->super.super.super.super.isa + *v89), v62);
LABEL_48:

    v55 = 0;
    goto LABEL_49;
  }

LABEL_56:
  v96 = [v11 galleryLocalizedDescription];
  if (v96)
  {
    v97 = [v10 supportsPosterDescription];

    if (v97)
    {
      v98 = [v11 galleryLocalizedDescription];
      [v10 setPosterDescription:v98];
    }
  }

  objc_destroyWeak(&v114);
  objc_destroyWeak(location);
}

- (void)assetHelper:(id)a3 didUpdateAssetsForPosterPreviews:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_PBFGalleryCollectionViewController *)self _reloadCellForPosterPreviewIfVisible:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)assetHelper:(id)a3 prepareForPosterPreview:(id)a4 movingToLive:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained bs_addChildViewController:v6 withSuperview:self->_containerView];
}

- (BOOL)_reloadCellForPosterPreviewIfVisible:(id)a3
{
  v4 = a3;
  if ([(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared])
  {
    diffableDataSource = self->_diffableDataSource;
    v6 = [v4 previewUniqueIdentifier];
    v7 = [(UICollectionViewDiffableDataSource *)diffableDataSource indexPathForItemIdentifier:v6];

    if (v7)
    {
      v8 = [(NSMapTable *)self->_displayedCellForIndexPath objectForKey:v7];
      v9 = v8 != 0;
      if (v8)
      {
        v10 = [(_PBFGalleryCollectionViewController *)self collectionView];
        [(_PBFGalleryCollectionViewController *)self configureCell:v8 forCollectionView:v10 posterPreview:v4 indexPath:v7];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)assetHelper:(id)a3 choosePosterPreviewToGoLive:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v24 = [(_PBFGalleryCollectionViewController *)self collectionView];
  [v24 bounds];
  v25 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  v7 = [(NSMapTable *)self->_displayedCellForIndexPath keyEnumerator];
  v8 = [v7 allObjects];
  v9 = [v6 setWithArray:v8];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        diffableDataSource = self->_diffableDataSource;
        v17 = [v15 previewUniqueIdentifier];
        v18 = [(UICollectionViewDiffableDataSource *)diffableDataSource indexPathForItemIdentifier:v17];

        if ([v9 containsObject:v18])
        {
          [v25 setObject:v15 forKey:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v19 = [v25 allKeys];
  v20 = [v19 sortedArrayUsingComparator:&__block_literal_global_435];

  v21 = [v20 firstObject];
  v22 = [v25 objectForKey:v21];

  return v22;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForItemAtIndexPath:v6];
  dataProvider = self->_dataProvider;
  v9 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v6];

  v10 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v9];

  v11 = [v10 type];
  if ([v11 isEqualToString:PBFPreviewTypeHero])
  {
    goto LABEL_4;
  }

  v12 = [v10 presentationStyle];

  if (v12 != 1)
  {
    v13 = [v7 posterPreviewView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v7 bounds];
    Height = CGRectGetHeight(v31);
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v23 = Height - CGRectGetHeight(v32);
    v11 = [objc_alloc(MEMORY[0x277D76180]) initWithFrame:{v15, v17, v19, v21}];
    [v11 setAutoresizingMask:18];
    [v11 setHidesSourceView:0];
    [v11 setMatchesPosition:0];
    [v11 setMatchesTransform:0];
    [v11 setAllowsBackdropGroups:1];
    v24 = [v7 posterPreviewView];
    [v11 setSourceView:v24];

    v25 = [objc_alloc(MEMORY[0x277D3EFE8]) initWithFrame:{v15, v17, v19, v21}];
    [v25 setContentView:v11];
    CGAffineTransformMakeTranslation(&v30, 0.0, v23);
    [v25 setContentViewTransform:&v30];
    v26 = [objc_alloc(MEMORY[0x277D3EFD8]) initWithFrame:{v15, v17, v19, v21}];
    [v26 setContentView:v25];
    v27 = [v7 posterPreviewView];
    [v27 prepareForFullScreenTransitionWithContentView:v26];

LABEL_4:
  }

  v28 = [(_PBFGalleryCollectionViewController *)self delegate];
  v29 = [v7 posterPreviewView];
  [v28 galleryCollectionViewControllerDidSelectPreview:v10 fromPreviewView:v29];

  [(_PBFGalleryCollectionViewController *)self noteEditingWillPresentFromCell:v7];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  [(NSMapTable *)self->_displayedCellForIndexPath setObject:v8 forKey:v9];
  dataProvider = self->_dataProvider;
  v11 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v9];
  v12 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v11];

  if ([(PBFPosterGalleryAssetHelper *)self->_assetHelper updatePosterPreview:v12 isVisible:1])
  {
    [(_PBFGalleryCollectionViewController *)self configureCell:v8 forCollectionView:v14 posterPreview:v12 indexPath:v9];
  }

  v13 = [(_PBFGalleryCollectionViewController *)self delegate];
  [v13 galleryCollectionViewControllerWillDisplayPreview:v12];

  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  displayedCellForIndexPath = self->_displayedCellForIndexPath;
  v7 = a5;
  [(NSMapTable *)displayedCellForIndexPath removeObjectForKey:v7];
  dataProvider = self->_dataProvider;
  v9 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v7];

  v10 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v9];

  [(PBFPosterGalleryAssetHelper *)self->_assetHelper updatePosterPreview:v10 isVisible:0];
  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  v5 = v4 / 80.0;
  if (v4 / 80.0 > 1.0)
  {
    v5 = 1.0;
  }

  topLegibilityGradientLayer = self->_topLegibilityGradientLayer;
  v7 = fmax(v5, 0.0) * 0.3;
  *&v7 = v7;

  [(CAGradientLayer *)topLegibilityGradientLayer setOpacity:v7];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (!self->_userInteractionAssertion)
  {
    v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"scrollViewWillBeginDragging"];
    userInteractionAssertion = self->_userInteractionAssertion;
    self->_userInteractionAssertion = v4;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_userInteractionAssertion)
  {
    v9 = v5;
    v7 = [v5 isScrollAnimating];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      [(BSInvalidatable *)self->_userInteractionAssertion invalidate];
      userInteractionAssertion = self->_userInteractionAssertion;
      self->_userInteractionAssertion = 0;

      v6 = v9;
    }
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80___PBFGalleryCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke;
  v8[3] = &unk_2782C7240;
  v8[4] = self;
  v5 = [a4 bs_mapNoNulls:v8];
  assetHelper = self->_assetHelper;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [(PBFPosterGalleryAssetHelper *)assetHelper prefetchPosterPreviews:v7];
}

- (void)collectionView:(id)a3 cancelPrefetchingForItemsAtIndexPaths:(id)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92___PBFGalleryCollectionViewController_collectionView_cancelPrefetchingForItemsAtIndexPaths___block_invoke;
  v8[3] = &unk_2782C7240;
  v8[4] = self;
  v5 = [a4 bs_mapNoNulls:v8];
  assetHelper = self->_assetHelper;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [(PBFPosterGalleryAssetHelper *)assetHelper cancelPrefetchForPosterPreviews:v7];
}

- (_PBFGalleryCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUIRecycledViewsContainerProviding)recycledViewsContainerProviding
{
  WeakRetained = objc_loadWeakRetained(&self->_recycledViewsContainerProviding);

  return WeakRetained;
}

- (UIViewController)hostingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);

  return WeakRetained;
}

@end