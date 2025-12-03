@interface _PBFGalleryCollectionViewController
- (BOOL)_reloadCellForPosterPreviewIfVisible:(id)visible;
- (CGRect)previewFrameForScrollingPreviewWithIdentifierToVisible:(id)visible;
- (PUIRecycledViewsContainerProviding)recycledViewsContainerProviding;
- (UIViewController)hostingViewController;
- (_PBFGalleryCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_PBFGalleryCollectionViewControllerDelegate)delegate;
- (id)assetHelper:(id)helper choosePosterPreviewToGoLive:(id)live;
- (void)_applySnapshotFromDataProvider:(id)provider;
- (void)_enumerateVisiblePosterPreviews:(id)previews;
- (void)_kickstartAssetHelperIfPossible;
- (void)_resetState;
- (void)_rotationAssertionStateDidChange:(BOOL)change;
- (void)_updateAssetHelperActiveContexts:(BOOL)contexts;
- (void)assetHelper:(id)helper didUpdateAssetsForPosterPreviews:(id)previews;
- (void)assetHelper:(id)helper prepareForPosterPreview:(id)preview movingToLive:(id)live;
- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)conditionallyShowGalleryControllerDebugView;
- (void)configureCell:(id)cell forCollectionView:(id)view posterPreview:(id)preview indexPath:(id)path;
- (void)dealloc;
- (void)noteEditingDidDismiss;
- (void)noteEditingDidPresent;
- (void)noteEditingWillDismiss;
- (void)noteEditingWillPresentFromCell:(id)cell;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setApplicationStateMonitor:(id)monitor;
- (void)setDataProvider:(id)provider;
- (void)setHostingViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _PBFGalleryCollectionViewController

- (_PBFGalleryCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = _PBFGalleryCollectionViewController;
  v5 = [(_PBFGalleryCollectionViewController *)&v17 initWithCollectionViewLayout:layoutCopy];
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
  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  displayedCellForIndexPath = self->_displayedCellForIndexPath;
  self->_displayedCellForIndexPath = strongToWeakObjectsMapTable;

  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  [collectionView pui_setGlassGroupBackground];
  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterHeroCellReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellWithComplicationsReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterSmartAlbumCellReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kGalleryPosterCellWithDescriptionReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"KGalleryHeaderElementKind" withReuseIdentifier:@"KGalleryHeaderElementKind"];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v7 setBackgroundColor:blackColor];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [collectionView setBackgroundColor:blackColor2];

  [collectionView setBackgroundView:v7];
  [collectionView setShowsVerticalScrollIndicator:0];
  layer = [MEMORY[0x277CD9EB0] layer];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v36[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [layer setInterpolations:v12];

  blackColor3 = [MEMORY[0x277D75348] blackColor];
  v14 = blackColor3;
  cGColor = [blackColor3 CGColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  v17 = clearColor;
  cGColor2 = [clearColor CGColor];

  v35[0] = cGColor;
  v35[1] = cGColor2;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [layer setColors:v19];

  [layer setOpacity:0.0];
  view = [(_PBFGalleryCollectionViewController *)self view];
  layer2 = [view layer];
  [layer2 addSublayer:layer];

  objc_storeStrong(&self->_topLegibilityGradientLayer, layer);
  if (!self->_diffableDataSource)
  {
    objc_initWeak(&location, self);
    v22 = objc_alloc(MEMORY[0x277D752D0]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50___PBFGalleryCollectionViewController_viewDidLoad__block_invoke;
    v31[3] = &unk_2782C7110;
    objc_copyWeak(&v32, &location);
    v23 = [v22 initWithCollectionView:collectionView cellProvider:v31];
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
  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  if ([MEMORY[0x277D3EF48] showErrorStateForGallery] && (objc_msgSend(collectionView, "visibleCells"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, !v4))
  {
    blankGalleryDebugView = self->_blankGalleryDebugView;
    if (!blankGalleryDebugView)
    {
      [collectionView bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [MEMORY[0x277D3EF48] debugViewForComponent:0];
      v16 = self->_blankGalleryDebugView;
      self->_blankGalleryDebugView = v15;

      [(UIView *)self->_blankGalleryDebugView setFrame:v8, v10, v12, v14];
      view = [(_PBFGalleryCollectionViewController *)self view];
      [view addSubview:self->_blankGalleryDebugView];

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

- (void)setHostingViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_hostingViewController, controllerCopy);
  view = [controllerCopy view];

  containerView = self->_containerView;
  if (!containerView)
  {
    [view bounds];
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6 + v6, v7 + v7, v6, v7}];
    v9 = self->_containerView;
    self->_containerView = v8;

    [(UIView *)self->_containerView _setLayoutDebuggingIdentifier:@"PBFPosterGalleryPreviewViewController Container View"];
    [(UIView *)self->_containerView setHidden:1];
    [(UIView *)self->_containerView setUserInteractionEnabled:0];
    containerView = self->_containerView;
  }

  [view addSubview:containerView];
  [view sendSubviewToBack:self->_containerView];
}

- (void)setDataProvider:(id)provider
{
  providerCopy = provider;
  dataProvider = self->_dataProvider;
  if (dataProvider != providerCopy)
  {
    v13 = providerCopy;
    [(PBFPosterGalleryDataProvider *)dataProvider removeObserver:self];
    [(PBFPosterGalleryDataProvider *)self->_dataProvider invalidate];
    [(PBFPosterGalleryAssetHelper *)self->_assetHelper invalidate];
    objc_storeStrong(&self->_dataProvider, provider);
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
      posterPreviews = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
      [(PBFPosterGalleryAssetHelper *)v9 setPosterPreviews:posterPreviews];

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
    providerCopy = v13;
  }
}

- (void)setApplicationStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (([(PBFApplicationStateMonitor *)self->_applicationStateMonitor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_applicationStateMonitor, monitor);
    if ([(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared])
    {
      [(_PBFGalleryCollectionViewController *)self _resetState];
      [monitorCopy pushState:self->_state];
    }
  }
}

- (void)_updateAssetHelperActiveContexts:(BOOL)contexts
{
  if (contexts)
  {
    [(PBFPosterGalleryAssetHelper *)self->_assetHelper resetKnownDisplayContexts];
  }

  knownDisplayContexts = [(PBFPosterGalleryAssetHelper *)self->_assetHelper knownDisplayContexts];
  v5 = [knownDisplayContexts mutableCopy];
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

  pbf_displayContext = [(UIViewController *)self pbf_displayContext];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72___PBFGalleryCollectionViewController__updateAssetHelperActiveContexts___block_invoke;
  v15 = &unk_2782C7138;
  v16 = pbf_displayContext;
  v17 = v8;
  v10 = v8;
  v11 = pbf_displayContext;
  PBFSnapshotDefinitionEnumerateSupportedOrientationsForCurrentDeviceClass(&v12);
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setActiveDisplayContext:v11, v12, v13, v14, v15];
  [(PBFPosterGalleryAssetHelper *)self->_assetHelper setKnownDisplayContexts:v10];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v6 viewWillAppear:appear];
  [(_PBFGalleryCollectionViewController *)self _applySnapshotFromDataProvider:self->_dataProvider];
  if (!self->_viewWillDisappearInteractionAssertion)
  {
    v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"will appear"];
    viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
    self->_viewWillDisappearInteractionAssertion = v4;
  }

  [(PBFApplicationStateMonitor *)self->_applicationStateMonitor pushState:self->_state];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v5 viewDidAppear:appear];
  [(BSInvalidatable *)self->_viewWillDisappearInteractionAssertion invalidate];
  viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
  self->_viewWillDisappearInteractionAssertion = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v6 viewWillDisappear:disappear];
  v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"will disappear"];
  viewWillDisappearInteractionAssertion = self->_viewWillDisappearInteractionAssertion;
  self->_viewWillDisappearInteractionAssertion = v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v11 viewDidDisappear:disappear];
  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  [collectionView setPrefetchingEnabled:0];

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

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v4 viewIsAppearing:appearing];
  [(_PBFGalleryCollectionViewController *)self _kickstartAssetHelperIfPossible];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v5 viewDidLayoutSubviews];
  topLegibilityGradientLayer = self->_topLegibilityGradientLayer;
  view = [(_PBFGalleryCollectionViewController *)self view];
  [view bounds];
  [(CAGradientLayer *)topLegibilityGradientLayer setFrame:0.0, 0.0, CGRectGetWidth(v6), 126.0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v33 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v30.receiver = self;
  v30.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v30 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(_PBFGalleryCollectionViewController *)self view];
  window = [view window];

  _fromWindowOrientation = [window _fromWindowOrientation];
  _toWindowOrientation = [window _toWindowOrientation];
  if (_fromWindowOrientation != _toWindowOrientation)
  {
    v12 = PBFLogGallery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%p) Gallery orientation changed - hiding live poster previews before rotating", buf, 0xCu);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v29[3] = &unk_2782C7160;
    v29[4] = self;
    [(_PBFGalleryCollectionViewController *)self _enumerateVisiblePosterPreviews:v29];
  }

  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v15 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"rotating"];
  if (_fromWindowOrientation == _toWindowOrientation)
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
  v25 = collectionViewLayout;
  selfCopy2 = self;
  v28 = _fromWindowOrientation != _toWindowOrientation;
  v27 = collectionView;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v21[3] = &unk_2782C5760;
  v22 = v15;
  v23 = v16;
  v17 = v16;
  v18 = v15;
  v19 = collectionView;
  v20 = collectionViewLayout;
  [coordinatorCopy animateAlongsideTransition:v24 completion:v21];
}

- (void)_rotationAssertionStateDidChange:(BOOL)change
{
  v7 = *MEMORY[0x277D85DE8];
  if (!change)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _PBFGalleryCollectionViewController;
  [(_PBFGalleryCollectionViewController *)&v4 traitCollectionDidChange:change];
  [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:1];
}

- (CGRect)previewFrameForScrollingPreviewWithIdentifierToVisible:(id)visible
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:visible];
  if (!v4)
  {
    goto LABEL_5;
  }

  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v4];
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
  window = [collectionView window];
  screen = [window screen];
  v10 = [PBFPosterGalleryViewSpec specForScreen:screen];

  [v10 sectionHeaderBottomSpacing];
  sectionHeaderTitleFont = [v10 sectionHeaderTitleFont];
  [sectionHeaderTitleFont lineHeight];

  [v7 frame];
  UIRectInset();
  [collectionView scrollRectToVisible:0 animated:?];
  posterPreviewView = [v7 posterPreviewView];
  [posterPreviewView posterPreviewFrame];
  [posterPreviewView convertRect:collectionView toCoordinateSpace:?];
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

- (void)noteEditingWillPresentFromCell:(id)cell
{
  v17 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  self->_editingPresentationState = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMapTable *)self->_displayedCellForIndexPath objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != cellCopy)
        {
          posterPreviewView = [v10 posterPreviewView];
          [posterPreviewView prepareForReuse];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)noteEditingDidPresent
{
  if (self->_editingPresentationState == 1)
  {
    self->_editingPresentationState = 2;
    collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
    [collectionView setHidden:1];

    assetHelper = self->_assetHelper;

    [(PBFPosterGalleryAssetHelper *)assetHelper setSuspended:1];
  }
}

- (void)noteEditingWillDismiss
{
  self->_editingPresentationState = 3;
  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  [collectionView setHidden:0];

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
      pbf_displayContext = [(UIViewController *)self pbf_displayContext];
      [(PBFPosterGalleryAssetHelper *)assetHelper setActiveDisplayContext:pbf_displayContext];

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

- (void)_enumerateVisiblePosterPreviews:(id)previews
{
  v21 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(indexPathsForVisibleItems);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      dataProvider = self->_dataProvider;
      v13 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v11];
      v14 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v13];

      v15 = 0;
      previewsCopy[2](previewsCopy, v14, v11, &v15);
      LOBYTE(v11) = v15;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_applySnapshotFromDataProvider:(id)provider
{
  providerCopy = provider;
  if ([(_PBFGalleryCollectionViewController *)self isViewLoaded])
  {
    bs_isAppearingOrAppeared = [(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared];
    if (providerCopy)
    {
      if (bs_isAppearingOrAppeared)
      {
        snapshot = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource snapshot];
        buildSnapshot = [providerCopy buildSnapshot];
        if (!snapshot || ([snapshot isEqual:buildSnapshot] & 1) == 0)
        {
          assetHelper = self->_assetHelper;
          posterPreviews = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
          [(PBFPosterGalleryAssetHelper *)assetHelper setPosterPreviews:posterPreviews];

          [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshotUsingReloadData:buildSnapshot];
          [(_PBFGalleryCollectionViewController *)self _resetState];
        }
      }
    }
  }
}

- (void)_resetState
{
  state = self->_state;
  posterPreviews = [(PBFPosterGalleryDataProvider *)self->_dataProvider posterPreviews];
  v3 = [posterPreviews bs_map:&__block_literal_global_414];
  [(PBFApplicationStateNode *)state setComponents:v3];
}

- (void)configureCell:(id)cell forCollectionView:(id)view posterPreview:(id)preview indexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  previewCopy = preview;
  pathCopy = path;
  activeDisplayContext = [(PBFPosterGalleryAssetHelper *)self->_assetHelper activeDisplayContext];
  pbf_displayContext = [(UIViewController *)self pbf_displayContext];
  v14 = [activeDisplayContext isEqualToDisplayContext:pbf_displayContext];

  if ((v14 & 1) == 0)
  {
    [(_PBFGalleryCollectionViewController *)self _updateAssetHelperActiveContexts:0];
  }

  posterPreviewView = [cellCopy posterPreviewView];
  [posterPreviewView setReusableViewMap:self->_reusableViewMap];

  pbf_layoutOrientation = [(UIViewController *)self pbf_layoutOrientation];
  v17 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper assetsForPosterPreview:previewCopy];
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
    snapshotBundleLayoutView = 0;
    goto LABEL_17;
  }

  type = [previewCopy type];
  v19 = PBFPreviewTypeHero;

  if (type == v19)
  {
    heroView = [v111 heroView];
    v112 = 0;
    snapshotBundleLayoutView = 0;
  }

  else
  {
    snapshotBundleLayoutView = [v111 snapshotBundleLayoutView];
    assetViewController = [v111 assetViewController];
    v112 = assetViewController;
    if (assetViewController)
    {
      heroView = [assetViewController view];
    }

    else
    {
      heroView = snapshotBundleLayoutView;
      v112 = 0;
      snapshotBundleLayoutView = heroView;
    }
  }

  v110[2](v110, heroView);
  if (v112)
  {
    if (PBFDebugLiveWallpapers())
    {
      contentView = [cellCopy contentView];
      layer = [contentView layer];
      [layer setBorderWidth:1.0];
LABEL_15:
    }
  }

  else if (PBFDebugLiveWallpapers())
  {
    contentView = [cellCopy contentView];
    layer = [contentView layer];
    [layer setBorderWidth:0.0];
    goto LABEL_15;
  }

  [cellCopy updatePreview:previewCopy posterPreviewView:heroView layoutOrientation:pbf_layoutOrientation index:{objc_msgSend(pathCopy, "row")}];

LABEL_17:
  posterPreviewView2 = [cellCopy posterPreviewView];
  complicationContentView = [posterPreviewView2 complicationContentView];

  posterPreview = [complicationContentView posterPreview];
  v27 = [posterPreview isEqual:previewCopy];

  if ((v27 & 1) == 0)
  {
    [complicationContentView setPosterPreview:previewCopy];
    [complicationContentView prepareComplicationPreviewWithGenerator:self->_dataProvider];
  }

  galleryLocalizedTitle = [previewCopy galleryLocalizedTitle];
  if (![galleryLocalizedTitle length])
  {
    goto LABEL_55;
  }

  supportsPosterTitle = [cellCopy supportsPosterTitle];

  if (supportsPosterTitle)
  {
    view = [(_PBFGalleryCollectionViewController *)self view];
    window = [view window];
    screen = [window screen];
    galleryLocalizedTitle = [PBFPosterGalleryViewSpec specForScreen:screen];

    galleryOptions = [previewCopy galleryOptions];
    modeSymbolImageName = [galleryOptions modeSymbolImageName];

    if (modeSymbolImageName)
    {
      galleryLocalizedTitle3 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:1];
      v104 = objc_alloc_init(MEMORY[0x277D74270]);
      v35 = [MEMORY[0x277D755B8] _systemImageNamed:modeSymbolImageName withConfiguration:galleryLocalizedTitle3];
      previewCellLabelColor = [galleryLocalizedTitle previewCellLabelColor];
      v37 = [v35 imageWithTintColor:previewCellLabelColor];
      [v104 setImage:v37];

      v102 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v104];
      v38 = objc_alloc(MEMORY[0x277CCA898]);
      galleryLocalizedTitle2 = [previewCopy galleryLocalizedTitle];
      v40 = [v38 initWithString:galleryLocalizedTitle2];

      v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"%@ %@"];
      traitCollection = [(_PBFGalleryCollectionViewController *)self traitCollection];
      layoutDirection = [traitCollection layoutDirection];

      if (layoutDirection == 1)
      {
        v102 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v40, v102];
      }

      else
      {
        v102 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v102, v40];
      }

      [cellCopy setAttributedPosterTitle:v102];
LABEL_53:

      goto LABEL_54;
    }

    if ([previewCopy galleryDisplayStyle] != 2)
    {
      type2 = [previewCopy type];
      v46 = PBFPreviewTypeSmartAlbum;

      if (type2 != v46)
      {
        galleryLocalizedTitle3 = [previewCopy galleryLocalizedTitle];
        [cellCopy setPosterTitle:galleryLocalizedTitle3];
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }
    }

    view2 = [(_PBFGalleryCollectionViewController *)self view];
    traitCollection2 = [view2 traitCollection];
    [traitCollection2 displayScale];
    v50 = v49;

    if ([previewCopy galleryDisplayStyle] == 2)
    {
      v51 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedGyroBadge;
    }

    else
    {
      type3 = [previewCopy type];
      v53 = PBFPreviewTypeSmartAlbum;

      if (type3 != v53)
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
      galleryLocalizedTitle4 = [previewCopy galleryLocalizedTitle];
      v40 = [v92 initWithString:galleryLocalizedTitle4];

      v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"%@ %@"];
      traitCollection3 = [(_PBFGalleryCollectionViewController *)self traitCollection];
      layoutDirection2 = [traitCollection3 layoutDirection];

      if (layoutDirection2 == 1)
      {
        v102 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v102, v40];
      }

      else
      {
        v102 = [objc_alloc(MEMORY[0x277CCA898]) initWithFormat:v41 options:0 locale:0, v40, v102];
      }

      [cellCopy setAttributedPosterTitle:v102];
      galleryLocalizedTitle3 = v104;
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
    galleryDisplayStyle = [previewCopy galleryDisplayStyle];
    v65 = v63;
    v103 = v63;
    if (galleryDisplayStyle == 2 || ([previewCopy type], v66 = objc_claimAutoreleasedReturnValue(), v67 = PBFPreviewTypeSmartAlbum, v66, v65 = v61, v68 = v66 == v67, v62 = v105, v68))
    {
      v69 = v65;
    }

    else
    {
      v69 = 0;
    }

    badgeColor = [galleryLocalizedTitle badgeColor];
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
    [badgeColor setFill];
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
    if ([previewCopy galleryDisplayStyle] == 2)
    {
      v89 = &OBJC_IVAR____PBFGalleryCollectionViewController__cachedGyroBadge;
    }

    else
    {
      type4 = [previewCopy type];
      v91 = PBFPreviewTypeSmartAlbum;

      v68 = type4 == v91;
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
  galleryLocalizedDescription = [previewCopy galleryLocalizedDescription];
  if (galleryLocalizedDescription)
  {
    supportsPosterDescription = [cellCopy supportsPosterDescription];

    if (supportsPosterDescription)
    {
      galleryLocalizedDescription2 = [previewCopy galleryLocalizedDescription];
      [cellCopy setPosterDescription:galleryLocalizedDescription2];
    }
  }

  objc_destroyWeak(&v114);
  objc_destroyWeak(location);
}

- (void)assetHelper:(id)helper didUpdateAssetsForPosterPreviews:(id)previews
{
  v15 = *MEMORY[0x277D85DE8];
  previewsCopy = previews;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [previewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(previewsCopy);
        }

        [(_PBFGalleryCollectionViewController *)self _reloadCellForPosterPreviewIfVisible:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [previewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)assetHelper:(id)helper prepareForPosterPreview:(id)preview movingToLive:(id)live
{
  liveCopy = live;
  WeakRetained = objc_loadWeakRetained(&self->_hostingViewController);
  [WeakRetained bs_addChildViewController:liveCopy withSuperview:self->_containerView];
}

- (BOOL)_reloadCellForPosterPreviewIfVisible:(id)visible
{
  visibleCopy = visible;
  if ([(_PBFGalleryCollectionViewController *)self bs_isAppearingOrAppeared])
  {
    diffableDataSource = self->_diffableDataSource;
    previewUniqueIdentifier = [visibleCopy previewUniqueIdentifier];
    v7 = [(UICollectionViewDiffableDataSource *)diffableDataSource indexPathForItemIdentifier:previewUniqueIdentifier];

    if (v7)
    {
      v8 = [(NSMapTable *)self->_displayedCellForIndexPath objectForKey:v7];
      v9 = v8 != 0;
      if (v8)
      {
        collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
        [(_PBFGalleryCollectionViewController *)self configureCell:v8 forCollectionView:collectionView posterPreview:visibleCopy indexPath:v7];
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

- (id)assetHelper:(id)helper choosePosterPreviewToGoLive:(id)live
{
  v31 = *MEMORY[0x277D85DE8];
  liveCopy = live;
  collectionView = [(_PBFGalleryCollectionViewController *)self collectionView];
  [collectionView bounds];
  v25 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  keyEnumerator = [(NSMapTable *)self->_displayedCellForIndexPath keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v9 = [v6 setWithArray:allObjects];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = liveCopy;
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
        previewUniqueIdentifier = [v15 previewUniqueIdentifier];
        v18 = [(UICollectionViewDiffableDataSource *)diffableDataSource indexPathForItemIdentifier:previewUniqueIdentifier];

        if ([v9 containsObject:v18])
        {
          [v25 setObject:v15 forKey:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  allKeys = [v25 allKeys];
  v20 = [allKeys sortedArrayUsingComparator:&__block_literal_global_435];

  firstObject = [v20 firstObject];
  v22 = [v25 objectForKey:firstObject];

  return v22;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForItemAtIndexPath:pathCopy];
  dataProvider = self->_dataProvider;
  v9 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];

  v10 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v9];

  type = [v10 type];
  if ([type isEqualToString:PBFPreviewTypeHero])
  {
    goto LABEL_4;
  }

  presentationStyle = [v10 presentationStyle];

  if (presentationStyle != 1)
  {
    posterPreviewView = [v7 posterPreviewView];
    [posterPreviewView bounds];
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
    type = [objc_alloc(MEMORY[0x277D76180]) initWithFrame:{v15, v17, v19, v21}];
    [type setAutoresizingMask:18];
    [type setHidesSourceView:0];
    [type setMatchesPosition:0];
    [type setMatchesTransform:0];
    [type setAllowsBackdropGroups:1];
    posterPreviewView2 = [v7 posterPreviewView];
    [type setSourceView:posterPreviewView2];

    v25 = [objc_alloc(MEMORY[0x277D3EFE8]) initWithFrame:{v15, v17, v19, v21}];
    [v25 setContentView:type];
    CGAffineTransformMakeTranslation(&v30, 0.0, v23);
    [v25 setContentViewTransform:&v30];
    v26 = [objc_alloc(MEMORY[0x277D3EFD8]) initWithFrame:{v15, v17, v19, v21}];
    [v26 setContentView:v25];
    posterPreviewView3 = [v7 posterPreviewView];
    [posterPreviewView3 prepareForFullScreenTransitionWithContentView:v26];

LABEL_4:
  }

  delegate = [(_PBFGalleryCollectionViewController *)self delegate];
  posterPreviewView4 = [v7 posterPreviewView];
  [delegate galleryCollectionViewControllerDidSelectPreview:v10 fromPreviewView:posterPreviewView4];

  [(_PBFGalleryCollectionViewController *)self noteEditingWillPresentFromCell:v7];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  [(NSMapTable *)self->_displayedCellForIndexPath setObject:cellCopy forKey:pathCopy];
  dataProvider = self->_dataProvider;
  v11 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];
  v12 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v11];

  if ([(PBFPosterGalleryAssetHelper *)self->_assetHelper updatePosterPreview:v12 isVisible:1])
  {
    [(_PBFGalleryCollectionViewController *)self configureCell:cellCopy forCollectionView:viewCopy posterPreview:v12 indexPath:pathCopy];
  }

  delegate = [(_PBFGalleryCollectionViewController *)self delegate];
  [delegate galleryCollectionViewControllerWillDisplayPreview:v12];

  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  displayedCellForIndexPath = self->_displayedCellForIndexPath;
  pathCopy = path;
  [(NSMapTable *)displayedCellForIndexPath removeObjectForKey:pathCopy];
  dataProvider = self->_dataProvider;
  v9 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];

  v10 = [(PBFPosterGalleryDataProvider *)dataProvider previewForPreviewUniqueIdentifier:v9];

  [(PBFPosterGalleryAssetHelper *)self->_assetHelper updatePosterPreview:v10 isVisible:0];
  [(_PBFGalleryCollectionViewController *)self conditionallyShowGalleryControllerDebugView];
}

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (!self->_userInteractionAssertion)
  {
    v4 = [(PBFPosterGalleryAssetHelper *)self->_assetHelper acquireGalleryInteractionAssertionWithReason:@"scrollViewWillBeginDragging"];
    userInteractionAssertion = self->_userInteractionAssertion;
    self->_userInteractionAssertion = v4;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  v6 = draggingCopy;
  if (self->_userInteractionAssertion)
  {
    v9 = draggingCopy;
    isScrollAnimating = [draggingCopy isScrollAnimating];
    v6 = v9;
    if ((isScrollAnimating & 1) == 0)
    {
      [(BSInvalidatable *)self->_userInteractionAssertion invalidate];
      userInteractionAssertion = self->_userInteractionAssertion;
      self->_userInteractionAssertion = 0;

      v6 = v9;
    }
  }
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80___PBFGalleryCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke;
  v8[3] = &unk_2782C7240;
  v8[4] = self;
  v5 = [paths bs_mapNoNulls:v8];
  assetHelper = self->_assetHelper;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [(PBFPosterGalleryAssetHelper *)assetHelper prefetchPosterPreviews:v7];
}

- (void)collectionView:(id)view cancelPrefetchingForItemsAtIndexPaths:(id)paths
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92___PBFGalleryCollectionViewController_collectionView_cancelPrefetchingForItemsAtIndexPaths___block_invoke;
  v8[3] = &unk_2782C7240;
  v8[4] = self;
  v5 = [paths bs_mapNoNulls:v8];
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