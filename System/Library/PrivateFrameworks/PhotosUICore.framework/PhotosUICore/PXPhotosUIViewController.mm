@interface PXPhotosUIViewController
+ (id)_roundedButtonConfigurationWithSymbolName:(id)a3 useOriginalSymbolAppearance:(BOOL)a4 inset:(double)a5 fontSize:(double)a6 weight:(int64_t)a7 groupName:(id)a8;
+ (void)_configureOpacityOfSecondaryToolbarController:(id)a3 withViewModel:(id)a4 secondaryToolbarAlpha:(double)a5;
- (BOOL)assetsSharingHelper:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canResetToInitialState;
- (BOOL)hidesNavbar;
- (BOOL)hidesToolbar;
- (BOOL)isScrolledToTop;
- (BOOL)photosContentController:(id)a3 canPlayAssetInline:(id)a4;
- (BOOL)photosContentController:(id)a3 isDisplayAssetEligibleForAutoPlayback:(id)a4;
- (BOOL)photosContentController:(id)a3 isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)a4;
- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)pu_shouldOptOutFromChromelessBars;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3;
- (BOOL)resetToInitialStateIfPossible;
- (BOOL)scrollToBottomAnimated:(BOOL)a3;
- (BOOL)shouldAlwaysRespectToolbarActionPlacementPreference;
- (BOOL)shouldBeginScrollingContentWithPanAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 velocity:(CGPoint)a5;
- (CGRect)layout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4;
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
- (PXPhotosUIViewController)initWithCoder:(id)a3;
- (PXPhotosUIViewController)initWithConfiguration:(id)a3;
- (PXPhotosUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPhotosViewEventTracker)eventTracker;
- (PXPhotosViewModel)viewModel;
- (PXPhotosViewModel)viewModelIfLoaded;
- (PXPhotosViewUIInteraction)interaction;
- (PXSelectionContainer)selectionContainer;
- (PXSplitViewController)observedSplitViewController;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIEdgeInsets)maskPaddingForContentController:(id)a3;
- (UIEdgeInsets)px_layoutMargins;
- (UIViewController)containerViewController;
- (UIViewControllerInteractiveTransitioning)edgeSwipeDismissalInteraction;
- (double)collapsibleFooterHeight;
- (double)secondaryToolbarHeight;
- (id)_createButtonForScrollingToNeighboringSectionInDirection:(unint64_t)a3;
- (id)_defaultPresentationEnvironment;
- (id)_popoverPresentationEnvironmentWithSourceItem:(id)a3;
- (id)_viewControllerForPresentationEnvironment;
- (id)adjustHiddenAssetReferences:(id)a3;
- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)a3;
- (id)barsControllerActionsForSelectionContextMenu:(id)a3;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)createSearchOverlayController;
- (id)currentDataSource;
- (id)customRegionOfInterestForAssetReference:(id)a3;
- (id)menuForPXAssetCollectionActionTypeTTRForLemonadeCollections;
- (id)placementInContext:(id)a3 forItemReference:(id)a4;
- (id)popoverPresentationEnvironmentForPhotosCloseButtonController:(id)a3;
- (id)popoverPresentationEnvironmentForPhotosStatusToggleButtonController:(id)a3;
- (id)ppt_navigateToBottom;
- (id)ppt_scrollToPreviousAssetOfAsset:(id)a3 completion:(id)a4;
- (id)preferredFocusEnvironments;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)presentationEnvironmentForPhotosBarsController:(id)a3 withSourceItem:(id)a4;
- (id)pu_debugCurrentlySelectedAssets;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)px_navigationDestination;
- (id)regionOfInterestForActionPerformer:(id)a3;
- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 shouldSnapshotPlaceholder:(BOOL)a5;
- (id)scrollView;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)windowForProgressPresentationInAssetsSharingHelper:(id)a3;
- (unint64_t)photosContentControllerFilterSortedRecordsStrategy:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_completeNavigationToDestination:(id)a3 result:(int64_t)a4 error:(id)a5;
- (void)_configureDismissalInteractionController;
- (void)_dismiss:(id)a3 completion:(id)a4;
- (void)_dismissOnInternalRequest;
- (void)_handleDidEndScrolling:(id)a3;
- (void)_invalidateObservedSplitViewController;
- (void)_invalidateOneUpPresentationInteraction;
- (void)_invalidateSidebarVisibilityDependentProperties;
- (void)_modalDismiss:(id)a3 completion:(id)a4;
- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)a3;
- (void)_requestFocusUpdateWithAssetReference:(id)a3;
- (void)_scrollToInitialPositionAnimated:(BOOL)a3;
- (void)_scrollToInitialPositionIfNecessary;
- (void)_setNeedsUpdate;
- (void)_showSearch;
- (void)_updateBackButtonBehavior;
- (void)_updateBackgroundColor;
- (void)_updateBackgroundColorOverride;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
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
- (void)_waitForAvailabilityOfAsset:(id)a3 completionHandler:(id)a4;
- (void)_waitUntilOneUpPresentationCanStartAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)addAssetsToAlbum:(id)a3;
- (void)cancelSelectMode:(id)a3;
- (void)containerView:(id)a3 willMoveToWindow:(id)a4;
- (void)dealloc;
- (void)deselectAll:(id)a3;
- (void)ensureSwipeDismissalInteraction;
- (void)invalidateHeaderView;
- (void)loadView;
- (void)navigateToAsset:(id)a3 inAssetContainer:(id)a4 revealInOneUp:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)navigateToAssetReference:(id)a3;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)needsUpdateForContentController:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)paste:(id)a3;
- (void)photosBarsController:(id)a3 didRequestDismissWithSender:(id)a4;
- (void)photosBarsController:(id)a3 didRequestSearchWithSender:(id)a4;
- (void)photosBarsControllerDidUpdateBars:(id)a3 animated:(BOOL)a4;
- (void)photosBarsControllerDidUpdateNavigationItemAppearance:(id)a3;
- (void)photosCloseButtonControllerHandleAction:(id)a3;
- (void)playCollectionAsMemory;
- (void)ppt_navigateToAssetReference:(id)a3 revealInOneUp:(BOOL)a4 completionHandler:(id)a5;
- (void)preferencesDidChange;
- (void)prepareForDismissal;
- (void)px_containedViewControllerModalStateChanged;
- (void)px_didTransitionBars;
- (void)px_willTransitionBars;
- (void)scrollToCenterAssetReference:(id)a3 completion:(id)a4;
- (void)scrollToRevealAssetReference:(id)a3 completion:(id)a4;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)selectAll:(id)a3;
- (void)setAlternateContentView:(id)a3;
- (void)setHiddenAssetReferences:(id)a3 animationType:(int64_t)a4;
- (void)setHidesNavbar:(BOOL)a3;
- (void)setHidesToolbar:(BOOL)a3;
- (void)setObservedSplitViewController:(id)a3;
- (void)setOneUpEnabled:(BOOL)a3;
- (void)setPlacementOverride:(id)a3;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setSecondaryToolbarAlpha:(double)a3;
- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)a3;
- (void)setShowingInitialLoadPlaceholder:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)showPlayer;
- (void)swift_configureDismissalInteractionController:(id)a3;
- (void)swift_handleViewModelChange:(unint64_t)a3;
- (void)swift_initWithConfiguration:(id)a3;
- (void)swift_scrollViewControllerDidScroll:(id)a3;
- (void)toggleEditMode:(id)a3;
- (void)toggleFilter:(id)a3;
- (void)toggleSortOrder:(id)a3;
- (void)toggleViewMode:(id)a3;
- (void)uiInteractionDidExtendSelection:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)zoomIn:(id)a3;
- (void)zoomOut:(id)a3;
@end

@implementation PXPhotosUIViewController

- (void)swift_initWithConfiguration:(id)a3
{
  v4 = a3;
  self;
  sub_1A484F358(v4);
}

- (void)swift_configureDismissalInteractionController:(id)a3
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x178);
  v7 = self;
  v6 = a3;
  v5(self, &off_1F1728F50);
}

- (void)swift_handleViewModelChange:(unint64_t)a3
{
  v4 = self;
  sub_1A484FC0C(a3);
}

- (void)swift_scrollViewControllerDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A485046C(v4);
}

- (id)customRegionOfInterestForAssetReference:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4850BD8();
}

- (id)adjustOneUpAssetReferenceToScrollToVisible:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(PXPhotosUIViewController *)v5 customRegionOfInterestForAssetReference:v4];
  if (v6)
  {

    v7 = [(PXPhotosUIViewController *)v5 viewModel];
    v8 = [(PXPhotosViewModel *)v7 currentDataSource];

    v9 = [v8 firstAssetReference];
    v4 = v9;
  }

  return v4;
}

- (id)adjustHiddenAssetReferences:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB126B50);
  sub_1A3C3A220(&qword_1EB126B48, &qword_1EB126B50);
  sub_1A524CF44();
  v4 = self;
  sub_1A4850E08();
}

- (void)showPlayer
{
  v2 = self;
  sub_1A4851278();
}

- (BOOL)shouldBeginScrollingContentWithPanAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = [(PXPhotosUIViewController *)v7 viewModel];
  v9 = [(PXPhotosViewModel *)v8 isScrollDisabledForAxis:1];

  if (v9)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    if (y > 0.0)
    {
      v11 = [(PXPhotosUIViewController *)v7 presentingViewController];
      if (v11)
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
  v2 = self;
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

- (id)_popoverPresentationEnvironmentWithSourceItem:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosUIViewController *)self _viewControllerForPresentationEnvironment];
  v6 = [off_1E7721960 popoverPresenterWithViewController:v5 sourceItem:v4];

  return v6;
}

- (id)_defaultPresentationEnvironment
{
  v2 = [(PXPhotosUIViewController *)self _viewControllerForPresentationEnvironment];
  v3 = [off_1E7721960 defaultPresenterWithViewController:v2];

  return v3;
}

- (id)_viewControllerForPresentationEnvironment
{
  v2 = self;
  v3 = [(PXPhotosUIViewController *)self containerViewController];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)popoverPresentationEnvironmentForPhotosCloseButtonController:(id)a3
{
  v4 = [a3 button];
  v5 = [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:v4];

  return v5;
}

- (void)photosCloseButtonControllerHandleAction:(id)a3
{
  v6 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 viewDelegate];

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 photosViewControllerDismiss:self] & 1) == 0)
  {
    [(PXPhotosUIViewController *)self modalDismiss:v6];
  }
}

- (id)popoverPresentationEnvironmentForPhotosStatusToggleButtonController:(id)a3
{
  v4 = [a3 button];
  v5 = [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:v4];

  return v5;
}

- (void)preferencesDidChange
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 currentDataSource];
  v5 = [v4 containerCollection];

  if ([v5 px_isHiddenSmartAlbum])
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

  if (([v5 px_isRecentlyViewedCollection] & 1) != 0 || objc_msgSend(v5, "px_isRecentlySharedCollection"))
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
    v11 = [(PXPhotosUIViewController *)self px_isVisible];
    v12 = [(UIViewController *)self px_oneUpPresentation];
    [v12 stopAnimated:v11];

    v13 = [(PXPhotosUIViewController *)self navigationController];
    v14 = [v13 px_popToViewControllerPrecedingViewController:self animated:v11];
  }
}

- (void)prepareForDismissal
{
  v2 = [(UIViewController *)self px_oneUpPresentation];
  [v2 stopAnimated:0];
}

- (void)uiInteractionDidExtendSelection:(id)a3
{
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 selectionManager];
  v6 = [v5 selectionSnapshot];

  v11 = 0u;
  v12 = 0u;
  if (v6)
  {
    [v6 cursorIndexPath];
    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != *off_1E7721F68)
  {
    v8 = [v6 dataSource];
    v10[0] = v11;
    v10[1] = v12;
    v9 = [v8 objectReferenceAtIndexPath:v10];

    [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:v9];
  }
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 contentPrivacyState];

  v5 = [(PXPhotosUIViewController *)self viewModel];
  v6 = [v5 allowsShareAction];

  v7 = 0;
  if (v6 && !v4)
  {
    v8 = [(PXPhotosUIViewController *)self boopableItemsProvider];

    if (!v8)
    {
      v9 = objc_alloc_init(PXBoopableItemsProvider);
      [(PXPhotosUIViewController *)self setBoopableItemsProvider:v9];

      v10 = [(PXPhotosUIViewController *)self viewModel];
      v11 = [v10 selectionManager];
      v12 = [(PXPhotosUIViewController *)self boopableItemsProvider];
      [v12 setSelectionManager:v11];

      v13 = [(PXPhotosUIViewController *)self viewModel];
      v14 = [v13 mediaProvider];
      v15 = [(PXPhotosUIViewController *)self boopableItemsProvider];
      [v15 setImagePreviewMediaProvider:v14];
    }

    v7 = [(PXPhotosUIViewController *)self boopableItemsProvider];
  }

  return v7;
}

- (PXSelectionContainer)selectionContainer
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [PXSelectionContainer alloc];
  v5 = [v3 selectionManager];
  v6 = [v5 selectionSnapshot];
  v7 = [(PXPhotosUIViewController *)self undoManager];
  v8 = -[PXSelectionContainer initWithSelectionSnapshot:undoManager:context:](v4, "initWithSelectionSnapshot:undoManager:context:", v6, v7, [v3 selectionContext]);

  return v8;
}

- (id)windowForProgressPresentationInAssetsSharingHelper:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self view];
  v4 = [v3 window];

  return v4;
}

- (BOOL)assetsSharingHelper:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PXPhotosUIViewController *)self presentedViewController];

  if (v9 == v8)
  {
    [(PXPhotosUIViewController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  return v9 == v8;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosUIViewController *)self view];
  [v5 setAccessibilityLabel:v4];

  v6.receiver = self;
  v6.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v6 setTitle:v4];
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXPhotosUIViewController *)self viewModel];
  v9 = [v8 dataSourceManager];
  v10 = [v9 dataSource];

  v11 = objc_alloc_init(PXDiagnosticsItemProvider);
  v12 = [v10 containerCollection];
  if ([v12 conformsToProtocol:&unk_1F198AE70])
  {
    [(PXDiagnosticsItemProvider *)v11 registerItem:v12 forIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
  v16.receiver = self;
  v16.super_class = PXPhotosUIViewController;
  v14 = [(UIViewController *)&v16 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:x, y];

  [v13 addObjectsFromArray:v14];

  return v13;
}

- (CGRect)layout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PXPhotosUIViewController *)self scrollBehavior];
  if (v10)
  {
    v11 = [v9 activeAnchor];

    if (v11)
    {
      [v10 adjustedScrollTargetContentOffsetForProposedTargetContentOffset:0 velocity:x currentContentOffset:y decelerationRate:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), x, y}];
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

- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
  v13 = [(PXPhotosUIViewController *)self scrollBehavior];
  if (!v13)
  {
    *&v39 = COERCE_DOUBLE([v12 decelerationRate]);
    v26 = [(PXPhotosUIViewController *)self contentController];
    v27 = [v26 layout];

    v28 = [v27 rootLayout];
    [v28 convertRect:v27 toDescendantLayout:{a5->x, a5->y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v30 = v29;
    v32 = v31;

    [v27 adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:&v39 scrollingVelocity:v30 decelerationRate:{v32, v10, v9}];
    [v27 lastScrollDirection];
    [v12 visibleRect];
    [v27 topCollapsibleArea];
    PXScrollViewContentOffsetSnappedToRange();
  }

  v14 = a5->x;
  v15 = a5->y;
  v40 = 0.0;
  v41 = 0;
  *&v39 = 0.0;
  v16 = [v12 isInterruptingScrollWithDirection:&v39];
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

  [v13 adjustedScrollTargetContentOffsetForProposedTargetContentOffset:&v41 velocity:v14 currentContentOffset:v15 decelerationRate:{v17, v9, x, y}];
  v19 = v18;
  v21 = v20;
  v22 = [v13 detentAtContentOffset:v20];
  v23 = [(PXPhotosUIViewController *)self viewModel];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __119__PXPhotosUIViewController_scrollViewControllerWillEndScrolling_withVelocity_targetContentOffset_currentContentOffset___block_invoke;
  v37[3] = &unk_1E7748CB8;
  v24 = v22;
  v38 = v24;
  [v23 performChanges:v37];

  [v12 setDecelerationRate:v41];
  if (v21 != v15)
  {
    v25 = [(PXPhotosUIViewController *)self contentController];
    [v25 setShouldEnablePlaybackDuringAnimatedScroll:1];
  }

  if (v9 >= 0.0 || v21 <= y)
  {
    a5->x = v19;
    a5->y = v21;
  }

  else
  {
    a5->x = v14;
    a5->y = v15;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__PXPhotosUIViewController_scrollViewControllerWillEndScrolling_withVelocity_targetContentOffset_currentContentOffset___block_invoke_2;
    block[3] = &unk_1E7745A10;
    v34 = v12;
    v35 = v19;
    v36 = v21;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_handleDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosUIViewController *)self scrollBehavior];
  if (v5)
  {
    [v4 visibleRect];
    [v5 axis];
    PXPointValueForAxis();
  }
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  [(PXPhotosUIViewController *)self _handleDidEndScrolling:a3];
  v4 = [(PXPhotosUIViewController *)self scrollBehavior];

  if (v4)
  {
    v5 = [(PXPhotosUIViewController *)self contentController];
    [v5 setShouldEnablePlaybackDuringAnimatedScroll:0];
  }
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v12 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance];

  if (v5)
  {
    [v12 visibleOrigin];
    v7 = v6;
    v8 = [(PXPhotosUIViewController *)self view];
    [v8 safeAreaInsets];
    v10 = floor(v7 + v9);

    v11 = [(PXPhotosUIViewController *)self navigationItem];
    [v11 _setManualScrollEdgeAppearanceProgress:{fmax(fmin(v10, 16.0), 0.0) * 0.0625}];
  }

  [(PXPhotosUIViewController *)self swift_scrollViewControllerDidScroll:v12];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  v8 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 viewDelegateRespondsTo:0x20000];

  if (v5)
  {
    v6 = [(PXPhotosUIViewController *)self viewModel];
    v7 = [v6 viewDelegate];
    [v7 photosViewController:self scrollViewControllerWillBeginScrolling:v8];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ViewModelObserverContext_170727 != a5)
  {
    if ((a4 & 1) != 0 && SpecManagerObserverContext == a5)
    {
      [(PXPhotosUIViewController *)self _updateScrollViewController];
      [(PXPhotosUIViewController *)self swift_specDidChange];
    }

    goto LABEL_44;
  }

  if ((a4 & 0x8000000000000) != 0)
  {
    [(PXPhotosUIViewController *)self setFallbackPlaceholderStatusController:0];
  }

  if ((a4 & 0x8000200000001) != 0)
  {
    [(PXPhotosUIViewController *)self _updateEmptyBehaviorIfNeeded];
  }

  if ((a4 & 4) != 0)
  {
    v9 = [(PXPhotosUIViewController *)self contentController];
    v10 = [v9 layout];
    [v10 clearLastVisibleAreaAnchoringInformation];

    [(PXPhotosUIViewController *)self invalidateBoopableItemsProvider];
    [(PXPhotosUIViewController *)self _updateFirstResponderIfNeeded];
    if ((a4 & 0x4000) == 0)
    {
LABEL_11:
      if ((a4 & 0x2000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      [(PXPhotosUIViewController *)self _showSearch];
      if ((a4 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else if ((a4 & 0x4000) == 0)
  {
    goto LABEL_11;
  }

  v11 = [(PXPhotosUIViewController *)self viewModel];
  v12 = [v11 singleSelectedAssetReference];
  [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:v12];

  if ((a4 & 0x2000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((a4 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v13 = [(PXPhotosUIViewController *)self viewModel];
  v14 = [v13 selectionSnapshot];
  v15 = [v14 isEmptySelectionAvoided];

  if (v15)
  {
    v16 = [(PXPhotosUIViewController *)self viewModel];
    v17 = [v16 singleSelectedAssetReference];
    [(PXPhotosUIViewController *)self _requestFocusUpdateWithAssetReference:v17];
  }

LABEL_19:
  if ((a4 & 0x40000000) != 0)
  {
    v18 = [(PXPhotosUIViewController *)self viewModel];
    v19 = [v18 dismissRequested];

    if (v19)
    {
      [(PXPhotosUIViewController *)self _dismissOnInternalRequest];
    }
  }

  if ((a4 & 0x400000000) != 0)
  {
    [(PXPhotosUIViewController *)self _updateUIFromViewModelPrivacyState];
    v20 = [(PXPhotosUIViewController *)self viewModel];
    v21 = [v20 contentPrivacyState];

    if (v21 == 1)
    {
      v22 = [(PXPhotosUIViewController *)self gridView];
      v23 = [v22 scrollViewController];
      v24 = [v23 isScrolledAtEdge:3 tolerance:100.0];

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

  if ((a4 & 0x30000000000) != 0)
  {
    [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  }

  if ((a4 & 0x80000000000) != 0)
  {
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarController];
  }

  if ([objc_opt_class() shouldReconfigureOpacityOfSecondaryToolbarControllerForViewModelChange:a4])
  {
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarOpacity];
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_36:
      if ((a4 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

  else if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_36;
  }

  [(PXPhotosUIViewController *)self _invalidateIsModalInPresentation];
  if ((a4 & 4) == 0)
  {
LABEL_37:
    if ((a4 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_48:
    [(PXPhotosUIViewController *)self _invalidateOneUpPresentationInteraction];
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_47:
  [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarController];
  if ((a4 & 0x100000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_38:
  if ((a4 & 0x20) != 0)
  {
LABEL_39:
    [(PXPhotosUIViewController *)self _invalidateDismissalInteractionControllerProperties];
    [(PXPhotosUIViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

LABEL_40:
  [(PXPhotosUIViewController *)self swift_handleViewModelChange:a4];
  if ((a4 & 0x400000000001) != 0)
  {
    [(PXPhotosUIViewController *)self _updateScrollViewController];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PXPhotosUIViewController_observable_didChange_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ((a4 & 0x800000000000) != 0)
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

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PXPhotosUIViewController *)self setPlacementOverride:v7];
  v8 = [(PXPhotosUIViewController *)self contentController];
  [v8 setPlacementOverride:v7 forItemReference:v6];
}

- (id)placementInContext:(id)a3 forItemReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosUIViewController *)self contentController];
  v9 = [v8 placementInContext:v7 forItemReference:v6];

  return v9;
}

- (unint64_t)photosContentControllerFilterSortedRecordsStrategy:(id)a3
{
  v4 = [(PXPhotosUIViewController *)self viewModel];
  if ([v4 viewDelegateRespondsTo:0x4000])
  {
    v5 = [v4 viewDelegate];
    v6 = [v5 photosViewControllerFilterSortedRecordsStrategy:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)photosContentController:(id)a3 isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosUIViewController *)self viewModel];
  if ([v6 viewDelegateRespondsTo:0x10000])
  {
    v7 = [v6 viewDelegate];
    v8 = [v7 photosViewController:self isAssetEligibleForPlaybackWithSettlingEffect:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)photosContentController:(id)a3 isDisplayAssetEligibleForAutoPlayback:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosUIViewController *)self viewModel];
  if ([v6 viewDelegateRespondsTo:0x2000])
  {
    v7 = [v6 viewDelegate];
    v8 = [v7 photosViewController:self isAssetEligibleForAutoPlayback:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)photosContentController:(id)a3 canPlayAssetInline:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosUIViewController *)self viewModel];
  if ([v6 viewDelegateRespondsTo:4096])
  {
    v7 = [v6 viewDelegate];
    v8 = [v7 photosViewController:self canPlayAssetInline:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)regionOfInterestForActionPerformer:(id)a3
{
  v4 = [a3 actionType];
  v5 = v4;
  if (v4 == *off_1E7721BE8 || [v4 isEqualToString:?])
  {
    v6 = [(PXPhotosUIViewController *)self interaction];
    v7 = [v6 navigatedAssetReference];

    v8 = [(PXPhotosUIViewController *)self regionOfInterestForAssetReference:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v5 = a3;
  v6 = [v5 sender];
  v7 = [v6 conformsToProtocol:&unk_1F1915FF0];

  if (v7)
  {
    v8 = [v5 sender];
    v9 = [off_1E7721960 popoverPresenterWithViewController:self sourceItem:v8];

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

  v10 = [v5 selectionSnapshot];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__170729;
  v30 = __Block_byref_object_dispose__170730;
  v31 = 0;
  v11 = [v10 selectedIndexPaths];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__PXPhotosUIViewController_presentationEnvironmentForActionPerformer___block_invoke;
  v21 = &unk_1E7748C90;
  v24 = &v26;
  v12 = v10;
  v25 = a2;
  v22 = v12;
  v23 = self;
  [v11 enumerateItemIndexPathsUsingBlock:&v18];

  if (v27[5] && ([(PXPhotosUIViewController *)self regionOfInterestForAssetReference:v18, v19, v20, v21], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = [(PXPhotosUIViewController *)self gridView];
    [v13 rectInCoordinateSpace:v14];
    v9 = [off_1E7721960 popoverPresenterWithViewController:self sourceView:v14 sourceRect:?];
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

- (UIEdgeInsets)maskPaddingForContentController:(id)a3
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

- (void)needsUpdateForContentController:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosUIViewController *)self navigationController];

  if (v6)
  {
    v7 = [(PXPhotosUIViewController *)self navigationController];
    [v7 pushViewController:v5 animated:1];
  }

  return v6 != 0;
}

- (id)presentationEnvironmentForPhotosBarsController:(id)a3 withSourceItem:(id)a4
{
  if (a4)
  {
    [(PXPhotosUIViewController *)self _popoverPresentationEnvironmentWithSourceItem:a4];
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
  v3 = [(PXPhotosUIViewController *)self createSearchOverlayController];
  if (!v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = [(PXPhotosUIViewController *)self currentDataSource];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Can't get a search overlay view controller (data source: %@).", &v14, 0xCu);
    }

    goto LABEL_10;
  }

  if (MEMORY[0x1A590D320]())
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    v16[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v4 setViewControllers:v5];

    v6 = [v4 navigationBar];
    [v6 setPrefersLargeTitles:1];

    [v4 setModalPresentationStyle:5];
    v7 = [MEMORY[0x1E69DD260] crossDissolveTransition];
    [v4 setPreferredTransition:v7];

    v8 = self;
    v9 = v4;
    v10 = 1;
LABEL_9:
    [(PXPhotosUIViewController *)v8 presentViewController:v9 animated:v10 completion:0];
LABEL_10:

    goto LABEL_11;
  }

  v12 = [(PXPhotosUIViewController *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    v4 = [v3 px_createViewControllerWithHiddenStatusBarForMainViewController:v3];
    [v4 setModalPresentationStyle:5];
    [v4 setModalPresentationCapturesStatusBarAppearance:1];
    v8 = self;
    v9 = v4;
    v10 = 0;
    goto LABEL_9;
  }

  [v3 setModalPresentationStyle:5];
  [(PXPhotosUIViewController *)self presentViewController:v3 animated:0 completion:0];
LABEL_11:
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.search.session" withPayload:MEMORY[0x1E695E0F8]];
}

- (void)photosBarsController:(id)a3 didRequestSearchWithSender:(id)a4
{
  v4 = [(PXPhotosUIViewController *)self viewModel:a3];
  [v4 performChanges:&__block_literal_global_992];
}

- (void)_dismiss:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(PXPhotosUIViewController *)self configuration];
  v8 = [v7 customDismissHandler];

  if (v8)
  {
    v9 = [(PXPhotosUIViewController *)self configuration];
    v10 = [v9 customDismissHandler];
    v10[2]();

    goto LABEL_3;
  }

  v11 = [(PXPhotosUIViewController *)self presentingViewController];

  if (!v11)
  {
    v12 = [(PXPhotosUIViewController *)self navigationController];

    if (!v12)
    {
      goto LABEL_4;
    }

    v9 = [(PXPhotosUIViewController *)self navigationController];
    v13 = [v9 popViewControllerAnimated:1];
LABEL_3:

LABEL_4:
    v6[2](v6);
    goto LABEL_7;
  }

  [(PXPhotosUIViewController *)self _modalDismiss:v14 completion:v6];
LABEL_7:
}

- (void)photosBarsController:(id)a3 didRequestDismissWithSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [off_1E7721960 defaultPresenterWithViewController:self];
  v9 = [(PXPhotosUIViewController *)self viewModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PXPhotosUIViewController_photosBarsController_didRequestDismissWithSender___block_invoke;
  v11[3] = &unk_1E773F928;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v9 requestCloseFromPresentationEnvironment:v8 handler:v11];

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

- (void)photosBarsControllerDidUpdateNavigationItemAppearance:(id)a3
{
  v4 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
    [v6 viewControllerDidUpdateNavigationItemAppearance:self];
  }
}

- (void)photosBarsControllerDidUpdateBars:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(PXPhotosUIViewController *)self gridPresentationBarsUpdateDelegate];
    v8 = [(PXPhotosUIViewController *)self viewModel];
    [v9 viewController:self didUpdateBarsAnimated:v4 isSelecting:{objc_msgSend(v8, "isInSelectMode")}];
  }
}

- (id)menuForPXAssetCollectionActionTypeTTRForLemonadeCollections
{
  if (PFOSVariantHasInternalUI())
  {
    v3 = [(PXPhotosUIViewController *)self viewModel];
    v4 = [v3 selectionSnapshot];
    if ([v4 isAnyItemSelected])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = [v3 selectionSnapshot];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87__PXPhotosUIViewController_menuForPXAssetCollectionActionTypeTTRForLemonadeCollections__block_invoke;
      v17[3] = &unk_1E773F900;
      v18 = v5;
      v7 = v5;
      [v6 enumerateSelectedObjectsUsingBlock:v17];

      v8 = [(PXPhotosUIViewController *)self interaction];
      v9 = [v8 navigatedAssetReference];
      v10 = [v9 assetCollection];
      v11 = [v10 localizedTitle];

      v12 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v7 title:v11];
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

- (id)barsControllerActionsForSelectionContextMenu:(id)a3
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 selectionSnapshot];
  v6 = [v4 currentDataSource];
  v7 = [v6 containerCollection];

  v8 = [v7 px_isRecentlyDeletedSmartAlbum];
  v9 = [v7 px_isRecoveredSmartAlbum];
  v10 = [v5 isAnyItemSelected];
  if (((v10 & 1) != 0 || (v8 & 1) != 0 || v9) && [v4 allowsMultiSelectMenu])
  {
    if (v10)
    {
      v23 = 0u;
      v24 = 0u;
      if (v5)
      {
        [v5 firstSelectedIndexPath];
      }

      v11 = [v5 dataSource];
      v22[0] = v23;
      v22[1] = v24;
      v12 = [v11 objectReferenceAtIndexPath:v22];
      v13 = [(PXPhotosUIViewController *)self interaction];
      [v13 setNavigatedAssetReference:v12];
    }

    v14 = MEMORY[0x1E695DF70];
    v15 = [(PXPhotosUIViewController *)self assetActionManager];
    v16 = *off_1E7721BE8;
    v25[0] = *off_1E7721B88;
    v25[1] = v16;
    v25[2] = *off_1E7721B80;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v18 = [off_1E7721468 menuElementsForActionManager:v15 excludedActionTypes:v17];
    v19 = [v14 arrayWithArray:v18];

    v20 = [(PXPhotosUIViewController *)self menuForPXAssetCollectionActionTypeTTRForLemonadeCollections];
    if (v20)
    {
      [v19 insertObject:v20 atIndex:0];
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
  v4 = [(PXPhotosUIViewController *)self viewModel];
  v5 = [v4 dataSourceManager];
  v6 = [v5 dataSource];
  v7 = [v6 containerCollection];

  v8 = [v7 px_isHiddenSmartAlbum];
  v9 = [v7 px_isRecentlyDeletedSmartAlbum];
  v10 = [v7 px_isRecoveredSmartAlbum];
  if ((v8 & 1) != 0 || (v9 & 1) != 0 || v10)
  {
    v11 = @"PXContentPrivacyAuthenticationPasscodeReason_Recovered";
    if (v9)
    {
      v11 = @"PXContentPrivacyAuthenticationPasscodeReason_RecentlyDeleted";
    }

    if (v8)
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
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 dataSourceManager];
  v4 = [v3 dataSource];
  v5 = [v4 containerCollection];

  v6 = [v5 px_isHiddenSmartAlbum];
  v7 = [v5 px_isRecentlyDeletedSmartAlbum];
  v8 = [v5 px_isRecoveredSmartAlbum];
  v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_Generic";
  if (v8)
  {
    v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_Recovered";
  }

  if (v7)
  {
    v9 = @"PXContentPrivacyAuthenticationTouchIDTitle_RecentlyDeleted";
  }

  if (v6)
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

- (void)_waitUntilOneUpPresentationCanStartAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIViewController *)self px_oneUpPresentation];
  [v7 waitUntilPresentationCanStartAnimated:v4 completionHandler:v6];
}

- (void)navigateToAsset:(id)a3 inAssetContainer:(id)a4 revealInOneUp:(BOOL)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  if (a5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = a7;
  v13 = a4;
  v14 = a3;
  v16 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:v11 asset:v14 assetCollection:v13];

  if (v7)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  [(PXPhotosUIViewController *)self navigateToDestination:v16 options:v15 completionHandler:v12];
}

- (void)navigateToAssetReference:(id)a3
{
  v4 = a3;
  v5 = [PXProgrammaticNavigationDestination alloc];
  v6 = [v4 asset];
  v7 = [v4 assetCollection];

  v8 = [(PXProgrammaticNavigationDestination *)v5 initWithType:7 revealMode:2 asset:v6 assetCollection:v7];
  [(PXPhotosUIViewController *)self navigateToDestination:v8 options:0 completionHandler:&__block_literal_global_956];
}

- (void)_waitForAvailabilityOfAsset:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  if (v13)
  {
    v6 = a4;
    v7 = +[PXApplicationSettings sharedInstance];
    [v7 defaultNavigationTimeoutDuration];
    v9 = v8;

    v10 = [(PXPhotosUIViewController *)self viewModel];
    v11 = [v10 dataSourceManager];
    [v11 waitForAvailabilityOfAsset:v13 timeout:v6 completionHandler:v9];
  }

  else
  {
    v12 = *(a4 + 2);
    v10 = a4;
    v12();
  }
}

- (id)px_navigationDestination
{
  v2 = [(PXPhotosUIViewController *)self currentDataSource];
  v3 = [v2 container];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;

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

- (void)_completeNavigationToDestination:(id)a3 result:(int64_t)a4 error:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 type] == 8 && objc_msgSend(v8, "assetCollectionSubtype") == 218)
  {
    if ([v8 renderAlbumAssetsWithDeferredProcessing])
    {
      v10 = [(PXPhotosUIViewController *)self currentDataSource];
      v11 = [v10 containerCollection];
      v12 = [v11 px_isCinematicSmartAlbum];

      if (v12)
      {
        if (a4 == 1)
        {
          v13 = MEMORY[0x1E6991F28];
          v25 = *MEMORY[0x1E6991E20];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v26[0] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
          [v13 sendEvent:@"com.apple.photos.CPAnalytics.navigateToCinematicAlbumWithRender" withPayload:v16];

          v17 = [(PXPhotosUIViewController *)self viewModel];
          v18 = [v17 dataSourceManager];
          v19 = [v18 dataSource];
          v20 = [v19 containerCollection];

          if ([v20 conformsToProtocol:&unk_1F198AE70])
          {
            v21 = v20;
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
          v20 = PLGridZeroGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v23 = 138412290;
            v24 = v9;
            _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "PXPhotosUIViewController: Navigation to cinematic album failed. with error %@", &v23, 0xCu);
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

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke;
  aBlock[3] = &unk_1E773F7F0;
  objc_copyWeak(&v53, &location);
  v10 = v8;
  v51 = v10;
  v11 = v9;
  v52 = v11;
  v12 = _Block_copy(aBlock);
  if (![(PXPhotosUIViewController *)self isViewLoaded])
  {
    goto LABEL_9;
  }

  v13 = [(PXPhotosUIViewController *)self viewModel];
  if ([v13 appearState])
  {

    goto LABEL_5;
  }

  v14 = [(PXPhotosUIViewController *)self hasScrolledToInitialPosition];

  if (!v14)
  {
LABEL_9:
    v25 = [(PXPhotosUIViewController *)self pendingInitialNavigationRequest];
    [v25 cancel];

    v26 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v10 options:a4 completionHandler:v12];
    [(PXPhotosUIViewController *)self setPendingInitialNavigationRequest:v26];

    goto LABEL_34;
  }

LABEL_5:
  v15 = [v10 sidebarBackNavigationRootDestination];
  v16 = [v15 collection];
  v17 = [(PXPhotosUIViewController *)self currentDataSource];
  v18 = [v17 containerCollection];
  v19 = [v16 isEqual:v18];

  if (v19)
  {
    v20 = [(PXPhotosUIViewController *)self navigationItem];
    [v20 px_setHidesBackButtonInRegularWidth:1];
    v21 = [(PXPhotosUIViewController *)self traitCollection];
    [v20 px_updateBackButtonVisibilityForTraitCollection:v21];

    [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  }

  v22 = [(PXPhotosUIViewController *)self viewModel];
  [v22 performChanges:&__block_literal_global_554];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_3;
  v49[3] = &unk_1E773F818;
  v49[4] = self;
  v42 = _Block_copy(v49);
  v23 = [v10 asset];
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
    v28 = [(PXPhotosUIViewController *)self viewModel];
    v29 = [v28 viewOptionsModel];
    v30 = [v29 sortOrderState];

    if (v30 && [v30 sortOrder] != 2)
    {
      [v30 performChanges:&__block_literal_global_560_170781];
    }

    v31 = [(PXPhotosUIViewController *)self currentDataSource];
    v32 = v31;
    v47 = 0u;
    v48 = 0u;
    if (!v31 || ([v31 lastItemIndexPath], v47 == *off_1E7721F68) || v48 == 0x7FFFFFFFFFFFFFFFLL || *(&v48 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      PXAssertGetLog();
    }

    buf[0] = v47;
    buf[1] = v48;
    v33 = [v32 assetAtItemIndexPath:buf];

    v23 = v33;
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
    v35 = v23;
    v46[4] = v35;
    v46[5] = self;
    v46[6] = v10;
    v46[10] = a4;
    v46[8] = v11;
    v46[9] = v12;
    [(PXPhotosUIViewController *)self _waitForAvailabilityOfAsset:v35 completionHandler:v46];
LABEL_27:
    v36 = (v34 + 7);

    v37 = v34[4];
LABEL_28:

    goto LABEL_29;
  }

  if (v23)
  {
    v34 = v45;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_4_574;
    v45[3] = &unk_1E773F8B0;
    v45[7] = v42;
    v35 = v23;
    v45[4] = v35;
    v45[5] = self;
    v45[6] = v10;
    v45[10] = a4;
    v45[8] = v11;
    v45[9] = v12;
    [(PXPhotosUIViewController *)self _waitForAvailabilityOfAsset:v35 completionHandler:v45];
    goto LABEL_27;
  }

  if ([v10 revealMode] == 3)
  {
    v37 = [(PXPhotosUIViewController *)self contentController];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76__PXPhotosUIViewController_navigateToDestination_options_completionHandler___block_invoke_2_579;
    v43[3] = &unk_1E77464C0;
    v44 = v12;
    [v37 scrollToInitialPositionAnimated:(a4 >> 1) & 1 withCompletionHandler:v43];
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
      v38 = [(PXPhotosUIViewController *)self interaction];
      v39 = *off_1E77220B8;
      v40 = [v38 canPerformActionType:*off_1E77220B8];

      if (v40)
      {
        v41 = [(PXPhotosUIViewController *)self interaction];
        [v41 performActionWithType:v39];
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

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosUIViewController *)self currentDataSource];
  v6 = [v5 containerCollection];
  v7 = [v4 type];
  if ((v7 - 5) < 2)
  {
    v13 = [v6 px_isAllPhotosSmartAlbum];
  }

  else if ((v7 - 7) >= 2)
  {
    v13 = v7 == 19 && [v4 revealMode] == 1;
  }

  else
  {
    v8 = [v4 assetCollection];
    if (v8)
    {
      v9 = [off_1E7721488 alloc];
      v10 = *(off_1E7722228 + 1);
      v18[0] = *off_1E7722228;
      v18[1] = v10;
      v11 = [v9 initWithAssetCollection:v8 keyAssetReference:0 indexPath:v18];
      if (([v8 isEqual:v6] & 1) != 0 || (!v5 ? (v12 = 0) : (objc_msgSend(v5, "indexPathForAssetCollectionReference:", v11), v12 = *&v18[0]), v12 != *off_1E7721F68 || objc_msgSend(v8, "px_isRecentsSmartAlbum") && objc_msgSend(v6, "px_isAllPhotosSmartAlbum") && (-[PXPhotosUIViewController viewModel](self, "viewModel"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "viewOptionsModel"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "sortOrderState"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v16)))
      {
        v13 = 1;
      }

      else if ([v8 px_isFeaturedPhotosCollection])
      {
        v13 = [v6 px_isFeaturedPhotosCollection];
      }

      else
      {
        v13 = 0;
      }
    }

    else if ([v4 type] == 7)
    {
      v13 = [v6 px_isAllPhotosSmartAlbum];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (PXActionManager)assetActionManager
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 assetActionManager];

  return v3;
}

- (BOOL)resetToInitialStateIfPossible
{
  v3 = [(PXPhotosUIViewController *)self canResetToInitialState];
  if (v3)
  {
    v4 = [(PXPhotosUIViewController *)self viewModel];
    [v4 performChanges:&__block_literal_global_551_170806];

    [(PXPhotosUIViewController *)self resetScrollPositionAnimated:0];
  }

  return v3;
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
  v3 = [(PXPhotosUIViewController *)self viewModel];
  if (!-[PXPhotosUIViewController isViewLoaded](self, "isViewLoaded") || ([v3 selectionSnapshot], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isAnyItemSelected"), v4, (v5 & 1) != 0) || (-[PXPhotosUIViewController px_containsViewControllerModalInPresentation](self, "px_containsViewControllerModalInPresentation") & 1) != 0 || (-[UIViewController px_oneUpPresentation](self, "px_oneUpPresentation"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "state"), v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v10 = [(PXPhotosUIViewController *)self presentedViewController];
    v8 = v10 == 0;
  }

  return v8;
}

- (BOOL)scrollToBottomAnimated:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(PXPhotosUIViewController *)self isViewLoaded])
  {
    return 0;
  }

  v5 = [(PXPhotosUIViewController *)self scrollView];
  v6 = [v5 px_isScrolledAtEdge:3];

  if (v6)
  {
    return 0;
  }

  v8 = [(PXPhotosUIViewController *)self scrollView];
  [v8 px_scrollToEdge:3 animated:v3];

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

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosUIViewController *)self isViewLoaded];
  if (v5)
  {
    v6 = [(PXPhotosUIViewController *)self contentController];
    [v6 scrollToInitialPositionAnimated:v3 withCompletionHandler:0];
  }

  return v5;
}

- (NSArray)visibleUUIDs
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 visibleAssetUUIDs];

  return v3;
}

- (id)pu_debugCurrentlySelectedAssets
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 selectionManager];

  v4 = [v3 selectionSnapshot];
  v5 = [v4 allItemsEnumerator];

  return v5;
}

- (BOOL)pu_shouldOptOutFromChromelessBars
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  if ([v3 navBarStyle])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXPhotosUIViewController *)self viewModel];
    v4 = [v5 shouldOptOutOfChromelessBars];
  }

  return v4;
}

- (id)preferredFocusEnvironments
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosUIViewController *)self contentController];
  v4 = [v3 layout];

  v5 = [(PXPhotosUIViewController *)self preferredFocusAssetReference];
  if (v5)
  {
    v6 = [v4 axLeafForObjectReference:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 axGroup];
  v8 = v7;
  if (v6)
  {
    v15 = v6;
    v16 = v7;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v15;
    v11 = 2;
  }

  else
  {
    v14 = v7;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v14;
    v11 = 1;
  }

  v12 = [v9 arrayWithObjects:v10 count:{v11, v14, v15, v16}];

  return v12;
}

- (void)playCollectionAsMemory
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 assetCollectionActionManager];
  v4 = [v3 actionPerformerForActionType:*off_1E7721D68];

  [v4 performActionWithCompletionHandler:0];
}

- (void)_modalDismiss:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosUIViewController *)self presentingViewController];
  if (!v6)
  {
    PXAssertGetLog();
  }

  [v6 dismissViewControllerAnimated:1 completion:v5];
}

- (void)cancelSelectMode:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  [v3 performChanges:&__block_literal_global_547_170809];
}

- (void)deselectAll:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  [v3 performChanges:&__block_literal_global_545];
}

- (void)selectAll:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  if ([v3 allowsSelectAllAction])
  {
    [v3 performChanges:&__block_literal_global_543];
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

- (void)addAssetsToAlbum:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 assetCollectionActionManager];
  v5 = [v4 actionPerformerForActionType:*off_1E7721C30];

  [v5 performActionWithCompletionHandler:0];
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

  v7 = [(PXPhotosUIViewController *)self viewModelIfLoaded];
  [v7 performSortOrderMenuActionForItemAtIndex:v6];
}

- (void)toggleFilter:(id)a3
{
  v4 = PXNumberPropertyFromCommand(a3);
  v6 = PXPhotosGridFilterActionIdentifierFromNumber(v4);

  v5 = [(PXPhotosUIViewController *)self interaction];
  [v5 performActionWithType:v6];
}

- (void)toggleViewMode:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 performActionWithType:*off_1E7722108];
}

- (void)toggleEditMode:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 toggleSelectMode];
}

- (void)zoomOut:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 performActionWithType:*off_1E77221B0];
}

- (void)zoomIn:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 performActionWithType:*off_1E77221A8];
}

- (void)paste:(id)a3
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 currentDataSource];
  v5 = v4;
  if (v4)
  {
    [v4 firstSectionIndexPath];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = [v5 assetCollectionReferenceAtSectionIndexPath:v10];
  v7 = [v3 assetCollectionActionManager];
  v8 = [v7 actionPerformerForActionType:*off_1E7721D50 assetCollectionReference:v6];

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

- (void)validateCommand:(id)a3
{
  v16 = a3;
  if ([v16 action] == sel_toggleEditMode_)
  {
    v4 = [(PXPhotosUIViewController *)self viewModel];
    if ([v4 isInSelectMode])
    {
      v8 = @"PXPhotosGridCancel";
    }

    else
    {
      v8 = @"PXPhotosGridSelect";
    }

    v5 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
    [v16 setTitle:v5];
    goto LABEL_22;
  }

  if ([v16 action] == sel_toggleViewMode_)
  {
    v9 = [(PXPhotosUIViewController *)self interaction];
    v10 = *off_1E7722108;
    v11 = [v9 menuTitleForActionType:*off_1E7722108];
    [v16 setTitle:v11];

    v4 = [(PXPhotosUIViewController *)self interaction];
    v5 = [v4 menuImageForActionType:v10];
    [v16 setImage:v5];
LABEL_22:

    goto LABEL_23;
  }

  if ([v16 action] == sel_toggleFilter_)
  {
    v12 = PXNumberPropertyFromCommand(v16);
    v4 = PXPhotosGridFilterActionIdentifierFromNumber(v12);

    v5 = [(PXPhotosUIViewController *)self interaction];
    v6 = [v5 menuTitleForActionType:v4];
    [v16 setTitle:v6];
LABEL_14:

    goto LABEL_22;
  }

  if ([v16 action] == sel_toggleSortOrder_)
  {
    v4 = [(PXPhotosUIViewController *)self viewModelIfLoaded];
    v13 = PXNumberPropertyFromCommand(v16);
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5 = [v4 sortOrderMenuActionTitleForItemIndex:v15];
    if (v5)
    {
      [v16 setTitle:v5];
      [v4 sortOrderMenuActionStateForItemIndex:v15];
      UIMenuElementStateFromPXMenuActionState();
    }

    [v16 setAttributes:{objc_msgSend(v16, "attributes") | 4}];
    goto LABEL_22;
  }

  if ([v16 action] != sel_addAssetsToAlbum_)
  {
    if ([v16 action] != sel_addAssetsToLastUsedAlbum_)
    {
      goto LABEL_24;
    }

    v4 = [(PXPhotosUIViewController *)self viewModel];
    v5 = [v4 assetActionManager];
    v6 = [v5 actionPerformerForActionType:*off_1E7721A20];
    v7 = [v6 localizedTitleForUseCase:1];
    [v16 setTitle:v7];

    goto LABEL_14;
  }

  v4 = PXLocalizedStringFromTable(@"PXPhotosGridAddPhotosActionMenuTitle", @"PhotosUICore");
  [v16 setTitle:v4];
LABEL_23:

LABEL_24:
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(PXPhotosUIViewController *)self interaction];
  v8 = [v7 targetForKeyCommands];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PXPhotosUIViewController *)self interaction];
    v11 = [v10 targetForKeyCommands];
  }

  else
  {
    v12 = [(PXPhotosUIViewController *)self assetActionManager];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(PXPhotosUIViewController *)self assetActionManager];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PXPhotosUIViewController;
      v14 = [(PXPhotosUIViewController *)&v16 targetForAction:a3 withSender:v6];
    }

    v11 = v14;
  }

  return v11;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(PXPhotosUIViewController *)self viewModel];
  v8 = v7;
  if (sel_paste_ == a3)
  {
    v11 = [v7 currentDataSource];
    if ([v11 numberOfSections] != 1)
    {
      v10 = 0;
LABEL_35:

      goto LABEL_36;
    }

    if (v11)
    {
      [v11 firstSectionIndexPath];
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    v17 = [v11 assetCollectionReferenceAtSectionIndexPath:v24];
    v18 = [v8 assetCollectionActionManager];
    v19 = [v18 canPerformActionType:*off_1E7721D50 assetCollectionReference:v17];
LABEL_29:
    v10 = v19;

    goto LABEL_35;
  }

  if (sel_addAssetsToAlbum_ == a3)
  {
    v12 = [v7 assetCollectionActionManager];
    v11 = v12;
    v13 = off_1E7721C30;
    goto LABEL_33;
  }

  if (sel_openSelectionWithCommandDownArrow_ != a3 && sel_toggleViewer_ != a3)
  {
    if (sel_zoomIn_ == a3)
    {
      v12 = [(PXPhotosUIViewController *)self interaction];
      v11 = v12;
      v13 = off_1E77221A8;
    }

    else if (sel_zoomOut_ == a3)
    {
      v12 = [(PXPhotosUIViewController *)self interaction];
      v11 = v12;
      v13 = off_1E77221B0;
    }

    else
    {
      if (sel_toggleViewMode_ != a3)
      {
        if (sel_toggleFilter_ != a3)
        {
          if (sel_toggleEditMode_ == a3)
          {
            v11 = [(PXPhotosUIViewController *)self interaction];
            v16 = [v11 canToggleSelectMode];
            goto LABEL_34;
          }

          if (sel_cancelSelectMode_ == a3)
          {
            v22 = [v7 canExitSelectMode];
            goto LABEL_44;
          }

          if (sel_selectAll_ != a3)
          {
            if (sel_deselectAll_ == a3)
            {
              v11 = [v7 selectionSnapshot];
              v16 = [v11 isAnyItemSelected];
              goto LABEL_34;
            }

            v14 = [(PXPhotosUIViewController *)self assetActionManager];
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              v11 = [(PXPhotosUIViewController *)self assetActionManager];
              v16 = [v11 canPerformAction:a3 withSender:v6];
LABEL_34:
              v10 = v16;
              goto LABEL_35;
            }

            v23.receiver = self;
            v23.super_class = PXPhotosUIViewController;
            v22 = [(PXPhotosUIViewController *)&v23 canPerformAction:a3 withSender:v6];
LABEL_44:
            v10 = v22;
            goto LABEL_36;
          }

          if ([v7 canEnterSelectMode])
          {
            v22 = [v8 allowsSelectAllAction];
            goto LABEL_44;
          }

          goto LABEL_10;
        }

        v11 = [(PXPhotosUIViewController *)self interaction];
        v17 = PXNumberPropertyFromCommand(v6);
        v18 = PXPhotosGridFilterActionIdentifierFromNumber(v17);
        v19 = [v11 canPerformActionType:v18];
        goto LABEL_29;
      }

      v12 = [(PXPhotosUIViewController *)self interaction];
      v11 = v12;
      v13 = off_1E7722108;
    }

LABEL_33:
    v16 = [v12 canPerformActionType:*v13];
    goto LABEL_34;
  }

  if ([v7 canPresentOneUp] && (objc_msgSend(v8, "isInSelectMode") & 1) == 0)
  {
    v20 = [v8 singleSelectedAssetReference];
    v10 = v20 != 0;

    goto LABEL_36;
  }

LABEL_10:
  v10 = 0;
LABEL_36:

  return v10;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(PXPhotosUIViewController *)self navigationController];
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

- (void)px_containedViewControllerModalStateChanged
{
  v4.receiver = self;
  v4.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v4 px_containedViewControllerModalStateChanged];
  v3 = [(PXPhotosUIViewController *)self dismissalInteractionController];
  [v3 containedViewControllerModalStateChanged];
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
  v2 = [(PXPhotosUIViewController *)self gridView];
  [v2 setShouldWorkaround18475431:0];
}

- (void)px_willTransitionBars
{
  v2 = [(PXPhotosUIViewController *)self gridView];
  [v2 setShouldWorkaround18475431:1];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  v4 = [v3 viewModel];

  if (v4)
  {
    v5 = [(PXPhotosUIViewController *)self viewModel];
    v6 = ([v5 allowedChromeItems] & 0x400) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObservedSplitViewController:(id)a3
{
  obj = a3;
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
  v2 = [(PXPhotosUIViewController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSidebarVisibilityDependentProperties];
}

- (void)_updateObservedSplitViewController
{
  v3 = [(UIViewController *)self px_splitViewController];
  [(PXPhotosUIViewController *)self setObservedSplitViewController:v3];
}

- (void)_invalidateObservedSplitViewController
{
  v2 = [(PXPhotosUIViewController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateObservedSplitViewController];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 willMoveToParentViewController:?];
  if (a3)
  {
    [(PXPhotosUIViewController *)self _invalidateObservedSplitViewController];
  }

  else
  {
    [(PXPhotosUIViewController *)self setObservedSplitViewController:0];
  }
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v5 = [(PXPhotosUIViewController *)self configuration];
  v6 = [v5 titleMode];

  if (a3 == 1 && v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXPhotosUIViewController;
    v7 = [(PXPhotosUIViewController *)&v9 contentScrollViewForEdge:a3];
  }

  return v7;
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v4 viewLayoutMarginsDidChange];
  v3 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [v3 updateIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = PXPhotosUIViewController;
  v6 = a4;
  [(PXPhotosUIViewController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PXPhotosUIViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E774BC60;
  v7[4] = self;
  [v6 animateAlongsideTransition:0 completion:v7];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v11 viewDidDisappear:?];
  v5 = [(PXPhotosUIViewController *)self viewModel];
  [v5 performChanges:&__block_literal_global_488_170842];

  v6 = [(PXPhotosUIViewController *)self eventTracker];
  [v6 logViewControllerDidDisappear:self];

  v7 = [(PXPhotosUIViewController *)self userActivityController];
  [v7 setActive:0];

  v8 = PXContentPrivacyNavigationStateFromViewController(self);
  v9 = [(PXPhotosUIViewController *)self privacyController];
  [v9 viewDidDisappearForAuthenticationContext:self withNavigationState:v8];

  v10 = [(PXPhotosUIViewController *)self contentController];
  [v10 contentViewDidDisappear:v3];

  [(PXPhotosUIViewController *)self swift_viewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PXPhotosUIViewController *)self viewModel];
  [v4 performChanges:&__block_literal_global_484];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v11 viewDidAppear:?];
  v5 = [(PXPhotosUIViewController *)self viewModel];
  [v5 performChanges:&__block_literal_global_480_170846];

  v6 = [(PXPhotosUIViewController *)self contentController];
  [v6 stopForceIncludingAllAssetsInDataSource];

  v7 = [(PXPhotosUIViewController *)self eventTracker];
  [v7 logViewControllerDidAppear:self];

  v8 = [(PXPhotosUIViewController *)self contentController];
  [v8 contentViewDidAppear:v3];

  v9 = [(PXPhotosUIViewController *)self userActivityController];
  [v9 setActive:1];

  v10 = [(PXPhotosUIViewController *)self privacyController];
  [v10 viewDidAppearForAuthenticationContext:self];

  [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  [(PXPhotosUIViewController *)self swift_viewDidAppear:v3];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(PXPhotosUIViewController *)self updater];
  [v3 updateIfNeeded];

  v4 = [(PXPhotosUIViewController *)self contentController];
  [v4 updateIfNeeded];

  v5 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [v5 updateIfNeeded];

  v6 = [(PXPhotosUIViewController *)self dismissalInteractionController];
  [v6 viewControllerViewWillLayoutSubviews];

  v7 = [(PXPhotosUIViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PXPhotosUIViewController *)self fullscreenOverlay];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (void)containerView:(id)a3 willMoveToWindow:(id)a4
{
  if (a4)
  {
    v5 = [a4 windowScene];
    v6 = [v5 statusBarManager];
    [v6 statusBarFrame];
    v8 = v7;

    v10 = [(PXPhotosUIViewController *)self contentController];
    v9 = [v10 layout];
    [v9 setStatusBarHeight:v8];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v8 viewIsAppearing:?];
  v5 = [(PXPhotosUIViewController *)self viewModel];
  [v5 performChanges:&__block_literal_global_474];

  v6 = [(PXPhotosUIViewController *)self barsController];
  [v6 updateIfNeeded];

  v7 = [(PXPhotosUIViewController *)self contentController];
  [v7 contentViewWillAppear:v3];

  [(PXPhotosUIViewController *)self _scrollToInitialPositionIfNecessary];
  [(PXPhotosUIViewController *)self _updateBackButtonBehavior];
  [(PXPhotosUIViewController *)self _updateDrawerButtonVisibility];
}

- (void)_scrollToInitialPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosUIViewController *)self contentController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXPhotosUIViewController__scrollToInitialPositionAnimated___block_invoke;
  v6[3] = &unk_1E774B308;
  v6[4] = self;
  [v5 scrollToInitialPositionAnimated:v3 withCompletionHandler:v6];
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
    v3 = [(PXPhotosUIViewController *)self pendingInitialNavigationRequest];
    if (v3)
    {
      [(PXPhotosUIViewController *)self setPendingInitialNavigationRequest:0];
      v4 = [v3 destination];
      v5 = [PXProgrammaticNavigationRequest alloc];
      v6 = [v3 options];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PXPhotosUIViewController__scrollToInitialPositionIfNecessary__block_invoke;
      v9[3] = &unk_1E773F7C0;
      v10 = v4;
      v11 = self;
      v12 = v3;
      v7 = v4;
      v8 = [(PXProgrammaticNavigationRequest *)v5 initWithDestination:v7 options:v6 completionHandler:v9];
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

- (id)_createButtonForScrollingToNeighboringSectionInDirection:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = @"chevron.up";
  }

  else
  {
    if (a3 != 2)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:1199 description:@"unsupported direction"];

      abort();
    }

    v5 = @"chevron.down";
  }

  objc_initWeak(&location, self);
  v6 = objc_opt_class();
  v7 = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
  v8 = [v6 _roundedButtonConfigurationWithSymbolName:v5 inset:7 fontSize:v7 weight:10.0 groupName:12.0];

  v9 = MEMORY[0x1E69DC738];
  v10 = MEMORY[0x1E69DC628];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PXPhotosUIViewController__createButtonForScrollingToNeighboringSectionInDirection___block_invoke;
  v16[3] = &unk_1E773F798;
  objc_copyWeak(v17, &location);
  v17[1] = a3;
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
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 viewOptionsModel];

  if (v4)
  {
    v5 = [(PXPhotosUIViewController *)self filterButtonController];
    [v5 invalidateButton];
    v9 = [v5 button];
    v6 = [(PXPhotosUIViewController *)self statusButtonController];
    v4 = [v6 button];
  }

  else
  {
    v9 = 0;
  }

  v7 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [v7 setLeadingAccessoryView:v9];

  v8 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  [v8 setTrailingAccessoryView:v4];
}

- (void)_updateOneUpPresentationInteraction
{
  v4 = [(UIViewController *)self px_oneUpPresentation];
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 setOneUpPresentation:v4];
}

- (void)_invalidateOneUpPresentationInteraction
{
  v3 = [(PXPhotosUIViewController *)self interaction];
  [v3 setOneUpPresentation:0];

  [(PXPhotosUIViewController *)self _updateOneUpPresentationInteraction];
}

- (void)setOneUpEnabled:(BOOL)a3
{
  if (self->_contentController)
  {
    v3 = a3;
    v5 = [(PXPhotosUIViewController *)self interaction];
    v4 = [v5 oneUpPresentation];
    [v4 setEnabled:v3];
  }
}

- (void)_updateSecondaryToolbarOpacity
{
  v3 = objc_opt_class();
  v5 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  v4 = [(PXPhotosUIViewController *)self viewModel];
  [(PXPhotosUIViewController *)self secondaryToolbarAlpha];
  [v3 _configureOpacityOfSecondaryToolbarController:v5 withViewModel:v4 secondaryToolbarAlpha:?];
}

- (void)_updateSecondaryToolbarController
{
  v27 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 viewOptionsModel];
  if (v4 && ([v3 isInSelectMode] & 1) == 0)
  {
    v5 = [v3 hidesViewOptionsToolbar] ^ 1;
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
      v9 = [(PXPhotosUIViewController *)self view];
      v7 = [(PXPhotosViewOptionsToolbarController *)v8 initWithModel:v4 containerView:v9];

      [(PXPhotosViewOptionsToolbarController *)v7 setShouldHideAccessoryViewsOnScroll:1];
      [(PXSecondaryToolbarController *)v7 setLegibilityGradientEnabled:1];
      v10 = [(PXPhotosUIViewController *)self gridView];
      v11 = [v10 scrollViewController];
      [(PXSecondaryToolbarController *)v7 setContentScrollViewController:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v27;
  }

  v12 = [v3 wantsLensControlVisible];
  v13 = v12 & (v5 ^ 1);
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();
  if (v13 == 1 && (v14 & 1) != 0)
  {
    v15 = v27;
LABEL_16:

    v7 = v15;
    goto LABEL_17;
  }

  if (v13)
  {
    v16 = [PXPhotosLensToolbarController alloc];
    v17 = [(PXPhotosUIViewController *)self view];
    v15 = [(PXPhotosLensToolbarController *)v16 initWithViewModel:v3 containerView:v17];

    v7 = v17;
    goto LABEL_16;
  }

LABEL_17:
  v18 = [(PXPhotosUIViewController *)self configuration];
  v19 = [v18 wantsExternallyRenderedSecondaryToolbar] & ((v5 | v12) ^ 1);

  objc_opt_class();
  v20 = objc_opt_isKindOfClass();
  if (v19 == 1 && (v20 & 1) != 0)
  {
    v21 = v27;
  }

  else
  {
    if (v19)
    {
      v22 = [PXPhotosExternalSecondaryToolbarController alloc];
      v23 = [(PXPhotosUIViewController *)self view];
      v21 = [(PXPhotosExternalSecondaryToolbarController *)v22 initWithContainerView:v23];
    }

    else
    {
      v21 = v7;
    }

    if (v21 == v27)
    {
      goto LABEL_30;
    }

    v7 = [(PXPhotosUIViewController *)self gridView];
    if (v27)
    {
      [(PXSecondaryToolbarController *)v27 setActionHandler:0];
      [(PXSecondaryToolbarController *)v27 removeFromContainerView];
      v24 = [(PXPhotosViewOptionsToolbarController *)v7 scrollViewController];
      [v24 unregisterObserver:v27];
    }

    v25 = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    [(PXSecondaryToolbarController *)v21 setBackdropGroupName:v25];

    [(PXPhotosUIViewController *)self setSecondaryToolbarController:v21];
    if (v21)
    {
      [(PXSecondaryToolbarController *)v21 setActionHandler:self];
      [(PXSecondaryToolbarController *)v21 updateIfNeeded];
      [(PXSecondaryToolbarController *)v21 containerViewAdditionalEdgeInsets];
      [(PXPhotosViewOptionsToolbarController *)v7 setAdditionalSafeAreaInsets:?];
      v26 = [(PXPhotosViewOptionsToolbarController *)v7 scrollViewController];
      [v26 registerObserver:v21];

      [(PXPhotosUIViewController *)self _updateSecondaryToolbarAccessoryViews];
    }

    else
    {
      [(PXPhotosViewOptionsToolbarController *)v7 setAdditionalSafeAreaInsets:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    }
  }

LABEL_30:
  [(PXPhotosUIViewController *)self _updateSecondaryToolbarOpacity];
}

- (void)_updateIsModalInPresentation
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  -[PXPhotosUIViewController px_setModalInPresentation:](self, "px_setModalInPresentation:", [v3 isModalInPresentation]);
}

- (void)_updateDismissalInteractionControllerProperties
{
  v4 = [(PXPhotosUIViewController *)self dismissalInteractionController];
  v3 = [(PXPhotosUIViewController *)self allowedInteractiveDismissBehaviors];
  [v4 setSwipeDownAllowed:v3 & 1];
  [v4 setSwipeUpAllowed:(v3 >> 1) & 1];
  [v4 setScreenEdgeSwipeAllowed:(v3 >> 2) & 1];
  [v4 setWantsChromeVisible:0];
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
  v15 = [(PXPhotosUIViewController *)self view];
  v3 = [(PXPhotosUIViewController *)self contentController];
  v4 = [v3 gridView];

  v5 = [(PXPhotosUIViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = [(PXPhotosUIViewController *)self configuration];
  v8 = v7;
  if (v6 == 2)
  {
    v9 = [v7 darkModeBackgroundStyle];
  }

  else
  {
    v9 = [v7 lightModeBackgroundStyle];
  }

  v10 = v9;

  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      goto LABEL_9;
    }

    v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v15 setBackgroundColor:v13];

    v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [v15 setBackgroundColor:v11];

    v12 = [MEMORY[0x1E69DC888] clearColor];
  }

  v14 = v12;
  [v4 setBackgroundColor:v12];

LABEL_9:
}

- (void)_setNeedsUpdate
{
  v2 = [(PXPhotosUIViewController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)viewDidLoad
{
  v92[1] = *MEMORY[0x1E69E9840];
  v89.receiver = self;
  v89.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v89 viewDidLoad];
  v74 = [(PXPhotosUIViewController *)self view];
  v3 = [(PXPhotosUIViewController *)self containerViewController];
  v4 = v3 == 0;

  if (v4)
  {
    [(UIViewController *)self px_enableOneUpPresentation];
  }

  else
  {
    v5 = [(PXPhotosUIViewController *)self containerViewController];
    [(UIViewController *)self px_enableOneUpPresentationFromViewController:v5];
  }

  [(PXPhotosUIViewController *)self px_enableExtendedTraitCollection];
  v72 = [(PXPhotosUIViewController *)self px_extendedTraitCollection];
  v6 = [off_1E77217E8 alloc];
  v7 = [(PXPhotosUIViewController *)self configuration];
  v8 = [v6 initWithConfiguration:v7 traitCollection:v72];
  contentController = self->_contentController;
  self->_contentController = v8;

  [(PXPhotosContentController *)self->_contentController setDelegate:self];
  v10 = [(PXPhotosUIViewController *)self configuration];
  v11 = [v10 photosAppConfiguration];
  v12 = [v11 privacyController];
  privacyController = self->_privacyController;
  self->_privacyController = v12;

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
    v15 = [(PXPhotosUIViewController *)self configuration];
    self->_allowedInteractiveDismissBehaviors = [v15 allowedInteractiveDismissBehaviors];
  }

  [(PXPhotosUIViewController *)self _updateOneUpPresentationInteraction];
  v16 = [(PXPhotosUIViewController *)self interaction];
  [v16 setUiInteractionDelegate:self];

  v17 = [(PXPhotosUIViewController *)self viewModel];
  [v17 registerChangeObserver:self context:ViewModelObserverContext_170727];
  v18 = [v17 currentDataSource];
  v73 = [v18 containerCollection];

  if ([v73 px_isHiddenSmartAlbum])
  {
    PXRegisterPreferencesObserver(self);
  }

  if ([v73 px_isRecentlyDeletedSmartAlbum])
  {
    [PXTipsAppDonation donateSignalForEvent:1];
  }

  if ([v73 px_isRecoveredSmartAlbum])
  {
    v19 = v73;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 photoLibrary];
    v22 = [v21 px_assetsRecoveryCountsManager];

    [v22 markAsRead];
  }

  v23 = [v17 specManager];
  [v23 registerChangeObserver:self context:SpecManagerObserverContext];

  if ([v17 decorationViewClass])
  {
    [v17 performChanges:&__block_literal_global_416_170868];
  }

  [v17 performChanges:&__block_literal_global_418];
  v24 = [(PXPhotosUIViewController *)self configuration];
  if ([v24 allowedBehaviors])
  {
    [(UIViewController *)self px_enableBarAppearance];
    v25 = [[PXPhotosBarsController alloc] initWithPhotosContentController:self->_contentController];
    barsController = self->_barsController;
    self->_barsController = v25;

    [(PXPhotosBarsController *)self->_barsController setDelegate:self];
    [(PXBarsController *)self->_barsController setViewController:self];
  }

  if ([v17 allowsSelectionUserActivityBehavior])
  {
    v27 = [PXAssetSelectionUserActivityController alloc];
    v28 = [v17 selectionManager];
    v29 = [(PXAssetSelectionUserActivityController *)v27 initWithSelectionManager:v28];
    userActivityController = self->_userActivityController;
    self->_userActivityController = v29;
  }

  v31 = [(PXPhotosContentController *)self->_contentController gridView];
  v32 = [v31 scrollViewController];
  v33 = [v32 scrollView];

  v34 = [v24 scrollViewAccessibilityIdentifier];
  [v33 setAccessibilityIdentifier:v34];

  [v74 bounds];
  [v31 setFrame:?];
  [v31 setAutoresizingMask:18];
  if ([v24 backgroundStyle] == 1)
  {
    v35 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v36 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v35];
    [v74 bounds];
    [v36 setFrame:?];
    v37 = [v17 specManager];
    v38 = [v37 spec];
    v39 = [v38 visualEffectViewGroupName];
    [v36 _setGroupName:v39];

    [v36 setAutoresizingMask:18];
    [v74 addSubview:v36];
  }

  [v31 setEnableUnderlaySupport:{objc_msgSend(v24, "enableSupportForTungstenUnderlay")}];
  v40 = +[PXSolariumSettings sharedInstance];
  v41 = [v40 enableAdaptiveDarkBiasInGrid];

  if (v41)
  {
    [v33 px_setPocketPreferredUserInterfaceStyleForAllEdges:2];
  }

  [v74 addSubview:v31];
  [(PXPhotosUIViewController *)self setContentScrollView:v33 forEdge:5];
  [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v42 = [v31 scrollViewController];
  [v42 registerObserver:self];

  [(PXPhotosUIViewController *)self _configureDismissalInteractionController];
  [(PXPhotosUIViewController *)self invalidateHeaderView];
  v43 = [v24 bannerProvider];
  [v43 setPresentationDelegate:self];

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

  v46 = [v17 assetCollectionActionManager];
  [v46 setTraitEnvironment:self];

  v47 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_openSelectionWithCommandDownArrow_];
  [(PXPhotosUIViewController *)self addKeyCommand:v47];

  v48 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_cancelSelectMode_];
  [(PXPhotosUIViewController *)self addKeyCommand:v48];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v49 = [(PXPhotosUIViewController *)self interaction];
  v50 = [v49 keyCommandsForSelectionExtension];

  v51 = [v50 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v51)
  {
    v52 = *v83;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v83 != v52)
        {
          objc_enumerationMutation(v50);
        }

        [(PXPhotosUIViewController *)self addKeyCommand:*(*(&v82 + 1) + 8 * i)];
      }

      v51 = [v50 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v51);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v54 = [(PXPhotosUIViewController *)self assetActionManager];
  v55 = [v54 actionKeyCommands];

  v56 = [v55 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v56)
  {
    v57 = *v79;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v79 != v57)
        {
          objc_enumerationMutation(v55);
        }

        [(PXPhotosUIViewController *)self addKeyCommand:*(*(&v78 + 1) + 8 * j)];
      }

      v56 = [v55 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v56);
  }

  if ([v17 dismissAffordance])
  {
    v59 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_modalDismiss_];
    [(PXPhotosUIViewController *)self addKeyCommand:v59];

    v60 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"[" modifierFlags:0x100000 action:sel_modalDismiss_];
    [(PXPhotosUIViewController *)self addKeyCommand:v60];
  }

  v61 = [v24 fullscreenOverlayControllers];
  v62 = [PXFullscreenOverlayViewControllerFactory makeViewControllerWithOverlayControllers:v61];

  if (v62)
  {
    [(PXPhotosUIViewController *)self addChildViewController:v62];
    v63 = [v62 view];
    fullscreenOverlay = self->_fullscreenOverlay;
    self->_fullscreenOverlay = v63;

    [v74 addSubview:self->_fullscreenOverlay];
    [v62 didMoveToParentViewController:self];
  }

  v65 = [[off_1E7721940 alloc] initWithTarget:self needsUpdateSelector:sel__setNeedsUpdate];
  updater = self->_updater;
  self->_updater = v65;

  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateObservedSplitViewController needsUpdate:1];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateSidebarVisibilityDependentProperties];
  objc_initWeak(&from, self);
  v67 = [MEMORY[0x1E696AD88] defaultCenter];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __39__PXPhotosUIViewController_viewDidLoad__block_invoke_4;
  v75[3] = &unk_1E7747200;
  objc_copyWeak(&v76, &from);
  v68 = [v67 addObserverForName:@"PXPhotosResetViewNotificationName" object:0 queue:0 usingBlock:v75];
  filterTimeoutObserver = self->_filterTimeoutObserver;
  self->_filterTimeoutObserver = v68;

  [(PXPhotosUIViewController *)self swift_viewDidLoad];
  v70 = MEMORY[0x1E696AF00];
  v71 = [off_1E7721810 sharedInstance];
  [v71 simulatedLoadDelay];
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
  v11 = [(PXPhotosUIViewController *)self placementOverride];
  v3 = [(PXPhotosUIViewController *)self backgroundColorBeforeOverride];
  v4 = v11;
  if (v11 && !v3)
  {
    v5 = [(PXPhotosUIViewController *)self gridView];
    v3 = [v5 backgroundColor];

    [(PXPhotosUIViewController *)self setBackgroundColorBeforeOverride:v3];
    v4 = v11;
LABEL_5:
    [v4 chromeAlpha];
    v6 = [v3 colorWithAlphaComponent:?];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

  if (v3)
  {
    v6 = v3;
    [(PXPhotosUIViewController *)self setBackgroundColorBeforeOverride:0];
    v3 = v6;
  }

  else
  {
    v10 = [(PXPhotosUIViewController *)self view];
    v6 = [v10 backgroundColor];

    v3 = 0;
  }

  v7 = v6;
LABEL_6:
  v8 = [(PXPhotosUIViewController *)self view];
  [v8 setBackgroundColor:v7];

  if (v11)
  {
  }

  v9 = [(PXPhotosUIViewController *)self gridView];
  [v9 setBackgroundColor:v6];
}

- (void)setPlacementOverride:(id)a3
{
  v5 = a3;
  if (self->_placementOverride != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placementOverride, a3);
    [(PXPhotosUIViewController *)self _updateBackgroundColorOverride];
    v5 = v6;
  }
}

- (UIViewControllerInteractiveTransitioning)edgeSwipeDismissalInteraction
{
  v2 = [(PXPhotosUIViewController *)self interaction];
  v3 = [v2 edgeSwipeDismissalInteraction];

  return v3;
}

- (void)ensureSwipeDismissalInteraction
{
  v2 = [(PXPhotosUIViewController *)self interaction];
  [v2 ensureSwipeDismissalInteraction];
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  v2 = [(PXPhotosUIViewController *)self interaction];
  v3 = [v2 contextMenuInteraction];

  return v3;
}

- (PXAssetReference)assetReferenceForCurrentScrollPosition
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 assetReferenceForCurrentScrollPosition];

  return v3;
}

- (BOOL)isScrolledToTop
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 isScrolledToTop];

  return v3;
}

- (BOOL)shouldAlwaysRespectToolbarActionPlacementPreference
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 shouldAlwaysRespectToolbarActionPlacementPreference];

  return v3;
}

- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  if ([v4 shouldAlwaysRespectToolbarActionPlacementPreference] != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__PXPhotosUIViewController_setShouldAlwaysRespectToolbarActionPlacementPreference___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = v3;
    [v4 performChanges:v5];
  }
}

- (BOOL)hidesToolbar
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 hidesToolbar];

  return v3;
}

- (void)setHidesToolbar:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  if ([v4 hidesToolbar] != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXPhotosUIViewController_setHidesToolbar___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = v3;
    [v4 performChanges:v5];
  }
}

- (BOOL)hidesNavbar
{
  v2 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v2 hidesNavbar];

  return v3;
}

- (void)setHidesNavbar:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXPhotosUIViewController *)self viewModel];
  if ([v4 hidesNavbar] != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PXPhotosUIViewController_setHidesNavbar___block_invoke;
    v5[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v6 = v3;
    [v4 performChanges:v5];
  }
}

- (NSSet)hiddenAssetReferences
{
  v2 = [(PXPhotosUIViewController *)self interaction];
  v3 = [v2 hiddenAssetReferences];

  return v3;
}

- (void)setHiddenAssetReferences:(id)a3 animationType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXPhotosUIViewController *)self contentController];
  v8 = [v7 layout];
  [v8 setPendingHideAnimationType:a4];

  v9 = [(PXPhotosUIViewController *)self interaction];
  [v9 setHiddenAssetReferences:v6];
}

- (void)scrollToCenterAssetReference:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosUIViewController *)self contentController];
  [v8 scrollToRevealAssetReference:v7 scrollPosition:18 padding:v6 completionHandler:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
}

- (void)scrollToRevealAssetReference:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosUIViewController *)self contentController];
  [v8 scrollToRevealAssetReference:v7 completionHandler:v6];
}

- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 shouldSnapshotPlaceholder:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PXPhotosUIViewController *)self interaction];
  v10 = [v9 regionOfInterestForAssetReference:v8 image:a4 fallbackMediaProvider:0 shouldSnapshot:v5];

  return v10;
}

- (void)_dismissOnInternalRequest
{
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 dismissRequested];

  if ((v4 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v5 = [(PXPhotosUIViewController *)self viewModel];
  v6 = [v5 dataSourceManager];
  [v6 performChanges:&__block_literal_global_170896];

  v7 = [(PXPhotosUIViewController *)self navigationController];
  v8 = [v7 px_popToViewControllerPrecedingViewController:self animated:1];

  v9 = [(PXPhotosUIViewController *)self viewModel];
  [v9 performChanges:&__block_literal_global_407_170897];
}

- (void)_presentOneUpForSingleSelectedAssetWithActivity:(unint64_t)a3
{
  v5 = [(PXPhotosUIViewController *)self viewModel];
  if (([v5 isInSelectMode] & 1) == 0)
  {
    v6 = [v5 singleSelectedAssetReference];
    if (v6)
    {
      v7 = [(PXPhotosUIViewController *)self interaction];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __76__PXPhotosUIViewController__presentOneUpForSingleSelectedAssetWithActivity___block_invoke;
      v8[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      v8[4] = a3;
      [v7 presentOneUpForAssetReference:v6 configurationHandler:v8];
    }
  }
}

- (void)setSecondaryToolbarAlpha:(double)a3
{
  if (self->_secondaryToolbarAlpha != a3)
  {
    self->_secondaryToolbarAlpha = a3;
    [(PXPhotosUIViewController *)self _invalidateSecondaryToolbarOpacity];
  }
}

- (double)secondaryToolbarHeight
{
  v2 = [(PXPhotosUIViewController *)self secondaryToolbarController];
  v3 = 0.0;
  if ([v2 isSecondaryToolbarVisible])
  {
    [v2 containerViewAdditionalEdgeInsets];
    v3 = v4;
  }

  return v3;
}

- (double)collapsibleFooterHeight
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  [v2 collapsibleFooterHeight];
  v4 = v3;

  return v4;
}

- (void)invalidateHeaderView
{
  v11 = [(PXPhotosUIViewController *)self viewModel];
  if ([v11 viewDelegateRespondsTo:2])
  {
    v3 = [(PXPhotosUIViewController *)self contentController];
    v4 = [v3 headerView];

    v5 = [(PXPhotosUIViewController *)self _contentUnavailableConfiguration];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [v11 viewDelegate];
      v6 = [v7 headerViewForPhotosViewController:self];
    }

    if ([v11 viewDelegateRespondsTo:0x8000])
    {
      v8 = [v11 viewDelegate];
      v9 = [v8 shouldAnimateFromHeaderView:v4 toHeaderView:v6];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(PXPhotosUIViewController *)self contentController];
    [v10 setHeaderView:v6 animated:v9];

    [(PXPhotosUIViewController *)self contentController];
    [objc_claimAutoreleasedReturnValue() headerView];
    objc_claimAutoreleasedReturnValue();
    PXPhotosViewNoteHeaderViewSizeDidChange();
  }
}

- (void)setShowingInitialLoadPlaceholder:(BOOL)a3
{
  if (self->_showingInitialLoadPlaceholder != a3)
  {
    self->_showingInitialLoadPlaceholder = a3;
    if (!a3)
    {
      [(PXPhotosUIViewController *)self setHasScrolledToInitialPosition:0];

      [(PXPhotosUIViewController *)self _scrollToInitialPositionIfNecessary];
    }
  }
}

- (void)_updateFooterLayout
{
  v3 = [(PXPhotosUIViewController *)self contentController];
  v2 = [v3 layout];
  [v2 invalidateFooterSize];
}

- (void)_updateDrawerButtonVisibility
{
  v10 = [(UIViewController *)self px_splitViewController];
  v3 = [(PXPhotosUIViewController *)self viewModelIfLoaded];
  v4 = [v3 gridStyle];
  v5 = [(PXPhotosUIViewController *)self viewModel];
  v6 = [v5 specManager];

  v7 = 1;
  if (v10 && (v4 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (([v10 displayMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v7 = [v10 isCollapsed] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(PXPhotosUIViewController *)self navigationController];
    v9 = v8 == 0;

    [v6 setWantsToggleSidebarButton:v9 & v7];
  }

  [v6 setShouldMakeSpaceForLeadingChrome:v7];
}

- (void)_updateBackButtonBehavior
{
  v22 = [(UIViewController *)self px_splitViewController];
  v3 = [(PXPhotosUIViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(PXPhotosUIViewController *)self navigationItem];
    v7 = [v6 hidesBackButton] ^ 1;
  }

  if ([v22 isSidebarVisible])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v22 splitBehavior] == 1 || objc_msgSend(v22, "splitBehavior") == 2;
  }

  v9 = [v22 displayMode];
  v10 = [(PXPhotosUIViewController *)self navigationItem];
  v11 = [v10 leftBarButtonItems];
  v12 = [v11 count];

  v13 = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  v14 = [v13 layout];

  v16 = v9 != 3 && v12 == 0;
  v17 = ((v7 | v8) & 1) == 0 && v16;
  [v14 setWantsHeaderInSafeArea:v17];
  v18 = [v22 splitBehavior];
  v19 = v9 == 3 || v8;
  if (v19 == 1)
  {
    v20 = (v18 == 2) & (v7 ^ 1);
    if ([v22 splitBehavior] == 1)
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

  [v14 setAlignsHeaderTitleWithLayoutMargins:v21];
}

- (void)_updateSubviewsOrdering
{
  v5 = [(PXPhotosUIViewController *)self view];
  v3 = [(PXPhotosUIViewController *)self gridView];
  [v5 sendSubviewToBack:v3];

  v4 = [(PXPhotosUIViewController *)self alternateContentView];
  [v5 bringSubviewToFront:v4];
}

- (void)_updateUIFromViewModelPrivacyState
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosUIViewController *)self viewModel];
  v4 = [v3 contentPrivacyState];

  v5 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "View Controller: Content should be obscured: %{public}@", &v12, 0xCu);
  }

  v8 = [(PXPhotosUIViewController *)self gridView];
  [v8 setContentShouldBeObscured:v4 != 0];
  v9 = [(UIViewController *)self px_oneUpPresentation];
  v10 = v9;
  if (v4 && [v9 isContextMenuInteractionActive])
  {
    v11 = [v10 contextMenuInteraction];
    [v11 dismissMenu];
  }

  [(PXPhotosUIViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosUIViewController *)self viewModel];
  if (!-[PXPhotosUIViewController isViewLoaded](self, "isViewLoaded") || ![v5 allowsEmptyPlaceholderBehavior])
  {
    goto LABEL_28;
  }

  v6 = [v5 emptyPlaceholderState];
  v7 = [v5 dataSourceManager];
  switch(v6)
  {
    case 3:
      v15 = [v5 emptyPlaceholderStatusViewModel];

      if (v15)
      {
        v16 = [(PXPhotosUIViewController *)self placeholderStatusController];
        v17 = [(PXPhotosUIViewController *)self placeholderStatusController];

        if (!v17)
        {
          v18 = objc_alloc_init(off_1E77218E0);

          v19 = [v5 emptyPlaceholderStatusViewModel];
          [v18 setViewModel:v19];

          [v18 setDelegate:self];
          [(PXPhotosUIViewController *)self setPlaceholderStatusController:v18];
          v16 = v18;
        }

        v12 = [v16 configuration];
      }

      else
      {
        v16 = [(PXPhotosUIViewController *)self fallbackPlaceholderStatusController];
        if (!v16)
        {
          v16 = _FallbackPlaceholderStatusControllerForViewModel(v5);
          [(PXPhotosUIViewController *)self setFallbackPlaceholderStatusController:v16];
          v22 = [v16 statusController];
          [v22 setDelegate:self];
        }

        v23 = [v16 statusController];
        v12 = [v23 configuration];
      }

      break;
    case 2:
      v12 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
      v13 = [v7 localizedLoadingInitialDataSourceMessage];
      [v12 setText:v13];

      v14 = [v7 isLoadingInitialDataSource];
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
      v10 = [(PXPhotosUIViewController *)self privacyController];
      v11 = [v10 authenticationType];

      v12 = PXContentLockedPlaceholderConfiguration(1, v11, [v5 wantsContentUnavailableUnlockButtonVisible], v9);

      objc_destroyWeak(&v65);
      objc_destroyWeak(&location);
      break;
    default:
      placeholderStatusController = self->_placeholderStatusController;
      self->_placeholderStatusController = 0;

      fallbackPlaceholderStatusController = self->_fallbackPlaceholderStatusController;
      self->_fallbackPlaceholderStatusController = 0;

      v14 = 0;
      v12 = 0;
      goto LABEL_18;
  }

  v14 = 0;
LABEL_18:
  [(PXPhotosUIViewController *)self setShowingInitialLoadPlaceholder:v14];

  if (!v12)
  {
LABEL_28:
    v62 = [0 updatedConfigurationForState:v4];
    [(PXPhotosUIViewController *)self setContentUnavailableConfiguration:v62];

    [(PXPhotosUIViewController *)self invalidateHeaderView];
    v12 = 0;
LABEL_29:
    emptyPlaceholderDragController = self->_emptyPlaceholderDragController;
    self->_emptyPlaceholderDragController = 0;
    goto LABEL_30;
  }

  v24 = [v5 specManager];
  v25 = [v24 spec];

  v26 = [v25 placeholderFont];

  if (v26)
  {
    v27 = [v25 placeholderFont];
    v28 = [v12 textProperties];
    [v28 setFont:v27];
  }

  v29 = [v25 placeholderFontColor];

  if (v29)
  {
    v30 = [v25 placeholderFontColor];
    v31 = [v12 textProperties];
    [v31 setColor:v30];
  }

  v32 = [v5 specManager];
  v33 = [v32 extendedTraitCollection];
  [v33 layoutReferenceSize];
  v35 = v34;
  v37 = v36;

  v38 = [v32 dynamicHeaderHeightCallback];
  if (v38)
  {
    v39 = v38;
    v40 = [v5 gridStyle];

    if (v40 == 3)
    {
      v41 = [v32 dynamicHeaderHeightCallback];
      v42 = v41[2](v35, v37);

      v43 = [(PXPhotosUIViewController *)self view];
      [v43 safeAreaInsets];
      v45 = v42 - v44;
      [v12 directionalLayoutMargins];
      v47 = v46;
      [v12 directionalLayoutMargins];
      [v12 setDirectionalLayoutMargins:{v45, v47, 0.0}];
    }
  }

  v48 = [v25 contentUnavailablePlaceholderDisablesVerticalBounce];
  v49 = [(PXPhotosUIViewController *)self gridView];
  v50 = [v49 scrollViewController];
  [v50 setAlwaysBounceVertical:v48 ^ 1u];

  v51 = [v12 updatedConfigurationForState:v4];
  [(PXPhotosUIViewController *)self setContentUnavailableConfiguration:v51];

  [(PXPhotosUIViewController *)self invalidateHeaderView];
  v52 = [(PXPhotosUIViewController *)self configuration];
  v53 = [v52 allowsDragIn];

  if (!v53)
  {
    goto LABEL_29;
  }

  v63 = [off_1E77217F0 alloc];
  emptyPlaceholderDragController = [(PXPhotosUIViewController *)self view];
  v55 = [(PXPhotosUIViewController *)self viewModel];
  v56 = [v55 selectionManager];
  v57 = [(PXPhotosUIViewController *)self viewModel];
  v58 = [v57 assetCollectionActionManager];
  v59 = [(PXPhotosUIViewController *)self interaction];
  v60 = [v63 initWithContentView:emptyPlaceholderDragController selectionManager:v56 assetCollectionActionManager:v58 delegate:v59];
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
    v4 = [(PXPhotosUIViewController *)self viewModel];
    v5 = [v4 isInSelectMode];

    if (v5)
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
  v22 = [(PXPhotosUIViewController *)self viewModel];
  v3 = [v22 currentDataSource];
  if ([v3 numberOfSections])
  {
    if ([v22 emptyPlaceholderState] == 3)
    {
      v4 = [(UIViewController *)self px_oneUpPresentation];
      [v4 stopAnimated:1];

      v5 = [(PXPhotosUIViewController *)self viewModel];
      if ([v5 allowsPopOnEmptyBehavior])
      {
        v6 = [(PXPhotosUIViewController *)self viewModel];
        v7 = [v6 appearState];

        if (v7 == 2)
        {
          v8 = [(PXPhotosUIViewController *)self navigationController];
          v9 = [v8 px_popToViewControllerPrecedingViewController:self animated:1];

          if (!v9)
          {
            v10 = [(PXPhotosUIViewController *)self navigationController];
            v11 = [v10 presentingViewController];
            [v11 dismissViewControllerAnimated:1 completion:0];
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

  v12 = [(PXPhotosUIViewController *)self viewModel];
  v13 = [v12 allowsPopOnContainerDeleteBehavior];
  if (v13)
  {
    v14 = [(PXPhotosUIViewController *)self viewModel];
    v15 = [v14 appearState];

    if (v15 != 2)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v16 = [(PXPhotosUIViewController *)self navigationController];
    v17 = 1;
    v18 = [v16 px_popToViewControllerPrecedingViewController:self animated:1];

    v19 = v22;
    if (v18)
    {
      goto LABEL_15;
    }

    v12 = [(PXPhotosUIViewController *)self navigationController];
    v20 = [v12 presentingViewController];
    [v20 dismissViewControllerAnimated:1 completion:0];
  }

  v17 = v13;
LABEL_14:
  v19 = v22;
LABEL_15:
  if ([v19 viewDelegateRespondsTo:4])
  {
    v21 = [v22 viewDelegate];
    [v21 containerWasDeletedForPhotosViewController:self];
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_requestFocusUpdateWithAssetReference:(id)a3
{
  [(PXPhotosUIViewController *)self setPreferredFocusAssetReference:a3];
  v4 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  [v4 requestFocusUpdateToEnvironment:self];
}

- (void)setAlternateContentView:(id)a3
{
  v5 = a3;
  alternateContentView = self->_alternateContentView;
  if (alternateContentView != v5)
  {
    [(UIView *)alternateContentView removeFromSuperview];
    objc_storeStrong(&self->_alternateContentView, a3);
    v7 = [(PXPhotosUIViewController *)self view];
    [v7 bounds];
    [(UIView *)self->_alternateContentView setFrame:?];
    [(UIView *)self->_alternateContentView setAutoresizingMask:18];
    v8 = [(PXPhotosUIViewController *)self view];
    [v8 addSubview:self->_alternateContentView];

    [(PXPhotosUIViewController *)self _updateSubviewsOrdering];
    LOBYTE(v8) = self->_alternateContentView != 0;
    v9 = [(PXPhotosUIViewController *)self viewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PXPhotosUIViewController_setAlternateContentView___block_invoke;
    v10[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v11 = v8;
    [v9 performChanges:v10];
  }
}

- (PXPhotosCloseButtonController)closeButtonController
{
  closeButtonController = self->_closeButtonController;
  if (!closeButtonController)
  {
    v4 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:@"xmark"];
    v5 = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    v6 = [v4 background];
    [v6 _setVisualEffectGroupName:v5];

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
    v4 = [(PXPhotosUIViewController *)self viewModel];
    v5 = [v4 footerViewModel];

    v6 = objc_opt_class();
    v7 = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
    v8 = [v6 _roundedButtonConfigurationWithSymbolName:@"info" inset:7 fontSize:v7 weight:7.0 groupName:14.0];

    v9 = [[PXPhotosStatusToggleButtonController alloc] initWithFooterViewModel:v5 buttonConfiguration:v8];
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
    v3 = [(PXPhotosUIViewController *)self configuration];
    v4 = [v3 enableFilterButton];

    if (v4)
    {
      v5 = [MEMORY[0x1E69DC738] photosViewRoundedAccessoryConfigurationWithSymbolName:@"line.3.horizontal.decrease"];
      if ((MEMORY[0x1A590D320]() & 1) == 0)
      {
        v6 = [(PXPhotosUIViewController *)self toolbarBackdropGroupName];
        v7 = [v5 background];
        [v7 _setVisualEffectGroupName:v6];
      }

      v8 = [PXPhotosFilterToggleButtonController alloc];
      v9 = [(PXPhotosUIViewController *)self viewModel];
      v10 = [(PXPhotosFilterToggleButtonController *)v8 initWithViewModel:v9 buttonConfiguration:v5];
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
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 interaction];

  return v3;
}

- (id)scrollView
{
  v2 = [(PXPhotosUIViewController *)self gridView];
  v3 = [v2 scrollViewController];
  v4 = [v3 scrollView];

  return v4;
}

- (PXPhotosViewEventTracker)eventTracker
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 eventTracker];

  return v3;
}

- (id)currentDataSource
{
  if ([(PXPhotosUIViewController *)self isViewLoaded])
  {
    v3 = [(PXPhotosUIViewController *)self contentController];
    v4 = [v3 viewModel];
    [v4 currentDataSource];
  }

  else
  {
    v3 = [(PXPhotosUIViewController *)self configuration];
    v4 = [v3 dataSourceManager];
    [v4 dataSource];
  }
  v5 = ;

  return v5;
}

- (PXGView)gridView
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 gridView];

  return v3;
}

- (PXPhotosViewModel)viewModel
{
  v2 = [(PXPhotosUIViewController *)self contentController];
  v3 = [v2 viewModel];

  return v3;
}

- (PXPhotosViewModel)viewModelIfLoaded
{
  v2 = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  v3 = [v2 viewModel];

  return v3;
}

- (PXPhotosContentController)contentController
{
  contentController = self->_contentController;
  if (!contentController)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:216 description:@"Content controller should not be accessed before viewDidLoad"];

    contentController = self->_contentController;
  }

  return contentController;
}

- (NSString)description
{
  v3 = [(PXPhotosUIViewController *)self contentControllerIfLoaded];
  v4 = [v3 viewModel];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 currentDataSource];
    v7 = [v6 containerCollection];
    v8 = [v7 localizedTitle];
    v9 = [v5 stringWithFormat:@"containerCollection=%@", v8];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_filterTimeoutObserver];

  filterTimeoutObserver = self->_filterTimeoutObserver;
  self->_filterTimeoutObserver = 0;

  v5.receiver = self;
  v5.super_class = PXPhotosUIViewController;
  [(PXPhotosUIViewController *)&v5 dealloc];
}

- (PXPhotosUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:191 description:{@"%s is not available as initializer", "-[PXPhotosUIViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXPhotosUIViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosUIViewController.m" lineNumber:187 description:{@"%s is not available as initializer", "-[PXPhotosUIViewController initWithCoder:]"}];

  abort();
}

- (PXPhotosUIViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotosUIViewController;
  v5 = [(PXPhotosUIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(PXPhotosViewConfiguration *)v5->_configuration setIsEmbedded:0];
    [(PXPhotosUIViewController *)v5 swift_initWithConfiguration:v4];
  }

  return v5;
}

+ (id)_roundedButtonConfigurationWithSymbolName:(id)a3 useOriginalSymbolAppearance:(BOOL)a4 inset:(double)a5 fontSize:(double)a6 weight:(int64_t)a7 groupName:(id)a8
{
  v13 = a3;
  v14 = MEMORY[0x1E69DC740];
  v15 = a8;
  v16 = [v14 grayButtonConfiguration];
  if ([v13 length])
  {
    v17 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:a7 weight:a6];
    v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v13 withConfiguration:v17];
    if (v18)
    {
      if (a4)
      {
LABEL_5:
        [v16 setImage:v18];

        goto LABEL_6;
      }
    }

    else
    {
      v18 = [MEMORY[0x1E69DCAB8] px_imageNamed:v13 withConfiguration:v17];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20 = [v18 imageWithTintColor:v19 renderingMode:1];

    v18 = v20;
    goto LABEL_5;
  }

LABEL_6:
  v21 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  [v21 _setVisualEffectGroupName:v15];

  v22 = [MEMORY[0x1E69DC730] effectWithStyle:7];
  [v21 setVisualEffect:v22];

  [v16 setBackground:v21];
  [v16 setContentInsets:{a5, a5, a5, a5}];
  [v16 setCornerStyle:4];

  return v16;
}

+ (void)_configureOpacityOfSecondaryToolbarController:(id)a3 withViewModel:(id)a4 secondaryToolbarAlpha:(double)a5
{
  v10 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 chromeOpacity];
  }

  else
  {
    v9 = 1.0;
  }

  [v10 setAlpha:v9 * a5];
  [v10 setShouldAlwaysBeConsideredVisibleForLayoutPurpose:{(objc_msgSend(v8, "chromeItemsToBeConsideredVisibleForLayoutPurpose") >> 5) & 1}];
}

- (void)ppt_navigateToAssetReference:(id)a3 revealInOneUp:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 asset];
  v11 = [v9 assetCollection];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PXPhotosUIViewController_PPT__ppt_navigateToAssetReference_revealInOneUp_completionHandler___block_invoke;
  v13[3] = &unk_1E7748588;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [(PXPhotosUIViewController *)self ppt_navigateToAsset:v10 inAssetContainer:v11 revealInOneUp:v5 completionHandler:v13];
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

- (id)ppt_scrollToPreviousAssetOfAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosUIViewController *)self viewModel];
  v9 = [v8 currentDataSource];

  v17 = 0u;
  v18 = 0u;
  if (v9)
  {
    [v9 indexPathForAssetReference:v6];
  }

  v10 = [(PXPhotosUIViewController *)self contentController];
  v11 = v10;
  if (v10)
  {
    v14[0] = v17;
    v14[1] = v18;
    [v10 selectableIndexPathClosestToIndexPath:v14 inDirection:6];
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
  v12 = [v9 assetReferenceAtItemIndexPath:&v15];
  [(PXPhotosUIViewController *)self scrollToCenterAssetReference:v12 completion:v7];

  return v12;
}

- (id)ppt_navigateToBottom
{
  [(PXPhotosUIViewController *)self scrollToBottomAnimated:0];

  return [(PXPhotosUIViewController *)self assetReferenceForCurrentScrollPosition];
}

@end