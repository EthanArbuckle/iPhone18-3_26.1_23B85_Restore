@interface PXPhotosUIViewController
+ (id)_roundedButtonConfigurationWithSymbolName:(id)name useOriginalSymbolAppearance:(BOOL)appearance inset:(double)inset fontSize:(double)size weight:(int64_t)weight groupName:(id)groupName;
+ (void)_configureOpacityOfSecondaryToolbarController:(id)controller withViewModel:(id)model secondaryToolbarAlpha:(double)alpha;
- (BOOL)assetsSharingHelper:(id)helper dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canResetToInitialState;
- (BOOL)hidesNavbar;
- (BOOL)hidesToolbar;
- (BOOL)isScrolledToTop;
- (BOOL)photosContentController:(id)controller canPlayAssetInline:(id)inline;
- (BOOL)photosContentController:(id)controller isDisplayAssetEligibleForAutoPlayback:(id)playback;
- (BOOL)photosContentController:(id)controller isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)effect;
- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)pu_shouldOptOutFromChromelessBars;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated;
- (BOOL)resetToInitialStateIfPossible;
- (BOOL)scrollToBottomAnimated:(BOOL)animated;
- (BOOL)shouldAlwaysRespectToolbarActionPlacementPreference;
- (BOOL)shouldBeginScrollingContentWithPanAtLocation:(CGPoint)location inCoordinateSpace:(id)space velocity:(CGPoint)velocity;
- (CGRect)layout:(id)layout visibleRectForRequestedVisibleRect:(CGRect)rect;
- (NSArray)visibleUUIDs;
- (NSSet)hiddenAssetReferences;
- (NSString)authenticationTitle;
- (NSString)description;
- (NSString)passcodeAuthenticationReason;
- (NSString)toolbarBackdropGroupName;
- (PXActionManager)assetActionManager;
- (PXAssetReference)assetReferenceForCurrentScrollPosition;
- (PXGView)gridView;
- (PXGridPresentationBarsUpdateDelegate)gridPresentationBarsUpdateDelegate;
- (PXPhotosCloseButtonController)closeButtonController;
- (PXPhotosContentController)contentController;
- (PXPhotosFilterToggleButtonController)filterButtonController;
- (PXPhotosStatusToggleButtonController)statusButtonController;
- (PXPhotosUIViewController)initWithCoder:(id)coder;
- (PXPhotosUIViewController)initWithConfiguration:(id)configuration;
- (PXPhotosUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPhotosViewEventTracker)eventTracker;
- (PXPhotosViewModel)viewModel;
- (PXPhotosViewModel)viewModelIfLoaded;
- (PXPhotosViewUIInteraction)interaction;
- (PXSelectionContainer)selectionContainer;
- (PXSplitViewController)observedSplitViewController;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIEdgeInsets)maskPaddingForContentController:(id)controller;
- (UIEdgeInsets)px_layoutMargins;
- (UIViewController)containerViewController;
- (UIViewControllerInteractiveTransitioning)edgeSwipeDismissalInteraction;
- (double)collapsibleFooterHeight;
- (double)secondaryToolbarHeight;
- (id)_createButtonForScrollingToNeighboringSectionInDirection:(unint64_t)direction;
- (id)_defaultPresentationEnvironment;
- (id)_popoverPresentationEnvironmentWithSourceItem:(id)item;
- (id)_viewControllerForPresentationEnvironment;
- (id)adjustHiddenAssetReferences:(id)references;
- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)visible;
- (id)barsControllerActionsForSelectionContextMenu:(id)menu;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)createSearchOverlayController;
- (id)currentDataSource;
- (id)customRegionOfInterestForAssetReference:(id)reference;
- (id)menuForPXAssetCollectionActionTypeTTRForLemonadeCollections;
- (id)placementInContext:(id)context forItemReference:(id)reference;
- (id)popoverPresentationEnvironmentForPhotosCloseButtonController:(id)controller;
- (id)popoverPresentationEnvironmentForPhotosStatusToggleButtonController:(id)controller;
- (id)ppt_navigateToBottom;
- (id)ppt_scrollToPreviousAssetOfAsset:(id)asset completion:(id)completion;
- (id)preferredFocusEnvironments;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)presentationEnvironmentForPhotosBarsController:(id)controller withSourceItem:(id)item;
- (id)pu_debugCurrentlySelectedAssets;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)px_navigationDestination;
- (id)regionOfInterestForActionPerformer:(id)performer;
- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image shouldSnapshotPlaceholder:(BOOL)placeholder;
- (id)scrollView;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)windowForProgressPresentationInAssetsSharingHelper:(id)helper;
- (unint64_t)photosContentControllerFilterSortedRecordsStrategy:(id)strategy;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_completeNavigationToDestination:(id)destination result:(int64_t)result error:(id)error;
- (void)_configureDismissalInteractionController;
- (void)_dismiss:(id)_dismiss completion:(id)completion;
- (void)_dismissOnInternalRequest;
- (void)_handleDidEndScrolling:(id)scrolling;
- (void)_invalidateObservedSplitViewController;
- (void)_invalidateOneUpPresentationInteraction;
- (void)_invalidateSidebarVisibilityDependentProperties;
- (void)_modalDismiss:(id)dismiss completion:(id)completion;
- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)activity;
- (void)_requestFocusUpdateWithAssetReference:(id)reference;
- (void)_scrollToInitialPositionAnimated:(BOOL)animated;
- (void)_scrollToInitialPositionIfNecessary;
- (void)_setNeedsUpdate;
- (void)_showSearch;
- (void)_updateBackButtonBehavior;
- (void)_updateBackgroundColor;
- (void)_updateBackgroundColorOverride;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateDismissalInteractionControllerProperties;
- (void)_updateDrawerButtonVisibility;
- (void)_updateEmptyBehaviorIfNeeded;
- (void)_updateFirstResponderIfNeeded;
- (void)_updateFooterLayout;
- (void)_updateIsModalInPresentation;
- (void)_updateObservedSplitViewController;
- (void)_updateOneUpPresentationInteraction;
- (void)_updateSecondaryToolbarAccessoryViews;
- (void)_updateSecondaryToolbarController;
- (void)_updateSecondaryToolbarOpacity;
- (void)_updateSidebarVisibilityDependentProperties;
- (void)_updateSubviewsOrdering;
- (void)_updateUIFromViewModelPrivacyState;
- (void)_waitForAvailabilityOfAsset:(id)asset completionHandler:(id)handler;
- (void)_waitUntilOneUpPresentationCanStartAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)addAssetsToAlbum:(id)album;
- (void)cancelSelectMode:(id)mode;
- (void)containerView:(id)view willMoveToWindow:(id)window;
- (void)dealloc;
- (void)deselectAll:(id)all;
- (void)ensureSwipeDismissalInteraction;
- (void)invalidateHeaderView;
- (void)loadView;
- (void)navigateToAsset:(id)asset inAssetContainer:(id)container revealInOneUp:(BOOL)up animated:(BOOL)animated completionHandler:(id)handler;
- (void)navigateToAssetReference:(id)reference;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)needsUpdateForContentController:(id)controller;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)paste:(id)paste;
- (void)photosBarsController:(id)controller didRequestDismissWithSender:(id)sender;
- (void)photosBarsController:(id)controller didRequestSearchWithSender:(id)sender;
- (void)photosBarsControllerDidUpdateBars:(id)bars animated:(BOOL)animated;
- (void)photosBarsControllerDidUpdateNavigationItemAppearance:(id)appearance;
- (void)photosCloseButtonControllerHandleAction:(id)action;
- (void)playCollectionAsMemory;
- (void)ppt_navigateToAssetReference:(id)reference revealInOneUp:(BOOL)up completionHandler:(id)handler;
- (void)preferencesDidChange;
- (void)prepareForDismissal;
- (void)px_containedViewControllerModalStateChanged;
- (void)px_didTransitionBars;
- (void)px_willTransitionBars;
- (void)scrollToCenterAssetReference:(id)reference completion:(id)completion;
- (void)scrollToRevealAssetReference:(id)reference completion:(id)completion;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)selectAll:(id)all;
- (void)setAlternateContentView:(id)view;
- (void)setHiddenAssetReferences:(id)references animationType:(int64_t)type;
- (void)setHidesNavbar:(BOOL)navbar;
- (void)setHidesToolbar:(BOOL)toolbar;
- (void)setObservedSplitViewController:(id)controller;
- (void)setOneUpEnabled:(BOOL)enabled;
- (void)setPlacementOverride:(id)override;
- (void)setPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setSecondaryToolbarAlpha:(double)alpha;
- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)preference;
- (void)setShowingInitialLoadPlaceholder:(BOOL)placeholder;
- (void)setTitle:(id)title;
- (void)showPlayer;
- (void)swift_configureDismissalInteractionController:(id)controller;
- (void)swift_handleViewModelChange:(unint64_t)change;
- (void)swift_initWithConfiguration:(id)configuration;
- (void)swift_scrollViewControllerDidScroll:(id)scroll;
- (void)toggleEditMode:(id)mode;
- (void)toggleFilter:(id)filter;
- (void)toggleSortOrder:(id)order;
- (void)toggleViewMode:(id)mode;
- (void)uiInteractionDidExtendSelection:(id)selection;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)zoomIn:(id)in;
- (void)zoomOut:(id)out;
@end

@implementation PXPhotosUIViewController

- (void)swift_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  self;
  sub_1A484F358(configurationCopy);
}

- (void)swift_configureDismissalInteractionController:(id)controller
{
  v5 = *((*MEMORY[0x1E69E7D40] & *controller) + 0x178);
  selfCopy = self;
  controllerCopy = controller;
  v5(self, &off_1F1728F50);
}

- (void)swift_handleViewModelChange:(unint64_t)change
{
  selfCopy = self;
  sub_1A484FC0C(change);
}

- (void)swift_scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1A485046C(scrollCopy);
}

- (id)customRegionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  sub_1A4850BD8();
}

- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)visible
{
  visibleCopy = visible;
  selfCopy = self;
  v6 = [(PXPhotosUIViewController *)selfCopy customRegionOfInterestForAssetReference:visibleCopy];
  if (v6)
  {

    viewModel = [(PXPhotosUIViewController *)selfCopy viewModel];
    currentDataSource = [(PXPhotosViewModel *)viewModel currentDataSource];

    firstAssetReference = [currentDataSource firstAssetReference];
    visibleCopy = firstAssetReference;
  }

  return visibleCopy;
}

- (id)adjustHiddenAssetReferences:(id)references
{
  sub_1A3C52C70(0, &qword_1EB126B50);
  sub_1A3C3A220(&qword_1EB126B48, &qword_1EB126B50);
  sub_1A524CF44();
  selfCopy = self;
  sub_1A4850E08();
}

- (void)showPlayer
{
  selfCopy = self;
  sub_1A4851278();
}

- (BOOL)shouldBeginScrollingContentWithPanAtLocation:(CGPoint)location inCoordinateSpace:(id)space velocity:(CGPoint)velocity
{
  y = velocity.y;
  swift_unknownObjectRetain();
  selfCopy = self;
  viewModel = [(PXPhotosUIViewController *)selfCopy viewModel];
  v9 = [(PXPhotosViewModel *)viewModel isScrollDisabledForAxis:1];

  if (v9)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    if (y > 0.0)
    {
      presentingViewController = [(PXPhotosUIViewController *)selfCopy presentingViewController];
      if (presentingViewController)
      {

        sub_1A4852D2C();
      }
    }

    swift_unknownObjectRelease();

    return 1;
  }
}

- (id)createSearchOverlayController
{
  selfCopy = self;
  v3 = sub_1A4853F94();

  return v3;
}

- (PXSplitViewController)observedSplitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_observedSplitViewController);

  return WeakRetained;
}

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (PXGridPresentationBarsUpdateDelegate)gridPresentationBarsUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_gridPresentationBarsUpdateDelegate);

  return WeakRetained;
}

- (id)_popoverPresentationEnvironmentWithSourceItem:(id)item
{
  itemCopy = item;
  _viewControllerForPresentationEnvironment = [(PXPhotosUIViewController *)self _viewControllerForPresentationEnvironment];
  v6 = [off_1E7721960 popoverPresenterWithViewController:_viewControllerForPresentationEnvironment sourceItem:itemCopy];

  return v6;
}

- (id)_defaultPresentationEnvironment
{
  _viewControllerForPresentationEnvironment = [(PXPhotosUIViewController *)self _viewControllerForPresentationEnvironment];
  v3 = [off_1E7721960 defaultPresenterWithViewController:_viewControllerForPresentationEnvironment];

  return v3;
}

- (id)_viewControllerForPresentationEnvironment
{
  selfCopy = self;
  containerViewController = [(PXPhotosUIViewController *)self containerViewController];
  v4 = containerViewController;
  if (containerViewController)
  {
    selfCopy = containerViewController;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (id)popoverPresentationEnvironmentForPhotosCloseButtonController:(id)controller
{
  button = [controller button];
  v5 = [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:button];

  return v5;
}

- (void)photosCloseButtonControllerHandleAction:(id)action
{
  actionCopy = action;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  viewDelegate = [viewModel viewDelegate];

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([viewDelegate photosViewControllerDismiss:self] & 1) == 0)
  {
    [(PXPhotosUIViewController *)self modalDismiss:actionCopy];
  }
}

- (id)popoverPresentationEnvironmentForPhotosStatusToggleButtonController:(id)controller
{
  button = [controller button];
  v5 = [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:button];

  return v5;
}

- (void)preferencesDidChange
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];

  if ([containerCollection px_isHiddenSmartAlbum])
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HiddenAlbumVisible", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    v7 = 0;
    if (keyExistsAndHasValidFormat && !AppBooleanValue)
    {
      v8 = PLGridZeroGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXPhotosUIViewController: Show Hidden Album was disabled in preferences, popping view.", buf, 2u);
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (([containerCollection px_isRecentlyViewedCollection] & 1) != 0 || objc_msgSend(containerCollection, "px_isRecentlySharedCollection"))
  {
    v18 = 0;
    v9 = CFPreferencesGetAppBooleanValue(@"RecentlyViewedAndSharedAlbumVisible", @"com.apple.mobileslideshow", &v18);
    if (v18)
    {
      if (!v9)
      {
        v10 = PLGridZeroGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "PXPhotosUIViewController: Show Recent Viewed and Shared Album was disabled in preferences, popping view.", v15, 2u);
        }

        goto LABEL_16;
      }
    }
  }

  if (v7)
  {
LABEL_16:
    px_isVisible = [(PXPhotosUIViewController *)self px_isVisible];
    px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
    [px_oneUpPresentation stopAnimated:px_isVisible];

    navigationController = [(PXPhotosUIViewController *)self navigationController];
    v14 = [navigationController px_popToViewControllerPrecedingViewController:self animated:px_isVisible];
  }
}

- (void)prepareForDismissal
{
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  [px_oneUpPresentation stopAnimated:0];
}

- (void)uiInteractionDidExtendSelection:(id)selection
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  v11 = 0u;
  v12 = 0u;
  if (selectionSnapshot)
  {
    [selectionSnapshot cursorIndexPath];
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != *off_1E7721F68)
  {
    dataSource = [selectionSnapshot dataSource];
    v10[0] = v11;
    v10[1] = v12;
    v9 = [dataSource objectReferenceAtIndexPath:v10];

    [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:v9];
  }
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  contentPrivacyState = [viewModel contentPrivacyState];

  viewModel2 = [(PXPhotosUIViewController *)self viewModel];
  allowsShareAction = [viewModel2 allowsShareAction];

  boopableItemsProvider4 = 0;
  if (allowsShareAction && !contentPrivacyState)
  {
    boopableItemsProvider = [(PXPhotosUIViewController *)self boopableItemsProvider];

    if (!boopableItemsProvider)
    {
      v9 = objc_alloc_init(PXBoopableItemsProvider);
      [(PXPhotosUIViewController *)self setBoopableItemsProvider:v9];

      viewModel3 = [(PXPhotosUIViewController *)self viewModel];
      selectionManager = [viewModel3 selectionManager];
      boopableItemsProvider2 = [(PXPhotosUIViewController *)self boopableItemsProvider];
      [boopableItemsProvider2 setSelectionManager:selectionManager];

      viewModel4 = [(PXPhotosUIViewController *)self viewModel];
      mediaProvider = [viewModel4 mediaProvider];
      boopableItemsProvider3 = [(PXPhotosUIViewController *)self boopableItemsProvider];
      [boopableItemsProvider3 setImagePreviewMediaProvider:mediaProvider];
    }

    boopableItemsProvider4 = [(PXPhotosUIViewController *)self boopableItemsProvider];
  }

  return boopableItemsProvider4;
}

- (PXSelectionContainer)selectionContainer
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  v4 = [PXSelectionContainer alloc];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  undoManager = [(PXPhotosUIViewController *)self undoManager];
  v8 = -[PXSelectionContainer initWithSelectionSnapshot:undoManager:context:](v4, "initWithSelectionSnapshot:undoManager:context:", selectionSnapshot, undoManager, [viewModel selectionContext]);

  return v8;
}

- (id)windowForProgressPresentationInAssetsSharingHelper:(id)helper
{
  view = [(PXPhotosUIViewController *)self view];
  window = [view window];

  return window;
}

- (BOOL)assetsSharingHelper:(id)helper dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  presentedViewController = [(PXPhotosUIViewController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    [(PXPhotosUIViewController *)self dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController == controllerCopy;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  view = [(PXPhotosUIViewController *)self view];
  [view setAccessibilityLabel:titleCopy];

  v6.receiver = self;
  v6.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v6 setTitle:titleCopy];
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v11 = objc_alloc_init(PXDiagnosticsItemProvider);
  containerCollection = [dataSource containerCollection];
  if ([containerCollection conformsToProtocol:&unk_1F198AE70])
  {
    [(PXDiagnosticsItemProvider *)v11 registerItem:containerCollection forIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
  v16.receiver = self;
  v16.super_class = PXPhotosUIViewController;
  v14 = [(UIViewController *)&v16 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:x, y];

  [v13 addObjectsFromArray:v14];

  return v13;
}

- (CGRect)layout:(id)layout visibleRectForRequestedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  scrollBehavior = [(PXPhotosUIViewController *)self scrollBehavior];
  if (scrollBehavior)
  {
    activeAnchor = [layoutCopy activeAnchor];

    if (activeAnchor)
    {
      [scrollBehavior adjustedScrollTargetContentOffsetForProposedTargetContentOffset:0 velocity:x currentContentOffset:y decelerationRate:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), x, y}];
      x = v12;
      y = v13;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  y = contentOffset.y;
  x = contentOffset.x;
  v9 = velocity.y;
  v10 = velocity.x;
  scrollingCopy = scrolling;
  scrollBehavior = [(PXPhotosUIViewController *)self scrollBehavior];
  if (!scrollBehavior)
  {
    *&v39 = COERCE_DOUBLE([scrollingCopy decelerationRate]);
    contentController = [(PXPhotosUIViewController *)self contentController];
    layout = [contentController layout];

    rootLayout = [layout rootLayout];
    [rootLayout convertRect:layout toDescendantLayout:{offset->x, offset->y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v30 = v29;
    v32 = v31;

    [layout adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:&v39 scrollingVelocity:v30 decelerationRate:{v32, v10, v9}];
    [layout lastScrollDirection];
    [scrollingCopy visibleRect];
    [layout topCollapsibleArea];
    PXScrollViewContentOffsetSnappedToRange();
  }

  v14 = offset->x;
  v15 = offset->y;
  v40 = 0.0;
  v41 = 0;
  *&v39 = 0.0;
  v16 = [scrollingCopy isInterruptingScrollWithDirection:&v39];
  if (v16)
  {
    v17 = *&v39;
  }

  else
  {
    v17 = v10;
  }

  if (v16)
  {
    v9 = v40;
  }

  [scrollBehavior adjustedScrollTargetContentOffsetForProposedTargetContentOffset:&v41 velocity:v14 currentContentOffset:v15 decelerationRate:{v17, v9, x, y}];
  v19 = v18;
  v21 = v20;
  v22 = [scrollBehavior detentAtContentOffset:v20];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __119__PXPhotosUIViewController_scrollViewControllerWillEndScrolling_withVelocity_targetContentOffset_currentContentOffset___block_invoke;
  v37[3] = &unk_1E7748CB8;
  v24 = v22;
  v38 = v24;
  [viewModel performChanges:v37];

  [scrollingCopy setDecelerationRate:v41];
  if (v21 != v15)
  {
    contentController2 = [(PXPhotosUIViewController *)self contentController];
    [contentController2 setShouldEnablePlaybackDuringAnimatedScroll:1];
  }

  if (v9 >= 0.0 || v21 <= y)
  {
    offset->x = v19;
    offset->y = v21;
  }

  else
  {
    offset->x = v14;
    offset->y = v15;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__PXPhotosUIViewController_scrollViewControllerWillEndScrolling_withVelocity_targetContentOffset_currentContentOffset___block_invoke_2;
    block[3] = &unk_1E7745A10;
    v34 = scrollingCopy;
    v35 = v19;
    v36 = v21;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_handleDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  scrollBehavior = [(PXPhotosUIViewController *)self scrollBehavior];
  if (scrollBehavior)
  {
    [scrollingCopy visibleRect];
    [scrollBehavior axis];
    PXPointValueForAxis();
  }
}

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  [(PXPhotosUIViewController *)self _handleDidEndScrolling:scrolling];
  scrollBehavior = [(PXPhotosUIViewController *)self scrollBehavior];

  if (scrollBehavior)
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    [contentController setShouldEnablePlaybackDuringAnimatedScroll:0];
  }
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance = [viewModel _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance];

  if (_shouldMimicSystemChromelessUsingManualScrollEdgeAppearance)
  {
    [scrollCopy visibleOrigin];
    v7 = v6;
    view = [(PXPhotosUIViewController *)self view];
    [view safeAreaInsets];
    v10 = floor(v7 + v9);

    navigationItem = [(PXPhotosUIViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceProgress:{fmax(fmin(v10, 16.0), 0.0) * 0.0625}];
  }

  [(PXPhotosUIViewController *)self swift_scrollViewControllerDidScroll:scrollCopy];
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  v5 = [viewModel viewDelegateRespondsTo:0x20000];

  if (v5)
  {
    viewModel2 = [(PXPhotosUIViewController *)self viewModel];
    viewDelegate = [viewModel2 viewDelegate];
    [viewDelegate photosViewController:self scrollViewControllerWillBeginScrolling:scrollingCopy];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObserverContext_170727 != context)
  {
    if ((change & 1) != 0 && SpecManagerObserverContext == context)
    {
      [(PXPhotosUIViewController *)self _updateScrollViewController];
      [(PXPhotosUIViewController *)self swift_specDidChange];
    }

    goto LABEL_44;
  }

  if ((change & 0x8000000000000) != 0)
  {
    [(PXPhotosUIViewController *)self setFallbackPlaceholderStatusController:0];
  }

  if ((change & 0x8000200000001) != 0)
  {
    [(PXPhotosUIViewController *)self _updateEmptyBehaviorIfNeeded];
  }

  if ((change & 4) != 0)
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    layout = [contentController layout];
    [layout clearLastVisibleAreaAnchoringInformation];

    [(PXPhotosUIViewController *)self invalidateBoopableItemsProvider];
    [(PXPhotosUIViewController *)self _updateFirstResponderIfNeeded];
    if ((change & 0x4000) == 0)
    {
LABEL_11:
      if ((change & 0x2000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      [(PXPhotosUIViewController *)self _showSearch];
      if ((change & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else if ((change & 0x4000) == 0)
  {
    goto LABEL_11;
  }

  viewModel = [(PXPhotosUIViewController *)self viewModel];
  singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
  [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:singleSelectedAssetReference];

  if ((change & 0x2000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((change & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  viewModel2 = [(PXPhotosUIViewController *)self viewModel];
  selectionSnapshot = [viewModel2 selectionSnapshot];
  isEmptySelectionAvoided = [selectionSnapshot isEmptySelectionAvoided];

  if (isEmptySelectionAvoided)
  {
    viewModel3 = [(PXPhotosUIViewController *)self viewModel];
    singleSelectedAssetReference2 = [viewModel3 singleSelectedAssetReference];
    [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:singleSelectedAssetReference2];
  }

LABEL_19:
  if ((change & 0x40000000) != 0)
  {
    viewModel4 = [(PXPhotosUIViewController *)self viewModel];
    dismissRequested = [viewModel4 dismissRequested];

    if (dismissRequested)
    {
      [(PXPhotosUIViewController *)self _dismissOnInternalRequest];
    }
  }

  if ((change & 0x400000000) != 0)
  {
    [(PXPhotosUIViewController *)self _updateUIFromViewModelPrivacyState];
    viewModel5 = [(PXPhotosUIViewController *)self viewModel];
    contentPrivacyState = [viewModel5 contentPrivacyState];

    if (contentPrivacyState == 1)
    {
      gridView = [(PXPhotosUIViewController *)self gridView];
      scrollViewController = [gridView scrollViewController];
      v24 = [scrollViewController isScrolledAtEdge:3 tolerance:100.0];

      [(PXPhotosUIViewController *)self setShouldScrollToInitialPositionAfterUnlock:v24];
    }

    else if ([(PXPhotosUIViewController *)self shouldScrollToInitialPositionAfterUnlock])
    {
      v25 = PLGridZeroGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "PXPhotosUIViewController: Scrolling to initial position after unlock.", buf, 2u);
      }

      [(PXPhotosUIViewController *)self _scrollToInitialPositionAnimated:0];
      [(PXPhotosUIViewController *)self setShouldScrollToInitialPositionAfterUnlock:0];
    }

    [(PXPhotosUIViewController *)self invalidateBoopableItemsProvider];
  }

  if ((change & 0x30000000000) != 0)
  {
    [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  }

  if ((change & 0x80000000000) != 0)
  {
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarController];
  }

  if ([objc_opt_class() shouldReconfigureOpacityOfSecondaryToolbarControllerForViewModelChange:change])
  {
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarOpacity];
    if ((change & 0x1000000000000000) == 0)
    {
LABEL_36:
      if ((change & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

  else if ((change & 0x1000000000000000) == 0)
  {
    goto LABEL_36;
  }

  [(PXPhotosUIViewController *)self _invalidateIsModalInPresentation];
  if ((change & 4) == 0)
  {
LABEL_37:
    if ((change & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_48:
    [(PXPhotosUIViewController *)self _invalidateOneUpPresentationInteraction];
    if ((change & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_47:
  [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarController];
  if ((change & 0x100000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_38:
  if ((change & 0x20) != 0)
  {
LABEL_39:
    [(PXPhotosUIViewController *)self _invalidateDismissalInteractionControllerProperties];
    [(PXPhotosUIViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

LABEL_40:
  [(PXPhotosUIViewController *)self swift_handleViewModelChange:change];
  if ((change & 0x400000000001) != 0)
  {
    [(PXPhotosUIViewController *)self _updateScrollViewController];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PXPhotosUIViewController_observable_didChange_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ((change & 0x800000000000) != 0)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PXPhotosUIViewController_observable_didChange_context___block_invoke_2;
    v26[3] = &unk_1E774C648;
    v26[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v26);
  }

LABEL_44:
}

- (void)setPlacementOverride:(id)override forItemReference:(id)reference
{
  referenceCopy = reference;
  overrideCopy = override;
  [(PXPhotosUIViewController *)self setPlacementOverride:overrideCopy];
  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController setPlacementOverride:overrideCopy forItemReference:referenceCopy];
}

- (id)placementInContext:(id)context forItemReference:(id)reference
{
  referenceCopy = reference;
  contextCopy = context;
  contentController = [(PXPhotosUIViewController *)self contentController];
  v9 = [contentController placementInContext:contextCopy forItemReference:referenceCopy];

  return v9;
}

- (unint64_t)photosContentControllerFilterSortedRecordsStrategy:(id)strategy
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:0x4000])
  {
    viewDelegate = [viewModel viewDelegate];
    v6 = [viewDelegate photosViewControllerFilterSortedRecordsStrategy:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)photosContentController:(id)controller isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)effect
{
  effectCopy = effect;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:0x10000])
  {
    viewDelegate = [viewModel viewDelegate];
    v8 = [viewDelegate photosViewController:self isAssetEligibleForPlaybackWithSettlingEffect:effectCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)photosContentController:(id)controller isDisplayAssetEligibleForAutoPlayback:(id)playback
{
  playbackCopy = playback;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:0x2000])
  {
    viewDelegate = [viewModel viewDelegate];
    v8 = [viewDelegate photosViewController:self isAssetEligibleForAutoPlayback:playbackCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)photosContentController:(id)controller canPlayAssetInline:(id)inline
{
  inlineCopy = inline;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:4096])
  {
    viewDelegate = [viewModel viewDelegate];
    v8 = [viewDelegate photosViewController:self canPlayAssetInline:inlineCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)regionOfInterestForActionPerformer:(id)performer
{
  actionType = [performer actionType];
  v5 = actionType;
  if (actionType == *off_1E7721BE8 || [actionType isEqualToString:?])
  {
    interaction = [(PXPhotosUIViewController *)self interaction];
    navigatedAssetReference = [interaction navigatedAssetReference];

    v8 = [(PXPhotosUIViewController *)self regionOfInterestForAssetReference:navigatedAssetReference];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  performerCopy = performer;
  sender = [performerCopy sender];
  v7 = [sender conformsToProtocol:&unk_1F1915FF0];

  if (v7)
  {
    sender2 = [performerCopy sender];
    v9 = [off_1E7721960 popoverPresenterWithViewController:self sourceItem:sender2];

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  selectionSnapshot = [performerCopy selectionSnapshot];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__170729;
  v30 = __Block_byref_object_dispose__170730;
  v31 = 0;
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__PXPhotosUIViewController_presentationEnvironmentForActionPerformer___block_invoke;
  v21 = &unk_1E7748C90;
  v24 = &v26;
  v12 = selectionSnapshot;
  v25 = a2;
  v22 = v12;
  selfCopy = self;
  [selectedIndexPaths enumerateItemIndexPathsUsingBlock:&v18];

  if (v27[5] && ([(PXPhotosUIViewController *)self regionOfInterestForAssetReference:v18, v19, v20, v21], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    gridView = [(PXPhotosUIViewController *)self gridView];
    [v13 rectInCoordinateSpace:gridView];
    v9 = [off_1E7721960 popoverPresenterWithViewController:self sourceView:gridView sourceRect:?];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v26, 8);
  if (!v9)
  {
LABEL_10:
    v15 = [(PXPhotosUIViewController *)self barsController:v18];
    v16 = [v15 existingBarItemForIdentifier:*off_1E7721F00];

    v9 = [off_1E7721960 popoverPresenterWithViewController:self sourceItem:v16];
  }

LABEL_11:

  return v9;
}

void __70__PXPhotosUIViewController_presentationEnvironmentForActionPerformer___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    *(v3 + 40) = 0;

    *a3 = 1;
    return;
  }

  v8 = [*(a1 + 32) dataSource];
  v9 = a2[1];
  v22[0] = *a2;
  v22[1] = v9;
  v10 = [v8 objectReferenceAtIndexPath:v22];

  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v13 handleFailureInMethod:v14 object:v15 file:@"PXPhotosUIViewController.m" lineNumber:2277 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[selectionSnapshot.dataSource objectReferenceAtIndexPath:indexPath]", v17}];
LABEL_9:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v21 = [v10 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:v18 object:v19 file:@"PXPhotosUIViewController.m" lineNumber:2277 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[selectionSnapshot.dataSource objectReferenceAtIndexPath:indexPath]", v17, v21}];

    goto LABEL_9;
  }

LABEL_5:
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (UIEdgeInsets)maskPaddingForContentController:(id)controller
{
  secondaryToolbarController = self->_secondaryToolbarController;
  if (secondaryToolbarController)
  {
    [(PXSecondaryToolbarController *)secondaryToolbarController padding];
  }

  else
  {
    v4 = *off_1E7721FA8;
    v5 = *(off_1E7721FA8 + 1);
    v6 = *(off_1E7721FA8 + 2);
    v7 = *(off_1E7721FA8 + 3);
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)needsUpdateForContentController:(id)controller
{
  viewIfLoaded = [(PXPhotosUIViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PXPhotosUIViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(PXPhotosUIViewController *)self navigationController];
    [navigationController2 pushViewController:viewControllerCopy animated:1];
  }

  return navigationController != 0;
}

- (id)presentationEnvironmentForPhotosBarsController:(id)controller withSourceItem:(id)item
{
  if (item)
  {
    [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:item];
  }

  else
  {
    [(PXPhotosUIViewController *)self _defaultPresentationEnvironment];
  }
  v4 = ;

  return v4;
}

- (void)_showSearch
{
  v16[1] = *MEMORY[0x1E69E9840];
  createSearchOverlayController = [(PXPhotosUIViewController *)self createSearchOverlayController];
  if (!createSearchOverlayController)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      currentDataSource = [(PXPhotosUIViewController *)self currentDataSource];
      v14 = 138412290;
      v15 = currentDataSource;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Can't get a search overlay view controller (data source: %@).", &v14, 0xCu);
    }

    goto LABEL_10;
  }

  if (MEMORY[0x1A590D320]())
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v16[0] = createSearchOverlayController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v4 setViewControllers:v5];

    navigationBar = [v4 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    [v4 setModalPresentationStyle:5];
    crossDissolveTransition = [MEMORY[0x1E69DD260] crossDissolveTransition];
    [v4 setPreferredTransition:crossDissolveTransition];

    selfCopy2 = self;
    v9 = v4;
    v10 = 1;
LABEL_9:
    [(PXPhotosUIViewController *)selfCopy2 presentViewController:v9 animated:v10 completion:0];
LABEL_10:

    goto LABEL_11;
  }

  traitCollection = [(PXPhotosUIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v4 = [createSearchOverlayController px_createViewControllerWithHiddenStatusBarForMainViewController:createSearchOverlayController];
    [v4 setModalPresentationStyle:5];
    [v4 setModalPresentationCapturesStatusBarAppearance:1];
    selfCopy2 = self;
    v9 = v4;
    v10 = 0;
    goto LABEL_9;
  }

  [createSearchOverlayController setModalPresentationStyle:5];
  [(PXPhotosUIViewController *)self presentViewController:createSearchOverlayController animated:0 completion:0];
LABEL_11:
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.search.session" withPayload:MEMORY[0x1E695E0F8]];
}

- (void)photosBarsController:(id)controller didRequestSearchWithSender:(id)sender
{
  v4 = [(PXPhotosUIViewController *)self viewModel:controller];
  [v4 performChanges:&__block_literal_global_992];
}

- (void)_dismiss:(id)_dismiss completion:(id)completion
{
  _dismissCopy = _dismiss;
  completionCopy = completion;
  configuration = [(PXPhotosUIViewController *)self configuration];
  customDismissHandler = [configuration customDismissHandler];

  if (customDismissHandler)
  {
    configuration2 = [(PXPhotosUIViewController *)self configuration];
    customDismissHandler2 = [configuration2 customDismissHandler];
    customDismissHandler2[2]();

    goto LABEL_3;
  }

  presentingViewController = [(PXPhotosUIViewController *)self presentingViewController];

  if (!presentingViewController)
  {
    navigationController = [(PXPhotosUIViewController *)self navigationController];

    if (!navigationController)
    {
      goto LABEL_4;
    }

    configuration2 = [(PXPhotosUIViewController *)self navigationController];
    v13 = [configuration2 popViewControllerAnimated:1];
LABEL_3:

LABEL_4:
    completionCopy[2](completionCopy);
    goto LABEL_7;
  }

  [(PXPhotosUIViewController *)self _modalDismiss:_dismissCopy completion:completionCopy];
LABEL_7:
}

- (void)photosBarsController:(id)controller didRequestDismissWithSender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  objc_initWeak(&location, self);
  v8 = [off_1E7721960 defaultPresenterWithViewController:self];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PXPhotosUIViewController_photosBarsController_didRequestDismissWithSender___block_invoke;
  v11[3] = &unk_1E773F928;
  objc_copyWeak(&v13, &location);
  v10 = senderCopy;
  v12 = v10;
  [viewModel requestCloseFromPresentationEnvironment:v8 handler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __77__PXPhotosUIViewController_photosBarsController_didRequestDismissWithSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__PXPhotosUIViewController_photosBarsController_didRequestDismissWithSender___block_invoke_2;
    v6[3] = &unk_1E774C648;
    v7 = v3;
    [WeakRetained _dismiss:v5 completion:v6];
  }
}

- (void)photosBarsControllerDidUpdateNavigationItemAppearance:(id)appearance
{
  gridPresentationBarsUpdateDelegate = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    gridPresentationBarsUpdateDelegate2 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
    [gridPresentationBarsUpdateDelegate2 viewControllerDidUpdateNavigationItemAppearance:self];
  }
}

- (void)photosBarsControllerDidUpdateBars:(id)bars animated:(BOOL)animated
{
  animatedCopy = animated;
  gridPresentationBarsUpdateDelegate = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    gridPresentationBarsUpdateDelegate2 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    [gridPresentationBarsUpdateDelegate2 viewController:self didUpdateBarsAnimated:animatedCopy isSelecting:{objc_msgSend(viewModel, "isInSelectMode")}];
  }
}

- (id)menuForPXAssetCollectionActionTypeTTRForLemonadeCollections
{
  if (PFOSVariantHasInternalUI())
  {
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    selectionSnapshot = [viewModel selectionSnapshot];
    if ([selectionSnapshot isAnyItemSelected])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      selectionSnapshot2 = [viewModel selectionSnapshot];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87__PXPhotosUIViewController_menuForPXAssetCollectionActionTypeTTRForLemonadeCollections__block_invoke;
      v17[3] = &unk_1E773F900;
      v18 = v5;
      v7 = v5;
      [selectionSnapshot2 enumerateSelectedObjectsUsingBlock:v17];

      interaction = [(PXPhotosUIViewController *)self interaction];
      navigatedAssetReference = [interaction navigatedAssetReference];
      assetCollection = [navigatedAssetReference assetCollection];
      localizedTitle = [assetCollection localizedTitle];

      v12 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v7 title:localizedTitle];
      v13 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v12 displayTitleInfo:0];
      selectedAssetsAssetCollectionActionManager = self->_selectedAssetsAssetCollectionActionManager;
      self->_selectedAssetsAssetCollectionActionManager = v13;

      [(PXActionManager *)self->_selectedAssetsAssetCollectionActionManager setPerformerDelegate:self];
      v15 = [(PXPhotoKitAssetCollectionActionManager *)self->_selectedAssetsAssetCollectionActionManager standardActionForActionType:*off_1E7721DE0];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __87__PXPhotosUIViewController_menuForPXAssetCollectionActionTypeTTRForLemonadeCollections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)barsControllerActionsForSelectionContextMenu:(id)menu
{
  v25[3] = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];

  px_isRecentlyDeletedSmartAlbum = [containerCollection px_isRecentlyDeletedSmartAlbum];
  px_isRecoveredSmartAlbum = [containerCollection px_isRecoveredSmartAlbum];
  isAnyItemSelected = [selectionSnapshot isAnyItemSelected];
  if (((isAnyItemSelected & 1) != 0 || (px_isRecentlyDeletedSmartAlbum & 1) != 0 || px_isRecoveredSmartAlbum) && [viewModel allowsMultiSelectMenu])
  {
    if (isAnyItemSelected)
    {
      v23 = 0u;
      v24 = 0u;
      if (selectionSnapshot)
      {
        [selectionSnapshot firstSelectedIndexPath];
      }

      dataSource = [selectionSnapshot dataSource];
      v22[0] = v23;
      v22[1] = v24;
      v12 = [dataSource objectReferenceAtIndexPath:v22];
      interaction = [(PXPhotosUIViewController *)self interaction];
      [interaction setNavigatedAssetReference:v12];
    }

    v14 = MEMORY[0x1E695DF70];
    assetActionManager = [(PXPhotosUIViewController *)self assetActionManager];
    v16 = *off_1E7721BE8;
    v25[0] = *off_1E7721B88;
    v25[1] = v16;
    v25[2] = *off_1E7721B80;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v18 = [off_1E7721468 menuElementsForActionManager:assetActionManager excludedActionTypes:v17];
    v19 = [v14 arrayWithArray:v18];

    menuForPXAssetCollectionActionTypeTTRForLemonadeCollections = [(PXPhotosUIViewController *)self menuForPXAssetCollectionActionTypeTTRForLemonadeCollections];
    if (menuForPXAssetCollectionActionTypeTTRForLemonadeCollections)
    {
      [v19 insertObject:menuForPXAssetCollectionActionTypeTTRForLemonadeCollections atIndex:0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NSString)passcodeAuthenticationReason
{
  v3 = PXLocalizedStringFromTable(@"PXContentPrivacyAuthenticationPasscodeReason_Generic", @"PhotosUICore");
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  px_isHiddenSmartAlbum = [containerCollection px_isHiddenSmartAlbum];
  px_isRecentlyDeletedSmartAlbum = [containerCollection px_isRecentlyDeletedSmartAlbum];
  px_isRecoveredSmartAlbum = [containerCollection px_isRecoveredSmartAlbum];
  if ((px_isHiddenSmartAlbum & 1) != 0 || (px_isRecentlyDeletedSmartAlbum & 1) != 0 || px_isRecoveredSmartAlbum)
  {
    v11 = @"PXContentPrivacyAuthenticationPasscodeReason_Recovered";
    if (px_isRecentlyDeletedSmartAlbum)
    {
      v11 = @"PXContentPrivacyAuthenticationPasscodeReason_RecentlyDeleted";
    }

    if (px_isHiddenSmartAlbum)
    {
      v12 = @"PXContentPrivacyAuthenticationPasscodeReason_Hidden";
    }

    else
    {
      v12 = v11;
    }

    v13 = PXLocalizedStringFromTable(v12, @"PhotosUICore");

    v3 = v13;
  }

  return v3;
}

- (NSString)authenticationTitle
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  px_isHiddenSmartAlbum = [containerCollection px_isHiddenSmartAlbum];
  px_isRecentlyDeletedSmartAlbum = [containerCollection px_isRecentlyDeletedSmartAlbum];
  px_isRecoveredSmartAlbum = [containerCollection px_isRecoveredSmartAlbum];
  v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_Generic";
  if (px_isRecoveredSmartAlbum)
  {
    v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_Recovered";
  }

  if (px_isRecentlyDeletedSmartAlbum)
  {
    v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_RecentlyDeleted";
  }

  if (px_isHiddenSmartAlbum)
  {
    v10 = @"PXContentPrivacyAuthenticationTouchIDTitle_Hidden";
  }

  else
  {
    v10 = v9;
  }

  v11 = PXLocalizedStringFromTable(v10, @"PhotosUICore");

  return v11;
}

- (void)_waitUntilOneUpPresentationCanStartAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  [px_oneUpPresentation waitUntilPresentationCanStartAnimated:animatedCopy completionHandler:handlerCopy];
}

- (void)navigateToAsset:(id)asset inAssetContainer:(id)container revealInOneUp:(BOOL)up animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  if (up)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  handlerCopy = handler;
  containerCopy = container;
  assetCopy = asset;
  v16 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:v11 asset:assetCopy assetCollection:containerCopy];

  if (animatedCopy)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  [(PXPhotosUIViewController *)self navigateToDestination:v16 options:v15 completionHandler:handlerCopy];
}

- (void)navigateToAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = [PXProgrammaticNavigationDestination alloc];
  asset = [referenceCopy asset];
  assetCollection = [referenceCopy assetCollection];

  v8 = [(PXProgrammaticNavigationDestination *)v5 initWithType:7 revealMode:2 asset:asset assetCollection:assetCollection];
  [(PXPhotosUIViewController *)self navigateToDestination:v8 options:0 completionHandler:&__block_literal_global_956];
}

- (void)_waitForAvailabilityOfAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  if (assetCopy)
  {
    handlerCopy = handler;
    v7 = +[PXApplicationSettings sharedInstance];
    [v7 defaultNavigationTimeoutDuration];
    v9 = v8;

    handlerCopy2 = [(PXPhotosUIViewController *)self viewModel];
    dataSourceManager = [handlerCopy2 dataSourceManager];
    [dataSourceManager waitForAvailabilityOfAsset:assetCopy timeout:handlerCopy completionHandler:v9];
  }

  else
  {
    v12 = *(handler + 2);
    handlerCopy2 = handler;
    v12();
  }
}

- (id)px_navigationDestination
{
  currentDataSource = [(PXPhotosUIViewController *)self currentDataSource];
  container = [currentDataSource container];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = container;

    if (v4)
    {
      v5 = [[PXProgrammaticNavigationDestination alloc] initWithObject:v4 revealMode:0];
      goto LABEL_7;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_completeNavigationToDestination:(id)destination result:(int64_t)result error:(id)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  errorCopy = error;
  if ([destinationCopy type] == 8 && objc_msgSend(destinationCopy, "assetCollectionSubtype") == 218)
  {
    if ([destinationCopy renderAlbumAssetsWithDeferredProcessing])
    {
      currentDataSource = [(PXPhotosUIViewController *)self currentDataSource];
      containerCollection = [currentDataSource containerCollection];
      px_isCinematicSmartAlbum = [containerCollection px_isCinematicSmartAlbum];

      if (px_isCinematicSmartAlbum)
      {
        if (result == 1)
        {
          v13 = MEMORY[0x1E6991F28];
          v25 = *MEMORY[0x1E6991E20];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v26[0] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
          [v13 sendEvent:@"com.apple.photos.CPAnalytics.navigateToCinematicAlbumWithRender" withPayload:v16];

          viewModel = [(PXPhotosUIViewController *)self viewModel];
          dataSourceManager = [viewModel dataSourceManager];
          dataSource = [dataSourceManager dataSource];
          containerCollection2 = [dataSource containerCollection];

          if ([containerCollection2 conformsToProtocol:&unk_1F198AE70])
          {
            v21 = containerCollection2;
            v22 = PXCreateDefaultAssetSharingHelper(self);
            [v22 ensureRenderingForAssetsWithDeferredProcessingInCollection:v21 completion:&__block_literal_global_951];
          }

          else
          {
            v22 = PLGridZeroGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v23) = 0;
              _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "PXPhotosUIViewController: Navigation to cinematic album failed, data source collection is not an asset collection.", &v23, 2u);
            }
          }
        }

        else
        {
          containerCollection2 = PLGridZeroGetLog();
          if (os_log_type_enabled(containerCollection2, OS_LOG_TYPE_ERROR))
          {
            v23 = 138412290;
            v24 = errorCopy;
            _os_log_impl(&dword_1A3C1C000, containerCollection2, OS_LOG_TYPE_ERROR, "PXPhotosUIViewController: Navigation to cinematic album failed. with error %@", &v23, 0xCu);
          }
        }
      }
    }
  }
}

void __74__PXPhotosUIViewController__completeNavigationToDestination_result_error___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = PLGridZeroGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotosUIViewController: Cinematic local asset rendering did not complete: It failed or was cancelled.", v3, 2u);
    }
  }
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke;
  aBlock[3] = &unk_1E773F7F0;
  objc_copyWeak(&v53, &location);
  v10 = destinationCopy;
  v51 = v10;
  v11 = handlerCopy;
  v52 = v11;
  v12 = _Block_copy(aBlock);
  if (![(PXPhotosUIViewController *)self isViewLoaded])
  {
    goto LABEL_9;
  }

  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel appearState])
  {

    goto LABEL_5;
  }

  hasScrolledToInitialPosition = [(PXPhotosUIViewController *)self hasScrolledToInitialPosition];

  if (!hasScrolledToInitialPosition)
  {
LABEL_9:
    pendingInitialNavigationRequest = [(PXPhotosUIViewController *)self pendingInitialNavigationRequest];
    [pendingInitialNavigationRequest cancel];

    v26 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v10 options:options completionHandler:v12];
    [(PXPhotosUIViewController *)self setPendingInitialNavigationRequest:v26];

    goto LABEL_34;
  }

LABEL_5:
  sidebarBackNavigationRootDestination = [v10 sidebarBackNavigationRootDestination];
  collection = [sidebarBackNavigationRootDestination collection];
  currentDataSource = [(PXPhotosUIViewController *)self currentDataSource];
  containerCollection = [currentDataSource containerCollection];
  v19 = [collection isEqual:containerCollection];

  if (v19)
  {
    navigationItem = [(PXPhotosUIViewController *)self navigationItem];
    [navigationItem px_setHidesBackButtonInRegularWidth:1];
    traitCollection = [(PXPhotosUIViewController *)self traitCollection];
    [navigationItem px_updateBackButtonVisibilityForTraitCollection:traitCollection];

    [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  }

  viewModel2 = [(PXPhotosUIViewController *)self viewModel];
  [viewModel2 performChanges:&__block_literal_global_554];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_3;
  v49[3] = &unk_1E773F818;
  v49[4] = self;
  v42 = _Block_copy(v49);
  asset = [v10 asset];
  v24 = [v10 type] == 7 && objc_msgSend(v10, "revealMode") != 2;
  if ([v10 type] == 19)
  {
    v27 = [v10 revealMode] == 1;
    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v27 = 0;
    if (v24)
    {
      goto LABEL_26;
    }
  }

  if ([v10 type] == 6 && objc_msgSend(v10, "revealMode") == 1)
  {
    viewModel3 = [(PXPhotosUIViewController *)self viewModel];
    viewOptionsModel = [viewModel3 viewOptionsModel];
    sortOrderState = [viewOptionsModel sortOrderState];

    if (sortOrderState && [sortOrderState sortOrder] != 2)
    {
      [sortOrderState performChanges:&__block_literal_global_560_170781];
    }

    currentDataSource2 = [(PXPhotosUIViewController *)self currentDataSource];
    v32 = currentDataSource2;
    v47 = 0u;
    v48 = 0u;
    if (!currentDataSource2 || ([currentDataSource2 lastItemIndexPath], v47 == *off_1E7721F68) || v48 == 0x7FFFFFFFFFFFFFFFLL || *(&v48 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      PXAssertGetLog();
    }

    buf[0] = v47;
    buf[1] = v48;
    v33 = [v32 assetAtItemIndexPath:buf];

    asset = v33;
    goto LABEL_26;
  }

  if (v27)
  {
LABEL_26:
    v34 = v46;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_561;
    v46[3] = &unk_1E773F8B0;
    v46[7] = v42;
    v35 = asset;
    v46[4] = v35;
    v46[5] = self;
    v46[6] = v10;
    v46[10] = options;
    v46[8] = v11;
    v46[9] = v12;
    [(PXPhotosUIViewController *)self _waitForAvailabilityOfAsset:v35 completionHandler:v46];
LABEL_27:
    v36 = (v34 + 7);

    contentController = v34[4];
LABEL_28:

    goto LABEL_29;
  }

  if (asset)
  {
    v34 = v45;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_4_574;
    v45[3] = &unk_1E773F8B0;
    v45[7] = v42;
    v35 = asset;
    v45[4] = v35;
    v45[5] = self;
    v45[6] = v10;
    v45[10] = options;
    v45[8] = v11;
    v45[9] = v12;
    [(PXPhotosUIViewController *)self _waitForAvailabilityOfAsset:v35 completionHandler:v45];
    goto LABEL_27;
  }

  if ([v10 revealMode] == 3)
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_2_579;
    v43[3] = &unk_1E77464C0;
    v44 = v12;
    [contentController scrollToInitialPositionAnimated:(options >> 1) & 1 withCompletionHandler:v43];
    v35 = 0;
    v36 = &v44;
    goto LABEL_28;
  }

  (*(v12 + 2))(v12, 1, 0);
  v35 = 0;
LABEL_29:
  if ([v10 type] == 8)
  {
    if ([v10 displayAlbumOptions])
    {
      interaction = [(PXPhotosUIViewController *)self interaction];
      v39 = *off_1E77220B8;
      v40 = [interaction canPerformActionType:*off_1E77220B8];

      if (v40)
      {
        interaction2 = [(PXPhotosUIViewController *)self interaction];
        [interaction2 performActionWithType:v39];
      }
    }
  }

LABEL_34:
  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _completeNavigationToDestination:*(a1 + 32) result:a2 error:v6];

  (*(*(a1 + 40) + 16))();
}

BOOL __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 photoLibrary];
    v5 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v4];

    if ([v5 hasSharedLibraryOrPreview])
    {
      v6 = [*(a1 + 32) viewModel];
      v7 = [v6 libraryFilterState];
      v8 = [v7 viewMode] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_561(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = (*(a1 + 80) >> 1) & 1;
    v7 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_562;
    v17[3] = &unk_1E773F888;
    v8 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v20 = v8;
    v17[4] = v9;
    v18 = v10;
    v19 = v5;
    v21 = v6;
    [v7 _waitUntilOneUpPresentationCanStartAnimated:v6 completionHandler:v17];
  }

  else if ((*(*(a1 + 56) + 16))())
  {
    v11 = [*(a1 + 40) viewModel];
    v12 = [v11 libraryFilterState];
    [v12 setViewMode:0];

    [*(a1 + 40) navigateToDestination:*(a1 + 48) options:*(a1 + 80) completionHandler:*(a1 + 64)];
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Photos view %@ timed out waiting for asset %@ to go to 1-up for navigation destination %@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_4_574(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) contentController];
    v7 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_575;
    v14[3] = &unk_1E7740890;
    v16 = *(a1 + 72);
    v15 = *(a1 + 32);
    [v6 scrollToRevealAsset:v7 completionHandler:v14];
  }

  else if ((*(*(a1 + 56) + 16))())
  {
    v8 = [*(a1 + 40) viewModel];
    v9 = [v8 libraryFilterState];
    [v9 setViewMode:0];

    [*(a1 + 40) navigateToDestination:*(a1 + 48) options:*(a1 + 80) completionHandler:*(a1 + 64)];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Photos view %@ timed out waiting for asset %@ to reveal navigation destination %@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_2_579(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXProgrammaticNavigationErrorDomain" code:-1002 debugDescription:@"failed to scroll to initial position"];
    (*(v2 + 16))(v2, 5, v5);
  }
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_575(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"failed to scroll to reveal asset %@", *(a1 + 32)}];
    (*(v2 + 16))(v2, 5, v5);
  }
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_562(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 40) wantsEditMode];
    v4 = [*(a1 + 40) completionKey];
    v5 = [*(a1 + 32) interaction];
    v6 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_2_567;
    v12[3] = &unk_1E773F860;
    v16 = *(a1 + 64);
    v15 = v3;
    v7 = v4;
    v13 = v7;
    v14 = *(a1 + 40);
    LOBYTE(v6) = [v5 presentOneUpForAssetReference:v6 configurationHandler:v12];

    v8 = *(a1 + 56);
    if (v6)
    {
      (*(v8 + 16))(*(a1 + 56), 1, 0);
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"failed to present 1-up for %@", *(a1 + 48)}];
      (*(v8 + 16))(v8, 5, v10);
    }
  }

  else
  {
    v9 = *(a1 + 56);
    v11 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"unable to present 1-up from %@", *(a1 + 32)}];
    (*(v9 + 16))(v9, 5, v11);
  }
}

void __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_2_567(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAnimated:*(a1 + 56)];
  [v3 setActivity:*(a1 + 48)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_3_568;
  v5[3] = &unk_1E774C648;
  v6 = *(a1 + 32);
  [v3 setActivityCompletion:v5];
  if ([*(a1 + 40) type] == 19)
  {
    v4 = [*(a1 + 40) source];
    [v3 setIsNavigationSourceWidget:{objc_msgSend(v4, "isEqualToString:", @"widget"}];
  }

  else
  {
    [v3 setIsNavigationSourceWidget:0];
  }
}

void *__76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_3_568(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v2 = [result UTF8String];

    return notify_post(v2);
  }

  return result;
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  currentDataSource = [(PXPhotosUIViewController *)self currentDataSource];
  containerCollection = [currentDataSource containerCollection];
  type = [destinationCopy type];
  if ((type - 5) < 2)
  {
    px_isAllPhotosSmartAlbum = [containerCollection px_isAllPhotosSmartAlbum];
  }

  else if ((type - 7) >= 2)
  {
    px_isAllPhotosSmartAlbum = type == 19 && [destinationCopy revealMode] == 1;
  }

  else
  {
    assetCollection = [destinationCopy assetCollection];
    if (assetCollection)
    {
      v9 = [off_1E7721488 alloc];
      v10 = *(off_1E7722228 + 1);
      v18[0] = *off_1E7722228;
      v18[1] = v10;
      v11 = [v9 initWithAssetCollection:assetCollection keyAssetReference:0 indexPath:v18];
      if (([assetCollection isEqual:containerCollection] & 1) != 0 || (!currentDataSource ? (v12 = 0) : (objc_msgSend(currentDataSource, "indexPathForAssetCollectionReference:", v11), v12 = *&v18[0]), v12 != *off_1E7721F68 || objc_msgSend(assetCollection, "px_isRecentsSmartAlbum") && objc_msgSend(containerCollection, "px_isAllPhotosSmartAlbum") && (-[PXPhotosUIViewController viewModel](self, "viewModel"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "viewOptionsModel"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "sortOrderState"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16)))
      {
        px_isAllPhotosSmartAlbum = 1;
      }

      else if ([assetCollection px_isFeaturedPhotosCollection])
      {
        px_isAllPhotosSmartAlbum = [containerCollection px_isFeaturedPhotosCollection];
      }

      else
      {
        px_isAllPhotosSmartAlbum = 0;
      }
    }

    else if ([destinationCopy type] == 7)
    {
      px_isAllPhotosSmartAlbum = [containerCollection px_isAllPhotosSmartAlbum];
    }

    else
    {
      px_isAllPhotosSmartAlbum = 0;
    }
  }

  return px_isAllPhotosSmartAlbum;
}

- (PXActionManager)assetActionManager
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  assetActionManager = [viewModel assetActionManager];

  return assetActionManager;
}

- (BOOL)resetToInitialStateIfPossible
{
  canResetToInitialState = [(PXPhotosUIViewController *)self canResetToInitialState];
  if (canResetToInitialState)
  {
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    [viewModel performChanges:&__block_literal_global_551_170806];

    [(PXPhotosUIViewController *)self resetScrollPositionAnimated:0];
  }

  return canResetToInitialState;
}

void __57__PXPhotosUIViewController_resetToInitialStateIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 defaultZoomStep];
  [v4 zoomStep];
  if (v3 != v2)
  {
    [v4 setZoomStep:0 isInteractive:0 shouldAnimate:0 anchorAssetReference:v2];
  }

  [v4 signalChange:0x400000000000000];
}

- (BOOL)canResetToInitialState
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if (!-[PXPhotosUIViewController isViewLoaded](self, "isViewLoaded") || ([viewModel selectionSnapshot], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAnyItemSelected"), v4, (v5 & 1) != 0) || (-[PXPhotosUIViewController px_containsViewControllerModalInPresentation](self, "px_containsViewControllerModalInPresentation") & 1) != 0 || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "state"), v6, v7))
  {
    v8 = 0;
  }

  else
  {
    presentedViewController = [(PXPhotosUIViewController *)self presentedViewController];
    v8 = presentedViewController == 0;
  }

  return v8;
}

- (BOOL)scrollToBottomAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(PXPhotosUIViewController *)self isViewLoaded])
  {
    return 0;
  }

  scrollView = [(PXPhotosUIViewController *)self scrollView];
  v6 = [scrollView px_isScrolledAtEdge:3];

  if (v6)
  {
    return 0;
  }

  scrollView2 = [(PXPhotosUIViewController *)self scrollView];
  [scrollView2 px_scrollToEdge:3 animated:animatedCopy];

  v9 = MEMORY[0x1E6991F28];
  v14 = *MEMORY[0x1E6991E20];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v15[0] = v11;
  v7 = 1;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v9 sendEvent:@"com.apple.photos.CPAnalytics.viewScrolledToBottom" withPayload:v12];

  return v7;
}

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isViewLoaded = [(PXPhotosUIViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    [contentController scrollToInitialPositionAnimated:animatedCopy withCompletionHandler:0];
  }

  return isViewLoaded;
}

- (NSArray)visibleUUIDs
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  visibleAssetUUIDs = [contentController visibleAssetUUIDs];

  return visibleAssetUUIDs;
}

- (id)pu_debugCurrentlySelectedAssets
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  selectionManager = [viewModel selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];

  return allItemsEnumerator;
}

- (BOOL)pu_shouldOptOutFromChromelessBars
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel navBarStyle])
  {
    shouldOptOutOfChromelessBars = 0;
  }

  else
  {
    viewModel2 = [(PXPhotosUIViewController *)self viewModel];
    shouldOptOutOfChromelessBars = [viewModel2 shouldOptOutOfChromelessBars];
  }

  return shouldOptOutOfChromelessBars;
}

- (id)preferredFocusEnvironments
{
  v17 = *MEMORY[0x1E69E9840];
  contentController = [(PXPhotosUIViewController *)self contentController];
  layout = [contentController layout];

  preferredFocusAssetReference = [(PXPhotosUIViewController *)self preferredFocusAssetReference];
  if (preferredFocusAssetReference)
  {
    v6 = [layout axLeafForObjectReference:preferredFocusAssetReference];
  }

  else
  {
    v6 = 0;
  }

  axGroup = [layout axGroup];
  v8 = axGroup;
  if (v6)
  {
    v15 = v6;
    v16 = axGroup;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v15;
    v11 = 2;
  }

  else
  {
    v14 = axGroup;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v14;
    v11 = 1;
  }

  v12 = [v9 arrayWithObjects:v10 count:{v11, v14, v15, v16}];

  return v12;
}

- (void)playCollectionAsMemory
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  v4 = [assetCollectionActionManager actionPerformerForActionType:*off_1E7721D68];

  [v4 performActionWithCompletionHandler:0];
}

- (void)_modalDismiss:(id)dismiss completion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(PXPhotosUIViewController *)self presentingViewController];
  if (!presentingViewController)
  {
    PXAssertGetLog();
  }

  [presentingViewController dismissViewControllerAnimated:1 completion:completionCopy];
}

- (void)cancelSelectMode:(id)mode
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_547_170809];
}

- (void)deselectAll:(id)all
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_545];
}

- (void)selectAll:(id)all
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel allowsSelectAllAction])
  {
    [viewModel performChanges:&__block_literal_global_543];
  }
}

void __38__PXPhotosUIViewController_selectAll___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 attemptSetInSelectMode:1])
  {
    [v2 selectAll];
  }
}

- (void)addAssetsToAlbum:(id)album
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  v5 = [assetCollectionActionManager actionPerformerForActionType:*off_1E7721C30];

  [v5 performActionWithCompletionHandler:0];
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

  viewModelIfLoaded = [(PXPhotosUIViewController *)self viewModelIfLoaded];
  [viewModelIfLoaded performSortOrderMenuActionForItemAtIndex:integerValue];
}

- (void)toggleFilter:(id)filter
{
  v4 = PXNumberPropertyFromCommand(filter);
  v6 = PXPhotosGridFilterActionIdentifierFromNumber(v4);

  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction performActionWithType:v6];
}

- (void)toggleViewMode:(id)mode
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction performActionWithType:*off_1E7722108];
}

- (void)toggleEditMode:(id)mode
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction toggleSelectMode];
}

- (void)zoomOut:(id)out
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction performActionWithType:*off_1E77221B0];
}

- (void)zoomIn:(id)in
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction performActionWithType:*off_1E77221A8];
}

- (void)paste:(id)paste
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  v5 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource firstSectionIndexPath];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = [v5 assetCollectionReferenceAtSectionIndexPath:v10];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  v8 = [assetCollectionActionManager actionPerformerForActionType:*off_1E7721D50 assetCollectionReference:v6];

  if (v8)
  {
    [v8 performActionWithCompletionHandler:&__block_literal_global_541_170811];
  }

  else
  {
    v9 = PLGridZeroGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Unable to paste assets.", v10, 2u);
    }
  }
}

void __34__PXPhotosUIViewController_paste___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLGridZeroGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Paste of assets failed with error:%@", &v6, 0xCu);
    }
  }
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_toggleEditMode_)
  {
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    if ([viewModel isInSelectMode])
    {
      v8 = @"PXPhotosGridCancel";
    }

    else
    {
      v8 = @"PXPhotosGridSelect";
    }

    interaction2 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
    [commandCopy setTitle:interaction2];
    goto LABEL_22;
  }

  if ([commandCopy action] == sel_toggleViewMode_)
  {
    interaction = [(PXPhotosUIViewController *)self interaction];
    v10 = *off_1E7722108;
    v11 = [interaction menuTitleForActionType:*off_1E7722108];
    [commandCopy setTitle:v11];

    viewModel = [(PXPhotosUIViewController *)self interaction];
    interaction2 = [viewModel menuImageForActionType:v10];
    [commandCopy setImage:interaction2];
LABEL_22:

    goto LABEL_23;
  }

  if ([commandCopy action] == sel_toggleFilter_)
  {
    v12 = PXNumberPropertyFromCommand(commandCopy);
    viewModel = PXPhotosGridFilterActionIdentifierFromNumber(v12);

    interaction2 = [(PXPhotosUIViewController *)self interaction];
    v6 = [interaction2 menuTitleForActionType:viewModel];
    [commandCopy setTitle:v6];
LABEL_14:

    goto LABEL_22;
  }

  if ([commandCopy action] == sel_toggleSortOrder_)
  {
    viewModel = [(PXPhotosUIViewController *)self viewModelIfLoaded];
    v13 = PXNumberPropertyFromCommand(commandCopy);
    v14 = v13;
    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    interaction2 = [viewModel sortOrderMenuActionTitleForItemIndex:integerValue];
    if (interaction2)
    {
      [commandCopy setTitle:interaction2];
      [viewModel sortOrderMenuActionStateForItemIndex:integerValue];
      UIMenuElementStateFromPXMenuActionState();
    }

    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
    goto LABEL_22;
  }

  if ([commandCopy action] != sel_addAssetsToAlbum_)
  {
    if ([commandCopy action] != sel_addAssetsToLastUsedAlbum_)
    {
      goto LABEL_24;
    }

    viewModel = [(PXPhotosUIViewController *)self viewModel];
    interaction2 = [viewModel assetActionManager];
    v6 = [interaction2 actionPerformerForActionType:*off_1E7721A20];
    v7 = [v6 localizedTitleForUseCase:1];
    [commandCopy setTitle:v7];

    goto LABEL_14;
  }

  viewModel = PXLocalizedStringFromTable(@"PXPhotosGridAddPhotosActionMenuTitle", @"PhotosUICore");
  [commandCopy setTitle:viewModel];
LABEL_23:

LABEL_24:
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  interaction = [(PXPhotosUIViewController *)self interaction];
  targetForKeyCommands = [interaction targetForKeyCommands];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    interaction2 = [(PXPhotosUIViewController *)self interaction];
    targetForKeyCommands2 = [interaction2 targetForKeyCommands];
  }

  else
  {
    assetActionManager = [(PXPhotosUIViewController *)self assetActionManager];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      assetActionManager2 = [(PXPhotosUIViewController *)self assetActionManager];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PXPhotosUIViewController;
      assetActionManager2 = [(PXPhotosUIViewController *)&v16 targetForAction:action withSender:senderCopy];
    }

    targetForKeyCommands2 = assetActionManager2;
  }

  return targetForKeyCommands2;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  v8 = viewModel;
  if (sel_paste_ == action)
  {
    currentDataSource = [viewModel currentDataSource];
    if ([currentDataSource numberOfSections] != 1)
    {
      v10 = 0;
LABEL_35:

      goto LABEL_36;
    }

    if (currentDataSource)
    {
      [currentDataSource firstSectionIndexPath];
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    v17 = [currentDataSource assetCollectionReferenceAtSectionIndexPath:v24];
    assetCollectionActionManager = [v8 assetCollectionActionManager];
    v19 = [assetCollectionActionManager canPerformActionType:*off_1E7721D50 assetCollectionReference:v17];
LABEL_29:
    v10 = v19;

    goto LABEL_35;
  }

  if (sel_addAssetsToAlbum_ == action)
  {
    assetCollectionActionManager2 = [viewModel assetCollectionActionManager];
    currentDataSource = assetCollectionActionManager2;
    v13 = off_1E7721C30;
    goto LABEL_33;
  }

  if (sel_openSelectionWithCommandDownArrow_ != action && sel_toggleViewer_ != action)
  {
    if (sel_zoomIn_ == action)
    {
      assetCollectionActionManager2 = [(PXPhotosUIViewController *)self interaction];
      currentDataSource = assetCollectionActionManager2;
      v13 = off_1E77221A8;
    }

    else if (sel_zoomOut_ == action)
    {
      assetCollectionActionManager2 = [(PXPhotosUIViewController *)self interaction];
      currentDataSource = assetCollectionActionManager2;
      v13 = off_1E77221B0;
    }

    else
    {
      if (sel_toggleViewMode_ != action)
      {
        if (sel_toggleFilter_ != action)
        {
          if (sel_toggleEditMode_ == action)
          {
            currentDataSource = [(PXPhotosUIViewController *)self interaction];
            canToggleSelectMode = [currentDataSource canToggleSelectMode];
            goto LABEL_34;
          }

          if (sel_cancelSelectMode_ == action)
          {
            canExitSelectMode = [viewModel canExitSelectMode];
            goto LABEL_44;
          }

          if (sel_selectAll_ != action)
          {
            if (sel_deselectAll_ == action)
            {
              currentDataSource = [viewModel selectionSnapshot];
              canToggleSelectMode = [currentDataSource isAnyItemSelected];
              goto LABEL_34;
            }

            assetActionManager = [(PXPhotosUIViewController *)self assetActionManager];
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              currentDataSource = [(PXPhotosUIViewController *)self assetActionManager];
              canToggleSelectMode = [currentDataSource canPerformAction:action withSender:senderCopy];
LABEL_34:
              v10 = canToggleSelectMode;
              goto LABEL_35;
            }

            v23.receiver = self;
            v23.super_class = PXPhotosUIViewController;
            canExitSelectMode = [(PXPhotosUIViewController *)&v23 canPerformAction:action withSender:senderCopy];
LABEL_44:
            v10 = canExitSelectMode;
            goto LABEL_36;
          }

          if ([viewModel canEnterSelectMode])
          {
            canExitSelectMode = [v8 allowsSelectAllAction];
            goto LABEL_44;
          }

          goto LABEL_10;
        }

        currentDataSource = [(PXPhotosUIViewController *)self interaction];
        v17 = PXNumberPropertyFromCommand(senderCopy);
        assetCollectionActionManager = PXPhotosGridFilterActionIdentifierFromNumber(v17);
        v19 = [currentDataSource canPerformActionType:assetCollectionActionManager];
        goto LABEL_29;
      }

      assetCollectionActionManager2 = [(PXPhotosUIViewController *)self interaction];
      currentDataSource = assetCollectionActionManager2;
      v13 = off_1E7722108;
    }

LABEL_33:
    canToggleSelectMode = [assetCollectionActionManager2 canPerformActionType:*v13];
    goto LABEL_34;
  }

  if ([viewModel canPresentOneUp] && (objc_msgSend(v8, "isInSelectMode") & 1) == 0)
  {
    singleSelectedAssetReference = [v8 singleSelectedAssetReference];
    v10 = singleSelectedAssetReference != 0;

    goto LABEL_36;
  }

LABEL_10:
  v10 = 0;
LABEL_36:

  return v10;
}

- (BOOL)canBecomeFirstResponder
{
  navigationController = [(PXPhotosUIViewController *)self navigationController];
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

- (void)px_containedViewControllerModalStateChanged
{
  v4.receiver = self;
  v4.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v4 px_containedViewControllerModalStateChanged];
  dismissalInteractionController = [(PXPhotosUIViewController *)self dismissalInteractionController];
  [dismissalInteractionController containedViewControllerModalStateChanged];
}

- (UIEdgeInsets)px_layoutMargins
{
  if (MEMORY[0x1A590D320](self, a2))
  {
    v8.receiver = self;
    v8.super_class = PXPhotosUIViewController;
    [(PXPhotosUIViewController *)&v8 px_layoutMargins];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXPhotosUIViewController;
    [(PXPhotosUIViewController *)&v7 px_layoutMargins];
    if (v4 != v6)
    {
      if (v4 >= v6)
      {
        v6 = v4;
      }

      v4 = v6;
    }
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)px_didTransitionBars
{
  gridView = [(PXPhotosUIViewController *)self gridView];
  [gridView setShouldWorkaround18475431:0];
}

- (void)px_willTransitionBars
{
  gridView = [(PXPhotosUIViewController *)self gridView];
  [gridView setShouldWorkaround18475431:1];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  contentControllerIfLoaded = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  viewModel = [contentControllerIfLoaded viewModel];

  if (viewModel)
  {
    viewModel2 = [(PXPhotosUIViewController *)self viewModel];
    v6 = ([viewModel2 allowedChromeItems] & 0x400) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObservedSplitViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_observedSplitViewController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_observedSplitViewController);
    [v5 unregisterChangeObserver:self];

    v6 = objc_storeWeak(&self->_observedSplitViewController, obj);
    [obj registerChangeObserver:self];

    [(PXPhotosUIViewController *)self _invalidateSidebarVisibilityDependentProperties];
  }
}

- (void)_updateSidebarVisibilityDependentProperties
{
  [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  [(PXPhotosUIViewController *)self _updateDrawerButtonVisibility];

  [(PXPhotosUIViewController *)self _updateFooterLayout];
}

- (void)_invalidateSidebarVisibilityDependentProperties
{
  updater = [(PXPhotosUIViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSidebarVisibilityDependentProperties];
}

- (void)_updateObservedSplitViewController
{
  px_splitViewController = [(UIViewController *)self px_splitViewController];
  [(PXPhotosUIViewController *)self setObservedSplitViewController:px_splitViewController];
}

- (void)_invalidateObservedSplitViewController
{
  updater = [(PXPhotosUIViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateObservedSplitViewController];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 willMoveToParentViewController:?];
  if (controller)
  {
    [(PXPhotosUIViewController *)self _invalidateObservedSplitViewController];
  }

  else
  {
    [(PXPhotosUIViewController *)self setObservedSplitViewController:0];
  }
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  configuration = [(PXPhotosUIViewController *)self configuration];
  titleMode = [configuration titleMode];

  if (edge == 1 && titleMode == 2)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXPhotosUIViewController;
    v7 = [(PXPhotosUIViewController *)&v9 contentScrollViewForEdge:edge];
  }

  return v7;
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v4 viewLayoutMarginsDidChange];
  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [secondaryToolbarController updateIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = PXPhotosUIViewController;
  coordinatorCopy = coordinator;
  [(PXPhotosUIViewController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PXPhotosUIViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E774BC60;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v7];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v11 viewDidDisappear:?];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_488_170842];

  eventTracker = [(PXPhotosUIViewController *)self eventTracker];
  [eventTracker logViewControllerDidDisappear:self];

  userActivityController = [(PXPhotosUIViewController *)self userActivityController];
  [userActivityController setActive:0];

  v8 = PXContentPrivacyNavigationStateFromViewController(self);
  privacyController = [(PXPhotosUIViewController *)self privacyController];
  [privacyController viewDidDisappearForAuthenticationContext:self withNavigationState:v8];

  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController contentViewDidDisappear:disappearCopy];

  [(PXPhotosUIViewController *)self swift_viewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 viewWillDisappear:disappear];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_484];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v11 viewDidAppear:?];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_480_170846];

  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController stopForceIncludingAllAssetsInDataSource];

  eventTracker = [(PXPhotosUIViewController *)self eventTracker];
  [eventTracker logViewControllerDidAppear:self];

  contentController2 = [(PXPhotosUIViewController *)self contentController];
  [contentController2 contentViewDidAppear:appearCopy];

  userActivityController = [(PXPhotosUIViewController *)self userActivityController];
  [userActivityController setActive:1];

  privacyController = [(PXPhotosUIViewController *)self privacyController];
  [privacyController viewDidAppearForAuthenticationContext:self];

  [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  [(PXPhotosUIViewController *)self swift_viewDidAppear:appearCopy];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v17 viewWillLayoutSubviews];
  updater = [(PXPhotosUIViewController *)self updater];
  [updater updateIfNeeded];

  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController updateIfNeeded];

  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [secondaryToolbarController updateIfNeeded];

  dismissalInteractionController = [(PXPhotosUIViewController *)self dismissalInteractionController];
  [dismissalInteractionController viewControllerViewWillLayoutSubviews];

  view = [(PXPhotosUIViewController *)self view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  fullscreenOverlay = [(PXPhotosUIViewController *)self fullscreenOverlay];
  [fullscreenOverlay setFrame:{v9, v11, v13, v15}];
}

- (void)containerView:(id)view willMoveToWindow:(id)window
{
  if (window)
  {
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    v8 = v7;

    contentController = [(PXPhotosUIViewController *)self contentController];
    layout = [contentController layout];
    [layout setStatusBarHeight:v8];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v8.receiver = self;
  v8.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v8 viewIsAppearing:?];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_474];

  barsController = [(PXPhotosUIViewController *)self barsController];
  [barsController updateIfNeeded];

  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController contentViewWillAppear:appearingCopy];

  [(PXPhotosUIViewController *)self _scrollToInitialPositionIfNecessary];
  [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  [(PXPhotosUIViewController *)self _updateDrawerButtonVisibility];
}

- (void)_scrollToInitialPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  contentController = [(PXPhotosUIViewController *)self contentController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXPhotosUIViewController__scrollToInitialPositionAnimated___block_invoke;
  v6[3] = &unk_1E774B308;
  v6[4] = self;
  [contentController scrollToInitialPositionAnimated:animatedCopy withCompletionHandler:v6];
}

void __61__PXPhotosUIViewController__scrollToInitialPositionAnimated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setHasScrolledToInitialPosition:1];
    v3 = [*(a1 + 32) contentController];
    [v3 contentViewDidScrollToInitialPosition];
  }
}

- (void)_scrollToInitialPositionIfNecessary
{
  if (![(PXPhotosUIViewController *)self hasScrolledToInitialPosition])
  {
    pendingInitialNavigationRequest = [(PXPhotosUIViewController *)self pendingInitialNavigationRequest];
    if (pendingInitialNavigationRequest)
    {
      [(PXPhotosUIViewController *)self setPendingInitialNavigationRequest:0];
      destination = [pendingInitialNavigationRequest destination];
      v5 = [PXProgrammaticNavigationRequest alloc];
      options = [pendingInitialNavigationRequest options];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PXPhotosUIViewController__scrollToInitialPositionIfNecessary__block_invoke;
      v9[3] = &unk_1E773F7C0;
      v10 = destination;
      selfCopy = self;
      v12 = pendingInitialNavigationRequest;
      v7 = destination;
      v8 = [(PXProgrammaticNavigationRequest *)v5 initWithDestination:v7 options:options completionHandler:v9];
      PXProgrammaticNavigationRequestExecute(v8, self);
    }

    else
    {
      [(PXPhotosUIViewController *)self _scrollToInitialPositionAnimated:0];
    }
  }
}

void __63__PXPhotosUIViewController__scrollToInitialPositionIfNecessary__block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1 && [a1[4] revealMode])
  {
    v6 = [a1[5] contentController];
    [v6 contentViewDidScrollToInitialPosition];
  }

  else
  {
    v6 = [a1[5] contentController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PXPhotosUIViewController__scrollToInitialPositionIfNecessary__block_invoke_2;
    v8[3] = &unk_1E774B308;
    v8[4] = a1[5];
    [v6 scrollToInitialPositionAnimated:0 withCompletionHandler:v8];
  }

  v7 = [a1[6] completionHandler];
  (v7)[2](v7, a2, v5);
}

void __63__PXPhotosUIViewController__scrollToInitialPositionIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentController];
  [v1 contentViewDidScrollToInitialPosition];
}

- (id)_createButtonForScrollingToNeighboringSectionInDirection:(unint64_t)direction
{
  if (direction == 1)
  {
    v5 = @"chevron.up";
  }

  else
  {
    if (direction != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:1199 description:@"unsupported direction"];

      abort();
    }

    v5 = @"chevron.down";
  }

  objc_initWeak(&location, self);
  v6 = objc_opt_class();
  toolbarBackdropGroupName = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
  v8 = [v6 _roundedButtonConfigurationWithSymbolName:v5 inset:7 fontSize:toolbarBackdropGroupName weight:10.0 groupName:12.0];

  v9 = MEMORY[0x1E69DC738];
  v10 = MEMORY[0x1E69DC628];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PXPhotosUIViewController__createButtonForScrollingToNeighboringSectionInDirection___block_invoke;
  v16[3] = &unk_1E773F798;
  objc_copyWeak(v17, &location);
  v17[1] = direction;
  v11 = [v10 actionWithHandler:v16];
  v12 = [v9 buttonWithConfiguration:v8 primaryAction:v11];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v12;
}

void __85__PXPhotosUIViewController__createButtonForScrollingToNeighboringSectionInDirection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained contentController];
  [v2 scrollToNeighboringSectionInDirection:*(a1 + 40) animated:1];
}

- (void)_updateSecondaryToolbarAccessoryViews
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];

  if (viewOptionsModel)
  {
    filterButtonController = [(PXPhotosUIViewController *)self filterButtonController];
    [filterButtonController invalidateButton];
    button = [filterButtonController button];
    statusButtonController = [(PXPhotosUIViewController *)self statusButtonController];
    viewOptionsModel = [statusButtonController button];
  }

  else
  {
    button = 0;
  }

  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [secondaryToolbarController setLeadingAccessoryView:button];

  secondaryToolbarController2 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [secondaryToolbarController2 setTrailingAccessoryView:viewOptionsModel];
}

- (void)_updateOneUpPresentationInteraction
{
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction setOneUpPresentation:px_oneUpPresentation];
}

- (void)_invalidateOneUpPresentationInteraction
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction setOneUpPresentation:0];

  [(PXPhotosUIViewController *)self _updateOneUpPresentationInteraction];
}

- (void)setOneUpEnabled:(BOOL)enabled
{
  if (self->_contentController)
  {
    enabledCopy = enabled;
    interaction = [(PXPhotosUIViewController *)self interaction];
    oneUpPresentation = [interaction oneUpPresentation];
    [oneUpPresentation setEnabled:enabledCopy];
  }
}

- (void)_updateSecondaryToolbarOpacity
{
  v3 = objc_opt_class();
  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [(PXPhotosUIViewController *)self secondaryToolbarAlpha];
  [v3 _configureOpacityOfSecondaryToolbarController:secondaryToolbarController withViewModel:viewModel secondaryToolbarAlpha:?];
}

- (void)_updateSecondaryToolbarController
{
  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  if (viewOptionsModel && ([viewModel isInSelectMode] & 1) == 0)
  {
    v5 = [viewModel hidesViewOptionsToolbar] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (((v5 ^ 1) & 1) != 0 || (isKindOfClass & 1) == 0)
  {
    if (v5)
    {
      v8 = [PXPhotosViewOptionsToolbarController alloc];
      view = [(PXPhotosUIViewController *)self view];
      gridView2 = [(PXPhotosViewOptionsToolbarController *)v8 initWithModel:viewOptionsModel containerView:view];

      [(PXPhotosViewOptionsToolbarController *)gridView2 setShouldHideAccessoryViewsOnScroll:1];
      [(PXSecondaryToolbarController *)gridView2 setLegibilityGradientEnabled:1];
      gridView = [(PXPhotosUIViewController *)self gridView];
      scrollViewController = [gridView scrollViewController];
      [(PXSecondaryToolbarController *)gridView2 setContentScrollViewController:scrollViewController];
    }

    else
    {
      gridView2 = 0;
    }
  }

  else
  {
    gridView2 = secondaryToolbarController;
  }

  wantsLensControlVisible = [viewModel wantsLensControlVisible];
  v13 = wantsLensControlVisible & (v5 ^ 1);
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();
  if (v13 == 1 && (v14 & 1) != 0)
  {
    v15 = secondaryToolbarController;
LABEL_16:

    gridView2 = v15;
    goto LABEL_17;
  }

  if (v13)
  {
    v16 = [PXPhotosLensToolbarController alloc];
    view2 = [(PXPhotosUIViewController *)self view];
    v15 = [(PXPhotosLensToolbarController *)v16 initWithViewModel:viewModel containerView:view2];

    gridView2 = view2;
    goto LABEL_16;
  }

LABEL_17:
  configuration = [(PXPhotosUIViewController *)self configuration];
  v19 = [configuration wantsExternallyRenderedSecondaryToolbar] & ((v5 | wantsLensControlVisible) ^ 1);

  objc_opt_class();
  v20 = objc_opt_isKindOfClass();
  if (v19 == 1 && (v20 & 1) != 0)
  {
    v21 = secondaryToolbarController;
  }

  else
  {
    if (v19)
    {
      v22 = [PXPhotosExternalSecondaryToolbarController alloc];
      view3 = [(PXPhotosUIViewController *)self view];
      v21 = [(PXPhotosExternalSecondaryToolbarController *)v22 initWithContainerView:view3];
    }

    else
    {
      v21 = gridView2;
    }

    if (v21 == secondaryToolbarController)
    {
      goto LABEL_30;
    }

    gridView2 = [(PXPhotosUIViewController *)self gridView];
    if (secondaryToolbarController)
    {
      [(PXSecondaryToolbarController *)secondaryToolbarController setActionHandler:0];
      [(PXSecondaryToolbarController *)secondaryToolbarController removeFromContainerView];
      scrollViewController2 = [(PXPhotosViewOptionsToolbarController *)gridView2 scrollViewController];
      [scrollViewController2 unregisterObserver:secondaryToolbarController];
    }

    toolbarBackdropGroupName = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    [(PXSecondaryToolbarController *)v21 setBackdropGroupName:toolbarBackdropGroupName];

    [(PXPhotosUIViewController *)self setSecondaryToolbarController:v21];
    if (v21)
    {
      [(PXSecondaryToolbarController *)v21 setActionHandler:self];
      [(PXSecondaryToolbarController *)v21 updateIfNeeded];
      [(PXSecondaryToolbarController *)v21 containerViewAdditionalEdgeInsets];
      [(PXPhotosViewOptionsToolbarController *)gridView2 setAdditionalSafeAreaInsets:?];
      scrollViewController3 = [(PXPhotosViewOptionsToolbarController *)gridView2 scrollViewController];
      [scrollViewController3 registerObserver:v21];

      [(PXPhotosUIViewController *)self _updateSecondaryToolbarAccessoryViews];
    }

    else
    {
      [(PXPhotosViewOptionsToolbarController *)gridView2 setAdditionalSafeAreaInsets:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    }
  }

LABEL_30:
  [(PXPhotosUIViewController *)self _updateSecondaryToolbarOpacity];
}

- (void)_updateIsModalInPresentation
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  -[PXPhotosUIViewController px_setModalInPresentation:](self, "px_setModalInPresentation:", [viewModel isModalInPresentation]);
}

- (void)_updateDismissalInteractionControllerProperties
{
  dismissalInteractionController = [(PXPhotosUIViewController *)self dismissalInteractionController];
  allowedInteractiveDismissBehaviors = [(PXPhotosUIViewController *)self allowedInteractiveDismissBehaviors];
  [dismissalInteractionController setSwipeDownAllowed:allowedInteractiveDismissBehaviors & 1];
  [dismissalInteractionController setSwipeUpAllowed:(allowedInteractiveDismissBehaviors >> 1) & 1];
  [dismissalInteractionController setScreenEdgeSwipeAllowed:(allowedInteractiveDismissBehaviors >> 2) & 1];
  [dismissalInteractionController setWantsChromeVisible:0];
}

- (void)_configureDismissalInteractionController
{
  if ([(PXPhotosUIViewController *)self allowedInteractiveDismissBehaviors]&& !self->_dismissalInteractionController)
  {
    v3 = [[PXViewControllerDismissalInteractionController alloc] initWithViewController:self];
    dismissalInteractionController = self->_dismissalInteractionController;
    self->_dismissalInteractionController = v3;

    [(PXPhotosUIViewController *)self _updateDismissalInteractionControllerProperties];
    v5 = self->_dismissalInteractionController;

    [(PXPhotosUIViewController *)self swift_configureDismissalInteractionController:v5];
  }
}

- (void)_updateBackgroundColor
{
  view = [(PXPhotosUIViewController *)self view];
  contentController = [(PXPhotosUIViewController *)self contentController];
  gridView = [contentController gridView];

  traitCollection = [(PXPhotosUIViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  configuration = [(PXPhotosUIViewController *)self configuration];
  v8 = configuration;
  if (userInterfaceStyle == 2)
  {
    darkModeBackgroundStyle = [configuration darkModeBackgroundStyle];
  }

  else
  {
    darkModeBackgroundStyle = [configuration lightModeBackgroundStyle];
  }

  v10 = darkModeBackgroundStyle;

  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      goto LABEL_9;
    }

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] clearColor];
  }

  v14 = systemBackgroundColor2;
  [gridView setBackgroundColor:systemBackgroundColor2];

LABEL_9:
}

- (void)_setNeedsUpdate
{
  viewIfLoaded = [(PXPhotosUIViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)viewDidLoad
{
  v92[1] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v89 viewDidLoad];
  view = [(PXPhotosUIViewController *)self view];
  containerViewController = [(PXPhotosUIViewController *)self containerViewController];
  v4 = containerViewController == 0;

  if (v4)
  {
    [(UIViewController *)self px_enableOneUpPresentation];
  }

  else
  {
    containerViewController2 = [(PXPhotosUIViewController *)self containerViewController];
    [(UIViewController *)self px_enableOneUpPresentationFromViewController:containerViewController2];
  }

  [(PXPhotosUIViewController *)self px_enableExtendedTraitCollection];
  px_extendedTraitCollection = [(PXPhotosUIViewController *)self px_extendedTraitCollection];
  v6 = [off_1E77217E8 alloc];
  configuration = [(PXPhotosUIViewController *)self configuration];
  v8 = [v6 initWithConfiguration:configuration traitCollection:px_extendedTraitCollection];
  contentController = self->_contentController;
  self->_contentController = v8;

  [(PXPhotosContentController *)self->_contentController setDelegate:self];
  configuration2 = [(PXPhotosUIViewController *)self configuration];
  photosAppConfiguration = [configuration2 photosAppConfiguration];
  privacyController = [photosAppConfiguration privacyController];
  privacyController = self->_privacyController;
  self->_privacyController = privacyController;

  v14 = self->_privacyController;
  if (v14 && [(PXContentPrivacyController *)v14 isLocked])
  {
    [(PXPhotosUIViewController *)self setShouldScrollToInitialPositionAfterUnlock:1];
  }

  if ([(PXPhotosUIViewController *)self shouldUseSystemSwipeToDismiss])
  {
    self->_allowedInteractiveDismissBehaviors = 0;
  }

  else
  {
    configuration3 = [(PXPhotosUIViewController *)self configuration];
    self->_allowedInteractiveDismissBehaviors = [configuration3 allowedInteractiveDismissBehaviors];
  }

  [(PXPhotosUIViewController *)self _updateOneUpPresentationInteraction];
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction setUiInteractionDelegate:self];

  viewModel = [(PXPhotosUIViewController *)self viewModel];
  [viewModel registerChangeObserver:self context:ViewModelObserverContext_170727];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];

  if ([containerCollection px_isHiddenSmartAlbum])
  {
    PXRegisterPreferencesObserver(self);
  }

  if ([containerCollection px_isRecentlyDeletedSmartAlbum])
  {
    [PXTipsAppDonation donateSignalForEvent:1];
  }

  if ([containerCollection px_isRecoveredSmartAlbum])
  {
    v19 = containerCollection;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    photoLibrary = [v20 photoLibrary];
    px_assetsRecoveryCountsManager = [photoLibrary px_assetsRecoveryCountsManager];

    [px_assetsRecoveryCountsManager markAsRead];
  }

  specManager = [viewModel specManager];
  [specManager registerChangeObserver:self context:SpecManagerObserverContext];

  if ([viewModel decorationViewClass])
  {
    [viewModel performChanges:&__block_literal_global_416_170868];
  }

  [viewModel performChanges:&__block_literal_global_418];
  configuration4 = [(PXPhotosUIViewController *)self configuration];
  if ([configuration4 allowedBehaviors])
  {
    [(UIViewController *)self px_enableBarAppearance];
    v25 = [[PXPhotosBarsController alloc] initWithPhotosContentController:self->_contentController];
    barsController = self->_barsController;
    self->_barsController = v25;

    [(PXPhotosBarsController *)self->_barsController setDelegate:self];
    [(PXBarsController *)self->_barsController setViewController:self];
  }

  if ([viewModel allowsSelectionUserActivityBehavior])
  {
    v27 = [PXAssetSelectionUserActivityController alloc];
    selectionManager = [viewModel selectionManager];
    v29 = [(PXAssetSelectionUserActivityController *)v27 initWithSelectionManager:selectionManager];
    userActivityController = self->_userActivityController;
    self->_userActivityController = v29;
  }

  gridView = [(PXPhotosContentController *)self->_contentController gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  scrollViewAccessibilityIdentifier = [configuration4 scrollViewAccessibilityIdentifier];
  [scrollView setAccessibilityIdentifier:scrollViewAccessibilityIdentifier];

  [view bounds];
  [gridView setFrame:?];
  [gridView setAutoresizingMask:18];
  if ([configuration4 backgroundStyle] == 1)
  {
    v35 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v36 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v35];
    [view bounds];
    [v36 setFrame:?];
    specManager2 = [viewModel specManager];
    spec = [specManager2 spec];
    visualEffectViewGroupName = [spec visualEffectViewGroupName];
    [v36 _setGroupName:visualEffectViewGroupName];

    [v36 setAutoresizingMask:18];
    [view addSubview:v36];
  }

  [gridView setEnableUnderlaySupport:{objc_msgSend(configuration4, "enableSupportForTungstenUnderlay")}];
  v40 = +[PXSolariumSettings sharedInstance];
  enableAdaptiveDarkBiasInGrid = [v40 enableAdaptiveDarkBiasInGrid];

  if (enableAdaptiveDarkBiasInGrid)
  {
    [scrollView px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
  }

  [view addSubview:gridView];
  [(PXPhotosUIViewController *)self setContentScrollView:scrollView forEdge:5];
  [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  scrollViewController2 = [gridView scrollViewController];
  [scrollViewController2 registerObserver:self];

  [(PXPhotosUIViewController *)self _configureDismissalInteractionController];
  [(PXPhotosUIViewController *)self invalidateHeaderView];
  bannerProvider = [configuration4 bannerProvider];
  [bannerProvider setPresentationDelegate:self];

  [(PXPhotosUIViewController *)self _updateSecondaryToolbarController];
  [(PXPhotosUIViewController *)self _updateSecondaryToolbarAccessoryViews];
  [(PXPhotosUIViewController *)self _updateIsModalInPresentation];
  [(PXPhotosUIViewController *)self _updateBackgroundColor];
  objc_initWeak(&location, self);
  v92[0] = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __39__PXPhotosUIViewController_viewDidLoad__block_invoke_3;
  v86[3] = &unk_1E7748B90;
  objc_copyWeak(&v87, &location);
  v45 = [(PXPhotosUIViewController *)self registerForTraitChanges:v44 withHandler:v86];

  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  [assetCollectionActionManager setTraitEnvironment:self];

  v47 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_openSelectionWithCommandDownArrow_];
  [(PXPhotosUIViewController *)self addKeyCommand:v47];

  v48 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_cancelSelectMode_];
  [(PXPhotosUIViewController *)self addKeyCommand:v48];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  interaction2 = [(PXPhotosUIViewController *)self interaction];
  keyCommandsForSelectionExtension = [interaction2 keyCommandsForSelectionExtension];

  v51 = [keyCommandsForSelectionExtension countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v51)
  {
    v52 = *v83;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v83 != v52)
        {
          objc_enumerationMutation(keyCommandsForSelectionExtension);
        }

        [(PXPhotosUIViewController *)self addKeyCommand:*(*(&v82 + 1) + 8 * i)];
      }

      v51 = [keyCommandsForSelectionExtension countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v51);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  assetActionManager = [(PXPhotosUIViewController *)self assetActionManager];
  actionKeyCommands = [assetActionManager actionKeyCommands];

  v56 = [actionKeyCommands countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v56)
  {
    v57 = *v79;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v79 != v57)
        {
          objc_enumerationMutation(actionKeyCommands);
        }

        [(PXPhotosUIViewController *)self addKeyCommand:*(*(&v78 + 1) + 8 * j)];
      }

      v56 = [actionKeyCommands countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v56);
  }

  if ([viewModel dismissAffordance])
  {
    v59 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_modalDismiss_];
    [(PXPhotosUIViewController *)self addKeyCommand:v59];

    v60 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel_modalDismiss_];
    [(PXPhotosUIViewController *)self addKeyCommand:v60];
  }

  fullscreenOverlayControllers = [configuration4 fullscreenOverlayControllers];
  v62 = [PXFullscreenOverlayViewControllerFactory makeViewControllerWithOverlayControllers:fullscreenOverlayControllers];

  if (v62)
  {
    [(PXPhotosUIViewController *)self addChildViewController:v62];
    view2 = [v62 view];
    fullscreenOverlay = self->_fullscreenOverlay;
    self->_fullscreenOverlay = view2;

    [view addSubview:self->_fullscreenOverlay];
    [v62 didMoveToParentViewController:self];
  }

  v65 = [[off_1E7721940 alloc] initWithTarget:self needsUpdateSelector:sel__setNeedsUpdate];
  updater = self->_updater;
  self->_updater = v65;

  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateObservedSplitViewController needsUpdate:1];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateSidebarVisibilityDependentProperties];
  objc_initWeak(&from, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __39__PXPhotosUIViewController_viewDidLoad__block_invoke_4;
  v75[3] = &unk_1E7747200;
  objc_copyWeak(&v76, &from);
  v68 = [defaultCenter addObserverForName:@"PXPhotosResetViewNotificationName" object:0 queue:0 usingBlock:v75];
  filterTimeoutObserver = self->_filterTimeoutObserver;
  self->_filterTimeoutObserver = v68;

  [(PXPhotosUIViewController *)self swift_viewDidLoad];
  v70 = MEMORY[0x1E696AF00];
  sharedInstance = [off_1E7721810 sharedInstance];
  [sharedInstance simulatedLoadDelay];
  [v70 sleepForTimeInterval:?];

  objc_destroyWeak(&v76);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v87);
  objc_destroyWeak(&location);
}

void __39__PXPhotosUIViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBackgroundColor];
}

void __39__PXPhotosUIViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained canResetToInitialState];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 viewModel];
    [v4 performChanges:&__block_literal_global_447];
  }
}

void __39__PXPhotosUIViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCplActionManagerClass:objc_opt_class()];
}

- (void)loadView
{
  v3 = [_PXPhotosGridContainerUIView alloc];
  v4 = [(_PXPhotosGridContainerUIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_PXPhotosGridContainerUIView *)v4 setDelegate:self];
  [(PXPhotosUIViewController *)self setView:v4];
}

- (void)_updateBackgroundColorOverride
{
  placementOverride = [(PXPhotosUIViewController *)self placementOverride];
  backgroundColorBeforeOverride = [(PXPhotosUIViewController *)self backgroundColorBeforeOverride];
  v4 = placementOverride;
  if (placementOverride && !backgroundColorBeforeOverride)
  {
    gridView = [(PXPhotosUIViewController *)self gridView];
    backgroundColorBeforeOverride = [gridView backgroundColor];

    [(PXPhotosUIViewController *)self setBackgroundColorBeforeOverride:backgroundColorBeforeOverride];
    v4 = placementOverride;
LABEL_5:
    [v4 chromeAlpha];
    backgroundColor = [backgroundColorBeforeOverride colorWithAlphaComponent:?];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_6;
  }

  if (placementOverride)
  {
    goto LABEL_5;
  }

  if (backgroundColorBeforeOverride)
  {
    backgroundColor = backgroundColorBeforeOverride;
    [(PXPhotosUIViewController *)self setBackgroundColorBeforeOverride:0];
    backgroundColorBeforeOverride = backgroundColor;
  }

  else
  {
    view = [(PXPhotosUIViewController *)self view];
    backgroundColor = [view backgroundColor];

    backgroundColorBeforeOverride = 0;
  }

  clearColor = backgroundColor;
LABEL_6:
  view2 = [(PXPhotosUIViewController *)self view];
  [view2 setBackgroundColor:clearColor];

  if (placementOverride)
  {
  }

  gridView2 = [(PXPhotosUIViewController *)self gridView];
  [gridView2 setBackgroundColor:backgroundColor];
}

- (void)setPlacementOverride:(id)override
{
  overrideCopy = override;
  if (self->_placementOverride != overrideCopy)
  {
    v6 = overrideCopy;
    objc_storeStrong(&self->_placementOverride, override);
    [(PXPhotosUIViewController *)self _updateBackgroundColorOverride];
    overrideCopy = v6;
  }
}

- (UIViewControllerInteractiveTransitioning)edgeSwipeDismissalInteraction
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  edgeSwipeDismissalInteraction = [interaction edgeSwipeDismissalInteraction];

  return edgeSwipeDismissalInteraction;
}

- (void)ensureSwipeDismissalInteraction
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction ensureSwipeDismissalInteraction];
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  contextMenuInteraction = [interaction contextMenuInteraction];

  return contextMenuInteraction;
}

- (PXAssetReference)assetReferenceForCurrentScrollPosition
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  assetReferenceForCurrentScrollPosition = [contentController assetReferenceForCurrentScrollPosition];

  return assetReferenceForCurrentScrollPosition;
}

- (BOOL)isScrolledToTop
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  isScrolledToTop = [viewModel isScrolledToTop];

  return isScrolledToTop;
}

- (BOOL)shouldAlwaysRespectToolbarActionPlacementPreference
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  shouldAlwaysRespectToolbarActionPlacementPreference = [viewModel shouldAlwaysRespectToolbarActionPlacementPreference];

  return shouldAlwaysRespectToolbarActionPlacementPreference;
}

- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)preference
{
  preferenceCopy = preference;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel shouldAlwaysRespectToolbarActionPlacementPreference] != preferenceCopy)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__PXPhotosUIViewController_setShouldAlwaysRespectToolbarActionPlacementPreference___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = preferenceCopy;
    [viewModel performChanges:v5];
  }
}

- (BOOL)hidesToolbar
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  hidesToolbar = [viewModel hidesToolbar];

  return hidesToolbar;
}

- (void)setHidesToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel hidesToolbar] != toolbarCopy)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXPhotosUIViewController_setHidesToolbar___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = toolbarCopy;
    [viewModel performChanges:v5];
  }
}

- (BOOL)hidesNavbar
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  hidesNavbar = [viewModel hidesNavbar];

  return hidesNavbar;
}

- (void)setHidesNavbar:(BOOL)navbar
{
  navbarCopy = navbar;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel hidesNavbar] != navbarCopy)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PXPhotosUIViewController_setHidesNavbar___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = navbarCopy;
    [viewModel performChanges:v5];
  }
}

- (NSSet)hiddenAssetReferences
{
  interaction = [(PXPhotosUIViewController *)self interaction];
  hiddenAssetReferences = [interaction hiddenAssetReferences];

  return hiddenAssetReferences;
}

- (void)setHiddenAssetReferences:(id)references animationType:(int64_t)type
{
  referencesCopy = references;
  contentController = [(PXPhotosUIViewController *)self contentController];
  layout = [contentController layout];
  [layout setPendingHideAnimationType:type];

  interaction = [(PXPhotosUIViewController *)self interaction];
  [interaction setHiddenAssetReferences:referencesCopy];
}

- (void)scrollToCenterAssetReference:(id)reference completion:(id)completion
{
  completionCopy = completion;
  referenceCopy = reference;
  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController scrollToRevealAssetReference:referenceCopy scrollPosition:18 padding:completionCopy completionHandler:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
}

- (void)scrollToRevealAssetReference:(id)reference completion:(id)completion
{
  completionCopy = completion;
  referenceCopy = reference;
  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController scrollToRevealAssetReference:referenceCopy completionHandler:completionCopy];
}

- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image shouldSnapshotPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  referenceCopy = reference;
  interaction = [(PXPhotosUIViewController *)self interaction];
  v10 = [interaction regionOfInterestForAssetReference:referenceCopy image:image fallbackMediaProvider:0 shouldSnapshot:placeholderCopy];

  return v10;
}

- (void)_dismissOnInternalRequest
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  dismissRequested = [viewModel dismissRequested];

  if ((dismissRequested & 1) == 0)
  {
    PXAssertGetLog();
  }

  viewModel2 = [(PXPhotosUIViewController *)self viewModel];
  dataSourceManager = [viewModel2 dataSourceManager];
  [dataSourceManager performChanges:&__block_literal_global_170896];

  navigationController = [(PXPhotosUIViewController *)self navigationController];
  v8 = [navigationController px_popToViewControllerPrecedingViewController:self animated:1];

  viewModel3 = [(PXPhotosUIViewController *)self viewModel];
  [viewModel3 performChanges:&__block_literal_global_407_170897];
}

- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)activity
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if (([viewModel isInSelectMode] & 1) == 0)
  {
    singleSelectedAssetReference = [viewModel singleSelectedAssetReference];
    if (singleSelectedAssetReference)
    {
      interaction = [(PXPhotosUIViewController *)self interaction];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __76__PXPhotosUIViewController__presentOneUpForSingleSelectedAssetWithActivity___block_invoke;
      v8[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      v8[4] = activity;
      [interaction presentOneUpForAssetReference:singleSelectedAssetReference configurationHandler:v8];
    }
  }
}

- (void)setSecondaryToolbarAlpha:(double)alpha
{
  if (self->_secondaryToolbarAlpha != alpha)
  {
    self->_secondaryToolbarAlpha = alpha;
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarOpacity];
  }
}

- (double)secondaryToolbarHeight
{
  secondaryToolbarController = [(PXPhotosUIViewController *)self secondaryToolbarController];
  v3 = 0.0;
  if ([secondaryToolbarController isSecondaryToolbarVisible])
  {
    [secondaryToolbarController containerViewAdditionalEdgeInsets];
    v3 = v4;
  }

  return v3;
}

- (double)collapsibleFooterHeight
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  [contentController collapsibleFooterHeight];
  v4 = v3;

  return v4;
}

- (void)invalidateHeaderView
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if ([viewModel viewDelegateRespondsTo:2])
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    headerView = [contentController headerView];

    _contentUnavailableConfiguration = [(PXPhotosUIViewController *)self _contentUnavailableConfiguration];
    if (_contentUnavailableConfiguration)
    {
      v6 = 0;
    }

    else
    {
      viewDelegate = [viewModel viewDelegate];
      v6 = [viewDelegate headerViewForPhotosViewController:self];
    }

    if ([viewModel viewDelegateRespondsTo:0x8000])
    {
      viewDelegate2 = [viewModel viewDelegate];
      v9 = [viewDelegate2 shouldAnimateFromHeaderView:headerView toHeaderView:v6];
    }

    else
    {
      v9 = 0;
    }

    contentController2 = [(PXPhotosUIViewController *)self contentController];
    [contentController2 setHeaderView:v6 animated:v9];

    [(PXPhotosUIViewController *)self contentController];
    [objc_claimAutoreleasedReturnValue() headerView];
    objc_claimAutoreleasedReturnValue();
    PXPhotosViewNoteHeaderViewSizeDidChange();
  }
}

- (void)setShowingInitialLoadPlaceholder:(BOOL)placeholder
{
  if (self->_showingInitialLoadPlaceholder != placeholder)
  {
    self->_showingInitialLoadPlaceholder = placeholder;
    if (!placeholder)
    {
      [(PXPhotosUIViewController *)self setHasScrolledToInitialPosition:0];

      [(PXPhotosUIViewController *)self _scrollToInitialPositionIfNecessary];
    }
  }
}

- (void)_updateFooterLayout
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  layout = [contentController layout];
  [layout invalidateFooterSize];
}

- (void)_updateDrawerButtonVisibility
{
  px_splitViewController = [(UIViewController *)self px_splitViewController];
  viewModelIfLoaded = [(PXPhotosUIViewController *)self viewModelIfLoaded];
  gridStyle = [viewModelIfLoaded gridStyle];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  specManager = [viewModel specManager];

  v7 = 1;
  if (px_splitViewController && (gridStyle - 6) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (([px_splitViewController displayMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v7 = [px_splitViewController isCollapsed] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    navigationController = [(PXPhotosUIViewController *)self navigationController];
    v9 = navigationController == 0;

    [specManager setWantsToggleSidebarButton:v9 & v7];
  }

  [specManager setShouldMakeSpaceForLeadingChrome:v7];
}

- (void)_updateBackButtonBehavior
{
  px_splitViewController = [(UIViewController *)self px_splitViewController];
  navigationController = [(PXPhotosUIViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  if (firstObject == self)
  {
    v7 = 0;
  }

  else
  {
    navigationItem = [(PXPhotosUIViewController *)self navigationItem];
    v7 = [navigationItem hidesBackButton] ^ 1;
  }

  if ([px_splitViewController isSidebarVisible])
  {
    v8 = 0;
  }

  else
  {
    v8 = [px_splitViewController splitBehavior] == 1 || objc_msgSend(px_splitViewController, "splitBehavior") == 2;
  }

  displayMode = [px_splitViewController displayMode];
  navigationItem2 = [(PXPhotosUIViewController *)self navigationItem];
  leftBarButtonItems = [navigationItem2 leftBarButtonItems];
  v12 = [leftBarButtonItems count];

  contentControllerIfLoaded = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  layout = [contentControllerIfLoaded layout];

  v16 = displayMode != 3 && v12 == 0;
  v17 = ((v7 | v8) & 1) == 0 && v16;
  [layout setWantsHeaderInSafeArea:v17];
  splitBehavior = [px_splitViewController splitBehavior];
  v19 = displayMode == 3 || v8;
  if (v19 == 1)
  {
    v20 = (splitBehavior == 2) & (v7 ^ 1);
    if ([px_splitViewController splitBehavior] == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = 0;
  }

  [layout setAlignsHeaderTitleWithLayoutMargins:v21];
}

- (void)_updateSubviewsOrdering
{
  view = [(PXPhotosUIViewController *)self view];
  gridView = [(PXPhotosUIViewController *)self gridView];
  [view sendSubviewToBack:gridView];

  alternateContentView = [(PXPhotosUIViewController *)self alternateContentView];
  [view bringSubviewToFront:alternateContentView];
}

- (void)_updateUIFromViewModelPrivacyState
{
  v14 = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  contentPrivacyState = [viewModel contentPrivacyState];

  v5 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (contentPrivacyState)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "View Controller: Content should be obscured: %{public}@", &v12, 0xCu);
  }

  gridView = [(PXPhotosUIViewController *)self gridView];
  [gridView setContentShouldBeObscured:contentPrivacyState != 0];
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  v10 = px_oneUpPresentation;
  if (contentPrivacyState && [px_oneUpPresentation isContextMenuInteractionActive])
  {
    contextMenuInteraction = [v10 contextMenuInteraction];
    [contextMenuInteraction dismissMenu];
  }

  [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  if (!-[PXPhotosUIViewController isViewLoaded](self, "isViewLoaded") || ![viewModel allowsEmptyPlaceholderBehavior])
  {
    goto LABEL_28;
  }

  emptyPlaceholderState = [viewModel emptyPlaceholderState];
  dataSourceManager = [viewModel dataSourceManager];
  switch(emptyPlaceholderState)
  {
    case 3:
      emptyPlaceholderStatusViewModel = [viewModel emptyPlaceholderStatusViewModel];

      if (emptyPlaceholderStatusViewModel)
      {
        placeholderStatusController = [(PXPhotosUIViewController *)self placeholderStatusController];
        placeholderStatusController2 = [(PXPhotosUIViewController *)self placeholderStatusController];

        if (!placeholderStatusController2)
        {
          v18 = objc_alloc_init(off_1E77218E0);

          emptyPlaceholderStatusViewModel2 = [viewModel emptyPlaceholderStatusViewModel];
          [v18 setViewModel:emptyPlaceholderStatusViewModel2];

          [v18 setDelegate:self];
          [(PXPhotosUIViewController *)self setPlaceholderStatusController:v18];
          placeholderStatusController = v18;
        }

        configuration = [placeholderStatusController configuration];
      }

      else
      {
        placeholderStatusController = [(PXPhotosUIViewController *)self fallbackPlaceholderStatusController];
        if (!placeholderStatusController)
        {
          placeholderStatusController = _FallbackPlaceholderStatusControllerForViewModel(viewModel);
          [(PXPhotosUIViewController *)self setFallbackPlaceholderStatusController:placeholderStatusController];
          statusController = [placeholderStatusController statusController];
          [statusController setDelegate:self];
        }

        statusController2 = [placeholderStatusController statusController];
        configuration = [statusController2 configuration];
      }

      break;
    case 2:
      configuration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
      localizedLoadingInitialDataSourceMessage = [dataSourceManager localizedLoadingInitialDataSourceMessage];
      [configuration setText:localizedLoadingInitialDataSourceMessage];

      isLoadingInitialDataSource = [dataSourceManager isLoadingInitialDataSource];
      goto LABEL_18;
    case 1:
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69DC628];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __77__PXPhotosUIViewController__updateContentUnavailableConfigurationUsingState___block_invoke;
      v64[3] = &unk_1E774BB08;
      objc_copyWeak(&v65, &location);
      v9 = [v8 actionWithHandler:v64];
      privacyController = [(PXPhotosUIViewController *)self privacyController];
      authenticationType = [privacyController authenticationType];

      configuration = PXContentLockedPlaceholderConfiguration(1, authenticationType, [viewModel wantsContentUnavailableUnlockButtonVisible], v9);

      objc_destroyWeak(&v65);
      objc_destroyWeak(&location);
      break;
    default:
      placeholderStatusController = self->_placeholderStatusController;
      self->_placeholderStatusController = 0;

      fallbackPlaceholderStatusController = self->_fallbackPlaceholderStatusController;
      self->_fallbackPlaceholderStatusController = 0;

      isLoadingInitialDataSource = 0;
      configuration = 0;
      goto LABEL_18;
  }

  isLoadingInitialDataSource = 0;
LABEL_18:
  [(PXPhotosUIViewController *)self setShowingInitialLoadPlaceholder:isLoadingInitialDataSource];

  if (!configuration)
  {
LABEL_28:
    v62 = [0 updatedConfigurationForState:stateCopy];
    [(PXPhotosUIViewController *)self setContentUnavailableConfiguration:v62];

    [(PXPhotosUIViewController *)self invalidateHeaderView];
    configuration = 0;
LABEL_29:
    emptyPlaceholderDragController = self->_emptyPlaceholderDragController;
    self->_emptyPlaceholderDragController = 0;
    goto LABEL_30;
  }

  specManager = [viewModel specManager];
  spec = [specManager spec];

  placeholderFont = [spec placeholderFont];

  if (placeholderFont)
  {
    placeholderFont2 = [spec placeholderFont];
    textProperties = [configuration textProperties];
    [textProperties setFont:placeholderFont2];
  }

  placeholderFontColor = [spec placeholderFontColor];

  if (placeholderFontColor)
  {
    placeholderFontColor2 = [spec placeholderFontColor];
    textProperties2 = [configuration textProperties];
    [textProperties2 setColor:placeholderFontColor2];
  }

  specManager2 = [viewModel specManager];
  extendedTraitCollection = [specManager2 extendedTraitCollection];
  [extendedTraitCollection layoutReferenceSize];
  v35 = v34;
  v37 = v36;

  dynamicHeaderHeightCallback = [specManager2 dynamicHeaderHeightCallback];
  if (dynamicHeaderHeightCallback)
  {
    v39 = dynamicHeaderHeightCallback;
    gridStyle = [viewModel gridStyle];

    if (gridStyle == 3)
    {
      dynamicHeaderHeightCallback2 = [specManager2 dynamicHeaderHeightCallback];
      v42 = dynamicHeaderHeightCallback2[2](v35, v37);

      view = [(PXPhotosUIViewController *)self view];
      [view safeAreaInsets];
      v45 = v42 - v44;
      [configuration directionalLayoutMargins];
      v47 = v46;
      [configuration directionalLayoutMargins];
      [configuration setDirectionalLayoutMargins:{v45, v47, 0.0}];
    }
  }

  contentUnavailablePlaceholderDisablesVerticalBounce = [spec contentUnavailablePlaceholderDisablesVerticalBounce];
  gridView = [(PXPhotosUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  [scrollViewController setAlwaysBounceVertical:contentUnavailablePlaceholderDisablesVerticalBounce ^ 1u];

  v51 = [configuration updatedConfigurationForState:stateCopy];
  [(PXPhotosUIViewController *)self setContentUnavailableConfiguration:v51];

  [(PXPhotosUIViewController *)self invalidateHeaderView];
  configuration2 = [(PXPhotosUIViewController *)self configuration];
  allowsDragIn = [configuration2 allowsDragIn];

  if (!allowsDragIn)
  {
    goto LABEL_29;
  }

  v63 = [off_1E77217F0 alloc];
  emptyPlaceholderDragController = [(PXPhotosUIViewController *)self view];
  viewModel2 = [(PXPhotosUIViewController *)self viewModel];
  selectionManager = [viewModel2 selectionManager];
  viewModel3 = [(PXPhotosUIViewController *)self viewModel];
  assetCollectionActionManager = [viewModel3 assetCollectionActionManager];
  interaction = [(PXPhotosUIViewController *)self interaction];
  v60 = [v63 initWithContentView:emptyPlaceholderDragController selectionManager:selectionManager assetCollectionActionManager:assetCollectionActionManager delegate:interaction];
  v61 = self->_emptyPlaceholderDragController;
  self->_emptyPlaceholderDragController = v60;

LABEL_30:
}

void __77__PXPhotosUIViewController__updateContentUnavailableConfigurationUsingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained privacyController];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 performUserAuthenticationIfNeededFromContext:v3];
}

- (void)_updateFirstResponderIfNeeded
{
  v3 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];

  if (!v3)
  {
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    isInSelectMode = [viewModel isInSelectMode];

    if (isInSelectMode)
    {

      [(PXPhotosUIViewController *)self becomeFirstResponder];
    }

    else
    {

      [(PXPhotosUIViewController *)self resignFirstResponder];
    }
  }
}

- (void)_updateEmptyBehaviorIfNeeded
{
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  if ([currentDataSource numberOfSections])
  {
    if ([viewModel emptyPlaceholderState] == 3)
    {
      px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
      [px_oneUpPresentation stopAnimated:1];

      viewModel2 = [(PXPhotosUIViewController *)self viewModel];
      if ([viewModel2 allowsPopOnEmptyBehavior])
      {
        viewModel3 = [(PXPhotosUIViewController *)self viewModel];
        appearState = [viewModel3 appearState];

        if (appearState == 2)
        {
          navigationController = [(PXPhotosUIViewController *)self navigationController];
          v9 = [navigationController px_popToViewControllerPrecedingViewController:self animated:1];

          if (!v9)
          {
            navigationController2 = [(PXPhotosUIViewController *)self navigationController];
            presentingViewController = [navigationController2 presentingViewController];
            [presentingViewController dismissViewControllerAnimated:1 completion:0];
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

LABEL_18:
    [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    goto LABEL_19;
  }

  viewModel4 = [(PXPhotosUIViewController *)self viewModel];
  allowsPopOnContainerDeleteBehavior = [viewModel4 allowsPopOnContainerDeleteBehavior];
  if (allowsPopOnContainerDeleteBehavior)
  {
    viewModel5 = [(PXPhotosUIViewController *)self viewModel];
    appearState2 = [viewModel5 appearState];

    if (appearState2 != 2)
    {
      v17 = 0;
      goto LABEL_14;
    }

    navigationController3 = [(PXPhotosUIViewController *)self navigationController];
    v17 = 1;
    v18 = [navigationController3 px_popToViewControllerPrecedingViewController:self animated:1];

    v19 = viewModel;
    if (v18)
    {
      goto LABEL_15;
    }

    viewModel4 = [(PXPhotosUIViewController *)self navigationController];
    presentingViewController2 = [viewModel4 presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  v17 = allowsPopOnContainerDeleteBehavior;
LABEL_14:
  v19 = viewModel;
LABEL_15:
  if ([v19 viewDelegateRespondsTo:4])
  {
    viewDelegate = [viewModel viewDelegate];
    [viewDelegate containerWasDeletedForPhotosViewController:self];
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_requestFocusUpdateWithAssetReference:(id)reference
{
  [(PXPhotosUIViewController *)self setPreferredFocusAssetReference:reference];
  v4 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  [v4 requestFocusUpdateToEnvironment:self];
}

- (void)setAlternateContentView:(id)view
{
  viewCopy = view;
  alternateContentView = self->_alternateContentView;
  if (alternateContentView != viewCopy)
  {
    [(UIView *)alternateContentView removeFromSuperview];
    objc_storeStrong(&self->_alternateContentView, view);
    view = [(PXPhotosUIViewController *)self view];
    [view bounds];
    [(UIView *)self->_alternateContentView setFrame:?];
    [(UIView *)self->_alternateContentView setAutoresizingMask:18];
    view2 = [(PXPhotosUIViewController *)self view];
    [view2 addSubview:self->_alternateContentView];

    [(PXPhotosUIViewController *)self _updateSubviewsOrdering];
    LOBYTE(view2) = self->_alternateContentView != 0;
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PXPhotosUIViewController_setAlternateContentView___block_invoke;
    v10[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v11 = view2;
    [viewModel performChanges:v10];
  }
}

- (PXPhotosCloseButtonController)closeButtonController
{
  closeButtonController = self->_closeButtonController;
  if (!closeButtonController)
  {
    v4 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:@"xmark"];
    toolbarBackdropGroupName = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    background = [v4 background];
    [background _setVisualEffectGroupName:toolbarBackdropGroupName];

    v7 = [[PXPhotosCloseButtonController alloc] initWithButtonConfiguration:v4];
    v8 = self->_closeButtonController;
    self->_closeButtonController = v7;

    [(PXPhotosCloseButtonController *)self->_closeButtonController setDelegate:self];
    closeButtonController = self->_closeButtonController;
  }

  return closeButtonController;
}

- (PXPhotosStatusToggleButtonController)statusButtonController
{
  statusButtonController = self->_statusButtonController;
  if (!statusButtonController)
  {
    viewModel = [(PXPhotosUIViewController *)self viewModel];
    footerViewModel = [viewModel footerViewModel];

    v6 = objc_opt_class();
    toolbarBackdropGroupName = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    v8 = [v6 _roundedButtonConfigurationWithSymbolName:@"info" inset:7 fontSize:toolbarBackdropGroupName weight:7.0 groupName:14.0];

    v9 = [[PXPhotosStatusToggleButtonController alloc] initWithFooterViewModel:footerViewModel buttonConfiguration:v8];
    v10 = self->_statusButtonController;
    self->_statusButtonController = v9;

    [(PXPhotosStatusToggleButtonController *)self->_statusButtonController setDelegate:self];
    statusButtonController = self->_statusButtonController;
  }

  return statusButtonController;
}

- (PXPhotosFilterToggleButtonController)filterButtonController
{
  if (!self->_filterButtonController)
  {
    configuration = [(PXPhotosUIViewController *)self configuration];
    enableFilterButton = [configuration enableFilterButton];

    if (enableFilterButton)
    {
      v5 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:@"line.3.horizontal.decrease"];
      if ((MEMORY[0x1A590D320]() & 1) == 0)
      {
        toolbarBackdropGroupName = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
        background = [v5 background];
        [background _setVisualEffectGroupName:toolbarBackdropGroupName];
      }

      v8 = [PXPhotosFilterToggleButtonController alloc];
      viewModel = [(PXPhotosUIViewController *)self viewModel];
      v10 = [(PXPhotosFilterToggleButtonController *)v8 initWithViewModel:viewModel buttonConfiguration:v5];
      filterButtonController = self->_filterButtonController;
      self->_filterButtonController = v10;
    }
  }

  v12 = self->_filterButtonController;

  return v12;
}

- (NSString)toolbarBackdropGroupName
{
  toolbarBackdropGroupName = self->_toolbarBackdropGroupName;
  if (!toolbarBackdropGroupName)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotosToolbar-%p", self];
    v5 = self->_toolbarBackdropGroupName;
    self->_toolbarBackdropGroupName = v4;

    toolbarBackdropGroupName = self->_toolbarBackdropGroupName;
  }

  return toolbarBackdropGroupName;
}

- (PXPhotosViewUIInteraction)interaction
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  interaction = [contentController interaction];

  return interaction;
}

- (id)scrollView
{
  gridView = [(PXPhotosUIViewController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (PXPhotosViewEventTracker)eventTracker
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  eventTracker = [contentController eventTracker];

  return eventTracker;
}

- (id)currentDataSource
{
  if ([(PXPhotosUIViewController *)self isViewLoaded])
  {
    contentController = [(PXPhotosUIViewController *)self contentController];
    viewModel = [contentController viewModel];
    [viewModel currentDataSource];
  }

  else
  {
    contentController = [(PXPhotosUIViewController *)self configuration];
    viewModel = [contentController dataSourceManager];
    [viewModel dataSource];
  }
  v5 = ;

  return v5;
}

- (PXGView)gridView
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  gridView = [contentController gridView];

  return gridView;
}

- (PXPhotosViewModel)viewModel
{
  contentController = [(PXPhotosUIViewController *)self contentController];
  viewModel = [contentController viewModel];

  return viewModel;
}

- (PXPhotosViewModel)viewModelIfLoaded
{
  contentControllerIfLoaded = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  viewModel = [contentControllerIfLoaded viewModel];

  return viewModel;
}

- (PXPhotosContentController)contentController
{
  contentController = self->_contentController;
  if (!contentController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:216 description:@"Content controller should not be accessed before viewDidLoad"];

    contentController = self->_contentController;
  }

  return contentController;
}

- (NSString)description
{
  contentControllerIfLoaded = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  viewModel = [contentControllerIfLoaded viewModel];

  if (viewModel)
  {
    v5 = MEMORY[0x1E696AEC0];
    currentDataSource = [viewModel currentDataSource];
    containerCollection = [currentDataSource containerCollection];
    localizedTitle = [containerCollection localizedTitle];
    v9 = [v5 stringWithFormat:@"containerCollection=%@", localizedTitle];
  }

  else
  {
    v9 = @"not loaded";
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"<%@:%p %@>", v12, self, v9];;

  return v13;
}

- (void)dealloc
{
  PXUnregisterPreferencesObserver(self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_filterTimeoutObserver];

  filterTimeoutObserver = self->_filterTimeoutObserver;
  self->_filterTimeoutObserver = 0;

  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 dealloc];
}

- (PXPhotosUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:191 description:{@"%s is not available as initializer", "-[PXPhotosUIViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPhotosUIViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:187 description:{@"%s is not available as initializer", "-[PXPhotosUIViewController initWithCoder:]"}];

  abort();
}

- (PXPhotosUIViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXPhotosUIViewController;
  v5 = [(PXPhotosUIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(PXPhotosViewConfiguration *)v5->_configuration setIsEmbedded:0];
    [(PXPhotosUIViewController *)v5 swift_initWithConfiguration:configurationCopy];
  }

  return v5;
}

+ (id)_roundedButtonConfigurationWithSymbolName:(id)name useOriginalSymbolAppearance:(BOOL)appearance inset:(double)inset fontSize:(double)size weight:(int64_t)weight groupName:(id)groupName
{
  nameCopy = name;
  v14 = MEMORY[0x1E69DC740];
  groupNameCopy = groupName;
  grayButtonConfiguration = [v14 grayButtonConfiguration];
  if ([nameCopy length])
  {
    v17 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:weight weight:size];
    v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy withConfiguration:v17];
    if (v18)
    {
      if (appearance)
      {
LABEL_5:
        [grayButtonConfiguration setImage:v18];

        goto LABEL_6;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E69DCAB8] px_imageNamed:nameCopy withConfiguration:v17];
      if (appearance)
      {
        goto LABEL_5;
      }
    }

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20 = [v18 imageWithTintColor:secondaryLabelColor renderingMode:1];

    v18 = v20;
    goto LABEL_5;
  }

LABEL_6:
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [clearConfiguration _setVisualEffectGroupName:groupNameCopy];

  v22 = [MEMORY[0x1E69DC730] effectWithStyle:7];
  [clearConfiguration setVisualEffect:v22];

  [grayButtonConfiguration setBackground:clearConfiguration];
  [grayButtonConfiguration setContentInsets:{inset, inset, inset, inset}];
  [grayButtonConfiguration setCornerStyle:4];

  return grayButtonConfiguration;
}

+ (void)_configureOpacityOfSecondaryToolbarController:(id)controller withViewModel:(id)model secondaryToolbarAlpha:(double)alpha
{
  controllerCopy = controller;
  modelCopy = model;
  v8 = modelCopy;
  if (modelCopy)
  {
    [modelCopy chromeOpacity];
  }

  else
  {
    v9 = 1.0;
  }

  [controllerCopy setAlpha:v9 * alpha];
  [controllerCopy setShouldAlwaysBeConsideredVisibleForLayoutPurpose:{(objc_msgSend(v8, "chromeItemsToBeConsideredVisibleForLayoutPurpose") >> 5) & 1}];
}

- (void)ppt_navigateToAssetReference:(id)reference revealInOneUp:(BOOL)up completionHandler:(id)handler
{
  upCopy = up;
  handlerCopy = handler;
  referenceCopy = reference;
  asset = [referenceCopy asset];
  assetCollection = [referenceCopy assetCollection];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PXPhotosUIViewController_PPT__ppt_navigateToAssetReference_revealInOneUp_completionHandler___block_invoke;
  v13[3] = &unk_1E7748588;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(PXPhotosUIViewController *)self ppt_navigateToAsset:asset inAssetContainer:assetCollection revealInOneUp:upCopy completionHandler:v13];
}

void __94__PXPhotosUIViewController_PPT__ppt_navigateToAssetReference_revealInOneUp_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v11 = v5;
  if (a2 == 1 && !v5)
  {
    v7 = [*(a1 + 32) navigationController];
    v6 = [v7 topViewController];

    v8 = [v6 presentedViewController];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 topViewController];
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;

      v6 = v10;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)ppt_scrollToPreviousAssetOfAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  viewModel = [(PXPhotosUIViewController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];

  v17 = 0u;
  v18 = 0u;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetReference:assetCopy];
  }

  contentController = [(PXPhotosUIViewController *)self contentController];
  v11 = contentController;
  if (contentController)
  {
    v14[0] = v17;
    v14[1] = v18;
    [contentController selectableIndexPathClosestToIndexPath:v14 inDirection:6];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;

  v15 = v17;
  v16 = v18;
  v12 = [currentDataSource assetReferenceAtItemIndexPath:&v15];
  [(PXPhotosUIViewController *)self scrollToCenterAssetReference:v12 completion:completionCopy];

  return v12;
}

- (id)ppt_navigateToBottom
{
  [(PXPhotosUIViewController *)self scrollToBottomAnimated:0];

  return [(PXPhotosUIViewController *)self assetReferenceForCurrentScrollPosition];
}

@end