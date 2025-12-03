@interface SBHLibraryViewController
+ (id)_updateCategoryMap:(id)map withCategoryDataFrom:(id)from;
- (BOOL)_canPerformDropForAnyItemInSession:(id)session;
- (BOOL)_canPerformDropForDraggedIcon:(id)icon;
- (BOOL)_hiddenCategoriesDidChangeFromCurrentCategoryMap:(id)map toUpdatedCategoryMap:(id)categoryMap;
- (BOOL)_shouldUseReduceTransparencyBackgroundView;
- (BOOL)folderController:(id)controller iconListView:(id)view canHandleIconDropSession:(id)session;
- (BOOL)iconShouldAllowCloseBoxTap:(id)tap;
- (BOOL)iconShouldAllowTap:(id)tap;
- (BOOL)iconView:(id)view editingModeGestureRecognizerDidFire:(id)fire;
- (BOOL)iconViewCanBecomeFocused:(id)focused;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (BOOL)iconViewDisplaysCloseBox:(id)box;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options;
- (BOOL)isIconViewRecycled:(id)recycled;
- (BOOL)isPresentingFolder;
- (BOOL)isPresentingIconLocation:(id)location;
- (BOOL)isPresentingSearch;
- (BOOL)presentPodWithCategory:(id)category animated:(BOOL)animated completion:(id)completion;
- (BOOL)presentPodWithCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (NSArray)podTopLevelDisplayedIcons;
- (NSSet)presentedIconLocations;
- (SBFolderIconImageCache)folderIconImageCache;
- (SBHCredenzaSettings)credenzaSettings;
- (SBHIconBadgeBehaviorProviding)badgeBehaviorProvider;
- (SBHLegibilitySettings)effectiveLegibilitySettings;
- (SBHLibraryIconPrecachingInfo)iconPrecachingInfo;
- (SBHLibraryViewController)initWithCategoryMapProvider:(id)provider;
- (SBHLibraryViewControllerDelegate)behaviorDelegate;
- (SBHLibraryViewControllerPresenter)presenter;
- (SBHomeScreenIconTransitionAnimatorDelegate)homeScreenIconTransitionAnimatorDelegate;
- (SBIconViewDelegate)iconViewDelegate;
- (SBIconViewProviding)iconViewProvider;
- (SBRootFolder)categoriesRootFolder;
- (UIView)externalBackgroundView;
- (id)_additionalItemsIcons;
- (id)_additionalItemsIndicatorIconViewForFolderController:(id)controller;
- (id)_createIconViewControllerForCategoryIdentifier:(id)identifier;
- (id)_customImageViewControllerForCategoryPodIconView:(id)view usingInternalCache:(BOOL)cache;
- (id)_destinationFolderIconViewForDragItem:(id)item folderRelativeIconIndexPath:(id *)path;
- (id)_draggedItemIdentifiersInSession:(id)session;
- (id)_hiddenCategoryIdentifierForCategoryMap:(id)map;
- (id)_iconIdentifierForDragItem:(id)item;
- (id)_iconLocationForCategoryIdentifier:(id)identifier;
- (id)_iconViewControllerForCategoryIdentifier:(id)identifier;
- (id)_wrappedCompletionBlockForNestedTransitionWithCompletion:(id)completion;
- (id)contentScrollView;
- (id)contextMenuDelegateForIconView:(id)view;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)draggingDelegateForIconView:(id)view;
- (id)effectiveIconImageAppearance;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options;
- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)icon;
- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update;
- (id)folderController:(id)controller iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview;
- (id)iconView:(id)view labelContentWithParameters:(id)parameters;
- (id)iconView:(id)view labelImageWithParameters:(id)parameters;
- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options;
- (id)keyCommands;
- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (int64_t)closeBoxTypeForIconView:(id)view;
- (void)_addBarSwipeView;
- (void)_dismissDisplayedContextMenu;
- (void)_dismissExpandedPods:(BOOL)pods completion:(id)completion;
- (void)_dismissHiddenExpandedPodAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissLibraryViewControllerForReason:(id)reason sessionIdentifier:(id)identifier;
- (void)_dismissSearchIfNotInUseForReason:(id)reason sessionIdentifier:(id)identifier;
- (void)_enqueueTransitionName:(id)name withHandler:(id)handler;
- (void)_enumerateAllViewControllersUsingBlock:(id)block;
- (void)_enumerateObservers:(id)observers;
- (void)_expandPodAtIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion;
- (void)_flushPendingLibraryCategoryMapUpdateIfNeeded;
- (void)_installCategoryMap:(id)map;
- (void)_invalidateLibraryViewControllerDismissalTimer;
- (void)_notifyObserversDataSourceDidChange;
- (void)_notifyObserversDidDismiss;
- (void)_notifyObserversDidDismissFolderController:(id)controller;
- (void)_notifyObserversDidDismissSearchController:(id)controller;
- (void)_notifyObserversDidPresent;
- (void)_notifyObserversDidPresentSearchController:(id)controller;
- (void)_notifyObserversOfAcceptedDrop:(id)drop;
- (void)_notifyObserversOfAppLaunchOfIcon:(id)icon fromLocation:(id)location;
- (void)_notifyObserversWillDismiss;
- (void)_notifyObserversWillDismissFolderController:(id)controller;
- (void)_notifyObserversWillDismissSearchController:(id)controller;
- (void)_notifyObserversWillPresent;
- (void)_notifyObserversWillPresentFolderController:(id)controller;
- (void)_notifyObserversWillPresentSearchController:(id)controller;
- (void)_popExpandedPod;
- (void)_precacheIconViewControllersForCategories:(id)categories;
- (void)_scrollIconViewToVisible:(id)visible animated:(BOOL)animated;
- (void)_setupIconTableViewController:(BOOL)controller;
- (void)_setupReducedTransparencyBackgroundViewIfNeeded;
- (void)_startAppLaunchResetTimer:(id)timer;
- (void)_startLibraryViewControllerDismissalTimer:(id)timer;
- (void)_teardownReducedTransparencyBackgroundView;
- (void)_updateDragPreviewIconViewsForDropSession:(id)session inIconListView:(id)view;
- (void)_updateEditingStateAnimated:(BOOL)animated;
- (void)_updateLibraryCategoryMap:(id)map;
- (void)_updateReduceTransparency;
- (void)_updateSearchControllerLegibility;
- (void)_updateViewControllerLegibility;
- (void)addObserver:(id)observer;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dealloc;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumeratePodIconListViewsUsingBlock:(id)block;
- (void)enumerateViewControllersUsingBlock:(id)block;
- (void)folderController:(id)controller iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)folderController:(id)controller iconListView:(id)view performIconDrop:(id)drop;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)forcedSearchTextFieldNoneditable:(BOOL)noneditable;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconModelDidLayout:(id)layout;
- (void)iconTapped:(id)tapped modifierFlags:(int64_t)flags;
- (void)iconViewWasDiscarded:(id)discarded;
- (void)iconViewWasRecycled:(id)recycled;
- (void)invalidateSearchControllerAppLaunchResetTimer;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)libraryPodFolderController:(id)controller willLayoutDisplayedCategories:(unint64_t)categories;
- (void)libraryPodFolderControllerRequestsDismissal:(id)dismissal;
- (void)libraryTableViewControllerDidAppear:(id)appear;
- (void)libraryTableViewControllerDidLaunchIcon:(id)icon;
- (void)loadView;
- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)overlayController:(id)controller visibilityDidChange:(BOOL)change;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress;
- (void)popNestedViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)popPresentationState;
- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)recycleIconView:(id)view;
- (void)setAllowsBadging:(BOOL)badging;
- (void)setBadgeBehaviorProvider:(id)provider;
- (void)setBarSwipeViewController:(id)controller;
- (void)setBehaviorDelegate:(id)delegate;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExternalBackgroundView:(id)view;
- (void)setIconImageCache:(id)cache;
- (void)setIconModel:(id)model;
- (void)setIconViewProvider:(id)provider;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider;
- (void)setOverrideLegibilitySettings:(id)settings;
- (void)setShouldPrewarmContent:(BOOL)content;
- (void)setSuppressesEditingStateForListViews:(BOOL)views;
- (void)updateIconVisibility;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SBHLibraryViewController

- (SBHLibraryViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (BOOL)isPresentingSearch
{
  isActive = [(SBHLibrarySearchController *)self->_containerViewController isActive];
  if (isActive)
  {
    LOBYTE(isActive) = self->_iconTableViewController != 0;
  }

  return isActive;
}

- (SBHLibraryViewController)initWithCategoryMapProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = SBHLibraryViewController;
  v6 = [(SBNestingViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryMapProvider, provider);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v4 dealloc];
}

- (void)iconModelDidLayout:(id)layout
{
  object = [layout object];
  iconModel = [(SBHLibraryViewController *)self iconModel];
  v6 = [object isEqual:iconModel];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__SBHLibraryViewController_iconModelDidLayout___block_invoke;
    v7[3] = &unk_1E808E7D8;
    v8 = object;
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
  view = [(SBHLibraryViewController *)self view];
  [view frame];
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
  view = [(SBHLibraryViewController *)self view];
  [view _setIgnoreBackdropViewsWhenHiding:1];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [view setTintColor:labelColor];

  [(SBHLibraryViewController *)self _addBarSwipeView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v8 viewWillAppear:?];
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if (!self->_libraryCategoryMap)
  {
    [(SBHLibraryViewController *)self _enqueueAppLibraryUpdate];
  }

  [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:appearCopy clearSearchResults:1 resetSearchBarTransformAndAlpha:[(SBHLibraryViewController *)self _shouldResetSearchBarTransformAndAlpha]];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateReduceTransparency name:*MEMORY[0x1E69DD920] object:0];

  [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:1 animated:appearCopy];
  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v7, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillPresent];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v6 viewDidAppear:appear];
  [(SBHLibrarySearchController *)self->_containerViewController endAppearanceTransition];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidPresent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = SBHLibraryViewController;
  [(SBNestingViewController *)&v7 viewWillDisappear:?];
  [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:0 animated:disappearCopy];
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
  deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  v4 = objc_opt_class();
  v5 = deepestNestedDescendantViewController;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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

  [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:disappearCopy clearSearchResults:1 resetSearchBarTransformAndAlpha:[(SBHLibraryViewController *)self _shouldResetSearchBarTransformAndAlpha]];
  [(SBHLibraryViewController *)self _dismissHiddenExpandedPodAnimated:disappearCopy completion:0];
  [(SBHLibraryViewController *)self _flushPendingLibraryCategoryMapUpdateIfNeeded];
  v6 = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider requestLibraryCategoryMapRefreshWithOptions:2 reason:@"SBHLibraryViewController reload proactive categories after disappear request"];
  [(SBHLibraryViewController *)self _notifyObserversDidDismiss];
  [(SBHLibraryViewController *)self _invalidateLibraryViewControllerDismissalTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  [(SBHLibraryViewController *)self _teardownReducedTransparencyBackgroundView];
}

- (void)viewWillLayoutSubviews
{
  viewIfLoaded = [(UIViewController *)self->_barSwipeViewController viewIfLoaded];
  if (viewIfLoaded)
  {
    view = [(SBHLibraryViewController *)self view];
    [view bringSubviewToFront:viewIfLoaded];
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
    superview = [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView superview];
    [superview bounds];
    [(SBFolderControllerBackgroundView *)reducedTransparencyBackgroundView setFrame:?];

    view = [(SBHLibraryViewController *)self view];
    [view sendSubviewToBack:self->_reducedTransparencyBackgroundView];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v10 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  externalBackgroundView = [(SBHLibraryViewController *)self externalBackgroundView];
  v8 = externalBackgroundView;
  if (externalBackgroundView)
  {
    if (windowCopy)
    {
      layer = [MEMORY[0x1E69D3FA0] matchMoveAnimationForPinningToView:windowCopy];
      [v8 addAnimation:layer forKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }

    else
    {
      layer = [externalBackgroundView layer];
      [layer removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = SBHLibraryViewController;
  coordinatorCopy = coordinator;
  [(SBHLibraryViewController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  externalBackgroundView = [(SBHLibraryViewController *)self externalBackgroundView];
  layer = [externalBackgroundView layer];

  v10 = [layer animationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
  [layer removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SBHLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E808E800;
  v14 = layer;
  v15 = v10;
  v11 = v10;
  v12 = layer;
  [coordinatorCopy animateAlongsideTransition:0 completion:v13];
}

- (id)contentScrollView
{
  deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  contentScrollView = [deepestNestedDescendantViewController contentScrollView];

  if (contentScrollView)
  {
    deepestNestedDescendantViewController2 = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    contentScrollView2 = [deepestNestedDescendantViewController2 contentScrollView];
  }

  else
  {
    contentScrollView2 = [(SBHLibrarySearchController *)self->_containerViewController contentScrollView];
  }

  return contentScrollView2;
}

- (id)keyCommands
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBHLibraryViewController;
  keyCommands = [(SBHLibraryViewController *)&v7 keyCommands];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__popExpandedPod];
  v4 = v3;
  if (keyCommands)
  {
    v5 = [keyCommands arrayByAddingObject:v3];
  }

  else
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  return v5;
}

- (void)setBehaviorDelegate:(id)delegate
{
  objc_storeWeak(&self->_behaviorDelegate, delegate);
  shouldUseReduceTransparencyBackgroundView = self->_shouldUseReduceTransparencyBackgroundView;
  self->_shouldUseReduceTransparencyBackgroundView = 0;
}

- (void)_dismissExpandedPods:(BOOL)pods completion:(id)completion
{
  podsCopy = pods;
  completionCopy = completion;
  deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];

  if (deepestNestedDescendantViewController)
  {
    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:podsCopy withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_expandPodAtIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self->_libraryCategoryMap categoryIdentifiers];
  deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  if (deepestNestedDescendantViewController || [(SBHLibraryViewController *)self isPresentingSearch])
  {

    goto LABEL_4;
  }

  if (![categoryIdentifiers count])
  {
LABEL_4:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_6;
  }

  folder = [(SBFolderController *)self->_podFolderViewController folder];
  icons = [folder icons];
  v13 = [icons objectAtIndex:index];

  category = [v13 category];
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__SBHLibraryViewController__expandPodAtIndex_animated_completion___block_invoke;
    v15[3] = &unk_1E808E828;
    v16 = completionCopy;
    [(SBHLibraryViewController *)self presentPodWithCategory:category animated:animatedCopy completion:v15];
  }

  else
  {
    [(SBHLibraryViewController *)self presentPodWithCategory:category animated:animatedCopy completion:0];
  }

LABEL_6:
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBHLibraryViewController *)self _updateViewControllerLegibility];
    [(SBHLibraryViewController *)self _updateSearchControllerLegibility];
  }
}

- (void)setIconModel:(id)model
{
  modelCopy = model;
  if (([modelCopy isEqual:self->_iconModel] & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
    objc_storeStrong(&self->_iconModel, model);
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
    [defaultCenter addObserver:self selector:sel_iconModelDidLayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
  }
}

void __41__SBHLibraryViewController_setIconModel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1184);
  v3 = a2;
  v4 = [v2 rootFolder];
  [v3 setRootFolder:v4];
}

- (void)setIconViewProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_iconViewProvider, obj);
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
    v5 = obj;
  }
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (([(SBHIconImageCache *)self->_iconImageCache isEqual:cacheCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_iconImageCache, cache);
    folderIconImageCache = self->_folderIconImageCache;
    self->_folderIconImageCache = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SBHLibraryViewController_setIconImageCache___block_invoke;
    v7[3] = &unk_1E808E7D8;
    v8 = cacheCopy;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v7];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
  }
}

- (void)setListLayoutProvider:(id)provider
{
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    objc_storeStrong(&self->_listLayoutProvider, provider);
    [(SBHLibrarySearchController *)self->_containerViewController setListLayoutProvider:providerCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__SBHLibraryViewController_setListLayoutProvider___block_invoke;
    v6[3] = &unk_1E808E7D8;
    v7 = providerCopy;
    [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v6];
    [(SBHLibraryViewController *)self _setupIconTableViewController:[(SBHLibraryViewController *)self isViewLoaded]];
  }
}

- (SBFolderIconImageCache)folderIconImageCache
{
  if (!self->_folderIconImageCache)
  {
    iconImageCache = [(SBHLibraryViewController *)self iconImageCache];

    if (iconImageCache)
    {
      listLayoutProvider = [(SBHLibraryViewController *)self listLayoutProvider];
      v5 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPodAdditionalItems"];

      if (v5)
      {
        v6 = [SBFolderIconImageCache alloc];
        iconImageCache2 = [(SBHLibraryViewController *)self iconImageCache];
        v8 = [(SBFolderIconImageCache *)v6 initWithListLayout:v5 iconImageCache:iconImageCache2];
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
    behaviorDelegate = [(SBHLibraryViewController *)self behaviorDelegate];
    [behaviorDelegate libraryViewControllerRequestsDismissal:self];
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

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
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
        [v12 layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)setBarSwipeViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (self->_barSwipeViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBHLibraryViewController *)self bs_removeChildViewController:?];
    objc_storeStrong(&self->_barSwipeViewController, controller);
    controllerCopy = [(SBHLibraryViewController *)self isViewLoaded];
    v6 = v7;
    if (controllerCopy)
    {
      controllerCopy = [(SBHLibraryViewController *)self _addBarSwipeView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](controllerCopy, v6);
}

- (void)_addBarSwipeView
{
  barSwipeViewController = self->_barSwipeViewController;
  if (barSwipeViewController)
  {
    v4 = barSwipeViewController;
    [(SBHLibraryViewController *)self bs_addChildViewController:v4];
    view = [(UIViewController *)v4 view];

    view2 = [(SBHLibraryViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    [view setAutoresizingMask:18];
  }
}

- (void)setExternalBackgroundView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_externalBackgroundView);
  if (WeakRetained != obj)
  {
    layer = [WeakRetained layer];
    [layer removeAnimationForKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];

    objc_storeWeak(&self->_externalBackgroundView, obj);
    viewIfLoaded = [(SBHLibraryViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      v8 = [MEMORY[0x1E69D3FA0] matchMoveAnimationForPinningToView:window];
      [obj addAnimation:v8 forKey:@"SBHLibraryExternalBackgroundMatchMoveKey"];
    }
  }
}

- (void)setAllowsBadging:(BOOL)badging
{
  if (self->_allowsBadging != badging)
  {
    self->_allowsBadging = badging;
    [(SBHLibraryCategoriesRootFolder *)self->_categoriesFolder setSupportsBadging:?];
  }
}

- (void)setBadgeBehaviorProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_badgeBehaviorProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_badgeBehaviorProvider, obj);
    [(SBFolder *)self->_categoriesFolder setBadgeBehaviorProvider:obj];
  }
}

- (BOOL)presentPodWithCategory:(id)category animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  categoryCopy = category;
  completionCopy = completion;
  v10 = completionCopy;
  if (categoryCopy)
  {
    additionalItemsIndicatorIcon = [categoryCopy additionalItemsIndicatorIcon];
    categoryIdentifier = [categoryCopy categoryIdentifier];
    v13 = [(SBHLibraryViewController *)self _iconLocationForCategoryIdentifier:categoryIdentifier];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__SBHLibraryViewController_presentPodWithCategory_animated_completion___block_invoke;
    aBlock[3] = &unk_1E808E850;
    aBlock[4] = self;
    v14 = additionalItemsIndicatorIcon;
    v33 = v14;
    v15 = v13;
    v34 = v15;
    v36 = animatedCopy;
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
    deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v19 = objc_opt_class();
    v20 = deepestNestedDescendantViewController;
    v29 = categoryIdentifier;
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

    folder = [v23 folder];

    if ([folder isLibraryCategoryFolder])
    {
      libraryCategoryIdentifier = [folder libraryCategoryIdentifier];
    }

    else
    {
      libraryCategoryIdentifier = 0;
    }

    categoryIdentifier = v29;
    if ([libraryCategoryIdentifier isEqual:v29])
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
      [(SBHLibraryViewController *)self popNestedViewControllerAnimated:animatedCopy withCompletion:v30];
      v26 = v31;
    }

    goto LABEL_19;
  }

  if (completionCopy)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBHLibraryPresentationErrorDomain" code:4 userInfo:MEMORY[0x1E695E0F8]];
    (v10)[2](v10, v22);
  }

LABEL_21:

  return categoryCopy != 0;
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

- (BOOL)presentPodWithCategoryIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  integerValue = [identifier integerValue];
  folder = [(SBFolderController *)self->_podFolderViewController folder];
  icons = [folder icons];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__SBHLibraryViewController_presentPodWithCategoryIdentifier_animated_completion___block_invoke;
  v15[3] = &__block_descriptor_40_e16_B16__0__SBIcon_8l;
  v15[4] = integerValue;
  v12 = [icons bs_firstObjectPassingTest:v15];

  category = [v12 category];
  LOBYTE(animatedCopy) = [(SBHLibraryViewController *)self presentPodWithCategory:category animated:animatedCopy completion:completionCopy];

  return animatedCopy;
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

- (void)forcedSearchTextFieldNoneditable:(BOOL)noneditable
{
  noneditableCopy = noneditable;
  containerViewController = [(SBHLibraryViewController *)self containerViewController];
  [containerViewController setForcedSearchTextFieldNoneditable:!noneditableCopy];
}

- (id)effectiveIconImageAppearance
{
  traitCollection = [(SBHLibraryViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v3;
}

- (SBRootFolder)categoriesRootFolder
{
  dataSource = [(SBHLibraryPodFolderController *)self->_podFolderViewController dataSource];
  categoriesFolder = [dataSource categoriesFolder];

  return categoriesFolder;
}

- (void)setOverrideLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_overrideLegibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideLegibilitySettings, settings);
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
      traitCollection = [(SBHLibraryViewController *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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
  categoriesRootFolder = [(SBHLibraryViewController *)self categoriesRootFolder];
  firstList = [categoriesRootFolder firstList];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SBHLibraryViewController_podTopLevelDisplayedIcons__block_invoke;
  v8[3] = &unk_1E808A678;
  v9 = v4;
  v5 = v4;
  [firstList enumerateIconsUsingBlock:v8];
  array = [v5 array];

  return array;
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
  categoriesRootFolder = [(SBHLibraryViewController *)self categoriesRootFolder];
  firstList = [categoriesRootFolder firstList];
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
  [firstList enumerateIconsUsingBlock:&v16];
  array = [v9 array];
  [(SBHLibraryIconPrecachingInfo *)v3 setTopLevelIcons:array];

  array2 = [v8 array];
  [(SBHLibraryIconPrecachingInfo *)v3 setAdditionalIcons:array2];

  listLayoutProvider = [(SBHLibraryViewController *)self listLayoutProvider];
  v13 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPod"];
  v14 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibraryCategoryPodAdditionalItems"];
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

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  presentedIconLocations = [(SBHLibraryViewController *)self presentedIconLocations];
  v6 = [presentedIconLocations containsObject:locationCopy];

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

- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
  v10 = locationCopy;
  v11 = 0;
  if (iconCopy && locationCopy)
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
    v14 = iconCopy;
    v15 = v10;
    v16 = &v17;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenWithOptions:options usingBlock:v13];
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

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  v8 = locationsCopy;
  v9 = 0;
  if (iconCopy && locationsCopy)
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
    v12 = iconCopy;
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

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  v5 = iconCopy;
  if (iconCopy)
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
    v9 = iconCopy;
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

- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)icon
{
  iconCopy = icon;
  v5 = iconCopy;
  if (iconCopy)
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
    v9 = iconCopy;
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

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
  v10 = locationCopy;
  v11 = 0;
  if (iconCopy && locationCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__SBHLibraryViewController_isDisplayingIcon_inLocation_options___block_invoke;
    v13[3] = &unk_1E808E8C0;
    v14 = iconCopy;
    v15 = v10;
    v16 = &v17;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenWithOptions:options usingBlock:v13];
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

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  v8 = locationsCopy;
  v9 = 0;
  if (iconCopy && locationsCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__SBHLibraryViewController_isDisplayingIcon_inLocations___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = iconCopy;
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

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  v5 = iconCopy;
  if (iconCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SBHLibraryViewController_isDisplayingIcon___block_invoke;
    v8[3] = &unk_1E808E8E8;
    v9 = iconCopy;
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

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__SBHLibraryViewController_isDisplayingIconView___block_invoke;
    v8[3] = &unk_1E808E8E8;
    v9 = viewCopy;
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

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  v8 = locationCopy;
  v9 = 0;
  if (viewCopy && locationCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBHLibraryViewController_isDisplayingIconView_inLocation___block_invoke;
    v11[3] = &unk_1E808E8C0;
    v12 = viewCopy;
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

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  iconCopy = icon;
  blockCopy = block;
  v8 = blockCopy;
  if (iconCopy && blockCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__SBHLibraryViewController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
    v9[3] = &unk_1E808E910;
    v10 = iconCopy;
    v11 = v8;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v9];
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__SBHLibraryViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
    v6[3] = &unk_1E808D610;
    v7 = blockCopy;
    [(SBHLibraryViewController *)self enumerateIconViewQueryableChildrenUsingBlock:v6];
  }
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  v8 = locationsCopy;
  if (iconCopy && [locationsCopy count])
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
    v12 = iconCopy;
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

- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
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
  v15 = iconCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SBHLibraryViewController_firstIconViewForIcon_options___block_invoke_2;
  v11[3] = &unk_1E808E960;
  v13 = &v17;
  v8 = v15;
  v12 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v14, v11);
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

- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__SBHLibraryViewController_isDisplayingIcon_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = iconCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__SBHLibraryViewController_isDisplayingIcon_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v13, v10);
  LOBYTE(options) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return options;
}

- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options
{
  viewCopy = view;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SBHLibraryViewController_isDisplayingIconView_options___block_invoke;
  v13[3] = &unk_1E808E938;
  v15 = &v16;
  v14 = viewCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SBHLibraryViewController_isDisplayingIconView_options___block_invoke_2;
  v10[3] = &unk_1E808E960;
  v12 = &v16;
  v8 = v14;
  v11 = v8;
  SBIconViewQueryingHandleMethodRecursion(self, options, a2, v13, v10);
  LOBYTE(options) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return options;
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v5 = [WeakRetained dequeueReusableIconViewOfClass:class];

  return v5;
}

- (void)recycleIconView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  [WeakRetained recycleIconView:viewCopy];
}

- (BOOL)isIconViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);
  v6 = [WeakRetained isIconViewRecycled:recycledCopy];

  return v6;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  [viewCopy setDelegate:self];
  [viewCopy setPrefersFlatImageLayers:{-[SBHLibraryViewController prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  if (([iconCopy isCategoryIcon] & 1) == 0 && (objc_msgSend(iconCopy, "isFolderIcon") & 1) == 0 && (objc_msgSend(iconCopy, "isAdditionalItemsIndicatorIcon") & 1) == 0)
  {
    [viewCopy setIconContentScalingEnabled:1];
  }
}

- (void)libraryPodFolderController:(id)controller willLayoutDisplayedCategories:(unint64_t)categories
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    listGridSize = [(SBFolder *)self->_categoriesFolder listGridSize];
    v9 = self->_containerViewController;
    v11 = v9;
    if (categories <= 2 * listGridSize)
    {
      v10 = 2;
    }

    else
    {
      v10 = listGridSize + 2 * listGridSize < categories;
    }

    [(SBHLibrarySearchController *)v9 setSearchBarAppearance:v10];
  }
}

- (void)libraryPodFolderControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if (self->_podFolderViewController == dismissalCopy)
  {
    behaviorDelegate = [(SBHLibraryViewController *)self behaviorDelegate];
    [behaviorDelegate libraryViewControllerRequestsDismissal:self];
  }

  else
  {
    nestedViewControllers = [(SBNestingViewController *)self nestedViewControllers];
    v5 = [nestedViewControllers containsObject:dismissalCopy];

    if (v5)
    {
      [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
      [(SBHLibrarySearchController *)self->_containerViewController resetSearchController:1 clearSearchResults:0 resetSearchBarTransformAndAlpha:1];
    }
  }
}

- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  traitCollection = [(SBHLibraryViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC20]];

  if (v12)
  {
    traitOverrides = [controllerCopy traitOverrides];
    [traitOverrides setPreferredContentSizeCategory:*MEMORY[0x1E69DDC28]];
  }

  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation]== 1)
    {
      objc_opt_class();
      childViewController = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
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
          v31 = controllerCopy;
          [(SBHLibraryViewController *)self _enqueueTransitionName:@"Request to open a folder while another folder is still closing" withHandler:v30];
        }

        [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator completeImmediately];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        if (completionCopy)
        {
          currentExpandCompletions = self->_currentExpandCompletions;
          if (!currentExpandCompletions)
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v25 = self->_currentExpandCompletions;
            self->_currentExpandCompletions = v24;

            currentExpandCompletions = self->_currentExpandCompletions;
          }

          v26 = [completionCopy copy];
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

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v28 = [(SBHLibraryViewController *)self _wrappedCompletionBlockForNestedTransitionWithCompletion:completionCopy];
    v29.receiver = self;
    v29.super_class = SBHLibraryViewController;
    [(SBNestingViewController *)&v29 pushNestedViewController:controllerCopy animated:animatedCopy withCompletion:v28];
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

- (void)popNestedViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentTransitionAnimator = self->_currentTransitionAnimator;
  if (currentTransitionAnimator)
  {
    if ([(SBHomeScreenIconTransitionAnimator *)currentTransitionAnimator currentOperation])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      if (completionCopy)
      {
        currentCollapseCompletions = self->_currentCollapseCompletions;
        if (!currentCollapseCompletions)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v11 = self->_currentCollapseCompletions;
          self->_currentCollapseCompletions = v10;

          currentCollapseCompletions = self->_currentCollapseCompletions;
        }

        v12 = [completionCopy copy];
        v13 = _Block_copy(v12);
        [(NSMutableArray *)currentCollapseCompletions addObject:v13];
      }

      objc_opt_class();
      childViewController = [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator childViewController];
      v15 = SBFSafeCast();

      [(SBHLibraryViewController *)self _notifyObserversWillDismissFolderController:v15];
      [(SBHomeScreenIconTransitionAnimator *)self->_currentTransitionAnimator reverse];
    }
  }

  else
  {
    v8 = [(SBHLibraryViewController *)self _wrappedCompletionBlockForNestedTransitionWithCompletion:completionCopy];
    v16.receiver = self;
    v16.super_class = SBHLibraryViewController;
    [(SBNestingViewController *)&v16 popNestedViewControllerAnimated:animatedCopy withCompletion:v8];
  }
}

- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  v35.receiver = self;
  v35.super_class = SBHLibraryViewController;
  v11 = [(SBNestingViewController *)&v35 nestingViewController:controller animationControllerForOperation:operation onViewController:viewControllerCopy animated:animatedCopy];
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
  v12 = viewControllerCopy;
  folderDelegate = [v12 folderDelegate];
  folder = [v12 folder];
  icon = [folder icon];

  searchBar = [(SBHLibrarySearchController *)self->_containerViewController searchBar];
  if (icon && ([icon folder], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "icons"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v16, v18))
  {
    v19 = 0;
    if (!animatedCopy)
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
      [(SBHLibraryViewController *)icon nestingViewController:v21 animationControllerForOperation:v22 onViewController:v23 animated:v24, v25, v26, v27];
    }

    v19 = 1;
    if (!animatedCopy)
    {
      goto LABEL_6;
    }
  }

  if ((v19 | UIAccessibilityIsReduceMotionEnabled()) != 1)
  {
    v28 = [[SBHLibraryPodIconZoomAnimator alloc] initWithAnimationContainer:v34 innerFolderController:v12 folderIcon:icon searchBar:searchBar libraryViewController:self];
    goto LABEL_15;
  }

  v20 = SBHLibraryPodFadeAnimator;
LABEL_13:
  v28 = [[v20 alloc] initWithAnimationContainer:v34 innerFolderController:v12 searchBar:searchBar];
LABEL_15:
  v29 = v28;
  if (v28)
  {
    v11 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v28 childViewController:v12 operation:operation != 1];
    [(SBHomeScreenIconTransitionAnimator *)v11 setInitialDelay:0.0];
    homeScreenIconTransitionAnimatorDelegate = [(SBHLibraryViewController *)self homeScreenIconTransitionAnimatorDelegate];
    [(SBHomeScreenIconTransitionAnimator *)v11 setDelegate:homeScreenIconTransitionAnimatorDelegate];

    v31 = folderDelegate;
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate folderController:self willUseIconTransitionAnimator:v11 forOperation:operation onViewController:v12 animated:animatedCopy];
    }
  }

  else
  {
    v11 = 0;
    v31 = folderDelegate;
  }

LABEL_20:

  return v11;
}

- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  v24.receiver = self;
  v24.super_class = SBHLibraryViewController;
  controllerCopy = controller;
  [(SBNestingViewController *)&v24 nestingViewController:controllerCopy willPerformOperation:operation onViewController:viewControllerCopy withTransitionCoordinator:coordinatorCopy];
  [(SBHLibraryViewController *)self _setupReducedTransparencyBackgroundViewIfNeeded];

  if (controllerCopy == self)
  {
    v13 = [(BSEventQueue *)self->_transitionEventQueue acquireLockForReason:@"performingTransitionOperation"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
    v22[3] = &unk_1E808E988;
    v22[4] = self;
    v23 = v13;
    v14 = v13;
    [coordinatorCopy animateAlongsideTransition:0 completion:v22];
  }

  if ((operation - 1) <= 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = viewControllerCopy;
      [v15 setEditing:-[SBHLibraryViewController isEditing](self animated:{"isEditing"), 1}];
      if (operation == 1)
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
      operationCopy = operation;
      v20 = v15;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __114__SBHLibraryViewController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4;
      v16[3] = &unk_1E808E9B0;
      v17 = v20;
      operationCopy2 = operation;
      v16[4] = self;
      [coordinatorCopy animateAlongsideTransition:v19 completion:v16];
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

- (id)iconView:(id)view labelImageWithParameters:(id)parameters
{
  parametersCopy = parameters;
  viewCopy = view;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [iconViewDelegate iconView:viewCopy labelImageWithParameters:parametersCopy];

  return v9;
}

- (id)iconView:(id)view labelContentWithParameters:(id)parameters
{
  parametersCopy = parameters;
  viewCopy = view;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [iconViewDelegate iconView:viewCopy labelContentWithParameters:parametersCopy];

  return v9;
}

- (BOOL)iconShouldAllowTap:(id)tap
{
  tapCopy = tap;
  isEditing = [tapCopy isEditing];
  icon = [tapCopy icon];

  if (isEditing)
  {
    LOBYTE(v6) = [icon isAdditionalItemsIndicatorIcon];
  }

  else
  {
    v6 = [icon isCategoryIcon] ^ 1;
  }

  return v6;
}

- (void)iconTapped:(id)tapped modifierFlags:(int64_t)flags
{
  tappedCopy = tapped;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [iconViewDelegate iconTapped:tappedCopy modifierFlags:flags];
  }

  else if (objc_opt_respondsToSelector())
  {
    [iconViewDelegate iconTapped:tappedCopy];
  }

  [tappedCopy setHighlighted:0];
  icon = [tappedCopy icon];
  location = [tappedCopy location];
  [(SBHLibraryViewController *)self _notifyObserversOfAppLaunchOfIcon:icon fromLocation:location];
}

- (id)_customImageViewControllerForCategoryPodIconView:(id)view usingInternalCache:(BOOL)cache
{
  cacheCopy = cache;
  icon = [view icon];
  if ([icon isCategoryIcon])
  {
    category = [icon category];
    categoryIdentifier = [category categoryIdentifier];
    if (cacheCopy)
    {
      [(SBHLibraryViewController *)self _iconViewControllerForCategoryIdentifier:categoryIdentifier];
    }

    else
    {
      [(SBHLibraryViewController *)self _createIconViewControllerForCategoryIdentifier:categoryIdentifier];
    }
    v9 = ;
    v10 = [(SBHLibraryViewController *)self _iconLocationForCategoryIdentifier:categoryIdentifier];
    [v9 updateCategory:category location:v10];
    iconListView = [v9 iconListView];
    if ([(SBHLibraryViewController *)self shouldHideIcons])
    {
      [iconListView hideAllIcons];
    }

    else
    {
      [iconListView showAllIcons];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_iconViewControllerForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconViewControllerForCategoryIdentifier = self->_iconViewControllerForCategoryIdentifier;
  if (!iconViewControllerForCategoryIdentifier)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v7 = self->_iconViewControllerForCategoryIdentifier;
    self->_iconViewControllerForCategoryIdentifier = strongToStrongObjectsMapTable;

    iconViewControllerForCategoryIdentifier = self->_iconViewControllerForCategoryIdentifier;
  }

  v8 = [(NSMapTable *)iconViewControllerForCategoryIdentifier objectForKey:identifierCopy];
  if (!v8)
  {
    v8 = [(SBHLibraryViewController *)self _createIconViewControllerForCategoryIdentifier:identifierCopy];
    [(NSMapTable *)self->_iconViewControllerForCategoryIdentifier setObject:v8 forKey:identifierCopy];
  }

  return v8;
}

- (id)_createIconViewControllerForCategoryIdentifier:(id)identifier
{
  listLayoutProvider = [(SBHLibraryViewController *)self listLayoutProvider];
  iconImageCache = [(SBHLibraryViewController *)self iconImageCache];
  folderIconImageCache = [(SBHLibraryViewController *)self folderIconImageCache];
  v7 = objc_alloc_init(SBHLibraryCategoryIconViewController);
  [(SBHLibraryCategoryIconViewController *)v7 setIconViewProvider:self];
  [(SBHLibraryCategoryIconViewController *)v7 setListLayoutProvider:listLayoutProvider];
  [(SBHLibraryCategoryIconViewController *)v7 setIconImageCache:iconImageCache];
  [(SBHLibraryCategoryIconViewController *)v7 setFolderIconImageCache:folderIconImageCache];

  return v7;
}

- (void)_precacheIconViewControllersForCategories:(id)categories
{
  v29 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [categoriesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(categoriesCopy);
        }

        v9 = [(SBHLibraryViewController *)self _iconViewControllerForCategoryIdentifier:*(*(&v23 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [categoriesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E695DFA8];
  keyEnumerator = [(NSMapTable *)self->_iconViewControllerForCategoryIdentifier keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v13 = [v10 setWithArray:allObjects];

  [v13 minusSet:categoriesCopy];
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

- (id)_iconLocationForCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = @"SBIconLocationAppLibraryCategoryPod";
  if ([identifierCopy predictionCategoryID] == 3)
  {
    v5 = SBIconLocationAppLibraryCategoryPodSuggestions;
  }

  else
  {
    if ([identifierCopy predictionCategoryID] != 4)
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

- (void)iconViewWasRecycled:(id)recycled
{
  recycledCopy = recycled;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  [iconViewDelegate iconViewWasRecycled:recycledCopy];
}

- (void)iconViewWasDiscarded:(id)discarded
{
  discardedCopy = discarded;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  [iconViewDelegate iconViewWasDiscarded:discardedCopy];
}

- (id)draggingDelegateForIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  if (([icon isCategoryIcon] & 1) != 0 || (objc_msgSend(icon, "isFolderIcon") & 1) != 0 || objc_msgSend(icon, "isAdditionalItemsIndicatorIcon"))
  {
    selfCopy = self;
  }

  else
  {
    iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
    selfCopy = iconViewDelegate;
    if (objc_opt_respondsToSelector())
    {
      selfCopy = [(SBHLibraryViewController *)iconViewDelegate draggingDelegateForIconView:viewCopy];
    }
  }

  return selfCopy;
}

- (id)contextMenuDelegateForIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  if ([icon isCategoryIcon])
  {
  }

  else
  {
    icon2 = [viewCopy icon];
    isFolderIcon = [icon2 isFolderIcon];

    if (!isFolderIcon)
    {
      iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
      if (objc_opt_respondsToSelector())
      {
        v10 = [iconViewDelegate contextMenuDelegateForIconView:viewCopy];
      }

      else
      {
        v10 = iconViewDelegate;
      }

      selfCopy = v10;

      goto LABEL_9;
    }
  }

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (BOOL)iconShouldAllowCloseBoxTap:(id)tap
{
  tapCopy = tap;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [iconViewDelegate iconShouldAllowCloseBoxTap:tapCopy];

  return v6;
}

- (void)iconCloseBoxTapped:(id)tapped
{
  tappedCopy = tapped;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  [iconViewDelegate iconCloseBoxTapped:tappedCopy];
}

- (BOOL)iconViewDisplaysCloseBox:(id)box
{
  boxCopy = box;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [iconViewDelegate iconViewDisplaysCloseBox:boxCopy];

  return v6;
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  icon = [accessoriesCopy icon];
  if ([icon isAdditionalItemsIndicatorIcon] && !UIAccessibilityIsReduceMotionEnabled())
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

    icon2 = [accessoriesCopy icon];
    category = [icon2 category];
    categoryIdentifier = [category categoryIdentifier];

    keyEnumerator = [(NSMapTable *)self->_presentedFolderControllers keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke;
    v27[3] = &unk_1E808E9D8;
    v14 = categoryIdentifier;
    v28 = v14;
    v15 = [allObjects bs_filter:v27];
    v16 = [v15 count];

    if (v16)
    {

      v7 = 0;
      goto LABEL_5;
    }

    keyEnumerator2 = [(NSMapTable *)self->_dismissingFolderControllers keyEnumerator];
    allObjects2 = [keyEnumerator2 allObjects];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __56__SBHLibraryViewController_iconViewDisplaysAccessories___block_invoke_2;
    v25 = &unk_1E808E9D8;
    v26 = v14;
    v19 = v14;
    v20 = [allObjects2 bs_filter:&v22];
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
  icon2 = [(SBHLibraryViewController *)self iconViewDelegate];
  v7 = [icon2 iconViewDisplaysAccessories:accessoriesCopy];
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

- (BOOL)iconViewCanBecomeFocused:(id)focused
{
  focusedCopy = focused;
  icon = [focusedCopy icon];
  isCategoryIcon = [icon isCategoryIcon];

  if (isCategoryIcon)
  {
    v7 = 0;
  }

  else
  {
    iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [iconViewDelegate iconViewCanBecomeFocused:focusedCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_additionalItemsIndicatorIconViewForFolderController:(id)controller
{
  v29 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  objc_opt_class();
  folder = [controllerCopy folder];
  v14 = SBFSafeCast();

  libraryCategoryIdentifier = [v14 libraryCategoryIdentifier];
  if (libraryCategoryIdentifier)
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
    iconListViews = [(SBFolderController *)self->_podFolderViewController iconListViews];
    v8 = [iconListViews countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(iconListViews);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __81__SBHLibraryViewController__additionalItemsIndicatorIconViewForFolderController___block_invoke;
          v15[3] = &unk_1E808AE98;
          v16 = libraryCategoryIdentifier;
          v17 = &v22;
          [v11 enumerateIconViewsUsingBlock:v15];
        }

        v8 = [iconListViews countByEnumeratingWithState:&v18 objects:v28 count:16];
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
  iconListViews = [(SBFolderController *)self->_podFolderViewController iconListViews];
  v5 = [iconListViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __49__SBHLibraryViewController__additionalItemsIcons__block_invoke;
        v11[3] = &unk_1E808AEC0;
        v12 = v3;
        [v9 enumerateIconViewsUsingBlock:v11];
      }

      v6 = [iconListViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (int64_t)closeBoxTypeForIconView:(id)view
{
  viewCopy = view;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v6 = [iconViewDelegate closeBoxTypeForIconView:viewCopy];

  return v6;
}

- (BOOL)iconView:(id)view editingModeGestureRecognizerDidFire:(id)fire
{
  fireCopy = fire;
  viewCopy = view;
  iconViewDelegate = [(SBHLibraryViewController *)self iconViewDelegate];
  v9 = [iconViewDelegate iconView:viewCopy editingModeGestureRecognizerDidFire:fireCopy];

  return v9;
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    folderController = [(SBHLibraryViewController *)self folderController];
    [folderController setContentVisibility:visibility];

    containerViewController = [(SBHLibraryViewController *)self containerViewController];
    [containerViewController setContentVisibility:visibility];

    [(SBHLibraryViewController *)self updateIconVisibility];
    if (visibility == 2 && [(SBHLibraryViewController *)self bs_isAppearingOrAppeared])
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
  shouldHideIcons = [(SBHLibraryViewController *)self shouldHideIcons];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBHLibraryViewController_updateIconVisibility__block_invoke;
  v4[3] = &__block_descriptor_33_e28_v24__0__SBIconListView_8_B16l;
  v5 = shouldHideIcons;
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

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)progress
{
  if ([(SBHLibraryViewController *)self isPresentingSearch])
  {

    [(SBHLibraryViewController *)self dismissSearch];
  }
}

- (void)overlayController:(id)controller visibilityDidChange:(BOOL)change
{
  if (!change)
  {
    [(BSInvalidatable *)self->_libraryPrewarmAssertion invalidate];
    libraryPrewarmAssertion = self->_libraryPrewarmAssertion;
    self->_libraryPrewarmAssertion = 0;
  }
}

- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  controllerCopy = controller;
  if (presentationProgress >= 1.0 && !leading && !self->_libraryPrewarmAssertion)
  {
    v12 = controllerCopy;
    v10 = [(SBHLibraryViewController *)self acquireLibrarySearchPrewarmAssertionForReason:@"Library View Controller is presented"];
    libraryPrewarmAssertion = self->_libraryPrewarmAssertion;
    self->_libraryPrewarmAssertion = v10;

    controllerCopy = v12;
  }
}

- (void)_enqueueTransitionName:(id)name withHandler:(id)handler
{
  v6 = [MEMORY[0x1E698E6B0] eventWithName:name handler:handler];
  transitionEventQueue = [(SBHLibraryViewController *)self transitionEventQueue];
  [transitionEventQueue executeOrInsertEvent:v6 atPosition:1];
}

- (id)_wrappedCompletionBlockForNestedTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SBHLibraryViewController__wrappedCompletionBlockForNestedTransitionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E808EA20;
  objc_copyWeak(&v11, &location);
  v10 = completionCopy;
  v5 = completionCopy;
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

- (void)enumerateViewControllersUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  if (![(SBHLibrarySearchController *)self->_containerViewController isActive]|| (iconTableViewController = self->_iconTableViewController) == 0 || (blockCopy[2](blockCopy, iconTableViewController, &v7), (v7 & 1) == 0))
  {
    if (![(SBHLibrarySearchController *)self->_containerViewController isActive])
    {
      podFolderViewController = self->_podFolderViewController;
      if (podFolderViewController)
      {
        blockCopy[2](blockCopy, podFolderViewController, &v7);
      }
    }
  }
}

- (void)_enumerateAllViewControllersUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v8 = 0;
  podFolderViewController = self->_podFolderViewController;
  if (!podFolderViewController || ((*(blockCopy + 2))(blockCopy, podFolderViewController, &v8), (v8 & 1) == 0))
  {
    iconTableViewController = self->_iconTableViewController;
    if (iconTableViewController)
    {
      (v5)[2](v5, iconTableViewController, &v8);
    }
  }
}

- (void)enumerateIconViewQueryableChildrenWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if ((options & 0x40) == 0)
  {
    if ((v11 = 0, !self->_iconTableViewController) || (v7 = [(SBHLibrarySearchController *)self->_containerViewController isActive], (options & 3) != 0) && !v7 || (blockCopy[2](blockCopy, self->_iconTableViewController, options, &v11), (options & 3) == 0) && (v11 & 1) == 0)
    {
      nestedViewController = [(SBNestingViewController *)self nestedViewController];
      v9 = nestedViewController;
      if (!nestedViewController || ([(SBHLibraryPodFolderController *)nestedViewController bs_isDisappearingOrDisappeared]& 1) != 0 || (blockCopy[2](blockCopy, v9, options, &v11), (options & 3) == 0) && (v11 & 1) == 0)
      {
        podFolderViewController = self->_podFolderViewController;
        if (podFolderViewController)
        {
          blockCopy[2](blockCopy, podFolderViewController, options, &v11);
        }
      }
    }
  }
}

- (void)enumeratePodIconListViewsUsingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  iconListViews = [(SBFolderController *)self->_podFolderViewController iconListViews];
  v6 = [iconListViews countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(iconListViews);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__SBHLibraryViewController_enumeratePodIconListViewsUsingBlock___block_invoke;
      v10[3] = &unk_1E808A808;
      v11 = blockCopy;
      v12 = &v17;
      [v9 enumerateIconViewsUsingBlock:v10];
      LOBYTE(v9) = *(v18 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [iconListViews countByEnumeratingWithState:&v13 objects:v21 count:16];
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
  effectiveLegibilitySettings = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  [(SBFolderController *)self->_podFolderViewController setLegibilitySettings:effectiveLegibilitySettings];
}

- (void)_updateSearchControllerLegibility
{
  effectiveLegibilitySettings = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  [(SBHLibrarySearchController *)self->_containerViewController setLegibilitySettings:effectiveLegibilitySettings];
}

- (void)_setupIconTableViewController:(BOOL)controller
{
  controllerCopy = controller;
  v100[4] = *MEMORY[0x1E69E9840];
  iconViewProvider = [(SBHLibraryViewController *)self iconViewProvider];
  iconModel = [(SBHLibraryViewController *)self iconModel];
  rootFolder = [iconModel rootFolder];

  v7 = self->_listLayoutProvider;
  v8 = self->_iconImageCache;
  effectiveLegibilitySettings = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
  iconModel2 = [(SBHLibraryViewController *)self iconModel];
  folderIconImageCache = [(SBHLibraryViewController *)self folderIconImageCache];
  v12 = self->_categoryMapProvider;
  if (v8)
  {
    v13 = folderIconImageCache == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v93 = folderIconImageCache;
    v14 = [[_SBHLibraryCollectionOfModelThings alloc] initWithIconViewProvider:iconViewProvider iconModel:iconModel2 rootFolder:rootFolder listLayoutProvider:v7 iconImageCache:v8 folderIconImageCache:folderIconImageCache categoryMapProvider:v12];
    v99 = 0;
    v15 = [(_SBHLibraryCollectionOfModelThings *)v14 examineModelValidityWithError:&v99];
    v91 = v99;
    if (v15)
    {
      if ([(_SBHLibraryCollectionOfModelThings *)self->_model isEqual:v14])
      {
LABEL_31:

        folderIconImageCache = v93;
        goto LABEL_32;
      }

      v85 = rootFolder;
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

      v82 = iconModel2;
      v21 = objc_alloc_init(SBHIconLibraryTableViewController);
      v22 = self->_iconTableViewController;
      self->_iconTableViewController = v21;

      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setObserver:self];
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setListLayoutProvider:v7];
      v86 = iconViewProvider;
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setIconViewProvider:iconViewProvider];
      iconLocation = [(SBHLibraryViewController *)self iconLocation];
      v88 = [(SBIconListLayoutProvider *)v7 layoutForIconLocation:?];
      v80 = SBHIconListLayoutIconGridSizeClassSizes(v88, 1);
      v23 = [(SBFolder *)[SBHLibraryCategoriesRootFolder alloc] initWithDisplayName:@"Categories Folder" maxListCount:1 listGridSize:4294901764 iconGridSizeClassSizes:v80];
      v24 = self->_categoriesFolder;
      self->_categoriesFolder = v23;

      [(SBRootFolder *)self->_categoriesFolder setModel:self->_iconModel];
      addEmptyList = [(SBFolder *)self->_categoriesFolder addEmptyList];
      v26 = self->_categoriesFolder;
      rootFolder2 = [(SBHIconModel *)self->_iconModel rootFolder];
      delegate = [rootFolder2 delegate];
      [(SBRootFolder *)v26 setDelegate:delegate];

      [(SBHLibraryCategoriesRootFolder *)self->_categoriesFolder setSupportsBadging:[(SBHLibraryViewController *)self allowsBadging]];
      v29 = self->_categoriesFolder;
      badgeBehaviorProvider = [(SBHLibraryViewController *)self badgeBehaviorProvider];
      [(SBFolder *)v29 setBadgeBehaviorProvider:badgeBehaviorProvider];

      v31 = objc_alloc_init(SBHLibraryPodFolderControllerConfiguration);
      [(SBFolderControllerConfiguration *)v31 setIconViewProvider:self];
      [(SBFolderControllerConfiguration *)v31 setListLayoutProvider:v7];
      [(SBFolderControllerConfiguration *)v31 setIconImageCache:v8];
      [(SBFolderControllerConfiguration *)v31 setFolderIconImageCache:v93];
      [(SBFolderControllerConfiguration *)v31 setLegibilitySettings:effectiveLegibilitySettings];
      [(SBHLibraryPodFolderControllerConfiguration *)v31 setCategoryMapProvider:v89];
      [(SBHLibraryPodFolderControllerConfiguration *)v31 setCategoriesFolder:self->_categoriesFolder];
      [(SBFolderControllerConfiguration *)v31 setFolder:self->_categoriesFolder];
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

      v83 = effectiveLegibilitySettings;
      v84 = v7;
      v79 = v31;
      v37 = [[SBHLibraryPodFolderController alloc] initWithConfiguration:v31];
      v38 = self->_podFolderViewController;
      self->_podFolderViewController = v37;

      contentScrollView = [(SBHLibraryPodFolderController *)self->_podFolderViewController contentScrollView];
      [contentScrollView setShowsVerticalScrollIndicator:0];

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
        view = [(SBHLibrarySearchController *)self->_containerViewController view];
        [view removeFromSuperview];

        [(SBHLibraryViewController *)self bs_removeChildViewController:self->_containerViewController];
        v42 = self->_containerViewController;
        self->_containerViewController = 0;
      }

      bs_isAppearingOrAppeared = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
      appLibraryVisualConfiguration = [v88 appLibraryVisualConfiguration];
      usesInsetPlatterSearchAppearance = [appLibraryVisualConfiguration usesInsetPlatterSearchAppearance];

      v45 = [[SBHLibrarySearchController alloc] initWithSearchResultsController:self->_iconTableViewController contentViewController:self->_podFolderViewController usingPlatterAppearance:usesInsetPlatterSearchAppearance];
      v46 = self->_containerViewController;
      self->_containerViewController = v45;

      [(SBHLibrarySearchController *)self->_containerViewController setDelegate:self];
      v47 = self->_containerViewController;
      iconLocation2 = [(SBHLibraryViewController *)self iconLocation];
      [(SBHLibrarySearchController *)v47 setContainingIconLocation:iconLocation2];

      [(SBHLibrarySearchController *)self->_containerViewController setSearchResultsUpdater:self->_iconTableViewController];
      [(SBHLibraryViewController *)self addChildViewController:self->_containerViewController];
      view2 = [(SBHLibraryViewController *)self view];
      view3 = [(SBHLibrarySearchController *)self->_containerViewController view];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 addSubview:view3];
      leadingAnchor = [view3 leadingAnchor];
      leadingAnchor2 = [view2 leadingAnchor];
      v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v100[0] = v74;
      trailingAnchor = [view3 trailingAnchor];
      trailingAnchor2 = [view2 trailingAnchor];
      v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v100[1] = v51;
      topAnchor = [view3 topAnchor];
      topAnchor2 = [view2 topAnchor];
      v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v100[2] = v54;
      v87 = view3;
      bottomAnchor = [view3 bottomAnchor];
      v78 = view2;
      bottomAnchor2 = [view2 bottomAnchor];
      v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v100[3] = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
      containerViewControllerConstraints = self->_containerViewControllerConstraints;
      self->_containerViewControllerConstraints = v58;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_containerViewControllerConstraints];
      [(SBHLibrarySearchController *)self->_containerViewController didMoveToParentViewController:self];
      if (bs_isAppearingOrAppeared)
      {
        [(SBHLibrarySearchController *)self->_containerViewController beginAppearanceTransition:1 animated:controllerCopy];
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
      rootFolder = v85;
      v98 = v85;
      [(SBHLibraryViewController *)self _enumerateAllViewControllersUsingBlock:v94];
      effectiveLegibilitySettings = v83;
      if (v83)
      {
        [(SBHLibraryViewController *)self _updateViewControllerLegibility];
        [(SBHLibraryViewController *)self _updateSearchControllerLegibility];
      }

      v60 = [SBHLegibilitySettings sharedInstanceForStyle:1];
      [(SBHIconLibraryTableViewController *)self->_iconTableViewController setLegibilitySettings:v60];
      primaryColor = [v60 primaryColor];
      [v87 setTintColor:primaryColor];

      tableView = [(SBHIconLibraryTableViewController *)self->_iconTableViewController tableView];
      [tableView setAccessibilityIdentifier:@"dewey-search-result-table-view"];

      view4 = [(SBHLibraryPodFolderController *)self->_podFolderViewController view];
      [view4 setAccessibilityIdentifier:@"dewey-pod-view"];

      v12 = v89;
      if (bs_isAppearingOrAppeared)
      {
        [(SBHLibrarySearchController *)self->_containerViewController endAppearanceTransition];
      }

      libraryCategoryMap = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider libraryCategoryMap];
      if (libraryCategoryMap)
      {
        [(SBHLibraryViewController *)self _installCategoryMap:libraryCategoryMap];
      }

      else
      {
        [(SBHLibraryViewController *)self _updateLibraryCategoryMap:0];
      }

      iconModel2 = v82;
      [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider addObserver:self];
      [(SBHLibraryViewController *)self _notifyObserversDataSourceDidChange];

      iconViewProvider = v86;
      v65 = iconLocation;
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = SBHLibraryViewController;
  [(SBHLibraryViewController *)&v6 setEditing:editing animated:?];
  [(SBHLibraryViewController *)self _updateEditingStateAnimated:animatedCopy];
}

- (void)setSuppressesEditingStateForListViews:(BOOL)views
{
  if (self->_suppressesEditingStateForListViews != views)
  {
    self->_suppressesEditingStateForListViews = views;
    [(SBHLibraryViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBHLibraryViewController *)self isEditing])
  {
    v5 = [(SBHLibraryViewController *)self suppressesEditingStateForListViews]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [(SBFolderController *)self->_podFolderViewController setEditing:v5 animated:animatedCopy];
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  [nestedViewController setEditing:v5 animated:animatedCopy];
}

- (void)_scrollIconViewToVisible:(id)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  bs_isAppearingOrAppeared = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
  v6 = visibleCopy;
  if (bs_isAppearingOrAppeared)
  {
    v7 = visibleCopy;
    if (!visibleCopy)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      NSLog(&cfstr_CannotScrollTo.isa, v9);

      v7 = 0;
    }

    icon = [v7 icon];
    if (icon)
    {
      location = [visibleCopy location];
      v12 = [(SBHLibraryViewController *)self iconViewForIcon:icon location:location];

      if (v12)
      {
        if ([(SBHLibraryViewController *)self isPresentingSearch])
        {
          contentScrollView = [(SBHLibrarySearchController *)self->_containerViewController contentScrollView];
          headerBlurView = [(SBHIconLibraryTableViewController *)self->_iconTableViewController headerBlurView];
          [(SBHLibraryPodFolderController *)headerBlurView frame];
          v16 = v15;
          [contentScrollView adjustedContentInset];
          v18 = v16 - v17;
        }

        else
        {
          deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
          headerBlurView = deepestNestedDescendantViewController;
          if (deepestNestedDescendantViewController && ([(SBHLibraryPodFolderController *)deepestNestedDescendantViewController bs_isDisappearingOrDisappeared]& 1) == 0)
          {
            podFolderViewController = headerBlurView;
          }

          else
          {
            podFolderViewController = self->_podFolderViewController;
          }

          contentScrollView = [(SBHLibraryPodFolderController *)podFolderViewController contentScrollView];
          v18 = 16.0;
        }

        [v12 bounds];
        [v12 convertRect:contentScrollView toView:?];
        CGRectInset(v23, 0.0, -v18);
        [contentScrollView contentSize];
        BSRectWithSize();
        UIRectContainInRect();
        [contentScrollView scrollRectToVisible:1 animated:?];
      }
    }

    v6 = visibleCopy;
  }

  MEMORY[0x1EEE66BB8](bs_isAppearingOrAppeared, v6);
}

- (BOOL)isPresentingFolder
{
  if (self->_currentTransitionAnimator)
  {
    keyEnumerator = [(NSMapTable *)self->_presentedFolderControllers keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v4 = [allObjects count] != 0;
  }

  else
  {
    keyEnumerator = [(SBNestingViewController *)self deepestNestedDescendantViewController];
    v4 = keyEnumerator != 0;
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
  presenter = [(SBHLibraryViewController *)self presenter];
  hasBackgroundBlur = [presenter hasBackgroundBlur];

  return hasBackgroundBlur ^ 1;
}

- (void)_setupReducedTransparencyBackgroundViewIfNeeded
{
  if ([(SBHLibraryViewController *)self isViewLoaded]&& [(SBHLibraryViewController *)self _shouldUseReduceTransparencyBackgroundView])
  {
    if (UIAccessibilityIsReduceTransparencyEnabled() && !self->_reducedTransparencyBackgroundView)
    {
      v3 = [SBFolderControllerBackgroundView alloc];
      view = [(SBHLibraryViewController *)self view];
      [view bounds];
      v5 = [(SBFolderControllerBackgroundView *)v3 initWithFrame:?];
      reducedTransparencyBackgroundView = self->_reducedTransparencyBackgroundView;
      self->_reducedTransparencyBackgroundView = v5;

      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAutoresizingMask:18];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setEffect:4];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setEffectActive:1];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAlpha:0.0];
      view2 = [(SBHLibraryViewController *)self view];
      [view2 addSubview:self->_reducedTransparencyBackgroundView];

      view3 = [(SBHLibraryViewController *)self view];
      [view3 sendSubviewToBack:self->_reducedTransparencyBackgroundView];
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
    isPresentingFolder = [(SBHLibraryViewController *)self isPresentingFolder];
    if (IsReduceTransparencyEnabled && !self->_reducedTransparencyBackgroundView)
    {
      [(SBHLibraryViewController *)self _setupReducedTransparencyBackgroundViewIfNeeded];
    }

    if (isPresentingFolder)
    {
      podFolderViewController = [(SBHLibraryViewController *)self podFolderViewController];
      contentView = [podFolderViewController contentView];
      v7 = objc_opt_class();
      v8 = __BSSafeCast(contentView, v7);

      [v8 setHidesFeatherBlur:IsReduceTransparencyEnabled];
      [(SBFolderControllerBackgroundView *)self->_reducedTransparencyBackgroundView setAlpha:IsReduceTransparencyEnabled];
    }

    else if (self->_reducedTransparencyBackgroundView != 0 && !IsReduceTransparencyEnabled)
    {

      [(SBHLibraryViewController *)self _teardownReducedTransparencyBackgroundView];
    }
  }
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillPresentSearchController:controllerCopy];
  podFolderViewController = [(SBHLibraryViewController *)self podFolderViewController];
  contentScrollView = [podFolderViewController contentScrollView];
  [contentScrollView _scrollToTopIfPossible:1];

  if ([(SBHLibraryViewController *)self isPresentingFolder])
  {
    [(SBHLibraryViewController *)self popNestedViewControllerAnimated:1 withCompletion:0];
  }
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_PRESENT", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidPresentSearchController:controllerCopy];
  [(SBHLibraryViewController *)self _flushPendingLibraryCategoryMapUpdateIfNeeded];
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversWillDismissSearchController:controllerCopy];
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_SEARCH_DISMISS", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  [(SBHLibraryViewController *)self _notifyObserversDidDismissSearchController:controllerCopy];
}

- (void)setShouldPrewarmContent:(BOOL)content
{
  if (self->_shouldPrewarmContent != content)
  {
    self->_shouldPrewarmContent = content;
    [(SBHLibraryViewController *)self updateIconVisibility];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_notifyObserversWillDismissSearchController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBHLibraryViewController__notifyObserversWillDismissSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
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

- (void)_notifyObserversDidDismissSearchController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBHLibraryViewController__notifyObserversDidDismissSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
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

- (void)_notifyObserversDidPresentSearchController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBHLibraryViewController__notifyObserversDidPresentSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
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

- (void)_notifyObserversWillPresentSearchController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBHLibraryViewController__notifyObserversWillPresentSearchController___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
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

- (void)_notifyObserversWillPresentFolderController:(id)controller
{
  controllerCopy = controller;
  if (!self->_presentedFolderControllers)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    presentedFolderControllers = self->_presentedFolderControllers;
    self->_presentedFolderControllers = weakToWeakObjectsMapTable;
  }

  v7 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:controllerCopy];
  [(NSMapTable *)self->_presentedFolderControllers bs_setSafeObject:v7 forKey:controllerCopy];
  [(NSMapTable *)self->_dismissingFolderControllers removeObjectForKey:controllerCopy];
  [v7 _updateAccessoryViewAnimated:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBHLibraryViewController__notifyObserversWillPresentFolderController___block_invoke;
  v9[3] = &unk_1E808EA70;
  v9[4] = self;
  v10 = controllerCopy;
  v8 = controllerCopy;
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

- (void)_notifyObserversWillDismissFolderController:(id)controller
{
  controllerCopy = controller;
  dismissingFolderControllers = self->_dismissingFolderControllers;
  if (!dismissingFolderControllers)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v7 = self->_dismissingFolderControllers;
    self->_dismissingFolderControllers = weakToWeakObjectsMapTable;

    dismissingFolderControllers = self->_dismissingFolderControllers;
  }

  v8 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:controllerCopy];
  [(NSMapTable *)dismissingFolderControllers bs_setSafeObject:v8 forKey:controllerCopy];

  [(NSMapTable *)self->_presentedFolderControllers removeObjectForKey:controllerCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBHLibraryViewController__notifyObserversWillDismissFolderController___block_invoke;
  v10[3] = &unk_1E808EA70;
  v10[4] = self;
  v11 = controllerCopy;
  v9 = controllerCopy;
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

- (void)_notifyObserversDidDismissFolderController:(id)controller
{
  dismissingFolderControllers = self->_dismissingFolderControllers;
  controllerCopy = controller;
  [(NSMapTable *)dismissingFolderControllers removeObjectForKey:controllerCopy];
  v6 = [(SBHLibraryViewController *)self _additionalItemsIndicatorIconViewForFolderController:controllerCopy];

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

- (void)_notifyObserversOfAppLaunchOfIcon:(id)icon fromLocation:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__SBHLibraryViewController__notifyObserversOfAppLaunchOfIcon_fromLocation___block_invoke;
  v10[3] = &unk_1E808EAC0;
  v10[4] = self;
  v11 = iconCopy;
  v12 = locationCopy;
  v8 = locationCopy;
  v9 = iconCopy;
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

- (void)_notifyObserversOfAcceptedDrop:(id)drop
{
  dropCopy = drop;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SBHLibraryViewController__notifyObserversOfAcceptedDrop___block_invoke;
  v6[3] = &unk_1E808EA70;
  v6[4] = self;
  v7 = dropCopy;
  v5 = dropCopy;
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

- (void)_enumerateObservers:(id)observers
{
  v15 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateLibraryCategoryMap:(id)map
{
  v20 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if ([(SBHLibrarySearchController *)self->_containerViewController bs_isAppearingOrAppeared])
  {
    nestedViewController = [(SBNestingViewController *)self nestedViewController];
    v7 = nestedViewController || [(SBHLibraryViewController *)self isPresentingSearch]|| [(SBHLibraryViewController *)self contentVisibility]== 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(SBHLibraryViewController *)self _hiddenCategoriesDidChangeFromCurrentCategoryMap:self->_libraryCategoryMap toUpdatedCategoryMap:mapCopy];
  libraryCategoryMap = self->_libraryCategoryMap;
  v10 = SBLogLibrary();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!libraryCategoryMap || v7 || v8)
  {
    if (v11)
    {
      v18 = 138412290;
      v19 = mapCopy;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "library category map update received: %@", &v18, 0xCu);
    }

    pendingLibraryCategoryMap = self->_pendingLibraryCategoryMap;
    self->_pendingLibraryCategoryMap = 0;

    [(SBHLibraryViewController *)self _installCategoryMap:mapCopy];
    if (!mapCopy)
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
      v19 = mapCopy;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Queuing up pending library category map: %@", &v18, 0xCu);
    }

    objc_storeStrong(&self->_pendingLibraryCategoryMap, map);
    v12 = SBLogLibrary();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Setting up partial library category map update...", &v18, 2u);
    }

    v13 = [objc_opt_class() _updateCategoryMap:self->_libraryCategoryMap withCategoryDataFrom:mapCopy];
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

- (BOOL)_hiddenCategoriesDidChangeFromCurrentCategoryMap:(id)map toUpdatedCategoryMap:(id)categoryMap
{
  categoryMapCopy = categoryMap;
  mapCopy = map;
  v8 = [(SBHLibraryViewController *)self _hiddenCategoryIdentifierForCategoryMap:mapCopy];
  v9 = [mapCopy sortedApplicationIdentifiersForCategoryIdentifier:v8];

  v10 = [(SBHLibraryViewController *)self _hiddenCategoryIdentifierForCategoryMap:categoryMapCopy];
  v11 = [categoryMapCopy sortedApplicationIdentifiersForCategoryIdentifier:v10];

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

- (id)_hiddenCategoryIdentifierForCategoryMap:(id)map
{
  categoryIdentifiers = [map categoryIdentifiers];
  v4 = [categoryIdentifiers bs_firstObjectPassingTest:&__block_literal_global_205];

  return v4;
}

- (void)_dismissHiddenExpandedPodAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  deepestNestedDescendantViewController = [(SBNestingViewController *)self deepestNestedDescendantViewController];
  v7 = objc_opt_class();
  v8 = deepestNestedDescendantViewController;
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

  folder = [v10 folder];

  v12 = objc_opt_class();
  v13 = folder;
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

  libraryCategoryIdentifier = [v15 libraryCategoryIdentifier];

  if ([libraryCategoryIdentifier predictionCategoryID] == 7)
  {
    [(SBHLibraryViewController *)self _dismissExpandedPods:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

+ (id)_updateCategoryMap:(id)map withCategoryDataFrom:(id)from
{
  fromCopy = from;
  mapCopy = map;
  v7 = [mapCopy mutableCopy];
  [v7 updateRecentlyAddedCategoryFromMap:fromCopy];

  LOBYTE(fromCopy) = BSEqualObjects();
  if (fromCopy)
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

- (void)_installCategoryMap:(id)map
{
  v29 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if ([(SBHLibraryViewController *)self isViewLoaded])
  {
    bs_isAppearingOrAppeared = [(SBHLibraryViewController *)self bs_isAppearingOrAppeared];
  }

  else
  {
    bs_isAppearingOrAppeared = 0;
  }

  v7 = SBLogLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = mapCopy;
    v27 = 1024;
    v28 = bs_isAppearingOrAppeared;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Installing category map %@ - animated %{BOOL}u", buf, 0x12u);
  }

  objc_storeStrong(&self->_libraryCategoryMap, map);
  v8 = [MEMORY[0x1E695DF70] arrayWithObject:self->_podFolderViewController];
  objc_opt_class();
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
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
        if (bs_isAppearingOrAppeared)
        {
          [v16 layoutIconListsWithAnimationType:bs_isAppearingOrAppeared - 1 forceRelayout:1];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(SBHIconLibraryTableViewController *)self->_iconTableViewController setLibraryCategoryMap:self->_libraryCategoryMap];
  v17 = MEMORY[0x1E695DFD8];
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self->_libraryCategoryMap categoryIdentifiers];
  v19 = [v17 setWithArray:categoryIdentifiers];
  [(SBHLibraryViewController *)self _precacheIconViewControllersForCategories:v19];
}

- (void)libraryTableViewControllerDidAppear:(id)appear
{
  [(SBFolderController *)self->_podFolderViewController setContentVisibility:1];

  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
}

- (void)libraryTableViewControllerDidLaunchIcon:(id)icon
{
  iconCopy = icon;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  iconCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"App Library Search launch of app '%@'", iconCopy];
  [(SBHLibraryViewController *)self _startAppLaunchResetTimer:iconCopy];

  [(SBHLibraryViewController *)self _notifyObserversOfAppLaunchOfIcon:iconCopy fromLocation:@"SBIconLocationAppLibrarySearch"];
}

- (void)_invalidateLibraryViewControllerDismissalTimer
{
  [(NSTimer *)self->_libraryViewControllerDismissalTimer invalidate];
  libraryViewControllerDismissalTimer = self->_libraryViewControllerDismissalTimer;
  self->_libraryViewControllerDismissalTimer = 0;
}

- (void)_startLibraryViewControllerDismissalTimer:(id)timer
{
  v20 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  if (self->_libraryViewControllerDismissalTimer)
  {
    [(SBHLibraryViewController *)self _invalidateLibraryViewControllerDismissalTimer];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = SBLogLibrary();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = timerCopy;
    v18 = 2114;
    v19 = uUID;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Starting App Library view controller dismissal timer for reason: %{public}@, session identifier %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__SBHLibraryViewController__startLibraryViewControllerDismissalTimer___block_invoke;
  v12[3] = &unk_1E808EB08;
  v8 = timerCopy;
  v13 = v8;
  v9 = uUID;
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

- (void)_dismissLibraryViewControllerForReason:(id)reason sessionIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  identifierCopy = identifier;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if ([(SBHLibraryViewController *)self bs_isAppearingOrAppeared]&& [(SBHLibraryViewController *)self contentVisibility]!= 2)
  {
    v9 = SBLogLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = reasonCopy;
      v12 = 2114;
      v13 = identifierCopy;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "App Library view controller dismissal timer won't dismiss for reason %{public}@, session identifier %{public}@ -- container view controller is visible and it'd be really bad if we just changed the way the UI looked while they're using it", &v10, 0x16u);
    }
  }

  else
  {
    behaviorDelegate = [(SBHLibraryViewController *)self behaviorDelegate];
    [behaviorDelegate libraryViewControllerRequestsDismissal:self];
  }
}

- (void)invalidateSearchControllerAppLaunchResetTimer
{
  [(NSTimer *)self->_searchControllerAppLaunchResetTimer invalidate];
  searchControllerAppLaunchResetTimer = self->_searchControllerAppLaunchResetTimer;
  self->_searchControllerAppLaunchResetTimer = 0;
}

- (void)_startAppLaunchResetTimer:(id)timer
{
  v20 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = SBLogLibrary();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = timerCopy;
    v18 = 2114;
    v19 = uUID;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Starting app launch reset timer for reason: %{public}@, session identifier %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E695DFF0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SBHLibraryViewController__startAppLaunchResetTimer___block_invoke;
  v12[3] = &unk_1E808EB08;
  v8 = timerCopy;
  v13 = v8;
  v9 = uUID;
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

- (void)_dismissSearchIfNotInUseForReason:(id)reason sessionIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  identifierCopy = identifier;
  [(SBHLibraryViewController *)self invalidateSearchControllerAppLaunchResetTimer];
  if ([(SBHLibrarySearchController *)self->_containerViewController bs_isAppearingOrAppeared]&& [(SBHLibraryViewController *)self contentVisibility]!= 2)
  {
    v8 = SBLogLibrary();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = reasonCopy;
      v12 = 2114;
      v13 = identifierCopy;
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
      v11 = reasonCopy;
      v12 = 2114;
      v13 = identifierCopy;
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

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  if ([(SBHLibraryViewController *)self isPresentingSearch])
  {

    [(SBHLibraryViewController *)self dismissSearch];
  }
}

- (BOOL)folderController:(id)controller iconListView:(id)view canHandleIconDropSession:(id)session
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69D4390];
  v6 = MEMORY[0x1E695DEC8];
  sessionCopy = session;
  v8 = [v6 arrayWithObjects:&v11 count:1];
  v9 = [sessionCopy hasItemsConformingToTypeIdentifiers:{v8, v11, v12}];

  if (v9)
  {
    return [(SBHLibraryViewController *)self isEditing];
  }

  else
  {
    return 0;
  }
}

- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update
{
  updateCopy = update;
  [(SBHLibraryViewController *)self _updateDragPreviewIconViewsForDropSession:updateCopy inIconListView:view];
  LODWORD(view) = [(SBHLibraryViewController *)self _canPerformDropForAnyItemInSession:updateCopy];

  if (view)
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

- (void)folderController:(id)controller iconListView:(id)view performIconDrop:(id)drop
{
  v44 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  selfCopy = self;
  iconModel = [(SBHLibraryViewController *)self iconModel];
  rootFolder = [iconModel rootFolder];
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  items = [dropCopy items];
  v9 = [items countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v29 = iconModel;
    v30 = dropCopy;
    v11 = 0;
    v12 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        sbh_appDragLocalContext = [v14 sbh_appDragLocalContext];
        v16 = [sbh_appDragLocalContext startLocation] != 4;
        v17 = [(SBHLibraryViewController *)selfCopy _iconIdentifierForDragItem:v14];
        if (v17)
        {
          [array addObject:v17];
        }

        containedIconIdentifiers = [sbh_appDragLocalContext containedIconIdentifiers];
        v19 = containedIconIdentifiers;
        if (containedIconIdentifiers)
        {
          allObjects = [containedIconIdentifiers allObjects];
          [array addObjectsFromArray:allObjects];
        }

        v11 |= v16;
      }

      v10 = [items countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);

    iconModel = v29;
    dropCopy = v30;
    if (v11)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = array;
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
            if ([(SBHLibraryViewController *)selfCopy _canPerformDropForDraggedIcon:v26])
            {
              ignoredList = [rootFolder ignoredList];
              v28 = [ignoredList addIcon:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v23);
      }

      [(SBHLibraryViewController *)selfCopy _notifyObserversOfAcceptedDrop:v30];
    }
  }

  else
  {
  }
}

- (id)folderController:(id)controller iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview
{
  viewCopy = view;
  itemCopy = item;
  previewCopy = preview;
  v12 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:itemCopy];
  iconModel = [(SBHLibraryViewController *)self iconModel];
  v14 = [iconModel leafIconForIdentifier:v12];

  v15 = [(SBHLibraryViewController *)self firstNonSuggestionsOrRecentsIconViewForIcon:v14];
  if (!v15)
  {
    v15 = [(SBHLibraryViewController *)self firstIconViewForIcon:v14];
  }

  v54 = *(MEMORY[0x1E695EFD0] + 16);
  *&v60.a = *MEMORY[0x1E695EFD0];
  *&v60.c = v54;
  *&v60.tx = *(MEMORY[0x1E695EFD0] + 32);
  [viewCopy iconContentScale];
  *&v59.a = v56;
  *&v59.c = v55;
  *&v59.tx = v53;
  CGAffineTransformScale(&v60, &v59, v16, v16);
  if (v15)
  {
    superview = [v15 superview];
    [v15 center];
    [superview convertPoint:viewCopy toView:?];
    v19 = v18;
    v21 = v20;

    v22 = objc_alloc(MEMORY[0x1E69DC9A8]);
    v59 = v60;
    v23 = [v22 initWithContainer:viewCopy center:&v59 transform:{v19, v21}];
    if (v23)
    {
LABEL_5:
      v24 = [previewCopy retargetedPreviewWithTarget:v23];
      [v24 set_springboardPlatterStyle:1];
      goto LABEL_15;
    }
  }

  else
  {
    v58 = 0;
    v25 = [(SBHLibraryViewController *)self _destinationFolderIconViewForDragItem:itemCopy folderRelativeIconIndexPath:&v58];
    v26 = v58;
    v27 = v26;
    if (v25)
    {
      if (v26 && ![v26 sbListIndex])
      {
        [v25 frameForMiniIconAtIndex:{objc_msgSend(v27, "sbIconIndex")}];
        [viewCopy convertRect:v25 fromView:?];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;
        UIRectGetCenter();
        v46 = v45;
        v48 = v47;
        [viewCopy alignmentIconSize];
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
        v34 = viewCopy;
        v35 = v46;
        v36 = v48;
      }

      else
      {
        superview2 = [v25 superview];
        [v25 center];
        [superview2 convertPoint:viewCopy toView:?];
        v30 = v29;
        v32 = v31;

        v57 = v60;
        CGAffineTransformScale(&v59, &v57, 0.01, 0.01);
        v60 = v59;
        v33 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v59 = v60;
        v34 = viewCopy;
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

- (void)folderController:(id)controller iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  v10 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:itemCopy];
  iconModel = [(SBHLibraryViewController *)self iconModel];
  v12 = [iconModel leafIconForIdentifier:v10];

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
    [animatorCopy addAnimations:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_2;
    v26[3] = &unk_1E8089000;
    v27 = v15;
    [animatorCopy addCompletion:v26];
  }

  sbh_appDragLocalContext = [itemCopy sbh_appDragLocalContext];
  portaledPreview = [sbh_appDragLocalContext portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v18 = portaledPreview;
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
    [animatorCopy addAnimations:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __99__SBHLibraryViewController_folderController_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_4;
    v21[3] = &unk_1E8089000;
    v22 = v20;
    [animatorCopy addCompletion:v21];
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

- (id)_iconIdentifierForDragItem:(id)item
{
  sbh_appDragLocalContext = [item sbh_appDragLocalContext];
  uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)_draggedItemIdentifiersInSession:(id)session
{
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = sessionCopy;
  items = [sessionCopy items];
  v7 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        sbh_appDragLocalContext = [v11 sbh_appDragLocalContext];
        v13 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:v11];
        if (v13)
        {
          [array addObject:v13];
        }

        containedIconIdentifiers = [sbh_appDragLocalContext containedIconIdentifiers];
        v15 = containedIconIdentifiers;
        if (containedIconIdentifiers)
        {
          allObjects = [containedIconIdentifiers allObjects];
          [array addObjectsFromArray:allObjects];
        }
      }

      v8 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_destinationFolderIconViewForDragItem:(id)item folderRelativeIconIndexPath:(id *)path
{
  itemCopy = item;
  v7 = [(SBHLibraryViewController *)self _iconIdentifierForDragItem:itemCopy];
  iconModel = [(SBHLibraryViewController *)self iconModel];
  v9 = [iconModel leafIconForIdentifier:v7];

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
    if (path)
    {
      *path = v23[5];
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

- (BOOL)_canPerformDropForAnyItemInSession:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  iconModel = [(SBHLibraryViewController *)self iconModel];
  [(SBHLibraryViewController *)self _draggedItemIdentifiersInSession:sessionCopy];
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

        v11 = [iconModel leafIconForIdentifier:{*(*(&v15 + 1) + 8 * i), v15}];
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

- (BOOL)_canPerformDropForDraggedIcon:(id)icon
{
  if (!icon)
  {
    return 0;
  }

  iconCopy = icon;
  iconModel = [(SBHLibraryViewController *)self iconModel];
  rootFolder = [iconModel rootFolder];
  ignoredList = [rootFolder ignoredList];

  LOBYTE(rootFolder) = [ignoredList isAllowedToContainIcon:iconCopy];
  return rootFolder;
}

- (void)_updateDragPreviewIconViewsForDropSession:(id)session inIconListView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  iconViewConfigurationOptions = [view iconViewConfigurationOptions];
  [MEMORY[0x1E6979518] begin];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = sessionCopy;
  obj = [sessionCopy items];
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

        sbh_appDragLocalContext = [*(*(&v17 + 1) + 8 * v10) sbh_appDragLocalContext];
        portaledPreview = [sbh_appDragLocalContext portaledPreview];
        if (objc_opt_respondsToSelector())
        {
          v13 = portaledPreview;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        [v14 updateDestinationIconLocation:@"SBIconLocationAppLibraryCategoryPod" allowsLabelArea:(iconViewConfigurationOptions & 2) == 0 animated:1];
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