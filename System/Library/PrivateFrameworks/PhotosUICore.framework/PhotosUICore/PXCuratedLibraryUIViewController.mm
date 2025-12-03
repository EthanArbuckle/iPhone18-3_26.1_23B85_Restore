@interface PXCuratedLibraryUIViewController
- ($0AC6E346AE4835514AAA8AC86D8F4844)trackedScrollContext;
- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)_handleGestureForFilterTipController;
- (BOOL)_handleHoverWithHitTestResult:(id)result;
- (BOOL)_handleTapOnTitleWithHitTestResult:(id)result;
- (BOOL)_handleTapToToggleChromeWithGestureRecognizer:(id)recognizer;
- (BOOL)_handleTapWithHitTestResult:(id)result keyModifierFlags:(int64_t)flags;
- (BOOL)_isSecondaryToolbarTabBarAccessoryPlacementValid;
- (BOOL)_presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler;
- (BOOL)_requestExpansionAnimated:(BOOL)animated;
- (BOOL)_scrollToNextSectionInDirection:(int64_t)direction animated:(BOOL)animated;
- (BOOL)_shouldExposeCursorAnimations;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResetToInitialState;
- (BOOL)dragController:(id)controller shouldResizeCancelledPreviewForAssetReference:(id)reference;
- (BOOL)dragController:(id)controller shouldSelectRearrangedAssetReferences:(id)references;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isInSelectedTab;
- (BOOL)isInUnselectedTab;
- (BOOL)isPresentingSearchOverlay;
- (BOOL)isResetToInitialState;
- (BOOL)oneUpPresentation:(id)presentation allowsMultiSelectMenuForInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation commitPreviewForContextMenuInteraction:(id)interaction;
- (BOOL)ppt_dismiss;
- (BOOL)pu_shouldOptOutFromChromelessBars;
- (BOOL)scrollViewControllerShouldScrollToTop:(id)top;
- (BOOL)swipeSelectionManager:(id)manager shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)point;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode;
- (CGRect)_rectForEllipsisActionPerformerButton;
- (CGRect)lastUsedTabBarFrame;
- (PXActionManager)assetActionManager;
- (PXCuratedLibraryBarsController)barsController;
- (PXCuratedLibraryFilterToggleButtonController)filterButtonController;
- (PXCuratedLibrarySkimmingController)skimmingController;
- (PXCuratedLibraryUIViewController)initWithCoder:(id)coder;
- (PXCuratedLibraryUIViewController)initWithConfiguration:(id)configuration;
- (PXCuratedLibraryUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCuratedLibraryUIViewController)initWithPhotoLibrary:(id)library initialZoomLevel:(int64_t)level;
- (PXCuratedLibraryViewDelegate)delegate;
- (PXCuratedLibraryViewProvider)viewProvider;
- (PXCuratedLibraryViewUpdateDelegate)updateDelegate;
- (PXGAXResponder)axNextResponder;
- (PXGView)gridView;
- (PXPhotosCloseButtonController)closeButtonController;
- (PXSelectionContainer)selectionContainer;
- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)location withPadding:(CGPoint)padding forSwipeSelectionManager:(UIEdgeInsets)manager;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)legibilityClipInsets;
- (UIEdgeInsets)minimumContentOverlayInsets;
- (UITabBar)tabBar;
- (id)_assetCollectionReferenceForGroup:(id)group;
- (id)_bestHitTestResultForCursorAtLocation:(CGPoint)location;
- (id)_buttonForEllipsisButtonAction;
- (id)_buttonHitTestResultAtPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)_createPreviewViewForAssetReference:(id)reference;
- (id)_createPreviewViewForHitTestResult:(id)result;
- (id)_dominantAssetCollectionReferenceForSkimming;
- (id)_emptyPlaceholderMessageTextAttributesFromTextProperties:(id)properties;
- (id)_hitTestAssetReferenceAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)_hitTestResultAtLocation:(CGPoint)location withPadding:(UIEdgeInsets)padding swipeSelectionManager:(id)manager;
- (id)_regionOfInterestForAssetReference:(id)reference image:(id *)image;
- (id)_scrollView;
- (id)_toolbarButtonConfigurationWithSymbolName:(id)name;
- (id)assetReferenceForIndexPath:(id)path;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)barsControllerActionsForSelectionContextMenu:(id)menu;
- (id)dragController:(id)controller draggableAssetReferenceAtLocation:(CGPoint)location;
- (id)dragControllerAssetReferenceForBeginningSession:(id)session;
- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation previewForDismissingToSecondaryItemWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)oneUpPresentation:(id)presentation previewForHighlightingSecondaryItemWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation secondaryIdentifiersForConfiguration:(id)configuration;
- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing;
- (id)oneUpPresentationDataSourceManager:(id)manager;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (id)passthroughViewsForTipForController:(id)controller;
- (id)pointerController:(id)controller identifierForRegionAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)pointerController:(id)controller regionOfInterestForCursorAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)pointerController:(id)controller viewForCursorInteractionAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)preferredFocusEnvironments;
- (id)pu_debugCurrentlySelectedAssets;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)px_navigationDestination;
- (id)sourceItemForTipID:(id)d;
- (id)swipeSelectionManager:(id)manager indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)targetedPreviewForAssetReference:(id)reference;
- (int64_t)oneUpPresentationOrigin:(id)origin;
- (int64_t)pointerController:(id)controller interactionOptionsForRegionAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_addContentView:(id)view;
- (void)_applicationDidHide;
- (void)_conditionallyUpdateEmptyPlaceholder;
- (void)_configureTabBarCollapsedStateObservation;
- (void)_createAnimationForSkimmingWithDuration:(double)duration indicatorsDidChangeVisibility:(BOOL)visibility;
- (void)_handleHover:(id)hover;
- (void)_handleHoverWithHitTestResults:(id)results hoverGesture:(id)gesture;
- (void)_handleNavigationRequestConditionCompletionForNavigationRequest:(id)request withAssetReference:(id)reference;
- (void)_handlePan:(id)pan;
- (void)_handlePinch:(id)pinch;
- (void)_handlePress:(id)press;
- (void)_handleScreenEdgePan:(id)pan;
- (void)_handleScrollToRevealInfo:(id)info inGroup:(id)group;
- (void)_handleScrolledAtBottom;
- (void)_handleShowAlternateUIForGroup:(id)group;
- (void)_handleShowDefaultUIForGroup:(id)group;
- (void)_handleTap:(id)tap;
- (void)_handleTapWithHitTestResults:(id)results tapGesture:(id)gesture;
- (void)_invalidateBannerView;
- (void)_invalidateEmptyPlaceholder;
- (void)_navigateToInitialScrollPositionForNavigationRequest:(id)request;
- (void)_navigateToRevealAssetForNavigationRequest:(id)request;
- (void)_navigateToZoomLevelForNavigationRequest:(id)request successHandler:(id)handler;
- (void)_prepareGestureRecognizers;
- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)activity;
- (void)_requestExpansionForSelectionIfNeeded;
- (void)_requestExpansionIfNeededForInteractionWithAssetReference:(id)reference animated:(BOOL)animated;
- (void)_requestFocusUpdateForCursorAsset;
- (void)_requestFocusUpdateWithAssetReference:(id)reference;
- (void)_rescheduleNavigationRequest:(id)request;
- (void)_resetBannerView;
- (void)_saveCurrentAllPhotosScrollPosition;
- (void)_scrollLibraryViewToInitialPositionWithCompletionHandler:(id)handler;
- (void)_scrollToBottomAnimated:(BOOL)animated;
- (void)_setCanShowSecondaryToolbar:(BOOL)toolbar animated:(BOOL)animated;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)_setContentUnavailableConfiguration:(id)configuration;
- (void)_setWantsOptionalChromeVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)_updateAllowDisplayCompositing;
- (void)_updateBackgroundColor;
- (void)_updateBannerView;
- (void)_updateCanShowSecondaryToolbar;
- (void)_updateDismissalInteractionControllerProperties;
- (void)_updateDrawerButtonVisibility;
- (void)_updateEmptyPlaceholder;
- (void)_updateFirstResponderIfNeeded;
- (void)_updateIsModalInPresentation;
- (void)_updateScrollView;
- (void)_updateScrolledToStates:(id)states;
- (void)_updateSecondaryToolbar;
- (void)_updateSecondaryToolbarAccessoryViewStyles;
- (void)_updateSecondaryToolbarAccessoryViews;
- (void)_updateSecondaryToolbarControllerContainerView;
- (void)_updateSecondaryToolbarLegibilityGradient;
- (void)_updateSecondaryToolbarStyle;
- (void)_updateSecondaryToolbarTabBarAccessoryPlacement;
- (void)_updateSkimmingSlideshowEnabled;
- (void)_updateStatusBarStyle;
- (void)_updateTrackedScrollLevelIfNeeded;
- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)cancelSelectMode:(id)mode;
- (void)curatedLibraryActionPerformer:(id)performer contentFilterStateChanged:(id)changed;
- (void)curatedLibraryActionPerformer:(id)performer libraryFilterStateChanged:(id)changed;
- (void)curatedLibraryActionPerformer:(id)performer presentContextMenuActionsWithPerformers:(id)performers;
- (void)curatedLibraryActionPerformer:(id)performer presentShareSheetWithSharingContext:(id)context;
- (void)curatedLibraryBarsControllerDidUpdateBars:(id)bars;
- (void)deselectAll:(id)all;
- (void)didDismissTipForController:(id)controller;
- (void)dragController:(id)controller draggedAssetReferencesDidChange:(id)change;
- (void)dragController:(id)controller isDragSessionActiveDidChange:(BOOL)change;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigateToSegment:(id)segment;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)oneUpPresentation:(id)presentation willEndPreviewingForContextMenuInteraction:(id)interaction configuration:(id)configuration;
- (void)oneUpPresentation:(id)presentation willStartPreviewingForContextMenuInteraction:(id)interaction;
- (void)openParentWithCommandUpArrow:(id)arrow;
- (void)openSelectionWithCommandDownArrow:(id)arrow;
- (void)photosCloseButtonControllerHandleAction:(id)action;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)pointerController:(id)controller didExitRegionWithRect:(CGRect)rect inCoordinateSpace:(id)space;
- (void)ppt_navigateToAsset:(id)asset inAssetContainer:(id)container revealInOneUp:(BOOL)up completionHandler:(id)handler;
- (void)preparePresentationEnvironmentForBannerView:(id)view actionIdentifier:(id)identifier completionHandler:(id)handler;
- (void)prepareTipPopover:(id)popover tipID:(id)d;
- (void)px_containedViewControllerModalStateChanged;
- (void)px_didTransitionBars;
- (void)px_navigateToStateAllowingTabSwitchingWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)px_willTransitionBars;
- (void)resetToInitialStateWithCompletionHandler:(id)handler;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)secondaryToolbarControllerSetNeedsUpdate:(id)update;
- (void)setCanShowFooter:(BOOL)footer;
- (void)setCanShowSecondaryToolbar:(BOOL)toolbar;
- (void)setCplUIStatusProvider:(id)provider;
- (void)setDidAppearInitially:(BOOL)initially;
- (void)setIsCollapsed:(BOOL)collapsed;
- (void)setNavigatedAssetReference:(id)reference;
- (void)skimmingController:(id)controller willStartSkimmingAssetCollectionReference:(id)reference animationDuration:(double)duration;
- (void)splitViewController:(id)controller didChangeSidebarVisibility:(BOOL)visibility;
- (void)splitViewController:(id)controller willChangeSidebarVisibility:(BOOL)visibility;
- (void)swipeSelectionManager:(id)manager extendSelectionInDirection:(unint64_t)direction;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode;
- (void)swipeSelectionManagerDidAutoScroll:(id)scroll;
- (void)test_presentSearchOverlayWithCompletion:(id)completion;
- (void)toggleEditMode:(id)mode;
- (void)toggleFilter:(id)filter;
- (void)toggleSortOrder:(id)order;
- (void)toggleViewMode:(id)mode;
- (void)touchingUIGestureRecognizerDidBeginTouching:(id)touching;
- (void)touchingUIGestureRecognizerDidEndTouching:(id)touching;
- (void)traitCollectionDidChange:(id)change;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentTipForController:(id)controller;
- (void)zoomIn:(id)in;
- (void)zoomOut:(id)out;
@end

@implementation PXCuratedLibraryUIViewController

- (id)px_navigationDestination
{
  v2 = [[PXProgrammaticNavigationDestination alloc] initWithType:1 revealMode:0];

  return v2;
}

- (BOOL)canBecomeFirstResponder
{
  navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
  firstResponder = [navigationController firstResponder];

  if (firstResponder)
  {
    firstResponder2 = [navigationController firstResponder];
    v5 = [firstResponder2 _containsResponder:navigationController];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)viewDidLoad
{
  v116 = *MEMORY[0x1E69E9840];
  v114.receiver = self;
  v114.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v114 viewDidLoad];
  view = [(PXCuratedLibraryUIViewController *)self view];
  legibilityContainerView = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  [view addSubview:legibilityContainerView];

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  styleGuide = [viewModel styleGuide];
  v101 = +[PXCuratedLibrarySettings sharedInstance];
  sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
  sharedLibraryStatusProvider = self->_sharedLibraryStatusProvider;
  self->_sharedLibraryStatusProvider = sharedLibraryStatusProvider;

  [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext_62286];
  libraryFilterState = [viewModel libraryFilterState];
  libraryFilterState = self->_libraryFilterState;
  self->_libraryFilterState = libraryFilterState;

  [(PXLibraryFilterState *)self->_libraryFilterState registerChangeObserver:self context:PXLibraryFilterStateObservationContext_62287];
  [(PXCuratedLibraryUIViewController *)self _updateBackgroundColor];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  [(UIViewController *)self px_enableOneUpPresentation];
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  [px_oneUpPresentation setDelegate:self];

  [(PXCuratedLibraryUIViewController *)self _prepareGestureRecognizers];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  v12 = +[PXSolariumSettings sharedInstance];
  enableAdaptiveDarkBiasInGrid = [v12 enableAdaptiveDarkBiasInGrid];

  if (enableAdaptiveDarkBiasInGrid)
  {
    [scrollView px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
  }

  v14 = [[PXPhotosPointerController alloc] initWithContentView:scrollView delegate:self];
  pointerController = self->_pointerController;
  self->_pointerController = v14;

  v16 = [off_1E77218F0 alloc];
  viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel2 = [viewProvider2 viewModel];
  selectionManager = [viewModel2 selectionManager];
  v20 = [v16 initWithSelectionManager:selectionManager scrollView:scrollView];
  swipeSelectionManager = self->_swipeSelectionManager;
  self->_swipeSelectionManager = v20;

  [(PXSwipeSelectionManager *)self->_swipeSelectionManager setDelegate:self];
  px_oneUpPresentation2 = [(UIViewController *)self px_oneUpPresentation];
  contextMenuInteraction = [px_oneUpPresentation2 contextMenuInteraction];

  [gridView addInteraction:contextMenuInteraction];
  [(UIViewController *)self px_enableBarAppearance];
  barsController = [(PXCuratedLibraryUIViewController *)self barsController];
  v24 = +[PXApplicationState sharedState];
  [v24 registerChangeObserver:self context:ApplicationStateObservationContext];

  configuration = [viewModel configuration];
  LODWORD(viewProvider2) = [configuration enableSecondaryToolbarContainerView];

  if (viewProvider2)
  {
    v26 = [PXHitTestTransparentView alloc];
    view2 = [(PXCuratedLibraryUIViewController *)self view];
    [view2 bounds];
    v28 = [(PXHitTestTransparentView *)v26 initWithFrame:?];
    secondaryToolbarContainerView = self->_secondaryToolbarContainerView;
    self->_secondaryToolbarContainerView = v28;
  }

  v30 = [PXCuratedLibrarySecondaryToolbarController alloc];
  v31 = self->_secondaryToolbarContainerView;
  if (v31)
  {
    view3 = self->_secondaryToolbarContainerView;
  }

  else
  {
    view3 = [(PXCuratedLibraryUIViewController *)self view];
  }

  v33 = v31 == 0;
  legibilityContainerView2 = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  v35 = [(PXCuratedLibrarySecondaryToolbarController *)v30 initWithContainerView:view3 legibilityContainerView:legibilityContainerView2 viewModel:viewModel];
  secondaryToolbarController = self->_secondaryToolbarController;
  self->_secondaryToolbarController = v35;

  if (v33)
  {
  }

  [(PXSecondaryToolbarController *)self->_secondaryToolbarController setUpdateDelegate:self];
  v37 = [PXCuratedLibraryBottomSpacerController alloc];
  px_extendedTraitCollection = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
  layout = [viewProvider layout];
  gridView2 = [viewProvider gridView];
  v41 = [(PXCuratedLibraryBottomSpacerController *)v37 initWithViewModel:viewModel extendedTraitCollection:px_extendedTraitCollection layout:layout gridView:gridView2];
  bottomSpacerController = self->_bottomSpacerController;
  self->_bottomSpacerController = v41;

  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  v44 = [assetsDataSourceManager dataSourceForZoomLevel:4];
  firstAssetCollection = [v44 firstAssetCollection];

  v97 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:firstAssetCollection displayTitleInfo:0];
  v45 = [off_1E77217F0 alloc];
  gridView3 = [(PXCuratedLibraryUIViewController *)self gridView];
  selectionManager2 = [viewModel selectionManager];
  v48 = [v45 initWithContentView:gridView3 selectionManager:selectionManager2 assetCollectionActionManager:v97 delegate:self];
  dragController = self->_dragController;
  self->_dragController = v48;

  v50 = [[PXCuratedLibraryZoomLevelControl alloc] initWithViewModel:viewModel styleGuide:styleGuide];
  zoomLevelControl = self->_zoomLevelControl;
  self->_zoomLevelControl = v50;

  [(PXCuratedLibraryZoomLevelControl *)self->_zoomLevelControl setDelegate:self];
  v52 = self->_zoomLevelControl;
  v53 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:scrollView edge:4];
  [(PXCuratedLibraryZoomLevelControl *)v52 addInteraction:v53];

  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbar];
  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViews];
  [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
  v54 = [PXAssetSelectionUserActivityController alloc];
  selectionManager3 = [viewModel selectionManager];
  v56 = [(PXAssetSelectionUserActivityController *)v54 initWithSelectionManager:selectionManager3];
  userActivityController = self->_userActivityController;
  self->_userActivityController = v56;

  scrollViewController2 = [gridView scrollViewController];
  [scrollViewController2 registerObserver:self];

  footerController = [viewProvider footerController];
  [footerController setDelegate:self];

  v60 = objc_alloc_init(PXCuratedLibraryZoomLevelPinchFilter);
  zoomLevelPinchFilter = self->_zoomLevelPinchFilter;
  self->_zoomLevelPinchFilter = v60;

  actionManager = [viewModel actionManager];
  [actionManager setPerformerDelegate:self];

  configuration2 = [viewModel configuration];
  LOBYTE(v54) = [configuration2 allowedInteractiveDismissBehaviors] == 0;

  if ((v54 & 1) == 0)
  {
    v64 = [[PXViewControllerDismissalInteractionController alloc] initWithViewController:self];
    dismissalInteractionController = self->_dismissalInteractionController;
    self->_dismissalInteractionController = v64;

    [(PXCuratedLibraryUIViewController *)self _updateDismissalInteractionControllerProperties];
  }

  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v67 = PXCuratedLibrarySaveCurrentAllPhotosScrollPositionNotificationName;
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke;
  v111[3] = &unk_1E7747200;
  objc_copyWeak(&v112, &location);
  v68 = [defaultCenter addObserverForName:v67 object:0 queue:0 usingBlock:v111];

  [(PXCuratedLibraryUIViewController *)self _updateAllowDisplayCompositing];
  [(PXCuratedLibraryUIViewController *)self _updateScrollView];
  [(PXCuratedLibraryUIViewController *)self setIsGridViewReady:1];
  initialNavigationRequest = [(PXCuratedLibraryUIViewController *)self initialNavigationRequest];
  destination = [initialNavigationRequest destination];
  if ([destination type] == 1 && !objc_msgSend(destination, "revealMode") || !initialNavigationRequest || !-[PXCuratedLibraryUIViewController routingOptionsForDestination:](self, "routingOptionsForDestination:", destination))
  {
    v70 = [[PXProgrammaticNavigationDestination alloc] initWithType:1 revealMode:3];
    if ([v101 launchToSavedAllPhotosScrollPosition])
    {
      savedAllPhotosScrollPositionAnchorAssetIdentifier = [v101 savedAllPhotosScrollPositionAnchorAssetIdentifier];
      v72 = savedAllPhotosScrollPositionAnchorAssetIdentifier == 0;

      if (!v72)
      {
        v73 = [PXProgrammaticNavigationDestination alloc];
        savedAllPhotosScrollPositionAnchorAssetIdentifier2 = [v101 savedAllPhotosScrollPositionAnchorAssetIdentifier];
        v75 = [(PXProgrammaticNavigationDestination *)v73 initWithType:5 revealMode:2 assetUUID:savedAllPhotosScrollPositionAnchorAssetIdentifier2 assetCollectionUUID:0];

        v70 = v75;
      }
    }

    v76 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v70 options:0 completionHandler:0];

    initialNavigationRequest = v76;
  }

  [(PXCuratedLibraryUIViewController *)self setInitialNavigationRequest:0];
  PXProgrammaticNavigationRequestExecute(initialNavigationRequest, self);
  px_splitViewController = [(UIViewController *)self px_splitViewController];
  [px_splitViewController registerChangeObserver:self];
  viewProvider3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel3 = [viewProvider3 viewModel];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke_2;
  v109[3] = &unk_1E7748B68;
  v80 = px_splitViewController;
  v110 = v80;
  [viewModel3 performChanges:v109];

  v81 = [PXCuratedLibraryFilterTipController alloc];
  viewProvider4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel4 = [viewProvider4 viewModel];
  viewProvider5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout2 = [viewProvider5 layout];
  v86 = [(PXCuratedLibraryFilterTipController *)v81 initWithViewModel:viewModel4 layout:layout2];
  filterTipController = self->_filterTipController;
  self->_filterTipController = v86;

  [(PXCuratedLibraryFilterTipController *)self->_filterTipController setDelegate:self];
  traitCollection = [(PXCuratedLibraryUIViewController *)self traitCollection];
  [(PXCuratedLibraryFilterTipController *)self->_filterTipController setTraitCollection:traitCollection];

  [PXGridTipsHelper setTipsPresentationDelegate:self];
  v89 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_openParentWithCommandUpArrow_];
  [(PXCuratedLibraryUIViewController *)self addKeyCommand:v89];

  v90 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_openSelectionWithCommandDownArrow_];
  [(PXCuratedLibraryUIViewController *)self addKeyCommand:v90];

  v91 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_cancelSelectMode_];
  [(PXCuratedLibraryUIViewController *)self addKeyCommand:v91];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  keyCommandsForSelectionExtension = [(PXSwipeSelectionManager *)self->_swipeSelectionManager keyCommandsForSelectionExtension];
  v93 = [keyCommandsForSelectionExtension countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v93)
  {
    v94 = *v106;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v106 != v94)
        {
          objc_enumerationMutation(keyCommandsForSelectionExtension);
        }

        [(PXCuratedLibraryUIViewController *)self addKeyCommand:*(*(&v105 + 1) + 8 * i)];
      }

      v93 = [keyCommandsForSelectionExtension countByEnumeratingWithState:&v105 objects:v115 count:16];
    }

    while (v93);
  }

  objc_destroyWeak(&v112);
  objc_destroyWeak(&location);
}

- (PXCuratedLibraryViewProvider)viewProvider
{
  viewProvider = self->_viewProvider;
  if (!viewProvider)
  {
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v16, &location);
    v4 = [(PXCuratedLibraryUIViewController *)self configuration:v15];
    [v4 setIsPresentingSearchOverlay:&v15];

    v5 = [PXCuratedLibraryViewProvider alloc];
    configuration = [(PXCuratedLibraryUIViewController *)self configuration];
    px_extendedTraitCollection = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
    v8 = [(PXCuratedLibraryViewProvider *)v5 initWithConfiguration:configuration extendedTraitCollection:px_extendedTraitCollection];
    v9 = self->_viewProvider;
    self->_viewProvider = v8;

    [(PXCuratedLibraryViewProvider *)self->_viewProvider setAxNextResponder:self];
    viewModel = [(PXCuratedLibraryViewProvider *)self->_viewProvider viewModel];
    [viewModel performInitialChanges:&__block_literal_global_62331];
    [viewModel registerChangeObserver:self context:PXCuratedLibraryViewModelObserverContext_62322];
    styleGuide = [viewModel styleGuide];
    [styleGuide registerChangeObserver:self context:PXCuratedLibraryStyleGuideObserverContext];

    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:self context:PXZoomablePhotosViewModelObservationContext];

    cplUIStatusProvider = [viewModel cplUIStatusProvider];
    [(PXCuratedLibraryUIViewController *)self setCplUIStatusProvider:cplUIStatusProvider];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    viewProvider = self->_viewProvider;
  }

  return viewProvider;
}

uint64_t __48__PXCuratedLibraryUIViewController_viewProvider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isPresentingSearchOverlay];

  return v2;
}

- (void)_updateBackgroundColor
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];

  _contentUnavailableConfiguration = [(PXCuratedLibraryUIViewController *)self _contentUnavailableConfiguration];

  if (_contentUnavailableConfiguration)
  {
    [spec contentUnavailableBackgroundColor];
  }

  else
  {
    [spec backgroundColor];
  }
  v7 = ;
  view = [(PXCuratedLibraryUIViewController *)self view];
  [view setBackgroundColor:v7];
}

- (PXGView)gridView
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  gridView = [viewProviderIfLoaded gridView];

  return gridView;
}

- (void)_updateEmptyPlaceholder
{
  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    if ([viewModel shouldShowEmptyPlaceholder])
    {
      emptyPlaceholderStatusController = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

      if (!emptyPlaceholderStatusController)
      {
        gridView = [viewProvider gridView];
        [gridView removeFromSuperview];

        [(PXCuratedLibraryUIViewController *)self _setObservableScrollView:0 forEdges:5];
        v8 = objc_alloc_init(off_1E77218E0);
        [v8 setDelegate:self];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke;
        aBlock[3] = &unk_1E7749FF8;
        v9 = v8;
        v41 = v9;
        selfCopy = self;
        v43 = a2;
        v10 = _Block_copy(aBlock);
        sharedLibraryStatusProvider = [(PXCuratedLibraryUIViewController *)self sharedLibraryStatusProvider];
        hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

        if (hasSharedLibraryOrPreview)
        {
          v13 = objc_alloc_init(off_1E77218E8);
          [v9 setViewModel:v13];
          libraryFilterState = [(PXCuratedLibraryUIViewController *)self libraryFilterState];
          viewMode = [libraryFilterState viewMode];

          if ((viewMode - 1) >= 2)
          {
            if (!viewMode)
            {
              v10[2](v10);
            }
          }

          else
          {
            configuration = [v9 configuration];
            secondaryTextProperties = [configuration secondaryTextProperties];
            v18 = [(PXCuratedLibraryUIViewController *)self _emptyPlaceholderMessageTextAttributesFromTextProperties:secondaryTextProperties];

            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke_3;
            v37[3] = &unk_1E77480A0;
            v38 = v18;
            v39 = viewMode;
            v19 = v18;
            [v13 performChanges:v37];
          }
        }

        else
        {
          v10[2](v10);
        }

        assetsDataSourceManager = [viewModel assetsDataSourceManager];
        v28 = [assetsDataSourceManager dataSourceForZoomLevel:4];
        firstAssetCollection = [v28 firstAssetCollection];

        v30 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:firstAssetCollection displayTitleInfo:0];
        v31 = [off_1E77217F0 alloc];
        view = [(PXCuratedLibraryUIViewController *)self view];
        selectionManager = [viewModel selectionManager];
        v34 = [v31 initWithContentView:view selectionManager:selectionManager assetCollectionActionManager:v30 delegate:self];
        [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderDragController:v34];

        [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderStatusController:v9];
        configuration2 = [v9 configuration];
        [(PXCuratedLibraryUIViewController *)self _setContentUnavailableConfiguration:configuration2];
      }
    }

    else if (([viewModel libraryState] & 2) != 0)
    {
      gridView2 = [viewProvider gridView];
      superview = [gridView2 superview];

      if (!superview)
      {
        [(PXCuratedLibraryUIViewController *)self _setContentUnavailableConfiguration:0];
        [(PXCuratedLibraryUIViewController *)self _invalidateEmptyPlaceholder];
        gridView3 = [viewProvider gridView];
        [(PXCuratedLibraryUIViewController *)self _addContentView:gridView3];

        gridView4 = [viewProvider gridView];
        scrollViewController = [gridView4 scrollViewController];
        scrollView = [scrollViewController scrollView];

        [(PXCuratedLibraryUIViewController *)self _setObservableScrollView:scrollView forEdges:5];
      }
    }

    else
    {
      v20 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *v36 = 0;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEBUG, "Not showing empty placeholder or grid: No results.", v36, 2u);
      }
    }
  }
}

- (void)_invalidateEmptyPlaceholder
{
  [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderStatusController:0];
  [(PXCuratedLibraryUIViewController *)self setStatusController:0];
  emptyPlaceholderDragController = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderDragController];
  [emptyPlaceholderDragController removeFromView];

  [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderDragController:0];
}

- (void)_prepareGestureRecognizers
{
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  actionManager = [viewModel actionManager];
  v6 = [actionManager isActionTypeAllowed:@"PXCuratedLibraryActionHover"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHover_];
    [(UIHoverGestureRecognizer *)v7 setDelegate:self];
    hoverGesture = self->_hoverGesture;
    self->_hoverGesture = v7;
    v9 = v7;

    [gridView addGestureRecognizer:v9];
  }

  v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [v10 setDelegate:self];
  [v10 setCancelsTouchesInView:0];
  objc_storeStrong(&self->_tapGesture, v10);
  [gridView addGestureRecognizer:v10];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handlePress_];
  [v11 setAllowedPressTypes:&unk_1F19101C8];
  [v11 setDelegate:self];
  objc_storeStrong(&self->_pressGesture, v11);
  [gridView addGestureRecognizer:v11];
  v12 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinch_];
  [v12 _setEndsOnSingleTouch:1];
  [v12 setDelegate:self];
  objc_storeStrong(&self->_pinchGesture, v12);
  [gridView addGestureRecognizer:v12];
  v13 = [[PXRelaxedScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:sel__handleScreenEdgePan_];
  screenEdgePanGestureRecognizer = self->_screenEdgePanGestureRecognizer;
  self->_screenEdgePanGestureRecognizer = v13;

  v15 = +[PXCuratedLibrarySettings sharedInstance];
  [v15 swipeBackGestureMinAngle];
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self->_screenEdgePanGestureRecognizer setMinAngleToEdge:?];

  v16 = +[PXCuratedLibrarySettings sharedInstance];
  [v16 swipeBackGestureMinTranslation];
  [(PXRelaxedScreenEdgePanGestureRecognizer *)self->_screenEdgePanGestureRecognizer setMinTranslation:?];

  [(PXRelaxedScreenEdgePanGestureRecognizer *)self->_screenEdgePanGestureRecognizer setDelegate:self];
  if ([gridView effectiveUserInterfaceLayoutDirection] == 1)
  {
    [(PXRelaxedScreenEdgePanGestureRecognizer *)self->_screenEdgePanGestureRecognizer setEdges:8];
  }

  [gridView addGestureRecognizer:self->_screenEdgePanGestureRecognizer];
  v17 = +[PXCuratedLibrarySettings sharedInstance];
  enableSkimmingInYears = [v17 enableSkimmingInYears];

  if (enableSkimmingInYears)
  {
    v19 = [[off_1E7721918 alloc] initWithTarget:0 action:0];
    [v19 setDelegate:self];
    [v19 setTouchDelegate:self];
    [v19 setCancelsTouchesInView:0];
    [v19 setMaximumTouchMovement:5.0];
    [gridView addGestureRecognizer:v19];
    skimmingTouchGesture = self->_skimmingTouchGesture;
    self->_skimmingTouchGesture = v19;
    v21 = v19;

    v22 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePan_];
    [(UIPanGestureRecognizer *)v22 setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v22 setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v22 setDelegate:self];
    [v21 maximumTouchMovement];
    [(UIPanGestureRecognizer *)v22 _setHysteresis:?];
    [(UIPanGestureRecognizer *)v22 requireGestureRecognizerToFail:self->_screenEdgePanGestureRecognizer];
    [gridView addGestureRecognizer:v22];
    panGesture = self->_panGesture;
    self->_panGesture = v22;
  }
}

- (PXCuratedLibraryBarsController)barsController
{
  barsController = self->_barsController;
  if (!barsController)
  {
    v4 = [PXCuratedLibraryBarsController alloc];
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    v7 = [(PXCuratedLibraryBarsController *)v4 initWithCuratedLibraryViewController:self viewModel:viewModel];
    v8 = self->_barsController;
    self->_barsController = v7;

    [(PXCuratedLibraryBarsController *)self->_barsController setDelegate:self];
    barsController = self->_barsController;
  }

  return barsController;
}

- (void)_updateSecondaryToolbar
{
  secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  configuration = [viewModel configuration];
  if (![configuration showSecondaryToolbar])
  {

    goto LABEL_6;
  }

  wantsZoomControlVisible = [viewModel wantsZoomControlVisible];

  if (!wantsZoomControlVisible)
  {
LABEL_6:
    [secondaryToolbarController setContentView:0];
    goto LABEL_16;
  }

  configuration2 = [viewModel configuration];
  secondaryToolbarStyle = [configuration2 secondaryToolbarStyle];

  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarLegibilityGradient];
  v10 = +[PXCuratedLibrarySettings sharedInstance];
  secondaryToolbarAlwaysVisible = [v10 secondaryToolbarAlwaysVisible];

  if (secondaryToolbarAlwaysVisible)
  {
    zoomLevelControl = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
    v13 = secondaryToolbarController;
    v14 = zoomLevelControl;
LABEL_14:
    [v13 setContentView:v14];
    goto LABEL_15;
  }

  zoomLevelControl = [viewProvider viewModel];
  isSelecting = [zoomLevelControl isSelecting];
  currentContentFilterState = [zoomLevelControl currentContentFilterState];
  isFiltering = [currentContentFilterState isFiltering];

  if (secondaryToolbarStyle)
  {
    v18 = 0;
  }

  else
  {
    v18 = isFiltering;
  }

  if ((isSelecting & 1) != 0 || v18)
  {
    v13 = secondaryToolbarController;
    v14 = 0;
    goto LABEL_14;
  }

  zoomLevelControl2 = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
  [secondaryToolbarController setContentView:zoomLevelControl2];

LABEL_15:
LABEL_16:
  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  [secondaryToolbarController setContentScrollViewController:scrollViewController];

  [secondaryToolbarController updateIfNeeded];
  v22 = MEMORY[0x1E69DDCE0];
  [secondaryToolbarController containerViewAdditionalEdgeInsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v55 = v29;
  configuration3 = [viewModel configuration];
  [secondaryToolbarController containerViewAdditionalEdgeInsetsWhenVisible:{objc_msgSend(configuration3, "showSecondaryToolbar")}];
  v54 = v31;

  navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
  v33 = 0.0;
  if (([navigationController isToolbarHidden] & 1) == 0)
  {
    navigationController2 = [(PXCuratedLibraryUIViewController *)self navigationController];
    toolbar = [navigationController2 toolbar];
    [toolbar bounds];
    v33 = v36;
  }

  v37 = *v22;
  v38 = v22[1];
  v39 = v22[3];

  view = [(PXCuratedLibraryUIViewController *)self view];
  [view safeAreaInsets];
  v42 = v41;

  emptyPlaceholderStatusController = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

  if (emptyPlaceholderStatusController)
  {
    v44 = v22[2];
    v45 = v39;
    v28 = v44;
    v26 = v38;
    v24 = v37;
  }

  else
  {
    v46 = v42 - v33;
    v45 = v55;
    v44 = v54 + v46;
  }

  gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView2 setAdditionalSafeAreaInsets:{v24, v26, v28, v45}];

  gridView3 = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView3 setMinimumSafeAreaInsets:{v37, v38, v44, v39}];

  viewModel2 = [viewProvider viewModel];
  styleGuide = [viewModel2 styleGuide];
  secondaryToolbarPlacement = [styleGuide secondaryToolbarPlacement];

  footerController = [viewProvider footerController];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__PXCuratedLibraryUIViewController__updateSecondaryToolbar__block_invoke;
  v56[3] = &unk_1E7733C48;
  v57 = secondaryToolbarController;
  v58 = secondaryToolbarPlacement;
  v59 = v24;
  v60 = v26;
  v61 = v28;
  v62 = v45;
  v53 = secondaryToolbarController;
  [footerController performChanges:v56];
}

- (void)_updateSecondaryToolbarLegibilityGradient
{
  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    configuration = [viewModel configuration];
    secondaryToolbarStyle = [configuration secondaryToolbarStyle];

    if (secondaryToolbarStyle)
    {
      v7 = [(PXCuratedLibraryUIViewController *)self isCollapsed]^ 1;
    }

    else
    {
      v7 = 0;
    }

    secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
    [secondaryToolbarController setLegibilityGradientEnabled:v7];
  }
}

- (void)_updateSecondaryToolbarStyle
{
  secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  if (secondaryToolbarController)
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];

    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViewStyles];
    [viewModel secondaryToolbarVisibility];
    v7 = v6;
    contentView = [secondaryToolbarController contentView];

    v9 = 0.0;
    if (contentView && [(PXCuratedLibraryUIViewController *)self canShowSecondaryToolbar])
    {
      if (v7 >= 0.0001)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0.0001;
      }
    }

    [secondaryToolbarController setAlpha:v9];
    PXFloatApproximatelyEqualToFloat();
  }
}

- (void)_updateSecondaryToolbarAccessoryViewStyles
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  v4 = +[PXCuratedLibraryFilterToggleButtonController foregroundColorOverLegibilityGradient:](PXCuratedLibraryFilterToggleButtonController, "foregroundColorOverLegibilityGradient:", [viewModel secondaryToolbarLegibilityGradientIsVisible]);
  [(PXPhotosCloseButtonController *)self->_closeButtonController setForegroundColor:v4];
}

- (void)_updateSecondaryToolbarAccessoryViews
{
  if (-[PXCuratedLibraryUIViewController didAppearInitially](self, "didAppearInitially") || (-[PXCuratedLibraryUIViewController viewProvider](self, "viewProvider"), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewModel], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "configuration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isExpandedInitially"), v5, v4, v3, v6))
  {
    configuration = [(PXCuratedLibraryUIViewController *)self configuration];
    secondaryToolbarStyle = [configuration secondaryToolbarStyle];

    if (secondaryToolbarStyle == 1)
    {
      filterButtonController = [(PXCuratedLibraryUIViewController *)self filterButtonController];
      button = [filterButtonController button];

      closeButtonController = [(PXCuratedLibraryUIViewController *)self closeButtonController];
      button2 = [closeButtonController button];
    }

    else
    {
      button = 0;
      button2 = 0;
    }

    secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
    [secondaryToolbarController setLeadingAccessoryView:button];
    [secondaryToolbarController setTrailingAccessoryView:button2];
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViewStyles];
  }
}

- (void)_updateAllowDisplayCompositing
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];
  isFullyExpanded = [viewModel isFullyExpanded];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView setDisableMetalViewDisplayCompositing:isFullyExpanded ^ 1u];
}

- (PXCuratedLibraryViewUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

void __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) splitBehavior] == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) isSidebarVisible] ^ 1;
  }

  [v4 setSidebarCanBecomeVisible:v3];
}

- (void)px_willTransitionBars
{
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView setShouldWorkaround18475431:1];
}

- (void)px_didTransitionBars
{
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView setShouldWorkaround18475431:0];
}

- (void)_updateDrawerButtonVisibility
{
  if ((MEMORY[0x1A590D320](self, a2) & 1) == 0)
  {
    px_splitViewController = [(UIViewController *)self px_splitViewController];
    if (px_splitViewController)
    {
      v18 = px_splitViewController;
      navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
      topViewController = [navigationController topViewController];
      view = [topViewController view];

      isSidebarVisible = [v18 isSidebarVisible];
      viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
      viewModel = [viewProvider viewModel];
      wantsNavigationBarVisible = [viewModel wantsNavigationBarVisible];

      viewModel2 = [viewProvider viewModel];
      shouldShowEmptyPlaceholder = [viewModel2 shouldShowEmptyPlaceholder];

      window = [view window];
      if (window)
      {
        view2 = [(PXCuratedLibraryUIViewController *)self view];
        v15 = (view == view2) & (isSidebarVisible ^ 1) & wantsNavigationBarVisible & (shouldShowEmptyPlaceholder ^ 1u);
      }

      else
      {
        v15 = 0;
      }

      if ([v18 displayModeButtonVisibility] != v15)
      {
        [v18 setDisplayModeButtonVisibility:v15];
        navigationController2 = [(PXCuratedLibraryUIViewController *)self navigationController];
        navigationBar = [navigationController2 navigationBar];
        [navigationBar setNeedsLayout];
      }

      px_splitViewController = v18;
    }
  }
}

- (BOOL)pu_shouldOptOutFromChromelessBars
{
  navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  scrollEdgeAppearance = [navigationBar scrollEdgeAppearance];
  v5 = scrollEdgeAppearance != 0;

  return v5;
}

- (UIEdgeInsets)minimumContentOverlayInsets
{
  top = self->_minimumContentOverlayInsets.top;
  left = self->_minimumContentOverlayInsets.left;
  bottom = self->_minimumContentOverlayInsets.bottom;
  right = self->_minimumContentOverlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 viewLayoutMarginsDidChange];
  secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  [secondaryToolbarController updateIfNeeded];
}

- (void)_handleScrolledAtBottom
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  if ([viewModel zoomLevel] == 4)
  {
    v4 = +[PXCuratedLibrarySettings sharedInstance];
    enableTabBarAccessoryControls = [v4 enableTabBarAccessoryControls];

    if (!enableTabBarAccessoryControls)
    {
      return;
    }

    viewProvider = [(PXCuratedLibraryUIViewController *)self tabBar];
    [viewProvider _setMinimized:0];
  }

  else
  {
  }
}

- (UITabBar)tabBar
{
  tabBarController = [(PXCuratedLibraryUIViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];

  return tabBar;
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 viewWillLayoutSubviews];
  view = [(PXCuratedLibraryUIViewController *)self view];
  [view bounds];

  [(PXCuratedLibraryUIViewController *)self legibilityClipInsets];
  PXEdgeInsetsInsetRect();
}

- (UIEdgeInsets)legibilityClipInsets
{
  top = self->_legibilityClipInsets.top;
  left = self->_legibilityClipInsets.left;
  bottom = self->_legibilityClipInsets.bottom;
  right = self->_legibilityClipInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateSecondaryToolbarTabBarAccessoryPlacement
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  enableTabBarAccessoryControls = [v3 enableTabBarAccessoryControls];

  if (enableTabBarAccessoryControls)
  {
    tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
    v6 = tabBar;
    if (tabBar)
    {
      v14 = tabBar;
      _isMinimized = [tabBar _isMinimized];
      v6 = v14;
      if (_isMinimized)
      {
        [v14 _frameForHostedAccessoryView];
        v12 = [[off_1E7721530 alloc] initWithRect:v14 inCoordinateSpace:{v8, v9, v10, v11}];
        secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
        [secondaryToolbarController setTabBarAccessoryPlacement:v12];

        [v14 frame];
        [(PXCuratedLibraryUIViewController *)self setLastUsedTabBarFrame:?];
        v6 = v14;
      }
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 viewDidLayoutSubviews];
  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [filterTipController didLayoutAnchorView];

  [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility];
  [(PXCuratedLibraryUIViewController *)self _updateBannerView];
  [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
}

- (void)_invalidateBannerView
{
  [(PXCuratedLibraryUIViewController *)self _resetBannerView];

  [(PXCuratedLibraryUIViewController *)self _updateBannerView];
}

- (void)_updateBannerView
{
  navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  view = [topViewController view];

  cloudQuotaHelper = [(PXCuratedLibraryUIViewController *)self cloudQuotaHelper];
  if ([cloudQuotaHelper hasAnyInformationViews] && (objc_msgSend(view, "window"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    view2 = [(PXCuratedLibraryUIViewController *)self view];

    if (view == view2)
    {
      if (self->_bannerView)
      {
        goto LABEL_14;
      }

      cloudQuotaHelper2 = [(PXCuratedLibraryUIViewController *)self cloudQuotaHelper];
      premiumInformationView = [cloudQuotaHelper2 premiumInformationView];
      v11 = premiumInformationView;
      if (premiumInformationView)
      {
        informationView = premiumInformationView;
      }

      else
      {
        informationView = [cloudQuotaHelper2 informationView];
      }

      v20 = informationView;

      [v20 setAutoresizingMask:18];
      v29 = [[PXCuratedLibraryNavigationBarPalette alloc] initWithArrangedSubview:v20 isNotification:1];
      bannerView = self->_bannerView;
      self->_bannerView = &v29->super.super;

      v31 = self->_bannerView;
      navigationItem = [(PXCuratedLibraryUIViewController *)self navigationItem];
      [navigationItem _setBottomPalette:v31];

      navigationItem2 = [(PXCuratedLibraryUIViewController *)self navigationItem];
      _bottomPalette = [navigationItem2 _bottomPalette];
      v27 = _bottomPalette;
      v28 = 120.0;
      goto LABEL_21;
    }
  }

  else
  {
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  cloudQuotaHelper2 = [viewModel bannerViewConfiguration];

  if (!cloudQuotaHelper2 || ([view window], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, -[PXCuratedLibraryUIViewController view](self, "view"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, view != v17))
  {
    superview = [(_UINavigationBarPalette *)self->_bannerView superview];

    if (superview)
    {
      [(PXCuratedLibraryUIViewController *)self _resetBannerView];
    }

    goto LABEL_13;
  }

  if (!self->_bannerView)
  {
    v19 = PXLemonadeViewFactory();
    v20 = [v19 sharedLibraryBannerViewForConfiguration:cloudQuotaHelper2 delegate:self];

    v21 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v20];
    v22 = self->_bannerView;
    self->_bannerView = v21;

    v23 = self->_bannerView;
    navigationItem3 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    [navigationItem3 _setBottomPalette:v23];

    navigationItem2 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    _bottomPalette = [navigationItem2 _bottomPalette];
    v27 = _bottomPalette;
    v28 = 80.0;
LABEL_21:
    [_bottomPalette setPreferredHeight:v28];

    [(_UINavigationBarPalette *)self->_bannerView layoutIfNeeded];
  }

LABEL_13:

LABEL_14:
}

- (PXCuratedLibrarySkimmingController)skimmingController
{
  if (!self->_skimmingController)
  {
    v3 = +[PXCuratedLibrarySettings sharedInstance];
    enableSkimmingInYears = [v3 enableSkimmingInYears];

    if (enableSkimmingInYears)
    {
      v5 = [PXCuratedLibraryAssetCollectionSkimmingModel alloc];
      viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
      viewModel = [viewProvider viewModel];
      v8 = [(PXCuratedLibraryAssetCollectionSkimmingModel *)v5 initWithViewModel:viewModel];

      v9 = [[PXCuratedLibrarySkimmingController alloc] initWithSkimmingModel:v8];
      skimmingController = self->_skimmingController;
      self->_skimmingController = v9;

      [(PXCuratedLibrarySkimmingController *)self->_skimmingController setDelegate:self];
      [(PXCuratedLibraryUIViewController *)self _updateSkimmingSlideshowEnabled];
      objc_initWeak(&location, self);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = *MEMORY[0x1E69DDA58];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke;
      v24[3] = &unk_1E7747200;
      objc_copyWeak(&v25, &location);
      v13 = [defaultCenter addObserverForName:v12 object:0 queue:0 usingBlock:v24];
      v14 = *MEMORY[0x1E69DD960];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_2;
      v22[3] = &unk_1E7747200;
      objc_copyWeak(&v23, &location);
      v15 = [defaultCenter addObserverForName:v14 object:0 queue:0 usingBlock:v22];
      v16 = *MEMORY[0x1E69DD918];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_3;
      v20[3] = &unk_1E7747200;
      objc_copyWeak(&v21, &location);
      v17 = [defaultCenter addObserverForName:v16 object:0 queue:0 usingBlock:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);

      objc_destroyWeak(&location);
    }
  }

  v18 = self->_skimmingController;

  return v18;
}

- (void)_updateSkimmingSlideshowEnabled
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  enableSlideshowInYears = [v3 enableSlideshowInYears];

  if (enableSlideshowInYears)
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    specManager = [viewModel specManager];
    spec = [specManager spec];
    allowsSlideshowInYears = [spec allowsSlideshowInYears];

    if (allowsSlideshowInYears)
    {
      viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      layout = [viewProvider2 layout];
      enableSlideshowInYears = ([layout presentedZoomLevel] != 1 || (objc_msgSend(layout, "libraryBodyLayout"), v12 = ;
    }

    else
    {
      enableSlideshowInYears = 0;
    }
  }

  skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [skimmingController setSkimmingSlideshowEnabled:enableSlideshowInYears];
}

- (void)_configureTabBarCollapsedStateObservation
{
  v4 = +[PXCuratedLibrarySettings sharedInstance];
  enableTabBarAccessoryControls = [v4 enableTabBarAccessoryControls];

  if (enableTabBarAccessoryControls)
  {
    [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
    objc_initWeak(&location, self);
    tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
    _minimizedStateDidChangeHandler = [tabBar _minimizedStateDidChangeHandler];

    if (_minimizedStateDidChangeHandler)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1153 description:{@"Invalid parameter not satisfying: %@", @"self.tabBar._minimizedStateDidChangeHandler == nil"}];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PXCuratedLibraryUIViewController__configureTabBarCollapsedStateObservation__block_invoke;
    v10[3] = &unk_1E7747EB0;
    objc_copyWeak(&v11, &location);
    tabBar2 = [(PXCuratedLibraryUIViewController *)self tabBar];
    [tabBar2 _setMinimizedStateDidChangeHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_updateCanShowSecondaryToolbar
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  styleGuide = [viewModel styleGuide];
  secondaryToolbarPlacement = [styleGuide secondaryToolbarPlacement];

  if (secondaryToolbarPlacement == 3)
  {
    tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
    _isMinimized = [tabBar _isMinimized];
  }

  else
  {
    _isMinimized = secondaryToolbarPlacement != 0;
  }

  v9 = +[PXApplicationState sharedState];
  isHidden = [v9 isHidden];

  [(PXCuratedLibraryUIViewController *)self _setCanShowSecondaryToolbar:_isMinimized animated:isHidden ^ 1u];
}

- (PXCuratedLibraryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)lastUsedTabBarFrame
{
  x = self->_lastUsedTabBarFrame.origin.x;
  y = self->_lastUsedTabBarFrame.origin.y;
  width = self->_lastUsedTabBarFrame.size.width;
  height = self->_lastUsedTabBarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)trackedScrollContext
{
  p_trackedScrollContext = &self->_trackedScrollContext;
  zoomLevel = self->_trackedScrollContext.zoomLevel;
  scrollRegime = p_trackedScrollContext->scrollRegime;
  result.var1 = scrollRegime;
  result.var0 = zoomLevel;
  return result;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->axNextResponder);

  return WeakRetained;
}

- (void)preparePresentationEnvironmentForBannerView:(id)view actionIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [off_1E7721960 defaultPresenterWithViewController:self];
  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  if ([filterTipController isPresentingTipView])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __115__PXCuratedLibraryUIViewController_preparePresentationEnvironmentForBannerView_actionIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_1E774C2F0;
    v11 = handlerCopy;
    v10 = v7;
    [filterTipController dismissTipViewWithCompletion:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v7, 0);
  }
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  boopableItemsProvider = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];

  if (!boopableItemsProvider)
  {
    v4 = objc_alloc_init(PXBoopableItemsProvider);
    [(PXCuratedLibraryUIViewController *)self setBoopableItemsProvider:v4];

    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    selectionManager = [viewModel selectionManager];
    boopableItemsProvider2 = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
    [boopableItemsProvider2 setSelectionManager:selectionManager];

    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    mediaProvider = [viewProvider2 mediaProvider];
    boopableItemsProvider3 = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
    [boopableItemsProvider3 setImagePreviewMediaProvider:mediaProvider];
  }

  return [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
}

- (PXSelectionContainer)selectionContainer
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  undoManager = [(PXCuratedLibraryUIViewController *)self undoManager];
  v5 = [viewProvider selectionContainerWithUndoManager:undoManager];

  return v5;
}

- (void)splitViewController:(id)controller didChangeSidebarVisibility:(BOOL)visibility
{
  [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility:controller];
  if (MEMORY[0x1A590D320]([(PXCuratedLibraryUIViewController *)self _invalidateBannerView]))
  {
    barsController = [(PXCuratedLibraryUIViewController *)self barsController];
    [barsController invalidateBars];

    barsController2 = [(PXCuratedLibraryUIViewController *)self barsController];
    [barsController2 updateIfNeeded];
  }
}

- (void)splitViewController:(id)controller willChangeSidebarVisibility:(BOOL)visibility
{
  controllerCopy = controller;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PXCuratedLibraryUIViewController_splitViewController_willChangeSidebarVisibility___block_invoke;
  v10[3] = &unk_1E7733ED8;
  v11 = controllerCopy;
  visibilityCopy = visibility;
  v9 = controllerCopy;
  [viewModel performChanges:v10];
}

void __84__PXCuratedLibraryUIViewController_splitViewController_willChangeSidebarVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 splitBehavior] == 2 || *(a1 + 40) == 0;
  [v5 setSidebarCanBecomeVisible:v4];
}

- (id)_assetCollectionReferenceForGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [groupCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4125 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"axGroup", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4125 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"axGroup", v10}];
  }

LABEL_3:
  [groupCopy axRootParent];
  axGroupSource = [objc_claimAutoreleasedReturnValue() axGroupSource];
  axParent = [groupCopy axParent];
  [groupCopy axFrame];
  if (axParent)
  {
    [axGroupSource axConvertRect:axParent fromDescendantGroup:?];
  }

  PXRectGetCenter();
}

void __70__PXCuratedLibraryUIViewController__assetCollectionReferenceForGroup___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 assetCollectionReference];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

- (void)_handleShowDefaultUIForGroup:(id)group
{
  v4 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:group];
  if (v4)
  {
    v6 = v4;
    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [skimmingController endPanning];

    v4 = v6;
  }
}

- (void)_handleShowAlternateUIForGroup:(id)group
{
  v4 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:group];
  if (v4)
  {
    v6 = v4;
    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [skimmingController startPanningForAssetCollectionReference:v6];

    v4 = v6;
  }
}

- (void)_handleScrollToRevealInfo:(id)info inGroup:(id)group
{
  infoCopy = info;
  v6 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:group];
  if (v6)
  {
    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [infoCopy axFrame];
    v9 = v8;
    v10 = -15.0;
    if (v9 < 0.0 || (v10 = 15.0, v9 > 0.0))
    {
      [skimmingController updatePanningWithTranslation:{v10, 0.0}];
    }
  }
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  PXGAXGetElementForUserInfo();
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXCuratedLibraryUIViewController *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  groupCopy = group;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4065 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)didDismissTipForController:(id)controller
{
  _buttonForEllipsisButtonAction = [(PXCuratedLibraryUIViewController *)self _buttonForEllipsisButtonAction];
  [_buttonForEllipsisButtonAction setShowsMenuAsPrimaryAction:1];
}

- (void)willPresentTipForController:(id)controller
{
  _buttonForEllipsisButtonAction = [(PXCuratedLibraryUIViewController *)self _buttonForEllipsisButtonAction];
  [_buttonForEllipsisButtonAction setShowsMenuAsPrimaryAction:0];
}

- (id)passthroughViewsForTipForController:(id)controller
{
  navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  navigationController2 = [(PXCuratedLibraryUIViewController *)self navigationController];
  toolbar = [navigationController2 toolbar];

  view = [(PXCuratedLibraryUIViewController *)self view];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v12 = v11;
  if (tabBar)
  {
    [v11 addObject:tabBar];
  }

  if (navigationBar)
  {
    [v12 addObject:navigationBar];
  }

  if (toolbar)
  {
    [v12 addObject:toolbar];
  }

  if (view)
  {
    [v12 addObject:view];
  }

  if (gridView)
  {
    [v12 addObject:gridView];
  }

  return v12;
}

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [(PXCuratedLibraryUIViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)ppt_dismiss
{
  selfCopy = self;
  delegate = [(PXCuratedLibraryUIViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate curatedLibraryViewControllerDismiss:selfCopy];

  return selfCopy;
}

- (void)ppt_navigateToAsset:(id)asset inAssetContainer:(id)container revealInOneUp:(BOOL)up completionHandler:(id)handler
{
  if (up)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  handlerCopy = handler;
  containerCopy = container;
  assetCopy = asset;
  v13 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:v9 asset:assetCopy assetCollection:containerCopy];

  [(PXCuratedLibraryUIViewController *)self navigateToDestination:v13 options:2 completionHandler:handlerCopy];
}

- (void)px_navigateToStateAllowingTabSwitchingWithOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  [viewModel performChanges:&__block_literal_global_718];

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)_rescheduleNavigationRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    v5 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = requestCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Impossible to reschedule the programmatic navigation %@ because the view has already been loaded", &v7, 0xCu);
    }

    completionHandler = [requestCopy completionHandler];
    completionHandler[2](completionHandler, 2, 0);
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self setInitialNavigationRequest:requestCopy];
  }
}

- (void)_handleNavigationRequestConditionCompletionForNavigationRequest:(id)request withAssetReference:(id)reference
{
  requestCopy = request;
  referenceCopy = reference;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    [viewProvider prepareForNavigationToObjectReference:referenceCopy];

    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke;
    v10[3] = &unk_1E774AEC0;
    v11 = requestCopy;
    v12 = referenceCopy;
    selfCopy = self;
    [viewProvider2 scrollLibraryViewToAssetReference:v12 scrollPosition:64 completionHandler:v10];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:requestCopy];
  }
}

void __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 destination];
  v8 = [v7 revealMode];

  if (v8 == 1 && *(a1 + 40))
  {
    v9 = [*(a1 + 32) destination];
    v10 = [v9 wantsEditMode];

    v11 = [*(a1 + 32) destination];
    v12 = [v11 completionKey];

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke_2;
    v20[3] = &unk_1E7733EB0;
    v15 = *(a1 + 32);
    v22 = v12;
    v23 = v10;
    v21 = v15;
    v16 = v12;
    [v13 _presentOneUpForAssetReference:v14 configurationHandler:v20];
  }

  v17 = [*(a1 + 32) completionHandler];
  v18 = v17;
  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  (*(v17 + 16))(v17, v19, v6);
}

void __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAnimated:{(objc_msgSend(*(a1 + 32), "options") >> 1) & 1}];
  [v3 setActivity:*(a1 + 48)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke_3;
  v7[3] = &unk_1E774C648;
  v8 = *(a1 + 40);
  [v3 setActivityCompletion:v7];
  v4 = [*(a1 + 32) destination];
  if ([v4 type] == 19)
  {
    v5 = [*(a1 + 32) destination];
    v6 = [v5 source];
    [v3 setIsNavigationSourceWidget:{objc_msgSend(v6, "isEqualToString:", @"widget"}];
  }

  else
  {
    [v3 setIsNavigationSourceWidget:0];
  }
}

void *__119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = [result UTF8String];

    return notify_post(v2);
  }

  return result;
}

- (void)_navigateToRevealAssetForNavigationRequest:(id)request
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  if (assetsDataSourceManager)
  {
    if ([viewModel zoomLevel] != 4)
    {
      [viewModel performChanges:&__block_literal_global_714];
      [assetsDataSourceManager forceAllPhotosAccurateIfNeeded];
      layout = [viewProvider layout];
      [layout updateIfNeeded];
    }

    destination = [requestCopy destination];
    asset = [destination asset];

    if (asset)
    {
      v12 = [off_1E7721490 alloc];
      v13 = *(off_1E7722228 + 1);
      v30 = *off_1E7722228;
      v31 = v13;
      v14 = [v12 initWithSectionObject:0 itemObject:asset subitemObject:0 indexPath:&v30];
    }

    else
    {
      v15 = [assetsDataSourceManager dataSourceForZoomLevel:4];
      v16 = v15;
      v30 = 0u;
      v31 = 0u;
      if (v15)
      {
        [v15 lastItemIndexPath];
        v17 = v30;
      }

      else
      {
        v17 = 0;
      }

      if (v17 == *off_1E7721F68)
      {
        PXAssertGetLog();
      }

      *location = v30;
      v35 = v31;
      v14 = [v16 assetReferenceAtItemIndexPath:location];
    }

    objc_initWeak(location, self);
    *&v30 = 0;
    *(&v30 + 1) = &v30;
    *&v31 = 0x3032000000;
    *(&v31 + 1) = __Block_byref_object_copy__62105;
    v32 = __Block_byref_object_dispose__62106;
    v33 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__PXCuratedLibraryUIViewController__navigateToRevealAssetForNavigationRequest___block_invoke_715;
    v25[3] = &unk_1E7733E60;
    v26 = v14;
    v18 = assetsDataSourceManager;
    v28 = &v30;
    v29 = 4;
    v27 = v18;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__PXCuratedLibraryUIViewController__navigateToRevealAssetForNavigationRequest___block_invoke_2;
    v20[3] = &unk_1E7733E88;
    v24[1] = a2;
    v20[4] = self;
    v19 = v26;
    v21 = v19;
    v22 = requestCopy;
    objc_copyWeak(v24, location);
    v23 = &v30;
    [v18 waitForCondition:v25 timeout:v20 completionHandler:1.0];
    objc_destroyWeak(v24);

    _Block_object_dispose(&v30, 8);
    objc_destroyWeak(location);
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:requestCopy];
  }
}

BOOL __79__PXCuratedLibraryUIViewController__navigateToRevealAssetForNavigationRequest___block_invoke_715(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && ([*(a1 + 40) dataSourceForZoomLevel:*(a1 + 56)], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v3))
  {
    v6 = [v3 assetReferenceForAssetReference:*(a1 + 32)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __79__PXCuratedLibraryUIViewController__navigateToRevealAssetForNavigationRequest___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleNavigationRequestConditionCompletionForNavigationRequest:*(a1 + 48) withAssetReference:*(*(*(a1 + 56) + 8) + 40)];
}

- (void)_navigateToInitialScrollPositionForNavigationRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__PXCuratedLibraryUIViewController__navigateToInitialScrollPositionForNavigationRequest___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
  [(PXCuratedLibraryUIViewController *)self _navigateToZoomLevelForNavigationRequest:v5 successHandler:v6];
}

void __89__PXCuratedLibraryUIViewController__navigateToInitialScrollPositionForNavigationRequest___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __89__PXCuratedLibraryUIViewController__navigateToInitialScrollPositionForNavigationRequest___block_invoke_2;
  v2[3] = &unk_1E774C5C0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _scrollLibraryViewToInitialPositionWithCompletionHandler:v2];
}

void __89__PXCuratedLibraryUIViewController__navigateToInitialScrollPositionForNavigationRequest___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 completionHandler];
  v8 = v6;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  (*(v6 + 16))(v6, v7, v5);
}

- (void)_navigateToZoomLevelForNavigationRequest:(id)request successHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  if (![(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:requestCopy];
    goto LABEL_22;
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  zoomLevel = [viewModel zoomLevel];
  destination = [requestCopy destination];
  type = [destination type];
  if (type > 3)
  {
    if ((type - 5) < 2)
    {
      v13 = 4;
      goto LABEL_17;
    }

    if (type == 4)
    {
      v13 = 3;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      v13 = 1;
      goto LABEL_17;
    }

    if (type == 3)
    {
      v13 = 2;
LABEL_17:

      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = zoomLevel;
  if (!zoomLevel)
  {
LABEL_15:
    PXAssertGetLog();
  }

LABEL_18:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PXCuratedLibraryUIViewController__navigateToZoomLevelForNavigationRequest_successHandler___block_invoke;
  v14[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v14[4] = v13;
  [viewModel performChanges:v14];
  if (v13 == zoomLevel)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], handlerCopy);
  }

LABEL_22:
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v10 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:destinationCopy options:options completionHandler:handlerCopy];
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];
  [viewModel performChanges:&__block_literal_global_711];

  if ([destinationCopy isTargetingAsset])
  {
    [(PXCuratedLibraryUIViewController *)self _navigateToRevealAssetForNavigationRequest:v10];
    goto LABEL_16;
  }

  if ([destinationCopy type] == 14 && MEMORY[0x1A590D320]())
  {
    additionalAttributes = [destinationCopy additionalAttributes];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = additionalAttributes;

      if (v14)
      {
        searchTerms = [v14 searchTerms];
        v16 = [searchTerms count];

        if (v16)
        {
          searchTerms2 = [v14 searchTerms];
          firstObject = [searchTerms2 firstObject];
        }

        else
        {
          firstObject = [v14 searchText];
        }

        goto LABEL_15;
      }
    }

    else
    {

      v14 = 0;
    }

    firstObject = 0;
LABEL_15:
    barsController = [(PXCuratedLibraryUIViewController *)self barsController];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __84__PXCuratedLibraryUIViewController_navigateToDestination_options_completionHandler___block_invoke_2;
    v22[3] = &unk_1E774C250;
    v23 = handlerCopy;
    [barsController handleSearchActionWithSearchText:firstObject completion:v22];

    goto LABEL_16;
  }

  if ([destinationCopy revealMode] == 3)
  {
    [(PXCuratedLibraryUIViewController *)self _navigateToInitialScrollPositionForNavigationRequest:v10];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84__PXCuratedLibraryUIViewController_navigateToDestination_options_completionHandler___block_invoke_3;
    v20[3] = &unk_1E774C250;
    v21 = handlerCopy;
    [(PXCuratedLibraryUIViewController *)self _navigateToZoomLevelForNavigationRequest:v10 successHandler:v20];
  }

LABEL_16:
}

void __84__PXCuratedLibraryUIViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsSelecting:0];
  [v2 setIsNavigating:1];
  [v2 resetAllPhotosContentFilterState];
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  type = [destinationCopy type];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  zoomLevel = [viewModel zoomLevel];
  if ((type - 2) < 5)
  {

LABEL_3:
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v11 = zoomLevel;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  if ([destinationCopy isTargetingAsset] && (objc_msgSend(destinationCopy, "isTargetingAlbum") & 1) == 0)
  {
    assetCollection = [destinationCopy assetCollection];
    viewProvider = assetCollection;
    if (!assetCollection || ([assetCollection px_isAllPhotosSmartAlbum] & 1) != 0)
    {
      goto LABEL_3;
    }

    if ([viewProvider px_isSuggestion])
    {
      v13 = MEMORY[0x1A590D320]();

      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  if (MEMORY[0x1A590D320]())
  {
    v9 = [destinationCopy type] == 14;
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  return v9;
}

- (void)_createAnimationForSkimmingWithDuration:(double)duration indicatorsDidChangeVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];

  if (visibilityCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  secondSublayout = [layout secondSublayout];
  v9 = [secondSublayout createCuratedLibraryLayoutAnimationIfNeededWithContext:v7];

  [v9 setDuration:duration];
}

- (void)skimmingController:(id)controller willStartSkimmingAssetCollectionReference:(id)reference animationDuration:(double)duration
{
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider:controller];
  layout = [v7 layout];
  [layout clearLastVisibleAreaAnchoringInformation];

  [(PXCuratedLibraryUIViewController *)self _createAnimationForSkimmingWithDuration:0 indicatorsDidChangeVisibility:duration];
}

- (id)_dominantAssetCollectionReferenceForSkimming
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  libraryBodyLayout = [layout libraryBodyLayout];
  dominantSectionLayout = [libraryBodyLayout dominantSectionLayout];

  zoomLevel = [dominantSectionLayout zoomLevel];
  viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider2 viewModel];
  if (zoomLevel == [viewModel zoomLevel])
  {
    assetCollectionReference = [dominantSectionLayout assetCollectionReference];
  }

  else
  {
    assetCollectionReference = 0;
  }

  return assetCollectionReference;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  v51.receiver = self;
  v51.super_class = PXCuratedLibraryUIViewController;
  v8 = [(UIViewController *)&v51 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  v11 = objc_alloc_init(PXDiagnosticsItemProvider);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__62105;
  v49 = __Block_byref_object_dispose__62106;
  v50 = 0;
  [gridView convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
  v44[3] = &unk_1E7733D08;
  v44[4] = &v45;
  [gridView enumerateCuratedLibraryHitTestResultsAtPoint:v44 usingBlock:?];
  assetCollectionReference = [v46[5] assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = assetCollection;

    if (!v14)
    {
      goto LABEL_7;
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_2;
    v42[3] = &unk_1E774BB70;
    v15 = v14;
    v43 = v15;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection" loadHandler:v42];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_3;
    v40[3] = &unk_1E774BB70;
    v14 = v15;
    v41 = v14;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierHighlight" loadHandler:v40];
    diagnosticDescription = [gridView diagnosticDescription];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_4;
    v38[3] = &unk_1E774BB70;
    v17 = diagnosticDescription;
    v39 = v17;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierViewDescription" loadHandler:v38];
    layout = [v46[5] layout];
    diagnosticDescription2 = [layout diagnosticDescription];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_5;
    v36[3] = &unk_1E774BB70;
    v20 = diagnosticDescription2;
    v37 = v20;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierLayoutDescription" loadHandler:v36];

    assetCollection = v43;
  }

  else
  {
    v14 = 0;
  }

LABEL_7:
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__62105;
  v34 = __Block_byref_object_dispose__62106;
  v35 = 0;
  [gridView convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_6;
  v29[3] = &unk_1E7733D08;
  v29[4] = &v30;
  [gridView enumerateCuratedLibraryHitTestResultsAtPoint:v29 usingBlock:?];
  assetReference = [v31[5] assetReference];
  asset = [assetReference asset];

  if (asset)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_7;
    v27[3] = &unk_1E774BB70;
    v28 = asset;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset" loadHandler:v27];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_8;
  v26[3] = &unk_1E774BB70;
  v26[4] = self;
  [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierViewController" loadHandler:v26];
  registeredIdentifiers = [(PXDiagnosticsItemProvider *)v11 registeredIdentifiers];
  v24 = [registeredIdentifiers count];

  if (v24)
  {
    [v9 addObject:v11];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v45, 8);

  return v9;
}

void __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 assetCollectionReference];
  v7 = [v6 assetCollection];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_6(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 assetReference];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_createPreviewViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (referenceCopy)
  {
    v29 = 0;
    v8 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:referenceCopy image:&v29];
    v9 = v29;
    gridView = [(PXCuratedLibraryUIViewController *)self gridView];
    scrollViewController = [gridView scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
    [v8 rectInCoordinateSpace:contentCoordinateSpace];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v16, v18, v20}];
    v22 = 0.0;
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    [v21 setBackgroundColor:v23];

    if ((zoomLevel - 1) < 2)
    {
      v22 = 10.0;
    }

    layer = [v21 layer];
    [layer setCornerRadius:v22];

    v25 = *MEMORY[0x1E69796E8];
    layer2 = [v21 layer];
    [layer2 setCornerCurve:v25];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v21 = 0;
  }

  v27 = v21;

  return v21;
}

- (id)_createPreviewViewForHitTestResult:(id)result
{
  resultCopy = result;
  if (([resultCopy control] - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    if ([resultCopy control] == 1)
    {
      assetReference = [resultCopy assetReference];
    }

    else
    {
      assetReference = [resultCopy assetCollectionReference];

      if (assetReference)
      {
        assetCollectionReference = [resultCopy assetCollectionReference];
        assetReference = [assetCollectionReference keyAssetReference];
      }
    }

    v6 = [(PXCuratedLibraryUIViewController *)self _createPreviewViewForAssetReference:assetReference];
  }

  return v6;
}

- (id)_bestHitTestResultForCursorAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__62105;
  v13 = __Block_byref_object_dispose__62106;
  v14 = 0;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PXCuratedLibraryUIViewController__bestHitTestResultForCursorAtLocation___block_invoke;
  v8[3] = &unk_1E7733D08;
  v8[4] = &v9;
  [gridView enumerateCuratedLibraryHitTestResultsAtPoint:v8 usingBlock:{x, y}];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __74__PXCuratedLibraryUIViewController__bestHitTestResultForCursorAtLocation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 control] - 1) <= 2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)pointerController:(id)controller didExitRegionWithRect:(CGRect)rect inCoordinateSpace:(id)space
{
  v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded:controller];
  viewModel = [v7 viewModel];
  selectionManager = [viewModel selectionManager];

  [selectionManager performChanges:&__block_literal_global_704_62134];
}

uint64_t __94__PXCuratedLibraryUIViewController_pointerController_didExitRegionWithRect_inCoordinateSpace___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(off_1E7722228 + 1);
  v4[0] = *off_1E7722228;
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

uint64_t __96__PXCuratedLibraryUIViewController_pointerController_willEnterRegionWithRect_inCoordinateSpace___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (int64_t)pointerController:(id)controller interactionOptionsForRegionAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded:controller];
  viewModel = [v5 viewModel];

  zoomLevel = [viewModel zoomLevel];
  v8 = +[PXCursorInteractionSettings sharedInstance];
  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  v10 = [v8 interactionOptionsForZoomLevel:zoomLevel isAllPhotosAspectFit:{objc_msgSend(zoomablePhotosViewModel, "aspectFit")}];

  return v10;
}

- (id)pointerController:(id)controller viewForCursorInteractionAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  v12 = [spaceCopy isEqual:contentCoordinateSpace];

  if (v12)
  {
    gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
    [spaceCopy convertPoint:gridView2 toCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(PXCuratedLibraryUIViewController *)self _bestHitTestResultForCursorAtLocation:v15, v17];
    if (v18)
    {
      v19 = [(PXCuratedLibraryUIViewController *)self _createPreviewViewForHitTestResult:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)pointerController:(id)controller identifierForRegionAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  v12 = [spaceCopy isEqual:contentCoordinateSpace];

  if (v12)
  {
    gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
    [spaceCopy convertPoint:gridView2 toCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(PXCuratedLibraryUIViewController *)self _bestHitTestResultForCursorAtLocation:v15, v17];
    control = [v18 control];
    if ((control - 2) >= 2)
    {
      if (control == 1)
      {
        assetReference = [v18 assetReference];
        asset = [assetReference asset];
        uuid = [asset uuid];
      }

      else
      {
        uuid = 0;
      }
    }

    else
    {
      uuid = [v18 assetCollectionReference];
    }
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (BOOL)_shouldExposeCursorAnimations
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  zoomLevel = [viewModel zoomLevel];
  v9 = 0u;
  v10 = 0u;
  if (zoomablePhotosViewModel)
  {
    [zoomablePhotosViewModel zoomState];
  }

  isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];
  v7 = 0;
  if (![viewModel zoomLevelTransitionPhase] && zoomLevel != 3)
  {
    v7 = zoomLevel != 4;
    if (zoomLevel == 4 && ((isDisplayingIndividualItems ^ 1) & 1) == 0)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)pointerController:(id)controller regionOfInterestForCursorAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  v12 = [spaceCopy isEqual:contentCoordinateSpace];

  if (v12 && [(PXCuratedLibraryUIViewController *)self _shouldExposeCursorAnimations])
  {
    gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
    [spaceCopy convertPoint:gridView2 toCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(PXCuratedLibraryUIViewController *)self _bestHitTestResultForCursorAtLocation:v15, v17];
    if (([v18 control] - 1) > 2)
    {
      v21 = 0;
    }

    else
    {
      gridView3 = [(PXCuratedLibraryUIViewController *)self gridView];
      spriteReference = [v18 spriteReference];
      v21 = [gridView3 regionOfInterestForSpriteReference:spriteReference];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)dragController:(id)controller shouldResizeCancelledPreviewForAssetReference:(id)reference
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:controller];
  layout = [v4 layout];
  hiddenSpriteIndexes = [layout hiddenSpriteIndexes];
  v7 = [hiddenSpriteIndexes count] == 0;

  return v7;
}

- (BOOL)dragController:(id)controller shouldSelectRearrangedAssetReferences:(id)references
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:controller];
  viewModel = [v4 viewModel];
  isSelecting = [viewModel isSelecting];

  return isSelecting;
}

- (void)dragController:(id)controller draggedAssetReferencesDidChange:(id)change
{
  changeCopy = change;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  draggedAssetReferences = [viewModel draggedAssetReferences];
  v9 = [draggedAssetReferences count];
  v10 = [changeCopy count];

  if (v9 > v10)
  {
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    layout = [viewProvider2 layout];
    v13 = [layout createFenceWithType:2];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PXCuratedLibraryUIViewController_dragController_draggedAssetReferencesDidChange___block_invoke;
  v15[3] = &unk_1E7748B68;
  v16 = changeCopy;
  v14 = changeCopy;
  [viewModel performChanges:v15];
}

- (void)dragController:(id)controller isDragSessionActiveDidChange:(BOOL)change
{
  changeCopy = change;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  videoPlaybackController = [viewProvider videoPlaybackController];
  [videoPlaybackController setIsDragSessionActive:changeCopy];
}

- (id)dragControllerAssetReferenceForBeginningSession:(id)session
{
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  if ([px_oneUpPresentation isContextMenuInteractionActive])
  {
    navigatedAssetReference = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
  }

  else
  {
    navigatedAssetReference = 0;
  }

  return navigatedAssetReference;
}

- (id)dragController:(id)controller draggableAssetReferenceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62105;
  v16 = __Block_byref_object_dispose__62106;
  v17 = 0;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PXCuratedLibraryUIViewController_dragController_draggableAssetReferenceAtLocation___block_invoke;
  v11[3] = &unk_1E7733D08;
  v11[4] = &v12;
  [gridView enumerateCuratedLibraryHitTestResultsAtPoint:v11 usingBlock:{x, y}];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __85__PXCuratedLibraryUIViewController_dragController_draggableAssetReferenceAtLocation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 control];
  if ((v5 - 7) < 9)
  {
    v6 = 0;
LABEL_3:
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a3 = 1;
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = [v9 assetReference];
    goto LABEL_3;
  }

LABEL_4:
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  navigatedAssetReference = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
  if (!navigatedAssetReference)
  {
    PXAssertGetLog();
  }

  if ([viewModel isSelecting] && (objc_msgSend(selectionSnapshot, "isAnyItemSelected") & 1) != 0)
  {
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    [navigatedAssetReference indexPath];
    v12 = [selectedIndexPaths containsIndexPath:v15];

    if (v12)
    {
      assetActionManager = [viewModel assetActionManager];
    }

    else
    {
      barsController = [(PXCuratedLibraryUIViewController *)self barsController];
      assetActionManager = [barsController createAssetActionManagerForAssetReference:navigatedAssetReference];

      [assetActionManager setObjectReference:navigatedAssetReference];
    }
  }

  else
  {
    barsController2 = [(PXCuratedLibraryUIViewController *)self barsController];
    assetActionManager = [barsController2 createAssetActionManagerForAssetReference:navigatedAssetReference];
  }

  return assetActionManager;
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  [layout hideSpritesForObjectReferences:referencesCopy];
}

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  visibleCopy = visible;
  [(PXCuratedLibraryUIViewController *)self _requestExpansionIfNeededForInteractionWithAssetReference:visibleCopy animated:0];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  [viewProvider scrollLibraryViewToAssetReference:visibleCopy scrollPosition:64 completionHandler:0];

  [(PXCuratedLibraryUIViewController *)self setNavigatedAssetReference:visibleCopy];
}

- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  if (([presentation isContextMenuInteractionActive] & 1) == 0)
  {
    asset = [referenceCopy asset];
    if ([asset playbackStyle] == 3)
    {
      viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
      videoPlaybackController = [viewProvider videoPlaybackController];
      asset2 = [referenceCopy asset];
      v11 = [videoPlaybackController isPlayingDisplayAsset:asset2];

      if (v11)
      {
        v12 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v15 = 0;
  v13 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:referenceCopy image:&v15];
  v12 = v15;
LABEL_7:

  return v12;
}

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  v5 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:reference image:0];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PXCuratedLibraryUIViewController_oneUpPresentation_regionOfInterestForAssetReference___block_invoke;
  v9[3] = &unk_1E774B430;
  v10 = gridView;
  v7 = gridView;
  [v5 setPlaceholderViewFactory:v9];

  return v5;
}

uint64_t __88__PXCuratedLibraryUIViewController_oneUpPresentation_regionOfInterestForAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 rectInCoordinateSpace:v2];

  return [v2 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
}

- (BOOL)oneUpPresentation:(id)presentation commitPreviewForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(PXCuratedLibraryUIViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    navigatedAssetReference = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
    [delegate curatedLibraryViewController:self commitPreviewForContextMenuInteraction:interactionCopy withAssetReference:navigatedAssetReference];
  }

  return v7 & 1;
}

- (void)oneUpPresentation:(id)presentation willEndPreviewingForContextMenuInteraction:(id)interaction configuration:(id)configuration
{
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider:presentation];
  videoPlaybackController = [v6 videoPlaybackController];
  [videoPlaybackController setIsContextMenuInteractionActive:0];
}

- (void)oneUpPresentation:(id)presentation willStartPreviewingForContextMenuInteraction:(id)interaction
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:presentation];
  videoPlaybackController = [v5 videoPlaybackController];
  [videoPlaybackController setIsContextMenuInteractionActive:1];
}

- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {
    v6 = 0;
  }

  else
  {
    gridView = [(PXCuratedLibraryUIViewController *)self gridView];
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];

    if (isDisplayingIndividualItems)
    {
      [interactionCopy locationInView:gridView];
      v12 = [(PXCuratedLibraryUIViewController *)self _hitTestAssetReferenceAtLocation:gridView inCoordinateSpace:?];
      v6 = v12 != 0;
      if (v12)
      {
        [(PXCuratedLibraryUIViewController *)self setNavigatedAssetReference:v12];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)oneUpPresentation:(id)presentation allowsMultiSelectMenuForInteraction:(id)interaction
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:presentation];
  viewModel = [v4 viewModel];

  LOBYTE(v4) = [viewModel isSelecting];
  return v4;
}

- (id)oneUpPresentation:(id)presentation secondaryIdentifiersForConfiguration:(id)configuration
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:presentation];
  viewModel = [v5 viewModel];

  if ([viewModel isSelecting])
  {
    navigatedAssetReference = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
    if (navigatedAssetReference)
    {
      [navigatedAssetReference indexPath];
    }

    PXIndexPathFromSimpleIndexPath();
  }

  return 0;
}

void __91__PXCuratedLibraryUIViewController_oneUpPresentation_secondaryIdentifiersForConfiguration___block_invoke(uint64_t a1, int64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a2, *(a1 + 40)), vceqq_s64(a2[1], *(a1 + 56))))) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2[1].i64[0] inSection:a2->i64[1]];
    [v2 addObject:v3];
  }
}

- (id)targetedPreviewForAssetReference:(id)reference
{
  v15 = 0;
  v4 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:reference image:&v15];
  v5 = v15;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];

  scrollView = [scrollViewController scrollView];
  coordinateSpace = [scrollView coordinateSpace];
  [v4 rectInCoordinateSpace:coordinateSpace];

  if (v5)
  {
    PXPreviewImageViewForImage();
  }

  placeholderViewFactory = [v4 placeholderViewFactory];

  if (placeholderViewFactory)
  {
    placeholderViewFactory2 = [v4 placeholderViewFactory];
    v12 = (placeholderViewFactory2)[2](placeholderViewFactory2, v4);

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E69DCE38]);
      PXRectGetCenter();
    }
  }

  return 0;
}

- (id)assetReferenceForIndexPath:(id)path
{
  pathCopy = path;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  identifier = [dataSource identifier];
  section = [pathCopy section];
  item = [pathCopy item];

  v15[0] = identifier;
  v15[1] = section;
  v15[2] = item;
  v15[3] = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [dataSource objectReferenceAtIndexPath:v15];

  return v13;
}

- (id)oneUpPresentation:(id)presentation previewForDismissingToSecondaryItemWithIdentifier:(id)identifier configuration:(id)configuration
{
  v6 = [(PXCuratedLibraryUIViewController *)self assetReferenceForIndexPath:identifier];
  if (v6)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self targetedPreviewForAssetReference:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)oneUpPresentation:(id)presentation previewForHighlightingSecondaryItemWithIdentifier:(id)identifier configuration:(id)configuration
{
  v6 = [(PXCuratedLibraryUIViewController *)self assetReferenceForIndexPath:identifier];
  if (v6)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self targetedPreviewForAssetReference:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  mediaProvider = [viewProvider mediaProvider];

  return mediaProvider;
}

- (id)oneUpPresentationDataSourceManager:(id)manager
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  assetsDataSourceManager = [viewProvider assetsDataSourceManager];
  currentPhotoKitAssetsDataSourceManager = [assetsDataSourceManager currentPhotoKitAssetsDataSourceManager];

  if (!currentPhotoKitAssetsDataSourceManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3137 description:@"PhotoKit data source manager is missing"];
  }

  return currentPhotoKitAssetsDataSourceManager;
}

- (int64_t)oneUpPresentationOrigin:(id)origin
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  zoomLevel = [viewModel zoomLevel];
  if (zoomLevel == 3)
  {
    v9 = 39;
    goto LABEL_10;
  }

  if (zoomLevel != 4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  if (!zoomablePhotosViewModel)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  v7 = zoomablePhotosViewModel;
  [zoomablePhotosViewModel zoomState];
  v8 = v13;

  if ((v8 - 1) >= 5)
  {
LABEL_9:
    v9 = 43;
    goto LABEL_10;
  }

  v9 = qword_1A5381940[v8 - 1];
LABEL_10:

  return v9;
}

- (void)prepareTipPopover:(id)popover tipID:(id)d
{
  popoverCopy = popover;
  view = [(PXCuratedLibraryUIViewController *)self view];
  v9 = view;
  if (!view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3098 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    view = 0;
  }

  [popoverCopy setSourceView:view];
  [popoverCopy setPermittedArrowDirections:3];
}

- (id)sourceItemForTipID:(id)d
{
  filterButtonController = [(PXCuratedLibraryUIViewController *)self filterButtonController];
  button = [filterButtonController button];

  return button;
}

- (void)curatedLibraryActionPerformer:(id)performer contentFilterStateChanged:(id)changed
{
  changedCopy = changed;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_contentFilterStateChanged___block_invoke;
  v10[3] = &unk_1E7748B68;
  v11 = changedCopy;
  v8 = changedCopy;
  [viewModel performChanges:v10];

  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [filterTipController didChangeFilterState:v8];
}

- (void)curatedLibraryActionPerformer:(id)performer libraryFilterStateChanged:(id)changed
{
  v4 = [(PXCuratedLibraryUIViewController *)self filterTipController:performer];
  [v4 userDidChangeLibraryFilterState];
}

- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  v22[2] = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  collectionCopy = collection;
  if (collectionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage = [collectionCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3055 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAssetCollection", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3055 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAssetCollection", v18}];
  }

LABEL_3:
  moviePresenter = [(PXCuratedLibraryUIViewController *)self moviePresenter];
  if (!moviePresenter)
  {
    moviePresenter = [PXMoviePresenter moviePresenterWithPresentingViewController:self];
    [(PXCuratedLibraryUIViewController *)self setMoviePresenter:moviePresenter];
  }

  if ([moviePresenter presentMovieViewControllerForAssetCollection:collectionCopy keyAssetFetchResult:0 preferredTransitionType:1])
  {
    v10 = MEMORY[0x1E6991F28];
    v11 = *MEMORY[0x1E6991E08];
    v22[0] = collectionCopy;
    v12 = *MEMORY[0x1E6991E20];
    v21[0] = v11;
    v21[1] = v12;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v10 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionMoviePlayed" withPayload:v15];
  }
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  px_topmostPresentedViewController = [(PXCuratedLibraryUIViewController *)self px_topmostPresentedViewController];
  v10 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    selfCopy = px_topmostPresentedViewController;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  if (v12 == controllerCopy)
  {
    [(PXCuratedLibraryUIViewController *)v12 dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  return v12 == controllerCopy;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  switch(type)
  {
    case 1:
      navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
      v13 = navigationController;
      v11 = navigationController != 0;
      if (navigationController)
      {
        [navigationController pushViewController:controllerCopy animated:1];
      }

      break;
    case 2:
      v11 = [(PXCuratedLibraryUIViewController *)self _actionPerformer:performerCopy presentViewController:controllerCopy];
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3029 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      gridView = [(PXCuratedLibraryUIViewController *)self gridView];
      popoverPresentationController3 = performerCopy;
      if (popoverPresentationController3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_5:
          v11 = controllerCopy;
          popoverPresentationController = [v11 popoverPresentationController];
          [popoverPresentationController setSourceView:gridView];

          buttonSpriteReference = [popoverPresentationController3 buttonSpriteReference];
          v14 = [gridView regionOfInterestForSpriteReference:buttonSpriteReference];

          if (v14)
          {
            [v14 rectInCoordinateSpace:gridView];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v22 = v21;
            popoverPresentationController2 = [v11 popoverPresentationController];
            [popoverPresentationController2 setSourceRect:{v16, v18, v20, v22}];
          }

          LOBYTE(v24) = 1;
          [(PXCuratedLibraryUIViewController *)self presentViewController:v11 animated:1 completion:0];

          goto LABEL_36;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = objc_opt_class();
        v49 = NSStringFromClass(v50);
        px_descriptionForAssertionMessage = [popoverPresentationController3 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2957 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer", v49, px_descriptionForAssertionMessage}];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2957 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer", v49}];
      }

      goto LABEL_5;
    }
  }

  actionType = [performerCopy actionType];
  v26 = [actionType isEqualToString:@"PXCuratedLibraryActionShowFilters"];

  if (v26)
  {
    gridView = controllerCopy;
    popoverPresentationController3 = [gridView popoverPresentationController];
    LOBYTE(v24) = popoverPresentationController3 != 0;
    if (!popoverPresentationController3)
    {
LABEL_36:

      goto LABEL_37;
    }

    sharedInstance = [off_1E7721810 sharedInstance];
    enableFilterViewControllerAnchoringToSender = [sharedInstance enableFilterViewControllerAnchoringToSender];

    if (enableFilterViewControllerAnchoringToSender)
    {
      sender = [performerCopy sender];
      if (sender)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sender = sender;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v55 = objc_opt_class();
            v59 = NSStringFromClass(v55);
            px_descriptionForAssertionMessage2 = [sender px_descriptionForAssertionMessage];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2978 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v59, px_descriptionForAssertionMessage2}];
          }

          [popoverPresentationController3 setSourceView:sender];

          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sender2 = [performerCopy sender];
          if (sender2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              v57 = objc_opt_class();
              v60 = NSStringFromClass(v57);
              px_descriptionForAssertionMessage3 = [sender2 px_descriptionForAssertionMessage];
              [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2981 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"actionPerformer.sender", v60, px_descriptionForAssertionMessage3}];
            }
          }

          [popoverPresentationController3 setBarButtonItem:sender2];

          goto LABEL_35;
        }
      }

      view = [(PXCuratedLibraryUIViewController *)self view];
      [popoverPresentationController3 setSourceView:view];
    }

    else
    {
      sender = [(PXCuratedLibraryUIViewController *)self view];
      [popoverPresentationController3 setSourceView:sender];
    }

LABEL_35:

    [(PXCuratedLibraryUIViewController *)self presentViewController:gridView animated:1 completion:0];
    goto LABEL_36;
  }

  actionType2 = [performerCopy actionType];
  v31 = [actionType2 isEqualToString:@"PXCuratedLibraryActionTapToRadar"];

  if (v31)
  {
    v32 = controllerCopy;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        px_descriptionForAssertionMessage4 = [v32 px_descriptionForAssertionMessage];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2997 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxViewController", v35, px_descriptionForAssertionMessage4}];
LABEL_44:

        goto LABEL_45;
      }

      goto LABEL_23;
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = objc_opt_class();
    v35 = NSStringFromClass(v52);
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2997 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxViewController", v35}];
    goto LABEL_45;
  }

  actionType3 = [performerCopy actionType];
  v38 = [actionType3 isEqualToString:@"PXCuratedLibraryActionCurationDebug"];

  if (v38)
  {
    v32 = controllerCopy;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v54 = objc_opt_class();
        v35 = NSStringFromClass(v54);
        px_descriptionForAssertionMessage4 = [v32 px_descriptionForAssertionMessage];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3001 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxViewController", v35, px_descriptionForAssertionMessage4}];
        goto LABEL_44;
      }

LABEL_23:
      gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
      diagnosticDescription = [gridView2 diagnosticDescription];
      [v32 setHostViewDiagnosticDescription:diagnosticDescription];

      [(UIViewController *)self px_presentViewControllerInNavigationController:v32 animated:1 dimissButtonLocation:0 completion:0];
      goto LABEL_24;
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = objc_opt_class();
    v35 = NSStringFromClass(v53);
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3001 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxViewController", v35}];
LABEL_45:

    goto LABEL_23;
  }

  actionType4 = [performerCopy actionType];
  v24 = [actionType4 isEqualToString:@"PXCuratedLibraryActionShare"];

  if (!v24)
  {
    v42 = controllerCopy;
    navigationController = [(PXCuratedLibraryUIViewController *)self navigationController];
    [navigationController pushViewController:v42 animated:1];

    goto LABEL_37;
  }

  [(PXCuratedLibraryUIViewController *)self presentViewController:controllerCopy animated:1 completion:0];
LABEL_24:
  LOBYTE(v24) = 0;
LABEL_37:

  return v24;
}

- (void)curatedLibraryActionPerformer:(id)performer presentShareSheetWithSharingContext:(id)context
{
  contextCopy = context;
  px_sharePresentation = [(PXCuratedLibraryUIViewController *)self px_sharePresentation];
  if (!px_sharePresentation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2945 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v7 = [px_sharePresentation createActivitySharingControllerWithContext:contextCopy];
  if (!v7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2947 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  activityViewController = [v7 activityViewController];
  if (activityViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [activityViewController px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2948 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2948 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v13}];
  }

LABEL_7:
  [(PXCuratedLibraryUIViewController *)self presentViewController:activityViewController animated:1 completion:0];
}

- (void)curatedLibraryActionPerformer:(id)performer presentContextMenuActionsWithPerformers:(id)performers
{
  v68 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  performersCopy = performers;
  selfCopy = self;
  px_sharePresentation = [(PXCuratedLibraryUIViewController *)self px_sharePresentation];
  v7 = px_sharePresentation;
  if (!px_sharePresentation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryUIViewController.m" lineNumber:2882 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];

    v7 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E695DFB8]);
  defaultActivityTypeOrder = [v7 defaultActivityTypeOrder];
  v10 = [v8 initWithArray:defaultActivityTypeOrder];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryUIViewController.m" lineNumber:2884 description:{@"Invalid parameter not satisfying: %@", @"defaultActivityTypeOrder"}];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_presentContextMenuActionsWithPerformers___block_invoke;
  aBlock[3] = &unk_1E7733E10;
  v46 = v11;
  v62 = v46;
  v63 = v64;
  v47 = _Block_copy(aBlock);
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(performersCopy, "count")}];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(performersCopy, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = performersCopy;
  v14 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v14)
  {
    v15 = *v58;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        menuElement = [v17 menuElement];
        activityType = [v17 activityType];
        v20 = v13;
        if (!activityType || (v21 = [v10 containsObject:activityType], v20 = v13, !v21) || ((objc_msgSend(v12, "setObject:forKeyedSubscript:", menuElement, activityType), activityType != @"PXActivityTypeSetAllLibrariesFilter") ? (v22 = activityType == @"PXActivityTypeSetPersonalLibraryFilter") : (v22 = 1), !v22 ? (v23 = activityType == @"PXActivityTypeSetSharedLibraryFilter") : (v23 = 1), v20 = v46, v23))
        {
          [v20 addObject:menuElement];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v14);
  }

  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v48 = v10;
  v25 = [v48 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v25)
  {
    v26 = *v54;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v48);
        }

        v28 = *(*(&v53 + 1) + 8 * j);
        v29 = [v12 objectForKeyedSubscript:v28];
        if (v29)
        {
          if (v28 == @"PXActivityTypeSetAllLibrariesFilter" || v28 == @"PXActivityTypeSetPersonalLibraryFilter" || v28 == @"PXActivityTypeSetSharedLibraryFilter")
          {
            v47[2](v47, v24);
          }

          else
          {
            [v24 addObject:v29];
          }
        }
      }

      v25 = [v48 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v25);
  }

  [v24 addObjectsFromArray:v13];
  sender = [performerCopy sender];
  if (sender)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_42;
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    px_descriptionForAssertionMessage = [sender px_descriptionForAssertionMessage];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryUIViewController.m" lineNumber:2928 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer.sender", v39, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryUIViewController.m" lineNumber:2928 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer.sender", v39}];
  }

LABEL_42:
  filterTipController = [(PXCuratedLibraryUIViewController *)selfCopy filterTipController];
  if ([filterTipController isPresentingTipView])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __106__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_presentContextMenuActionsWithPerformers___block_invoke_2;
    v50[3] = &unk_1E774C620;
    v51 = sender;
    v52 = v24;
    [filterTipController dismissTipViewWithCompletion:v50];

    v34 = v51;
  }

  else
  {
    v34 = [MEMORY[0x1E69DCC60] menuWithChildren:v24];
    [sender setMenu:v34];
  }

  _Block_object_dispose(v64, 8);
}

void __106__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_presentContextMenuActionsWithPerformers___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) count] && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:*(a1 + 32)];
    [v4 addObject:v3];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __106__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_presentContextMenuActionsWithPerformers___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCC60] menuWithChildren:*(a1 + 40)];
  [*(a1 + 32) setMenu:v2];

  v3 = [*(a1 + 32) contextMenuInteraction];
  [v3 _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)photosCloseButtonControllerHandleAction:(id)action
{
  v5 = *MEMORY[0x1E69E9840];
  delegate = [(PXCuratedLibraryUIViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate curatedLibraryViewControllerDismiss:self] & 1) == 0)
  {
    PXAssertGetLog();
  }
}

- (void)curatedLibraryBarsControllerDidUpdateBars:(id)bars
{
  updateDelegate = [(PXCuratedLibraryUIViewController *)self updateDelegate];
  [updateDelegate curatedLibraryViewDidUpdateBars:self];
}

- (id)barsControllerActionsForSelectionContextMenu:(id)menu
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  selectionSnapshot = [viewModel selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected])
  {
    if (selectionSnapshot)
    {
      [selectionSnapshot firstSelectedIndexPath];
    }

    PXIndexPathFromSimpleIndexPath();
  }

  return 0;
}

- (id)preferredFocusEnvironments
{
  v18 = *MEMORY[0x1E69E9840];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  gridView = [viewProvider gridView];
  rootLayout = [gridView rootLayout];

  preferredFocusAssetReference = [(PXCuratedLibraryUIViewController *)self preferredFocusAssetReference];
  if (preferredFocusAssetReference)
  {
    v7 = [rootLayout axLeafForObjectReference:preferredFocusAssetReference];
  }

  else
  {
    v7 = 0;
  }

  axGroup = [rootLayout axGroup];
  v9 = axGroup;
  if (v7)
  {
    v16 = v7;
    v17 = axGroup;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v16;
    v12 = 2;
  }

  else
  {
    v15 = axGroup;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v15;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v15, v16, v17}];

  return v13;
}

- (PXActionManager)assetActionManager
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  assetActionManager = [viewModel assetActionManager];

  return assetActionManager;
}

- (void)toggleFilter:(id)filter
{
  v4 = PXNumberPropertyFromCommand(filter);
  v5 = v4;
  if (v4 && (v6 = [v4 integerValue], v6 <= 7))
  {
    v7 = off_1E7735700[v6];
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  v9 = v7;

  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded performActionWithType:v9];
}

- (void)toggleSortOrder:(id)order
{
  v4 = PXNumberPropertyFromCommand(order);
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded performSortOrderMenuActionForItemAtIndex:integerValue];
}

- (void)toggleViewMode:(id)mode
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded performActionWithType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
}

- (void)toggleEditMode:(id)mode
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded toggleSelectMode];
}

- (void)zoomOut:(id)out
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded zoomOutAllPhotos];
}

- (void)zoomIn:(id)in
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [viewProviderIfLoaded zoomInAllPhotos];
}

- (void)navigateToSegment:(id)segment
{
  v4 = PXNumberPropertyFromCommand(segment);
  v5 = [v4 integerValue] - 1;
  if (v5 <= 2)
  {
    v6 = qword_1A5383108[v5];
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    viewModel = [viewProviderIfLoaded viewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PXCuratedLibraryUIViewController_navigateToSegment___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v9[4] = v6;
    [viewModel performChanges:v9];
  }
}

- (void)cancelSelectMode:(id)mode
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  if ([viewModel isSelecting])
  {
    [viewModel performChanges:&__block_literal_global_642];
  }
}

- (void)deselectAll:(id)all
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  selectionManager = [viewModel selectionManager];
  [selectionManager performChanges:&__block_literal_global_640];
}

- (void)openSelectionWithCommandDownArrow:(id)arrow
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  actionManager = [viewModel actionManager];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  v8 = [actionManager actionPerformerForNavigatingToNextZoomLevelInLayout:layout];

  if (v8)
  {
    [v8 performActionWithCompletionHandler:0];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _presentOneUpForSingleSelectedAssetWithActivity:0];
  }
}

- (void)openParentWithCommandUpArrow:(id)arrow
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  v6 = [viewModel zoomLevelInDirection:-1 fromZoomLevel:{objc_msgSend(viewModel, "zoomLevel")}];
  if (v6)
  {
    v7 = v6;
    viewProviderIfLoaded2 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    viewModel2 = [viewProviderIfLoaded2 viewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PXCuratedLibraryUIViewController_openParentWithCommandUpArrow___block_invoke;
    v10[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v10[4] = v7;
    [viewModel2 performChanges:v10];
  }
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_navigateToSegment_)
  {
    v7 = PXNumberPropertyFromCommand(commandCopy);
    integerValue = [v7 integerValue];
    if ((integerValue - 1) >= 3)
    {

      [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
      goto LABEL_25;
    }

    v9 = qword_1A5383108[integerValue - 1];

    v10 = PXCuratedLibraryZoomLevelDiscoverabilityTitle(v9);
    [commandCopy setDiscoverabilityTitle:v10];

    viewProviderIfLoaded = PXCuratedLibraryZoomLevelLocalizedTitle(v9, 0);
    [commandCopy setTitle:viewProviderIfLoaded];
    goto LABEL_16;
  }

  if ([commandCopy action] == sel_toggleEditMode_)
  {
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    viewModel = [viewProviderIfLoaded viewModel];
    if ([viewModel isSelecting])
    {
      v13 = @"PXCuratedLibraryCancelSelectionButtonTitle";
    }

    else
    {
      v13 = @"PXCuratedLibrarySelectButtonTitle";
    }

    v14 = PXLocalizedStringFromTable(v13, @"PhotosUICore");
    [commandCopy setTitle:v14];

    goto LABEL_16;
  }

  if ([commandCopy action] == sel_toggleViewMode_)
  {
    viewProviderIfLoaded2 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v16 = [viewProviderIfLoaded2 menuTitleForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
    [commandCopy setTitle:v16];

    v17 = MEMORY[0x1E69DCAB8];
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v18 = [viewProviderIfLoaded systemImageNameForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
    v19 = [v17 px_systemImageNamed:v18];
    [commandCopy setImage:v19];

LABEL_16:
    goto LABEL_25;
  }

  if ([commandCopy action] == sel_toggleFilter_)
  {
    v20 = PXNumberPropertyFromCommand(commandCopy);
    v21 = v20;
    if (v20 && (v22 = [v20 integerValue], v22 <= 7))
    {
      v23 = off_1E7735700[v22];
    }

    else
    {
      v23 = &stru_1F1741150;
    }

    v24 = v23;

    viewProviderIfLoaded3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v26 = [viewProviderIfLoaded3 menuTitleForActionType:v24];
    [commandCopy setDiscoverabilityTitle:v26];

    viewProviderIfLoaded4 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v28 = [viewProviderIfLoaded4 titleForActionType:v24 useCase:0];
    [commandCopy setTitle:v28];

    [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    [objc_claimAutoreleasedReturnValue() menuActionStateForActionType:v24];
    UIMenuElementStateFromPXMenuActionState();
  }

  if ([commandCopy action] == sel_toggleSortOrder_)
  {
    v4 = PXNumberPropertyFromCommand(commandCopy);
    v5 = v4;
    if (v4)
    {
      integerValue2 = [v4 integerValue];
    }

    else
    {
      integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    viewProviderIfLoaded5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v30 = [viewProviderIfLoaded5 sortOrderMenuActionTitleForItemIndex:integerValue2];

    if (v30)
    {
      [commandCopy setTitle:v30];
      [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
      [objc_claimAutoreleasedReturnValue() sortOrderMenuActionStateForItemIndex:integerValue2];
      UIMenuElementStateFromPXMenuActionState();
    }

    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
  }

LABEL_25:
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  targetForKeyCommands = [(PXSwipeSelectionManager *)self->_swipeSelectionManager targetForKeyCommands];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    targetForKeyCommands2 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager targetForKeyCommands];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXCuratedLibraryUIViewController;
    targetForKeyCommands2 = [(PXCuratedLibraryUIViewController *)&v12 targetForAction:action withSender:senderCopy];
  }

  v10 = targetForKeyCommands2;

  return v10;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v20.receiver = self;
  v20.super_class = PXCuratedLibraryUIViewController;
  if ([(PXCuratedLibraryUIViewController *)&v20 canPerformAction:action withSender:senderCopy])
  {
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    viewModel = [viewProviderIfLoaded viewModel];

    allowedActions = [viewModel allowedActions];
    v10 = allowedActions;
    if (sel_openParentWithCommandUpArrow_ != action)
    {
      if (sel_openSelectionWithCommandDownArrow_ == action)
      {
        if (([allowedActions containsObject:@"PXCuratedLibraryActionNavigateToNextZoomLevel"] & 1) == 0)
        {
          v16 = @"PXCuratedLibraryActionNavigateToOneUp";
          goto LABEL_30;
        }
      }

      else
      {
        if (sel_navigateToSegment_ == action)
        {
          if ([allowedActions containsObject:@"PXCuratedLibraryActionNavigateToYearsMonthsOrDays"])
          {
            v15 = [viewModel isSelecting] ^ 1;
            goto LABEL_31;
          }

          goto LABEL_35;
        }

        if (sel_zoomIn_ == action)
        {
          v16 = @"PXCuratedLibraryActionAllPhotosZoomIn";
          goto LABEL_30;
        }

        if (sel_zoomOut_ == action)
        {
          v16 = @"PXCuratedLibraryActionAllPhotosZoomOut";
          goto LABEL_30;
        }

        if (sel_deselectAll_ == action)
        {
          selectionSnapshot = [viewModel selectionSnapshot];
          LOBYTE(v15) = [selectionSnapshot isAnyItemSelected];
LABEL_26:

          goto LABEL_31;
        }

        if (sel_cancelSelectMode_ == action)
        {
          goto LABEL_28;
        }

        if (sel_toggleEditMode_ != action)
        {
          if (sel_toggleViewMode_ != action)
          {
            if (sel_toggleViewer_ != action)
            {
              if (sel_toggleFilter_ == action)
              {
                v11 = PXNumberPropertyFromCommand(senderCopy);
                selectionSnapshot = v11;
                if (v11 && (v13 = [v11 integerValue], v13 <= 7))
                {
                  v14 = off_1E7735700[v13];
                }

                else
                {
                  v14 = &stru_1F1741150;
                }

                v19 = v14;
                LOBYTE(v15) = [v10 containsObject:v19];

                goto LABEL_26;
              }

              goto LABEL_19;
            }

            if ([allowedActions containsObject:@"PXCuratedLibraryActionNavigateToOneUp"])
            {
              singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
              LOBYTE(v15) = singleSelectedAssetReference != 0;

              goto LABEL_31;
            }

LABEL_35:
            LOBYTE(v15) = 0;
            goto LABEL_31;
          }

          v16 = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
LABEL_30:
          LOBYTE(v15) = [v10 containsObject:v16];
          goto LABEL_31;
        }

        if (([allowedActions containsObject:@"PXCuratedLibraryActionEnterSelectMode"] & 1) == 0)
        {
LABEL_28:
          v16 = @"PXCuratedLibraryActionCancelSelectMode";
          goto LABEL_30;
        }
      }

LABEL_19:
      LOBYTE(v15) = 1;
LABEL_31:

      goto LABEL_32;
    }

    v16 = @"PXCuratedLibraryActionNavigateToPreviousZoomLevel";
    goto LABEL_30;
  }

  LOBYTE(v15) = 0;
LABEL_32:

  return v15;
}

- (void)swipeSelectionManagerDidAutoScroll:(id)scroll
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  [layout clearLastVisibleAreaAnchoringInformation];
}

- (void)swipeSelectionManager:(id)manager extendSelectionInDirection:(unint64_t)direction
{
  presentedViewController = [(PXCuratedLibraryUIViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    if ([viewProviderIfLoaded ensureSelectMode])
    {
      [viewProviderIfLoaded extendSelectionInDirection:direction];
      [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateForCursorAsset];
    }
  }
}

- (id)swipeSelectionManager:(id)manager indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath
{
  selectionManager = [manager selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2632 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v19, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2632 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v19}];
  }

LABEL_3:
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v13 = *&path->item;
  v23[0] = *&path->dataSourceIdentifier;
  v23[1] = v13;
  v14 = *&indexPath->item;
  v22[0] = *&indexPath->dataSourceIdentifier;
  v22[1] = v14;
  v15 = [viewProvider indexPathsFromIndexPath:v23 toIndexPath:v22 inDataSource:dataSource];

  return v15;
}

- (id)_hitTestResultAtLocation:(CGPoint)location withPadding:(UIEdgeInsets)padding swipeSelectionManager:(id)manager
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  y = location.y;
  x = location.x;
  managerCopy = manager;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollView = [managerCopy scrollView];
  [gridView convertPoint:scrollView fromCoordinateSpace:{x, y}];
  v16 = v15;
  v18 = v17;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__62105;
  v27 = __Block_byref_object_dispose__62106;
  v28 = 0;
  v19 = [gridView hitTestResultsAtPoint:0 padding:v16 passingTest:{v18, top, left, bottom, right}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__PXCuratedLibraryUIViewController__hitTestResultAtLocation_withPadding_swipeSelectionManager___block_invoke;
  v22[3] = &unk_1E7733DE8;
  v22[4] = &v23;
  [v19 enumerateObjectsUsingBlock:v22];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

void __95__PXCuratedLibraryUIViewController__hitTestResultAtLocation_withPadding_swipeSelectionManager___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 control] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)location withPadding:(CGPoint)padding forSwipeSelectionManager:(UIEdgeInsets)manager
{
  right = manager.right;
  bottom = manager.bottom;
  left = manager.left;
  top = manager.top;
  y = padding.y;
  x = padding.x;
  v28 = a6;
  right = [(PXCuratedLibraryUIViewController *)self _hitTestResultAtLocation:x withPadding:y swipeSelectionManager:top, left, bottom, right];
  assetReference = [right assetReference];

  if (!assetReference)
  {
    goto LABEL_6;
  }

  selectionManager = [v28 selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:location object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v25, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [currentHandler handleFailureInMethod:location object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v25}];
  }

LABEL_4:
  v20 = [dataSource assetReferenceForAssetReference:assetReference];

  if (v20)
  {
    [v20 indexPath];

    goto LABEL_7;
  }

LABEL_6:
  v21 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v21;
LABEL_7:

  return result;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location
{
  location;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  [layout padding];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location
{
  swipeSelectionManager = self->_swipeSelectionManager;
  location;
  scrollView = [(PXSwipeSelectionManager *)swipeSelectionManager scrollView];
  [scrollView frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXCuratedLibraryUIViewController *)self _indexPathForAssetAtLocation:location withPadding:a5.x forSwipeSelectionManager:a5.y, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  if (([viewModel isSelecting] & 1) == 0)
  {
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel2 = [viewProvider2 viewModel];
    [viewModel2 performChanges:&__block_literal_global_606];
  }
}

- (BOOL)swipeSelectionManager:(id)manager shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)point
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:manager];
  viewModel = [v5 viewModel];
  allowedActions = [viewModel allowedActions];
  v8 = [allowedActions containsObject:@"PXCuratedLibraryActionEnterSelectMode"];

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel2 = [viewProvider viewModel];
  LOBYTE(viewModel) = [viewModel2 zoomLevel] != 4;

  return viewModel & v8;
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  if ([viewModel isSelecting])
  {
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];
  }

  else
  {
    isDisplayingIndividualItems = 0;
  }

  return isDisplayingIndividualItems;
}

- (void)secondaryToolbarControllerSetNeedsUpdate:(id)update
{
  viewIfLoaded = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_scrollLibraryViewToInitialPositionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    assetsDataSourceManager = [viewProvider assetsDataSourceManager];
    [assetsDataSourceManager performChanges:&__block_literal_global_601];
    gridView = [(PXCuratedLibraryUIViewController *)self gridView];
    scrollViewController = [gridView scrollViewController];
    [scrollViewController stopScrollingAndZoomingAnimations];

    layout = [viewProvider layout];
    createAnchorForScrollingToInitialPosition = [layout createAnchorForScrollingToInitialPosition];
    autoInvalidate = [createAnchorForScrollingToInitialPosition autoInvalidate];

    viewModel = [viewProvider viewModel];
    if ([viewModel zoomLevel] == 4)
    {
      zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
      [zoomablePhotosViewModel performChanges:&__block_literal_global_604];
    }

    if (handlerCopy)
    {
      gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __93__PXCuratedLibraryUIViewController__scrollLibraryViewToInitialPositionWithCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E774C250;
      v16 = handlerCopy;
      [gridView2 installLayoutCompletionHandler:v15];
    }

    goto LABEL_9;
  }

  if (handlerCopy)
  {
    viewProvider = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Can't scroll library view to initial position"];
    (*(handlerCopy + 2))(handlerCopy, 0, viewProvider);
LABEL_9:
  }
}

- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)activity
{
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  if (([viewModel isSelecting] & 1) == 0)
  {
    singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
    if (singleSelectedAssetReference)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __84__PXCuratedLibraryUIViewController__presentOneUpForSingleSelectedAssetWithActivity___block_invoke;
      v8[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      v8[4] = activity;
      [(PXCuratedLibraryUIViewController *)self _presentOneUpForAssetReference:singleSelectedAssetReference configurationHandler:v8];
    }
  }
}

- (BOOL)_presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler
{
  referenceCopy = reference;
  handlerCopy = handler;
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  if ([px_oneUpPresentation canStart] && (-[PXCuratedLibraryUIViewController viewProvider](self, "viewProvider"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "viewModel"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "allowedActions"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", @"PXCuratedLibraryActionNavigateToOneUp"), v11, v10, v9, v12))
  {
    [(PXCuratedLibraryUIViewController *)self setNavigatedAssetReference:referenceCopy];
    v13 = [px_oneUpPresentation startWithConfigurationHandler:handlerCopy];
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    videoPlaybackController = [viewProvider videoPlaybackController];
    [videoPlaybackController setIsOneUpVisible:v13];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)resetToInitialStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXCuratedLibraryUIViewController *)self canResetToInitialState])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];

    [viewModel performChanges:&__block_literal_global_592];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__PXCuratedLibraryUIViewController_resetToInitialStateWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E7747648;
    v8 = handlerCopy;
    [(PXCuratedLibraryUIViewController *)self _scrollLibraryViewToInitialPositionWithCompletionHandler:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __77__PXCuratedLibraryUIViewController_resetToInitialStateWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to reset to initial state, error:%@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isResetToInitialState
{
  if (![(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    return 1;
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  if ([(PXCuratedLibraryUIViewController *)self canResetToInitialState])
  {
    isResetToInitialState = [viewModel isResetToInitialState];
  }

  else
  {
    isResetToInitialState = 0;
  }

  return isResetToInitialState;
}

- (BOOL)canResetToInitialState
{
  if (![(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    return 1;
  }

  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  if ([viewModel isNavigating] & 1) != 0 || (objc_msgSend(viewModel, "isSelecting") & 1) == 0 && (-[PXCuratedLibraryUIViewController px_containsViewControllerModalInPresentation](self, "px_containsViewControllerModalInPresentation") & 1) != 0 || objc_msgSend(viewModel, "isSelecting") && (objc_msgSend(viewModel, "selectionSnapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isAnyItemSelected"), v5, (v6) || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "state"), v7, v8))
  {
    v9 = 0;
  }

  else
  {
    presentedViewController = [(PXCuratedLibraryUIViewController *)self presentedViewController];
    v9 = presentedViewController == 0;
  }

  return v9;
}

- (BOOL)scrollViewControllerShouldScrollToTop:(id)top
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 4)
  {
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    assetsDataSourceManager = [viewProvider2 assetsDataSourceManager];
    [assetsDataSourceManager forceAllPhotosAccurateIfNeeded];
  }

  v9 = +[PXCuratedLibrarySettings sharedInstance];
  enableCustomScrollToTopOrBottom = [v9 enableCustomScrollToTopOrBottom];

  if (enableCustomScrollToTopOrBottom)
  {
    return ![(PXCuratedLibraryUIViewController *)self _scrollToNextSectionInDirection:-1 animated:1];
  }

  else
  {
    return 1;
  }
}

- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  y = velocity.y;
  scrollingCopy = scrolling;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  gridView = [viewProvider gridView];
  rootLayout = [gridView rootLayout];
  [rootLayout convertRect:layout toDescendantLayout:{offset->x, offset->y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v15 = v14;

  decelerationRate = [scrollingCopy decelerationRate];
  [layout adjustedTargetVisibleTopForProposedTargetVisibleTop:&decelerationRate scrollingVelocity:v15 decelerationRate:y];
  offset->y = offset->y + v16 - v15;
  [scrollingCopy setDecelerationRate:decelerationRate];

  v17 = +[PXGridTipsHelper filterAllPhotosTipID];
  [PXGridTipsHelper setTip:v17 isPresentable:[(PXCuratedLibraryUIViewController *)self isCollapsed]^ 1];
}

- (void)_updateScrolledToStates:(id)states
{
  statesCopy = states;
  v5 = [statesCopy isScrolledAtEdge:1 tolerance:10.0];
  v6 = [statesCopy isScrolledAtEdge:3 tolerance:10.0];

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  if (v6 && ([viewModel isScrolledToBottom] & 1) == 0)
  {
    [(PXCuratedLibraryUIViewController *)self _handleScrolledAtBottom];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PXCuratedLibraryUIViewController__updateScrolledToStates___block_invoke;
  v9[3] = &__block_descriptor_34_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v10 = v5;
  v11 = v6;
  [viewModel performChanges:v9];
}

void __60__PXCuratedLibraryUIViewController__updateScrolledToStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setScrolledToTop:v3];
  [v4 setScrolledToBottom:*(a1 + 33)];
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PXCuratedLibraryUIViewController_scrollViewControllerContentBoundsDidChange___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  [px_oneUpPresentation invalidatePresentingGeometry];

  skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [skimmingController contentViewDidScroll];

  videoPlaybackController = [viewProvider videoPlaybackController];
  [videoPlaybackController visibleRectDidChange];

  hoverGesture = [(PXCuratedLibraryUIViewController *)self hoverGesture];
  [hoverGesture px_cancel];

  [scrollCopy visibleOrigin];
  if (v10 < 0.0 && ([scrollCopy isManuallyChanging] & 1) == 0 && objc_msgSend(viewModel, "zoomLevel") == 4)
  {
    [scrollCopy contentBounds];
    PXSizeIsEmpty();
  }

  if ([scrollCopy isDragging])
  {
    [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:0 changeReason:2];
  }

  [(PXCuratedLibraryUIViewController *)self _updateScrolledToStates:scrollCopy];
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  [(PXCuratedLibraryUIViewController *)self setCanShowFooter:1];
  skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [skimmingController contentViewWillScroll];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  tapGesture = [(PXCuratedLibraryUIViewController *)self tapGesture];
  if (tapGesture == recognizerCopy)
  {
    skimmingTouchGesture = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];
    v10 = skimmingTouchGesture == gestureRecognizerCopy;
  }

  else
  {
    v10 = 0;
  }

  screenEdgePanGestureRecognizer = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
  if (screenEdgePanGestureRecognizer == recognizerCopy)
  {
    _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
    panGestureRecognizer = [_scrollView panGestureRecognizer];
    v4 = panGestureRecognizer == gestureRecognizerCopy;

    v10 |= v4;
  }

  hoverGesture = [(PXCuratedLibraryUIViewController *)self hoverGesture];
  if (hoverGesture == recognizerCopy)
  {
    _scrollView2 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    panGestureRecognizer2 = [_scrollView2 panGestureRecognizer];
    v16 = panGestureRecognizer2 == gestureRecognizerCopy;
  }

  else
  {
    v16 = 0;
  }

  pinchGesture = [(PXCuratedLibraryUIViewController *)self pinchGesture];
  if (pinchGesture == recognizerCopy)
  {
    v24 = v16;
    v25 = 0;
  }

  else
  {
    panGesture = [(PXCuratedLibraryUIViewController *)self panGesture];
    v21 = panGesture;
    if (panGesture == recognizerCopy)
    {
      v29 = panGesture;
      v24 = v16;
      v25 = 0;
    }

    else
    {
      screenEdgePanGestureRecognizer2 = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
      v4 = screenEdgePanGestureRecognizer2;
      if (screenEdgePanGestureRecognizer2 != recognizerCopy)
      {

        v23 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v29 = v21;
      v24 = v16;
      v25 = 1;
    }
  }

  swipeSelectionManager = [(PXCuratedLibraryUIViewController *)self swipeSelectionManager];
  gesturesForFailureRequirements = [swipeSelectionManager gesturesForFailureRequirements];
  v23 = [gesturesForFailureRequirements containsObject:gestureRecognizerCopy];

  if (v25)
  {
  }

  v16 = v24;
  v21 = v29;
  if (pinchGesture != recognizerCopy)
  {
    goto LABEL_18;
  }

LABEL_19:

  return (v23 | v16 | v10) & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  panGesture = [(PXCuratedLibraryUIViewController *)self panGesture];

  if (panGesture != recognizerCopy)
  {
    v9 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v15 = 0;
  v10 = [gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:&v15];
  v11 = v15;
  v9 = v11;
  if (!v10)
  {
    goto LABEL_6;
  }

  px_scrollableAxis = [v11 px_scrollableAxis];

  if ((px_scrollableAxis & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  skimmingTouchGesture = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (skimmingTouchGesture == recognizerCopy)
  {
    tapGesture = [(PXCuratedLibraryUIViewController *)self tapGesture];
    v9 = tapGesture != gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  pinchGesture = [(PXCuratedLibraryUIViewController *)self pinchGesture];
  if (pinchGesture == recognizerCopy)
  {
    _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
    panGestureRecognizer = [_scrollView panGestureRecognizer];
    v14 = panGestureRecognizer == gestureRecognizerCopy;

    v9 |= v14;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  allowedActions = [viewModel allowedActions];
  panGesture = [(PXCuratedLibraryUIViewController *)self panGesture];
  if (panGesture != beginCopy)
  {
    screenEdgePanGestureRecognizer = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];

    if (screenEdgePanGestureRecognizer == beginCopy)
    {
      _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
      if (([_scrollView isDecelerating] & 1) != 0 || (objc_msgSend(_scrollView, "isDragging") & 1) != 0 || !objc_msgSend(allowedActions, "containsObject:", @"PXCuratedLibraryActionNavigateToPreviousZoomLevel"))
      {
        v13 = 0;
        goto LABEL_19;
      }

      zoomLevelControl = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
      viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      viewModel2 = [viewProvider2 viewModel];
      v13 = [zoomLevelControl zoomLevelDisplayedBeforeZoomLevel:{objc_msgSend(viewModel2, "zoomLevel")}] != 0;
    }

    else
    {
      tapGesture = [(PXCuratedLibraryUIViewController *)self tapGesture];

      if (tapGesture == beginCopy)
      {
        _scrollView = [(PXCuratedLibraryUIViewController *)self gridView];
        [beginCopy locationInView:_scrollView];
        v23 = [(PXCuratedLibraryUIViewController *)self _buttonHitTestResultAtPoint:_scrollView inCoordinateSpace:?];
        v13 = v23 == 0;

        goto LABEL_19;
      }

      pressGesture = [(PXCuratedLibraryUIViewController *)self pressGesture];

      if (pressGesture != beginCopy)
      {
        pinchGesture = [(PXCuratedLibraryUIViewController *)self pinchGesture];

        if (pinchGesture != beginCopy)
        {
          v13 = 1;
          goto LABEL_20;
        }

        _scrollView = [(PXCuratedLibraryUIViewController *)self swipeSelectionManager];
        v13 = [_scrollView state] == 0;
LABEL_19:

        goto LABEL_20;
      }

      v24 = MEMORY[0x1E69DCA38];
      _scrollView = [(PXCuratedLibraryUIViewController *)self view];
      zoomLevelControl = [v24 focusSystemForEnvironment:_scrollView];
      focusedItem = [zoomLevelControl focusedItem];
      v13 = focusedItem != 0;
    }

    goto LABEL_19;
  }

  if ([allowedActions containsObject:@"PXCuratedLibraryActionSkim"])
  {
    view = [(PXCuratedLibraryUIViewController *)self view];
    [panGesture velocityInView:view];
    v16 = v15;
    v18 = v17;

    MEMORY[0x1A590C810](fabs(v18), fabs(v16));
    +[PXKitSettings sharedInstance];
    [objc_claimAutoreleasedReturnValue() horizontalGesturesAngularToleranceInDegrees];
    PXDegreesToRadians();
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)_buttonHitTestResultAtPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62105;
  v16 = __Block_byref_object_dispose__62106;
  v17 = 0;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PXCuratedLibraryUIViewController__buttonHitTestResultAtPoint_inCoordinateSpace___block_invoke;
  v11[3] = &unk_1E7733D08;
  v11[4] = &v12;
  [gridView enumerateCuratedLibraryHitTestResultsAtPoint:v11 usingBlock:?];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __82__PXCuratedLibraryUIViewController__buttonHitTestResultAtPoint_inCoordinateSpace___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 control] - 7) <= 0xA)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_hitTestAssetReferenceAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [gridView convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [gridView firstCuratedLibraryHitTestResultsAtPoint:1 withControl:{v10, v12}];
  assetReference = [v13 assetReference];

  return assetReference;
}

- (void)touchingUIGestureRecognizerDidEndTouching:(id)touching
{
  touchingCopy = touching;
  skimmingTouchGesture = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (skimmingTouchGesture != touchingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2228 description:{@"Invalid parameter not satisfying: %@", @"touchingRecognizer == self.skimmingTouchGesture"}];
  }

  skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
  v7 = [skimmingController endTouchingGestureEnded:{objc_msgSend(touchingCopy, "state") != 4}];

  if (v7)
  {
    tapGesture = [(PXCuratedLibraryUIViewController *)self tapGesture];
    [tapGesture px_cancel];
  }
}

- (void)touchingUIGestureRecognizerDidBeginTouching:(id)touching
{
  touchingCopy = touching;
  skimmingTouchGesture = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (skimmingTouchGesture != touchingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2212 description:{@"Invalid parameter not satisfying: %@", @"touchingRecognizer == self.skimmingTouchGesture"}];
  }

  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [touchingCopy locationInView:gridView];
  v9 = v8;
  v11 = v10;
  skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
  if ([skimmingController canStartSkimming])
  {
    v13 = [(PXCuratedLibraryUIViewController *)self _buttonHitTestResultAtPoint:gridView inCoordinateSpace:v9, v11];

    if (!v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PXCuratedLibraryUIViewController_touchingUIGestureRecognizerDidBeginTouching___block_invoke;
      v15[3] = &unk_1E7733D58;
      v15[4] = self;
      [gridView enumerateCuratedLibraryHitTestResultsAtPoint:&unk_1F1910210 withControls:v15 usingBlock:{v9, v11}];
    }
  }

  else
  {
  }
}

void __80__PXCuratedLibraryUIViewController_touchingUIGestureRecognizerDidBeginTouching___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 assetCollectionReference];
  if (v5)
  {
    v7 = v5;
    v6 = [*(a1 + 32) skimmingController];
    [v6 startTouchingForAssetCollectionReference:v7];

    v5 = v7;
    *a3 = 1;
  }
}

- (BOOL)_handleGestureForFilterTipController
{
  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  isPresentingTipView = [filterTipController isPresentingTipView];
  if (isPresentingTipView)
  {
    [filterTipController dismissTipViewWithCompletion:0];
  }

  return isPresentingTipView;
}

- (void)_handleScreenEdgePan:(id)pan
{
  panCopy = pan;
  if (![(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    layout = [viewProvider layout];
    gridView = [(PXCuratedLibraryUIViewController *)self gridView];
    backNavigationTransition = [(PXCuratedLibraryUIViewController *)self backNavigationTransition];
    state = [panCopy state];
    if ((state - 3) < 3)
    {
      if (backNavigationTransition)
      {
        backNavigationGestureDirectionFilter = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
        [backNavigationGestureDirectionFilter output];
        v13 = v12;

        if (v13 < 0.0)
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_7;
          v38[3] = &unk_1E7748B68;
          v38[4] = self;
          [viewModel performChanges:v38];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_8;
          v36[3] = &unk_1E774C648;
          v37 = viewModel;
          [backNavigationTransition animateToInitialStateWithCompletionBlock:v36];
          [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:0];
          v14 = v37;
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        [viewModel performChanges:&__block_literal_global_578];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_5;
        v39[3] = &unk_1E774C648;
        v40 = viewModel;
        [backNavigationTransition animateToFinalStateWithCompletionBlock:v39];
        [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:0];
        v14 = v40;
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_19;
    }

    if (state != 2)
    {
      if (state == 1)
      {
        zoomLevel = [viewModel zoomLevel];
        [(PXCuratedLibraryUIViewController *)self setZoomLevelBeforeBackNavigationTransition:zoomLevel];
        zoomLevelControl = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
        v17 = [zoomLevelControl zoomLevelDisplayedBeforeZoomLevel:zoomLevel];

        v18 = [layout createCuratedLibraryLayoutTransitionIfNeededWithContext:{objc_msgSend(layout, "curatedLibraryLayoutAnimationContextForTransitionToZoomLevel:", v17)}];

        [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:v18];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke;
        v44[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
        v44[4] = v17;
        [viewModel performChanges:v44];
        v19 = objc_alloc_init(off_1E7721510);
        [v19 setMinimumChange:8.0];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_2;
        v42[3] = &unk_1E7733D80;
        v43 = v19;
        v20 = v19;
        [v20 performChanges:v42];
        [(PXCuratedLibraryUIViewController *)self setBackNavigationGestureDirectionFilter:v20];

        backNavigationTransition = v18;
      }

      goto LABEL_18;
    }

    if (!backNavigationTransition)
    {
      goto LABEL_18;
    }

    screenEdgePanGestureRecognizer = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
    [screenEdgePanGestureRecognizer translationDistanceInView:gridView];
    v23 = v22;

    v24 = +[PXCuratedLibrarySettings sharedInstance];
    enableInteractiveTransition = [v24 enableInteractiveTransition];

    if (enableInteractiveTransition)
    {
      if (v23 < 100.0)
      {
        backNavigationTransition2 = [(PXCuratedLibraryUIViewController *)self backNavigationTransition];
        v26 = v23 / 2000.0;
        *&v28 = v26;
        [backNavigationTransition2 setFractionCompleted:v28];

LABEL_14:
        backNavigationGestureDirectionFilter2 = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_3;
        v41[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
        *&v41[4] = v23;
        [backNavigationGestureDirectionFilter2 performChanges:v41];

        goto LABEL_18;
      }
    }

    else
    {
      v29 = +[PXCuratedLibrarySettings sharedInstance];
      [v29 swipeBackGestureMinTranslation];
      v31 = v30;

      if (v23 < v31)
      {
        goto LABEL_14;
      }
    }

    backNavigationGestureDirectionFilter3 = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
    [backNavigationGestureDirectionFilter3 output];
    v35 = v34;

    if (v35 >= 0.0)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setZoomLevel:v2];
  [v3 setZoomLevelTransitionPhase:1];
}

void __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 minimumChange];
  [v4 setInput:v3 + 1.0];
}

void __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setZoomLevel:{objc_msgSend(v2, "zoomLevelBeforeBackNavigationTransition")}];
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  state = [panCopy state];
  if ((state - 3) < 3)
  {
    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [skimmingController endPanning];
LABEL_9:

    goto LABEL_10;
  }

  if (state == 2)
  {
    [panCopy translationInView:gridView];
    v9 = v8;
    v11 = v10;
    if ([gridView effectiveUserInterfaceLayoutDirection] == 1)
    {
      v9 = -v9;
    }

    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [skimmingController updatePanningWithTranslation:{v9, v11}];
    goto LABEL_9;
  }

  if (state == 1)
  {
    [panCopy locationInView:gridView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PXCuratedLibraryUIViewController__handlePan___block_invoke;
    v12[3] = &unk_1E7733D58;
    v12[4] = self;
    [gridView enumerateCuratedLibraryHitTestResultsAtPoint:&unk_1F19101F8 withControls:v12 usingBlock:?];
  }

LABEL_10:
}

void __47__PXCuratedLibraryUIViewController__handlePan___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 assetCollectionReference];
  if (v5)
  {
    v6 = [*(a1 + 32) skimmingController];
    v7 = [v8 assetCollectionReference];
    [v6 startPanningForAssetCollectionReference:v7];

    *a3 = 1;
  }
}

- (void)_handlePinch:(id)pinch
{
  pinchCopy = pinch;
  if ([pinchCopy state] == 1)
  {
    _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
    panGestureRecognizer = [_scrollView panGestureRecognizer];
    [panGestureRecognizer px_cancel];
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  allowedActions = [viewModel allowedActions];
  v10 = [allowedActions containsObject:@"PXCuratedLibraryActionNavigateToOneUp"];
  if (!v10 || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 handlePresentingPinchGestureRecognizer:pinchCopy], v11, (v12 & 1) == 0))
  {
    state = [pinchCopy state];
    v14 = viewModel;
    v15 = state != 1 && [pinchCopy state] != 2;
    zoomLevelPinchFilter = [(PXCuratedLibraryUIViewController *)self zoomLevelPinchFilter];
    gridView = [(PXCuratedLibraryUIViewController *)self gridView];
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    zoomablePhotosInteraction = [viewProvider2 zoomablePhotosInteraction];
    v20 = [zoomablePhotosInteraction handlePinch:pinchCopy];

    v21 = gridView;
    v22 = zoomLevelPinchFilter;
    viewModel = v14;
    if (v20)
    {
      allowedActions = v28;
    }

    else
    {
      allowedActions = v28;
      if (!v15)
      {
        [pinchCopy velocity];
        if (v23 <= 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          if (([v22 isTrackingPinch] & 1) == 0 && ((v10 ^ 1) & 1) == 0)
          {
            [pinchCopy locationInView:v21];
            v24 = [(PXCuratedLibraryUIViewController *)self _hitTestAssetReferenceAtLocation:v21 inCoordinateSpace:?];
            v20 = v24 != 0;
            if (v24)
            {
              [(PXCuratedLibraryUIViewController *)self _presentOneUpForAssetReference:v24 configurationHandler:&__block_literal_global_557];
            }
          }
        }
      }
    }

    v25 = [allowedActions containsObject:@"PXCuratedLibraryActionPinchToSwitchZoomLevel"];
    if (((v20 | v15) & 1) != 0 || !v25)
    {
      [v22 reset];
    }

    else
    {
      [pinchCopy scale];
      v27 = v26;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_2;
      v31[3] = &unk_1E7733D30;
      v32 = v21;
      v33 = pinchCopy;
      v34 = viewModel;
      selfCopy = self;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_3;
      v29[3] = &unk_1E7748D18;
      v30 = v34;
      [v22 filterPinchGestureWithScale:v31 initialPinchHandler:v29 subsequentDirectionChangeHandler:v27];
    }
  }
}

uint64_t __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    v8 = [*(a1 + 56) zoomLevelControl];
    v9 = [v8 zoomLevelDisplayedBeforeZoomLevel:{objc_msgSend(*(a1 + 48), "zoomLevel")}];

    if (v9)
    {
      v10 = *(a1 + 48);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_2_567;
      v12[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
      v12[4] = v9;
      [v10 performChanges:v12];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__62105;
    v18 = __Block_byref_object_dispose__62106;
    v19 = 0;
    v3 = *(a1 + 32);
    [*(a1 + 40) locationInView:v3];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_565;
    v13[3] = &unk_1E7733D08;
    v13[4] = &v14;
    [v3 enumerateCuratedLibraryHitTestResultsAtPoint:&unk_1F19101E0 withControls:v13 usingBlock:?];
    if (v15[5])
    {
      v4 = [*(a1 + 48) actionManager];
      v5 = [v4 actionPerformerForHitTestResult:v15[5]];

      v6 = [v5 actionType];
      v7 = [v6 isEqualToString:@"PXCuratedLibraryActionNavigateToNextZoomLevel"];

      if (v7)
      {
        [v5 performActionWithCompletionHandler:0];
      }
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

uint64_t __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) zoomLevelInDirection:a2 fromZoomLevel:{objc_msgSend(*(a1 + 32), "zoomLevel")}];
  if ((result - 1) <= 2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_4;
    v5[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v5[4] = result;
    return [v4 performChanges:v5];
  }

  return result;
}

- (BOOL)_scrollToNextSectionInDirection:(int64_t)direction animated:(BOOL)animated
{
  if (!direction)
  {
    return 0;
  }

  animatedCopy = animated;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  if ([layout presentedZoomLevel] == 3)
  {
    [layout visibleRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [layout safeAreaInsets];
    v39.size.height = v16;
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v40 = CGRectInset(v39, 0.0, -1.0);
    v33 = 0;
    v34 = &v33;
    v35 = 0x4010000000;
    v36 = &unk_1A561E057;
    v17 = *(MEMORY[0x1E695F050] + 16);
    v37 = *MEMORY[0x1E695F050];
    v38 = v17;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __77__PXCuratedLibraryUIViewController__scrollToNextSectionInDirection_animated___block_invoke;
    v31[3] = &unk_1E7733CE0;
    v32 = v40;
    v31[4] = &v33;
    v31[5] = direction;
    [layout enumerateSectionBoundariesWithOptions:(direction >> 62) & 2 usingBlock:v31];
    IsNull = CGRectIsNull(v34[1]);
    if (!IsNull)
    {
      gridView = [viewProvider gridView];
      rootLayout = [gridView rootLayout];
      [rootLayout convertRect:layout fromDescendantLayout:{v34[1].origin.x, v34[1].origin.y, v34[1].size.width, v34[1].size.height}];
      p_x = &v34->origin.x;
      v34[1].origin.x = v22;
      p_x[5] = v23;
      p_x[6] = v24;
      p_x[7] = v25;

      x = v34[1].origin.x;
      y = v34[1].origin.y;
      scrollViewController = [gridView scrollViewController];
      [scrollViewController scrollRectToVisible:4 avoidingContentInsetEdges:animatedCopy animated:{x, y, v13, v15}];
    }

    v29 = !IsNull;
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __77__PXCuratedLibraryUIViewController__scrollToNextSectionInDirection_animated___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  MinY = CGRectGetMinY(*&a2);
  v15 = *(a1 + 40);
  if (v15 < 0)
  {
    if (MinY < CGRectGetMinY(*(a1 + 48)))
    {
LABEL_6:
      v16 = *(*(a1 + 32) + 8);
      v16[4] = a2;
      v16[5] = a3;
      v16[6] = a4;
      v16[7] = a5;
      *a8 = 1;
      return;
    }

    v15 = *(a1 + 40);
  }

  if (v15 >= 1 && MinY > CGRectGetMaxY(*(a1 + 48)))
  {
    goto LABEL_6;
  }
}

- (BOOL)_handleTapOnTitleWithHitTestResult:(id)result
{
  resultCopy = result;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  assetCollectionReference = [resultCopy assetCollectionReference];

  v8 = 0;
  if ([layout presentedZoomLevel] == 3 && assetCollectionReference)
  {
    v9 = +[PXCuratedLibrarySettings sharedInstance];
    enableTapOnTitleToScroll = [v9 enableTapOnTitleToScroll];

    if (enableTapOnTitleToScroll && ([layout sectionBoundariesForAssetCollectionReference:assetCollectionReference], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, !CGRectIsNull(v27)))
    {
      gridView = [viewProvider gridView];
      rootLayout = [gridView rootLayout];
      [rootLayout convertRect:layout fromDescendantLayout:{x, y, width, height}];
      v18 = v17;
      v20 = v19;

      [gridView visibleBounds];
      v22 = v21;
      v24 = v23;
      scrollViewController = [gridView scrollViewController];
      v8 = 1;
      [scrollViewController scrollRectToVisible:4 avoidingContentInsetEdges:1 animated:{v18, v20, v22, v24}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_handleTapWithHitTestResult:(id)result keyModifierFlags:(int64_t)flags
{
  v35 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = resultCopy;
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    if (flags & 0x100000) != 0 && ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      v10 = 1;
    }

    else
    {
      if ((flags & 0x20000) != 0)
      {
        v10 = 0;
        v12 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] ^ 1;
LABEL_10:
        control = [v7 control];
        if (control == 6)
        {
          v11 = [(PXCuratedLibraryUIViewController *)self _handleTapOnTitleWithHitTestResult:v7];
LABEL_40:

          goto LABEL_41;
        }

        if (control != 1)
        {
          actionManager = [viewModel actionManager];
          v18 = [actionManager actionPerformerForHitTestResult:v7];

          v11 = v18 != 0;
          if (v18)
          {
            [v18 performActionWithCompletionHandler:0];
          }

          goto LABEL_40;
        }

        dragController = [(PXCuratedLibraryUIViewController *)self dragController];
        isDragSessionActive = [dragController isDragSessionActive];

        if (isDragSessionActive)
        {
          layout = PLCuratedLibraryGetLog();
          if (os_log_type_enabled(layout, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3C1C000, layout, OS_LOG_TYPE_DEBUG, "Ignoring tap since it is handled by the drag interaction.", buf, 2u);
          }
        }

        else
        {
          allowedActions = [viewModel allowedActions];
          v20 = [allowedActions containsObject:@"PXCuratedLibraryActionAllPhotosZoomIn"];

          if (v20 && ([viewProvider zoomablePhotosInteraction], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "assetReference"), v22 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v21, "handleTapOnAssetReference:", v22), v22, v21, v29))
          {
            layout = [viewProvider layout];
            [layout clearLastVisibleAreaAnchoringInformation];
          }

          else
          {
            if ((v12 & 1) != 0 || ![viewProvider ensureSelectMode])
            {
              if (([viewModel isSelecting] & 1) == 0 && (!v10 || !objc_msgSend(viewProvider, "ensureSelectMode")))
              {
                assetReference = [v7 assetReference];
                [(PXCuratedLibraryUIViewController *)self _presentOneUpForAssetReference:assetReference configurationHandler:0];
LABEL_39:

                v11 = 1;
                goto LABEL_40;
              }

              v26 = PLCuratedLibraryGetLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109888;
                *&buf[4] = v10;
                *&buf[8] = 1024;
                *&buf[10] = [viewModel isSelecting];
                *&buf[14] = 2048;
                *&v34 = flags;
                WORD4(v34) = 1024;
                *(&v34 + 10) = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
                _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEBUG, "[PXCuratedLibraryUIViewController] Handling tap wants toggle selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
              }

              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __81__PXCuratedLibraryUIViewController__handleTapWithHitTestResult_keyModifierFlags___block_invoke;
              v30[3] = &unk_1E7748B68;
              v31 = v7;
              [viewModel performChanges:v30];

LABEL_38:
              assetReference = [(UIViewController *)self px_splitViewController];
              [assetReference requestFocusUpdateWithPreferredFocusEnvironment:self];
              goto LABEL_39;
            }

            v23 = PLCuratedLibraryGetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109888;
              *&buf[4] = 1;
              *&buf[8] = 1024;
              *&buf[10] = [viewModel isSelecting];
              *&buf[14] = 2048;
              *&v34 = flags;
              WORD4(v34) = 1024;
              *(&v34 + 10) = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
              _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEBUG, "[PXCuratedLibraryUIViewController] Handling tap wants range selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
            }

            *buf = 0u;
            v34 = 0u;
            assetReference2 = [v7 assetReference];
            v25 = assetReference2;
            if (assetReference2)
            {
              [assetReference2 indexPath];
            }

            else
            {
              *buf = 0u;
              v34 = 0u;
            }

            layout = [viewModel selectionManager];
            v32[0] = *buf;
            v32[1] = v34;
            [layout extendSelectionToItemIndexPath:v32 withDelegate:viewProvider];
          }
        }

        goto LABEL_38;
      }

      v10 = 0;
    }

    v12 = 1;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_41:

  return v11;
}

void __81__PXCuratedLibraryUIViewController__handleTapWithHitTestResult_keyModifierFlags___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assetReference];
  [v3 toggleSelectionForAssetReference:v4 updateCursorIndexPath:1];
}

- (void)_setWantsOptionalChromeVisible:(BOOL)visible changeReason:(int64_t)reason
{
  if (visible || ![(PXCuratedLibraryUIViewController *)self isInUnselectedTab])
  {
    v7 = *MEMORY[0x1E69DE248];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PXCuratedLibraryUIViewController__setWantsOptionalChromeVisible_changeReason___block_invoke;
    v8[3] = &unk_1E7733CB8;
    visibleCopy = visible;
    v8[4] = self;
    v8[5] = reason;
    [MEMORY[0x1E69DD250] px_animateUsingDefaultDampedEaseInEaseOutWithDuration:v8 animations:0 completion:v7];
  }
}

void __80__PXCuratedLibraryUIViewController__setWantsOptionalChromeVisible_changeReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PXCuratedLibraryUIViewController__setWantsOptionalChromeVisible_changeReason___block_invoke_2;
  v4[3] = &__block_descriptor_41_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v5 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  [v3 performChanges:v4];
}

- (BOOL)_handleTapToToggleChromeWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [recognizerCopy locationInView:gridView];
  v7 = v6;

  [gridView safeAreaInsets];
  v9 = v8;
  v11 = v10 + 12.5;
  [gridView bounds];
  v12 = CGRectGetMaxY(v25) + -12.5 - v9;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];

  layoutOrientation = [spec layoutOrientation];
  sizeClass = [spec sizeClass];
  v19 = v7 <= v12 && v7 >= v11;
  isSelecting = [viewModel isSelecting];
  v22 = layoutOrientation != 2 || sizeClass != 1 || v19;
  v23 = v22 | isSelecting;
  if (((v22 | isSelecting) & 1) == 0)
  {
    -[PXCuratedLibraryUIViewController _setWantsOptionalChromeVisible:changeReason:](self, "_setWantsOptionalChromeVisible:changeReason:", [viewModel wantsOptionalChromeVisible] ^ 1, 1);
  }

  return (v23 & 1) == 0;
}

- (void)_handlePress:(id)press
{
  if (![(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {

    [(PXCuratedLibraryUIViewController *)self _presentOneUpForSingleSelectedAssetWithActivity:1];
  }
}

- (void)_handleTapWithHitTestResults:(id)results tapGesture:(id)gesture
{
  v18 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  gestureCopy = gesture;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (-[PXCuratedLibraryUIViewController _handleTapWithHitTestResult:keyModifierFlags:](self, "_handleTapWithHitTestResult:keyModifierFlags:", *(*(&v13 + 1) + 8 * v12), [gestureCopy modifierFlags]))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    skimmingController = [(PXCuratedLibraryUIViewController *)self skimmingController];
    state = [skimmingController state];

    if (state != 2 && ![(PXCuratedLibraryUIViewController *)self _handleTapToToggleChromeWithGestureRecognizer:tapCopy])
    {
      gridView = [(PXCuratedLibraryUIViewController *)self gridView];
      [tapCopy locationInView:gridView];
      v8 = [gridView hitTestResultsAtPoint:?];
      filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
      if ([filterTipController isPresentingTipView])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __47__PXCuratedLibraryUIViewController__handleTap___block_invoke;
        v10[3] = &unk_1E774A1B8;
        v10[4] = self;
        v11 = v8;
        v12 = tapCopy;
        [filterTipController dismissTipViewWithCompletion:v10];
      }

      else
      {
        [(PXCuratedLibraryUIViewController *)self _handleTapWithHitTestResults:v8 tapGesture:tapCopy];
      }
    }
  }
}

- (BOOL)_handleHoverWithHitTestResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = resultCopy;
    if (([v5 control] - 1) > 2)
    {
      LOBYTE(assetCollectionReference) = 0;
    }

    else
    {
      assetReference = [v5 assetReference];
      if (assetReference)
      {
        assetCollectionReference = assetReference;
LABEL_8:
        viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
        viewModel = [viewProviderIfLoaded viewModel];

        v17 = 0u;
        v18 = 0u;
        currentDataSource = [viewModel currentDataSource];
        v11 = currentDataSource;
        if (currentDataSource)
        {
          [currentDataSource indexPathForObjectReference:assetCollectionReference];
        }

        else
        {
          v17 = 0u;
          v18 = 0u;
        }

        selectionManager = [viewModel selectionManager];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __66__PXCuratedLibraryUIViewController__handleHoverWithHitTestResult___block_invoke;
        v14[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
        v15 = v17;
        v16 = v18;
        [selectionManager performChanges:v14];

        LOBYTE(assetCollectionReference) = 1;
        goto LABEL_12;
      }

      assetCollectionReference = [v5 assetCollectionReference];
      if (assetCollectionReference)
      {
        goto LABEL_8;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  LOBYTE(assetCollectionReference) = 0;
LABEL_13:

  return assetCollectionReference;
}

uint64_t __66__PXCuratedLibraryUIViewController__handleHoverWithHitTestResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (void)_handleHoverWithHitTestResults:(id)results hoverGesture:(id)gesture
{
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  gestureCopy = gesture;
  if ([gestureCopy state] != 1 && objc_msgSend(gestureCopy, "state") != 2)
  {
    goto LABEL_12;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewModel = resultsCopy;
  v9 = [viewModel countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v9)
  {
LABEL_11:

LABEL_12:
    viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    viewModel = [viewProviderIfLoaded viewModel];

    selectionManager = [viewModel selectionManager];
    [selectionManager performChanges:&__block_literal_global_549];

    goto LABEL_13;
  }

  v10 = v9;
  v11 = *v16;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v16 != v11)
    {
      objc_enumerationMutation(viewModel);
    }

    if ([(PXCuratedLibraryUIViewController *)self _handleHoverWithHitTestResult:*(*(&v15 + 1) + 8 * v12), v15])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [viewModel countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

LABEL_13:
}

uint64_t __80__PXCuratedLibraryUIViewController__handleHoverWithHitTestResults_hoverGesture___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(off_1E7722228 + 1);
  v4[0] = *off_1E7722228;
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (void)_handleHover:(id)hover
{
  hoverCopy = hover;
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  [hoverCopy locationInView:gridView];
  v5 = [gridView hitTestResultsAtPoint:?];
  [(PXCuratedLibraryUIViewController *)self _handleHoverWithHitTestResults:v5 hoverGesture:hoverCopy];
}

- (void)_scrollToBottomAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  enableCustomScrollToTopOrBottom = [v5 enableCustomScrollToTopOrBottom];

  if (!enableCustomScrollToTopOrBottom || ![(PXCuratedLibraryUIViewController *)self _scrollToNextSectionInDirection:1 animated:animatedCopy])
  {
    _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
    [_scrollView px_scrollToEdge:3 animated:animatedCopy];

    [(PXCuratedLibraryUIViewController *)self _handleScrolledAtBottom];
  }
}

- (id)pu_debugCurrentlySelectedAssets
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];

  return allItemsEnumerator;
}

- (id)_toolbarButtonConfigurationWithSymbolName:(id)name
{
  v3 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:name];
  v4 = PXCuratedLibraryToolbarBackdropGroupName;
  background = [v3 background];
  [background _setVisualEffectGroupName:v4];

  return v3;
}

- (PXPhotosCloseButtonController)closeButtonController
{
  closeButtonController = self->_closeButtonController;
  if (!closeButtonController)
  {
    v4 = [(PXCuratedLibraryUIViewController *)self _toolbarButtonConfigurationWithSymbolName:@"xmark"];
    v5 = [[PXPhotosCloseButtonController alloc] initWithButtonConfiguration:v4];
    v6 = self->_closeButtonController;
    self->_closeButtonController = v5;

    [(PXPhotosCloseButtonController *)self->_closeButtonController setDelegate:self];
    closeButtonController = self->_closeButtonController;
  }

  return closeButtonController;
}

- (PXCuratedLibraryFilterToggleButtonController)filterButtonController
{
  filterButtonController = self->_filterButtonController;
  if (!filterButtonController)
  {
    v4 = [(PXCuratedLibraryUIViewController *)self _toolbarButtonConfigurationWithSymbolName:@"line.3.horizontal.decrease"];
    v5 = [PXCuratedLibraryFilterToggleButtonController alloc];
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    v8 = [(PXCuratedLibraryFilterToggleButtonController *)v5 initWithViewModel:viewModel buttonConfiguration:v4];
    v9 = self->_filterButtonController;
    self->_filterButtonController = v8;

    filterButtonController = self->_filterButtonController;
  }

  return filterButtonController;
}

- (id)_buttonForEllipsisButtonAction
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  floatingHeaderLayout = [layout floatingHeaderLayout];
  ellipsisButtonActionPerformer = [floatingHeaderLayout ellipsisButtonActionPerformer];
  v8 = [floatingHeaderLayout spriteReferenceForObjectReference:ellipsisButtonActionPerformer];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [gridView viewForSpriteReference:v8];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v14 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1632 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.gridView viewForSpriteReference:spriteReference]", v14, px_descriptionForAssertionMessage}];
    }
  }

  return v10;
}

- (CGRect)_rectForEllipsisActionPerformerButton
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  layout = [viewProvider layout];
  floatingHeaderLayout = [layout floatingHeaderLayout];
  ellipsisButtonActionPerformer = [floatingHeaderLayout ellipsisButtonActionPerformer];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  buttonSpriteReference = [ellipsisButtonActionPerformer buttonSpriteReference];
  v9 = [gridView regionOfInterestForSpriteReference:buttonSpriteReference];

  gridView2 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v9 rectInCoordinateSpace:gridView2];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)setCplUIStatusProvider:(id)provider
{
  providerCopy = provider;
  cplUIStatusProvider = self->_cplUIStatusProvider;
  if (cplUIStatusProvider != providerCopy)
  {
    v8 = providerCopy;
    [(PXCPLUIStatusProvider *)cplUIStatusProvider unregisterChangeObserver:self context:PXCPLUIStatusProviderObservationContext_62237];
    objc_storeStrong(&self->_cplUIStatusProvider, provider);
    [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider registerChangeObserver:self context:PXCPLUIStatusProviderObservationContext_62237];
    statusController = [(PXCuratedLibraryUIViewController *)self statusController];
    [statusController setStatusProvider:v8];

    providerCopy = v8;
  }
}

- (void)_saveCurrentAllPhotosScrollPosition
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 4)
  {
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    layout = [viewProvider2 layout];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PXCuratedLibraryUIViewController__saveCurrentAllPhotosScrollPosition__block_invoke;
    v9[3] = &unk_1E7733C70;
    v10 = layout;
    selfCopy = self;
    v8 = layout;
    [v8 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v9];
  }
}

void __71__PXCuratedLibraryUIViewController__saveCurrentAllPhotosScrollPosition__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v13;
  if (isKindOfClass)
  {
    v8 = [v13 asset];
    v9 = [v8 uuid];

    if (v9)
    {
      v10 = +[PXCuratedLibrarySettings sharedInstance];
      [v10 setSavedAllPhotosScrollPositionAnchorAssetIdentifier:v9];
      [v10 save];
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Scroll Position Saved" message:@"The current (approximate) scroll position will be restored on launch." preferredStyle:1];
      v12 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
      [v11 addAction:v12];

      [*(a1 + 40) presentViewController:v11 animated:1 completion:0];
    }

    v7 = v13;
  }

  *a4 = 1;
}

- (id)_regionOfInterestForAssetReference:(id)reference image:(id *)image
{
  referenceCopy = reference;
  [(PXCuratedLibraryUIViewController *)self gridView];
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibraryUIViewController *)self gridView];
  [objc_claimAutoreleasedReturnValue() rootLayout];
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibraryUIViewController *)self viewProvider];
  [objc_claimAutoreleasedReturnValue() mediaProvider];
  objc_claimAutoreleasedReturnValue();
  PXRegionOfInterestForAssetReference();
}

- (id)_scrollView
{
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (void)_updateFirstResponderIfNeeded
{
  v3 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  if (!v3)
  {
    viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel = [viewProvider viewModel];
    isSelecting = [viewModel isSelecting];

    if (isSelecting)
    {

      [(PXCuratedLibraryUIViewController *)self becomeFirstResponder];
    }

    else
    {

      [(PXCuratedLibraryUIViewController *)self resignFirstResponder];
    }
  }
}

- (BOOL)_requestExpansionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(PXCuratedLibraryUIViewController *)self delegate];
  LOBYTE(animatedCopy) = [delegate curatedLibraryViewControllerExpand:self animated:animatedCopy];

  return animatedCopy;
}

- (void)_requestExpansionForSelectionIfNeeded
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];

  delegate = [(PXCuratedLibraryUIViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (([viewModel isExpanded] & 1) == 0 && objc_msgSend(viewModel, "isSelecting"))
    {
      [(PXCuratedLibraryUIViewController *)self _requestExpansionAnimated:1];
    }

    selectionSnapshot = [viewModel selectionSnapshot];
    if ([viewModel isExpanded])
    {
      goto LABEL_21;
    }

    if (![selectionSnapshot isAnyItemSelected])
    {
      goto LABEL_21;
    }

    previousSelectedObject = [(PXCuratedLibraryUIViewController *)self previousSelectedObject];
    if (!previousSelectedObject)
    {
      goto LABEL_21;
    }

    dataSource = previousSelectedObject;
    firstObject = [selectionSnapshot firstObject];
    previousSelectedObject2 = [(PXCuratedLibraryUIViewController *)self previousSelectedObject];
    v13 = previousSelectedObject2;
    if (firstObject == previousSelectedObject2)
    {

LABEL_20:
      goto LABEL_21;
    }

    v14 = [firstObject isEqual:previousSelectedObject2];

    if (v14)
    {
LABEL_21:
      firstObject2 = [selectionSnapshot firstObject];
      [(PXCuratedLibraryUIViewController *)self setPreviousSelectedObject:firstObject2];

      goto LABEL_22;
    }

    dataSource = [selectionSnapshot dataSource];
    if (dataSource)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selectionSnapshot)
        {
LABEL_13:
          [selectionSnapshot firstSelectedIndexPath];
LABEL_19:
          v20 = [dataSource assetReferenceAtItemIndexPath:v22];
          [(PXCuratedLibraryUIViewController *)self _requestExpansionIfNeededForInteractionWithAssetReference:v20 animated:1];

          goto LABEL_20;
        }

LABEL_18:
        memset(v22, 0, sizeof(v22));
        goto LABEL_19;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1485 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"snapshot.dataSource", v17, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1485 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"snapshot.dataSource", v17}];
    }

    if (selectionSnapshot)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_22:
}

- (void)_requestExpansionIfNeededForInteractionWithAssetReference:(id)reference animated:(BOOL)animated
{
  animatedCopy = animated;
  v53 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  isExpanded = [viewModel isExpanded];

  if ((isExpanded & 1) == 0)
  {
    v10 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:referenceCopy image:0];
    view = [(PXCuratedLibraryUIViewController *)self view];
    superview = [view superview];
    v12Superview = [superview superview];
    v14 = v12Superview;
    if (v12Superview)
    {
      v15 = v12Superview;
    }

    else
    {
      v15 = view;
    }

    v16 = v15;

    px_rootScrollView = [view px_rootScrollView];
    v18 = px_rootScrollView;
    if (px_rootScrollView)
    {
      v19 = px_rootScrollView;
    }

    else
    {
      v19 = view;
    }

    v20 = v19;

    [v10 rectInCoordinateSpace:v20];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 bounds];
    v47 = v30;
    v48 = v29;
    v49 = v31;
    v50 = v32;
    [v16 safeAreaInsets];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v54.origin.x = v22;
    v54.origin.y = v24;
    v54.size.width = v26;
    v54.size.height = v28;
    if (CGRectIsNull(v54) || (v55.origin.x = v22, v55.origin.y = v24, v55.size.width = v26, v55.size.height = v28, MidY = CGRectGetMidY(v55), v56.origin.y = v47 + v34, v56.origin.x = v48 + v36, v56.size.width = v49 - (v36 + v40), v56.size.height = v50 - (v34 + v38), MidY <= CGRectGetMinY(v56)))
    {
      v42 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        asset = [referenceCopy asset];
        uuid = [asset uuid];
        *buf = 138543362;
        v52 = uuid;
        _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEFAULT, "Expanding due to interaction with %{public}@ which is outside of safeArea", buf, 0xCu);
      }

      if (![(PXCuratedLibraryUIViewController *)self _requestExpansionAnimated:animatedCopy])
      {
        PXAssertGetLog();
      }

      if (!animatedCopy)
      {
        updateDelegate = [(PXCuratedLibraryUIViewController *)self updateDelegate];
        [updateDelegate curatedLibraryViewRequestImmediateUpdate:self];

        px_rootView = [view px_rootView];
        [px_rootView layoutIfNeeded];
      }
    }
  }
}

- (void)_requestFocusUpdateWithAssetReference:(id)reference
{
  [(PXCuratedLibraryUIViewController *)self setPreferredFocusAssetReference:reference];
  v4 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  [v4 requestFocusUpdateToEnvironment:self];
}

- (void)_requestFocusUpdateForCursorAsset
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];

  v10 = 0u;
  v11 = 0u;
  if (selectionSnapshot)
  {
    [selectionSnapshot cursorIndexPath];
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != *off_1E7721F68)
  {
    dataSource = [selectionSnapshot dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v8 = [dataSource objectReferenceAtIndexPath:v9];

    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:v8];
  }
}

- (void)_updateScrollView
{
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  contentFillsTopSafeArea = [viewModel contentFillsTopSafeArea];

  [scrollView safeAreaInsets];
  v9 = -v8;
  v10 = v8 <= 200.0;
  v11 = -200.0;
  if (!v10)
  {
    v11 = v9;
  }

  if (!contentFillsTopSafeArea)
  {
    v11 = 0.0;
  }

  [scrollView _setPocketInsets:{v11, 0.0, 0.0, 0.0}];
}

- (void)_updateTrackedScrollLevelIfNeeded
{
  trackedScrollContext = [(PXCuratedLibraryUIViewController *)self trackedScrollContext];
  v5 = v4;
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  zoomLevel = [viewModel zoomLevel];
  scrollRegime = [viewModel scrollRegime];
  if (trackedScrollContext)
  {
    [PXCuratedLibraryAnimationTracker scrollAnimationDidEndWithScrollContext:trackedScrollContext, v5];
  }

  if (zoomLevel)
  {
    [PXCuratedLibraryAnimationTracker scrollAnimationDidBeginWithScrollContext:zoomLevel, scrollRegime];
  }

  [(PXCuratedLibraryUIViewController *)self setTrackedScrollContext:zoomLevel, scrollRegime];
}

- (void)_updateDismissalInteractionControllerProperties
{
  dismissalInteractionController = [(PXCuratedLibraryUIViewController *)self dismissalInteractionController];
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  viewModel = [viewProviderIfLoaded viewModel];

  configuration = [viewModel configuration];
  allowedInteractiveDismissBehaviors = [configuration allowedInteractiveDismissBehaviors];

  [dismissalInteractionController setSwipeDownAllowed:allowedInteractiveDismissBehaviors & 1];
  [dismissalInteractionController setSwipeUpAllowed:(allowedInteractiveDismissBehaviors >> 1) & 1];
}

- (void)_updateStatusBarStyle
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = MEMORY[0x1E69DD250];
  [v3 statusBarGradientAndStyleFadeDuration];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PXCuratedLibraryUIViewController__updateStatusBarStyle__block_invoke;
  v5[3] = &unk_1E774C648;
  v5[4] = self;
  [v4 animateWithDuration:v5 animations:?];
}

- (void)_updateSecondaryToolbarControllerContainerView
{
  if (!self->_secondaryToolbarContainerView)
  {
    traitCollection = [(PXCuratedLibraryUIViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      [(PXCuratedLibraryUIViewController *)self tabBar];
    }

    else
    {
      [(PXCuratedLibraryUIViewController *)self view];
    }
    v6 = ;
    [(PXSecondaryToolbarController *)self->_secondaryToolbarController setContainerView:v6];
  }
}

- (BOOL)_isSecondaryToolbarTabBarAccessoryPlacementValid
{
  secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  tabBarAccessoryPlacement = [secondaryToolbarController tabBarAccessoryPlacement];
  if (tabBarAccessoryPlacement)
  {
    tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
    [tabBar frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(PXCuratedLibraryUIViewController *)self lastUsedTabBarFrame];
    v21.origin.x = v14;
    v21.origin.y = v15;
    v21.size.width = v16;
    v21.size.height = v17;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    v18 = CGRectEqualToRect(v20, v21);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __59__PXCuratedLibraryUIViewController__updateSecondaryToolbar__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(a1 + 40) - 1) > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) isSecondaryToolbarVisible];
  }

  [v4 setWantsFooterMask:v3];
  [v4 setFooterMaskVerticalOffset:*(a1 + 64) * 0.25];
}

- (void)_updateIsModalInPresentation
{
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  -[PXCuratedLibraryUIViewController px_setModalInPresentation:](self, "px_setModalInPresentation:", [viewModel isModalInPresentation]);
}

- (void)setCanShowFooter:(BOOL)footer
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_canShowFooter != footer)
  {
    self->_canShowFooter = footer;
    v4 = PLCuratedLibraryGetLog();
    v5 = os_signpost_id_generate(v4);
    v6 = v4;
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      canShowFooter = self->_canShowFooter;
      v14[0] = 67109120;
      v14[1] = canShowFooter;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "canShowFooter", "value: %i", v14, 8u);
    }

    if (self->_canShowFooter)
    {
      viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
      footerController = [viewProvider footerController];
      [footerController performChanges:&__block_literal_global_468];

      bottomSpacerController = [(PXCuratedLibraryUIViewController *)self bottomSpacerController];
      [bottomSpacerController performChanges:&__block_literal_global_471];
    }

    v12 = v7;
    v13 = v12;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v14[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_END, v5, "canShowFooter", "", v14, 2u);
    }
  }
}

- (void)setCanShowSecondaryToolbar:(BOOL)toolbar
{
  if (self->_canShowSecondaryToolbar != toolbar)
  {
    self->_canShowSecondaryToolbar = toolbar;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];

    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarTabBarAccessoryPlacement];
  }
}

- (void)_setCanShowSecondaryToolbar:(BOOL)toolbar animated:(BOOL)animated
{
  animatedCopy = animated;
  toolbarCopy = toolbar;
  if ([(PXCuratedLibraryUIViewController *)self canShowSecondaryToolbar]!= toolbar)
  {
    if (toolbarCopy && animatedCopy && ![(PXCuratedLibraryUIViewController *)self _isSecondaryToolbarTabBarAccessoryPlacementValid])
    {
      [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarTabBarAccessoryPlacement];
      secondaryToolbarController = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
      [secondaryToolbarController updateIfNeeded];
    }

    v8 = 0.3;
    v9[1] = 3221225472;
    v9[0] = MEMORY[0x1E69E9820];
    v9[2] = __73__PXCuratedLibraryUIViewController__setCanShowSecondaryToolbar_animated___block_invoke;
    v9[3] = &unk_1E7749428;
    if (!animatedCopy)
    {
      v8 = 0.0;
    }

    v9[4] = self;
    v10 = toolbarCopy;
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8];
  }
}

void __73__PXCuratedLibraryUIViewController__setCanShowSecondaryToolbar_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanShowSecondaryToolbar:*(a1 + 40)];
  v2 = [*(a1 + 32) secondaryToolbarController];
  [v2 updateIfNeeded];
}

void __77__PXCuratedLibraryUIViewController__configureTabBarCollapsedStateObservation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCanShowSecondaryToolbar];
}

- (void)setDidAppearInitially:(BOOL)initially
{
  if (self->_didAppearInitially != initially)
  {
    self->_didAppearInitially = initially;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViews];

    [(PXCuratedLibraryUIViewController *)self _configureTabBarCollapsedStateObservation];
  }
}

- (void)px_containedViewControllerModalStateChanged
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 px_containedViewControllerModalStateChanged];
  dismissalInteractionController = [(PXCuratedLibraryUIViewController *)self dismissalInteractionController];
  [dismissalInteractionController containedViewControllerModalStateChanged];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  [(PXCuratedLibraryUIViewController *)self minimumContentOverlayInsets];
  UIEdgeInsetsMax();
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 _setContentOverlayInsets:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v15 traitCollectionDidChange:changeCopy];
  traitCollection = [(PXCuratedLibraryUIViewController *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {
    [(PXCuratedLibraryUIViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 1)
  {
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    gridView = [viewProvider2 gridView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__PXCuratedLibraryUIViewController_traitCollectionDidChange___block_invoke;
    v14[3] = &unk_1E774C648;
    v14[4] = self;
    [gridView installLayoutCompletionHandler:v14];
  }

  horizontalSizeClass = [changeCopy horizontalSizeClass];
  if (horizontalSizeClass != [traitCollection horizontalSizeClass])
  {
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarControllerContainerView];
  }

  traitCollection2 = [(PXCuratedLibraryUIViewController *)self traitCollection];
  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [filterTipController setTraitCollection:traitCollection2];

  [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
}

- (int64_t)preferredStatusBarStyle
{
  _contentUnavailableConfiguration = [(PXCuratedLibraryUIViewController *)self _contentUnavailableConfiguration];

  if (_contentUnavailableConfiguration)
  {
    return 0;
  }

  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  if ([viewModel wantsDarkStatusBar])
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  px_extendedTraitCollection = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
  userInterfaceStyle = [px_extendedTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:0 changeReason:3];
}

- (BOOL)isInSelectedTab
{
  selfCopy = self;
  tabBarController = [(PXCuratedLibraryUIViewController *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];
  LOBYTE(selfCopy) = [(UIViewController *)selfCopy px_isDescendantOfViewController:selectedViewController];

  return selfCopy;
}

- (BOOL)isInUnselectedTab
{
  tabBarController = [(PXCuratedLibraryUIViewController *)self tabBarController];
  if (tabBarController)
  {
    v4 = ![(PXCuratedLibraryUIViewController *)self isInSelectedTab];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v9 viewDidDisappear:disappear];
  isViewLoaded = [(PXCuratedLibraryUIViewController *)self isViewLoaded];
  viewProviderIfLoaded = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  videoPlaybackController = [viewProviderIfLoaded videoPlaybackController];
  [videoPlaybackController setIsContentViewVisible:0];

  userActivityController = [(PXCuratedLibraryUIViewController *)self userActivityController];
  [userActivityController setActive:0];

  eventTracker = [viewProviderIfLoaded eventTracker];
  [eventTracker logViewControllerDidDisappear:self];

  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    if ([(PXCuratedLibraryUIViewController *)self isInUnselectedTab])
    {
      [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:1 changeReason:0];
    }

    [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
    [viewProviderIfLoaded gridViewDidDisappear];
  }

  if (isViewLoaded != [(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    PXAssertGetLog();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v11 viewWillDisappear:disappear];
  isViewLoaded = [(PXCuratedLibraryUIViewController *)self isViewLoaded];
  gridView = [(PXCuratedLibraryUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];

  if (([scrollViewController isDecelerating] & 1) != 0 || objc_msgSend(scrollViewController, "isDragging"))
  {
    trackedScrollContext = [(PXCuratedLibraryUIViewController *)self trackedScrollContext];
    [PXCuratedLibraryAnimationTracker scrollAnimationDidEndWithScrollContext:trackedScrollContext, v8];
  }

  v9 = +[PXCuratedLibraryAnimationTracker sharedTracker];
  [v9 zoomLevelTransitionsDidEndEarly];

  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [filterTipController setCuratedLibraryIsVisible:0];

  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility];
  }

  if (isViewLoaded != [(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    PXAssertGetLog();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v16 viewDidAppear:appear];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  [viewModel performChanges:&__block_literal_global_441];
  videoPlaybackController = [viewProvider videoPlaybackController];
  [videoPlaybackController setIsContentViewVisible:1];
  [videoPlaybackController setIsOneUpVisible:0];
  objc_initWeak(&location, self);
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_2;
  v13[3] = &unk_1E774C318;
  objc_copyWeak(&v14, &location);
  [sharedScheduler scheduleMainQueueTask:v13];

  userActivityController = [(PXCuratedLibraryUIViewController *)self userActivityController];
  [userActivityController setActive:1];

  eventTracker = [viewProvider eventTracker];
  [eventTracker logViewControllerDidAppear:self];

  filterTipController = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [filterTipController setCuratedLibraryIsVisible:1];

  [(PXCuratedLibraryUIViewController *)self additionalSafeAreaInsets];
  [(PXCuratedLibraryUIViewController *)self setAdditionalSafeAreaInsets:20.0];
  [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
  [viewProvider gridViewDidAppear];
  sharedScheduler2 = [off_1E7721858 sharedScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_3;
  v12[3] = &unk_1E774C648;
  v12[4] = self;
  [sharedScheduler2 scheduleTaskAfterCATransactionCommits:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCanShowFooter:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v7 viewWillAppear:appear];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  [viewModel performChanges:&__block_literal_global_437];
  barsController = [(PXCuratedLibraryUIViewController *)self barsController];
  [barsController updateIfNeeded];

  [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility];
}

void __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveCurrentAllPhotosScrollPosition];
}

- (void)_resetBannerView
{
  if (self->_bannerView)
  {
    navigationItem = [(PXCuratedLibraryUIViewController *)self navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    [_bottomPalette removeFromSuperview];

    navigationItem2 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    [navigationItem2 _setBottomPalette:0];

    bannerView = self->_bannerView;
    self->_bannerView = 0;
  }
}

- (void)_setContentUnavailableConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 _setContentUnavailableConfiguration:configuration];
  [(PXCuratedLibraryUIViewController *)self _updateBackgroundColor];
}

void __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke(uint64_t a1)
{
  v2 = [PXCPLStatusController alloc];
  v3 = [*(a1 + 32) viewModel];
  v11 = [(PXCPLStatusController *)v2 initWithViewModel:v3];

  v4 = [*(a1 + 40) cplUIStatusProvider];
  [(PXCPLStatusController *)v11 setStatusProvider:v4];
  v5 = +[PXLocalization titleForEmptyPhotoLibrary];
  [(PXCPLStatusController *)v11 setFallbackTitle:v5];

  v6 = [*(a1 + 40) configuration];
  v7 = [v6 photoLibrary];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PXCuratedLibraryUIViewController.m" lineNumber:612 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];
  }

  if ([PXApplicationInstallationStateProvider isAppInstalled:2])
  {
    v8 = [PXLocalization messageForEmptyPhotoLibrary:v7];
    [(PXCPLStatusController *)v11 setFallbackMessage:v8];

    v9 = +[PXLocalization openCameraButtonTitleForEmptyPhotoLibrary];
    [(PXCPLStatusController *)v11 setFallbackActionTitle:v9];

    [(PXCPLStatusController *)v11 setFallbackAction:&__block_literal_global_400_62315];
  }

  [*(a1 + 40) setStatusController:v11];
}

void __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = PXSharedLibraryEmptyLibraryTitleForViewMode(v3);
  [v4 setTitle:v5];

  v6 = PXSharedLibraryEmptyLibraryMessageForViewMode(*(a1 + 40), *(a1 + 32));
  [v4 setAttributedMessage:v6];
}

void __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] px_openCameraAppURL];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:MEMORY[0x1E695E0F8]];
}

- (id)_emptyPlaceholderMessageTextAttributesFromTextProperties:(id)properties
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  propertiesCopy = properties;
  defaultParagraphStyle = [v3 defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setAlignment:1];
  [v6 setLineBreakMode:{objc_msgSend(propertiesCopy, "lineBreakMode")}];
  v11[0] = *MEMORY[0x1E69DB648];
  font = [propertiesCopy font];
  v12[0] = font;
  v11[1] = *MEMORY[0x1E69DB650];
  color = [propertiesCopy color];

  v11[2] = *MEMORY[0x1E69DB688];
  v12[1] = color;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (void)_conditionallyUpdateEmptyPlaceholder
{
  emptyPlaceholderStatusController = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

  if (emptyPlaceholderStatusController)
  {

    [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  }
}

- (void)_addContentView:(id)view
{
  viewCopy = view;
  view = [(PXCuratedLibraryUIViewController *)self view];
  [view bounds];
  [viewCopy setFrame:?];
  viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel = [viewProvider viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  backgroundColor = [spec backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];

  [viewCopy setAutoresizingMask:18];
  legibilityContainerView = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  [view insertSubview:viewCopy belowSubview:legibilityContainerView];
}

- (void)_applicationDidHide
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  enableTabBarAccessoryControls = [v3 enableTabBarAccessoryControls];

  if (enableTabBarAccessoryControls)
  {
    if ([(PXCuratedLibraryUIViewController *)self isInSelectedTab])
    {
      tabBar = [(PXCuratedLibraryUIViewController *)self tabBar];
      _isMinimized = [tabBar _isMinimized];

      if (_isMinimized)
      {
        _scrollView = [(PXCuratedLibraryUIViewController *)self _scrollView];
        [_scrollView stopScrollingAndZooming];

        tabBar2 = [(PXCuratedLibraryUIViewController *)self tabBar];
        [tabBar2 _setMinimized:0];
      }
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObserverContext_62322 != context)
  {
    if (PXSharedLibraryStatusProviderObservationContext_62286 != context)
    {
      if (PXLibraryFilterStateObservationContext_62287 != context)
      {
        if (PXCuratedLibraryStyleGuideObserverContext == context)
        {
          if ((change & 4) != 0)
          {
            [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
            viewIfLoaded = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
            [viewIfLoaded setNeedsLayout];
          }
        }

        else if (PXZoomablePhotosViewModelObservationContext == context)
        {
          if ((change & 2) != 0)
          {
            viewProvider = [(PXCuratedLibraryUIViewController *)self viewProvider];
            viewModel = [viewProvider viewModel];
            singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
            [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:singleSelectedAssetReference];
          }
        }

        else if (PXCPLUIStatusProviderObservationContext_62237 == context)
        {
          [(PXCuratedLibraryUIViewController *)self _conditionallyUpdateEmptyPlaceholder];
        }

        else
        {
          if (ApplicationStateObservationContext != context)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:526 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          if (change)
          {
            v9 = +[PXApplicationState sharedState];
            isHidden = [v9 isHidden];

            if (isHidden)
            {
              [(PXCuratedLibraryUIViewController *)self _applicationDidHide];
            }
          }
        }

        goto LABEL_52;
      }

      if ((change & 1) == 0)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    [(PXCuratedLibraryUIViewController *)self _invalidateSecondaryToolbar];
    [(PXCuratedLibraryUIViewController *)self _invalidateEmptyPlaceholder];
    [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
    goto LABEL_52;
  }

  if (change)
  {
    [(PXCuratedLibraryUIViewController *)self _invalidateSecondaryToolbar];
    viewProvider2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    layout = [viewProvider2 layout];
    [layout clearLastVisibleAreaAnchoringInformation];

    [(PXCuratedLibraryUIViewController *)self invalidateBoopableItemsProvider];
    [(PXCuratedLibraryUIViewController *)self _requestExpansionForSelectionIfNeeded];
    [(PXCuratedLibraryUIViewController *)self _updateFirstResponderIfNeeded];
  }

  if ((change & 0x100000000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateScrollView];
  }

  if ((change & 0x804) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateTrackedScrollLevelIfNeeded];
  }

  if ((change & 4) != 0)
  {
    viewProvider3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel2 = [viewProvider3 viewModel];
    singleSelectedAssetReference2 = [viewModel2 singleSelectedAssetReference];
    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:singleSelectedAssetReference2];
  }

  if ((change & 0x1000000040) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  }

  if ((change & 0x1001000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateStatusBarStyle];
  }

  if ((change & 0x2000) != 0)
  {
    viewProvider4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel3 = [viewProvider4 viewModel];
    zoomLevelTransitionPhase = [viewModel3 zoomLevelTransitionPhase];

    if (!zoomLevelTransitionPhase)
    {
      [(PXCuratedLibraryUIViewController *)self _updateSkimmingSlideshowEnabled];
    }
  }

  if ((change & 0x400000) != 0)
  {
    viewIfLoaded2 = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
    [viewIfLoaded2 setNeedsLayout];

    if ((change & 0x10000000) == 0)
    {
LABEL_28:
      if ((change & 0x20000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }
  }

  else if ((change & 0x10000000) == 0)
  {
    goto LABEL_28;
  }

  viewProvider5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel4 = [viewProvider5 viewModel];
  cplUIStatusProvider = [viewModel4 cplUIStatusProvider];

  [(PXCuratedLibraryUIViewController *)self setCplUIStatusProvider:cplUIStatusProvider];
  [(PXCuratedLibraryUIViewController *)self _conditionallyUpdateEmptyPlaceholder];

  if ((change & 0x20000000) == 0)
  {
LABEL_29:
    if ((change & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_42:
  viewProvider6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel5 = [viewProvider6 viewModel];

  if ([viewModel5 wantsSidebarVisible] && objc_msgSend(viewModel5, "sidebarCanBecomeVisible"))
  {
    px_splitViewController = [(UIViewController *)self px_splitViewController];
    [px_splitViewController toggleSidebarVisibilityAnimated];
  }

  if ((change & 8) == 0)
  {
LABEL_30:
    if ((change & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_46:
  viewProvider7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  viewModel6 = [viewProvider7 viewModel];
  selectionSnapshot = [viewModel6 selectionSnapshot];
  isEmptySelectionAvoided = [selectionSnapshot isEmptySelectionAvoided];

  if (isEmptySelectionAvoided)
  {
    viewProvider8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    viewModel7 = [viewProvider8 viewModel];
    singleSelectedAssetReference3 = [viewModel7 singleSelectedAssetReference];
    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:singleSelectedAssetReference3];
  }

  [(PXCuratedLibraryUIViewController *)self _requestExpansionForSelectionIfNeeded];
  if ((change & 0x200000000) != 0)
  {
LABEL_31:
    [(PXCuratedLibraryUIViewController *)self _invalidateIsModalInPresentation];
  }

LABEL_32:
  if ((change & 0x2400000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];
  }

  if ((change & 0x102000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _invalidateSecondaryToolbar];
  }

  if ((change & 0x10000000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateAllowDisplayCompositing];
  }

  if ((change & 2) != 0)
  {
    goto LABEL_51;
  }

LABEL_52:
}

- (void)setIsCollapsed:(BOOL)collapsed
{
  if (self->_isCollapsed != collapsed)
  {
    collapsedCopy = collapsed;
    self->_isCollapsed = collapsed;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarLegibilityGradient];
    if (collapsedCopy)
    {
      v4 = +[PXGridTipsHelper filterAllPhotosTipID];
      [PXGridTipsHelper setTip:v4 isPresentable:0];
    }
  }
}

- (void)setNavigatedAssetReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (self->_navigatedAssetReference != referenceCopy)
  {
    v8 = referenceCopy;
    v7 = [(PXAssetReference *)referenceCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_navigatedAssetReference, reference);
      [(PXCuratedLibraryUIViewController *)self setPreferredFocusAssetReference:v8];
      v6 = v8;
    }
  }
}

void __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSkimmingSlideshowEnabled];
}

void __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSkimmingSlideshowEnabled];
}

void __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSkimmingSlideshowEnabled];
}

- (BOOL)isPresentingSearchOverlay
{
  presentedViewController = [(PXCuratedLibraryUIViewController *)self presentedViewController];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = presentedViewController;

    if (!v3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    presentedViewController = [v3 viewControllers];
    firstObject = [presentedViewController firstObject];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 containsString:@"PhotosSearchHomeController"];
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

LABEL_7:
  return v7;
}

void __48__PXCuratedLibraryUIViewController_viewProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCplActionManagerClass:objc_opt_class()];
}

- (PXCuratedLibraryUIViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:309 description:{@"%s is not available as initializer", "-[PXCuratedLibraryUIViewController initWithCoder:]"}];

  abort();
}

- (PXCuratedLibraryUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:305 description:{@"%s is not available as initializer", "-[PXCuratedLibraryUIViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXCuratedLibraryUIViewController)initWithPhotoLibrary:(id)library initialZoomLevel:(int64_t)level
{
  libraryCopy = library;
  v7 = [[PXCuratedLibraryViewConfiguration alloc] initWithPhotoLibrary:libraryCopy];

  [(PXCuratedLibraryViewConfiguration *)v7 setInitialZoomLevel:level];
  v8 = [(PXCuratedLibraryUIViewController *)self initWithConfiguration:v7];

  return v8;
}

- (PXCuratedLibraryUIViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryUIViewController;
  v5 = [(PXCuratedLibraryUIViewController *)&v17 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    legibilityContainerView = v5->_legibilityContainerView;
    v5->_legibilityContainerView = v8;

    [(UIView *)v5->_legibilityContainerView setClipsToBounds:1];
    [(UIView *)v5->_legibilityContainerView setUserInteractionEnabled:0];
    v10 = +[PXCuratedLibrarySettings sharedInstance];
    v5->_canShowSecondaryToolbar = [v10 enableTabBarAccessoryControls] ^ 1;

    v11 = [[PXCloudQuotaControllerHelper alloc] initForDismissibleOffers:1];
    cloudQuotaHelper = v5->_cloudQuotaHelper;
    v5->_cloudQuotaHelper = v11;

    [(PXCloudQuotaControllerHelper *)v5->_cloudQuotaHelper setDelegate:v5];
    photoLibrary = [configurationCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;

    [(PXCuratedLibraryUIViewController *)v5 px_enableExtendedTraitCollection];
    px_extendedTraitCollection = [(PXCuratedLibraryUIViewController *)v5 px_extendedTraitCollection];
    [configurationCopy swift_propagateEnvironmentValuesToExtendedTraitCollection:px_extendedTraitCollection];
  }

  return v5;
}

- (void)test_presentSearchOverlayWithCompletion:(id)completion
{
  completionCopy = completion;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || PFProcessIsLaunchedToExecuteTests())
  {
    barsController = [(PXCuratedLibraryUIViewController *)self barsController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__PXCuratedLibraryUIViewController_Testing__test_presentSearchOverlayWithCompletion___block_invoke;
    v8[3] = &unk_1E774C250;
    v9 = completionCopy;
    [barsController handleSearchActionWithSearchText:&stru_1F1741150 completion:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4);
  }
}

@end