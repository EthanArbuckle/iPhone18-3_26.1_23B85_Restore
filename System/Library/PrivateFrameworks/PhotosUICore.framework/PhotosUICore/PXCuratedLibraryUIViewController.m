@interface PXCuratedLibraryUIViewController
- ($0AC6E346AE4835514AAA8AC86D8F4844)trackedScrollContext;
- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)_handleGestureForFilterTipController;
- (BOOL)_handleHoverWithHitTestResult:(id)a3;
- (BOOL)_handleTapOnTitleWithHitTestResult:(id)a3;
- (BOOL)_handleTapToToggleChromeWithGestureRecognizer:(id)a3;
- (BOOL)_handleTapWithHitTestResult:(id)a3 keyModifierFlags:(int64_t)a4;
- (BOOL)_isSecondaryToolbarTabBarAccessoryPlacementValid;
- (BOOL)_presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4;
- (BOOL)_requestExpansionAnimated:(BOOL)a3;
- (BOOL)_scrollToNextSectionInDirection:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)_shouldExposeCursorAnimations;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResetToInitialState;
- (BOOL)dragController:(id)a3 shouldResizeCancelledPreviewForAssetReference:(id)a4;
- (BOOL)dragController:(id)a3 shouldSelectRearrangedAssetReferences:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isInSelectedTab;
- (BOOL)isInUnselectedTab;
- (BOOL)isPresentingSearchOverlay;
- (BOOL)isResetToInitialState;
- (BOOL)oneUpPresentation:(id)a3 allowsMultiSelectMenuForInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 commitPreviewForContextMenuInteraction:(id)a4;
- (BOOL)ppt_dismiss;
- (BOOL)pu_shouldOptOutFromChromelessBars;
- (BOOL)scrollViewControllerShouldScrollToTop:(id)a3;
- (BOOL)swipeSelectionManager:(id)a3 shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)a4;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3;
- (CGRect)_rectForEllipsisActionPerformerButton;
- (CGRect)lastUsedTabBarFrame;
- (PXActionManager)assetActionManager;
- (PXCuratedLibraryBarsController)barsController;
- (PXCuratedLibraryFilterToggleButtonController)filterButtonController;
- (PXCuratedLibrarySkimmingController)skimmingController;
- (PXCuratedLibraryUIViewController)initWithCoder:(id)a3;
- (PXCuratedLibraryUIViewController)initWithConfiguration:(id)a3;
- (PXCuratedLibraryUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXCuratedLibraryUIViewController)initWithPhotoLibrary:(id)a3 initialZoomLevel:(int64_t)a4;
- (PXCuratedLibraryViewDelegate)delegate;
- (PXCuratedLibraryViewProvider)viewProvider;
- (PXCuratedLibraryViewUpdateDelegate)updateDelegate;
- (PXGAXResponder)axNextResponder;
- (PXGView)gridView;
- (PXPhotosCloseButtonController)closeButtonController;
- (PXSelectionContainer)selectionContainer;
- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)a3 withPadding:(CGPoint)a4 forSwipeSelectionManager:(UIEdgeInsets)a5;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)legibilityClipInsets;
- (UIEdgeInsets)minimumContentOverlayInsets;
- (UITabBar)tabBar;
- (id)_assetCollectionReferenceForGroup:(id)a3;
- (id)_bestHitTestResultForCursorAtLocation:(CGPoint)a3;
- (id)_buttonForEllipsisButtonAction;
- (id)_buttonHitTestResultAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)_createPreviewViewForAssetReference:(id)a3;
- (id)_createPreviewViewForHitTestResult:(id)a3;
- (id)_dominantAssetCollectionReferenceForSkimming;
- (id)_emptyPlaceholderMessageTextAttributesFromTextProperties:(id)a3;
- (id)_hitTestAssetReferenceAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)_hitTestResultAtLocation:(CGPoint)a3 withPadding:(UIEdgeInsets)a4 swipeSelectionManager:(id)a5;
- (id)_regionOfInterestForAssetReference:(id)a3 image:(id *)a4;
- (id)_scrollView;
- (id)_toolbarButtonConfigurationWithSymbolName:(id)a3;
- (id)assetReferenceForIndexPath:(id)a3;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)barsControllerActionsForSelectionContextMenu:(id)a3;
- (id)dragController:(id)a3 draggableAssetReferenceAtLocation:(CGPoint)a4;
- (id)dragControllerAssetReferenceForBeginningSession:(id)a3;
- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 previewForDismissingToSecondaryItemWithIdentifier:(id)a4 configuration:(id)a5;
- (id)oneUpPresentation:(id)a3 previewForHighlightingSecondaryItemWithIdentifier:(id)a4 configuration:(id)a5;
- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 secondaryIdentifiersForConfiguration:(id)a4;
- (id)oneUpPresentationActionManagerForPreviewing:(id)a3;
- (id)oneUpPresentationDataSourceManager:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (id)passthroughViewsForTipForController:(id)a3;
- (id)pointerController:(id)a3 identifierForRegionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)pointerController:(id)a3 regionOfInterestForCursorAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)pointerController:(id)a3 viewForCursorInteractionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)preferredFocusEnvironments;
- (id)pu_debugCurrentlySelectedAssets;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)px_navigationDestination;
- (id)sourceItemForTipID:(id)a3;
- (id)swipeSelectionManager:(id)a3 indexPathSetFromIndexPath:(PXSimpleIndexPath *)a4 toIndexPath:(PXSimpleIndexPath *)a5;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)targetedPreviewForAssetReference:(id)a3;
- (int64_t)oneUpPresentationOrigin:(id)a3;
- (int64_t)pointerController:(id)a3 interactionOptionsForRegionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_addContentView:(id)a3;
- (void)_applicationDidHide;
- (void)_conditionallyUpdateEmptyPlaceholder;
- (void)_configureTabBarCollapsedStateObservation;
- (void)_createAnimationForSkimmingWithDuration:(double)a3 indicatorsDidChangeVisibility:(BOOL)a4;
- (void)_handleHover:(id)a3;
- (void)_handleHoverWithHitTestResults:(id)a3 hoverGesture:(id)a4;
- (void)_handleNavigationRequestConditionCompletionForNavigationRequest:(id)a3 withAssetReference:(id)a4;
- (void)_handlePan:(id)a3;
- (void)_handlePinch:(id)a3;
- (void)_handlePress:(id)a3;
- (void)_handleScreenEdgePan:(id)a3;
- (void)_handleScrollToRevealInfo:(id)a3 inGroup:(id)a4;
- (void)_handleScrolledAtBottom;
- (void)_handleShowAlternateUIForGroup:(id)a3;
- (void)_handleShowDefaultUIForGroup:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_handleTapWithHitTestResults:(id)a3 tapGesture:(id)a4;
- (void)_invalidateBannerView;
- (void)_invalidateEmptyPlaceholder;
- (void)_navigateToInitialScrollPositionForNavigationRequest:(id)a3;
- (void)_navigateToRevealAssetForNavigationRequest:(id)a3;
- (void)_navigateToZoomLevelForNavigationRequest:(id)a3 successHandler:(id)a4;
- (void)_prepareGestureRecognizers;
- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)a3;
- (void)_requestExpansionForSelectionIfNeeded;
- (void)_requestExpansionIfNeededForInteractionWithAssetReference:(id)a3 animated:(BOOL)a4;
- (void)_requestFocusUpdateForCursorAsset;
- (void)_requestFocusUpdateWithAssetReference:(id)a3;
- (void)_rescheduleNavigationRequest:(id)a3;
- (void)_resetBannerView;
- (void)_saveCurrentAllPhotosScrollPosition;
- (void)_scrollLibraryViewToInitialPositionWithCompletionHandler:(id)a3;
- (void)_scrollToBottomAnimated:(BOOL)a3;
- (void)_setCanShowSecondaryToolbar:(BOOL)a3 animated:(BOOL)a4;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)_setContentUnavailableConfiguration:(id)a3;
- (void)_setWantsOptionalChromeVisible:(BOOL)a3 changeReason:(int64_t)a4;
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
- (void)_updateScrolledToStates:(id)a3;
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
- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)cancelSelectMode:(id)a3;
- (void)curatedLibraryActionPerformer:(id)a3 contentFilterStateChanged:(id)a4;
- (void)curatedLibraryActionPerformer:(id)a3 libraryFilterStateChanged:(id)a4;
- (void)curatedLibraryActionPerformer:(id)a3 presentContextMenuActionsWithPerformers:(id)a4;
- (void)curatedLibraryActionPerformer:(id)a3 presentShareSheetWithSharingContext:(id)a4;
- (void)curatedLibraryBarsControllerDidUpdateBars:(id)a3;
- (void)deselectAll:(id)a3;
- (void)didDismissTipForController:(id)a3;
- (void)dragController:(id)a3 draggedAssetReferencesDidChange:(id)a4;
- (void)dragController:(id)a3 isDragSessionActiveDidChange:(BOOL)a4;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigateToSegment:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
- (void)oneUpPresentation:(id)a3 willEndPreviewingForContextMenuInteraction:(id)a4 configuration:(id)a5;
- (void)oneUpPresentation:(id)a3 willStartPreviewingForContextMenuInteraction:(id)a4;
- (void)openParentWithCommandUpArrow:(id)a3;
- (void)openSelectionWithCommandDownArrow:(id)a3;
- (void)photosCloseButtonControllerHandleAction:(id)a3;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)pointerController:(id)a3 didExitRegionWithRect:(CGRect)a4 inCoordinateSpace:(id)a5;
- (void)ppt_navigateToAsset:(id)a3 inAssetContainer:(id)a4 revealInOneUp:(BOOL)a5 completionHandler:(id)a6;
- (void)preparePresentationEnvironmentForBannerView:(id)a3 actionIdentifier:(id)a4 completionHandler:(id)a5;
- (void)prepareTipPopover:(id)a3 tipID:(id)a4;
- (void)px_containedViewControllerModalStateChanged;
- (void)px_didTransitionBars;
- (void)px_navigateToStateAllowingTabSwitchingWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)px_willTransitionBars;
- (void)resetToInitialStateWithCompletionHandler:(id)a3;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)secondaryToolbarControllerSetNeedsUpdate:(id)a3;
- (void)setCanShowFooter:(BOOL)a3;
- (void)setCanShowSecondaryToolbar:(BOOL)a3;
- (void)setCplUIStatusProvider:(id)a3;
- (void)setDidAppearInitially:(BOOL)a3;
- (void)setIsCollapsed:(BOOL)a3;
- (void)setNavigatedAssetReference:(id)a3;
- (void)skimmingController:(id)a3 willStartSkimmingAssetCollectionReference:(id)a4 animationDuration:(double)a5;
- (void)splitViewController:(id)a3 didChangeSidebarVisibility:(BOOL)a4;
- (void)splitViewController:(id)a3 willChangeSidebarVisibility:(BOOL)a4;
- (void)swipeSelectionManager:(id)a3 extendSelectionInDirection:(unint64_t)a4;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3;
- (void)swipeSelectionManagerDidAutoScroll:(id)a3;
- (void)test_presentSearchOverlayWithCompletion:(id)a3;
- (void)toggleEditMode:(id)a3;
- (void)toggleFilter:(id)a3;
- (void)toggleSortOrder:(id)a3;
- (void)toggleViewMode:(id)a3;
- (void)touchingUIGestureRecognizerDidBeginTouching:(id)a3;
- (void)touchingUIGestureRecognizerDidEndTouching:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentTipForController:(id)a3;
- (void)zoomIn:(id)a3;
- (void)zoomOut:(id)a3;
@end

@implementation PXCuratedLibraryUIViewController

- (id)px_navigationDestination
{
  v2 = [[PXProgrammaticNavigationDestination alloc] initWithType:1 revealMode:0];

  return v2;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v3 = [v2 firstResponder];

  if (v3)
  {
    v4 = [v2 firstResponder];
    v5 = [v4 _containsResponder:v2];
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
  v3 = [(PXCuratedLibraryUIViewController *)self view];
  v4 = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  [v3 addSubview:v4];

  v104 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v104 viewModel];
  v99 = [v5 styleGuide];
  v101 = +[PXCuratedLibrarySettings sharedInstance];
  v6 = [v5 sharedLibraryStatusProvider];
  sharedLibraryStatusProvider = self->_sharedLibraryStatusProvider;
  self->_sharedLibraryStatusProvider = v6;

  [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext_62286];
  v8 = [v5 libraryFilterState];
  libraryFilterState = self->_libraryFilterState;
  self->_libraryFilterState = v8;

  [(PXLibraryFilterState *)self->_libraryFilterState registerChangeObserver:self context:PXLibraryFilterStateObservationContext_62287];
  [(PXCuratedLibraryUIViewController *)self _updateBackgroundColor];
  v102 = [(PXCuratedLibraryUIViewController *)self gridView];
  [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  [(UIViewController *)self px_enableOneUpPresentation];
  v10 = [(UIViewController *)self px_oneUpPresentation];
  [v10 setDelegate:self];

  [(PXCuratedLibraryUIViewController *)self _prepareGestureRecognizers];
  v11 = [v102 scrollViewController];
  v103 = [v11 scrollView];

  v12 = +[PXSolariumSettings sharedInstance];
  v13 = [v12 enableAdaptiveDarkBiasInGrid];

  if (v13)
  {
    [v103 px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
  }

  v14 = [[PXPhotosPointerController alloc] initWithContentView:v103 delegate:self];
  pointerController = self->_pointerController;
  self->_pointerController = v14;

  v16 = [off_1E77218F0 alloc];
  v17 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v18 = [v17 viewModel];
  v19 = [v18 selectionManager];
  v20 = [v16 initWithSelectionManager:v19 scrollView:v103];
  swipeSelectionManager = self->_swipeSelectionManager;
  self->_swipeSelectionManager = v20;

  [(PXSwipeSelectionManager *)self->_swipeSelectionManager setDelegate:self];
  v22 = [(UIViewController *)self px_oneUpPresentation];
  v100 = [v22 contextMenuInteraction];

  [v102 addInteraction:v100];
  [(UIViewController *)self px_enableBarAppearance];
  v23 = [(PXCuratedLibraryUIViewController *)self barsController];
  v24 = +[PXApplicationState sharedState];
  [v24 registerChangeObserver:self context:ApplicationStateObservationContext];

  v25 = [v5 configuration];
  LODWORD(v17) = [v25 enableSecondaryToolbarContainerView];

  if (v17)
  {
    v26 = [PXHitTestTransparentView alloc];
    v27 = [(PXCuratedLibraryUIViewController *)self view];
    [v27 bounds];
    v28 = [(PXHitTestTransparentView *)v26 initWithFrame:?];
    secondaryToolbarContainerView = self->_secondaryToolbarContainerView;
    self->_secondaryToolbarContainerView = v28;
  }

  v30 = [PXCuratedLibrarySecondaryToolbarController alloc];
  v31 = self->_secondaryToolbarContainerView;
  if (v31)
  {
    v32 = self->_secondaryToolbarContainerView;
  }

  else
  {
    v32 = [(PXCuratedLibraryUIViewController *)self view];
  }

  v33 = v31 == 0;
  v34 = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  v35 = [(PXCuratedLibrarySecondaryToolbarController *)v30 initWithContainerView:v32 legibilityContainerView:v34 viewModel:v5];
  secondaryToolbarController = self->_secondaryToolbarController;
  self->_secondaryToolbarController = v35;

  if (v33)
  {
  }

  [(PXSecondaryToolbarController *)self->_secondaryToolbarController setUpdateDelegate:self];
  v37 = [PXCuratedLibraryBottomSpacerController alloc];
  v38 = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
  v39 = [v104 layout];
  v40 = [v104 gridView];
  v41 = [(PXCuratedLibraryBottomSpacerController *)v37 initWithViewModel:v5 extendedTraitCollection:v38 layout:v39 gridView:v40];
  bottomSpacerController = self->_bottomSpacerController;
  self->_bottomSpacerController = v41;

  v43 = [v5 assetsDataSourceManager];
  v44 = [v43 dataSourceForZoomLevel:4];
  v98 = [v44 firstAssetCollection];

  v97 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v98 displayTitleInfo:0];
  v45 = [off_1E77217F0 alloc];
  v46 = [(PXCuratedLibraryUIViewController *)self gridView];
  v47 = [v5 selectionManager];
  v48 = [v45 initWithContentView:v46 selectionManager:v47 assetCollectionActionManager:v97 delegate:self];
  dragController = self->_dragController;
  self->_dragController = v48;

  v50 = [[PXCuratedLibraryZoomLevelControl alloc] initWithViewModel:v5 styleGuide:v99];
  zoomLevelControl = self->_zoomLevelControl;
  self->_zoomLevelControl = v50;

  [(PXCuratedLibraryZoomLevelControl *)self->_zoomLevelControl setDelegate:self];
  v52 = self->_zoomLevelControl;
  v53 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v103 edge:4];
  [(PXCuratedLibraryZoomLevelControl *)v52 addInteraction:v53];

  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbar];
  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViews];
  [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
  v54 = [PXAssetSelectionUserActivityController alloc];
  v55 = [v5 selectionManager];
  v56 = [(PXAssetSelectionUserActivityController *)v54 initWithSelectionManager:v55];
  userActivityController = self->_userActivityController;
  self->_userActivityController = v56;

  v58 = [v102 scrollViewController];
  [v58 registerObserver:self];

  v59 = [v104 footerController];
  [v59 setDelegate:self];

  v60 = objc_alloc_init(PXCuratedLibraryZoomLevelPinchFilter);
  zoomLevelPinchFilter = self->_zoomLevelPinchFilter;
  self->_zoomLevelPinchFilter = v60;

  v62 = [v5 actionManager];
  [v62 setPerformerDelegate:self];

  v63 = [v5 configuration];
  LOBYTE(v54) = [v63 allowedInteractiveDismissBehaviors] == 0;

  if ((v54 & 1) == 0)
  {
    v64 = [[PXViewControllerDismissalInteractionController alloc] initWithViewController:self];
    dismissalInteractionController = self->_dismissalInteractionController;
    self->_dismissalInteractionController = v64;

    [(PXCuratedLibraryUIViewController *)self _updateDismissalInteractionControllerProperties];
  }

  objc_initWeak(&location, self);
  v66 = [MEMORY[0x1E696AD88] defaultCenter];
  v67 = PXCuratedLibrarySaveCurrentAllPhotosScrollPositionNotificationName;
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke;
  v111[3] = &unk_1E7747200;
  objc_copyWeak(&v112, &location);
  v68 = [v66 addObserverForName:v67 object:0 queue:0 usingBlock:v111];

  [(PXCuratedLibraryUIViewController *)self _updateAllowDisplayCompositing];
  [(PXCuratedLibraryUIViewController *)self _updateScrollView];
  [(PXCuratedLibraryUIViewController *)self setIsGridViewReady:1];
  v69 = [(PXCuratedLibraryUIViewController *)self initialNavigationRequest];
  v96 = [v69 destination];
  if ([v96 type] == 1 && !objc_msgSend(v96, "revealMode") || !v69 || !-[PXCuratedLibraryUIViewController routingOptionsForDestination:](self, "routingOptionsForDestination:", v96))
  {
    v70 = [[PXProgrammaticNavigationDestination alloc] initWithType:1 revealMode:3];
    if ([v101 launchToSavedAllPhotosScrollPosition])
    {
      v71 = [v101 savedAllPhotosScrollPositionAnchorAssetIdentifier];
      v72 = v71 == 0;

      if (!v72)
      {
        v73 = [PXProgrammaticNavigationDestination alloc];
        v74 = [v101 savedAllPhotosScrollPositionAnchorAssetIdentifier];
        v75 = [(PXProgrammaticNavigationDestination *)v73 initWithType:5 revealMode:2 assetUUID:v74 assetCollectionUUID:0];

        v70 = v75;
      }
    }

    v76 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v70 options:0 completionHandler:0];

    v69 = v76;
  }

  [(PXCuratedLibraryUIViewController *)self setInitialNavigationRequest:0];
  PXProgrammaticNavigationRequestExecute(v69, self);
  v77 = [(UIViewController *)self px_splitViewController];
  [v77 registerChangeObserver:self];
  v78 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v79 = [v78 viewModel];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __47__PXCuratedLibraryUIViewController_viewDidLoad__block_invoke_2;
  v109[3] = &unk_1E7748B68;
  v80 = v77;
  v110 = v80;
  [v79 performChanges:v109];

  v81 = [PXCuratedLibraryFilterTipController alloc];
  v82 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v83 = [v82 viewModel];
  v84 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v85 = [v84 layout];
  v86 = [(PXCuratedLibraryFilterTipController *)v81 initWithViewModel:v83 layout:v85];
  filterTipController = self->_filterTipController;
  self->_filterTipController = v86;

  [(PXCuratedLibraryFilterTipController *)self->_filterTipController setDelegate:self];
  v88 = [(PXCuratedLibraryUIViewController *)self traitCollection];
  [(PXCuratedLibraryFilterTipController *)self->_filterTipController setTraitCollection:v88];

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
  v92 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager keyCommandsForSelectionExtension];
  v93 = [v92 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v93)
  {
    v94 = *v106;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v106 != v94)
        {
          objc_enumerationMutation(v92);
        }

        [(PXCuratedLibraryUIViewController *)self addKeyCommand:*(*(&v105 + 1) + 8 * i)];
      }

      v93 = [v92 countByEnumeratingWithState:&v105 objects:v115 count:16];
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
    v6 = [(PXCuratedLibraryUIViewController *)self configuration];
    v7 = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
    v8 = [(PXCuratedLibraryViewProvider *)v5 initWithConfiguration:v6 extendedTraitCollection:v7];
    v9 = self->_viewProvider;
    self->_viewProvider = v8;

    [(PXCuratedLibraryViewProvider *)self->_viewProvider setAxNextResponder:self];
    v10 = [(PXCuratedLibraryViewProvider *)self->_viewProvider viewModel];
    [v10 performInitialChanges:&__block_literal_global_62331];
    [v10 registerChangeObserver:self context:PXCuratedLibraryViewModelObserverContext_62322];
    v11 = [v10 styleGuide];
    [v11 registerChangeObserver:self context:PXCuratedLibraryStyleGuideObserverContext];

    v12 = [v10 zoomablePhotosViewModel];
    [v12 registerChangeObserver:self context:PXZoomablePhotosViewModelObservationContext];

    v13 = [v10 cplUIStatusProvider];
    [(PXCuratedLibraryUIViewController *)self setCplUIStatusProvider:v13];

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
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];
  v5 = [v4 specManager];
  v9 = [v5 spec];

  v6 = [(PXCuratedLibraryUIViewController *)self _contentUnavailableConfiguration];

  if (v6)
  {
    [v9 contentUnavailableBackgroundColor];
  }

  else
  {
    [v9 backgroundColor];
  }
  v7 = ;
  v8 = [(PXCuratedLibraryUIViewController *)self view];
  [v8 setBackgroundColor:v7];
}

- (PXGView)gridView
{
  v2 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v3 = [v2 gridView];

  return v3;
}

- (void)_updateEmptyPlaceholder
{
  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v5 = [v4 viewModel];
    if ([v5 shouldShowEmptyPlaceholder])
    {
      v6 = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

      if (!v6)
      {
        v7 = [v4 gridView];
        [v7 removeFromSuperview];

        [(PXCuratedLibraryUIViewController *)self _setObservableScrollView:0 forEdges:5];
        v8 = objc_alloc_init(off_1E77218E0);
        [v8 setDelegate:self];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke;
        aBlock[3] = &unk_1E7749FF8;
        v9 = v8;
        v41 = v9;
        v42 = self;
        v43 = a2;
        v10 = _Block_copy(aBlock);
        v11 = [(PXCuratedLibraryUIViewController *)self sharedLibraryStatusProvider];
        v12 = [v11 hasSharedLibraryOrPreview];

        if (v12)
        {
          v13 = objc_alloc_init(off_1E77218E8);
          [v9 setViewModel:v13];
          v14 = [(PXCuratedLibraryUIViewController *)self libraryFilterState];
          v15 = [v14 viewMode];

          if ((v15 - 1) >= 2)
          {
            if (!v15)
            {
              v10[2](v10);
            }
          }

          else
          {
            v16 = [v9 configuration];
            v17 = [v16 secondaryTextProperties];
            v18 = [(PXCuratedLibraryUIViewController *)self _emptyPlaceholderMessageTextAttributesFromTextProperties:v17];

            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __59__PXCuratedLibraryUIViewController__updateEmptyPlaceholder__block_invoke_3;
            v37[3] = &unk_1E77480A0;
            v38 = v18;
            v39 = v15;
            v19 = v18;
            [v13 performChanges:v37];
          }
        }

        else
        {
          v10[2](v10);
        }

        v27 = [v5 assetsDataSourceManager];
        v28 = [v27 dataSourceForZoomLevel:4];
        v29 = [v28 firstAssetCollection];

        v30 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v29 displayTitleInfo:0];
        v31 = [off_1E77217F0 alloc];
        v32 = [(PXCuratedLibraryUIViewController *)self view];
        v33 = [v5 selectionManager];
        v34 = [v31 initWithContentView:v32 selectionManager:v33 assetCollectionActionManager:v30 delegate:self];
        [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderDragController:v34];

        [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderStatusController:v9];
        v35 = [v9 configuration];
        [(PXCuratedLibraryUIViewController *)self _setContentUnavailableConfiguration:v35];
      }
    }

    else if (([v5 libraryState] & 2) != 0)
    {
      v21 = [v4 gridView];
      v22 = [v21 superview];

      if (!v22)
      {
        [(PXCuratedLibraryUIViewController *)self _setContentUnavailableConfiguration:0];
        [(PXCuratedLibraryUIViewController *)self _invalidateEmptyPlaceholder];
        v23 = [v4 gridView];
        [(PXCuratedLibraryUIViewController *)self _addContentView:v23];

        v24 = [v4 gridView];
        v25 = [v24 scrollViewController];
        v26 = [v25 scrollView];

        [(PXCuratedLibraryUIViewController *)self _setObservableScrollView:v26 forEdges:5];
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
  v3 = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderDragController];
  [v3 removeFromView];

  [(PXCuratedLibraryUIViewController *)self setEmptyPlaceholderDragController:0];
}

- (void)_prepareGestureRecognizers
{
  v24 = [(PXCuratedLibraryUIViewController *)self gridView];
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];
  v5 = [v4 actionManager];
  v6 = [v5 isActionTypeAllowed:@"PXCuratedLibraryActionHover"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHover_];
    [(UIHoverGestureRecognizer *)v7 setDelegate:self];
    hoverGesture = self->_hoverGesture;
    self->_hoverGesture = v7;
    v9 = v7;

    [v24 addGestureRecognizer:v9];
  }

  v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [v10 setDelegate:self];
  [v10 setCancelsTouchesInView:0];
  objc_storeStrong(&self->_tapGesture, v10);
  [v24 addGestureRecognizer:v10];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handlePress_];
  [v11 setAllowedPressTypes:&unk_1F19101C8];
  [v11 setDelegate:self];
  objc_storeStrong(&self->_pressGesture, v11);
  [v24 addGestureRecognizer:v11];
  v12 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel__handlePinch_];
  [v12 _setEndsOnSingleTouch:1];
  [v12 setDelegate:self];
  objc_storeStrong(&self->_pinchGesture, v12);
  [v24 addGestureRecognizer:v12];
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
  if ([v24 effectiveUserInterfaceLayoutDirection] == 1)
  {
    [(PXRelaxedScreenEdgePanGestureRecognizer *)self->_screenEdgePanGestureRecognizer setEdges:8];
  }

  [v24 addGestureRecognizer:self->_screenEdgePanGestureRecognizer];
  v17 = +[PXCuratedLibrarySettings sharedInstance];
  v18 = [v17 enableSkimmingInYears];

  if (v18)
  {
    v19 = [[off_1E7721918 alloc] initWithTarget:0 action:0];
    [v19 setDelegate:self];
    [v19 setTouchDelegate:self];
    [v19 setCancelsTouchesInView:0];
    [v19 setMaximumTouchMovement:5.0];
    [v24 addGestureRecognizer:v19];
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
    [v24 addGestureRecognizer:v22];
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
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];
    v7 = [(PXCuratedLibraryBarsController *)v4 initWithCuratedLibraryViewController:self viewModel:v6];
    v8 = self->_barsController;
    self->_barsController = v7;

    [(PXCuratedLibraryBarsController *)self->_barsController setDelegate:self];
    barsController = self->_barsController;
  }

  return barsController;
}

- (void)_updateSecondaryToolbar
{
  v3 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];
  v6 = [v5 configuration];
  if (![v6 showSecondaryToolbar])
  {

    goto LABEL_6;
  }

  v7 = [v5 wantsZoomControlVisible];

  if (!v7)
  {
LABEL_6:
    [v3 setContentView:0];
    goto LABEL_16;
  }

  v8 = [v5 configuration];
  v9 = [v8 secondaryToolbarStyle];

  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarLegibilityGradient];
  v10 = +[PXCuratedLibrarySettings sharedInstance];
  v11 = [v10 secondaryToolbarAlwaysVisible];

  if (v11)
  {
    v12 = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
    v13 = v3;
    v14 = v12;
LABEL_14:
    [v13 setContentView:v14];
    goto LABEL_15;
  }

  v12 = [v4 viewModel];
  v15 = [v12 isSelecting];
  v16 = [v12 currentContentFilterState];
  v17 = [v16 isFiltering];

  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if ((v15 & 1) != 0 || v18)
  {
    v13 = v3;
    v14 = 0;
    goto LABEL_14;
  }

  v19 = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
  [v3 setContentView:v19];

LABEL_15:
LABEL_16:
  [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];
  v20 = [(PXCuratedLibraryUIViewController *)self gridView];
  v21 = [v20 scrollViewController];
  [v3 setContentScrollViewController:v21];

  [v3 updateIfNeeded];
  v22 = MEMORY[0x1E69DDCE0];
  [v3 containerViewAdditionalEdgeInsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v55 = v29;
  v30 = [v5 configuration];
  [v3 containerViewAdditionalEdgeInsetsWhenVisible:{objc_msgSend(v30, "showSecondaryToolbar")}];
  v54 = v31;

  v32 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v33 = 0.0;
  if (([v32 isToolbarHidden] & 1) == 0)
  {
    v34 = [(PXCuratedLibraryUIViewController *)self navigationController];
    v35 = [v34 toolbar];
    [v35 bounds];
    v33 = v36;
  }

  v37 = *v22;
  v38 = v22[1];
  v39 = v22[3];

  v40 = [(PXCuratedLibraryUIViewController *)self view];
  [v40 safeAreaInsets];
  v42 = v41;

  v43 = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

  if (v43)
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

  v47 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v47 setAdditionalSafeAreaInsets:{v24, v26, v28, v45}];

  v48 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v48 setMinimumSafeAreaInsets:{v37, v38, v44, v39}];

  v49 = [v4 viewModel];
  v50 = [v49 styleGuide];
  v51 = [v50 secondaryToolbarPlacement];

  v52 = [v4 footerController];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__PXCuratedLibraryUIViewController__updateSecondaryToolbar__block_invoke;
  v56[3] = &unk_1E7733C48;
  v57 = v3;
  v58 = v51;
  v59 = v24;
  v60 = v26;
  v61 = v28;
  v62 = v45;
  v53 = v3;
  [v52 performChanges:v56];
}

- (void)_updateSecondaryToolbarLegibilityGradient
{
  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v4 = [v3 viewModel];
    v5 = [v4 configuration];
    v6 = [v5 secondaryToolbarStyle];

    if (v6)
    {
      v7 = [(PXCuratedLibraryUIViewController *)self isCollapsed]^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
    [v8 setLegibilityGradientEnabled:v7];
  }
}

- (void)_updateSecondaryToolbarStyle
{
  v3 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  if (v3)
  {
    v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v5 = [v4 viewModel];

    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViewStyles];
    [v5 secondaryToolbarVisibility];
    v7 = v6;
    v8 = [v3 contentView];

    v9 = 0.0;
    if (v8 && [(PXCuratedLibraryUIViewController *)self canShowSecondaryToolbar])
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

    [v3 setAlpha:v9];
    PXFloatApproximatelyEqualToFloat();
  }
}

- (void)_updateSecondaryToolbarAccessoryViewStyles
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v3 viewModel];

  v4 = +[PXCuratedLibraryFilterToggleButtonController foregroundColorOverLegibilityGradient:](PXCuratedLibraryFilterToggleButtonController, "foregroundColorOverLegibilityGradient:", [v5 secondaryToolbarLegibilityGradientIsVisible]);
  [(PXPhotosCloseButtonController *)self->_closeButtonController setForegroundColor:v4];
}

- (void)_updateSecondaryToolbarAccessoryViews
{
  if (-[PXCuratedLibraryUIViewController didAppearInitially](self, "didAppearInitially") || (-[PXCuratedLibraryUIViewController viewProvider](self, "viewProvider"), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewModel], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "configuration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isExpandedInitially"), v5, v4, v3, v6))
  {
    v7 = [(PXCuratedLibraryUIViewController *)self configuration];
    v8 = [v7 secondaryToolbarStyle];

    if (v8 == 1)
    {
      v9 = [(PXCuratedLibraryUIViewController *)self filterButtonController];
      v13 = [v9 button];

      v10 = [(PXCuratedLibraryUIViewController *)self closeButtonController];
      v11 = [v10 button];
    }

    else
    {
      v13 = 0;
      v11 = 0;
    }

    v12 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
    [v12 setLeadingAccessoryView:v13];
    [v12 setTrailingAccessoryView:v11];
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViewStyles];
  }
}

- (void)_updateAllowDisplayCompositing
{
  v6 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v3 = [v6 viewModel];
  v4 = [v3 isFullyExpanded];
  v5 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v5 setDisableMetalViewDisplayCompositing:v4 ^ 1u];
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
  v2 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v2 setShouldWorkaround18475431:1];
}

- (void)px_didTransitionBars
{
  v2 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v2 setShouldWorkaround18475431:0];
}

- (void)_updateDrawerButtonVisibility
{
  if ((MEMORY[0x1A590D320](self, a2) & 1) == 0)
  {
    v3 = [(UIViewController *)self px_splitViewController];
    if (v3)
    {
      v18 = v3;
      v4 = [(PXCuratedLibraryUIViewController *)self navigationController];
      v5 = [v4 topViewController];
      v6 = [v5 view];

      v7 = [v18 isSidebarVisible];
      v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v9 = [v8 viewModel];
      v10 = [v9 wantsNavigationBarVisible];

      v11 = [v8 viewModel];
      v12 = [v11 shouldShowEmptyPlaceholder];

      v13 = [v6 window];
      if (v13)
      {
        v14 = [(PXCuratedLibraryUIViewController *)self view];
        v15 = (v6 == v14) & (v7 ^ 1) & v10 & (v12 ^ 1u);
      }

      else
      {
        v15 = 0;
      }

      if ([v18 displayModeButtonVisibility] != v15)
      {
        [v18 setDisplayModeButtonVisibility:v15];
        v16 = [(PXCuratedLibraryUIViewController *)self navigationController];
        v17 = [v16 navigationBar];
        [v17 setNeedsLayout];
      }

      v3 = v18;
    }
  }
}

- (BOOL)pu_shouldOptOutFromChromelessBars
{
  v2 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v3 = [v2 navigationBar];
  v4 = [v3 scrollEdgeAppearance];
  v5 = v4 != 0;

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
  v3 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  [v3 updateIfNeeded];
}

- (void)_handleScrolledAtBottom
{
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v3 = [v6 viewModel];
  if ([v3 zoomLevel] == 4)
  {
    v4 = +[PXCuratedLibrarySettings sharedInstance];
    v5 = [v4 enableTabBarAccessoryControls];

    if (!v5)
    {
      return;
    }

    v6 = [(PXCuratedLibraryUIViewController *)self tabBar];
    [v6 _setMinimized:0];
  }

  else
  {
  }
}

- (UITabBar)tabBar
{
  v2 = [(PXCuratedLibraryUIViewController *)self tabBarController];
  v3 = [v2 tabBar];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(PXCuratedLibraryUIViewController *)self view];
  [v3 bounds];

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
  v4 = [v3 enableTabBarAccessoryControls];

  if (v4)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self tabBar];
    v6 = v5;
    if (v5)
    {
      v14 = v5;
      v7 = [v5 _isMinimized];
      v6 = v14;
      if (v7)
      {
        [v14 _frameForHostedAccessoryView];
        v12 = [[off_1E7721530 alloc] initWithRect:v14 inCoordinateSpace:{v8, v9, v10, v11}];
        v13 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
        [v13 setTabBarAccessoryPlacement:v12];

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
  v3 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [v3 didLayoutAnchorView];

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
  v3 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v4 = [v3 topViewController];
  v33 = [v4 view];

  v5 = [(PXCuratedLibraryUIViewController *)self cloudQuotaHelper];
  if ([v5 hasAnyInformationViews] && (objc_msgSend(v33, "window"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(PXCuratedLibraryUIViewController *)self view];

    if (v33 == v8)
    {
      if (self->_bannerView)
      {
        goto LABEL_14;
      }

      v9 = [(PXCuratedLibraryUIViewController *)self cloudQuotaHelper];
      v10 = [v9 premiumInformationView];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v9 informationView];
      }

      v20 = v12;

      [v20 setAutoresizingMask:18];
      v29 = [[PXCuratedLibraryNavigationBarPalette alloc] initWithArrangedSubview:v20 isNotification:1];
      bannerView = self->_bannerView;
      self->_bannerView = &v29->super.super;

      v31 = self->_bannerView;
      v32 = [(PXCuratedLibraryUIViewController *)self navigationItem];
      [v32 _setBottomPalette:v31];

      v25 = [(PXCuratedLibraryUIViewController *)self navigationItem];
      v26 = [v25 _bottomPalette];
      v27 = v26;
      v28 = 120.0;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v13 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v14 = [v13 viewModel];
  v9 = [v14 bannerViewConfiguration];

  if (!v9 || ([v33 window], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, -[PXCuratedLibraryUIViewController view](self, "view"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v33 != v17))
  {
    v18 = [(_UINavigationBarPalette *)self->_bannerView superview];

    if (v18)
    {
      [(PXCuratedLibraryUIViewController *)self _resetBannerView];
    }

    goto LABEL_13;
  }

  if (!self->_bannerView)
  {
    v19 = PXLemonadeViewFactory();
    v20 = [v19 sharedLibraryBannerViewForConfiguration:v9 delegate:self];

    v21 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v20];
    v22 = self->_bannerView;
    self->_bannerView = v21;

    v23 = self->_bannerView;
    v24 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    [v24 _setBottomPalette:v23];

    v25 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    v26 = [v25 _bottomPalette];
    v27 = v26;
    v28 = 80.0;
LABEL_21:
    [v26 setPreferredHeight:v28];

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
    v4 = [v3 enableSkimmingInYears];

    if (v4)
    {
      v5 = [PXCuratedLibraryAssetCollectionSkimmingModel alloc];
      v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v7 = [v6 viewModel];
      v8 = [(PXCuratedLibraryAssetCollectionSkimmingModel *)v5 initWithViewModel:v7];

      v9 = [[PXCuratedLibrarySkimmingController alloc] initWithSkimmingModel:v8];
      skimmingController = self->_skimmingController;
      self->_skimmingController = v9;

      [(PXCuratedLibrarySkimmingController *)self->_skimmingController setDelegate:self];
      [(PXCuratedLibraryUIViewController *)self _updateSkimmingSlideshowEnabled];
      objc_initWeak(&location, self);
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = *MEMORY[0x1E69DDA58];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke;
      v24[3] = &unk_1E7747200;
      objc_copyWeak(&v25, &location);
      v13 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v24];
      v14 = *MEMORY[0x1E69DD960];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_2;
      v22[3] = &unk_1E7747200;
      objc_copyWeak(&v23, &location);
      v15 = [v11 addObserverForName:v14 object:0 queue:0 usingBlock:v22];
      v16 = *MEMORY[0x1E69DD918];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__PXCuratedLibraryUIViewController_skimmingController__block_invoke_3;
      v20[3] = &unk_1E7747200;
      objc_copyWeak(&v21, &location);
      v17 = [v11 addObserverForName:v16 object:0 queue:0 usingBlock:v20];
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
  v4 = [v3 enableSlideshowInYears];

  if (v4)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];
    v7 = [v6 specManager];
    v8 = [v7 spec];
    v9 = [v8 allowsSlideshowInYears];

    if (v9)
    {
      v10 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v11 = [v10 layout];
      v4 = ([v11 presentedZoomLevel] != 1 || (objc_msgSend(v11, "libraryBodyLayout"), v12 = ;
    }

    else
    {
      v4 = 0;
    }
  }

  v18 = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [v18 setSkimmingSlideshowEnabled:v4];
}

- (void)_configureTabBarCollapsedStateObservation
{
  v4 = +[PXCuratedLibrarySettings sharedInstance];
  v5 = [v4 enableTabBarAccessoryControls];

  if (v5)
  {
    [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
    objc_initWeak(&location, self);
    v6 = [(PXCuratedLibraryUIViewController *)self tabBar];
    v7 = [v6 _minimizedStateDidChangeHandler];

    if (v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1153 description:{@"Invalid parameter not satisfying: %@", @"self.tabBar._minimizedStateDidChangeHandler == nil"}];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PXCuratedLibraryUIViewController__configureTabBarCollapsedStateObservation__block_invoke;
    v10[3] = &unk_1E7747EB0;
    objc_copyWeak(&v11, &location);
    v8 = [(PXCuratedLibraryUIViewController *)self tabBar];
    [v8 _setMinimizedStateDidChangeHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_updateCanShowSecondaryToolbar
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];
  v5 = [v4 styleGuide];
  v6 = [v5 secondaryToolbarPlacement];

  if (v6 == 3)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self tabBar];
    v8 = [v7 _isMinimized];
  }

  else
  {
    v8 = v6 != 0;
  }

  v9 = +[PXApplicationState sharedState];
  v10 = [v9 isHidden];

  [(PXCuratedLibraryUIViewController *)self _setCanShowSecondaryToolbar:v8 animated:v10 ^ 1u];
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

- (void)preparePresentationEnvironmentForBannerView:(id)a3 actionIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [off_1E7721960 defaultPresenterWithViewController:self];
  v8 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  if ([v8 isPresentingTipView])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __115__PXCuratedLibraryUIViewController_preparePresentationEnvironmentForBannerView_actionIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_1E774C2F0;
    v11 = v6;
    v10 = v7;
    [v8 dismissTipViewWithCompletion:v9];
  }

  else
  {
    (*(v6 + 2))(v6, v7, 0);
  }
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v3 = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];

  if (!v3)
  {
    v4 = objc_alloc_init(PXBoopableItemsProvider);
    [(PXCuratedLibraryUIViewController *)self setBoopableItemsProvider:v4];

    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];
    v7 = [v6 selectionManager];
    v8 = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
    [v8 setSelectionManager:v7];

    v9 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v10 = [v9 mediaProvider];
    v11 = [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
    [v11 setImagePreviewMediaProvider:v10];
  }

  return [(PXCuratedLibraryUIViewController *)self boopableItemsProvider];
}

- (PXSelectionContainer)selectionContainer
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [(PXCuratedLibraryUIViewController *)self undoManager];
  v5 = [v3 selectionContainerWithUndoManager:v4];

  return v5;
}

- (void)splitViewController:(id)a3 didChangeSidebarVisibility:(BOOL)a4
{
  [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility:a3];
  if (MEMORY[0x1A590D320]([(PXCuratedLibraryUIViewController *)self _invalidateBannerView]))
  {
    v5 = [(PXCuratedLibraryUIViewController *)self barsController];
    [v5 invalidateBars];

    v6 = [(PXCuratedLibraryUIViewController *)self barsController];
    [v6 updateIfNeeded];
  }
}

- (void)splitViewController:(id)a3 willChangeSidebarVisibility:(BOOL)a4
{
  v6 = a3;
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v8 = [v7 viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PXCuratedLibraryUIViewController_splitViewController_willChangeSidebarVisibility___block_invoke;
  v10[3] = &unk_1E7733ED8;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [v8 performChanges:v10];
}

void __84__PXCuratedLibraryUIViewController_splitViewController_willChangeSidebarVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 splitBehavior] == 2 || *(a1 + 40) == 0;
  [v5 setSidebarCanBecomeVisible:v4];
}

- (id)_assetCollectionReferenceForGroup:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4125 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"axGroup", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4125 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"axGroup", v10}];
  }

LABEL_3:
  [v5 axRootParent];
  v6 = [objc_claimAutoreleasedReturnValue() axGroupSource];
  v7 = [v5 axParent];
  [v5 axFrame];
  if (v7)
  {
    [v6 axConvertRect:v7 fromDescendantGroup:?];
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

- (void)_handleShowDefaultUIForGroup:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [v5 endPanning];

    v4 = v6;
  }
}

- (void)_handleShowAlternateUIForGroup:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [v5 startPanningForAssetCollectionReference:v6];

    v4 = v6;
  }
}

- (void)_handleScrollToRevealInfo:(id)a3 inGroup:(id)a4
{
  v11 = a3;
  v6 = [(PXCuratedLibraryUIViewController *)self _assetCollectionReferenceForGroup:a4];
  if (v6)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [v11 axFrame];
    v9 = v8;
    v10 = -15.0;
    if (v9 < 0.0 || (v10 = 15.0, v9 > 0.0))
    {
      [v7 updatePanningWithTranslation:{v10, 0.0}];
    }
  }
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v6 = a3;
  v7 = a5;
  PXGAXGetElementForUserInfo();
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXCuratedLibraryUIViewController *)self axNextResponder];
  [v10 axGroup:v9 didChange:a4 userInfo:v8];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:4065 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)didDismissTipForController:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self _buttonForEllipsisButtonAction];
  [v3 setShowsMenuAsPrimaryAction:1];
}

- (void)willPresentTipForController:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self _buttonForEllipsisButtonAction];
  [v3 setShowsMenuAsPrimaryAction:0];
}

- (id)passthroughViewsForTipForController:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v5 = [v4 navigationBar];

  v6 = [(PXCuratedLibraryUIViewController *)self navigationController];
  v7 = [v6 toolbar];

  v8 = [(PXCuratedLibraryUIViewController *)self view];
  v9 = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [(PXCuratedLibraryUIViewController *)self tabBar];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v12 = v11;
  if (v10)
  {
    [v11 addObject:v10];
  }

  if (v5)
  {
    [v12 addObject:v5];
  }

  if (v7)
  {
    [v12 addObject:v7];
  }

  if (v8)
  {
    [v12 addObject:v8];
  }

  if (v9)
  {
    [v12 addObject:v9];
  }

  return v12;
}

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [(PXCuratedLibraryUIViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)ppt_dismiss
{
  v2 = self;
  v3 = [(PXCuratedLibraryUIViewController *)self delegate];
  LOBYTE(v2) = [v3 curatedLibraryViewControllerDismiss:v2];

  return v2;
}

- (void)ppt_navigateToAsset:(id)a3 inAssetContainer:(id)a4 revealInOneUp:(BOOL)a5 completionHandler:(id)a6
{
  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:v9 asset:v12 assetCollection:v11];

  [(PXCuratedLibraryUIViewController *)self navigateToDestination:v13 options:2 completionHandler:v10];
}

- (void)px_navigateToStateAllowingTabSwitchingWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];
  [v6 performChanges:&__block_literal_global_718];

  v7[2](v7, 1, 0);
}

- (void)_rescheduleNavigationRequest:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    v5 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Impossible to reschedule the programmatic navigation %@ because the view has already been loaded", &v7, 0xCu);
    }

    v6 = [v4 completionHandler];
    v6[2](v6, 2, 0);
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self setInitialNavigationRequest:v4];
  }
}

- (void)_handleNavigationRequestConditionCompletionForNavigationRequest:(id)a3 withAssetReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    [v8 prepareForNavigationToObjectReference:v7];

    v9 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __119__PXCuratedLibraryUIViewController__handleNavigationRequestConditionCompletionForNavigationRequest_withAssetReference___block_invoke;
    v10[3] = &unk_1E774AEC0;
    v11 = v6;
    v12 = v7;
    v13 = self;
    [v9 scrollLibraryViewToAssetReference:v12 scrollPosition:64 completionHandler:v10];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:v6];
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

- (void)_navigateToRevealAssetForNavigationRequest:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 viewModel];
  v8 = [v7 assetsDataSourceManager];
  if (v8)
  {
    if ([v7 zoomLevel] != 4)
    {
      [v7 performChanges:&__block_literal_global_714];
      [v8 forceAllPhotosAccurateIfNeeded];
      v9 = [v6 layout];
      [v9 updateIfNeeded];
    }

    v10 = [v5 destination];
    v11 = [v10 asset];

    if (v11)
    {
      v12 = [off_1E7721490 alloc];
      v13 = *(off_1E7722228 + 1);
      v30 = *off_1E7722228;
      v31 = v13;
      v14 = [v12 initWithSectionObject:0 itemObject:v11 subitemObject:0 indexPath:&v30];
    }

    else
    {
      v15 = [v8 dataSourceForZoomLevel:4];
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
    v18 = v8;
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
    v22 = v5;
    objc_copyWeak(v24, location);
    v23 = &v30;
    [v18 waitForCondition:v25 timeout:v20 completionHandler:1.0];
    objc_destroyWeak(v24);

    _Block_object_dispose(&v30, 8);
    objc_destroyWeak(location);
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:v5];
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

- (void)_navigateToInitialScrollPositionForNavigationRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__PXCuratedLibraryUIViewController__navigateToInitialScrollPositionForNavigationRequest___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_navigateToZoomLevelForNavigationRequest:(id)a3 successHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    [(PXCuratedLibraryUIViewController *)self _rescheduleNavigationRequest:v6];
    goto LABEL_22;
  }

  v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v9 = [v8 viewModel];

  v10 = [v9 zoomLevel];
  v11 = [v6 destination];
  v12 = [v11 type];
  if (v12 > 3)
  {
    if ((v12 - 5) < 2)
    {
      v13 = 4;
      goto LABEL_17;
    }

    if (v12 == 4)
    {
      v13 = 3;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      v13 = 1;
      goto LABEL_17;
    }

    if (v12 == 3)
    {
      v13 = 2;
LABEL_17:

      goto LABEL_18;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = v10;
  if (!v10)
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
  [v9 performChanges:v14];
  if (v13 == v10)
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

LABEL_22:
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v8 options:a4 completionHandler:v9];
  v11 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v12 = [v11 viewModel];
  [v12 performChanges:&__block_literal_global_711];

  if ([v8 isTargetingAsset])
  {
    [(PXCuratedLibraryUIViewController *)self _navigateToRevealAssetForNavigationRequest:v10];
    goto LABEL_16;
  }

  if ([v8 type] == 14 && MEMORY[0x1A590D320]())
  {
    v13 = [v8 additionalAttributes];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;

      if (v14)
      {
        v15 = [v14 searchTerms];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [v14 searchTerms];
          v18 = [v17 firstObject];
        }

        else
        {
          v18 = [v14 searchText];
        }

        goto LABEL_15;
      }
    }

    else
    {

      v14 = 0;
    }

    v18 = 0;
LABEL_15:
    v19 = [(PXCuratedLibraryUIViewController *)self barsController];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __84__PXCuratedLibraryUIViewController_navigateToDestination_options_completionHandler___block_invoke_2;
    v22[3] = &unk_1E774C250;
    v23 = v9;
    [v19 handleSearchActionWithSearchText:v18 completion:v22];

    goto LABEL_16;
  }

  if ([v8 revealMode] == 3)
  {
    [(PXCuratedLibraryUIViewController *)self _navigateToInitialScrollPositionForNavigationRequest:v10];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84__PXCuratedLibraryUIViewController_navigateToDestination_options_completionHandler___block_invoke_3;
    v20[3] = &unk_1E774C250;
    v21 = v9;
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

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 viewModel];
  v8 = [v7 zoomLevel];
  if ((v5 - 2) < 5)
  {

LABEL_3:
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v11 = v8;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  if ([v4 isTargetingAsset] && (objc_msgSend(v4, "isTargetingAlbum") & 1) == 0)
  {
    v12 = [v4 assetCollection];
    v6 = v12;
    if (!v12 || ([v12 px_isAllPhotosSmartAlbum] & 1) != 0)
    {
      goto LABEL_3;
    }

    if ([v6 px_isSuggestion])
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
    v9 = [v4 type] == 14;
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  return v9;
}

- (void)_createAnimationForSkimmingWithDuration:(double)a3 indicatorsDidChangeVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v10 = [v6 layout];

  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v10 secondSublayout];
  v9 = [v8 createCuratedLibraryLayoutAnimationIfNeededWithContext:v7];

  [v9 setDuration:a3];
}

- (void)skimmingController:(id)a3 willStartSkimmingAssetCollectionReference:(id)a4 animationDuration:(double)a5
{
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v8 = [v7 layout];
  [v8 clearLastVisibleAreaAnchoringInformation];

  [(PXCuratedLibraryUIViewController *)self _createAnimationForSkimmingWithDuration:0 indicatorsDidChangeVisibility:a5];
}

- (id)_dominantAssetCollectionReferenceForSkimming
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 layout];
  v5 = [v4 libraryBodyLayout];
  v6 = [v5 dominantSectionLayout];

  v7 = [v6 zoomLevel];
  v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v9 = [v8 viewModel];
  if (v7 == [v9 zoomLevel])
  {
    v10 = [v6 assetCollectionReference];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = PXCuratedLibraryUIViewController;
  v8 = [(UIViewController *)&v51 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  v10 = [(PXCuratedLibraryUIViewController *)self gridView];
  v11 = objc_alloc_init(PXDiagnosticsItemProvider);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__62105;
  v49 = __Block_byref_object_dispose__62106;
  v50 = 0;
  [v10 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
  v44[3] = &unk_1E7733D08;
  v44[4] = &v45;
  [v10 enumerateCuratedLibraryHitTestResultsAtPoint:v44 usingBlock:?];
  v12 = [v46[5] assetCollectionReference];
  v13 = [v12 assetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;

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
    v16 = [v10 diagnosticDescription];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_4;
    v38[3] = &unk_1E774BB70;
    v17 = v16;
    v39 = v17;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierViewDescription" loadHandler:v38];
    v18 = [v46[5] layout];
    v19 = [v18 diagnosticDescription];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_5;
    v36[3] = &unk_1E774BB70;
    v20 = v19;
    v37 = v20;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierLayoutDescription" loadHandler:v36];

    v13 = v43;
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
  [v10 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_6;
  v29[3] = &unk_1E7733D08;
  v29[4] = &v30;
  [v10 enumerateCuratedLibraryHitTestResultsAtPoint:v29 usingBlock:?];
  v21 = [v31[5] assetReference];
  v22 = [v21 asset];

  if (v22)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_7;
    v27[3] = &unk_1E774BB70;
    v28 = v22;
    [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierAsset" loadHandler:v27];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__PXCuratedLibraryUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke_8;
  v26[3] = &unk_1E774BB70;
  v26[4] = self;
  [(PXDiagnosticsItemProvider *)v11 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierViewController" loadHandler:v26];
  v23 = [(PXDiagnosticsItemProvider *)v11 registeredIdentifiers];
  v24 = [v23 count];

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

- (id)_createPreviewViewForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v6 = [v5 viewModel];
  v7 = [v6 zoomLevel];

  if (v4)
  {
    v29 = 0;
    v8 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:v4 image:&v29];
    v9 = v29;
    v10 = [(PXCuratedLibraryUIViewController *)self gridView];
    v11 = [v10 scrollViewController];
    v12 = [v11 contentCoordinateSpace];
    [v8 rectInCoordinateSpace:v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v16, v18, v20}];
    v22 = 0.0;
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    [v21 setBackgroundColor:v23];

    if ((v7 - 1) < 2)
    {
      v22 = 10.0;
    }

    v24 = [v21 layer];
    [v24 setCornerRadius:v22];

    v25 = *MEMORY[0x1E69796E8];
    v26 = [v21 layer];
    [v26 setCornerCurve:v25];
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

- (id)_createPreviewViewForHitTestResult:(id)a3
{
  v4 = a3;
  if (([v4 control] - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    if ([v4 control] == 1)
    {
      v5 = [v4 assetReference];
    }

    else
    {
      v5 = [v4 assetCollectionReference];

      if (v5)
      {
        v7 = [v4 assetCollectionReference];
        v5 = [v7 keyAssetReference];
      }
    }

    v6 = [(PXCuratedLibraryUIViewController *)self _createPreviewViewForAssetReference:v5];
  }

  return v6;
}

- (id)_bestHitTestResultForCursorAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__62105;
  v13 = __Block_byref_object_dispose__62106;
  v14 = 0;
  v5 = [(PXCuratedLibraryUIViewController *)self gridView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PXCuratedLibraryUIViewController__bestHitTestResultForCursorAtLocation___block_invoke;
  v8[3] = &unk_1E7733D08;
  v8[4] = &v9;
  [v5 enumerateCuratedLibraryHitTestResultsAtPoint:v8 usingBlock:{x, y}];

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

- (void)pointerController:(id)a3 didExitRegionWithRect:(CGRect)a4 inCoordinateSpace:(id)a5
{
  v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded:a3];
  v5 = [v7 viewModel];
  v6 = [v5 selectionManager];

  [v6 performChanges:&__block_literal_global_704_62134];
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

- (int64_t)pointerController:(id)a3 interactionOptionsForRegionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded:a3];
  v6 = [v5 viewModel];

  v7 = [v6 zoomLevel];
  v8 = +[PXCursorInteractionSettings sharedInstance];
  v9 = [v6 zoomablePhotosViewModel];
  v10 = [v8 interactionOptionsForZoomLevel:v7 isAllPhotosAspectFit:{objc_msgSend(v9, "aspectFit")}];

  return v10;
}

- (id)pointerController:(id)a3 viewForCursorInteractionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [v9 scrollViewController];
  v11 = [v10 contentCoordinateSpace];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    v13 = [(PXCuratedLibraryUIViewController *)self gridView];
    [v8 convertPoint:v13 toCoordinateSpace:{x, y}];
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

- (id)pointerController:(id)a3 identifierForRegionAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [v9 scrollViewController];
  v11 = [v10 contentCoordinateSpace];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    v13 = [(PXCuratedLibraryUIViewController *)self gridView];
    [v8 convertPoint:v13 toCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(PXCuratedLibraryUIViewController *)self _bestHitTestResultForCursorAtLocation:v15, v17];
    v19 = [v18 control];
    if ((v19 - 2) >= 2)
    {
      if (v19 == 1)
      {
        v21 = [v18 assetReference];
        v22 = [v21 asset];
        v20 = [v22 uuid];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = [v18 assetCollectionReference];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_shouldExposeCursorAnimations
{
  v2 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v3 = [v2 viewModel];

  v4 = [v3 zoomablePhotosViewModel];
  v5 = [v3 zoomLevel];
  v9 = 0u;
  v10 = 0u;
  if (v4)
  {
    [v4 zoomState];
  }

  v6 = [v4 isDisplayingIndividualItems];
  v7 = 0;
  if (![v3 zoomLevelTransitionPhase] && v5 != 3)
  {
    v7 = v5 != 4;
    if (v5 == 4 && ((v6 ^ 1) & 1) == 0)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)pointerController:(id)a3 regionOfInterestForCursorAtLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [v9 scrollViewController];
  v11 = [v10 contentCoordinateSpace];
  v12 = [v8 isEqual:v11];

  if (v12 && [(PXCuratedLibraryUIViewController *)self _shouldExposeCursorAnimations])
  {
    v13 = [(PXCuratedLibraryUIViewController *)self gridView];
    [v8 convertPoint:v13 toCoordinateSpace:{x, y}];
    v15 = v14;
    v17 = v16;

    v18 = [(PXCuratedLibraryUIViewController *)self _bestHitTestResultForCursorAtLocation:v15, v17];
    if (([v18 control] - 1) > 2)
    {
      v21 = 0;
    }

    else
    {
      v19 = [(PXCuratedLibraryUIViewController *)self gridView];
      v20 = [v18 spriteReference];
      v21 = [v19 regionOfInterestForSpriteReference:v20];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)dragController:(id)a3 shouldResizeCancelledPreviewForAssetReference:(id)a4
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v5 = [v4 layout];
  v6 = [v5 hiddenSpriteIndexes];
  v7 = [v6 count] == 0;

  return v7;
}

- (BOOL)dragController:(id)a3 shouldSelectRearrangedAssetReferences:(id)a4
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v5 = [v4 viewModel];
  v6 = [v5 isSelecting];

  return v6;
}

- (void)dragController:(id)a3 draggedAssetReferencesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 viewModel];

  v8 = [v7 draggedAssetReferences];
  v9 = [v8 count];
  v10 = [v5 count];

  if (v9 > v10)
  {
    v11 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v12 = [v11 layout];
    v13 = [v12 createFenceWithType:2];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PXCuratedLibraryUIViewController_dragController_draggedAssetReferencesDidChange___block_invoke;
  v15[3] = &unk_1E7748B68;
  v16 = v5;
  v14 = v5;
  [v7 performChanges:v15];
}

- (void)dragController:(id)a3 isDragSessionActiveDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v6 videoPlaybackController];
  [v5 setIsDragSessionActive:v4];
}

- (id)dragControllerAssetReferenceForBeginningSession:(id)a3
{
  v4 = [(UIViewController *)self px_oneUpPresentation];
  if ([v4 isContextMenuInteractionActive])
  {
    v5 = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dragController:(id)a3 draggableAssetReferenceAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62105;
  v16 = __Block_byref_object_dispose__62106;
  v17 = 0;
  v8 = [(PXCuratedLibraryUIViewController *)self gridView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PXCuratedLibraryUIViewController_dragController_draggableAssetReferenceAtLocation___block_invoke;
  v11[3] = &unk_1E7733D08;
  v11[4] = &v12;
  [v8 enumerateCuratedLibraryHitTestResultsAtPoint:v11 usingBlock:{x, y}];

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

- (id)oneUpPresentationActionManagerForPreviewing:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];

  v6 = [v5 selectionManager];
  v7 = [v6 selectionSnapshot];

  v8 = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
  if (!v8)
  {
    PXAssertGetLog();
  }

  if ([v5 isSelecting] && (objc_msgSend(v7, "isAnyItemSelected") & 1) != 0)
  {
    v9 = [v7 selectedIndexPaths];
    [v8 indexPath];
    v12 = [v9 containsIndexPath:v15];

    if (v12)
    {
      v11 = [v5 assetActionManager];
    }

    else
    {
      v13 = [(PXCuratedLibraryUIViewController *)self barsController];
      v11 = [v13 createAssetActionManagerForAssetReference:v8];

      [v11 setObjectReference:v8];
    }
  }

  else
  {
    v10 = [(PXCuratedLibraryUIViewController *)self barsController];
    v11 = [v10 createAssetActionManagerForAssetReference:v8];
  }

  return v11;
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v5 = a4;
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v7 layout];
  [v6 hideSpritesForObjectReferences:v5];
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v6 = a4;
  [(PXCuratedLibraryUIViewController *)self _requestExpansionIfNeededForInteractionWithAssetReference:v6 animated:0];
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  [v5 scrollLibraryViewToAssetReference:v6 scrollPosition:64 completionHandler:0];

  [(PXCuratedLibraryUIViewController *)self setNavigatedAssetReference:v6];
}

- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4
{
  v6 = a4;
  if (([a3 isContextMenuInteractionActive] & 1) == 0)
  {
    v7 = [v6 asset];
    if ([v7 playbackStyle] == 3)
    {
      v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v9 = [v8 videoPlaybackController];
      v10 = [v6 asset];
      v11 = [v9 isPlayingDisplayAsset:v10];

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
  v13 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:v6 image:&v15];
  v12 = v15;
LABEL_7:

  return v12;
}

- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4
{
  v5 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:a4 image:0];
  v6 = [(PXCuratedLibraryUIViewController *)self gridView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__PXCuratedLibraryUIViewController_oneUpPresentation_regionOfInterestForAssetReference___block_invoke;
  v9[3] = &unk_1E774B430;
  v10 = v6;
  v7 = v6;
  [v5 setPlaceholderViewFactory:v9];

  return v5;
}

uint64_t __88__PXCuratedLibraryUIViewController_oneUpPresentation_regionOfInterestForAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 rectInCoordinateSpace:v2];

  return [v2 resizableSnapshotViewFromRect:0 afterScreenUpdates:? withCapInsets:?];
}

- (BOOL)oneUpPresentation:(id)a3 commitPreviewForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
    [v6 curatedLibraryViewController:self commitPreviewForContextMenuInteraction:v5 withAssetReference:v8];
  }

  return v7 & 1;
}

- (void)oneUpPresentation:(id)a3 willEndPreviewingForContextMenuInteraction:(id)a4 configuration:(id)a5
{
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v5 = [v6 videoPlaybackController];
  [v5 setIsContextMenuInteractionActive:0];
}

- (void)oneUpPresentation:(id)a3 willStartPreviewingForContextMenuInteraction:(id)a4
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v4 = [v5 videoPlaybackController];
  [v4 setIsContextMenuInteractionActive:1];
}

- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4
{
  v5 = a4;
  if ([(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(PXCuratedLibraryUIViewController *)self gridView];
    v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v9 = [v8 viewModel];
    v10 = [v9 zoomablePhotosViewModel];
    v11 = [v10 isDisplayingIndividualItems];

    if (v11)
    {
      [v5 locationInView:v7];
      v12 = [(PXCuratedLibraryUIViewController *)self _hitTestAssetReferenceAtLocation:v7 inCoordinateSpace:?];
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

- (BOOL)oneUpPresentation:(id)a3 allowsMultiSelectMenuForInteraction:(id)a4
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v5 = [v4 viewModel];

  LOBYTE(v4) = [v5 isSelecting];
  return v4;
}

- (id)oneUpPresentation:(id)a3 secondaryIdentifiersForConfiguration:(id)a4
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v6 = [v5 viewModel];

  if ([v6 isSelecting])
  {
    v7 = [(PXCuratedLibraryUIViewController *)self navigatedAssetReference];
    if (v7)
    {
      [v7 indexPath];
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

- (id)targetedPreviewForAssetReference:(id)a3
{
  v15 = 0;
  v4 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:a3 image:&v15];
  v5 = v15;
  v6 = [(PXCuratedLibraryUIViewController *)self gridView];
  v7 = [v6 scrollViewController];

  v8 = [v7 scrollView];
  v9 = [v8 coordinateSpace];
  [v4 rectInCoordinateSpace:v9];

  if (v5)
  {
    PXPreviewImageViewForImage();
  }

  v10 = [v4 placeholderViewFactory];

  if (v10)
  {
    v11 = [v4 placeholderViewFactory];
    v12 = (v11)[2](v11, v4);

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E69DCE38]);
      PXRectGetCenter();
    }
  }

  return 0;
}

- (id)assetReferenceForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];

  v7 = [v6 selectionManager];
  v8 = [v7 selectionSnapshot];

  v9 = [v8 dataSource];
  v10 = [v9 identifier];
  v11 = [v4 section];
  v12 = [v4 item];

  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [v9 objectReferenceAtIndexPath:v15];

  return v13;
}

- (id)oneUpPresentation:(id)a3 previewForDismissingToSecondaryItemWithIdentifier:(id)a4 configuration:(id)a5
{
  v6 = [(PXCuratedLibraryUIViewController *)self assetReferenceForIndexPath:a4];
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

- (id)oneUpPresentation:(id)a3 previewForHighlightingSecondaryItemWithIdentifier:(id)a4 configuration:(id)a5
{
  v6 = [(PXCuratedLibraryUIViewController *)self assetReferenceForIndexPath:a4];
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

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 mediaProvider];

  return v4;
}

- (id)oneUpPresentationDataSourceManager:(id)a3
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 assetsDataSourceManager];
  v7 = [v6 currentPhotoKitAssetsDataSourceManager];

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3137 description:@"PhotoKit data source manager is missing"];
  }

  return v7;
}

- (int64_t)oneUpPresentationOrigin:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];

  v5 = [v4 zoomLevel];
  if (v5 == 3)
  {
    v9 = 39;
    goto LABEL_10;
  }

  if (v5 != 4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = [v4 zoomablePhotosViewModel];
  if (!v6)
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

  v7 = v6;
  [v6 zoomState];
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

- (void)prepareTipPopover:(id)a3 tipID:(id)a4
{
  v6 = a3;
  v7 = [(PXCuratedLibraryUIViewController *)self view];
  v9 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3098 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    v7 = 0;
  }

  [v6 setSourceView:v7];
  [v6 setPermittedArrowDirections:3];
}

- (id)sourceItemForTipID:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self filterButtonController];
  v4 = [v3 button];

  return v4;
}

- (void)curatedLibraryActionPerformer:(id)a3 contentFilterStateChanged:(id)a4
{
  v5 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_contentFilterStateChanged___block_invoke;
  v10[3] = &unk_1E7748B68;
  v11 = v5;
  v8 = v5;
  [v7 performChanges:v10];

  v9 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [v9 didChangeFilterState:v8];
}

- (void)curatedLibraryActionPerformer:(id)a3 libraryFilterStateChanged:(id)a4
{
  v4 = [(PXCuratedLibraryUIViewController *)self filterTipController:a3];
  [v4 userDidChangeLibraryFilterState];
}

- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v8 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3055 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAssetCollection", v18, v20}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3055 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAssetCollection", v18}];
  }

LABEL_3:
  v9 = [(PXCuratedLibraryUIViewController *)self moviePresenter];
  if (!v9)
  {
    v9 = [PXMoviePresenter moviePresenterWithPresentingViewController:self];
    [(PXCuratedLibraryUIViewController *)self setMoviePresenter:v9];
  }

  if ([v9 presentMovieViewControllerForAssetCollection:v8 keyAssetFetchResult:0 preferredTransitionType:1])
  {
    v10 = MEMORY[0x1E6991F28];
    v11 = *MEMORY[0x1E6991E08];
    v22[0] = v8;
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

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PXCuratedLibraryUIViewController *)self px_topmostPresentedViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = self;
  }

  v12 = v11;

  if (v12 == v8)
  {
    [(PXCuratedLibraryUIViewController *)v12 dismissViewControllerAnimated:1 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7);
  }

  return v12 == v8;
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  switch(a5)
  {
    case 1:
      v12 = [(PXCuratedLibraryUIViewController *)self navigationController];
      v13 = v12;
      v11 = v12 != 0;
      if (v12)
      {
        [v12 pushViewController:v10 animated:1];
      }

      break;
    case 2:
      v11 = [(PXCuratedLibraryUIViewController *)self _actionPerformer:v9 presentViewController:v10];
      break;
    case 0:
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3029 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(PXCuratedLibraryUIViewController *)self gridView];
      v10 = v7;
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_5:
          v11 = v8;
          v12 = [v11 popoverPresentationController];
          [v12 setSourceView:v9];

          v13 = [v10 buttonSpriteReference];
          v14 = [v9 regionOfInterestForSpriteReference:v13];

          if (v14)
          {
            [v14 rectInCoordinateSpace:v9];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v23 = [v11 popoverPresentationController];
            [v23 setSourceRect:{v16, v18, v20, v22}];
          }

          LOBYTE(v24) = 1;
          [(PXCuratedLibraryUIViewController *)self presentViewController:v11 animated:1 completion:0];

          goto LABEL_36;
        }

        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = objc_opt_class();
        v49 = NSStringFromClass(v50);
        v51 = [v10 px_descriptionForAssertionMessage];
        [v47 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2957 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer", v49, v51}];
      }

      else
      {
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        [v47 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2957 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer", v49}];
      }

      goto LABEL_5;
    }
  }

  v25 = [v7 actionType];
  v26 = [v25 isEqualToString:@"PXCuratedLibraryActionShowFilters"];

  if (v26)
  {
    v9 = v8;
    v10 = [v9 popoverPresentationController];
    LOBYTE(v24) = v10 != 0;
    if (!v10)
    {
LABEL_36:

      goto LABEL_37;
    }

    v27 = [off_1E7721810 sharedInstance];
    v28 = [v27 enableFilterViewControllerAnchoringToSender];

    if (v28)
    {
      v29 = [v7 sender];
      if (v29)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v29;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v61 = [MEMORY[0x1E696AAA8] currentHandler];
            v55 = objc_opt_class();
            v59 = NSStringFromClass(v55);
            v56 = [v29 px_descriptionForAssertionMessage];
            [v61 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2978 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v59, v56}];
          }

          [v10 setSourceView:v29];

          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = [v7 sender];
          if (v44)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v62 = [MEMORY[0x1E696AAA8] currentHandler];
              v57 = objc_opt_class();
              v60 = NSStringFromClass(v57);
              v58 = [v44 px_descriptionForAssertionMessage];
              [v62 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2981 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"actionPerformer.sender", v60, v58}];
            }
          }

          [v10 setBarButtonItem:v44];

          goto LABEL_35;
        }
      }

      v45 = [(PXCuratedLibraryUIViewController *)self view];
      [v10 setSourceView:v45];
    }

    else
    {
      v29 = [(PXCuratedLibraryUIViewController *)self view];
      [v10 setSourceView:v29];
    }

LABEL_35:

    [(PXCuratedLibraryUIViewController *)self presentViewController:v9 animated:1 completion:0];
    goto LABEL_36;
  }

  v30 = [v7 actionType];
  v31 = [v30 isEqualToString:@"PXCuratedLibraryActionTapToRadar"];

  if (v31)
  {
    v32 = v8;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v32 px_descriptionForAssertionMessage];
        [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2997 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxViewController", v35, v36}];
LABEL_44:

        goto LABEL_45;
      }

      goto LABEL_23;
    }

    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = objc_opt_class();
    v35 = NSStringFromClass(v52);
    [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2997 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxViewController", v35}];
    goto LABEL_45;
  }

  v37 = [v7 actionType];
  v38 = [v37 isEqualToString:@"PXCuratedLibraryActionCurationDebug"];

  if (v38)
  {
    v32 = v8;
    if (v32)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v54 = objc_opt_class();
        v35 = NSStringFromClass(v54);
        v36 = [v32 px_descriptionForAssertionMessage];
        [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3001 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxViewController", v35, v36}];
        goto LABEL_44;
      }

LABEL_23:
      v39 = [(PXCuratedLibraryUIViewController *)self gridView];
      v40 = [v39 diagnosticDescription];
      [v32 setHostViewDiagnosticDescription:v40];

      [(UIViewController *)self px_presentViewControllerInNavigationController:v32 animated:1 dimissButtonLocation:0 completion:0];
      goto LABEL_24;
    }

    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = objc_opt_class();
    v35 = NSStringFromClass(v53);
    [v33 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:3001 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxViewController", v35}];
LABEL_45:

    goto LABEL_23;
  }

  v41 = [v7 actionType];
  v24 = [v41 isEqualToString:@"PXCuratedLibraryActionShare"];

  if (!v24)
  {
    v42 = v8;
    v43 = [(PXCuratedLibraryUIViewController *)self navigationController];
    [v43 pushViewController:v42 animated:1];

    goto LABEL_37;
  }

  [(PXCuratedLibraryUIViewController *)self presentViewController:v8 animated:1 completion:0];
LABEL_24:
  LOBYTE(v24) = 0;
LABEL_37:

  return v24;
}

- (void)curatedLibraryActionPerformer:(id)a3 presentShareSheetWithSharingContext:(id)a4
{
  v16 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self px_sharePresentation];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2945 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v7 = [v6 createActivitySharingControllerWithContext:v16];
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2947 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  v8 = [v7 activityViewController];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v8 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2948 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController.activityViewController", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2948 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController.activityViewController", v13}];
  }

LABEL_7:
  [(PXCuratedLibraryUIViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)curatedLibraryActionPerformer:(id)a3 presentContextMenuActionsWithPerformers:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v6 = a4;
  v43 = self;
  v45 = [(PXCuratedLibraryUIViewController *)self px_sharePresentation];
  v7 = v45;
  if (!v45)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:v43 file:@"PXCuratedLibraryUIViewController.m" lineNumber:2882 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];

    v7 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E695DFB8]);
  v9 = [v7 defaultActivityTypeOrder];
  v10 = [v8 initWithArray:v9];

  if (!v10)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:v43 file:@"PXCuratedLibraryUIViewController.m" lineNumber:2884 description:{@"Invalid parameter not satisfying: %@", @"defaultActivityTypeOrder"}];
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
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
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
        v18 = [v17 menuElement];
        v19 = [v17 activityType];
        v20 = v13;
        if (!v19 || (v21 = [v10 containsObject:v19], v20 = v13, !v21) || ((objc_msgSend(v12, "setObject:forKeyedSubscript:", v18, v19), v19 != @"PXActivityTypeSetAllLibrariesFilter") ? (v22 = v19 == @"PXActivityTypeSetPersonalLibraryFilter") : (v22 = 1), !v22 ? (v23 = v19 == @"PXActivityTypeSetSharedLibraryFilter") : (v23 = 1), v20 = v46, v23))
        {
          [v20 addObject:v18];
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
  v32 = [v44 sender];
  if (v32)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_42;
    }

    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    v41 = [v32 px_descriptionForAssertionMessage];
    [v37 handleFailureInMethod:a2 object:v43 file:@"PXCuratedLibraryUIViewController.m" lineNumber:2928 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"actionPerformer.sender", v39, v41}];
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [v37 handleFailureInMethod:a2 object:v43 file:@"PXCuratedLibraryUIViewController.m" lineNumber:2928 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"actionPerformer.sender", v39}];
  }

LABEL_42:
  v33 = [(PXCuratedLibraryUIViewController *)v43 filterTipController];
  if ([v33 isPresentingTipView])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __106__PXCuratedLibraryUIViewController_curatedLibraryActionPerformer_presentContextMenuActionsWithPerformers___block_invoke_2;
    v50[3] = &unk_1E774C620;
    v51 = v32;
    v52 = v24;
    [v33 dismissTipViewWithCompletion:v50];

    v34 = v51;
  }

  else
  {
    v34 = [MEMORY[0x1E69DCC60] menuWithChildren:v24];
    [v32 setMenu:v34];
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

- (void)photosCloseButtonControllerHandleAction:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [(PXCuratedLibraryUIViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 curatedLibraryViewControllerDismiss:self] & 1) == 0)
  {
    PXAssertGetLog();
  }
}

- (void)curatedLibraryBarsControllerDidUpdateBars:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self updateDelegate];
  [v4 curatedLibraryViewDidUpdateBars:self];
}

- (id)barsControllerActionsForSelectionContextMenu:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];

  v5 = [v4 selectionSnapshot];
  if ([v5 isAnyItemSelected])
  {
    if (v5)
    {
      [v5 firstSelectedIndexPath];
    }

    PXIndexPathFromSimpleIndexPath();
  }

  return 0;
}

- (id)preferredFocusEnvironments
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 gridView];
  v5 = [v4 rootLayout];

  v6 = [(PXCuratedLibraryUIViewController *)self preferredFocusAssetReference];
  if (v6)
  {
    v7 = [v5 axLeafForObjectReference:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 axGroup];
  v9 = v8;
  if (v7)
  {
    v16 = v7;
    v17 = v8;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v16;
    v12 = 2;
  }

  else
  {
    v15 = v8;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v15;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v15, v16, v17}];

  return v13;
}

- (PXActionManager)assetActionManager
{
  v2 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v3 = [v2 viewModel];

  v4 = [v3 assetActionManager];

  return v4;
}

- (void)toggleFilter:(id)a3
{
  v4 = PXNumberPropertyFromCommand(a3);
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

  v8 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v8 performActionWithType:v9];
}

- (void)toggleSortOrder:(id)a3
{
  v4 = PXNumberPropertyFromCommand(a3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v7 performSortOrderMenuActionForItemAtIndex:v6];
}

- (void)toggleViewMode:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v3 performActionWithType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
}

- (void)toggleEditMode:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v3 toggleSelectMode];
}

- (void)zoomOut:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v3 zoomOutAllPhotos];
}

- (void)zoomIn:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  [v3 zoomInAllPhotos];
}

- (void)navigateToSegment:(id)a3
{
  v4 = PXNumberPropertyFromCommand(a3);
  v5 = [v4 integerValue] - 1;
  if (v5 <= 2)
  {
    v6 = qword_1A5383108[v5];
    v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v8 = [v7 viewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PXCuratedLibraryUIViewController_navigateToSegment___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v9[4] = v6;
    [v8 performChanges:v9];
  }
}

- (void)cancelSelectMode:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v4 = [v3 viewModel];

  if ([v4 isSelecting])
  {
    [v4 performChanges:&__block_literal_global_642];
  }
}

- (void)deselectAll:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v5 = [v3 viewModel];

  v4 = [v5 selectionManager];
  [v4 performChanges:&__block_literal_global_640];
}

- (void)openSelectionWithCommandDownArrow:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v9 = [v4 viewModel];

  v5 = [v9 actionManager];
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 layout];
  v8 = [v5 actionPerformerForNavigatingToNextZoomLevelInLayout:v7];

  if (v8)
  {
    [v8 performActionWithCompletionHandler:0];
  }

  else
  {
    [(PXCuratedLibraryUIViewController *)self _presentOneUpForSingleSelectedAssetWithActivity:0];
  }
}

- (void)openParentWithCommandUpArrow:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v5 = [v4 viewModel];

  v6 = [v5 zoomLevelInDirection:-1 fromZoomLevel:{objc_msgSend(v5, "zoomLevel")}];
  if (v6)
  {
    v7 = v6;
    v8 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v9 = [v8 viewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PXCuratedLibraryUIViewController_openParentWithCommandUpArrow___block_invoke;
    v10[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v10[4] = v7;
    [v9 performChanges:v10];
  }
}

- (void)validateCommand:(id)a3
{
  v31 = a3;
  if ([v31 action] == sel_navigateToSegment_)
  {
    v7 = PXNumberPropertyFromCommand(v31);
    v8 = [v7 integerValue];
    if ((v8 - 1) >= 3)
    {

      [v31 setAttributes:{objc_msgSend(v31, "attributes") | 4}];
      goto LABEL_25;
    }

    v9 = qword_1A5383108[v8 - 1];

    v10 = PXCuratedLibraryZoomLevelDiscoverabilityTitle(v9);
    [v31 setDiscoverabilityTitle:v10];

    v11 = PXCuratedLibraryZoomLevelLocalizedTitle(v9, 0);
    [v31 setTitle:v11];
    goto LABEL_16;
  }

  if ([v31 action] == sel_toggleEditMode_)
  {
    v11 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v12 = [v11 viewModel];
    if ([v12 isSelecting])
    {
      v13 = @"PXCuratedLibraryCancelSelectionButtonTitle";
    }

    else
    {
      v13 = @"PXCuratedLibrarySelectButtonTitle";
    }

    v14 = PXLocalizedStringFromTable(v13, @"PhotosUICore");
    [v31 setTitle:v14];

    goto LABEL_16;
  }

  if ([v31 action] == sel_toggleViewMode_)
  {
    v15 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v16 = [v15 menuTitleForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
    [v31 setTitle:v16];

    v17 = MEMORY[0x1E69DCAB8];
    v11 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v18 = [v11 systemImageNameForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];
    v19 = [v17 px_systemImageNamed:v18];
    [v31 setImage:v19];

LABEL_16:
    goto LABEL_25;
  }

  if ([v31 action] == sel_toggleFilter_)
  {
    v20 = PXNumberPropertyFromCommand(v31);
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

    v25 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v26 = [v25 menuTitleForActionType:v24];
    [v31 setDiscoverabilityTitle:v26];

    v27 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v28 = [v27 titleForActionType:v24 useCase:0];
    [v31 setTitle:v28];

    [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    [objc_claimAutoreleasedReturnValue() menuActionStateForActionType:v24];
    UIMenuElementStateFromPXMenuActionState();
  }

  if ([v31 action] == sel_toggleSortOrder_)
  {
    v4 = PXNumberPropertyFromCommand(v31);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 integerValue];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v29 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v30 = [v29 sortOrderMenuActionTitleForItemIndex:v6];

    if (v30)
    {
      [v31 setTitle:v30];
      [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
      [objc_claimAutoreleasedReturnValue() sortOrderMenuActionStateForItemIndex:v6];
      UIMenuElementStateFromPXMenuActionState();
    }

    [v31 setAttributes:{objc_msgSend(v31, "attributes") | 4}];
  }

LABEL_25:
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager targetForKeyCommands];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager targetForKeyCommands];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXCuratedLibraryUIViewController;
    v9 = [(PXCuratedLibraryUIViewController *)&v12 targetForAction:a3 withSender:v6];
  }

  v10 = v9;

  return v10;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = PXCuratedLibraryUIViewController;
  if ([(PXCuratedLibraryUIViewController *)&v20 canPerformAction:a3 withSender:v6])
  {
    v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v8 = [v7 viewModel];

    v9 = [v8 allowedActions];
    v10 = v9;
    if (sel_openParentWithCommandUpArrow_ != a3)
    {
      if (sel_openSelectionWithCommandDownArrow_ == a3)
      {
        if (([v9 containsObject:@"PXCuratedLibraryActionNavigateToNextZoomLevel"] & 1) == 0)
        {
          v16 = @"PXCuratedLibraryActionNavigateToOneUp";
          goto LABEL_30;
        }
      }

      else
      {
        if (sel_navigateToSegment_ == a3)
        {
          if ([v9 containsObject:@"PXCuratedLibraryActionNavigateToYearsMonthsOrDays"])
          {
            v15 = [v8 isSelecting] ^ 1;
            goto LABEL_31;
          }

          goto LABEL_35;
        }

        if (sel_zoomIn_ == a3)
        {
          v16 = @"PXCuratedLibraryActionAllPhotosZoomIn";
          goto LABEL_30;
        }

        if (sel_zoomOut_ == a3)
        {
          v16 = @"PXCuratedLibraryActionAllPhotosZoomOut";
          goto LABEL_30;
        }

        if (sel_deselectAll_ == a3)
        {
          v12 = [v8 selectionSnapshot];
          LOBYTE(v15) = [v12 isAnyItemSelected];
LABEL_26:

          goto LABEL_31;
        }

        if (sel_cancelSelectMode_ == a3)
        {
          goto LABEL_28;
        }

        if (sel_toggleEditMode_ != a3)
        {
          if (sel_toggleViewMode_ != a3)
          {
            if (sel_toggleViewer_ != a3)
            {
              if (sel_toggleFilter_ == a3)
              {
                v11 = PXNumberPropertyFromCommand(v6);
                v12 = v11;
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

            if ([v9 containsObject:@"PXCuratedLibraryActionNavigateToOneUp"])
            {
              v18 = [v8 singleSelectedAssetReference];
              LOBYTE(v15) = v18 != 0;

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

        if (([v9 containsObject:@"PXCuratedLibraryActionEnterSelectMode"] & 1) == 0)
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

- (void)swipeSelectionManagerDidAutoScroll:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v3 = [v4 layout];
  [v3 clearLastVisibleAreaAnchoringInformation];
}

- (void)swipeSelectionManager:(id)a3 extendSelectionInDirection:(unint64_t)a4
{
  v6 = [(PXCuratedLibraryUIViewController *)self presentedViewController];

  if (!v6)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    if ([v7 ensureSelectMode])
    {
      [v7 extendSelectionInDirection:a4];
      [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateForCursorAsset];
    }
  }
}

- (id)swipeSelectionManager:(id)a3 indexPathSetFromIndexPath:(PXSimpleIndexPath *)a4 toIndexPath:(PXSimpleIndexPath *)a5
{
  v9 = [a3 selectionManager];
  v10 = [v9 dataSourceManager];
  v11 = [v10 dataSource];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    v21 = [v11 px_descriptionForAssertionMessage];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2632 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v19, v21}];
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2632 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v19}];
  }

LABEL_3:
  v12 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v13 = *&a4->item;
  v23[0] = *&a4->dataSourceIdentifier;
  v23[1] = v13;
  v14 = *&a5->item;
  v22[0] = *&a5->dataSourceIdentifier;
  v22[1] = v14;
  v15 = [v12 indexPathsFromIndexPath:v23 toIndexPath:v22 inDataSource:v11];

  return v15;
}

- (id)_hitTestResultAtLocation:(CGPoint)a3 withPadding:(UIEdgeInsets)a4 swipeSelectionManager:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  y = a3.y;
  x = a3.x;
  v12 = a5;
  v13 = [(PXCuratedLibraryUIViewController *)self gridView];
  v14 = [v12 scrollView];
  [v13 convertPoint:v14 fromCoordinateSpace:{x, y}];
  v16 = v15;
  v18 = v17;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__62105;
  v27 = __Block_byref_object_dispose__62106;
  v28 = 0;
  v19 = [v13 hitTestResultsAtPoint:0 padding:v16 passingTest:{v18, top, left, bottom, right}];
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

- (PXSimpleIndexPath)_indexPathForAssetAtLocation:(SEL)a3 withPadding:(CGPoint)a4 forSwipeSelectionManager:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = a4.y;
  x = a4.x;
  v28 = a6;
  v15 = [(PXCuratedLibraryUIViewController *)self _hitTestResultAtLocation:x withPadding:y swipeSelectionManager:top, left, bottom, right];
  v16 = [v15 assetReference];

  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = [v28 selectionManager];
  v18 = [v17 dataSourceManager];
  v19 = [v18 dataSource];

  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    v27 = [v19 px_descriptionForAssertionMessage];
    [v23 handleFailureInMethod:a3 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v25, v27}];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v23 handleFailureInMethod:a3 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2609 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"swipeSelectionManager.selectionManager.dataSourceManager.dataSource", v25}];
  }

LABEL_4:
  v20 = [v19 assetReferenceForAssetReference:v16];

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

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4
{
  a4;
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v8 = [v7 layout];
  [v8 padding];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4
{
  swipeSelectionManager = self->_swipeSelectionManager;
  a4;
  v7 = [(PXSwipeSelectionManager *)swipeSelectionManager scrollView];
  [v7 frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4
{
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  return [(PXCuratedLibraryUIViewController *)self _indexPathForAssetAtLocation:a4 withPadding:a5.x forSwipeSelectionManager:a5.y, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v4 viewModel];

  if (([v7 isSelecting] & 1) == 0)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];
    [v6 performChanges:&__block_literal_global_606];
  }
}

- (BOOL)swipeSelectionManager:(id)a3 shouldAutomaticallyTransitionToMultiSelectModeAtPoint:(CGPoint)a4
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider:a3];
  v6 = [v5 viewModel];
  v7 = [v6 allowedActions];
  v8 = [v7 containsObject:@"PXCuratedLibraryActionEnterSelectMode"];

  v9 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v10 = [v9 viewModel];
  LOBYTE(v6) = [v10 zoomLevel] != 4;

  return v6 & v8;
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];

  if ([v4 isSelecting])
  {
    v5 = [v4 zoomablePhotosViewModel];
    v6 = [v5 isDisplayingIndividualItems];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)secondaryToolbarControllerSetNeedsUpdate:(id)a3
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)_scrollLibraryViewToInitialPositionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(PXCuratedLibraryUIViewController *)self isGridViewReady])
  {
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 assetsDataSourceManager];
    [v6 performChanges:&__block_literal_global_601];
    v7 = [(PXCuratedLibraryUIViewController *)self gridView];
    v8 = [v7 scrollViewController];
    [v8 stopScrollingAndZoomingAnimations];

    v9 = [v5 layout];
    v10 = [v9 createAnchorForScrollingToInitialPosition];
    v11 = [v10 autoInvalidate];

    v12 = [v5 viewModel];
    if ([v12 zoomLevel] == 4)
    {
      v13 = [v12 zoomablePhotosViewModel];
      [v13 performChanges:&__block_literal_global_604];
    }

    if (v4)
    {
      v14 = [(PXCuratedLibraryUIViewController *)self gridView];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __93__PXCuratedLibraryUIViewController__scrollLibraryViewToInitialPositionWithCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E774C250;
      v16 = v4;
      [v14 installLayoutCompletionHandler:v15];
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Can't scroll library view to initial position"];
    (*(v4 + 2))(v4, 0, v5);
LABEL_9:
  }
}

- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)a3
{
  v5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v6 = [v5 viewModel];

  if (([v6 isSelecting] & 1) == 0)
  {
    v7 = [v6 singleSelectedAssetReference];
    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __84__PXCuratedLibraryUIViewController__presentOneUpForSingleSelectedAssetWithActivity___block_invoke;
      v8[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      v8[4] = a3;
      [(PXCuratedLibraryUIViewController *)self _presentOneUpForAssetReference:v7 configurationHandler:v8];
    }
  }
}

- (BOOL)_presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIViewController *)self px_oneUpPresentation];
  if ([v8 canStart] && (-[PXCuratedLibraryUIViewController viewProvider](self, "viewProvider"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "viewModel"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "allowedActions"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", @"PXCuratedLibraryActionNavigateToOneUp"), v11, v10, v9, v12))
  {
    [(PXCuratedLibraryUIViewController *)self setNavigatedAssetReference:v6];
    v13 = [v8 startWithConfigurationHandler:v7];
    v14 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v15 = [v14 videoPlaybackController];
    [v15 setIsOneUpVisible:v13];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)resetToInitialStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(PXCuratedLibraryUIViewController *)self canResetToInitialState])
  {
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];

    [v6 performChanges:&__block_literal_global_592];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__PXCuratedLibraryUIViewController_resetToInitialStateWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E7747648;
    v8 = v4;
    [(PXCuratedLibraryUIViewController *)self _scrollLibraryViewToInitialPositionWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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

  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];

  if ([(PXCuratedLibraryUIViewController *)self canResetToInitialState])
  {
    v5 = [v4 isResetToInitialState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canResetToInitialState
{
  if (![(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    return 1;
  }

  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v4 = [v3 viewModel];

  if ([v4 isNavigating] & 1) != 0 || (objc_msgSend(v4, "isSelecting") & 1) == 0 && (-[PXCuratedLibraryUIViewController px_containsViewControllerModalInPresentation](self, "px_containsViewControllerModalInPresentation") & 1) != 0 || objc_msgSend(v4, "isSelecting") && (objc_msgSend(v4, "selectionSnapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isAnyItemSelected"), v5, (v6) || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "state"), v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v11 = [(PXCuratedLibraryUIViewController *)self presentedViewController];
    v9 = v11 == 0;
  }

  return v9;
}

- (BOOL)scrollViewControllerShouldScrollToTop:(id)a3
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];
  v6 = [v5 zoomLevel];

  if (v6 == 4)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v8 = [v7 assetsDataSourceManager];
    [v8 forceAllPhotosAccurateIfNeeded];
  }

  v9 = +[PXCuratedLibrarySettings sharedInstance];
  v10 = [v9 enableCustomScrollToTopOrBottom];

  if (v10)
  {
    return ![(PXCuratedLibraryUIViewController *)self _scrollToNextSectionInDirection:-1 animated:1];
  }

  else
  {
    return 1;
  }
}

- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  y = a4.y;
  v9 = a3;
  v10 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v11 = [v10 layout];
  v12 = [v10 gridView];
  v13 = [v12 rootLayout];
  [v13 convertRect:v11 toDescendantLayout:{a5->x, a5->y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v15 = v14;

  v18 = [v9 decelerationRate];
  [v11 adjustedTargetVisibleTopForProposedTargetVisibleTop:&v18 scrollingVelocity:v15 decelerationRate:y];
  a5->y = a5->y + v16 - v15;
  [v9 setDecelerationRate:v18];

  v17 = +[PXGridTipsHelper filterAllPhotosTipID];
  [PXGridTipsHelper setTip:v17 isPresentable:[(PXCuratedLibraryUIViewController *)self isCollapsed]^ 1];
}

- (void)_updateScrolledToStates:(id)a3
{
  v4 = a3;
  v5 = [v4 isScrolledAtEdge:1 tolerance:10.0];
  v6 = [v4 isScrolledAtEdge:3 tolerance:10.0];

  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v8 = [v7 viewModel];

  if (v6 && ([v8 isScrolledToBottom] & 1) == 0)
  {
    [(PXCuratedLibraryUIViewController *)self _handleScrolledAtBottom];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PXCuratedLibraryUIViewController__updateScrolledToStates___block_invoke;
  v9[3] = &__block_descriptor_34_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v10 = v5;
  v11 = v6;
  [v8 performChanges:v9];
}

void __60__PXCuratedLibraryUIViewController__updateScrolledToStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setScrolledToTop:v3];
  [v4 setScrolledToBottom:*(a1 + 33)];
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PXCuratedLibraryUIViewController_scrollViewControllerContentBoundsDidChange___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v11 = a3;
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];
  v6 = [(UIViewController *)self px_oneUpPresentation];
  [v6 invalidatePresentingGeometry];

  v7 = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [v7 contentViewDidScroll];

  v8 = [v4 videoPlaybackController];
  [v8 visibleRectDidChange];

  v9 = [(PXCuratedLibraryUIViewController *)self hoverGesture];
  [v9 px_cancel];

  [v11 visibleOrigin];
  if (v10 < 0.0 && ([v11 isManuallyChanging] & 1) == 0 && objc_msgSend(v5, "zoomLevel") == 4)
  {
    [v11 contentBounds];
    PXSizeIsEmpty();
  }

  if ([v11 isDragging])
  {
    [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:0 changeReason:2];
  }

  [(PXCuratedLibraryUIViewController *)self _updateScrolledToStates:v11];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  [(PXCuratedLibraryUIViewController *)self setCanShowFooter:1];
  v4 = [(PXCuratedLibraryUIViewController *)self skimmingController];
  [v4 contentViewWillScroll];
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXCuratedLibraryUIViewController *)self tapGesture];
  if (v9 == v7)
  {
    v11 = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];
    v10 = v11 == v8;
  }

  else
  {
    v10 = 0;
  }

  v12 = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
  if (v12 == v7)
  {
    v13 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    v14 = [v13 panGestureRecognizer];
    v4 = v14 == v8;

    v10 |= v4;
  }

  v15 = [(PXCuratedLibraryUIViewController *)self hoverGesture];
  if (v15 == v7)
  {
    v17 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    v18 = [v17 panGestureRecognizer];
    v16 = v18 == v8;
  }

  else
  {
    v16 = 0;
  }

  v19 = [(PXCuratedLibraryUIViewController *)self pinchGesture];
  if (v19 == v7)
  {
    v24 = v16;
    v25 = 0;
  }

  else
  {
    v20 = [(PXCuratedLibraryUIViewController *)self panGesture];
    v21 = v20;
    if (v20 == v7)
    {
      v29 = v20;
      v24 = v16;
      v25 = 0;
    }

    else
    {
      v22 = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
      v4 = v22;
      if (v22 != v7)
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

  v26 = [(PXCuratedLibraryUIViewController *)self swipeSelectionManager];
  v27 = [v26 gesturesForFailureRequirements];
  v23 = [v27 containsObject:v8];

  if (v25)
  {
  }

  v16 = v24;
  v21 = v29;
  if (v19 != v7)
  {
    goto LABEL_18;
  }

LABEL_19:

  return (v23 | v16 | v10) & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXCuratedLibraryUIViewController *)self panGesture];

  if (v8 != v7)
  {
    v9 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v15 = 0;
  v10 = [v6 px_isPanGestureRecognizerOfScrollView:&v15];
  v11 = v15;
  v9 = v11;
  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = [v11 px_scrollableAxis];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (v8 == v6)
  {
    v10 = [(PXCuratedLibraryUIViewController *)self tapGesture];
    v9 = v10 != v7;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(PXCuratedLibraryUIViewController *)self pinchGesture];
  if (v11 == v6)
  {
    v12 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    v13 = [v12 panGestureRecognizer];
    v14 = v13 == v7;

    v9 |= v14;
  }

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];

  v7 = [v6 allowedActions];
  v8 = [(PXCuratedLibraryUIViewController *)self panGesture];
  if (v8 != v4)
  {
    v9 = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];

    if (v9 == v4)
    {
      v19 = [(PXCuratedLibraryUIViewController *)self _scrollView];
      if (([v19 isDecelerating] & 1) != 0 || (objc_msgSend(v19, "isDragging") & 1) != 0 || !objc_msgSend(v7, "containsObject:", @"PXCuratedLibraryActionNavigateToPreviousZoomLevel"))
      {
        v13 = 0;
        goto LABEL_19;
      }

      v20 = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
      v21 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v22 = [v21 viewModel];
      v13 = [v20 zoomLevelDisplayedBeforeZoomLevel:{objc_msgSend(v22, "zoomLevel")}] != 0;
    }

    else
    {
      v10 = [(PXCuratedLibraryUIViewController *)self tapGesture];

      if (v10 == v4)
      {
        v19 = [(PXCuratedLibraryUIViewController *)self gridView];
        [v4 locationInView:v19];
        v23 = [(PXCuratedLibraryUIViewController *)self _buttonHitTestResultAtPoint:v19 inCoordinateSpace:?];
        v13 = v23 == 0;

        goto LABEL_19;
      }

      v11 = [(PXCuratedLibraryUIViewController *)self pressGesture];

      if (v11 != v4)
      {
        v12 = [(PXCuratedLibraryUIViewController *)self pinchGesture];

        if (v12 != v4)
        {
          v13 = 1;
          goto LABEL_20;
        }

        v19 = [(PXCuratedLibraryUIViewController *)self swipeSelectionManager];
        v13 = [v19 state] == 0;
LABEL_19:

        goto LABEL_20;
      }

      v24 = MEMORY[0x1E69DCA38];
      v19 = [(PXCuratedLibraryUIViewController *)self view];
      v20 = [v24 focusSystemForEnvironment:v19];
      v25 = [v20 focusedItem];
      v13 = v25 != 0;
    }

    goto LABEL_19;
  }

  if ([v7 containsObject:@"PXCuratedLibraryActionSkim"])
  {
    v14 = [(PXCuratedLibraryUIViewController *)self view];
    [v8 velocityInView:v14];
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

- (id)_buttonHitTestResultAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__62105;
  v16 = __Block_byref_object_dispose__62106;
  v17 = 0;
  v8 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PXCuratedLibraryUIViewController__buttonHitTestResultAtPoint_inCoordinateSpace___block_invoke;
  v11[3] = &unk_1E7733D08;
  v11[4] = &v12;
  [v8 enumerateCuratedLibraryHitTestResultsAtPoint:v11 usingBlock:?];
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

- (id)_hitTestAssetReferenceAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [v8 firstCuratedLibraryHitTestResultsAtPoint:1 withControl:{v10, v12}];
  v14 = [v13 assetReference];

  return v14;
}

- (void)touchingUIGestureRecognizerDidEndTouching:(id)a3
{
  v10 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (v5 != v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2228 description:{@"Invalid parameter not satisfying: %@", @"touchingRecognizer == self.skimmingTouchGesture"}];
  }

  v6 = [(PXCuratedLibraryUIViewController *)self skimmingController];
  v7 = [v6 endTouchingGestureEnded:{objc_msgSend(v10, "state") != 4}];

  if (v7)
  {
    v8 = [(PXCuratedLibraryUIViewController *)self tapGesture];
    [v8 px_cancel];
  }
}

- (void)touchingUIGestureRecognizerDidBeginTouching:(id)a3
{
  v5 = a3;
  v6 = [(PXCuratedLibraryUIViewController *)self skimmingTouchGesture];

  if (v6 != v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:2212 description:{@"Invalid parameter not satisfying: %@", @"touchingRecognizer == self.skimmingTouchGesture"}];
  }

  v7 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;
  v12 = [(PXCuratedLibraryUIViewController *)self skimmingController];
  if ([v12 canStartSkimming])
  {
    v13 = [(PXCuratedLibraryUIViewController *)self _buttonHitTestResultAtPoint:v7 inCoordinateSpace:v9, v11];

    if (!v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PXCuratedLibraryUIViewController_touchingUIGestureRecognizerDidBeginTouching___block_invoke;
      v15[3] = &unk_1E7733D58;
      v15[4] = self;
      [v7 enumerateCuratedLibraryHitTestResultsAtPoint:&unk_1F1910210 withControls:v15 usingBlock:{v9, v11}];
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
  v2 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  v3 = [v2 isPresentingTipView];
  if (v3)
  {
    [v2 dismissTipViewWithCompletion:0];
  }

  return v3;
}

- (void)_handleScreenEdgePan:(id)a3
{
  v4 = a3;
  if (![(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {
    v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v6 = [v5 viewModel];
    v7 = [v5 layout];
    v8 = [(PXCuratedLibraryUIViewController *)self gridView];
    v9 = [(PXCuratedLibraryUIViewController *)self backNavigationTransition];
    v10 = [v4 state];
    if ((v10 - 3) < 3)
    {
      if (v9)
      {
        v11 = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
        [v11 output];
        v13 = v12;

        if (v13 < 0.0)
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_7;
          v38[3] = &unk_1E7748B68;
          v38[4] = self;
          [v6 performChanges:v38];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_8;
          v36[3] = &unk_1E774C648;
          v37 = v6;
          [v9 animateToInitialStateWithCompletionBlock:v36];
          [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:0];
          v14 = v37;
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        [v6 performChanges:&__block_literal_global_578];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_5;
        v39[3] = &unk_1E774C648;
        v40 = v6;
        [v9 animateToFinalStateWithCompletionBlock:v39];
        [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:0];
        v14 = v40;
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_19;
    }

    if (v10 != 2)
    {
      if (v10 == 1)
      {
        v15 = [v6 zoomLevel];
        [(PXCuratedLibraryUIViewController *)self setZoomLevelBeforeBackNavigationTransition:v15];
        v16 = [(PXCuratedLibraryUIViewController *)self zoomLevelControl];
        v17 = [v16 zoomLevelDisplayedBeforeZoomLevel:v15];

        v18 = [v7 createCuratedLibraryLayoutTransitionIfNeededWithContext:{objc_msgSend(v7, "curatedLibraryLayoutAnimationContextForTransitionToZoomLevel:", v17)}];

        [(PXCuratedLibraryUIViewController *)self setBackNavigationTransition:v18];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke;
        v44[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
        v44[4] = v17;
        [v6 performChanges:v44];
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

        v9 = v18;
      }

      goto LABEL_18;
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    v21 = [(PXCuratedLibraryUIViewController *)self screenEdgePanGestureRecognizer];
    [v21 translationDistanceInView:v8];
    v23 = v22;

    v24 = +[PXCuratedLibrarySettings sharedInstance];
    v25 = [v24 enableInteractiveTransition];

    if (v25)
    {
      if (v23 < 100.0)
      {
        v27 = [(PXCuratedLibraryUIViewController *)self backNavigationTransition];
        v26 = v23 / 2000.0;
        *&v28 = v26;
        [v27 setFractionCompleted:v28];

LABEL_14:
        v32 = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __57__PXCuratedLibraryUIViewController__handleScreenEdgePan___block_invoke_3;
        v41[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
        *&v41[4] = v23;
        [v32 performChanges:v41];

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

    v33 = [(PXCuratedLibraryUIViewController *)self backNavigationGestureDirectionFilter];
    [v33 output];
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

- (void)_handlePan:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self gridView];
  v6 = [v4 state];
  if ((v6 - 3) < 3)
  {
    v7 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [v7 endPanning];
LABEL_9:

    goto LABEL_10;
  }

  if (v6 == 2)
  {
    [v4 translationInView:v5];
    v9 = v8;
    v11 = v10;
    if ([v5 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v9 = -v9;
    }

    v7 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    [v7 updatePanningWithTranslation:{v9, v11}];
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    [v4 locationInView:v5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PXCuratedLibraryUIViewController__handlePan___block_invoke;
    v12[3] = &unk_1E7733D58;
    v12[4] = self;
    [v5 enumerateCuratedLibraryHitTestResultsAtPoint:&unk_1F19101F8 withControls:v12 usingBlock:?];
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

- (void)_handlePinch:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    v6 = [v5 panGestureRecognizer];
    [v6 px_cancel];
  }

  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v8 = [v7 viewModel];

  v9 = [v8 allowedActions];
  v10 = [v9 containsObject:@"PXCuratedLibraryActionNavigateToOneUp"];
  if (!v10 || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 handlePresentingPinchGestureRecognizer:v4], v11, (v12 & 1) == 0))
  {
    v13 = [v4 state];
    v14 = v8;
    v15 = v13 != 1 && [v4 state] != 2;
    v16 = [(PXCuratedLibraryUIViewController *)self zoomLevelPinchFilter];
    v17 = [(PXCuratedLibraryUIViewController *)self gridView];
    v18 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v19 = [v18 zoomablePhotosInteraction];
    v20 = [v19 handlePinch:v4];

    v21 = v17;
    v22 = v16;
    v8 = v14;
    if (v20)
    {
      v9 = v28;
    }

    else
    {
      v9 = v28;
      if (!v15)
      {
        [v4 velocity];
        if (v23 <= 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          if (([v22 isTrackingPinch] & 1) == 0 && ((v10 ^ 1) & 1) == 0)
          {
            [v4 locationInView:v21];
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

    v25 = [v9 containsObject:@"PXCuratedLibraryActionPinchToSwitchZoomLevel"];
    if (((v20 | v15) & 1) != 0 || !v25)
    {
      [v22 reset];
    }

    else
    {
      [v4 scale];
      v27 = v26;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __49__PXCuratedLibraryUIViewController__handlePinch___block_invoke_2;
      v31[3] = &unk_1E7733D30;
      v32 = v21;
      v33 = v4;
      v34 = v8;
      v35 = self;
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

- (BOOL)_scrollToNextSectionInDirection:(int64_t)a3 animated:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 layout];
  if ([v7 presentedZoomLevel] == 3)
  {
    [v7 visibleRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 safeAreaInsets];
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
    v31[5] = a3;
    [v7 enumerateSectionBoundariesWithOptions:(a3 >> 62) & 2 usingBlock:v31];
    IsNull = CGRectIsNull(v34[1]);
    if (!IsNull)
    {
      v19 = [v6 gridView];
      v20 = [v19 rootLayout];
      [v20 convertRect:v7 fromDescendantLayout:{v34[1].origin.x, v34[1].origin.y, v34[1].size.width, v34[1].size.height}];
      p_x = &v34->origin.x;
      v34[1].origin.x = v22;
      p_x[5] = v23;
      p_x[6] = v24;
      p_x[7] = v25;

      x = v34[1].origin.x;
      y = v34[1].origin.y;
      v28 = [v19 scrollViewController];
      [v28 scrollRectToVisible:4 avoidingContentInsetEdges:v4 animated:{x, y, v13, v15}];
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

- (BOOL)_handleTapOnTitleWithHitTestResult:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 layout];
  v7 = [v4 assetCollectionReference];

  v8 = 0;
  if ([v6 presentedZoomLevel] == 3 && v7)
  {
    v9 = +[PXCuratedLibrarySettings sharedInstance];
    v10 = [v9 enableTapOnTitleToScroll];

    if (v10 && ([v6 sectionBoundariesForAssetCollectionReference:v7], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, !CGRectIsNull(v27)))
    {
      v15 = [v5 gridView];
      v16 = [v15 rootLayout];
      [v16 convertRect:v6 fromDescendantLayout:{x, y, width, height}];
      v18 = v17;
      v20 = v19;

      [v15 visibleBounds];
      v22 = v21;
      v24 = v23;
      v25 = [v15 scrollViewController];
      v8 = 1;
      [v25 scrollRectToVisible:4 avoidingContentInsetEdges:1 animated:{v18, v20, v22, v24}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_handleTapWithHitTestResult:(id)a3 keyModifierFlags:(int64_t)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v9 = [v8 viewModel];
    if (a4 & 0x100000) != 0 && ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      v10 = 1;
    }

    else
    {
      if ((a4 & 0x20000) != 0)
      {
        v10 = 0;
        v12 = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] ^ 1;
LABEL_10:
        v13 = [v7 control];
        if (v13 == 6)
        {
          v11 = [(PXCuratedLibraryUIViewController *)self _handleTapOnTitleWithHitTestResult:v7];
LABEL_40:

          goto LABEL_41;
        }

        if (v13 != 1)
        {
          v17 = [v9 actionManager];
          v18 = [v17 actionPerformerForHitTestResult:v7];

          v11 = v18 != 0;
          if (v18)
          {
            [v18 performActionWithCompletionHandler:0];
          }

          goto LABEL_40;
        }

        v14 = [(PXCuratedLibraryUIViewController *)self dragController];
        v15 = [v14 isDragSessionActive];

        if (v15)
        {
          v16 = PLCuratedLibraryGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "Ignoring tap since it is handled by the drag interaction.", buf, 2u);
          }
        }

        else
        {
          v19 = [v9 allowedActions];
          v20 = [v19 containsObject:@"PXCuratedLibraryActionAllPhotosZoomIn"];

          if (v20 && ([v8 zoomablePhotosInteraction], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "assetReference"), v22 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v21, "handleTapOnAssetReference:", v22), v22, v21, v29))
          {
            v16 = [v8 layout];
            [v16 clearLastVisibleAreaAnchoringInformation];
          }

          else
          {
            if ((v12 & 1) != 0 || ![v8 ensureSelectMode])
            {
              if (([v9 isSelecting] & 1) == 0 && (!v10 || !objc_msgSend(v8, "ensureSelectMode")))
              {
                v27 = [v7 assetReference];
                [(PXCuratedLibraryUIViewController *)self _presentOneUpForAssetReference:v27 configurationHandler:0];
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
                *&buf[10] = [v9 isSelecting];
                *&buf[14] = 2048;
                *&v34 = a4;
                WORD4(v34) = 1024;
                *(&v34 + 10) = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
                _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEBUG, "[PXCuratedLibraryUIViewController] Handling tap wants toggle selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
              }

              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __81__PXCuratedLibraryUIViewController__handleTapWithHitTestResult_keyModifierFlags___block_invoke;
              v30[3] = &unk_1E7748B68;
              v31 = v7;
              [v9 performChanges:v30];

LABEL_38:
              v27 = [(UIViewController *)self px_splitViewController];
              [v27 requestFocusUpdateWithPreferredFocusEnvironment:self];
              goto LABEL_39;
            }

            v23 = PLCuratedLibraryGetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109888;
              *&buf[4] = 1;
              *&buf[8] = 1024;
              *&buf[10] = [v9 isSelecting];
              *&buf[14] = 2048;
              *&v34 = a4;
              WORD4(v34) = 1024;
              *(&v34 + 10) = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
              _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEBUG, "[PXCuratedLibraryUIViewController] Handling tap wants range selection: %i. Select mode enabled: %i. Key modifier flags: %lu. Connected to hardware keyboard: %i.", buf, 0x1Eu);
            }

            *buf = 0u;
            v34 = 0u;
            v24 = [v7 assetReference];
            v25 = v24;
            if (v24)
            {
              [v24 indexPath];
            }

            else
            {
              *buf = 0u;
              v34 = 0u;
            }

            v16 = [v9 selectionManager];
            v32[0] = *buf;
            v32[1] = v34;
            [v16 extendSelectionToItemIndexPath:v32 withDelegate:v8];
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

- (void)_setWantsOptionalChromeVisible:(BOOL)a3 changeReason:(int64_t)a4
{
  if (a3 || ![(PXCuratedLibraryUIViewController *)self isInUnselectedTab])
  {
    v7 = *MEMORY[0x1E69DE248];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PXCuratedLibraryUIViewController__setWantsOptionalChromeVisible_changeReason___block_invoke;
    v8[3] = &unk_1E7733CB8;
    v9 = a3;
    v8[4] = self;
    v8[5] = a4;
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

- (BOOL)_handleTapToToggleChromeWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v4 locationInView:v5];
  v7 = v6;

  [v5 safeAreaInsets];
  v9 = v8;
  v11 = v10 + 12.5;
  [v5 bounds];
  v12 = CGRectGetMaxY(v25) + -12.5 - v9;
  v13 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v14 = [v13 viewModel];
  v15 = [v14 specManager];
  v16 = [v15 spec];

  v17 = [v16 layoutOrientation];
  v18 = [v16 sizeClass];
  v19 = v7 <= v12 && v7 >= v11;
  v20 = [v14 isSelecting];
  v22 = v17 != 2 || v18 != 1 || v19;
  v23 = v22 | v20;
  if (((v22 | v20) & 1) == 0)
  {
    -[PXCuratedLibraryUIViewController _setWantsOptionalChromeVisible:changeReason:](self, "_setWantsOptionalChromeVisible:changeReason:", [v14 wantsOptionalChromeVisible] ^ 1, 1);
  }

  return (v23 & 1) == 0;
}

- (void)_handlePress:(id)a3
{
  if (![(PXCuratedLibraryUIViewController *)self _handleGestureForFilterTipController])
  {

    [(PXCuratedLibraryUIViewController *)self _presentOneUpForSingleSelectedAssetWithActivity:1];
  }
}

- (void)_handleTapWithHitTestResults:(id)a3 tapGesture:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
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

      if (-[PXCuratedLibraryUIViewController _handleTapWithHitTestResult:keyModifierFlags:](self, "_handleTapWithHitTestResult:keyModifierFlags:", *(*(&v13 + 1) + 8 * v12), [v7 modifierFlags]))
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

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self skimmingController];
    v6 = [v5 state];

    if (v6 != 2 && ![(PXCuratedLibraryUIViewController *)self _handleTapToToggleChromeWithGestureRecognizer:v4])
    {
      v7 = [(PXCuratedLibraryUIViewController *)self gridView];
      [v4 locationInView:v7];
      v8 = [v7 hitTestResultsAtPoint:?];
      v9 = [(PXCuratedLibraryUIViewController *)self filterTipController];
      if ([v9 isPresentingTipView])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __47__PXCuratedLibraryUIViewController__handleTap___block_invoke;
        v10[3] = &unk_1E774A1B8;
        v10[4] = self;
        v11 = v8;
        v12 = v4;
        [v9 dismissTipViewWithCompletion:v10];
      }

      else
      {
        [(PXCuratedLibraryUIViewController *)self _handleTapWithHitTestResults:v8 tapGesture:v4];
      }
    }
  }
}

- (BOOL)_handleHoverWithHitTestResult:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (([v5 control] - 1) > 2)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v6 = [v5 assetReference];
      if (v6)
      {
        v7 = v6;
LABEL_8:
        v8 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
        v9 = [v8 viewModel];

        v17 = 0u;
        v18 = 0u;
        v10 = [v9 currentDataSource];
        v11 = v10;
        if (v10)
        {
          [v10 indexPathForObjectReference:v7];
        }

        else
        {
          v17 = 0u;
          v18 = 0u;
        }

        v12 = [v9 selectionManager];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __66__PXCuratedLibraryUIViewController__handleHoverWithHitTestResult___block_invoke;
        v14[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
        v15 = v17;
        v16 = v18;
        [v12 performChanges:v14];

        LOBYTE(v7) = 1;
        goto LABEL_12;
      }

      v7 = [v5 assetCollectionReference];
      if (v7)
      {
        goto LABEL_8;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  LOBYTE(v7) = 0;
LABEL_13:

  return v7;
}

uint64_t __66__PXCuratedLibraryUIViewController__handleHoverWithHitTestResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setPendingIndexPath:v4];
}

- (void)_handleHoverWithHitTestResults:(id)a3 hoverGesture:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 state] != 1 && objc_msgSend(v7, "state") != 2)
  {
    goto LABEL_12;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v9)
  {
LABEL_11:

LABEL_12:
    v13 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
    v8 = [v13 viewModel];

    v14 = [v8 selectionManager];
    [v14 performChanges:&__block_literal_global_549];

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
      objc_enumerationMutation(v8);
    }

    if ([(PXCuratedLibraryUIViewController *)self _handleHoverWithHitTestResult:*(*(&v15 + 1) + 8 * v12), v15])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_handleHover:(id)a3
{
  v4 = a3;
  v6 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v4 locationInView:v6];
  v5 = [v6 hitTestResultsAtPoint:?];
  [(PXCuratedLibraryUIViewController *)self _handleHoverWithHitTestResults:v5 hoverGesture:v4];
}

- (void)_scrollToBottomAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  v6 = [v5 enableCustomScrollToTopOrBottom];

  if (!v6 || ![(PXCuratedLibraryUIViewController *)self _scrollToNextSectionInDirection:1 animated:v3])
  {
    v7 = [(PXCuratedLibraryUIViewController *)self _scrollView];
    [v7 px_scrollToEdge:3 animated:v3];

    [(PXCuratedLibraryUIViewController *)self _handleScrolledAtBottom];
  }
}

- (id)pu_debugCurrentlySelectedAssets
{
  v2 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v3 = [v2 viewModel];
  v4 = [v3 selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = [v5 allItemsEnumerator];

  return v6;
}

- (id)_toolbarButtonConfigurationWithSymbolName:(id)a3
{
  v3 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:a3];
  v4 = PXCuratedLibraryToolbarBackdropGroupName;
  v5 = [v3 background];
  [v5 _setVisualEffectGroupName:v4];

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
    v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v7 = [v6 viewModel];
    v8 = [(PXCuratedLibraryFilterToggleButtonController *)v5 initWithViewModel:v7 buttonConfiguration:v4];
    v9 = self->_filterButtonController;
    self->_filterButtonController = v8;

    filterButtonController = self->_filterButtonController;
  }

  return filterButtonController;
}

- (id)_buttonForEllipsisButtonAction
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 layout];
  v6 = [v5 floatingHeaderLayout];
  v7 = [v6 ellipsisButtonActionPerformer];
  v8 = [v6 spriteReferenceForObjectReference:v7];
  v9 = [(PXCuratedLibraryUIViewController *)self gridView];
  v10 = [v9 viewForSpriteReference:v8];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v14 = NSStringFromClass(v12);
      v13 = [v10 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1632 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.gridView viewForSpriteReference:spriteReference]", v14, v13}];
    }
  }

  return v10;
}

- (CGRect)_rectForEllipsisActionPerformerButton
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 layout];
  v5 = [v4 floatingHeaderLayout];
  v6 = [v5 ellipsisButtonActionPerformer];
  v7 = [(PXCuratedLibraryUIViewController *)self gridView];
  v8 = [v6 buttonSpriteReference];
  v9 = [v7 regionOfInterestForSpriteReference:v8];

  v10 = [(PXCuratedLibraryUIViewController *)self gridView];
  [v9 rectInCoordinateSpace:v10];
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

- (void)setCplUIStatusProvider:(id)a3
{
  v5 = a3;
  cplUIStatusProvider = self->_cplUIStatusProvider;
  if (cplUIStatusProvider != v5)
  {
    v8 = v5;
    [(PXCPLUIStatusProvider *)cplUIStatusProvider unregisterChangeObserver:self context:PXCPLUIStatusProviderObservationContext_62237];
    objc_storeStrong(&self->_cplUIStatusProvider, a3);
    [(PXCPLUIStatusProvider *)self->_cplUIStatusProvider registerChangeObserver:self context:PXCPLUIStatusProviderObservationContext_62237];
    v7 = [(PXCuratedLibraryUIViewController *)self statusController];
    [v7 setStatusProvider:v8];

    v5 = v8;
  }
}

- (void)_saveCurrentAllPhotosScrollPosition
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];
  v5 = [v4 zoomLevel];

  if (v5 == 4)
  {
    v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v7 = [v6 layout];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PXCuratedLibraryUIViewController__saveCurrentAllPhotosScrollPosition__block_invoke;
    v9[3] = &unk_1E7733C70;
    v10 = v7;
    v11 = self;
    v8 = v7;
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

- (id)_regionOfInterestForAssetReference:(id)a3 image:(id *)a4
{
  v5 = a3;
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
  v2 = [(PXCuratedLibraryUIViewController *)self gridView];
  v3 = [v2 scrollViewController];
  v4 = [v3 scrollView];

  return v4;
}

- (void)_updateFirstResponderIfNeeded
{
  v3 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  if (!v3)
  {
    v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v5 = [v4 viewModel];
    v6 = [v5 isSelecting];

    if (v6)
    {

      [(PXCuratedLibraryUIViewController *)self becomeFirstResponder];
    }

    else
    {

      [(PXCuratedLibraryUIViewController *)self resignFirstResponder];
    }
  }
}

- (BOOL)_requestExpansionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXCuratedLibraryUIViewController *)self delegate];
  LOBYTE(v3) = [v5 curatedLibraryViewControllerExpand:self animated:v3];

  return v3;
}

- (void)_requestExpansionForSelectionIfNeeded
{
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];

  v6 = [(PXCuratedLibraryUIViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (([v5 isExpanded] & 1) == 0 && objc_msgSend(v5, "isSelecting"))
    {
      [(PXCuratedLibraryUIViewController *)self _requestExpansionAnimated:1];
    }

    v8 = [v5 selectionSnapshot];
    if ([v5 isExpanded])
    {
      goto LABEL_21;
    }

    if (![v8 isAnyItemSelected])
    {
      goto LABEL_21;
    }

    v9 = [(PXCuratedLibraryUIViewController *)self previousSelectedObject];
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9;
    v11 = [v8 firstObject];
    v12 = [(PXCuratedLibraryUIViewController *)self previousSelectedObject];
    v13 = v12;
    if (v11 == v12)
    {

LABEL_20:
      goto LABEL_21;
    }

    v14 = [v11 isEqual:v12];

    if (v14)
    {
LABEL_21:
      v21 = [v8 firstObject];
      [(PXCuratedLibraryUIViewController *)self setPreviousSelectedObject:v21];

      goto LABEL_22;
    }

    v10 = [v8 dataSource];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v8)
        {
LABEL_13:
          [v8 firstSelectedIndexPath];
LABEL_19:
          v20 = [v10 assetReferenceAtItemIndexPath:v22];
          [(PXCuratedLibraryUIViewController *)self _requestExpansionIfNeededForInteractionWithAssetReference:v20 animated:1];

          goto LABEL_20;
        }

LABEL_18:
        memset(v22, 0, sizeof(v22));
        goto LABEL_19;
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      v19 = [v10 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1485 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"snapshot.dataSource", v17, v19}];
    }

    else
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:1485 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"snapshot.dataSource", v17}];
    }

    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_22:
}

- (void)_requestExpansionIfNeededForInteractionWithAssetReference:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v8 = [v7 viewModel];
  v9 = [v8 isExpanded];

  if ((v9 & 1) == 0)
  {
    v10 = [(PXCuratedLibraryUIViewController *)self _regionOfInterestForAssetReference:v6 image:0];
    v11 = [(PXCuratedLibraryUIViewController *)self view];
    v12 = [v11 superview];
    v13 = [v12 superview];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15;

    v17 = [v11 px_rootScrollView];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v11;
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
        v43 = [v6 asset];
        v44 = [v43 uuid];
        *buf = 138543362;
        v52 = v44;
        _os_log_impl(&dword_1A3C1C000, v42, OS_LOG_TYPE_DEFAULT, "Expanding due to interaction with %{public}@ which is outside of safeArea", buf, 0xCu);
      }

      if (![(PXCuratedLibraryUIViewController *)self _requestExpansionAnimated:v4])
      {
        PXAssertGetLog();
      }

      if (!v4)
      {
        v45 = [(PXCuratedLibraryUIViewController *)self updateDelegate];
        [v45 curatedLibraryViewRequestImmediateUpdate:self];

        v46 = [v11 px_rootView];
        [v46 layoutIfNeeded];
      }
    }
  }
}

- (void)_requestFocusUpdateWithAssetReference:(id)a3
{
  [(PXCuratedLibraryUIViewController *)self setPreferredFocusAssetReference:a3];
  v4 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  [v4 requestFocusUpdateToEnvironment:self];
}

- (void)_requestFocusUpdateForCursorAsset
{
  v3 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v4 = [v3 viewModel];
  v5 = [v4 selectionSnapshot];

  v10 = 0u;
  v11 = 0u;
  if (v5)
  {
    [v5 cursorIndexPath];
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != *off_1E7721F68)
  {
    v7 = [v5 dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v8 = [v7 objectReferenceAtIndexPath:v9];

    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:v8];
  }
}

- (void)_updateScrollView
{
  v3 = [(PXCuratedLibraryUIViewController *)self gridView];
  v4 = [v3 scrollViewController];
  v12 = [v4 scrollView];

  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];
  v7 = [v6 contentFillsTopSafeArea];

  [v12 safeAreaInsets];
  v9 = -v8;
  v10 = v8 <= 200.0;
  v11 = -200.0;
  if (!v10)
  {
    v11 = v9;
  }

  if (!v7)
  {
    v11 = 0.0;
  }

  [v12 _setPocketInsets:{v11, 0.0, 0.0, 0.0}];
}

- (void)_updateTrackedScrollLevelIfNeeded
{
  v3 = [(PXCuratedLibraryUIViewController *)self trackedScrollContext];
  v5 = v4;
  v6 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v9 = [v6 viewModel];

  v7 = [v9 zoomLevel];
  v8 = [v9 scrollRegime];
  if (v3)
  {
    [PXCuratedLibraryAnimationTracker scrollAnimationDidEndWithScrollContext:v3, v5];
  }

  if (v7)
  {
    [PXCuratedLibraryAnimationTracker scrollAnimationDidBeginWithScrollContext:v7, v8];
  }

  [(PXCuratedLibraryUIViewController *)self setTrackedScrollContext:v7, v8];
}

- (void)_updateDismissalInteractionControllerProperties
{
  v7 = [(PXCuratedLibraryUIViewController *)self dismissalInteractionController];
  v3 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v4 = [v3 viewModel];

  v5 = [v4 configuration];
  v6 = [v5 allowedInteractiveDismissBehaviors];

  [v7 setSwipeDownAllowed:v6 & 1];
  [v7 setSwipeUpAllowed:(v6 >> 1) & 1];
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
    v4 = [(PXCuratedLibraryUIViewController *)self traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
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
  v3 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
  v4 = [v3 tabBarAccessoryPlacement];
  if (v4)
  {
    v5 = [(PXCuratedLibraryUIViewController *)self tabBar];
    [v5 frame];
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
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v3 = [v4 viewModel];
  -[PXCuratedLibraryUIViewController px_setModalInPresentation:](self, "px_setModalInPresentation:", [v3 isModalInPresentation]);
}

- (void)setCanShowFooter:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_canShowFooter != a3)
  {
    self->_canShowFooter = a3;
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
      v9 = [(PXCuratedLibraryUIViewController *)self viewProvider];
      v10 = [v9 footerController];
      [v10 performChanges:&__block_literal_global_468];

      v11 = [(PXCuratedLibraryUIViewController *)self bottomSpacerController];
      [v11 performChanges:&__block_literal_global_471];
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

- (void)setCanShowSecondaryToolbar:(BOOL)a3
{
  if (self->_canShowSecondaryToolbar != a3)
  {
    self->_canShowSecondaryToolbar = a3;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];

    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarTabBarAccessoryPlacement];
  }
}

- (void)_setCanShowSecondaryToolbar:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PXCuratedLibraryUIViewController *)self canShowSecondaryToolbar]!= a3)
  {
    if (v5 && v4 && ![(PXCuratedLibraryUIViewController *)self _isSecondaryToolbarTabBarAccessoryPlacementValid])
    {
      [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarTabBarAccessoryPlacement];
      v7 = [(PXCuratedLibraryUIViewController *)self secondaryToolbarController];
      [v7 updateIfNeeded];
    }

    v8 = 0.3;
    v9[1] = 3221225472;
    v9[0] = MEMORY[0x1E69E9820];
    v9[2] = __73__PXCuratedLibraryUIViewController__setCanShowSecondaryToolbar_animated___block_invoke;
    v9[3] = &unk_1E7749428;
    if (!v4)
    {
      v8 = 0.0;
    }

    v9[4] = self;
    v10 = v5;
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

- (void)setDidAppearInitially:(BOOL)a3
{
  if (self->_didAppearInitially != a3)
  {
    self->_didAppearInitially = a3;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarAccessoryViews];

    [(PXCuratedLibraryUIViewController *)self _configureTabBarCollapsedStateObservation];
  }
}

- (void)px_containedViewControllerModalStateChanged
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 px_containedViewControllerModalStateChanged];
  v3 = [(PXCuratedLibraryUIViewController *)self dismissalInteractionController];
  [v3 containedViewControllerModalStateChanged];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  [(PXCuratedLibraryUIViewController *)self minimumContentOverlayInsets];
  UIEdgeInsetsMax();
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 _setContentOverlayInsets:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v15 traitCollectionDidChange:v4];
  v5 = [(PXCuratedLibraryUIViewController *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {
    [(PXCuratedLibraryUIViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v6 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v7 = [v6 viewModel];
  v8 = [v7 zoomLevel];

  if (v8 == 1)
  {
    v9 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v10 = [v9 gridView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__PXCuratedLibraryUIViewController_traitCollectionDidChange___block_invoke;
    v14[3] = &unk_1E774C648;
    v14[4] = self;
    [v10 installLayoutCompletionHandler:v14];
  }

  v11 = [v4 horizontalSizeClass];
  if (v11 != [v5 horizontalSizeClass])
  {
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarControllerContainerView];
  }

  v12 = [(PXCuratedLibraryUIViewController *)self traitCollection];
  v13 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [v13 setTraitCollection:v12];

  [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(PXCuratedLibraryUIViewController *)self _contentUnavailableConfiguration];

  if (v3)
  {
    return 0;
  }

  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];
  if ([v6 wantsDarkStatusBar])
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(PXCuratedLibraryUIViewController *)self px_extendedTraitCollection];
  v9 = [v8 userInterfaceStyle];

  if (v9 == 2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:0 changeReason:3];
}

- (BOOL)isInSelectedTab
{
  v2 = self;
  v3 = [(PXCuratedLibraryUIViewController *)self tabBarController];
  v4 = [v3 selectedViewController];
  LOBYTE(v2) = [(UIViewController *)v2 px_isDescendantOfViewController:v4];

  return v2;
}

- (BOOL)isInUnselectedTab
{
  v3 = [(PXCuratedLibraryUIViewController *)self tabBarController];
  if (v3)
  {
    v4 = ![(PXCuratedLibraryUIViewController *)self isInSelectedTab];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v9 viewDidDisappear:a3];
  v4 = [(PXCuratedLibraryUIViewController *)self isViewLoaded];
  v5 = [(PXCuratedLibraryUIViewController *)self viewProviderIfLoaded];
  v6 = [v5 videoPlaybackController];
  [v6 setIsContentViewVisible:0];

  v7 = [(PXCuratedLibraryUIViewController *)self userActivityController];
  [v7 setActive:0];

  v8 = [v5 eventTracker];
  [v8 logViewControllerDidDisappear:self];

  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    if ([(PXCuratedLibraryUIViewController *)self isInUnselectedTab])
    {
      [(PXCuratedLibraryUIViewController *)self _setWantsOptionalChromeVisible:1 changeReason:0];
    }

    [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
    [v5 gridViewDidDisappear];
  }

  if (v4 != [(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    PXAssertGetLog();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v11 viewWillDisappear:a3];
  v4 = [(PXCuratedLibraryUIViewController *)self isViewLoaded];
  v5 = [(PXCuratedLibraryUIViewController *)self gridView];
  v6 = [v5 scrollViewController];

  if (([v6 isDecelerating] & 1) != 0 || objc_msgSend(v6, "isDragging"))
  {
    v7 = [(PXCuratedLibraryUIViewController *)self trackedScrollContext];
    [PXCuratedLibraryAnimationTracker scrollAnimationDidEndWithScrollContext:v7, v8];
  }

  v9 = +[PXCuratedLibraryAnimationTracker sharedTracker];
  [v9 zoomLevelTransitionsDidEndEarly];

  v10 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [v10 setCuratedLibraryIsVisible:0];

  if ([(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    [(PXCuratedLibraryUIViewController *)self _updateDrawerButtonVisibility];
  }

  if (v4 != [(PXCuratedLibraryUIViewController *)self isViewLoaded])
  {
    PXAssertGetLog();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v16 viewDidAppear:a3];
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];
  [v5 performChanges:&__block_literal_global_441];
  v6 = [v4 videoPlaybackController];
  [v6 setIsContentViewVisible:1];
  [v6 setIsOneUpVisible:0];
  objc_initWeak(&location, self);
  v7 = [off_1E7721858 sharedScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_2;
  v13[3] = &unk_1E774C318;
  objc_copyWeak(&v14, &location);
  [v7 scheduleMainQueueTask:v13];

  v8 = [(PXCuratedLibraryUIViewController *)self userActivityController];
  [v8 setActive:1];

  v9 = [v4 eventTracker];
  [v9 logViewControllerDidAppear:self];

  v10 = [(PXCuratedLibraryUIViewController *)self filterTipController];
  [v10 setCuratedLibraryIsVisible:1];

  [(PXCuratedLibraryUIViewController *)self additionalSafeAreaInsets];
  [(PXCuratedLibraryUIViewController *)self setAdditionalSafeAreaInsets:20.0];
  [(PXCuratedLibraryUIViewController *)self _invalidateBannerView];
  [v4 gridViewDidAppear];
  v11 = [off_1E7721858 sharedScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_3;
  v12[3] = &unk_1E774C648;
  v12[4] = self;
  [v11 scheduleTaskAfterCATransactionCommits:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __50__PXCuratedLibraryUIViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCanShowFooter:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v7 viewWillAppear:a3];
  v4 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v5 = [v4 viewModel];
  [v5 performChanges:&__block_literal_global_437];
  v6 = [(PXCuratedLibraryUIViewController *)self barsController];
  [v6 updateIfNeeded];

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
    v3 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    v4 = [v3 _bottomPalette];
    [v4 removeFromSuperview];

    v5 = [(PXCuratedLibraryUIViewController *)self navigationItem];
    [v5 _setBottomPalette:0];

    bannerView = self->_bannerView;
    self->_bannerView = 0;
  }
}

- (void)_setContentUnavailableConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryUIViewController;
  [(PXCuratedLibraryUIViewController *)&v4 _setContentUnavailableConfiguration:a3];
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

- (id)_emptyPlaceholderMessageTextAttributesFromTextProperties:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  v4 = a3;
  v5 = [v3 defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  [v6 setAlignment:1];
  [v6 setLineBreakMode:{objc_msgSend(v4, "lineBreakMode")}];
  v11[0] = *MEMORY[0x1E69DB648];
  v7 = [v4 font];
  v12[0] = v7;
  v11[1] = *MEMORY[0x1E69DB650];
  v8 = [v4 color];

  v11[2] = *MEMORY[0x1E69DB688];
  v12[1] = v8;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (void)_conditionallyUpdateEmptyPlaceholder
{
  v3 = [(PXCuratedLibraryUIViewController *)self emptyPlaceholderStatusController];

  if (v3)
  {

    [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  }
}

- (void)_addContentView:(id)a3
{
  v4 = a3;
  v11 = [(PXCuratedLibraryUIViewController *)self view];
  [v11 bounds];
  [v4 setFrame:?];
  v5 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v6 = [v5 viewModel];
  v7 = [v6 specManager];
  v8 = [v7 spec];
  v9 = [v8 backgroundColor];
  [v4 setBackgroundColor:v9];

  [v4 setAutoresizingMask:18];
  v10 = [(PXCuratedLibraryUIViewController *)self legibilityContainerView];
  [v11 insertSubview:v4 belowSubview:v10];
}

- (void)_applicationDidHide
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [v3 enableTabBarAccessoryControls];

  if (v4)
  {
    if ([(PXCuratedLibraryUIViewController *)self isInSelectedTab])
    {
      v5 = [(PXCuratedLibraryUIViewController *)self tabBar];
      v6 = [v5 _isMinimized];

      if (v6)
      {
        v7 = [(PXCuratedLibraryUIViewController *)self _scrollView];
        [v7 stopScrollingAndZooming];

        v8 = [(PXCuratedLibraryUIViewController *)self tabBar];
        [v8 _setMinimized:0];
      }
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v38 = a3;
  if (PXCuratedLibraryViewModelObserverContext_62322 != a5)
  {
    if (PXSharedLibraryStatusProviderObservationContext_62286 != a5)
    {
      if (PXLibraryFilterStateObservationContext_62287 != a5)
      {
        if (PXCuratedLibraryStyleGuideObserverContext == a5)
        {
          if ((a4 & 4) != 0)
          {
            [(PXCuratedLibraryUIViewController *)self _updateCanShowSecondaryToolbar];
            v33 = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
            [v33 setNeedsLayout];
          }
        }

        else if (PXZoomablePhotosViewModelObservationContext == a5)
        {
          if ((a4 & 2) != 0)
          {
            v34 = [(PXCuratedLibraryUIViewController *)self viewProvider];
            v35 = [v34 viewModel];
            v36 = [v35 singleSelectedAssetReference];
            [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:v36];
          }
        }

        else if (PXCPLUIStatusProviderObservationContext_62237 == a5)
        {
          [(PXCuratedLibraryUIViewController *)self _conditionallyUpdateEmptyPlaceholder];
        }

        else
        {
          if (ApplicationStateObservationContext != a5)
          {
            v37 = [MEMORY[0x1E696AAA8] currentHandler];
            [v37 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:526 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          if (a4)
          {
            v9 = +[PXApplicationState sharedState];
            v10 = [v9 isHidden];

            if (v10)
            {
              [(PXCuratedLibraryUIViewController *)self _applicationDidHide];
            }
          }
        }

        goto LABEL_52;
      }

      if ((a4 & 1) == 0)
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

  if (a4)
  {
    [(PXCuratedLibraryUIViewController *)self _invalidateSecondaryToolbar];
    v11 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v12 = [v11 layout];
    [v12 clearLastVisibleAreaAnchoringInformation];

    [(PXCuratedLibraryUIViewController *)self invalidateBoopableItemsProvider];
    [(PXCuratedLibraryUIViewController *)self _requestExpansionForSelectionIfNeeded];
    [(PXCuratedLibraryUIViewController *)self _updateFirstResponderIfNeeded];
  }

  if ((a4 & 0x100000000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateScrollView];
  }

  if ((a4 & 0x804) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateTrackedScrollLevelIfNeeded];
  }

  if ((a4 & 4) != 0)
  {
    v13 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v14 = [v13 viewModel];
    v15 = [v14 singleSelectedAssetReference];
    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:v15];
  }

  if ((a4 & 0x1000000040) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateEmptyPlaceholder];
  }

  if ((a4 & 0x1001000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateStatusBarStyle];
  }

  if ((a4 & 0x2000) != 0)
  {
    v16 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v17 = [v16 viewModel];
    v18 = [v17 zoomLevelTransitionPhase];

    if (!v18)
    {
      [(PXCuratedLibraryUIViewController *)self _updateSkimmingSlideshowEnabled];
    }
  }

  if ((a4 & 0x400000) != 0)
  {
    v19 = [(PXCuratedLibraryUIViewController *)self viewIfLoaded];
    [v19 setNeedsLayout];

    if ((a4 & 0x10000000) == 0)
    {
LABEL_28:
      if ((a4 & 0x20000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }
  }

  else if ((a4 & 0x10000000) == 0)
  {
    goto LABEL_28;
  }

  v20 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v21 = [v20 viewModel];
  v22 = [v21 cplUIStatusProvider];

  [(PXCuratedLibraryUIViewController *)self setCplUIStatusProvider:v22];
  [(PXCuratedLibraryUIViewController *)self _conditionallyUpdateEmptyPlaceholder];

  if ((a4 & 0x20000000) == 0)
  {
LABEL_29:
    if ((a4 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_42:
  v23 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v24 = [v23 viewModel];

  if ([v24 wantsSidebarVisible] && objc_msgSend(v24, "sidebarCanBecomeVisible"))
  {
    v25 = [(UIViewController *)self px_splitViewController];
    [v25 toggleSidebarVisibilityAnimated];
  }

  if ((a4 & 8) == 0)
  {
LABEL_30:
    if ((a4 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_46:
  v26 = [(PXCuratedLibraryUIViewController *)self viewProvider];
  v27 = [v26 viewModel];
  v28 = [v27 selectionSnapshot];
  v29 = [v28 isEmptySelectionAvoided];

  if (v29)
  {
    v30 = [(PXCuratedLibraryUIViewController *)self viewProvider];
    v31 = [v30 viewModel];
    v32 = [v31 singleSelectedAssetReference];
    [(PXCuratedLibraryUIViewController *)self _requestFocusUpdateWithAssetReference:v32];
  }

  [(PXCuratedLibraryUIViewController *)self _requestExpansionForSelectionIfNeeded];
  if ((a4 & 0x200000000) != 0)
  {
LABEL_31:
    [(PXCuratedLibraryUIViewController *)self _invalidateIsModalInPresentation];
  }

LABEL_32:
  if ((a4 & 0x2400000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarStyle];
  }

  if ((a4 & 0x102000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _invalidateSecondaryToolbar];
  }

  if ((a4 & 0x10000000000) != 0)
  {
    [(PXCuratedLibraryUIViewController *)self _updateAllowDisplayCompositing];
  }

  if ((a4 & 2) != 0)
  {
    goto LABEL_51;
  }

LABEL_52:
}

- (void)setIsCollapsed:(BOOL)a3
{
  if (self->_isCollapsed != a3)
  {
    v3 = a3;
    self->_isCollapsed = a3;
    [(PXCuratedLibraryUIViewController *)self _updateSecondaryToolbarLegibilityGradient];
    if (v3)
    {
      v4 = +[PXGridTipsHelper filterAllPhotosTipID];
      [PXGridTipsHelper setTip:v4 isPresentable:0];
    }
  }
}

- (void)setNavigatedAssetReference:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_navigatedAssetReference != v5)
  {
    v8 = v5;
    v7 = [(PXAssetReference *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_navigatedAssetReference, a3);
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
  v2 = [(PXCuratedLibraryUIViewController *)self presentedViewController];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;

    if (!v3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v2 = [v3 viewControllers];
    v4 = [v2 firstObject];
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

- (PXCuratedLibraryUIViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:309 description:{@"%s is not available as initializer", "-[PXCuratedLibraryUIViewController initWithCoder:]"}];

  abort();
}

- (PXCuratedLibraryUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryUIViewController.m" lineNumber:305 description:{@"%s is not available as initializer", "-[PXCuratedLibraryUIViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXCuratedLibraryUIViewController)initWithPhotoLibrary:(id)a3 initialZoomLevel:(int64_t)a4
{
  v6 = a3;
  v7 = [[PXCuratedLibraryViewConfiguration alloc] initWithPhotoLibrary:v6];

  [(PXCuratedLibraryViewConfiguration *)v7 setInitialZoomLevel:a4];
  v8 = [(PXCuratedLibraryUIViewController *)self initWithConfiguration:v7];

  return v8;
}

- (PXCuratedLibraryUIViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryUIViewController;
  v5 = [(PXCuratedLibraryUIViewController *)&v17 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
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
    v13 = [v4 photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v13;

    [(PXCuratedLibraryUIViewController *)v5 px_enableExtendedTraitCollection];
    v15 = [(PXCuratedLibraryUIViewController *)v5 px_extendedTraitCollection];
    [v4 swift_propagateEnvironmentValuesToExtendedTraitCollection:v15];
  }

  return v5;
}

- (void)test_presentSearchOverlayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 || PFProcessIsLaunchedToExecuteTests())
  {
    v7 = [(PXCuratedLibraryUIViewController *)self barsController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__PXCuratedLibraryUIViewController_Testing__test_presentSearchOverlayWithCompletion___block_invoke;
    v8[3] = &unk_1E774C250;
    v9 = v4;
    [v7 handleSearchActionWithSearchText:&stru_1F1741150 completion:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 4);
  }
}

@end