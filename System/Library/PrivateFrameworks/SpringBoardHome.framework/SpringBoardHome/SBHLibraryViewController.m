@interface SBHLibraryViewController
+ (id)_updateCategoryMap:(id)a3 withCategoryDataFrom:(id)a4;
- (BOOL)_canPerformDropForAnyItemInSession:(id)a3;
- (BOOL)_canPerformDropForDraggedIcon:(id)a3;
- (BOOL)_hiddenCategoriesDidChangeFromCurrentCategoryMap:(id)a3 toUpdatedCategoryMap:(id)a4;
- (BOOL)_shouldUseReduceTransparencyBackgroundView;
- (BOOL)folderController:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5;
- (BOOL)iconShouldAllowCloseBoxTap:(id)a3;
- (BOOL)iconShouldAllowTap:(id)a3;
- (BOOL)iconView:(id)a3 editingModeGestureRecognizerDidFire:(id)a4;
- (BOOL)iconViewCanBecomeFocused:(id)a3;
- (BOOL)iconViewDisplaysAccessories:(id)a3;
- (BOOL)iconViewDisplaysCloseBox:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4;
- (BOOL)isIconViewRecycled:(id)a3;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)isPresentingSearch;
- (BOOL)presentPodWithCategory:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)presentPodWithCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (NSArray)podTopLevelDisplayedIcons;
- (NSSet)presentedIconLocations;
- (SBFolderIconImageCache)folderIconImageCache;
- (SBHCredenzaSettings)credenzaSettings;
- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider;
- (SBHLegibilitySettings)effectiveLegibilitySettings;
- (SBHLibraryIconPrecachingInfo)iconPrecachingInfo;
- (SBHLibraryViewController)initWithCategoryMapProvider:(id)a3;
- (SBHLibraryViewControllerDelegate)behaviorDelegate;
- (SBHLibraryViewControllerPresenter)presenter;
- (SBHomeScreenIconTransitionAnimatorDelegate)homeScreenIconTransitionAnimatorDelegate;
- (SBIconViewDelegate)iconViewDelegate;
- (SBIconViewProviding)iconViewProvider;
- (SBRootFolder)categoriesRootFolder;
- (UIView)externalBackgroundView;
- (id)_additionalItemsIcons;
- (id)_additionalItemsIndicatorIconViewForFolderController:(id)a3;
- (id)_createIconViewControllerForCategoryIdentifier:(id)a3;
- (id)_customImageViewControllerForCategoryPodIconView:(id)a3 usingInternalCache:(BOOL)a4;
- (id)_destinationFolderIconViewForDragItem:(id)a3 folderRelativeIconIndexPath:(id *)a4;
- (id)_draggedItemIdentifiersInSession:(id)a3;
- (id)_hiddenCategoryIdentifierForCategoryMap:(id)a3;
- (id)_iconIdentifierForDragItem:(id)a3;
- (id)_iconLocationForCategoryIdentifier:(id)a3;
- (id)_iconViewControllerForCategoryIdentifier:(id)a3;
- (id)_wrappedCompletionBlockForNestedTransitionWithCompletion:(id)a3;
- (id)contentScrollView;
- (id)contextMenuDelegateForIconView:(id)a3;
- (id)dequeueReusableIconViewOfClass:(Class)a3;
- (id)draggingDelegateForIconView:(id)a3;
- (id)effectiveIconImageAppearance;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4;
- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)a3;
- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5;
- (id)folderController:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6;
- (id)iconView:(id)a3 labelContentWithParameters:(id)a4;
- (id)iconView:(id)a3 labelImageWithParameters:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5;
- (id)keyCommands;
- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6;
- (int64_t)closeBoxTypeForIconView:(id)a3;
- (void)_addBarSwipeView;
- (void)_dismissDisplayedContextMenu;
- (void)_dismissExpandedPods:(BOOL)a3 completion:(id)a4;
- (void)_dismissHiddenExpandedPodAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissLibraryViewControllerForReason:(id)a3 sessionIdentifier:(id)a4;
- (void)_dismissSearchIfNotInUseForReason:(id)a3 sessionIdentifier:(id)a4;
- (void)_enqueueTransitionName:(id)a3 withHandler:(id)a4;
- (void)_enumerateAllViewControllersUsingBlock:(id)a3;
- (void)_enumerateObservers:(id)a3;
- (void)_expandPodAtIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_flushPendingLibraryCategoryMapUpdateIfNeeded;
- (void)_installCategoryMap:(id)a3;
- (void)_invalidateLibraryViewControllerDismissalTimer;
- (void)_notifyObserversDataSourceDidChange;
- (void)_notifyObserversDidDismiss;
- (void)_notifyObserversDidDismissFolderController:(id)a3;
- (void)_notifyObserversDidDismissSearchController:(id)a3;
- (void)_notifyObserversDidPresent;
- (void)_notifyObserversDidPresentSearchController:(id)a3;
- (void)_notifyObserversOfAcceptedDrop:(id)a3;
- (void)_notifyObserversOfAppLaunchOfIcon:(id)a3 fromLocation:(id)a4;
- (void)_notifyObserversWillDismiss;
- (void)_notifyObserversWillDismissFolderController:(id)a3;
- (void)_notifyObserversWillDismissSearchController:(id)a3;
- (void)_notifyObserversWillPresent;
- (void)_notifyObserversWillPresentFolderController:(id)a3;
- (void)_notifyObserversWillPresentSearchController:(id)a3;
- (void)_popExpandedPod;
- (void)_precacheIconViewControllersForCategories:(id)a3;
- (void)_scrollIconViewToVisible:(id)a3 animated:(BOOL)a4;
- (void)_setupIconTableViewController:(BOOL)a3;
- (void)_setupReducedTransparencyBackgroundViewIfNeeded;
- (void)_startAppLaunchResetTimer:(id)a3;
- (void)_startLibraryViewControllerDismissalTimer:(id)a3;
- (void)_teardownReducedTransparencyBackgroundView;
- (void)_updateDragPreviewIconViewsForDropSession:(id)a3 inIconListView:(id)a4;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateLibraryCategoryMap:(id)a3;
- (void)_updateReduceTransparency;
- (void)_updateSearchControllerLegibility;
- (void)_updateViewControllerLegibility;
- (void)addObserver:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)dealloc;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumeratePodIconListViewsUsingBlock:(id)a3;
- (void)enumerateViewControllersUsingBlock:(id)a3;
- (void)folderController:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6;
- (void)folderController:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)forcedSearchTextFieldNoneditable:(BOOL)a3;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconModelDidLayout:(id)a3;
- (void)iconTapped:(id)a3 modifierFlags:(int64_t)a4;
- (void)iconViewWasDiscarded:(id)a3;
- (void)iconViewWasRecycled:(id)a3;
- (void)invalidateSearchControllerAppLaunchResetTimer;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)libraryPodFolderController:(id)a3 willLayoutDisplayedCategories:(unint64_t)a4;
- (void)libraryPodFolderControllerRequestsDismissal:(id)a3;
- (void)libraryTableViewControllerDidAppear:(id)a3;
- (void)libraryTableViewControllerDidLaunchIcon:(id)a3;
- (void)loadView;
- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)overlayController:(id)a3 visibilityDidChange:(BOOL)a4;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3;
- (void)popNestedViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)popPresentationState;
- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)recycleIconView:(id)a3;
- (void)setAllowsBadging:(BOOL)a3;
- (void)setBadgeBehaviorProvider:(id)a3;
- (void)setBarSwipeViewController:(id)a3;
- (void)setBehaviorDelegate:(id)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExternalBackgroundView:(id)a3;
- (void)setIconImageCache:(id)a3;
- (void)setIconModel:(id)a3;
- (void)setIconViewProvider:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3;
- (void)setOverrideLegibilitySettings:(id)a3;
- (void)setShouldPrewarmContent:(BOOL)a3;
- (void)setSuppressesEditingStateForListViews:(BOOL)a3;
- (void)updateIconVisibility;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SBHLibraryViewController

- (SBHLibraryViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (BOOL)isPresentingSearch
{
  v3 = [(SBHLibrarySearchController *)self->_containerViewController isActive];
  if (v3)
  {
    LOBYTE(v3) = self->_iconTableViewController != 0;
  }

  return v3;
}

- (SBHLibraryViewController)initWithCategoryMapProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBHLibraryViewController;
  v6 = [(SBNestingViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryMapProvider, a3);
    v7->_contentVisibility = 0;
    objc_storeStrong(&v7->_iconLocation, @"SBIconLocationAppLibrary");
    if (MGGetBoolAnswer())
    {
      v8 = 1;
    }

    else
    {
      v8 = SBHPerformanceFlagEnabled(0);
    }

    v7->_prefersFlatImageLayers = v8;
    v9 = objc_alloc(MEMORY[0x1E698E6A8]);
    v10 = [v9 initWithName:@"com.apple.SpringBoardHome.libraryViewController.transitions" onQueue:MEMORY[0x1E69E96A0]];
    transitionEventQueue = v7->_transitionEventQueue;
    v7->_transitionEventQueue = v10;

    v12 = +[(PTDomain *)SBHCredenzaDomain];
    objc_storeWeak(&v7->_credenzaSettings, v12);

    [(SBHLibraryViewController *)v7 _setupIconTableViewController:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v4 dealloc];
}

- (void)iconModelDidLayout:(id)a3
{
  v4 = [a3 object];
  v5 = [(SBHLibraryViewController *)self iconModel];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__SBHLibraryViewController_iconModelDidLayout___block_invoke;
    v7[3] = &unk_1E808E7D8;
    v8 = v4;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v7];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
  }
}

void __47__SBHLibraryViewController_iconModelDidLayout___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) rootFolder];
    [v4 setRootFolder:v3];
  }
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v13 loadView];
  v3 = [(SBHLibraryViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69D3FD0]) initWithFrame:{v5, v7, v9, v11}];
  [v12 setFocusGroupIdentifier:@"AppLibrary"];
  [(SBHLibraryViewController *)self setView:v12];
  [(SBHLibraryViewController *)self _setupIconTableViewController:0];
  [(SBNestingViewController *)self setDelegate:self];
  [(SBHLibraryViewController *)self _setupReducedTransparencyBackgroundViewIfNeeded];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v5 viewDidLoad];
  v3 = [(SBHLibraryViewController *)self view];
  [v3 _setIgnoreBackdropViewsWhenHiding:1];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  [v3 setTintColor:v4];

  [(SBHLibraryViewController *)self _addBarSwipeView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v8 viewWillAppear:?];
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if (!self->_libraryCategoryMap)
  {
    [(SBHLibraryViewController *)self _enqueueAppLibraryUpdate];
  }

  [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:v3 clearSearchResults:1 resetSearchBarTransformAndAlpha:[(SBHLibraryViewController *)self _shouldResetSearchBarTransformAndAlpha]];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__updateReduceTransparency name:*MEMORY[0x1E69DD920] object:0];

  [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:1 animated:v3];
  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v7, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillPresent];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v6 viewDidAppear:a3];
  [(SBHLibrarySearchController *)self->_containerViewController endAppearanceTransition];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidPresent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v7 viewWillDisappear:?];
  [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:0 animated:v3];
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillDismiss];
  [(SBHLibraryViewController *)self _dismissDisplayedContextMenu];
}

- (void)_dismissDisplayedContextMenu
{
  v3 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 dismissDisplayedContextMenu];
  }

  else
  {
    [(SBHLibraryViewController *)self enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_58];
  }
}

void __56__SBHLibraryViewController__dismissDisplayedContextMenu__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 isShowingContextMenu])
  {
    [v4 dismissContextMenuWithCompletion:0];
    *a3 = 1;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v9 viewDidDisappear:?];
  [(SBHLibrarySearchController *)self->_containerViewController endAppearanceTransition];
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:v3 clearSearchResults:1 resetSearchBarTransformAndAlpha:[(SBHLibraryViewController *)self _shouldResetSearchBarTransformAndAlpha]];
  [(SBHLibraryViewController *)self _dismissHiddenExpandedPodAnimated:v3 completion:0];
  [(SBHLibraryViewController *)self _flushPendingLibraryCategoryMapUpdateIfNeeded];
  v6 = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider requestLibraryCategoryMapRefreshWithOptions:2 reason:@"SBHLibraryViewController reload proactive categories after disappear request"];
  [(SBHLibraryViewController *)self _notifyObserversDidDismiss];
  [(SBHLibraryViewController *)self _invalidateLibraryViewControllerDismissalTimer];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  [(SBHLibraryViewController *)self _teardownReducedTransparencyBackgroundView];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(UIViewController *)self->_barSwipeViewController viewIfLoaded];
  if (v3)
  {
    v4 = [(SBHLibraryViewController *)self view];
    [v4 bringSubviewToFront:v3];
  }

  v5.receiver = self;
  v5.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v5 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v6 viewDidLayoutSubviews];
  reducedTransparencyBackgroundView = self->_reducedTransparencyBackgroundView;
  if (reducedTransparencyBackgroundView)
  {
    v4 = [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView superview];
    [v4 bounds];
    [(SBFolderControllerBackgroundView *)reducedTransparencyBackgroundView setFrame:?];

    v5 = [(SBHLibraryViewController *)self view];
    [v5 sendSubviewToBack:self->_reducedTransparencyBackgroundView];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v10 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = [(SBHLibraryViewController *)self externalBackgroundView];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [MEMORY[0x1E69D3FA0] matchMoveAnimationForPinningToView:v6];
      [v8 addAnimation:v9 forKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }

    else
    {
      v9 = [v7 layer];
      [v9 removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = SBHLibraryViewController;
  v7 = a4;
  [(SBHLibraryViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBHLibraryViewController *)self externalBackgroundView];
  v9 = [v8 layer];

  v10 = [v9 animationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
  [v9 removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SBHLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E808E800;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [v7 animateAlongsideTransition:0 completion:v13];
}

- (id)contentScrollView
{
  v3 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  v4 = [v3 contentScrollView];

  if (v4)
  {
    v5 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v6 = [v5 contentScrollView];
  }

  else
  {
    v6 = [(SBHLibrarySearchController *)self->_containerViewController contentScrollView];
  }

  return v6;
}

- (id)keyCommands
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBHLibraryViewController;
  v2 = [(SBHLibraryViewController *)&v7 keyCommands];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__popExpandedPod];
  v4 = v3;
  if (v2)
  {
    v5 = [v2 arrayByAddingObject:v3];
  }

  else
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

- (void)setBehaviorDelegate:(id)a3
{
  objc_storeWeak(&self->_behaviorDelegate, a3);
  shouldUseReduceTransparencyBackgroundView = self->_shouldUseReduceTransparencyBackgroundView;
  self->_shouldUseReduceTransparencyBackgroundView = 0;
}

- (void)_dismissExpandedPods:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(SBNestingViewController *)self deepestNestedDescendantViewController];

  if (v6)
  {
    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:v4 withCompletion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)_expandPodAtIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SBHLibraryCategoryMap *)self->_libraryCategoryMap categoryIdentifiers];
  v10 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  if (v10 || [(SBHLibraryViewController *)self isPresentingSearch])
  {

    goto LABEL_4;
  }

  if (![v9 count])
  {
LABEL_4:
    if (v8)
    {
      v8[2](v8, 0);
    }

    goto LABEL_6;
  }

  v11 = [(SBFolderController *)self->_podFolderViewController folder];
  v12 = [v11 icons];
  v13 = [v12 objectAtIndex:a3];

  v14 = [v13 category];
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__SBHLibraryViewController__expandPodAtIndex_animated_completion___block_invoke;
    v15[3] = &unk_1E808E828;
    v16 = v8;
    [(SBHLibraryViewController *)self presentPodWithCategory:v14 animated:v5 completion:v15];
  }

  else
  {
    [(SBHLibraryViewController *)self presentPodWithCategory:v14 animated:v5 completion:0];
  }

LABEL_6:
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBHLibraryViewController *)self _updateViewControllerLegibility];
    [(SBHLibraryViewController *)self _updateSearchControllerLegibility];
  }
}

- (void)setIconModel:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_iconModel] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    objc_storeStrong(&self->_iconModel, a3);
    categoriesFolder = self->_categoriesFolder;
    if (categoriesFolder)
    {
      [(SBRootFolder *)categoriesFolder setDelegate:0];
      v8 = self->_categoriesFolder;
      self->_categoriesFolder = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__SBHLibraryViewController_setIconModel___block_invoke;
    v9[3] = &unk_1E808E7D8;
    v9[4] = self;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v9];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
    [v6 addObserver:self selector:sel_iconModelDidLayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
  }
}

void __41__SBHLibraryViewController_setIconModel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1184);
  v3 = a2;
  v4 = [v2 rootFolder];
  [v3 setRootFolder:v4];
}

- (void)setIconViewProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_iconViewProvider, obj);
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
    v5 = obj;
  }
}

- (void)setIconImageCache:(id)a3
{
  v5 = a3;
  if (([(SBHIconImageCache *)self->_iconImageCache isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_iconImageCache, a3);
    folderIconImageCache = self->_folderIconImageCache;
    self->_folderIconImageCache = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SBHLibraryViewController_setIconImageCache___block_invoke;
    v7[3] = &unk_1E808E7D8;
    v8 = v5;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v7];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
  }
}

- (void)setListLayoutProvider:(id)a3
{
  v5 = a3;
  if (self->_listLayoutProvider != v5)
  {
    objc_storeStrong(&self->_listLayoutProvider, a3);
    [(SBHLibrarySearchController *)self->_containerViewController setListLayoutProvider:v5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__SBHLibraryViewController_setListLayoutProvider___block_invoke;
    v6[3] = &unk_1E808E7D8;
    v7 = v5;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v6];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
  }
}

- (SBFolderIconImageCache)folderIconImageCache
{
  if (!self->_folderIconImageCache)
  {
    v3 = [(SBHLibraryViewController *)self iconImageCache];

    if (v3)
    {
      v4 = [(SBHLibraryViewController *)self listLayoutProvider];
      v5 = [v4 layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPodAdditionalItems"];

      if (v5)
      {
        v6 = [SBFolderIconImageCache alloc];
        v7 = [(SBHLibraryViewController *)self iconImageCache];
        v8 = [(SBFolderIconImageCache *)v6 initWithListLayout:v5 iconImageCache:v7];
        folderIconImageCache = self->_folderIconImageCache;
        self->_folderIconImageCache = v8;
      }
    }
  }

  v10 = self->_folderIconImageCache;

  return v10;
}

- (void)popPresentationState
{
  [(SBHLibraryViewController *)self enumerateDisplayedIconViewsUsingBlock:&__block_literal_global_81_0];
  if ([(SBHLibraryViewController *)self isPresentingFolder])
  {

    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
  }

  else if ([(SBHLibraryViewController *)self isPresentingSearch])
  {

    [(SBHLibraryViewController *)self dismissSearch];
  }

  else
  {
    v3 = [(SBHLibraryViewController *)self behaviorDelegate];
    [v3 libraryViewControllerRequestsDismissal:self];
  }
}

void __48__SBHLibraryViewController_popPresentationState__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 isShowingContextMenu])
  {
    [v4 dismissContextMenuWithCompletion:0];
    *a3 = 1;
  }
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  [SBFolderController layoutIconListsWithAnimationType:"layoutIconListsWithAnimationType:forceRelayout:" forceRelayout:?];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v7 = [(SBNestingViewController *)self nestedViewControllers:0];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v12 = SBFSafeCast();
        [v12 layoutIconListsWithAnimationType:a3 forceRelayout:v4];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setBarSwipeViewController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_barSwipeViewController != v5)
  {
    v7 = v5;
    [(SBHLibraryViewController *)self bs_removeChildViewController:?];
    objc_storeStrong(&self->_barSwipeViewController, a3);
    v5 = [(SBHLibraryViewController *)self isViewLoaded];
    v6 = v7;
    if (v5)
    {
      v5 = [(SBHLibraryViewController *)self _addBarSwipeView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_addBarSwipeView
{
  barSwipeViewController = self->_barSwipeViewController;
  if (barSwipeViewController)
  {
    v4 = barSwipeViewController;
    [(SBHLibraryViewController *)self bs_addChildViewController:v4];
    v6 = [(UIViewController *)v4 view];

    v5 = [(SBHLibraryViewController *)self view];
    [v5 bounds];
    [v6 setFrame:?];

    [v6 setAutoresizingMask:18];
  }
}

- (void)setExternalBackgroundView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_externalBackgroundView);
  if (WeakRetained != obj)
  {
    v5 = [WeakRetained layer];
    [v5 removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];

    objc_storeWeak(&self->_externalBackgroundView, obj);
    v6 = [(SBHLibraryViewController *)self viewIfLoaded];
    v7 = [v6 window];

    if (v7)
    {
      v8 = [MEMORY[0x1E69D3FA0] matchMoveAnimationForPinningToView:v7];
      [obj addAnimation:v8 forKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }
  }
}

- (void)setAllowsBadging:(BOOL)a3
{
  if (self->_allowsBadging != a3)
  {
    self->_allowsBadging = a3;
    [(SBHLibraryCategoriesRootFolder *)self->_categoriesFolder setSupportsBadging:?];
  }
}

- (void)setBadgeBehaviorProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_badgeBehaviorProvider, obj);
    [(SBFolder *)self->_categoriesFolder setBadgeBehaviorProvider:obj];
  }
}

- (BOOL)presentPodWithCategory:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 additionalItemsIndicatorIcon];
    v12 = [v8 categoryIdentifier];
    v13 = [(SBHLibraryViewController *)self _iconLocationForCategoryIdentifier:v12];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke;
    aBlock[3] = &unk_1E808E850;
    aBlock[4] = self;
    v14 = v11;
    v33 = v14;
    v15 = v13;
    v34 = v15;
    v36 = v6;
    v16 = v10;
    v35 = v16;
    v17 = _Block_copy(aBlock);
    if (![(SBHLibraryViewController *)self isPresentingFolder])
    {
      v17[2](v17);
LABEL_20:

      goto LABEL_21;
    }

    v28 = v14;
    v18 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v19 = objc_opt_class();
    v20 = v18;
    v29 = v12;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = v21;

    v24 = [v23 folder];

    if ([v24 isLibraryCategoryFolder])
    {
      v25 = [v24 libraryCategoryIdentifier];
    }

    else
    {
      v25 = 0;
    }

    v12 = v29;
    if ([v25 isEqual:v29])
    {
      if (!v16)
      {
LABEL_19:

        v14 = v28;
        goto LABEL_20;
      }

      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBHLibraryPresentationErrorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
      (*(v16 + 2))(v16, v26);
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke_3;
      v30[3] = &unk_1E808A0B8;
      v31 = v17;
      [(SBHLibraryViewController *)self popNestedViewControllerAnimated:v6 withCompletion:v30];
      v26 = v31;
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBHLibraryPresentationErrorDomain" code:4 userInfo:MEMORY[0x1E695E0F8]];
    (v10)[2](v10, v22);
  }

LABEL_21:

  return v8 != 0;
}

void __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) podFolderViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke_2;
  v6[3] = &unk_1E808A0B8;
  v7 = *(a1 + 56);
  [v2 pushFolderIcon:v3 location:v4 animated:v5 completion:v6];
}

void __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 32);

      v3(v4, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBHLibraryPresentationErrorDomain" code:8 userInfo:MEMORY[0x1E695E0F8]];
      (*(v2 + 16))(v2, v5);
    }
  }
}

- (BOOL)presentPodWithCategoryIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 integerValue];
  v10 = [(SBFolderController *)self->_podFolderViewController folder];
  v11 = [v10 icons];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__SBHLibraryViewController_presentPodWithCategoryIdentifier_animated_completion___block_invoke;
  v15[3] = &__block_descriptor_40_e16_B16__0__SBIcon_8l;
  v15[4] = v9;
  v12 = [v11 bs_firstObjectPassingTest:v15];

  v13 = [v12 category];
  LOBYTE(v5) = [(SBHLibraryViewController *)self presentPodWithCategory:v13 animated:v5 completion:v8];

  return v5;
}

BOOL __81__SBHLibraryViewController_presentPodWithCategoryIdentifier_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCategoryIcon])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 category];
  v6 = [v5 categoryIdentifier];
  v7 = [v6 predictionCategoryID];

  v8 = v7 == *(a1 + 32);
  return v8;
}

- (void)forcedSearchTextFieldNoneditable:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHLibraryViewController *)self containerViewController];
  [v4 setForcedSearchTextFieldNoneditable:!v3];
}

- (id)effectiveIconImageAppearance
{
  v2 = [(SBHLibraryViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];

  return v3;
}

- (SBRootFolder)categoriesRootFolder
{
  v2 = [(SBHLibraryPodFolderController *)self->_podFolderViewController dataSource];
  v3 = [v2 categoriesFolder];

  return v3;
}

- (void)setOverrideLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_overrideLegibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideLegibilitySettings, a3);
    [(SBHLibraryViewController *)self _updateViewControllerLegibility];
    [(SBHLibraryViewController *)self _updateSearchControllerLegibility];
  }
}

- (SBHLegibilitySettings)effectiveLegibilitySettings
{
  overrideLegibilitySettings = self->_overrideLegibilitySettings;
  if (overrideLegibilitySettings)
  {
    v3 = overrideLegibilitySettings;
  }

  else
  {
    v3 = self->_legibilitySettings;
    if (!v3)
    {
      v5 = [(SBHLibraryViewController *)self traitCollection];
      v6 = [v5 userInterfaceStyle];

      if (v6 == 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      v3 = [SBHLegibilitySettings sharedInstanceForStyle:v7];
    }
  }

  return v3;
}

- (NSArray)podTopLevelDisplayedIcons
{
  v2 = [(SBHLibraryViewController *)self categoriesRootFolder];
  v3 = [v2 firstList];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SBHLibraryViewController_podTopLevelDisplayedIcons__block_invoke;
  v8[3] = &unk_1E808A678;
  v9 = v4;
  v5 = v4;
  [v3 enumerateIconsUsingBlock:v8];
  v6 = [v5 array];

  return v6;
}

uint64_t __53__SBHLibraryViewController_podTopLevelDisplayedIcons__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 isCategoryIcon];
  v4 = v15;
  if (v3)
  {
    v5 = [v15 category];
    v6 = [v5 compactPodFolder];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 firstList];
      v9 = [v8 iconsPassingTest:&__block_literal_global_91];
      [*(a1 + 32) addObjectsFromArray:v9];
    }

    v10 = [v5 compactPodAdditionalItemsFolder];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 firstList];
      v13 = [v12 icons];
      [*(a1 + 32) addObjectsFromArray:v13];
    }

    v4 = v15;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (SBHLibraryIconPrecachingInfo)iconPrecachingInfo
{
  v3 = objc_alloc_init(SBHLibraryIconPrecachingInfo);
  v4 = [(SBHLibraryViewController *)self categoriesRootFolder];
  v5 = [v4 firstList];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __46__SBHLibraryViewController_iconPrecachingInfo__block_invoke;
  v19 = &unk_1E808CBC0;
  v20 = v6;
  v21 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateIconsUsingBlock:&v16];
  v10 = [v9 array];
  [(SBHLibraryIconPrecachingInfo *)v3 setTopLevelIcons:v10];

  v11 = [v8 array];
  [(SBHLibraryIconPrecachingInfo *)v3 setAdditionalIcons:v11];

  v12 = [(SBHLibraryViewController *)self listLayoutProvider];
  v13 = [v12 layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPod"];
  v14 = [v12 layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPodAdditionalItems"];
  [v13 iconImageInfo];
  [(SBHLibraryIconPrecachingInfo *)v3 setTopLevelImageInfo:?];
  [(SBHLibraryIconPrecachingInfo *)v3 setAdditionalImageInfo:SBHIconListLayoutFolderIconGridCellIconImageInfo(v14)];

  return v3;
}

uint64_t __46__SBHLibraryViewController_iconPrecachingInfo__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 isCategoryIcon];
  v4 = v15;
  if (v3)
  {
    v5 = [v15 category];
    v6 = [v5 compactPodFolder];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 firstList];
      v9 = [v8 iconsPassingTest:&__block_literal_global_95];
      [*(a1 + 32) addObjectsFromArray:v9];
    }

    v10 = [v5 compactPodAdditionalItemsFolder];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 firstList];
      v13 = [v12 icons];
      [*(a1 + 40) addObjectsFromArray:v13];
    }

    v4 = v15;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self presentedIconLocations];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SBHLibraryViewController_presentedIconLocations__block_invoke;
  v6[3] = &unk_1E808E898;
  v4 = v3;
  v7 = v4;
  [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v6];

  return v4;
}

void __50__SBHLibraryViewController_presentedIconLocations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 presentedIconLocations];
  [v2 unionSet:v3];
}

- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__15;
    v21 = __Block_byref_object_dispose__15;
    v22 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SBHLibraryViewController_iconViewForIcon_location_options___block_invoke;
    v13[3] = &unk_1E808E8C0;
    v14 = v8;
    v15 = v10;
    v16 = &v17;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenWithOptions:a5 usingBlock:v13];
    v11 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  return v11;
}

uint64_t __61__SBHLibraryViewController_iconViewForIcon_location_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = SBIconViewQueryingIconViewForIconInLocation(a2, *(a1 + 32), *(a1 + 40), a3);
  if (v6)
  {
    *a4 = 1;
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__15;
    v19 = __Block_byref_object_dispose__15;
    v20 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__SBHLibraryViewController_firstIconViewForIcon_inLocations___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = v6;
    v13 = v8;
    v14 = &v15;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  return v9;
}

uint64_t __61__SBHLibraryViewController_firstIconViewForIcon_inLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:a1[4] inLocations:a1[5]];
  if (v6)
  {
    *a4 = 1;
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__15;
    v15 = __Block_byref_object_dispose__15;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__SBHLibraryViewController_firstIconViewForIcon___block_invoke;
    v8[3] = &unk_1E808E8E8;
    v9 = v4;
    v10 = &v11;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __49__SBHLibraryViewController_firstIconViewForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:*(a1 + 32)];
  if (v6)
  {
    *a4 = 1;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__15;
    v15 = __Block_byref_object_dispose__15;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SBHLibraryViewController_firstNonSuggestionsOrRecentsIconViewForIcon___block_invoke;
    v8[3] = &unk_1E808E8C0;
    v8[4] = self;
    v9 = v4;
    v10 = &v11;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __72__SBHLibraryViewController_firstNonSuggestionsOrRecentsIconViewForIcon___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a1[5];
  v8 = *(a1[4] + 1352);
  v12 = v6;
  if (v8 != v6)
  {
    v9 = [v6 firstIconViewForIcon:v7];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [v8 firstNonSuggestionsOrRecentsIconViewForIcon:v7];
  if (v9)
  {
LABEL_3:
    *a4 = 1;
  }

LABEL_4:
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__SBHLibraryViewController_isDisplayingIcon_inLocation_options___block_invoke;
    v13[3] = &unk_1E808E8C0;
    v14 = v8;
    v15 = v10;
    v16 = &v17;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenWithOptions:a5 usingBlock:v13];
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  return v11 & 1;
}

uint64_t __64__SBHLibraryViewController_isDisplayingIcon_inLocation_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = SBIconViewQueryingDisplayingIconInLocation(a2, *(a1 + 32), *(a1 + 40), a3);
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__SBHLibraryViewController_isDisplayingIcon_inLocations___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = v6;
    v13 = v8;
    v14 = &v15;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v11];
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  return v9 & 1;
}

uint64_t __57__SBHLibraryViewController_isDisplayingIcon_inLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isDisplayingIcon:a1[4] inLocations:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SBHLibraryViewController_isDisplayingIcon___block_invoke;
    v8[3] = &unk_1E808E8E8;
    v9 = v4;
    v10 = &v11;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __45__SBHLibraryViewController_isDisplayingIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isDisplayingIcon:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__SBHLibraryViewController_isDisplayingIconView___block_invoke;
    v8[3] = &unk_1E808E8E8;
    v9 = v4;
    v10 = &v11;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __49__SBHLibraryViewController_isDisplayingIconView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isDisplayingIconView:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBHLibraryViewController_isDisplayingIconView_inLocation___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = v6;
    v13 = v8;
    v14 = &v15;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v11];
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  return v9 & 1;
}

uint64_t __60__SBHLibraryViewController_isDisplayingIconView_inLocation___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isDisplayingIconView:a1[4] inLocation:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__SBHLibraryViewController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
    v9[3] = &unk_1E808E910;
    v10 = v6;
    v11 = v8;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v9];
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__SBHLibraryViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
    v6[3] = &unk_1E808D610;
    v7 = v4;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v6];
  }
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__15;
    v19 = __Block_byref_object_dispose__15;
    v20 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__SBHLibraryViewController_firstIconViewForIcon_excludingLocations___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = v6;
    v13 = v8;
    v14 = &v15;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenWithOptions:1 usingBlock:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __68__SBHLibraryViewController_firstIconViewForIcon_excludingLocations___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 firstIconViewForIcon:a1[4] excludingLocations:a1[5]];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
    v7 = v9;
    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__15;
  v21 = __Block_byref_object_dispose__15;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SBHLibraryViewController_firstIconViewForIcon_options___block_invoke;
  v14[3] = &unk_1E808E938;
  v16 = &v17;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SBHLibraryViewController_firstIconViewForIcon_options___block_invoke_2;
  v11[3] = &unk_1E808E960;
  v13 = &v17;
  v8 = v15;
  v12 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v14, v11);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

BOOL __57__SBHLibraryViewController_firstIconViewForIcon_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 firstIconViewForIcon:*(a1 + 32) options:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL __57__SBHLibraryViewController_firstIconViewForIcon_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstIconViewForIcon:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SBHLibraryViewController_isDisplayingIcon_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__SBHLibraryViewController_isDisplayingIcon_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v13, v10);
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SBHLibraryViewController_isDisplayingIconView_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SBHLibraryViewController_isDisplayingIconView_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, a4, a2, v13, v10);
  LOBYTE(a4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a4;
}

- (id)dequeueReusableIconViewOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v5 = [WeakRetained dequeueReusableIconViewOfClass:a3];

  return v5;
}

- (void)recycleIconView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  [WeakRetained recycleIconView:v4];
}

- (BOOL)isIconViewRecycled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v6 = [WeakRetained isIconViewRecycled:v4];

  return v6;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 setDelegate:self];
  [v7 setPrefersFlatImageLayers:{-[SBHLibraryViewController prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  if (([v6 isCategoryIcon] & 1) == 0 && (objc_msgSend(v6, "isFolderIcon") & 1) == 0 && (objc_msgSend(v6, "isAdditionalItemsIndicatorIcon") & 1) == 0)
  {
    [v7 setIconContentScalingEnabled:1];
  }
}

- (void)libraryPodFolderController:(id)a3 willLayoutDisplayedCategories:(unint64_t)a4
{
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = [(SBFolder *)self->_categoriesFolder listGridSize];
    v9 = self->_containerViewController;
    v11 = v9;
    if (a4 <= 2 * v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8 + 2 * v8 < a4;
    }

    [(SBHLibrarySearchController *)v9 setSearchBarAppearance:v10];
  }
}

- (void)libraryPodFolderControllerRequestsDismissal:(id)a3
{
  v7 = a3;
  if (self->_podFolderViewController == v7)
  {
    v6 = [(SBHLibraryViewController *)self behaviorDelegate];
    [v6 libraryViewControllerRequestsDismissal:self];
  }

  else
  {
    v4 = [(SBNestingViewController *)self nestedViewControllers];
    v5 = [v4 containsObject:v7];

    if (v5)
    {
      [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
      [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:1 clearSearchResults:0 resetSearchBarTransformAndAlpha:1];
    }
  }
}

- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(SBHLibraryViewController *)self traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = [v11 isEqualToString:*MEMORY[0x1E69DDC20]];

  if (v12)
  {
    v13 = [v8 traitOverrides];
    [v13 setPreferredContentSizeCategory:*MEMORY[0x1E69DDC28]];
  }

  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation]== 1)
    {
      objc_opt_class();
      v15 = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
      v16 = SBFSafeCast();

      objc_opt_class();
      v17 = SBFSafeCast();
      v18 = v17;
      if (v16)
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19 || ([v16 folder], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "folder"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, !v22))
      {
        if ([(BSEventQueue *)self->_transitionEventQueue isEmpty])
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __77__SBHLibraryViewController_pushNestedViewController_animated_withCompletion___block_invoke;
          v30[3] = &unk_1E8088F18;
          v30[4] = self;
          v31 = v8;
          [(SBHLibraryViewController *)self _enqueueTransitionName:@"Request to open a folder while another folder is still closing" withHandler:v30];
        }

        [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator completeImmediately];
        if (v9)
        {
          v9[2](v9, 0);
        }
      }

      else
      {
        if (v9)
        {
          currentExpandCompletions = self->_currentExpandCompletions;
          if (!currentExpandCompletions)
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v25 = self->_currentExpandCompletions;
            self->_currentExpandCompletions = v24;

            currentExpandCompletions = self->_currentExpandCompletions;
          }

          v26 = [v9 copy];
          v27 = _Block_copy(v26);
          [(NSMutableArray *)currentExpandCompletions addObject:v27];
        }

        [(SBHLibraryViewController *)self _notifyObserversWillPresentFolderController:v16];
        [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator reverse];
        if ([(SBHLibraryViewController *)self isPresentingSearch])
        {
          [(SBHLibraryViewController *)self dismissSearch];
        }
      }
    }

    else if (v9)
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v28 = [(SBHLibraryViewController *)self _wrappedCompletionBlockForNestedTransitionWithCompletion:v9];
    v29.receiver = self;
    v29.super_class = SBHLibraryViewController;
    [(SBNestingViewController *)&v29 pushNestedViewController:v8 animated:v6 withCompletion:v28];
  }
}

void *__77__SBHLibraryViewController_pushNestedViewController_animated_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[163])
  {
    return [result pushNestedViewController:*(a1 + 40) animated:1 withCompletion:0];
  }

  return result;
}

- (void)popNestedViewControllerAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation])
    {
      if (v6)
      {
        v6[2](v6, 0);
      }
    }

    else
    {
      if (v6)
      {
        currentCollapseCompletions = self->_currentCollapseCompletions;
        if (!currentCollapseCompletions)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v11 = self->_currentCollapseCompletions;
          self->_currentCollapseCompletions = v10;

          currentCollapseCompletions = self->_currentCollapseCompletions;
        }

        v12 = [v6 copy];
        v13 = _Block_copy(v12);
        [(NSMutableArray *)currentCollapseCompletions addObject:v13];
      }

      objc_opt_class();
      v14 = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
      v15 = SBFSafeCast();

      [(SBHLibraryViewController *)self _notifyObserversWillDismissFolderController:v15];
      [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator reverse];
    }
  }

  else
  {
    v8 = [(SBHLibraryViewController *)self _wrappedCompletionBlockForNestedTransitionWithCompletion:v6];
    v16.receiver = self;
    v16.super_class = SBHLibraryViewController;
    [(SBNestingViewController *)&v16 popNestedViewControllerAnimated:v4 withCompletion:v8];
  }
}

- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = SBHLibraryViewController;
  v11 = [(SBNestingViewController *)&v35 nestingViewController:a3 animationControllerForOperation:a4 onViewController:v10 animated:v6];
  if (v11)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v34 = self->_podFolderViewController;
  v12 = v10;
  v33 = [v12 folderDelegate];
  v13 = [v12 folder];
  v14 = [v13 icon];

  v15 = [(SBHLibrarySearchController *)self->_containerViewController searchBar];
  if (v14 && ([v14 folder], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "icons"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v16, v18))
  {
    v19 = 0;
    if (!v6)
    {
LABEL_6:
      v20 = SBHLibraryPodImmediateAnimator;
      goto LABEL_13;
    }
  }

  else
  {
    v21 = SBLogLibrary();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(SBHLibraryViewController *)v14 nestingViewController:v21 animationControllerForOperation:v22 onViewController:v23 animated:v24, v25, v26, v27];
    }

    v19 = 1;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if ((v19 | UIAccessibilityIsReduceMotionEnabled()) != 1)
  {
    v28 = [[SBHLibraryPodIconZoomAnimator alloc] initWithAnimationContainer:v34 innerFolderController:v12 folderIcon:v14 searchBar:v15 libraryViewController:self];
    goto LABEL_15;
  }

  v20 = SBHLibraryPodFadeAnimator;
LABEL_13:
  v28 = [[v20 alloc] initWithAnimationContainer:v34 innerFolderController:v12 searchBar:v15];
LABEL_15:
  v29 = v28;
  if (v28)
  {
    v11 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v28 childViewController:v12 operation:a4 != 1];
    [(SBHomeScreenIconTransitionAnimator *)v11 setInitialDelay:0.0];
    v30 = [(SBHLibraryViewController *)self homeScreenIconTransitionAnimatorDelegate];
    [(SBHomeScreenIconTransitionAnimator *)v11 setDelegate:v30];

    v31 = v33;
    if (objc_opt_respondsToSelector())
    {
      [v33 folderController:self willUseIconTransitionAnimator:v11 forOperation:a4 onViewController:v12 animated:v6];
    }
  }

  else
  {
    v11 = 0;
    v31 = v33;
  }

LABEL_20:

  return v11;
}

- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6
{
  v10 = a5;
  v11 = a6;
  v24.receiver = self;
  v24.super_class = SBHLibraryViewController;
  v12 = a3;
  [(SBNestingViewController *)&v24 nestingViewController:v12 willPerformOperation:a4 onViewController:v10 withTransitionCoordinator:v11];
  [(SBHLibraryViewController *)self _setupReducedTransparencyBackgroundViewIfNeeded];

  if (v12 == self)
  {
    v13 = [(BSEventQueue *)self->_transitionEventQueue acquireLockForReason:@"performingTransitionOperation"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
    v22[3] = &unk_1E808E988;
    v22[4] = self;
    v23 = v13;
    v14 = v13;
    [v11 animateAlongsideTransition:0 completion:v22];
  }

  if ((a4 - 1) <= 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v10;
      [v15 setEditing:-[SBHLibraryViewController isEditing](self animated:{"isEditing"), 1}];
      if (a4 == 1)
      {
        [(SBHLibraryViewController *)self _notifyObserversWillPresentFolderController:v15];
        if ([(SBHLibraryViewController *)self isPresentingSearch])
        {
          [(SBHLibraryViewController *)self dismissSearch];
        }
      }

      else
      {
        [(SBHLibraryViewController *)self _notifyObserversWillDismissFolderController:v15];
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3;
      v19[3] = &unk_1E808E9B0;
      v19[4] = self;
      v21 = a4;
      v20 = v15;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4;
      v16[3] = &unk_1E808E9B0;
      v17 = v20;
      v18 = a4;
      v16[4] = self;
      [v11 animateAlongsideTransition:v19 completion:v16];
    }
  }
}

void __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentTransitionAnimator:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2;
  v3[3] = &unk_1E8088F18;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(*(a1 + 32) + 1304);
  if (v3)
  {
    v4 = [v3 currentOperation];
  }

  else
  {
    v4 = *(a1 + 48) != 1;
  }

  if (v4 == 1)
  {
    v10 = 0.0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    v5 = SBFSafeCast();
    if ([*(a1 + 32) _shouldUseReduceTransparencyBackgroundView])
    {
      v6 = [v5 contentView];
      v7 = objc_opt_class();
      v8 = v6;
      if (v7)
      {
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
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

      v11 = v9;

      [v11 setHidesFeatherBlur:UIAccessibilityIsReduceTransparencyEnabled()];
    }

    [v5 setPodFolderControllerDelegate:*(a1 + 32)];
    [v5 setLibraryCategoryMap:*(*(a1 + 32) + 1232)];

    v10 = 1.0;
  }

  [*(*(a1 + 32) + 1152) setAlpha:v10];
LABEL_16:
}

void __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 == 2)
  {
    v5 = v3;
    [*(a1 + 32) _notifyObserversDidDismissFolderController:*(a1 + 40)];
    [*(a1 + 32) _teardownReducedTransparencyBackgroundView];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [*(a1 + 32) _flushPendingLibraryCategoryMapUpdateIfNeeded];
    [*(a1 + 32) _updateReduceTransparency];
  }

  v3 = v5;
LABEL_6:
}

- (id)iconView:(id)a3 labelImageWithParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [v8 iconView:v7 labelImageWithParameters:v6];

  return v9;
}

- (id)iconView:(id)a3 labelContentWithParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [v8 iconView:v7 labelContentWithParameters:v6];

  return v9;
}

- (BOOL)iconShouldAllowTap:(id)a3
{
  v3 = a3;
  v4 = [v3 isEditing];
  v5 = [v3 icon];

  if (v4)
  {
    LOBYTE(v6) = [v5 isAdditionalItemsIndicatorIcon];
  }

  else
  {
    v6 = [v5 isCategoryIcon] ^ 1;
  }

  return v6;
}

- (void)iconTapped:(id)a3 modifierFlags:(int64_t)a4
{
  v9 = a3;
  v6 = [(SBHLibraryViewController *)self iconViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconTapped:v9 modifierFlags:a4];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 iconTapped:v9];
  }

  [v9 setHighlighted:0];
  v7 = [v9 icon];
  v8 = [v9 location];
  [(SBHLibraryViewController *)self _notifyObserversOfAppLaunchOfIcon:v7 fromLocation:v8];
}

- (id)_customImageViewControllerForCategoryPodIconView:(id)a3 usingInternalCache:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 icon];
  if ([v6 isCategoryIcon])
  {
    v7 = [v6 category];
    v8 = [v7 categoryIdentifier];
    if (v4)
    {
      [(SBHLibraryViewController *)self _iconViewControllerForCategoryIdentifier:v8];
    }

    else
    {
      [(SBHLibraryViewController *)self _createIconViewControllerForCategoryIdentifier:v8];
    }
    v9 = ;
    v10 = [(SBHLibraryViewController *)self _iconLocationForCategoryIdentifier:v8];
    [v9 updateCategory:v7 location:v10];
    v11 = [v9 iconListView];
    if ([(SBHLibraryViewController *)self shouldHideIcons])
    {
      [v11 hideAllIcons];
    }

    else
    {
      [v11 showAllIcons];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_iconViewControllerForCategoryIdentifier:(id)a3
{
  v4 = a3;
  iconViewControllerForCategoryIdentifier = self->_iconViewControllerForCategoryIdentifier;
  if (!iconViewControllerForCategoryIdentifier)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v7 = self->_iconViewControllerForCategoryIdentifier;
    self->_iconViewControllerForCategoryIdentifier = v6;

    iconViewControllerForCategoryIdentifier = self->_iconViewControllerForCategoryIdentifier;
  }

  v8 = [(NSMapTable *)iconViewControllerForCategoryIdentifier objectForKey:v4];
  if (!v8)
  {
    v8 = [(SBHLibraryViewController *)self _createIconViewControllerForCategoryIdentifier:v4];
    [(NSMapTable *)self->_iconViewControllerForCategoryIdentifier setObject:v8 forKey:v4];
  }

  return v8;
}

- (id)_createIconViewControllerForCategoryIdentifier:(id)a3
{
  v4 = [(SBHLibraryViewController *)self listLayoutProvider];
  v5 = [(SBHLibraryViewController *)self iconImageCache];
  v6 = [(SBHLibraryViewController *)self folderIconImageCache];
  v7 = objc_alloc_init(SBHLibraryCategoryIconViewController);
  [(SBHLibraryCategoryIconViewController *)v7 setIconViewProvider:self];
  [(SBHLibraryCategoryIconViewController *)v7 setListLayoutProvider:v4];
  [(SBHLibraryCategoryIconViewController *)v7 setIconImageCache:v5];
  [(SBHLibraryCategoryIconViewController *)v7 setFolderIconImageCache:v6];

  return v7;
}

- (void)_precacheIconViewControllersForCategories:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SBHLibraryViewController *)self _iconViewControllerForCategoryIdentifier:*(*(&v23 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E695DFA8];
  v11 = [(NSMapTable *)self->_iconViewControllerForCategoryIdentifier keyEnumerator];
  v12 = [v11 allObjects];
  v13 = [v10 setWithArray:v12];

  [v13 minusSet:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMapTable *)self->_iconViewControllerForCategoryIdentifier removeObjectForKey:*(*(&v19 + 1) + 8 * v18++), v19];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (id)_iconLocationForCategoryIdentifier:(id)a3
{
  v3 = a3;
  v4 = @"SBIconLocationAppLibraryCategoryPod";
  if ([v3 predictionCategoryID] == 3)
  {
    v5 = SBIconLocationAppLibraryCategoryPodSuggestions;
  }

  else
  {
    if ([v3 predictionCategoryID] != 4)
    {
      goto LABEL_6;
    }

    v5 = SBIconLocationAppLibraryCategoryPodRecents;
  }

  v6 = *v5;

  v4 = v6;
LABEL_6:

  return v4;
}

- (void)iconViewWasRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  [v5 iconViewWasRecycled:v4];
}

- (void)iconViewWasDiscarded:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  [v5 iconViewWasDiscarded:v4];
}

- (id)draggingDelegateForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if (([v5 isCategoryIcon] & 1) != 0 || (objc_msgSend(v5, "isFolderIcon") & 1) != 0 || objc_msgSend(v5, "isAdditionalItemsIndicatorIcon"))
  {
    v6 = self;
  }

  else
  {
    v8 = [(SBHLibraryViewController *)self iconViewDelegate];
    v6 = v8;
    if (objc_opt_respondsToSelector())
    {
      v6 = [(SBHLibraryViewController *)v8 draggingDelegateForIconView:v4];
    }
  }

  return v6;
}

- (id)contextMenuDelegateForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isCategoryIcon])
  {
  }

  else
  {
    v6 = [v4 icon];
    v7 = [v6 isFolderIcon];

    if (!v7)
    {
      v9 = [(SBHLibraryViewController *)self iconViewDelegate];
      if (objc_opt_respondsToSelector())
      {
        v10 = [v9 contextMenuDelegateForIconView:v4];
      }

      else
      {
        v10 = v9;
      }

      v8 = v10;

      goto LABEL_9;
    }
  }

  v8 = self;
LABEL_9:

  return v8;
}

- (BOOL)iconShouldAllowCloseBoxTap:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [v5 iconShouldAllowCloseBoxTap:v4];

  return v6;
}

- (void)iconCloseBoxTapped:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  [v5 iconCloseBoxTapped:v4];
}

- (BOOL)iconViewDisplaysCloseBox:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [v5 iconViewDisplaysCloseBox:v4];

  return v6;
}

- (BOOL)iconViewDisplaysAccessories:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isAdditionalItemsIndicatorIcon] && !UIAccessibilityIsReduceMotionEnabled())
  {
    if ([(NSMapTable *)self->_presentedFolderControllers count])
    {
    }

    else
    {
      v9 = [(NSMapTable *)self->_dismissingFolderControllers count];

      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v6 = [v4 icon];
    v10 = [v6 category];
    v11 = [v10 categoryIdentifier];

    v12 = [(NSMapTable *)self->_presentedFolderControllers keyEnumerator];
    v13 = [v12 allObjects];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke;
    v27[3] = &unk_1E808E9D8;
    v14 = v11;
    v28 = v14;
    v15 = [v13 bs_filter:v27];
    v16 = [v15 count];

    if (v16)
    {

      v7 = 0;
      goto LABEL_5;
    }

    v17 = [(NSMapTable *)self->_dismissingFolderControllers keyEnumerator];
    v18 = [v17 allObjects];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke_2;
    v25 = &unk_1E808E9D8;
    v26 = v14;
    v19 = v14;
    v20 = [v18 bs_filter:&v22];
    v21 = [v20 count];

    if (v21)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_4:
  v6 = [(SBHLibraryViewController *)self iconViewDelegate];
  v7 = [v6 iconViewDisplaysAccessories:v4];
LABEL_5:

LABEL_6:
  return v7;
}

uint64_t __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 folder];

  v5 = SBFSafeCast();

  v6 = [v5 libraryCategoryIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  return v7;
}

uint64_t __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 folder];

  v5 = SBFSafeCast();

  v6 = [v5 libraryCategoryIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  return v7;
}

- (BOOL)iconViewCanBecomeFocused:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [v5 isCategoryIcon];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SBHLibraryViewController *)self iconViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v8 iconViewCanBecomeFocused:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_additionalItemsIndicatorIconViewForFolderController:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 folder];
  v14 = SBFSafeCast();

  v6 = [v14 libraryCategoryIdentifier];
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__15;
    v26 = __Block_byref_object_dispose__15;
    v27 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(SBFolderController *)self->_podFolderViewController iconListViews];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __81__SBHLibraryViewController__additionalItemsIndicatorIconViewForFolderController___block_invoke;
          v15[3] = &unk_1E808AE98;
          v16 = v6;
          v17 = &v22;
          [v11 enumerateIconViewsUsingBlock:v15];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v8);
    }

    v12 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __81__SBHLibraryViewController__additionalItemsIndicatorIconViewForFolderController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = [a2 customIconImageViewController];
  v6 = [v15 iconListView];
  v7 = [v6 icons];
  v8 = [v7 bs_firstObjectOfClass:objc_opt_class()];

  v9 = [v8 category];
  v10 = [v9 categoryIdentifier];
  v11 = [v10 isEqual:*(a1 + 32)];

  if (v11)
  {
    v12 = [v6 iconViewForIcon:v8];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

- (id)_additionalItemsIcons
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SBFolderController *)self->_podFolderViewController iconListViews];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __49__SBHLibraryViewController__additionalItemsIcons__block_invoke;
        v11[3] = &unk_1E808AEC0;
        v12 = v3;
        [v9 enumerateIconViewsUsingBlock:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void __49__SBHLibraryViewController__additionalItemsIcons__block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 customIconImageViewController];
  v3 = [v9 iconListView];
  v4 = [v3 icons];
  v5 = [v4 bs_firstObjectOfClass:objc_opt_class()];

  v6 = [v5 folder];
  v7 = [v6 firstList];
  v8 = [v7 icons];
  if (v8)
  {
    [*(a1 + 32) addObjectsFromArray:v8];
  }
}

- (int64_t)closeBoxTypeForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [v5 closeBoxTypeForIconView:v4];

  return v6;
}

- (BOOL)iconView:(id)a3 editingModeGestureRecognizerDidFire:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [v8 iconView:v7 editingModeGestureRecognizerDidFire:v6];

  return v9;
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    v5 = [(SBHLibraryViewController *)self folderController];
    [v5 setContentVisibility:a3];

    v6 = [(SBHLibraryViewController *)self containerViewController];
    [v6 setContentVisibility:a3];

    [(SBHLibraryViewController *)self updateIconVisibility];
    if (a3 == 2 && [(SBHLibraryViewController *)self bs_isAppearingOrAppeared])
    {
      [(SBHLibraryViewController *)self _startLibraryViewControllerDismissalTimer:@"App Library is hidden!"];

      [(SBHLibraryViewController *)self _dismissExpandedPods:0 completion:0];
    }

    else
    {

      [(SBHLibraryViewController *)self _invalidateLibraryViewControllerDismissalTimer];
    }
  }
}

- (void)updateIconVisibility
{
  v3 = [(SBHLibraryViewController *)self shouldHideIcons];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBHLibraryViewController_updateIconVisibility__block_invoke;
  v4[3] = &__block_descriptor_33_e28_v24__0__SBIconListView_8_B16l;
  v5 = v3;
  [(SBHLibraryViewController *)self enumeratePodIconListViewsUsingBlock:v4];
}

uint64_t __48__SBHLibraryViewController_updateIconVisibility__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 hideAllIcons];
  }

  else
  {
    return [a2 showAllIcons];
  }
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3
{
  if ([(SBHLibraryViewController *)self isPresentingSearch])
  {

    [(SBHLibraryViewController *)self dismissSearch];
  }
}

- (void)overlayController:(id)a3 visibilityDidChange:(BOOL)a4
{
  if (!a4)
  {
    [(BSInvalidatable *)self->_libraryPrewarmAssertion invalidate];
    libraryPrewarmAssertion = self->_libraryPrewarmAssertion;
    self->_libraryPrewarmAssertion = 0;
  }
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v9 = a3;
  if (a5 >= 1.0 && !a6 && !self->_libraryPrewarmAssertion)
  {
    v12 = v9;
    v10 = [(SBHLibraryViewController *)self acquireLibrarySearchPrewarmAssertionForReason:@"Library View Controller is presented"];
    libraryPrewarmAssertion = self->_libraryPrewarmAssertion;
    self->_libraryPrewarmAssertion = v10;

    v9 = v12;
  }
}

- (void)_enqueueTransitionName:(id)a3 withHandler:(id)a4
{
  v6 = [MEMORY[0x1E698E6B0] eventWithName:a3 handler:a4];
  v5 = [(SBHLibraryViewController *)self transitionEventQueue];
  [v5 executeOrInsertEvent:v6 atPosition:1];
}

- (id)_wrappedCompletionBlockForNestedTransitionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SBHLibraryViewController__wrappedCompletionBlockForNestedTransitionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E808EA20;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __85__SBHLibraryViewController__wrappedCompletionBlockForNestedTransitionWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[164];
    v7 = WeakRetained[165];
    v8 = WeakRetained[164];
    WeakRetained[164] = 0;

    v9 = WeakRetained[165];
    WeakRetained[165] = 0;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v51 + 1) + 8 * i) + 16))();
        }

        v12 = [v10 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v12);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v48;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v47 + 1) + 8 * j) + 16))();
        }

        v17 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v17);
    }

    v38 = v10;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = [WeakRetained[141] keyEnumerator];
    v21 = [v20 allObjects];

    v22 = [v21 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v43 + 1) + 8 * k);
          v27 = [WeakRetained nestedViewControllers];
          v28 = [v27 containsObject:v26];

          if ((v28 & 1) == 0)
          {
            v29 = [WeakRetained[141] objectForKey:v26];
            [WeakRetained _notifyObserversWillDismissFolderController:v26];
            [WeakRetained _notifyObserversDidDismissFolderController:v26];
            [v29 _updateAccessoryViewAnimated:1];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v23);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = [WeakRetained[142] keyEnumerator];
    v31 = [v30 allObjects];

    v32 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v39 + 1) + 8 * m);
          v37 = [WeakRetained[142] objectForKey:v36];
          [WeakRetained _notifyObserversDidDismissFolderController:v36];
          [v37 _updateAccessoryViewAnimated:1];
        }

        v33 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v33);
    }
  }
}

- (void)enumerateViewControllersUsingBlock:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (![(SBHLibrarySearchController *)self->_containerViewController isActive]|| (iconTableViewController = self->_iconTableViewController) == 0 || (v4[2](v4, iconTableViewController, &v7), (v7 & 1) == 0))
  {
    if (![(SBHLibrarySearchController *)self->_containerViewController isActive])
    {
      podFolderViewController = self->_podFolderViewController;
      if (podFolderViewController)
      {
        v4[2](v4, podFolderViewController, &v7);
      }
    }
  }
}

- (void)_enumerateAllViewControllersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = 0;
  podFolderViewController = self->_podFolderViewController;
  if (!podFolderViewController || ((*(v4 + 2))(v4, podFolderViewController, &v8), (v8 & 1) == 0))
  {
    iconTableViewController = self->_iconTableViewController;
    if (iconTableViewController)
    {
      (v5)[2](v5, iconTableViewController, &v8);
    }
  }
}

- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if ((a3 & 0x40) == 0)
  {
    if ((v11 = 0, !self->_iconTableViewController) || (v7 = [(SBHLibrarySearchController *)self->_containerViewController isActive], (a3 & 3) != 0) && !v7 || (v6[2](v6, self->_iconTableViewController, a3, &v11), (a3 & 3) == 0) && (v11 & 1) == 0)
    {
      v8 = [(SBNestingViewController *)self nestedViewController];
      v9 = v8;
      if (!v8 || ([(SBHLibraryPodFolderController *)v8 bs_isDisappearingOrDisappeared]& 1) != 0 || (v6[2](v6, v9, a3, &v11), (a3 & 3) == 0) && (v11 & 1) == 0)
      {
        podFolderViewController = self->_podFolderViewController;
        if (podFolderViewController)
        {
          v6[2](v6, podFolderViewController, a3, &v11);
        }
      }
    }
  }
}

- (void)enumeratePodIconListViewsUsingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBFolderController *)self->_podFolderViewController iconListViews];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__SBHLibraryViewController_enumeratePodIconListViewsUsingBlock___block_invoke;
      v10[3] = &unk_1E808A808;
      v11 = v4;
      v12 = &v17;
      [v9 enumerateIconViewsUsingBlock:v10];
      LOBYTE(v9) = *(v18 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

void __64__SBHLibraryViewController_enumeratePodIconListViewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  v4 = [v3 iconListView];
  (*(*(a1 + 32) + 16))();
}

- (void)_updateViewControllerLegibility
{
  v3 = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  [(SBFolderController *)self->_podFolderViewController setLegibilitySettings:v3];
}

- (void)_updateSearchControllerLegibility
{
  v3 = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  [(SBHLibrarySearchController *)self->_containerViewController setLegibilitySettings:v3];
}

- (void)_setupIconTableViewController:(BOOL)a3
{
  v92 = a3;
  v100[4] = *MEMORY[0x1E69E9840];
  v4 = [(SBHLibraryViewController *)self iconViewProvider];
  v5 = [(SBHLibraryViewController *)self iconModel];
  v6 = [v5 rootFolder];

  v7 = self->_listLayoutProvider;
  v8 = self->_iconImageCache;
  v9 = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  v10 = [(SBHLibraryViewController *)self iconModel];
  v11 = [(SBHLibraryViewController *)self folderIconImageCache];
  v12 = self->_categoryMapProvider;
  if (v8)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v93 = v11;
    v14 = [[_SBHLibraryCollectionOfModelThings alloc] initWithIconViewProvider:v4 iconModel:v10 rootFolder:v6 listLayoutProvider:v7 iconImageCache:v8 folderIconImageCache:v11 categoryMapProvider:v12];
    v99 = 0;
    v15 = [(_SBHLibraryCollectionOfModelThings *)v14 examineModelValidityWithError:&v99];
    v91 = v99;
    if (v15)
    {
      if ([(_SBHLibraryCollectionOfModelThings *)self->_model isEqual:v14])
      {
LABEL_31:

        v11 = v93;
        goto LABEL_32;
      }

      v85 = v6;
      objc_storeStrong(&self->_model, v14);
      iconViewControllerForCategoryIdentifier = self->_iconViewControllerForCategoryIdentifier;
      self->_iconViewControllerForCategoryIdentifier = 0;

      categoriesFolder = self->_categoriesFolder;
      if (categoriesFolder)
      {
        [(SBRootFolder *)categoriesFolder setDelegate:0];
        v18 = self->_categoriesFolder;
        self->_categoriesFolder = 0;
      }

      v89 = v12;
      v90 = v14;
      [(SBHLibraryViewController *)self _dismissExpandedPods:0 completion:0];
      iconTableViewController = self->_iconTableViewController;
      if (iconTableViewController)
      {
        [(SBHIconLibraryTableViewController *)iconTableViewController setObserver:0];
        v20 = self->_iconTableViewController;
        self->_iconTableViewController = 0;
      }

      v82 = v10;
      v21 = objc_alloc_init(SBHIconLibraryTableViewController);
      v22 = self->_iconTableViewController;
      self->_iconTableViewController = v21;

      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setObserver:self];
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setListLayoutProvider:v7];
      v86 = v4;
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setIconViewProvider:v4];
      v81 = [(SBHLibraryViewController *)self iconLocation];
      v88 = [(SBIconListLayoutProvider *)v7 layoutForIconLocation:?];
      v80 = SBHIconListLayoutIconGridSizeClassSizes(v88, 1);
      v23 = [(SBFolder *)[SBHLibraryCategoriesRootFolder alloc] initWithDisplayName:@"Categories Folder" maxListCount:1 listGridSize:4294901764 iconGridSizeClassSizes:v80];
      v24 = self->_categoriesFolder;
      self->_categoriesFolder = v23;

      [(SBRootFolder *)self->_categoriesFolder setModel:self->_iconModel];
      v25 = [(SBFolder *)self->_categoriesFolder addEmptyList];
      v26 = self->_categoriesFolder;
      v27 = [(SBHIconModel *)self->_iconModel rootFolder];
      v28 = [v27 delegate];
      [(SBRootFolder *)v26 setDelegate:v28];

      [(SBHLibraryCategoriesRootFolder *)self->_categoriesFolder setSupportsBadging:[(SBHLibraryViewController *)self allowsBadging]];
      v29 = self->_categoriesFolder;
      v30 = [(SBHLibraryViewController *)self badgeBehaviorProvider];
      [(SBFolder *)v29 setBadgeBehaviorProvider:v30];

      v31 = objc_alloc_init(SBHLibraryPodFolderControllerConfiguration);
      [(SBFolderControllerConfiguration *)v31 setIconViewProvider:self];
      [(SBFolderControllerConfiguration *)v31 setListLayoutProvider:v7];
      [(SBFolderControllerConfiguration *)v31 setIconImageCache:v8];
      [(SBFolderControllerConfiguration *)v31 setFolderIconImageCache:v93];
      [(SBFolderControllerConfiguration *)v31 setLegibilitySettings:v9];
      [(SBHLibraryPodFolderControllerConfiguration *)v31 setCategoryMapProvider:v89];
      [(SBHLibraryPodFolderControllerConfiguration *)v31 setCategoriesFolder:self->_categoriesFolder];
      [(SBFolderControllerConfiguration *)v31 setFolder:self->_categoriesFolder];
      v32 = [MEMORY[0x1E69DC938] currentDevice];
      v33 = [v32 userInterfaceIdiom];

      if ((v33 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v34 = 30;
      }

      else
      {
        v34 = 2;
      }

      [(SBFolderControllerConfiguration *)v31 setAllowedOrientations:v34];
      [(SBFolderControllerConfiguration *)v31 setVertical:1];
      podFolderViewController = self->_podFolderViewController;
      if (podFolderViewController)
      {
        [(SBHLibraryPodFolderController *)podFolderViewController setPodFolderControllerDelegate:0];
        [(SBFolderController *)self->_podFolderViewController setFolder:0];
        v36 = self->_podFolderViewController;
        self->_podFolderViewController = 0;
      }

      v83 = v9;
      v84 = v7;
      v79 = v31;
      v37 = [[SBHLibraryPodFolderController alloc] initWithConfiguration:v31];
      v38 = self->_podFolderViewController;
      self->_podFolderViewController = v37;

      v39 = [(SBHLibraryPodFolderController *)self->_podFolderViewController contentScrollView];
      [v39 setShowsVerticalScrollIndicator:0];

      [(SBHLibraryPodFolderController *)self->_podFolderViewController setPodFolderControllerDelegate:self];
      [(SBFolderController *)self->_podFolderViewController setFolderDelegate:self];
      [(SBHLibraryPodFolderController *)self->_podFolderViewController setEditing:[(SBHLibraryViewController *)self isEditing]];
      [(SBFolderController *)self->_podFolderViewController setContentVisibility:[(SBHLibraryViewController *)self contentVisibility]];
      containerViewController = self->_containerViewController;
      if (containerViewController)
      {
        [(SBHLibrarySearchController *)containerViewController setDelegate:self];
        [(SBHLibrarySearchController *)self->_containerViewController setSearchResultsUpdater:0];
        [MEMORY[0x1E696ACD8] deactivateConstraints:self->_containerViewControllerConstraints];
        v41 = [(SBHLibrarySearchController *)self->_containerViewController view];
        [v41 removeFromSuperview];

        [(SBHLibraryViewController *)self bs_removeChildViewController:self->_containerViewController];
        v42 = self->_containerViewController;
        self->_containerViewController = 0;
      }

      v77 = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
      v43 = [v88 appLibraryVisualConfiguration];
      v44 = [v43 usesInsetPlatterSearchAppearance];

      v45 = [[SBHLibrarySearchController alloc] initWithSearchResultsController:self->_iconTableViewController contentViewController:self->_podFolderViewController usingPlatterAppearance:v44];
      v46 = self->_containerViewController;
      self->_containerViewController = v45;

      [(SBHLibrarySearchController *)self->_containerViewController setDelegate:self];
      v47 = self->_containerViewController;
      v48 = [(SBHLibraryViewController *)self iconLocation];
      [(SBHLibrarySearchController *)v47 setContainingIconLocation:v48];

      [(SBHLibrarySearchController *)self->_containerViewController setSearchResultsUpdater:self->_iconTableViewController];
      [(SBHLibraryViewController *)self addChildViewController:self->_containerViewController];
      v49 = [(SBHLibraryViewController *)self view];
      v50 = [(SBHLibrarySearchController *)self->_containerViewController view];
      [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v49 addSubview:v50];
      v76 = [v50 leadingAnchor];
      v75 = [v49 leadingAnchor];
      v74 = [v76 constraintEqualToAnchor:v75];
      v100[0] = v74;
      v73 = [v50 trailingAnchor];
      v72 = [v49 trailingAnchor];
      v51 = [v73 constraintEqualToAnchor:v72];
      v100[1] = v51;
      v52 = [v50 topAnchor];
      v53 = [v49 topAnchor];
      v54 = [v52 constraintEqualToAnchor:v53];
      v100[2] = v54;
      v87 = v50;
      v55 = [v50 bottomAnchor];
      v78 = v49;
      v56 = [v49 bottomAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      v100[3] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      containerViewControllerConstraints = self->_containerViewControllerConstraints;
      self->_containerViewControllerConstraints = v58;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_containerViewControllerConstraints];
      [(SBHLibrarySearchController *)self->_containerViewController didMoveToParentViewController:self];
      if (v77)
      {
        [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:1 animated:v92];
      }

      v7 = v84;
      [(SBHLibrarySearchController *)self->_containerViewController setListLayoutProvider:v84];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __58__SBHLibraryViewController__setupIconTableViewController___block_invoke;
      v94[3] = &unk_1E808EA48;
      v95 = v84;
      v96 = v8;
      v97 = v93;
      v6 = v85;
      v98 = v85;
      [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v94];
      v9 = v83;
      if (v83)
      {
        [(SBHLibraryViewController *)self _updateViewControllerLegibility];
        [(SBHLibraryViewController *)self _updateSearchControllerLegibility];
      }

      v60 = [SBHLegibilitySettings sharedInstanceForStyle:1];
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setLegibilitySettings:v60];
      v61 = [v60 primaryColor];
      [v87 setTintColor:v61];

      v62 = [(SBHIconLibraryTableViewController *)self->_iconTableViewController tableView];
      [v62 setAccessibilityIdentifier:@"dewey-search-result-table-view"];

      v63 = [(SBHLibraryPodFolderController *)self->_podFolderViewController view];
      [v63 setAccessibilityIdentifier:@"dewey-pod-view"];

      v12 = v89;
      if (v77)
      {
        [(SBHLibrarySearchController *)self->_containerViewController endAppearanceTransition];
      }

      v64 = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider libraryCategoryMap];
      if (v64)
      {
        [(SBHLibraryViewController *)self _installCategoryMap:v64];
      }

      else
      {
        [(SBHLibraryViewController *)self _updateLibraryCategoryMap:0];
      }

      v10 = v82;
      [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider addObserver:self];
      [(SBHLibraryViewController *)self _notifyObserversDataSourceDidChange];

      v4 = v86;
      v65 = v81;
    }

    else
    {
      v90 = v14;
      v65 = SBLogLibrary();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [(SBHLibraryViewController *)v91 _setupIconTableViewController:v65, v66, v67, v68, v69, v70, v71];
      }
    }

    v14 = v90;
    goto LABEL_31;
  }

LABEL_32:
}

void __58__SBHLibraryViewController__setupIconTableViewController___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 setListLayoutProvider:a1[4]];
  [v3 setIconImageCache:a1[5]];
  if (objc_opt_respondsToSelector())
  {
    [v3 setFolderIconImageCache:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setRootFolder:a1[7]];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v6 setEditing:a3 animated:?];
  [(SBHLibraryViewController *)self _updateEditingStateAnimated:v4];
}

- (void)setSuppressesEditingStateForListViews:(BOOL)a3
{
  if (self->_suppressesEditingStateForListViews != a3)
  {
    self->_suppressesEditingStateForListViews = a3;
    [(SBHLibraryViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SBHLibraryViewController *)self isEditing])
  {
    v5 = [(SBHLibraryViewController *)self suppressesEditingStateForListViews]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [(SBFolderController *)self->_podFolderViewController setEditing:v5 animated:v3];
  v6 = [(SBNestingViewController *)self nestedViewController];
  [v6 setEditing:v5 animated:v3];
}

- (void)_scrollIconViewToVisible:(id)a3 animated:(BOOL)a4
{
  v21 = a3;
  v5 = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
  v6 = v21;
  if (v5)
  {
    v7 = v21;
    if (!v21)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      NSLog(&cfstr_CannotScrollTo.isa, v9);

      v7 = 0;
    }

    v10 = [v7 icon];
    if (v10)
    {
      v11 = [v21 location];
      v12 = [(SBHLibraryViewController *)self iconViewForIcon:v10 location:v11];

      if (v12)
      {
        if ([(SBHLibraryViewController *)self isPresentingSearch])
        {
          v13 = [(SBHLibrarySearchController *)self->_containerViewController contentScrollView];
          v14 = [(SBHIconLibraryTableViewController *)self->_iconTableViewController headerBlurView];
          [(SBHLibraryPodFolderController *)v14 frame];
          v16 = v15;
          [v13 adjustedContentInset];
          v18 = v16 - v17;
        }

        else
        {
          v19 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
          v14 = v19;
          if (v19 && ([(SBHLibraryPodFolderController *)v19 bs_isDisappearingOrDisappeared]& 1) == 0)
          {
            podFolderViewController = v14;
          }

          else
          {
            podFolderViewController = self->_podFolderViewController;
          }

          v13 = [(SBHLibraryPodFolderController *)podFolderViewController contentScrollView];
          v18 = 16.0;
        }

        [v12 bounds];
        [v12 convertRect:v13 toView:?];
        CGRectInset(v23, 0.0, -v18);
        [v13 contentSize];
        BSRectWithSize();
        UIRectContainInRect();
        [v13 scrollRectToVisible:1 animated:?];
      }
    }

    v6 = v21;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isPresentingFolder
{
  if (self->_currentTransitionAnimator)
  {
    v2 = [(NSMapTable *)self->_presentedFolderControllers keyEnumerator];
    v3 = [v2 allObjects];
    v4 = [v3 count] != 0;
  }

  else
  {
    v2 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v4 = v2 != 0;
  }

  return v4;
}

- (void)_popExpandedPod
{
  if ([(SBHLibraryViewController *)self isPresentingFolder])
  {

    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
  }
}

- (BOOL)_shouldUseReduceTransparencyBackgroundView
{
  v2 = [(SBHLibraryViewController *)self presenter];
  v3 = [v2 hasBackgroundBlur];

  return v3 ^ 1;
}

- (void)_setupReducedTransparencyBackgroundViewIfNeeded
{
  if ([(SBHLibraryViewController *)self isViewLoaded]&& [(SBHLibraryViewController *)self _shouldUseReduceTransparencyBackgroundView])
  {
    if (UIAccessibilityIsReduceTransparencyEnabled() && !self->_reducedTransparencyBackgroundView)
    {
      v3 = [SBFolderControllerBackgroundView alloc];
      v4 = [(SBHLibraryViewController *)self view];
      [v4 bounds];
      v5 = [(SBFolderControllerBackgroundView *)v3 initWithFrame:?];
      reducedTransparencyBackgroundView = self->_reducedTransparencyBackgroundView;
      self->_reducedTransparencyBackgroundView = v5;

      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAutoresizingMask:18];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setEffect:4];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setEffectActive:1];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAlpha:0.0];
      v7 = [(SBHLibraryViewController *)self view];
      [v7 addSubview:self->_reducedTransparencyBackgroundView];

      v8 = [(SBHLibraryViewController *)self view];
      [v8 sendSubviewToBack:self->_reducedTransparencyBackgroundView];
    }

    [(SBHLibraryViewController *)self _updateReduceTransparency];
  }
}

- (void)_teardownReducedTransparencyBackgroundView
{
  [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView removeFromSuperview];
  reducedTransparencyBackgroundView = self->_reducedTransparencyBackgroundView;
  self->_reducedTransparencyBackgroundView = 0;
}

- (void)_updateReduceTransparency
{
  if ([(SBHLibraryViewController *)self isViewLoaded]&& [(SBHLibraryViewController *)self _shouldUseReduceTransparencyBackgroundView]&& ![(NSMutableArray *)self->_currentCollapseCompletions count]&& ![(NSMutableArray *)self->_currentExpandCompletions count])
  {
    IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    v4 = [(SBHLibraryViewController *)self isPresentingFolder];
    if (IsReduceTransparencyEnabled && !self->_reducedTransparencyBackgroundView)
    {
      [(SBHLibraryViewController *)self _setupReducedTransparencyBackgroundViewIfNeeded];
    }

    if (v4)
    {
      v5 = [(SBHLibraryViewController *)self podFolderViewController];
      v6 = [v5 contentView];
      v7 = objc_opt_class();
      v8 = __BSSafeCast(v6, v7);

      [v8 setHidesFeatherBlur:IsReduceTransparencyEnabled];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAlpha:IsReduceTransparencyEnabled];
    }

    else if (self->_reducedTransparencyBackgroundView != 0 && !IsReduceTransparencyEnabled)
    {

      [(SBHLibraryViewController *)self _teardownReducedTransparencyBackgroundView];
    }
  }
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillPresentSearchController:v4];
  v6 = [(SBHLibraryViewController *)self podFolderViewController];
  v7 = [v6 contentScrollView];
  [v7 _scrollToTopIfPossible:1];

  if ([(SBHLibraryViewController *)self isPresentingFolder])
  {
    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
  }
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidPresentSearchController:v4];
  [(SBHLibraryViewController *)self _flushPendingLibraryCategoryMapUpdateIfNeeded];
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillDismissSearchController:v4];
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidDismissSearchController:v4];
}

- (void)setShouldPrewarmContent:(BOOL)a3
{
  if (self->_shouldPrewarmContent != a3)
  {
    self->_shouldPrewarmContent = a3;
    [(SBHLibraryViewController *)self updateIconVisibility];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)_notifyObserversWillDismissSearchController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBHLibraryViewController__notifyObserversWillDismissSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v6];
}

void __72__SBHLibraryViewController__notifyObserversWillDismissSearchController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) willDismissSearchController:*(a1 + 40)];
  }
}

- (void)_notifyObserversDidDismissSearchController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBHLibraryViewController__notifyObserversDidDismissSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v6];
}

void __71__SBHLibraryViewController__notifyObserversDidDismissSearchController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) didDismissSearchController:*(a1 + 40)];
  }
}

- (void)_notifyObserversDidPresentSearchController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBHLibraryViewController__notifyObserversDidPresentSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v6];
}

void __71__SBHLibraryViewController__notifyObserversDidPresentSearchController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) didPresentSearchController:*(a1 + 40)];
  }
}

- (void)_notifyObserversWillPresentSearchController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBHLibraryViewController__notifyObserversWillPresentSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v6];
}

void __72__SBHLibraryViewController__notifyObserversWillPresentSearchController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) willPresentSearchController:*(a1 + 40)];
  }
}

- (void)_notifyObserversWillPresentFolderController:(id)a3
{
  v4 = a3;
  if (!self->_presentedFolderControllers)
  {
    v5 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    presentedFolderControllers = self->_presentedFolderControllers;
    self->_presentedFolderControllers = v5;
  }

  v7 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:v4];
  [(NSMapTable *)self->_presentedFolderControllers bs_setSafeObject:v7 forKey:v4];
  [(NSMapTable *)self->_dismissingFolderControllers removeObjectForKey:v4];
  [v7 _updateAccessoryViewAnimated:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBHLibraryViewController__notifyObserversWillPresentFolderController___block_invoke;
  v9[3] = &unk_1E808EA70;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v9];
}

void __72__SBHLibraryViewController__notifyObserversWillPresentFolderController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) willPresentFolderController:*(a1 + 40)];
  }
}

- (void)_notifyObserversWillDismissFolderController:(id)a3
{
  v4 = a3;
  dismissingFolderControllers = self->_dismissingFolderControllers;
  if (!dismissingFolderControllers)
  {
    v6 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v7 = self->_dismissingFolderControllers;
    self->_dismissingFolderControllers = v6;

    dismissingFolderControllers = self->_dismissingFolderControllers;
  }

  v8 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:v4];
  [(NSMapTable *)dismissingFolderControllers bs_setSafeObject:v8 forKey:v4];

  [(NSMapTable *)self->_presentedFolderControllers removeObjectForKey:v4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBHLibraryViewController__notifyObserversWillDismissFolderController___block_invoke;
  v10[3] = &unk_1E808EA70;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v10];
}

void __72__SBHLibraryViewController__notifyObserversWillDismissFolderController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) willDismissFolderController:*(a1 + 40)];
  }
}

- (void)_notifyObserversDidDismissFolderController:(id)a3
{
  dismissingFolderControllers = self->_dismissingFolderControllers;
  v5 = a3;
  [(NSMapTable *)dismissingFolderControllers removeObjectForKey:v5];
  v6 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:v5];

  [v6 _updateAccessoryViewAnimated:1];
}

- (void)_notifyObserversWillDismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__SBHLibraryViewController__notifyObserversWillDismiss__block_invoke;
  v2[3] = &unk_1E808EA98;
  v2[4] = self;
  [(SBHLibraryViewController *)self _enumerateObservers:v2];
}

void __55__SBHLibraryViewController__notifyObserversWillDismiss__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewControllerWillDismiss:*(a1 + 32)];
  }
}

- (void)_notifyObserversDidDismiss
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SBHLibraryViewController__notifyObserversDidDismiss__block_invoke;
  v2[3] = &unk_1E808EA98;
  v2[4] = self;
  [(SBHLibraryViewController *)self _enumerateObservers:v2];
}

void __54__SBHLibraryViewController__notifyObserversDidDismiss__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)_notifyObserversWillPresent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__SBHLibraryViewController__notifyObserversWillPresent__block_invoke;
  v2[3] = &unk_1E808EA98;
  v2[4] = self;
  [(SBHLibraryViewController *)self _enumerateObservers:v2];
}

void __55__SBHLibraryViewController__notifyObserversWillPresent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewControllerWillPresent:*(a1 + 32)];
  }
}

- (void)_notifyObserversDidPresent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SBHLibraryViewController__notifyObserversDidPresent__block_invoke;
  v2[3] = &unk_1E808EA98;
  v2[4] = self;
  [(SBHLibraryViewController *)self _enumerateObservers:v2];
}

void __54__SBHLibraryViewController__notifyObserversDidPresent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewControllerDidPresent:*(a1 + 32)];
  }
}

- (void)_notifyObserversOfAppLaunchOfIcon:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__SBHLibraryViewController__notifyObserversOfAppLaunchOfIcon_fromLocation___block_invoke;
  v10[3] = &unk_1E808EAC0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SBHLibraryViewController *)self _enumerateObservers:v10];
}

void __75__SBHLibraryViewController__notifyObserversOfAppLaunchOfIcon_fromLocation___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:a1[4] willLaunchIcon:a1[5] fromLocation:a1[6]];
  }
}

- (void)_notifyObserversDataSourceDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__SBHLibraryViewController__notifyObserversDataSourceDidChange__block_invoke;
  v2[3] = &unk_1E808EA98;
  v2[4] = self;
  [(SBHLibraryViewController *)self _enumerateObservers:v2];
}

void __63__SBHLibraryViewController__notifyObserversDataSourceDidChange__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 1352) dataSource];
    [v5 libraryViewController:v3 dataSourceDidChange:v4];
  }
}

- (void)_notifyObserversOfAcceptedDrop:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SBHLibraryViewController__notifyObserversOfAcceptedDrop___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBHLibraryViewController *)self _enumerateObservers:v6];
}

void __59__SBHLibraryViewController__notifyObserversOfAcceptedDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryViewController:*(a1 + 32) didAcceptDrop:*(a1 + 40)];
  }
}

- (void)_enumerateObservers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
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

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateLibraryCategoryMap:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(SBHLibrarySearchController *)self->_containerViewController bs_isAppearingOrAppeared])
  {
    v6 = [(SBNestingViewController *)self nestedViewController];
    v7 = v6 || [(SBHLibraryViewController *)self isPresentingSearch]|| [(SBHLibraryViewController *)self contentVisibility]== 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(SBHLibraryViewController *)self _hiddenCategoriesDidChangeFromCurrentCategoryMap:self->_libraryCategoryMap toUpdatedCategoryMap:v5];
  libraryCategoryMap = self->_libraryCategoryMap;
  v10 = SBLogLibrary();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!libraryCategoryMap || v7 || v8)
  {
    if (v11)
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "library category map update received: %@", &v18, 0xCu);
    }

    pendingLibraryCategoryMap = self->_pendingLibraryCategoryMap;
    self->_pendingLibraryCategoryMap = 0;

    [(SBHLibraryViewController *)self _installCategoryMap:v5];
    if (!v5)
    {
      v17 = SBLogLibrary();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SBHLibraryViewController _updateLibraryCategoryMap:v17];
      }

      [(SBHLibraryViewController *)self _enqueueAppLibraryUpdate];
    }
  }

  else
  {
    if (v11)
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Queuing up pending library category map: %@", &v18, 0xCu);
    }

    objc_storeStrong(&self->_pendingLibraryCategoryMap, a3);
    v12 = SBLogLibrary();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Setting up partial library category map update...", &v18, 2u);
    }

    v13 = [objc_opt_class() _updateCategoryMap:self->_libraryCategoryMap withCategoryDataFrom:v5];
    v14 = SBLogLibrary();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Successfully updated non-proactive special categories w/ new partial map: %@", &v18, 0xCu);
      }

      [(SBHLibraryViewController *)self _installCategoryMap:v13];
    }

    else
    {
      if (v15)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "Could not amend map; partial update aborted.", &v18, 2u);
      }
    }
  }
}

- (BOOL)_hiddenCategoriesDidChangeFromCurrentCategoryMap:(id)a3 toUpdatedCategoryMap:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryViewController *)self _hiddenCategoryIdentifierForCategoryMap:v7];
  v9 = [v7 sortedApplicationIdentifiersForCategoryIdentifier:v8];

  v10 = [(SBHLibraryViewController *)self _hiddenCategoryIdentifierForCategoryMap:v6];
  v11 = [v6 sortedApplicationIdentifiersForCategoryIdentifier:v10];

  v12 = [v9 count];
  if (v12 == [v11 count])
  {
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v15 = [v13 isEqualToSet:v14];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)_hiddenCategoryIdentifierForCategoryMap:(id)a3
{
  v3 = [a3 categoryIdentifiers];
  v4 = [v3 bs_firstObjectPassingTest:&__block_literal_global_205];

  return v4;
}

- (void)_dismissHiddenExpandedPodAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v17 = a4;
  v6 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

  v10 = v9;

  v11 = [v10 folder];

  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 libraryCategoryIdentifier];

  if ([v16 predictionCategoryID] == 7)
  {
    [(SBHLibraryViewController *)self _dismissExpandedPods:v4 completion:v17];
  }

  else if (v17)
  {
    v17[2](v17, 0);
  }
}

+ (id)_updateCategoryMap:(id)a3 withCategoryDataFrom:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  [v7 updateRecentlyAddedCategoryFromMap:v5];

  LOBYTE(v5) = BSEqualObjects();
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)_flushPendingLibraryCategoryMapUpdateIfNeeded
{
  pendingLibraryCategoryMap = self->_pendingLibraryCategoryMap;
  v4 = SBLogLibrary();
  v5 = v4;
  if (pendingLibraryCategoryMap)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBHLibraryViewController *)&self->_pendingLibraryCategoryMap _flushPendingLibraryCategoryMapUpdateIfNeeded:v6];
    }

    [(SBHLibraryViewController *)self _installCategoryMap:self->_pendingLibraryCategoryMap];
    v5 = self->_pendingLibraryCategoryMap;
    self->_pendingLibraryCategoryMap = 0;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1BEB18000, &v5->super, OS_LOG_TYPE_DEFAULT, "No pending category map; bailing...", v12, 2u);
  }
}

- (void)_installCategoryMap:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(SBHLibraryViewController *)self isViewLoaded])
  {
    v6 = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
  }

  else
  {
    v6 = 0;
  }

  v7 = SBLogLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v5;
    v27 = 1024;
    v28 = v6;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Installing category map %@ - animated %{BOOL}u", buf, 0x12u);
  }

  objc_storeStrong(&self->_libraryCategoryMap, a3);
  v8 = [MEMORY[0x1E695DF70] arrayWithObject:self->_podFolderViewController];
  objc_opt_class();
  v9 = [(SBNestingViewController *)self nestedViewController];
  v10 = SBFSafeCast();
  [v8 bs_safeAddObject:v10];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        [v16 setLibraryCategoryMap:{self->_libraryCategoryMap, v20}];
        if (v6)
        {
          [v16 layoutIconListsWithAnimationType:v6 - 1 forceRelayout:1];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(SBHIconLibraryTableViewController *)self->_iconTableViewController setLibraryCategoryMap:self->_libraryCategoryMap];
  v17 = MEMORY[0x1E695DFD8];
  v18 = [(SBHLibraryCategoryMap *)self->_libraryCategoryMap categoryIdentifiers];
  v19 = [v17 setWithArray:v18];
  [(SBHLibraryViewController *)self _precacheIconViewControllersForCategories:v19];
}

- (void)libraryTableViewControllerDidAppear:(id)a3
{
  [(SBFolderController *)self->_podFolderViewController setContentVisibility:1];

  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
}

- (void)libraryTableViewControllerDidLaunchIcon:(id)a3
{
  v5 = a3;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App Library Search launch of app '%@'", v5];
  [(SBHLibraryViewController *)self _startAppLaunchResetTimer:v4];

  [(SBHLibraryViewController *)self _notifyObserversOfAppLaunchOfIcon:v5 fromLocation:@"SBIconLocationAppLibrarySearch"];
}

- (void)_invalidateLibraryViewControllerDismissalTimer
{
  [(NSTimer *)self->_libraryViewControllerDismissalTimer invalidate];
  libraryViewControllerDismissalTimer = self->_libraryViewControllerDismissalTimer;
  self->_libraryViewControllerDismissalTimer = 0;
}

- (void)_startLibraryViewControllerDismissalTimer:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_libraryViewControllerDismissalTimer)
  {
    [(SBHLibraryViewController *)self _invalidateLibraryViewControllerDismissalTimer];
  }

  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = SBLogLibrary();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Starting App Library view controller dismissal timer for reason: %{public}@, session identifier %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__SBHLibraryViewController__startLibraryViewControllerDismissalTimer___block_invoke;
  v12[3] = &unk_1E808EB08;
  v8 = v4;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  objc_copyWeak(&v15, buf);
  v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v12 block:480.0];
  libraryViewControllerDismissalTimer = self->_libraryViewControllerDismissalTimer;
  self->_libraryViewControllerDismissalTimer = v10;

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __70__SBHLibraryViewController__startLibraryViewControllerDismissalTimer___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([a2 isValid])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dismissLibraryViewControllerForReason:*(a1 + 32) sessionIdentifier:*(a1 + 40)];
  }

  else
  {
    v3 = SBLogLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "App Library view controller dismissal timer for reason %{public}@, session identifier %{public}@ -- was invalidated.  We're not going to do anything.", buf, 0x16u);
    }
  }
}

- (void)_dismissLibraryViewControllerForReason:(id)a3 sessionIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if ([(SBHLibraryViewController *)self bs_isAppearingOrAppeared]&& [(SBHLibraryViewController *)self contentVisibility]!= 2)
  {
    v9 = SBLogLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "App Library view controller dismissal timer won't dismiss for reason %{public}@, session identifier %{public}@ -- container view controller is visible and it'd be really bad if we just changed the way the UI looked while they're using it", &v10, 0x16u);
    }
  }

  else
  {
    v8 = [(SBHLibraryViewController *)self behaviorDelegate];
    [v8 libraryViewControllerRequestsDismissal:self];
  }
}

- (void)invalidateSearchControllerAppLaunchResetTimer
{
  [(NSTimer *)self->_searchControllerAppLaunchResetTimer invalidate];
  searchControllerAppLaunchResetTimer = self->_searchControllerAppLaunchResetTimer;
  self->_searchControllerAppLaunchResetTimer = 0;
}

- (void)_startAppLaunchResetTimer:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = SBLogLibrary();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Starting app launch reset timer for reason: %{public}@, session identifier %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SBHLibraryViewController__startAppLaunchResetTimer___block_invoke;
  v12[3] = &unk_1E808EB08;
  v8 = v4;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  objc_copyWeak(&v15, buf);
  v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v12 block:8.0];
  searchControllerAppLaunchResetTimer = self->_searchControllerAppLaunchResetTimer;
  self->_searchControllerAppLaunchResetTimer = v10;

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __54__SBHLibraryViewController__startAppLaunchResetTimer___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([a2 isValid])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dismissSearchIfNotInUseForReason:*(a1 + 32) sessionIdentifier:*(a1 + 40)];
  }

  else
  {
    v3 = SBLogLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "App launch reset timer for reason %{public}@, session identifier %{public}@ -- was invalidated.  We're not going to do anything.", buf, 0x16u);
    }
  }
}

- (void)_dismissSearchIfNotInUseForReason:(id)a3 sessionIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if ([(SBHLibrarySearchController *)self->_containerViewController bs_isAppearingOrAppeared]&& [(SBHLibraryViewController *)self contentVisibility]!= 2)
  {
    v8 = SBLogLibrary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v9 = "App launch reset timer for reason %{public}@, session identifier %{public}@ -- container view controller is visible and it'd be really bad if we just changed the way the UI looked while they're using it";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (![(SBHLibrarySearchController *)self->_containerViewController isActive])
  {
    v8 = SBLogLibrary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v9 = "App launch won't dismiss search for reason %{public}@, session identifier %{public}@ -- search isn't active, so we can't dismiss something that isn't dismissable";
LABEL_9:
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, v9, &v10, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [(SBHLibraryViewController *)self dismissSearch];
LABEL_11:
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  if ([(SBHLibraryViewController *)self isPresentingSearch])
  {

    [(SBHLibraryViewController *)self dismissSearch];
  }
}

- (BOOL)folderController:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69D4390];
  v6 = MEMORY[0x1E695DEC8];
  v7 = a5;
  v8 = [v6 arrayWithObjects:&v11 count:1];
  v9 = [v7 hasItemsConformingToTypeIdentifiers:{v8, v11, v12}];

  if (v9)
  {
    return [(SBHLibraryViewController *)self isEditing];
  }

  else
  {
    return 0;
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5
{
  v7 = a5;
  [(SBHLibraryViewController *)self _updateDragPreviewIconViewsForDropSession:v7 inIconListView:a4];
  LODWORD(a4) = [(SBHLibraryViewController *)self _canPerformDropForAnyItemInSession:v7];

  if (a4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v8];

  return v9;
}

- (void)folderController:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v33 = self;
  v7 = [(SBHLibraryViewController *)self iconModel];
  v31 = [v7 rootFolder];
  v32 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [v6 items];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = v7;
    v30 = v6;
    v11 = 0;
    v12 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v14 sbh_appDragLocalContext];
        v16 = [v15 startLocation] != 4;
        v17 = [(SBHLibraryViewController *)v33 _iconIdentifierForDragItem:v14];
        if (v17)
        {
          [v32 addObject:v17];
        }

        v18 = [v15 containedIconIdentifiers];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 allObjects];
          [v32 addObjectsFromArray:v20];
        }

        v11 |= v16;
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);

    v7 = v29;
    v6 = v30;
    if (v11)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v32;
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [v29 leafIconForIdentifier:*(*(&v34 + 1) + 8 * j)];
            if ([(SBHLibraryViewController *)v33 _canPerformDropForDraggedIcon:v26])
            {
              v27 = [v31 ignoredList];
              v28 = [v27 addIcon:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v23);
      }

      [(SBHLibraryViewController *)v33 _notifyObserversOfAcceptedDrop:v30];
    }
  }

  else
  {
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:v10];
  v13 = [(SBHLibraryViewController *)self iconModel];
  v14 = [v13 leafIconForIdentifier:v12];

  v15 = [(SBHLibraryViewController *)self firstNonSuggestionsOrRecentsIconViewForIcon:v14];
  if (!v15)
  {
    v15 = [(SBHLibraryViewController *)self firstIconViewForIcon:v14];
  }

  v54 = *(MEMORY[0x1E695EFD0] + 16);
  *&v60.a = *MEMORY[0x1E695EFD0];
  *&v60.c = v54;
  *&v60.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v9 iconContentScale];
  *&v59.a = v56;
  *&v59.c = v55;
  *&v59.tx = v53;
  CGAffineTransformScale(&v60, &v59, v16, v16);
  if (v15)
  {
    v17 = [v15 superview];
    [v15 center];
    [v17 convertPoint:v9 toView:?];
    v19 = v18;
    v21 = v20;

    v22 = objc_alloc(MEMORY[0x1E69DC9A8]);
    v59 = v60;
    v23 = [v22 initWithContainer:v9 center:&v59 transform:{v19, v21}];
    if (v23)
    {
LABEL_5:
      v24 = [v11 retargetedPreviewWithTarget:v23];
      [v24 set_springboardPlatterStyle:1];
      goto LABEL_15;
    }
  }

  else
  {
    v58 = 0;
    v25 = [(SBHLibraryViewController *)self _destinationFolderIconViewForDragItem:v10 folderRelativeIconIndexPath:&v58];
    v26 = v58;
    v27 = v26;
    if (v25)
    {
      if (v26 && ![v26 sbListIndex])
      {
        [v25 frameForMiniIconAtIndex:{objc_msgSend(v27, "sbIconIndex")}];
        [v9 convertRect:v25 fromView:?];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        UIRectGetCenter();
        v46 = v45;
        v48 = v47;
        [v9 alignmentIconSize];
        v50 = v49;
        v62.origin.x = v38;
        v62.origin.y = v40;
        v62.size.width = v42;
        v62.size.height = v44;
        Height = CGRectGetHeight(v62);
        v57 = v60;
        CGAffineTransformScale(&v59, &v57, Height / v50, Height / v50);
        v60 = v59;
        v33 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v59 = v60;
        v34 = v9;
        v35 = v46;
        v36 = v48;
      }

      else
      {
        v28 = [v25 superview];
        [v25 center];
        [v28 convertPoint:v9 toView:?];
        v30 = v29;
        v32 = v31;

        v57 = v60;
        CGAffineTransformScale(&v59, &v57, 0.01, 0.01);
        v60 = v59;
        v33 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v59 = v60;
        v34 = v9;
        v35 = v30;
        v36 = v32;
      }

      v23 = [v33 initWithContainer:v34 center:&v59 transform:{v35, v36}];
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (void)folderController:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:v8];
  v11 = [(SBHLibraryViewController *)self iconModel];
  v12 = [v11 leafIconForIdentifier:v10];

  v13 = [(SBHLibraryViewController *)self firstIconViewForIcon:v12];
  v14 = v13;
  if (v13)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke;
    v28[3] = &unk_1E8088C90;
    v15 = v13;
    v29 = v15;
    [v9 addAnimations:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_2;
    v26[3] = &unk_1E8089000;
    v27 = v15;
    [v9 addCompletion:v26];
  }

  v16 = [v8 sbh_appDragLocalContext];
  v17 = [v16 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_3;
    v23[3] = &unk_1E8088F18;
    v20 = v19;
    v24 = v20;
    v25 = v14;
    [v9 addAnimations:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_4;
    v21[3] = &unk_1E8089000;
    v22 = v20;
    [v9 addCompletion:v21];
  }
}

uint64_t __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIconImageAndAccessoryAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 cleanUpAfterDropAnimation];
}

uint64_t __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setIconAllowsLabelArea:{objc_msgSend(*(a1 + 40), "allowsLabelArea")}];
  if (!*(a1 + 40))
  {
    [*(a1 + 32) setIconCanShowCloseBox:0];
  }

  v2 = *(a1 + 32);

  return [v2 setDragState:3];
}

- (id)_iconIdentifierForDragItem:(id)a3
{
  v3 = [a3 sbh_appDragLocalContext];
  v4 = [v3 uniqueIdentifier];

  return v4;
}

- (id)_draggedItemIdentifiersInSession:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v4;
  v6 = [v4 items];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 sbh_appDragLocalContext];
        v13 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:v11];
        if (v13)
        {
          [v5 addObject:v13];
        }

        v14 = [v12 containedIconIdentifiers];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 allObjects];
          [v5 addObjectsFromArray:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_destinationFolderIconViewForDragItem:(id)a3 folderRelativeIconIndexPath:(id *)a4
{
  v6 = a3;
  v7 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:v6];
  v8 = [(SBHLibraryViewController *)self iconModel];
  v9 = [v8 leafIconForIdentifier:v7];

  if (v9)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__15;
    v26 = __Block_byref_object_dispose__15;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__15;
    v20 = __Block_byref_object_dispose__15;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__SBHLibraryViewController__destinationFolderIconViewForDragItem_folderRelativeIconIndexPath___block_invoke;
    v12[3] = &unk_1E808EB30;
    v14 = &v16;
    v13 = v9;
    v15 = &v22;
    [(SBHLibraryViewController *)self enumerateViewControllersUsingBlock:v12];
    if (a4)
    {
      *a4 = v23[5];
    }

    v10 = v17[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __94__SBHLibraryViewController__destinationFolderIconViewForDragItem_folderRelativeIconIndexPath___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = a1[4];
    v7 = *(a1[6] + 8);
    obj = *(v7 + 40);
    v8 = [v5 folderIconViewForIcon:v6 folderRelativeIconIndexPath:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(a1[5] + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (BOOL)_canPerformDropForAnyItemInSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconModel];
  [(SBHLibraryViewController *)self _draggedItemIdentifiersInSession:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 leafIconForIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = [(SBHLibraryViewController *)self _canPerformDropForDraggedIcon:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)_canPerformDropForDraggedIcon:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SBHLibraryViewController *)self iconModel];
  v6 = [v5 rootFolder];
  v7 = [v6 ignoredList];

  LOBYTE(v6) = [v7 isAllowedToContainIcon:v4];
  return v6;
}

- (void)_updateDragPreviewIconViewsForDropSession:(id)a3 inIconListView:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 iconViewConfigurationOptions];
  [MEMORY[0x1E6979518] begin];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v5;
  obj = [v5 items];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) sbh_appDragLocalContext];
        v12 = [v11 portaledPreview];
        if (objc_opt_respondsToSelector())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        [v14 updateDestinationIconLocation:@"SBIconLocationAppLibraryCategoryPod" allowsLabelArea:(v6 & 2) == 0 animated:1];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [MEMORY[0x1E6979518] commit];
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHomeScreenIconTransitionAnimatorDelegate)homeScreenIconTransitionAnimatorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreenIconTransitionAnimatorDelegate);

  return WeakRetained;
}

- (SBIconViewDelegate)iconViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewDelegate);

  return WeakRetained;
}

- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  return WeakRetained;
}

- (SBHLibraryViewControllerDelegate)behaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorDelegate);

  return WeakRetained;
}

- (UIView)externalBackgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_externalBackgroundView);

  return WeakRetained;
}

- (SBHCredenzaSettings)credenzaSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_credenzaSettings);

  return WeakRetained;
}

@end