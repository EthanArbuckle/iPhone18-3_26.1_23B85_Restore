@interface SBFolderController
+ (Class)listViewClass;
- (BOOL)_allowUserInteraction;
- (BOOL)_iconAppearsOnCurrentPage:(id)page;
- (BOOL)_isValidPageIndex:(int64_t)index;
- (BOOL)allowsGlassGroupingForCustomIconImageViewControllers;
- (BOOL)doesPageContainIconListView:(int64_t)view;
- (BOOL)folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index;
- (BOOL)folderController:(id)controller iconListView:(id)view canHandleIconDropSession:(id)session;
- (BOOL)folderController:(id)controller iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView;
- (BOOL)folderControllerShouldClose:(id)close withPinchGesture:(id)gesture;
- (BOOL)folderView:(id)view canChangeCurrentPageIndexToIndex:(int64_t)index;
- (BOOL)folderView:(id)view iconListView:(id)listView canHandleIconDropSession:(id)session;
- (BOOL)folderView:(id)view iconListView:(id)listView shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView;
- (BOOL)hasDock;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isPageControlHidden;
- (BOOL)isPresentingIconLocation:(id)location;
- (BOOL)isScrollDecelerating;
- (BOOL)isScrollDragging;
- (BOOL)isScrollTracking;
- (BOOL)isVertical;
- (BOOL)restoreExpandedPathIdentifiers:(id)identifiers;
- (BOOL)shouldOpenFolderIcon:(id)icon;
- (BOOL)shouldViewControllersAppearVisibleForIconView:(id)view;
- (BOOL)usesGlassGroup;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (Class)controllerClassForFolder:(id)folder;
- (Class)iconListViewClassForFolderView:(id)view;
- (NSArray)visibleIconListViews;
- (NSIndexPath)currentIndexPath;
- (NSSet)presentedIconLocations;
- (SBFolderController)deepestFolderController;
- (SBFolderController)initWithConfiguration:(id)configuration;
- (SBFolderController)innerFolderController;
- (SBFolderController)outerFolderController;
- (SBFolderControllerDelegate)folderDelegate;
- (SBHIconGridSizeClassDomain)gridSizeClassDomain;
- (SBHIconImageAppearance)effectiveIconImageAppearance;
- (SBHIconModel)iconModel;
- (SBIconListModel)currentIconListModel;
- (SBIconListPageControl)pageControl;
- (SBIconListView)currentIconListView;
- (SBIconViewProviding)iconViewProvider;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderView:(id)view;
- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)controller;
- (UIEdgeInsets)statusBarInsetsForOrientation:(int64_t)orientation;
- (UIView)contentView;
- (UIView)fallbackIconContainerView;
- (UIWindow)animationWindow;
- (double)currentScrollingOffset;
- (double)minimumHomeScreenScaleForFolderController:(id)controller;
- (double)minimumHomeScreenScaleForFolderView:(id)view;
- (double)pageControlAlpha;
- (id)_dragDelegate;
- (id)_makeContentViewWithConfiguration:(id)configuration;
- (id)_newAnimatorForZoomUp:(BOOL)up;
- (id)accessibilityTintColorForScreenRect:(CGRect)rect;
- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options;
- (id)borrowScalingView;
- (id)cancelTouchesForAllCustomIconImageViewControllersForReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)disableAutoScrollForReason:(id)reason;
- (id)fakeStatusBarForFolderController:(id)controller;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options;
- (id)firstIconViewWithOptions:(unint64_t)options iconPassingTest:(id)test;
- (id)folderController:(id)controller accessibilityTintColorForScreenRect:(CGRect)rect;
- (id)folderController:(id)controller iconAnimatorForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated initialDelay:(double *)delay;
- (id)folderController:(id)controller iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update;
- (id)folderController:(id)controller iconListView:(id)view iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView;
- (id)folderController:(id)controller iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview;
- (id)folderControllerForFolder:(id)folder;
- (id)folderControllerWantsToHideStatusBar:(id)bar animated:(BOOL)animated;
- (id)folderView:(id)view accessibilityTintColorForRect:(CGRect)rect;
- (id)folderView:(id)view iconListView:(id)listView customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)folderView:(id)view iconListView:(id)listView iconDropSessionDidUpdate:(id)update;
- (id)folderView:(id)view iconListView:(id)listView iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView;
- (id)folderView:(id)view iconListView:(id)listView previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview;
- (id)iconListViewAtIndex:(unint64_t)index;
- (id)iconListViewAtPoint:(CGPoint)point;
- (id)iconListViewForDrag:(id)drag;
- (id)iconListViewForIconListModelIndex:(unint64_t)index;
- (id)iconListViewForTouch:(id)touch;
- (id)iconListViewWithIconListModel:(id)model;
- (id)iconLocation;
- (id)iconLocationForFolderView:(id)view;
- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options;
- (id)keepIconImageViewControllersSnapshotsOfType:(unint64_t)type inAllPagesExcluding:(id)excluding forReason:(id)reason;
- (id)keyCommands;
- (id)matchMoveSourceViewForIconView:(id)view;
- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (id)nestingViewController:(id)controller sourceViewForPresentingViewController:(id)viewController;
- (id)pageViewControllersForLeadingPageIndex:(int64_t)index trailingPageIndex:(int64_t)pageIndex;
- (id)preferredFocusEnvironments;
- (id)statusBarStyleRequestForFolderController:(id)controller;
- (id)succinctDescription;
- (id)viewControllersForPageIndex:(int64_t)index;
- (id)visiblePageViewControllers;
- (int64_t)pageIndexForIconListModelIndex:(unint64_t)index;
- (int64_t)pageIndexForIconListViewIndex:(unint64_t)index;
- (int64_t)userInterfaceLayoutDirection;
- (unint64_t)_depth;
- (unint64_t)effectiveContentVisibility;
- (unint64_t)effectiveContentVisibilityFolderHasInnerFolder:(BOOL)folder;
- (unint64_t)iconListModelIndexForPageIndex:(int64_t)index;
- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)index;
- (unint64_t)iconListViewIndexForPageIndex:(int64_t)index;
- (unint64_t)userInterfaceLayoutDirectionHandling;
- (void)_acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:(id)view;
- (void)_addFakeStatusBarView;
- (void)_beginTrackingIconViewWithCustomImageViewController:(id)controller;
- (void)_cancelCloseFolderTimer;
- (void)_cancelTouchesForAllCustomIconImageViewControllers;
- (void)_cancelTouchesForCustomIconImageViewController:(id)controller;
- (void)_clearIconAnimator;
- (void)_closeFolder;
- (void)_closeFolderTimerFired;
- (void)_compactFolder;
- (void)_configureForInnerFolderController:(id)controller;
- (void)_disableTouchesOnAllCustomIconImageViewControllers;
- (void)_enableTouchesOnAllCustomIconImageViewControllers;
- (void)_endTrackingIconViewWithCustomImageViewController:(id)controller;
- (void)_fadeHomescreenAndDockIfNecessaryForFolderOpen:(BOOL)open;
- (void)_handleEndEditingKeyCommand:(id)command;
- (void)_hideFakeStatusBarForReason:(id)reason animated:(BOOL)animated;
- (void)_hideStatusBarForReason:(id)reason animated:(BOOL)animated;
- (void)_invalidateAllCancelTouchesAssertions;
- (void)_removeFakeStatusBarAndAssertionIfExists;
- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)assertion;
- (void)_resetFakeStatusBarFrameOnly;
- (void)_resetFakeStatusBarMatchMoveAnimation;
- (void)_resetFakeStatusBarSettingsIfNecessary;
- (void)_resetIconLists;
- (void)_setCloseFolderTimerIfNecessary;
- (void)_setHomescreenAndDockAlpha:(double)alpha;
- (void)_unhideFakeStatusBarForReason:(id)reason animated:(BOOL)animated;
- (void)_unhideStatusBarForReason:(id)reason;
- (void)_updateAssociatedControllerStateAnimated:(BOOL)animated;
- (void)_updateFolderRequiredTrailingEmptyListCount;
- (void)_updateHomescreenAndDockFade;
- (void)_updatePresentationModeForIconView:(id)view;
- (void)_updatePresentationModeForIconViews;
- (void)_updateStateOfAssociatedController:(id)controller animated:(BOOL)animated;
- (void)addAssertionsFromInnerFolderController:(id)controller;
- (void)beginEditingTitle;
- (void)cancelScrolling;
- (void)configureInnerFolderControllerConfiguration:(id)configuration;
- (void)dealloc;
- (void)delegateDidChange;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)fadeContentForMagnificationFraction:(double)fraction;
- (void)fadeContentForMinificationFraction:(double)fraction;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)folderController:(id)controller draggedIconShouldDropFromListView:(id)view;
- (void)folderController:(id)controller iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)folderController:(id)controller iconListView:(id)view iconDropSessionDidEnter:(id)enter;
- (void)folderController:(id)controller iconListView:(id)view iconDropSessionDidExit:(id)exit;
- (void)folderController:(id)controller iconListView:(id)view performIconDrop:(id)drop;
- (void)folderController:(id)controller iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView;
- (void)folderController:(id)controller iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item;
- (void)folderController:(id)controller willCreateInnerFolderControllerWithConfiguration:(id)configuration;
- (void)folderController:(id)controller willRemoveFakeStatusBar:(id)bar;
- (void)folderController:(id)controller willUseIconTransitionAnimator:(id)animator forOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated;
- (void)folderControllerDidClose:(id)close;
- (void)folderControllerDidEndScrolling:(id)scrolling;
- (void)folderControllerDidOpen:(id)open;
- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic;
- (void)folderControllerShouldEndEditing:(id)editing;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)folderControllerWillClose:(id)close;
- (void)folderControllerWillOpen:(id)open;
- (void)folderView:(id)view currentPageIndexDidChange:(int64_t)change;
- (void)folderView:(id)view didAddIconListView:(id)listView;
- (void)folderView:(id)view iconListView:(id)listView iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)folderView:(id)view iconListView:(id)listView iconDropSessionDidEnter:(id)enter;
- (void)folderView:(id)view iconListView:(id)listView iconDropSessionDidExit:(id)exit;
- (void)folderView:(id)view iconListView:(id)listView performIconDrop:(id)drop;
- (void)folderView:(id)view iconListView:(id)listView springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView;
- (void)folderView:(id)view iconListView:(id)listView willUseIconView:(id)iconView forDroppingIconDragItem:(id)item;
- (void)folderView:(id)view willAnimateScrollToPageIndex:(int64_t)index;
- (void)folderViewDidChangeOrientation:(id)orientation;
- (void)folderViewDidEndScrolling:(id)scrolling;
- (void)folderViewShouldBeginEditing:(id)editing;
- (void)folderViewShouldClose:(id)close withPinchGesture:(id)gesture;
- (void)folderViewShouldEndEditing:(id)editing;
- (void)folderViewWillBeginScrolling:(id)scrolling;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller;
- (void)iconViewDidDismissContextMenu:(id)menu;
- (void)iconViewWillPresentContextMenu:(id)menu;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)loadView;
- (void)minimumHomeScreenScaleDidChange;
- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator;
- (void)noteIconDrag:(id)drag didChangeInIconListView:(id)view;
- (void)noteIconDrag:(id)drag didEnterIconListView:(id)view;
- (void)noteIconDrag:(id)drag didExitIconListView:(id)view;
- (void)noteIconDragDidEnd:(id)end;
- (void)parentDelegateDidChange;
- (void)performWhenScrollingEndsUsingBlock:(id)block;
- (void)popFolderAnimated:(BOOL)animated completion:(id)completion;
- (void)prepareToLaunchTappedIcon:(id)icon completionHandler:(id)handler;
- (void)pushFolderIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)removeAssertionsFromInnerFolderController:(id)controller;
- (void)returnScalingView;
- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler;
- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)handler;
- (void)setContentAlpha:(double)alpha;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setCurrentPageIndexToListDirectlyContainingIcon:(id)icon animated:(BOOL)animated completion:(id)completion;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolder:(id)folder;
- (void)setFolderDelegate:(id)delegate;
- (void)setFolderIconImageCache:(id)cache;
- (void)setFolderIconView:(id)view;
- (void)setIconImageCache:(id)cache;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)visible;
- (void)setOpen:(BOOL)open;
- (void)setOrientation:(int64_t)orientation;
- (void)setPageControlAlpha:(double)alpha;
- (void)setPageControlHidden:(BOOL)hidden;
- (void)setScrollingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setUsesGlassGroup:(BOOL)group;
- (void)unscatterAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion;
- (void)updateAfterIconStyleChange;
- (void)updateAppearanceStateForPageViewControllers:(BOOL)controllers;
- (void)updateContentViewOcclusion;
- (void)updatePresentationModeFolderContextForIconView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBFolderController

- (SBFolderController)innerFolderController
{
  nestedViewController = [(SBNestingViewController *)self nestedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = nestedViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateContentViewOcclusion
{
  folderView = [(SBFolderController *)self folderView];
  [folderView setContentVisibility:{-[SBFolderController effectiveContentVisibility](self, "effectiveContentVisibility")}];
}

- (UIView)contentView
{
  [(SBFolderController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (unint64_t)effectiveContentVisibility
{
  innerFolderController = [(SBFolderController *)self innerFolderController];
  v4 = innerFolderController != 0;

  return [(SBFolderController *)self effectiveContentVisibilityFolderHasInnerFolder:v4];
}

- (SBFolderController)deepestFolderController
{
  innerFolderController = [(SBFolderController *)self innerFolderController];
  if (innerFolderController)
  {
    innerFolderController2 = innerFolderController;
    v4 = 0;
    do
    {
      v5 = innerFolderController2;

      innerFolderController2 = [v5 innerFolderController];

      v4 = v5;
    }

    while (innerFolderController2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDock
{
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  return isRootFolder;
}

- (void)_cancelTouchesForAllCustomIconImageViewControllers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBFolderController *)self _cancelTouchesForCustomIconImageViewController:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)visiblePageViewControllers
{
  folderView = [(SBFolderController *)self folderView];
  if (([folderView _isValidPageIndex:self->_leadingVisiblePageIndex] & 1) == 0)
  {
    [folderView getLeadingVisiblePageIndex:&self->_leadingVisiblePageIndex trailingVisiblePageIndex:&self->_trailingVisiblePageIndex];
  }

  v4 = [(SBFolderController *)self pageViewControllersForLeadingPageIndex:self->_leadingVisiblePageIndex trailingPageIndex:self->_trailingVisiblePageIndex];

  return v4;
}

- (SBFolderControllerDelegate)folderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_folderDelegate);

  return WeakRetained;
}

- (void)_invalidateAllCancelTouchesAssertions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_iconViewCustomImageViewControllerTouchCancellationAssertions objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_iconViewCustomImageViewControllerTouchCancellationAssertions removeAllObjects];
  [(SBFolderController *)self _enableTouchesOnAllCustomIconImageViewControllers];
}

- (void)_enableTouchesOnAllCustomIconImageViewControllers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_iconViewsWithCustomImageViewControllers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setCustomIconImageViewHitTestingDisabled:{0, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (SBIconListView)currentIconListView
{
  folderView = [(SBFolderController *)self folderView];
  currentIconListView = [folderView currentIconListView];

  return currentIconListView;
}

- (UIWindow)animationWindow
{
  animationContext = [(SBFolderController *)self animationContext];
  animationWindow = [animationContext animationWindow];

  return animationWindow;
}

- (SBHIconModel)iconModel
{
  folder = [(SBFolderController *)self folder];
  rootFolder = [folder rootFolder];

  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    model = [rootFolder model];
  }

  else
  {
    model = 0;
  }

  return model;
}

- (SBIconListPageControl)pageControl
{
  folderView = [(SBFolderController *)self folderView];
  pageControl = [folderView pageControl];

  return pageControl;
}

- (id)iconLocation
{
  iconListViews = [(SBFolderController *)self iconListViews];
  firstObject = [iconListViews firstObject];

  if (firstObject)
  {
    iconLocation = [firstObject iconLocation];
  }

  else
  {
    iconLocation = @"SBIconLocationNone";
  }

  v5 = iconLocation;

  return v5;
}

- (void)_resetIconLists
{
  [(SBFolderView *)self->_contentView resetIconListViews];
  innerFolderController = [(SBFolderController *)self innerFolderController];
  [innerFolderController _resetIconLists];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBFolderController;
  [(SBFolderController *)&v4 viewDidLoad];
  [(SBFolderController *)self _resetIconLists];
  folderView = [(SBFolderController *)self folderView];
  [folderView setEditing:-[SBFolderController isEditing](self animated:{"isEditing"), 0}];
  [folderView setContentVisibility:{-[SBFolderController effectiveContentVisibility](self, "effectiveContentVisibility")}];
  [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self defaultPageIndex] animated:0];
  [(SBFolderController *)self updateAppearanceStateForPageViewControllers:1];
}

- (id)borrowScalingView
{
  folderView = [(SBFolderController *)self folderView];
  borrowScalingView = [folderView borrowScalingView];

  return borrowScalingView;
}

- (void)returnScalingView
{
  folderView = [(SBFolderController *)self folderView];
  [folderView returnScalingView];
}

- (void)_compactFolder
{
  folder = [(SBFolderController *)self folder];
  [folder compactLists];
}

- (int64_t)userInterfaceLayoutDirection
{
  folderView = [(SBFolderController *)self folderView];
  userInterfaceLayoutDirection = [folderView userInterfaceLayoutDirection];

  return userInterfaceLayoutDirection;
}

- (void)_updatePresentationModeForIconViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_iconViewsWithCustomImageViewControllers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBFolderController *)self _updatePresentationModeForIconView:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_disableTouchesOnAllCustomIconImageViewControllers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_iconViewsWithCustomImageViewControllers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setCustomIconImageViewHitTestingDisabled:{1, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (SBIconListModel)currentIconListModel
{
  folderView = [(SBFolderController *)self folderView];
  currentIconListModel = [folderView currentIconListModel];

  return currentIconListModel;
}

- (SBFolderController)initWithConfiguration:(id)configuration
{
  v34[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = SBFolderController;
  v5 = [(SBNestingViewController *)&v33 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    listLayoutProvider = [configurationCopy listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = listLayoutProvider;

    v5->_orientation = [configurationCopy orientation];
    v5->_allowedOrientations = [configurationCopy allowedOrientations];
    originatingIconLocation = [configurationCopy originatingIconLocation];
    v11 = [originatingIconLocation copy];
    originatingIconLocation = v5->_originatingIconLocation;
    v5->_originatingIconLocation = v11;

    iconViewProvider = [configurationCopy iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, iconViewProvider);

    animationContext = [configurationCopy animationContext];
    animationContext = v5->_animationContext;
    v5->_animationContext = animationContext;

    folderDelegate = [configurationCopy folderDelegate];
    objc_storeWeak(&v5->_folderDelegate, folderDelegate);

    legibilitySettings = [configurationCopy legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = legibilitySettings;

    headerView = [configurationCopy headerView];
    headerView = v5->_headerView;
    v5->_headerView = headerView;

    folderIconImageCache = [configurationCopy folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = folderIconImageCache;

    iconImageCache = [configurationCopy iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = iconImageCache;

    v5->_addsFocusGuidesForWrapping = [configurationCopy addsFocusGuidesForWrapping];
    v5->_contentVisibility = 0;
    [configurationCopy additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v25;
    v5->_requiresGlassGroupingForCustomIconImageViewControllers = [configurationCopy requiresGlassGroupingForCustomIconImageViewControllers];
    delegate = [configurationCopy delegate];
    [(SBNestingViewController *)v5 setDelegate:delegate];

    folder = [configurationCopy folder];
    [(SBFolderController *)v5 setFolder:folder];
    [(SBFolderController *)v5 setCurrentPageIndex:[(SBFolderController *)v5 defaultPageIndex] animated:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_iconViewWillPresentContextMenu_ name:@"SBIconViewWillPresentContextMenuNotification" object:0];
    [defaultCenter addObserver:v5 selector:sel_iconViewDidDismissContextMenu_ name:@"SBIconViewDidDismissContextMenuNotification" object:0];
    v29 = objc_opt_self();
    v34[0] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v31 = [(SBFolderController *)v5 registerForTraitChanges:v30 withTarget:v5 action:sel_updateAfterIconStyleChange];
  }

  return v5;
}

- (void)dealloc
{
  v33 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconViewWillPresentContextMenuNotification" object:0];
  [defaultCenter removeObserver:self name:@"SBIconViewDidDismissContextMenuNotification" object:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  extraAssertions = [(SBFolderController *)self extraAssertions];
  allValues = [extraAssertions allValues];

  v6 = [allValues countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = SBLogRootController();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = v19;
          v31 = v11;
          _os_log_fault_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_FAULT, "Invalidating assertion:%@ in SBFolderController dealloc, because it was not invalidated and/or removed earlier", buf, 0xCu);
        }

        [v11 invalidate];
        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_iconViewGlassGroupingDisabledAssertions;
  v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectForKey:*(*(&v21 + 1) + 8 * i), v19];
        [v18 invalidate];
      }

      v15 = [(NSMapTable *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  [(BSInvalidatable *)self->_scrollingLightUpdatesAssertion invalidate];
  v20.receiver = self;
  v20.super_class = SBFolderController;
  [(SBFolderController *)&v20 dealloc];
}

- (void)setFolderDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_folderDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_folderDelegate, obj);
    [(SBFolderController *)self delegateDidChange];
    innerFolderController = [(SBFolderController *)self innerFolderController];
    [innerFolderController parentDelegateDidChange];

    v5 = obj;
  }
}

- (void)delegateDidChange
{
  folderViewIfLoaded = [(SBFolderController *)self folderViewIfLoaded];
  [folderViewIfLoaded updateAccessibilityTintColors];
}

- (void)parentDelegateDidChange
{
  innerFolderController = [(SBFolderController *)self innerFolderController];
  [innerFolderController parentDelegateDidChange];

  folderViewIfLoaded = [(SBFolderController *)self folderViewIfLoaded];
  [folderViewIfLoaded updateAccessibilityTintColors];
}

- (void)loadView
{
  configuration = [(SBFolderController *)self configuration];
  v3 = [(SBFolderController *)self _makeContentViewWithConfiguration:configuration];
  contentView = self->_contentView;
  self->_contentView = v3;

  [(SBFolderView *)self->_contentView setDelegate:self];
  [(SBFolderController *)self setConfiguration:0];
  v5 = [[SBFolderContainerView alloc] initWithFolderView:self->_contentView];
  containerView = self->_containerView;
  self->_containerView = v5;

  [(SBFolderController *)self setView:self->_containerView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v23 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isDisappearingOrDisappeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v19.receiver = self;
  v19.super_class = SBFolderController;
  [(SBNestingViewController *)&v19 viewWillAppear:appearCopy];
  [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _viewControllersToNotifyForViewObscuration = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138543362;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_viewControllersToNotifyForViewObscuration);
        }

        [*(*(&v15 + 1) + 8 * v10) bs_beginAppearanceTransition:1 animated:{appearCopy, v14}];
        v11 = SBLogRootController();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = v14;
          v21 = v13;
          _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "viewWillAppear:%{public}@", buf, 0xCu);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v8);
  }

  [(SBFolderController *)self updateContentViewOcclusion];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v23 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isDisappearingOrDisappeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v19.receiver = self;
  v19.super_class = SBFolderController;
  [(SBNestingViewController *)&v19 viewDidAppear:appearCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _viewControllersToNotifyForViewObscuration = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 138543362;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_viewControllersToNotifyForViewObscuration);
        }

        [*(*(&v15 + 1) + 8 * v10) bs_endAppearanceTransition:{1, v14}];
        v11 = SBLogRootController();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          *buf = v14;
          v21 = v13;
          _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "viewDidAppear:%{public}@", buf, 0xCu);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v8);
  }

  [(SBFolderController *)self updateContentViewOcclusion];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v24 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isAppearingOrAppeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v18.receiver = self;
  v18.super_class = SBFolderController;
  [(SBNestingViewController *)&v18 viewWillDisappear:disappearCopy];
  [(SBFolderController *)self _cancelTouchesForAllCustomIconImageViewControllers];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  _viewControllersToNotifyForViewObscuration = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_viewControllersToNotifyForViewObscuration);
        }

        [*(*(&v14 + 1) + 8 * i) bs_beginAppearanceTransition:0 animated:disappearCopy];
        v10 = SBLogRootController();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 67109378;
          v20 = disappearCopy;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "viewWillDisappear:%{public:BOOL}d %{public}@", buf, 0x12u);
        }
      }

      v7 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v7);
  }

  [(SBFolderController *)selfCopy updateContentViewOcclusion];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v24 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isAppearingOrAppeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v18.receiver = self;
  v18.super_class = SBFolderController;
  [(SBNestingViewController *)&v18 viewDidDisappear:disappearCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  _viewControllersToNotifyForViewObscuration = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_viewControllersToNotifyForViewObscuration);
        }

        [*(*(&v14 + 1) + 8 * i) bs_endAppearanceTransition:0];
        v10 = SBLogRootController();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 67109378;
          v20 = disappearCopy;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "viewDidDisappear:%{public:BOOL}d %{public}@", buf, 0x12u);
        }
      }

      v7 = [_viewControllersToNotifyForViewObscuration countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v7);
  }

  [(SBFolderController *)selfCopy updateContentViewOcclusion];
}

- (id)keyCommands
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBFolderController;
  keyCommands = [(SBFolderController *)&v7 keyCommands];
  if ([(SBFolderController *)self isEditing])
  {
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__handleEndEditingKeyCommand_];
    [v4 setRepeatBehavior:2];
    if (keyCommands)
    {
      v5 = [keyCommands arrayByAddingObject:v4];

      keyCommands = v5;
    }

    else
    {
      v8[0] = v4;
      keyCommands = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }
  }

  return keyCommands;
}

- (id)nestingViewController:(id)controller animationControllerForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (controllerCopy == self && operation == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = viewControllerCopy;
      folderContainerView = [(SBFolderController *)self folderContainerView];
      folderContainerView2 = [v12 folderContainerView];

      [folderContainerView setChildFolderContainerView:folderContainerView2];
    }
  }

  v30.receiver = self;
  v30.super_class = SBFolderController;
  v15 = [(SBNestingViewController *)&v30 nestingViewController:controllerCopy animationControllerForOperation:operation onViewController:viewControllerCopy animated:animatedCopy];
  delegate = [(SBNestingViewController *)self delegate];
  if (!v15 && (objc_opt_respondsToSelector() & 1) == 0 && animatedCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v27 = controllerCopy;
    v18 = viewControllerCopy;
    folderDelegate = [(SBFolderController *)self folderDelegate];
    v29 = 0.0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_29;
      }

      v22 = [folderDelegate folderController:self iconAnimatorForOperation:operation onViewController:v18 animated:1 initialDelay:&v29];
LABEL_25:
      if (v22)
      {
        v15 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v22 childViewController:v18 operation:operation != 1];
        [(SBHomeScreenIconTransitionAnimator *)v15 setInitialDelay:v29];
        if (objc_opt_respondsToSelector())
        {
          [folderDelegate folderController:self willUseIconTransitionAnimator:v15 forOperation:operation onViewController:v18 animated:1];
        }

        goto LABEL_30;
      }

LABEL_29:
      v15 = 0;
LABEL_30:

      goto LABEL_6;
    }

    v19 = v18;
    folder = [v19 folder];
    icon = [folder icon];

    if (icon && [(SBScaleIconZoomAnimator *)SBFolderIconZoomAnimator validateAnimationContainer:v27 targetIcon:icon])
    {
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v22 = [[SBFolderIconZoomAnimator alloc] initWithAnimationContainer:v27 innerFolderController:v19 folderIcon:icon];
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v23 = SBLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SBFolderController nestingViewController:animationControllerForOperation:onViewController:animated:];
      }

      UIAccessibilityIsReduceMotionEnabled();
    }

    v24 = [SBIconFadeAnimator alloc];
    [v19 contentView];
    v25 = v26 = v18;
    v22 = [(SBIconFadeAnimator *)v24 initWithAnimationContainer:v27 crossfadeView:v25];

    v18 = v26;
    [(SBFolderIconZoomAnimator *)v22 setFadesReferenceView:0];
    goto LABEL_24;
  }

LABEL_6:

  return v15;
}

- (void)nestingViewController:(id)controller willPerformOperation:(int64_t)operation onViewController:(id)viewController withTransitionCoordinator:(id)coordinator
{
  viewControllerCopy = viewController;
  coordinatorCopy = coordinator;
  v12 = operation == 1;
  v13 = viewControllerCopy;
  if (controller != self)
  {
    backgroundView = self->_backgroundView;
    controllerCopy = controller;
    [(SBFolderControllerBackgroundView *)backgroundView setFrozen:operation == 1];
    [(SBFolderController *)self _resetFakeStatusBarSettingsIfNecessary];
    goto LABEL_25;
  }

  controllerCopy2 = controller;
  if (![(SBFolderController *)self doesPageContainIconListView:[(SBFolderController *)self currentPageIndex]])
  {
    [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self defaultPageIndex] animated:0];
  }

  objc_opt_class();
  v17 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  v41 = v13;
  operationCopy = operation;
  if (objc_opt_isKindOfClass())
  {
    v18 = v13;
    v19 = v18;
    if (operation == 1)
    {
      if (v18)
      {
LABEL_11:
        v20 = [SBFolderControllerBackgroundView alloc];
        folderView = [(SBFolderController *)self folderView];
        [folderView bounds];
        v22 = [(SBFolderControllerBackgroundView *)v20 initWithFrame:?];
        v23 = self->_backgroundView;
        self->_backgroundView = v22;

        [(SBFolderControllerBackgroundView *)self->_backgroundView setDelegate:self];
        if (v19)
        {
          [(SBFolderController *)self _configureForInnerFolderController:v19];
          folderContainerView = [(SBFolderController *)self folderContainerView];
          folderContainerView2 = [v19 folderContainerView];
          [folderContainerView setChildFolderContainerView:folderContainerView2];
          [folderContainerView insertSubview:self->_backgroundView belowSubview:folderContainerView2];
          [folderContainerView setBackgroundView:self->_backgroundView];

          [(SBFolderController *)self _addFakeStatusBarView];
          innerFolderController = 0;
          v17 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
LABEL_16:
          if ([coordinatorCopy isAnimated])
          {
            [(SBFolderController *)self setAnimating:1];
          }

          aBlock = MEMORY[0x1E69E9820];
          v63 = v17[128];
          v27 = v63;
          v64 = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
          v65 = &unk_1E80893F0;
          selfCopy = self;
          v28 = v19;
          v67 = v28;
          v29 = _Block_copy(&aBlock);
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = v27;
          v59[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2;
          v59[3] = &unk_1E808D3C8;
          v61 = v12;
          v59[4] = self;
          v60 = v29;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = v27;
          v55[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3;
          v55[3] = &unk_1E808D3F0;
          v55[4] = self;
          v58 = v12;
          v40 = v28;
          v56 = v40;
          v38 = innerFolderController;
          v57 = v38;
          v30 = v29;
          [coordinatorCopy animateAlongsideTransition:v59 completion:v55];

          goto LABEL_21;
        }

        innerFolderController = 0;
        v17 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
        goto LABEL_20;
      }

LABEL_10:
      v19 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if (operation == 1)
    {
      goto LABEL_10;
    }

    v19 = 0;
  }

  innerFolderController = [(SBFolderController *)self innerFolderController];
  if (v19)
  {
    [(SBFolderController *)self _configureForInnerFolderController:0];
    goto LABEL_16;
  }

LABEL_20:
  v38 = innerFolderController;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4;
  v52[3] = &unk_1E808D418;
  v54 = v12;
  v53 = v13;
  [coordinatorCopy animateAlongsideTransition:0 completion:v52];

  v40 = 0;
LABEL_21:
  v31 = v12;
  v32 = v17;
  folderView2 = [(SBFolderController *)self folderView];
  isAnimated = [coordinatorCopy isAnimated];
  transitionAnimationFactory = [coordinatorCopy transitionAnimationFactory];
  settings = [transitionAnimationFactory settings];
  [folderView2 willTransitionAnimated:isAnimated withSettings:settings];

  operation = operationCopy;
  if (operationCopy == 1)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  [(SBFolderControllerBackgroundView *)self->_backgroundView setExpanding:operationCopy == 1];
  [(SBFolderController *)self fadeContentForMagnificationFraction:v37];
  v46 = MEMORY[0x1E69E9820];
  v47 = v32[128];
  v48 = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_5;
  v49 = &unk_1E808D418;
  v51 = v31;
  selfCopy2 = self;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = v47;
  v44[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_7;
  v44[3] = &unk_1E808D418;
  v45 = v31;
  v44[4] = self;
  [coordinatorCopy animateAlongsideTransition:&v46 completion:v44];

  v13 = v41;
LABEL_25:
  v43.receiver = self;
  v43.super_class = SBFolderController;
  [(SBNestingViewController *)&v43 nestingViewController:controller willPerformOperation:operation onViewController:v13 withTransitionCoordinator:coordinatorCopy];
}

void __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke(uint64_t a1, int a2)
{
  [*(*(a1 + 32) + 1064) bs_setHitTestingDisabled:a2 ^ 1u];
  v4 = [*(a1 + 40) view];
  [v4 bs_setHitTestingDisabled:a2 ^ 1u];
}

void __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isInteractive] & 1) == 0)
  {
    if ([v3 isCancelled])
    {
      [*(a1 + 32) _fadeHomescreenAndDockIfNecessaryForFolderOpen:(*(a1 + 48) & 1) == 0];
    }

    else
    {
      [v3 transitionWasRestarted];
      [*(a1 + 32) _fadeHomescreenAndDockIfNecessaryForFolderOpen:*(a1 + 48)];
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 isCancelled];
  if (v3)
  {
    if (*(a1 + 56))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    [*(a1 + 32) _configureForInnerFolderController:v4];
  }

  result = [*(a1 + 32) setAnimating:0];
  v6 = *(a1 + 56);
  if ((v3 | v6 ^ 1))
  {
    if ((v3 | v6) != 1 || ((v3 ^ 1 | v6 ^ 1) & 1) == 0)
    {
      v8 = [*(a1 + 32) folderContainerView];
      [v8 setChildFolderContainerView:0];

      [*(a1 + 32) _removeFakeStatusBar];
      [*(a1 + 32) removeAssertionsFromInnerFolderController:*(a1 + 48)];
      v9 = *(a1 + 48);

      return [v9 setFolderDelegate:0];
    }
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 _compactFolder];
  }

  return result;
}

void __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 isCancelled] == *(a1 + 40))
  {
    v3 = [*(a1 + 32) view];
    [v3 removeFromSuperview];
  }
}

void __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isInteractive] & 1) == 0)
  {
    v4 = [v3 isCancelled];
    v5 = [v3 transitionWasRestarted];
    v6 = *(a1 + 40) ^ 1;
    if (((v6 & 1) != 0 || v4) && (v6 & v4 & 1) == 0)
    {
      v8 = 0;
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
      v8 = 1;
    }

    if ([v3 isAnimated])
    {
      v9 = +[SBHHomeScreenDomain rootSettings];
      v10 = [v9 iconAnimationSettings];

      if (v8)
      {
        [v10 folderOpenSettings];
      }

      else
      {
        [v10 folderCloseSettings];
      }
      v11 = ;
      v12 = MEMORY[0x1E698E7D0];
      v13 = [v11 outerFolderFadeSettings];
      v14 = [v13 BSAnimationSettings];
      v15 = [v12 factoryWithSettings:v14];

      [v15 setAllowsAdditiveAnimations:1];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_6;
      v23 = &unk_1E8088CB8;
      if ((v4 | v5))
      {
        v16 = 614;
      }

      else
      {
        v16 = 610;
      }

      v24 = *(a1 + 32);
      v25 = v7;
      [MEMORY[0x1E698E7D0] animateWithFactory:v15 additionalDelay:v16 options:&v20 actions:0.0];
    }

    else
    {
      [*(a1 + 32) fadeContentForMagnificationFraction:v7];
    }

    v17 = *(*(a1 + 32) + 1064);
    v18 = v17;
    if (v4)
    {
      [v17 setTransitionCancelled:1];
      v19 = *(a1 + 40) ^ 1;
    }

    else
    {
      [v17 setTransitionCancelled:0];
      v19 = *(a1 + 40);
    }

    [v18 setEffectActive:{v19 & 1, v20, v21, v22, v23}];
  }
}

void __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled] == *(a1 + 40))
  {
    [*(*(a1 + 32) + 1064) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1064);
    *(v4 + 1064) = 0;
  }

  v7 = [*(a1 + 32) folderView];
  v6 = [v3 isAnimated];

  [v7 didTransitionAnimated:v6];
}

- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  folderIconView = [(SBFolderController *)self folderIconView];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  [(SBFolderController *)self setOpen:operation == 1];
  if ([coordinatorCopy isAnimated])
  {
    [(SBFolderController *)self setAnimating:1];
  }

  folderView = [(SBFolderController *)self folderView];
  if (operation == 1)
  {
    -[SBFolderController setCurrentPageIndex:animated:](self, "setCurrentPageIndex:animated:", [folderIconView visibleMiniIconListIndex], 0);
    if (!IsReduceMotionEnabled)
    {
      [folderIconView setAllIconElementsButLabelHidden:1];
    }

    [(SBFolderController *)self folderControllerWillOpen:self];
    v13 = 1.0;
  }

  else
  {
    v14 = [folderView iconListViewIndexForPageIndex:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
    if (self->_isEditing)
    {
      [folderIconView scrollToGapOrTopIfFullOfPage:v14 animated:0];
    }

    else
    {
      [folderIconView scrollToTopOfPage:v14 animated:0];
    }

    [(SBFolderController *)self folderControllerWillClose:self];
    v13 = 0.0;
  }

  v15 = !IsReduceMotionEnabled;
  isAnimated = [coordinatorCopy isAnimated];
  transitionAnimationFactory = [coordinatorCopy transitionAnimationFactory];
  settings = [transitionAnimationFactory settings];
  [folderView willTransitionAnimated:isAnimated withSettings:settings];

  [(SBFolderController *)self fadeContentForMinificationFraction:v13];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke;
  v24[3] = &unk_1E808D440;
  v27 = v15;
  v28 = operation == 1;
  v25 = folderIconView;
  selfCopy = self;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke_3;
  v21[3] = &unk_1E808D468;
  v23 = operation == 1;
  v21[4] = self;
  v22 = v25;
  v19 = v25;
  [coordinatorCopy animateAlongsideTransition:v24 completion:v21];
  v20.receiver = self;
  v20.super_class = SBFolderController;
  [(SBNestingViewController *)&v20 viewWillTransitionToSize:operation forOperation:coordinatorCopy withTransitionCoordinator:width, height];
}

void __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isCancelled];
  v5 = v4;
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = 1.0;
    if ((v4 ^ *(a1 + 49)))
    {
      v6 = 0.0;
    }

    [*(a1 + 32) setAlpha:v6];
  }

  if (([v3 isInteractive] & 1) == 0)
  {
    v7 = *(a1 + 49);
    if (((v7 | v5) & 1) != 0 && (v7 & v5) != 1)
    {
      v9 = 0;
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
      v9 = 1;
    }

    v10 = [v3 transitionWasRestarted];
    if ([v3 isAnimated])
    {
      v11 = +[SBHHomeScreenDomain rootSettings];
      v12 = [v11 iconAnimationSettings];

      v21 = v9;
      if (v9)
      {
        [v12 folderCloseSettings];
      }

      else
      {
        [v12 folderOpenSettings];
      }
      v13 = ;
      v14 = MEMORY[0x1E698E7D0];
      v15 = [v13 innerFolderFadeSettings];
      v16 = [v15 BSAnimationSettings];
      v17 = [v14 factoryWithSettings:v16];

      [v17 setAllowsAdditiveAnimations:1];
      v18 = v5 | v10;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke_2;
      v22[3] = &unk_1E8088CB8;
      if (v18)
      {
        v19 = 614;
      }

      else
      {
        v19 = 610;
      }

      v22[4] = *(a1 + 40);
      *&v22[5] = v8;
      [MEMORY[0x1E698E7D0] animateWithFactory:v17 additionalDelay:v19 options:v22 actions:0.0];

      v9 = v21;
      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [*(a1 + 40) fadeContentForMinificationFraction:v8];
      if (((v5 | v10) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    [*(a1 + 40) setOpen:*(a1 + 49) != v5];
    v20 = *(a1 + 40);
    if (v9)
    {
      [v20 folderControllerWillClose:v20];
    }

    else
    {
      [v20 folderControllerWillOpen:v20];
    }
  }

LABEL_6:
}

uint64_t __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isCancelled];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) folderView];
  v7 = [v3 isAnimated];

  [v6 didTransitionAnimated:v7];
  [*(a1 + 32) setAnimating:0];
  if (v4 == v5)
  {
    [*(a1 + 40) setHidden:0];
    [*(a1 + 40) setAllIconElementsButLabelHidden:0];
    [*(a1 + 40) setAlpha:1.0];
    v10 = [*(a1 + 32) isEditing];
    v11 = *(a1 + 40);
    if (v10)
    {
      [v11 scrollToFirstGapAnimated:1];
    }

    else
    {
      [v11 scrollToTopOfFirstPageAnimated:1];
    }

    [*(a1 + 32) folderControllerDidClose:*(a1 + 32)];
    v12 = *(a1 + 32);

    return [v12 _invalidate];
  }

  else
  {
    v8 = *(a1 + 32);

    return [v8 folderControllerDidOpen:v8];
  }
}

- (id)_makeContentViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_contentViewClass"))];

  return v4;
}

- (void)setFolder:(id)folder
{
  folderCopy = folder;
  folder = self->_folder;
  if (folder != folderCopy)
  {
    v8 = folderCopy;
    [(SBFolder *)folder removeFolderObserver:self];
    objc_storeStrong(&self->_folder, folder);
    if (v8)
    {
      if (![(SBFolder *)self->_folder listCount])
      {
        addEmptyList = [(SBFolder *)self->_folder addEmptyList];
      }

      [(SBFolder *)self->_folder addFolderObserver:self];
    }

    folder = [(SBFolderView *)self->_contentView setFolder:self->_folder];
    folderCopy = v8;
  }

  MEMORY[0x1EEE66BB8](folder, folderCopy);
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    presentedIconLocations = [(SBFolderController *)self presentedIconLocations];
    allObjects = [presentedIconLocations allObjects];

    v10 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(self->_listLayoutProvider, providerCopy, *(*(&v15 + 1) + 8 * v13++), 1);
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&self->_listLayoutProvider, provider);
    folderView = [(SBFolderController *)self folderView];
    [folderView setListLayoutProvider:providerCopy animated:animatedCopy];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  orientation = self->_orientation;
  if (orientation != orientation && SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    self->_orientation = orientation;

    [(SBFolderController *)self orientationDidChange:orientation];
  }
}

- (BOOL)isScrollDragging
{
  scrollView = [(SBFolderView *)self->_contentView scrollView];
  isDragging = [scrollView isDragging];

  return isDragging;
}

- (BOOL)isScrollDecelerating
{
  scrollView = [(SBFolderView *)self->_contentView scrollView];
  isDecelerating = [scrollView isDecelerating];

  return isDecelerating;
}

- (BOOL)isScrollTracking
{
  scrollView = [(SBFolderView *)self->_contentView scrollView];
  isTracking = [scrollView isTracking];

  return isTracking;
}

- (double)currentScrollingOffset
{
  folderView = [(SBFolderController *)self folderView];
  scrollView = [folderView scrollView];
  [scrollView contentOffset];
  v5 = v4;

  return v5;
}

- (void)setOpen:(BOOL)open
{
  if (self->_isOpen != open)
  {
    self->_isOpen = open;
    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_isEditing != editing)
  {
    animatedCopy = animated;
    editingCopy = editing;
    self->_isEditing = editing;
    [(SBFolderController *)self _updateFolderRequiredTrailingEmptyListCount];
    [(SBFolderView *)self->_contentView setEditing:editingCopy animated:animatedCopy];

    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:animatedCopy];
  }
}

- (void)_handleEndEditingKeyCommand:(id)command
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldEndEditing:self];
}

- (void)_updateFolderRequiredTrailingEmptyListCount
{
  folder = [(SBFolderController *)self folder];
  [folder setRequiredTrailingEmptyListCount:{-[SBFolderController isEditing](self, "isEditing")}];
}

- (void)beginEditingTitle
{
  folderView = [(SBFolderController *)self folderView];
  _titleTextField = [folderView _titleTextField];

  if ([_titleTextField showingEditUI])
  {
    [_titleTextField becomeFirstResponder];
    [_titleTextField selectAll:0];
  }
}

- (void)setCurrentPageIndexToListDirectlyContainingIcon:(id)icon animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  iconCopy = icon;
  completionCopy = completion;
  if (iconCopy && ![(SBFolderController *)self isDisplayingIcon:iconCopy])
  {
    folder = [(SBFolderController *)self folder];
    v10 = folder;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (folder)
    {
      v12 = [folder indexOfListContainingIcon:iconCopy];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(SBFolderController *)self pageIndexForIconListModelIndex:v12];
      }
    }

    if ([(SBFolderController *)self _isValidPageIndex:v11])
    {
      [(SBFolderController *)self setCurrentPageIndex:v11 animated:animatedCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(SBFolderController *)self scrollUsingDecelerationAnimationToPageIndex:[(SBFolderController *)self defaultPageIndex] withCompletionHandler:handlerCopy];
}

- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)visible
{
  folderView = [(SBFolderController *)self folderView];
  [folderView setNumberOfInitialPagesToPreferVisible:visible];
}

- (void)_configureForInnerFolderController:(id)controller
{
  controllerCopy = controller;
  innerFolderController = [(SBFolderController *)self innerFolderController];
  [controllerCopy setFolderDelegate:self];
  if (controllerCopy && innerFolderController != controllerCopy)
  {
    [(SBFolderController *)self _updateStateOfAssociatedController:controllerCopy animated:0];
    folder = [controllerCopy folder];
    icon = [folder icon];
    v7 = [(SBFolderController *)self firstIconViewForIcon:icon];
    [controllerCopy setFolderIconView:v7];
  }
}

- (SBFolderController)outerFolderController
{
  parentNestingViewController = [(SBNestingViewController *)self parentNestingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentNestingViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)folderControllerForFolder:(id)folder
{
  folderCopy = folder;
  folder = [(SBFolderController *)self folder];

  if (folder == folderCopy)
  {
    selfCopy = self;
  }

  else
  {
    innerFolderController = [(SBFolderController *)self innerFolderController];
    selfCopy = [innerFolderController folderControllerForFolder:folderCopy];
  }

  return selfCopy;
}

- (void)setFolderIconView:(id)view
{
  viewCopy = view;
  if (self->_folderIconView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_folderIconView, view);
    viewCopy = v6;
    if (v6)
    {
      [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self pageIndexForIconListViewIndex:[(SBIconView *)v6 visibleMiniIconListIndex]] animated:0];
      viewCopy = v6;
    }
  }
}

- (BOOL)doesPageContainIconListView:(int64_t)view
{
  folderView = [(SBFolderController *)self folderView];
  LOBYTE(view) = [folderView doesPageContainIconListView:view];

  return view;
}

- (id)iconListViewAtIndex:(unint64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView iconListViewAtIndex:index];

  return v5;
}

- (id)iconListViewForIconListModelIndex:(unint64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView iconListViewForIconListModelIndex:index];

  return v5;
}

- (id)iconListViewWithIconListModel:(id)model
{
  modelCopy = model;
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView iconListViewWithList:modelCopy];

  return v6;
}

- (id)iconListViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView iconListViewAtPoint:{x, y}];

  return v6;
}

- (id)iconListViewForTouch:(id)touch
{
  touchCopy = touch;
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView iconListViewForTouch:touchCopy];

  return v6;
}

- (id)iconListViewForDrag:(id)drag
{
  dragCopy = drag;
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView iconListViewForDrag:dragCopy];

  return v6;
}

- (unint64_t)iconListViewIndexForPageIndex:(int64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView iconListViewIndexForPageIndex:index];

  return v5;
}

- (unint64_t)iconListModelIndexForPageIndex:(int64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView iconListModelIndexForPageIndex:index];

  return v5;
}

- (int64_t)pageIndexForIconListViewIndex:(unint64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView pageIndexForIconListViewIndex:index];

  return v5;
}

- (int64_t)pageIndexForIconListModelIndex:(unint64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView pageIndexForIconListModelIndex:index];

  return v5;
}

- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v5 = [folderView iconListViewIndexForIconListModelIndex:index];

  return v5;
}

- (BOOL)_isValidPageIndex:(int64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  LOBYTE(index) = [folderView _isValidPageIndex:index];

  return index;
}

- (NSArray)visibleIconListViews
{
  folderView = [(SBFolderController *)self folderView];
  visibleIconListViews = [folderView visibleIconListViews];

  return visibleIconListViews;
}

- (void)_closeFolder
{
  folderView = [(SBFolderController *)self folderView];
  [(SBFolderController *)self folderViewShouldClose:folderView withPinchGesture:0];
}

- (id)viewControllersForPageIndex:(int64_t)index
{
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView iconListViewForPageIndex:index];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SBFolderController_viewControllersForPageIndex___block_invoke;
  v13[3] = &unk_1E808C778;
  v13[4] = &v14;
  [v6 enumerateIconViewsUsingBlock:v13];
  v7 = [(SBFolderController *)self pageViewControllerForPageIndex:index];
  if (v7)
  {
    v8 = v15[5];
    if (v8)
    {
      [v8 addObject:v7];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
      v10 = v15[5];
      v15[5] = v9;
    }
  }

  v11 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v11;
}

uint64_t __50__SBFolderController_viewControllersForPageIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v10 = v4;
    if (v5)
    {
      v3 = [v5 addObject:v4];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)pageViewControllersForLeadingPageIndex:(int64_t)index trailingPageIndex:(int64_t)pageIndex
{
  if (index <= pageIndex)
  {
    indexCopy = index;
    array = 0;
    v7 = pageIndex + 1;
    do
    {
      v8 = [(SBFolderController *)self pageViewControllerForPageIndex:indexCopy];
      if (v8)
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObject:v8];
      }

      ++indexCopy;
    }

    while (v7 != indexCopy);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)updateAppearanceStateForPageViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  v41 = *MEMORY[0x1E69E9840];
  folderView = [(SBFolderController *)self folderView];
  v35 = 0;
  v36 = 0;
  [folderView getLeadingVisiblePageIndex:&v36 trailingVisiblePageIndex:&v35];
  if (v36 != self->_leadingVisiblePageIndex || (v35 == self->_trailingVisiblePageIndex ? (v6 = !controllersCopy) : (v6 = 0), !v6))
  {
    v26 = folderView;
    visiblePageViewControllers = [(SBFolderController *)self visiblePageViewControllers];
    selfCopy = self;
    v8 = [(SBFolderController *)self pageViewControllersForLeadingPageIndex:v36 trailingPageIndex:v35];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = visiblePageViewControllers;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if (([v8 containsObject:v14] & 1) == 0)
          {
            v15 = SBLogRootController();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v39 = v14;
              _os_log_debug_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEBUG, "Ending appearance transition of %p to NO (updateAppearanceStateForPageViewControllers)", buf, 0xCu);
            }

            [v14 bs_endAppearanceTransition:0];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v11);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
    folderView = v26;
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          if (controllersCopy)
          {
            v22 = SBLogRootController();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v39 = v21;
              _os_log_debug_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_DEBUG, "Ending appearance transition of %p to YES (updateAppearanceStateForPageViewControllers)", buf, 0xCu);
            }

            [v21 bs_endAppearanceTransition:1];
          }

          else if (([v9 containsObject:*(*(&v27 + 1) + 8 * j)] & 1) == 0)
          {
            v23 = SBLogRootController();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v39 = v21;
              _os_log_debug_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEBUG, "Beginning appearance transition of %p to YES (updateAppearanceStateForPageViewControllers)", buf, 0xCu);
            }

            [v21 bs_beginAppearanceTransition:1 animated:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v18);
    }

    v24 = v35;
    selfCopy->_leadingVisiblePageIndex = v36;
    selfCopy->_trailingVisiblePageIndex = v24;
  }
}

- (id)keepIconImageViewControllersSnapshotsOfType:(unint64_t)type inAllPagesExcluding:(id)excluding forReason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  excludingCopy = excluding;
  reasonCopy = reason;
  v10 = SBLogRootController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = excludingCopy;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Begin keeping icon image view controllers static in all pages excluding: %{public}@ for reason: %{public}@", &v18, 0x16u);
  }

  v11 = [[_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion alloc] initWithFolderController:self snapshotType:type pageIndexesToExclude:excludingCopy reason:reasonCopy];
  if (type == 1)
  {
    v12 = 1144;
  }

  else
  {
    if (type)
    {
      goto LABEL_10;
    }

    v12 = 1136;
  }

  v13 = (&self->super.super.super.super.isa + v12);
  v14 = *(&self->super.super.super.super.isa + v12);
  if (!v14)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v16 = *v13;
    *v13 = weakObjectsHashTable;

    v14 = *v13;
  }

  [v14 addObject:v11];
LABEL_10:
  [(SBFolderController *)self _updatePresentationModeForIconViews];

  return v11;
}

- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)assertion
{
  v11 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = SBLogRootController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    reason = [assertionCopy reason];
    v9 = 138543362;
    v10 = reason;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "End keeping icon image view controllers static for reason: %{public}@", &v9, 0xCu);
  }

  snapshotType = [assertionCopy snapshotType];
  if (!snapshotType)
  {
    v8 = &OBJC_IVAR___SBFolderController__iconImageViewControllerKeepSnapshotTypeDefaultAssertions;
    goto LABEL_7;
  }

  if (snapshotType == 1)
  {
    v8 = &OBJC_IVAR___SBFolderController__iconImageViewControllerKeepSnapshotTypeLowResolutionAssertions;
LABEL_7:
    [*(&self->super.super.super.super.isa + *v8) removeObject:assertionCopy];
  }

  [(SBFolderController *)self _updatePresentationModeForIconViews];
}

- (void)updatePresentationModeFolderContextForIconView:(id)view
{
  v46 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v33 = 1136;
  if ([(NSHashTable *)self->_iconImageViewControllerKeepSnapshotTypeDefaultAssertions count]|| [(NSHashTable *)self->_iconImageViewControllerKeepSnapshotTypeLowResolutionAssertions count])
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = self->_iconImageViewControllerKeepSnapshotTypeDefaultAssertions;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          pageIndexesToExclude = [*(*(&v40 + 1) + 8 * i) pageIndexesToExclude];
          if (pageIndexesToExclude)
          {
            [indexSet addIndexes:pageIndexesToExclude];
          }
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = self->_iconImageViewControllerKeepSnapshotTypeLowResolutionAssertions;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          pageIndexesToExclude2 = [*(*(&v36 + 1) + 8 * j) pageIndexesToExclude];
          if (pageIndexesToExclude2)
          {
            [indexSet addIndexes:pageIndexesToExclude2];
          }
        }

        v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v14);
    }

    v35 = 0;
  }

  else
  {
    indexSet = 0;
    v35 = 1;
  }

  folder = [(SBFolderController *)self folder];
  icon = [viewCopy icon];
  v20 = [folder indexPathForIcon:icon];

  v21 = v20;
  v22 = -[SBFolderController pageIndexForIconListModelIndex:](self, "pageIndexForIconListModelIndex:", [v20 sbListIndex]);
  v23 = objc_alloc_init(SBHMutablePresentationModeFolderContext);
  iconLocation = [(SBFolderController *)self iconLocation];
  v25 = viewCopy;
  location = [viewCopy location];
  v27 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupIconHierarchy", iconLocation);
  v28 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupIconHierarchy", location);
  v29 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupWidgetConfiguration", location);
  v30 = 0;
  if (v35 & 1) != 0 || (v27 & (v28 ^ 1))
  {
    v31 = 0;
  }

  else
  {
    v31 = 0;
    if ((v29 & 1) == 0)
    {
      if (-[SBFolderController _isValidPageIndex:](self, "_isValidPageIndex:", v22) && ([indexSet containsIndex:v22] & 1) == 0)
      {
        v32 = [*(&self->super.super.super.super.isa + v34) count];
        v31 = v32 == 0;
        v30 = v32 != 0;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }
    }
  }

  [(SBHMutablePresentationModeFolderContext *)v23 setHasAssertionForSnapshotPresentationMode:v30];
  [(SBHMutablePresentationModeFolderContext *)v23 setHasAssertionForLowResolutionSnapshotPresentationMode:v31];
  [v25 setPresentationModeFolderContext:v23];
}

- (void)_updatePresentationModeForIconView:(id)view
{
  viewCopy = view;
  customIconImageViewController = [viewCopy customIconImageViewController];
  if (customIconImageViewController)
  {
    [(SBFolderController *)self updatePresentationModeFolderContextForIconView:viewCopy];
  }
}

- (void)_beginTrackingIconViewWithCustomImageViewController:(id)controller
{
  controllerCopy = controller;
  iconViewsWithCustomImageViewControllers = self->_iconViewsWithCustomImageViewControllers;
  v8 = controllerCopy;
  if (!iconViewsWithCustomImageViewControllers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_iconViewsWithCustomImageViewControllers;
    self->_iconViewsWithCustomImageViewControllers = weakObjectsHashTable;

    controllerCopy = v8;
    iconViewsWithCustomImageViewControllers = self->_iconViewsWithCustomImageViewControllers;
  }

  [(NSHashTable *)iconViewsWithCustomImageViewControllers addObject:controllerCopy];
  if (![(SBFolderController *)self allowsGlassGroupingForCustomIconImageViewControllers])
  {
    [(SBFolderController *)self _acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:v8];
  }
}

- (void)_endTrackingIconViewWithCustomImageViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectForKey:controllerCopy];
  [v4 invalidate];
  [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions removeObjectForKey:controllerCopy];
  if (![(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions count])
  {
    iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    self->_iconViewGlassGroupingDisabledAssertions = 0;
  }

  [(NSHashTable *)self->_iconViewsWithCustomImageViewControllers removeObject:controllerCopy];
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  folder = [(SBFolderController *)self folder];
  v6 = [folder indexPathForIcon:iconCopy];

  if (v6)
  {
    v7 = [folder folderContainingIndexPath:v6 relativeIndexPath:0];
    if (v7 == folder && (v8 = [v6 sbListIndex], v8 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v11 = [(SBFolderController *)self pageIndexForIconListModelIndex:v8];
      v9 = v11 == [(SBFolderController *)self currentPageIndex];
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

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([(SBFolderController *)self isPresentingIconLocation:location])
  {
    currentIconListView = [(SBFolderController *)self currentIconListView];
    model = [currentIconListView model];
    v9 = [model directlyContainsIcon:iconCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        if ([(SBFolderController *)self isDisplayingIcon:iconCopy inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  folderView = [(SBFolderController *)self folderView];
  v6 = [viewCopy isDescendantOfView:folderView];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  if ([(SBFolderController *)self isPresentingIconLocation:locationCopy]&& [(SBFolderController *)self isDisplayingIconView:viewCopy])
  {
    location = [viewCopy location];
    v9 = [location isEqualToString:locationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options
{
  optionsCopy = options;
  iconCopy = icon;
  locationCopy = location;
  if (![(SBFolderController *)self isPresentingIconLocation:locationCopy])
  {
    v18 = 0;
    goto LABEL_17;
  }

  folderView = [(SBFolderController *)self folderView];
  v11 = folderView;
  v27 = 0u;
  v28 = 0u;
  if (folderView)
  {
    [folderView visibleColumnRangeExcludingAdditionalWidthKeptVisible];
  }

  iconListViews = [(SBFolderController *)self iconListViews];
  if (![iconListViews count])
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  while (1)
  {
    v14 = [iconListViews objectAtIndex:v13];
    iconLocation = [v14 iconLocation];
    v16 = [locationCopy isEqualToString:iconLocation];

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v14 displayedIconViewForIcon:iconCopy];
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = v17;
    location = [v17 location];
    v20 = [location isEqualToString:locationCopy];

    if (v20)
    {
      if ((optionsCopy & 8) == 0)
      {
        break;
      }

      [v14 iconColumnsForCurrentOrientation];
      v26[0] = v27;
      v26[1] = v28;
      VisibleColumnsForIconListIndex = SBVisibleColumnRangeGetVisibleColumnsForIconListIndex(v26, v13);
      v23 = v22;
      v24 = [v14 coordinateForIcon:iconCopy];
      if (v24 - 1 >= VisibleColumnsForIconListIndex && v24 - 1 - VisibleColumnsForIconListIndex < v23)
      {
        break;
      }
    }

LABEL_13:
    if (++v13 >= [iconListViews count])
    {
      goto LABEL_14;
    }
  }

LABEL_15:
LABEL_17:

  return v18;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  v20 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v12 = [(SBFolderController *)self iconViewForIcon:iconCopy location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
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

- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  presentedIconLocations = [(SBFolderController *)self presentedIconLocations];
  allObjects = [presentedIconLocations allObjects];

  v9 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = [(SBFolderController *)self iconViewForIcon:iconCopy location:*(*(&v16 + 1) + 8 * i) options:options];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  presentedIconLocations = [(SBFolderController *)self presentedIconLocations];
  allObjects = [presentedIconLocations allObjects];
  v7 = [(SBFolderController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v7;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  presentedIconLocations = [(SBFolderController *)self presentedIconLocations];
  v9 = [presentedIconLocations mutableCopy];

  [v9 minusSet:locationsCopy];
  allObjects = [v9 allObjects];
  v11 = [(SBFolderController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v11;
}

- (id)firstIconViewWithOptions:(unint64_t)options iconPassingTest:(id)test
{
  testCopy = test;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SBFolderController_firstIconViewWithOptions_iconPassingTest___block_invoke;
  v10[3] = &unk_1E808A830;
  v7 = testCopy;
  v11 = v7;
  v12 = &v13;
  [(SBFolderController *)self enumerateDisplayedIconViewsWithOptions:options usingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __63__SBFolderController_firstIconViewWithOptions_iconPassingTest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 icon];
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)fadeContentForMagnificationFraction:(double)fraction
{
  folderView = [(SBFolderController *)self folderView];
  [folderView fadeContentForMagnificationFraction:fraction];
}

- (void)fadeContentForMinificationFraction:(double)fraction
{
  folderView = [(SBFolderController *)self folderView];
  [folderView fadeContentForMinificationFraction:fraction];
}

- (void)setScrollingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  folderView = [(SBFolderController *)self folderView];
  [folderView _setScrollingDisabled:disabledCopy forReason:reasonCopy];
}

- (void)cancelScrolling
{
  folderView = [(SBFolderController *)self folderView];
  [folderView cancelScrolling];

  innerFolderController = [(SBFolderController *)self innerFolderController];
  [innerFolderController cancelScrolling];
}

- (id)disableAutoScrollForReason:(id)reason
{
  reasonCopy = reason;
  folderView = [(SBFolderController *)self folderView];
  v6 = [folderView disableAutoScrollForReason:reasonCopy];

  return v6;
}

- (void)performWhenScrollingEndsUsingBlock:(id)block
{
  blockCopy = block;
  folderView = [(SBFolderController *)self folderView];
  [folderView performWhenScrollingEndsUsingBlock:blockCopy];
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    innerFolderController = [(SBFolderController *)self innerFolderController];
    [innerFolderController setContentVisibility:visibility];

    [(SBFolderController *)self updateContentViewOcclusion];
  }
}

- (unint64_t)effectiveContentVisibilityFolderHasInnerFolder:(BOOL)folder
{
  if (folder)
  {
    return 1;
  }

  if (![(SBFolderController *)self _appearState])
  {
    return 2;
  }

  return [(SBFolderController *)self contentVisibility];
}

- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  iconCopy = icon;
  folder = [(SBFolderController *)self folder];
  v11 = [folder indexPathForIcon:iconCopy];

  if (v11)
  {
    v12 = [(SBFolderController *)self pageIndexForIconListModelIndex:SBFolderRelativeListIndex(v11)];
    currentPageIndex = [(SBFolderController *)self currentPageIndex];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || currentPageIndex == v12)
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v12 != 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__SBFolderController_revealIcon_animated_completionHandler___block_invoke;
      v14[3] = &unk_1E8089600;
      v15 = handlerCopy;
      [(SBFolderController *)self setCurrentPageIndex:v12 animated:animatedCopy completion:v14];
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

uint64_t __60__SBFolderController_revealIcon_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (unint64_t)userInterfaceLayoutDirectionHandling
{
  folderView = [(SBFolderController *)self folderView];
  userInterfaceLayoutDirectionHandling = [folderView userInterfaceLayoutDirectionHandling];

  return userInterfaceLayoutDirectionHandling;
}

- (BOOL)isVertical
{
  folderView = [(SBFolderController *)self folderView];
  isVertical = [folderView isVertical];

  return isVertical;
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_iconImageCache != cacheCopy)
  {
    v7 = cacheCopy;
    objc_storeStrong(&self->_iconImageCache, cache);
    folderView = [(SBFolderController *)self folderView];
    [folderView setIconImageCache:v7];

    cacheCopy = v7;
  }
}

- (void)setFolderIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_folderIconImageCache != cacheCopy)
  {
    v7 = cacheCopy;
    objc_storeStrong(&self->_folderIconImageCache, cache);
    folderView = [(SBFolderController *)self folderView];
    [folderView setFolderIconImageCache:v7];

    cacheCopy = v7;
  }
}

- (void)minimumHomeScreenScaleDidChange
{
  folderView = [(SBFolderController *)self folderView];
  [folderView minimumHomeScreenScaleDidChange];
}

- (BOOL)usesGlassGroup
{
  folderView = [(SBFolderController *)self folderView];
  usesGlassGroup = [folderView usesGlassGroup];

  return usesGlassGroup;
}

- (void)setUsesGlassGroup:(BOOL)group
{
  groupCopy = group;
  folderView = [(SBFolderController *)self folderView];
  [folderView setUsesGlassGroup:groupCopy];
}

- (id)_dragDelegate
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v4 = folderDelegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [folderDelegate draggingDelegateForFolderController:self];
  }

  return v4;
}

- (void)_setHomescreenAndDockAlpha:(double)alpha
{
  folderViewIfLoaded = [(SBFolderController *)self folderViewIfLoaded];
  [folderViewIfLoaded setAlpha:alpha];
}

- (void)_updateHomescreenAndDockFade
{
  if ([(SBFolderController *)self _homescreenAndDockShouldFade])
  {
    nestedViewController = [(SBNestingViewController *)self nestedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isOpen = [nestedViewController isOpen];
    }

    else
    {
      isOpen = 0;
    }

    [(SBFolderController *)self _fadeHomescreenAndDockIfNecessaryForFolderOpen:isOpen];
  }

  else
  {

    [(SBFolderController *)self _setHomescreenAndDockAlpha:1.0];
  }
}

- (void)_fadeHomescreenAndDockIfNecessaryForFolderOpen:(BOOL)open
{
  openCopy = open;
  if ([(SBFolderController *)self _homescreenAndDockShouldFade])
  {
    v5 = 1.0;
    if (openCopy)
    {
      v5 = 0.0;
    }

    [(SBFolderController *)self _setHomescreenAndDockAlpha:v5];
  }
}

- (void)_addFakeStatusBarView
{
  [(SBFolderController *)self _removeFakeStatusBarAndAssertionIfExists];
  [(SBFolderController *)self _hideStatusBarForReason:@"SBFolderControllerFakeStatusBar" animated:0];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v4 = [folderDelegate fakeStatusBarForFolderController:self];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&self->_fakeStatusBar, v4);
  if (v3)
  {
  }

  if (self->_fakeStatusBar)
  {
    [(SBFolderController *)self _resetFakeStatusBarSettingsIfNecessary];
    view = [(SBFolderController *)self view];
    [view insertSubview:self->_fakeStatusBar belowSubview:self->_backgroundView];
  }
}

- (void)_resetFakeStatusBarSettingsIfNecessary
{
  if (self->_fakeStatusBar)
  {
    [(SBFolderController *)self _resetFakeStatusBarFrameOnly];
    folderDelegate = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [folderDelegate statusBarStyleRequestForFolderController:self];
      if (v3)
      {
        v4 = v3;
        [(UIStatusBar *)self->_fakeStatusBar setStyleRequest:v3];
      }
    }

    -[UIStatusBar setOrientation:](self->_fakeStatusBar, "setOrientation:", [*MEMORY[0x1E69DDA98] activeInterfaceOrientation]);
    [(UIStatusBar *)self->_fakeStatusBar setHidden:[(NSMutableSet *)self->_fakeStatusBarHidingReasons count]!= 0];
  }
}

- (void)_resetFakeStatusBarFrameOnly
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate statusBarEdgeInsetsForFolderController:self];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  fakeStatusBar = self->_fakeStatusBar;
  [*MEMORY[0x1E69DDA98] statusBarFrame];
  [(UIStatusBar *)fakeStatusBar setFrame:v6 + v12, v4 + v13, v14 - (v10 + v6), v15 - (v8 + v4)];
  [(SBFolderController *)self _resetFakeStatusBarMatchMoveAnimation];
}

- (void)_resetFakeStatusBarMatchMoveAnimation
{
  v29[4] = *MEMORY[0x1E69E9840];
  layer = [(UIStatusBar *)self->_fakeStatusBar layer];
  [layer removeAnimationForKey:@"SBFolderControllerFakeStatusBarMatchMoveKey"];

  view = [(SBFolderController *)self view];
  window = [view window];
  layer2 = [window layer];

  [(UIStatusBar *)self->_fakeStatusBar frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E69793B8]);
  [v15 setSourceLayer:layer2];
  v16 = MEMORY[0x1E696B098];
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v18 = [v16 valueWithCGPoint:{MinX, CGRectGetMinY(v31)}];
  v29[0] = v18;
  v19 = MEMORY[0x1E696B098];
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  v21 = [v19 valueWithCGPoint:{MaxX, CGRectGetMinY(v33)}];
  v29[1] = v21;
  v22 = MEMORY[0x1E696B098];
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  v23 = CGRectGetMaxX(v34);
  v35.origin.x = v8;
  v35.origin.y = v10;
  v35.size.width = v12;
  v35.size.height = v14;
  v24 = [v22 valueWithCGPoint:{v23, CGRectGetMaxY(v35)}];
  v29[2] = v24;
  v25 = MEMORY[0x1E696B098];
  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  v26 = CGRectGetMinX(v36);
  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  v27 = [v25 valueWithCGPoint:{v26, CGRectGetMaxY(v37)}];
  v29[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v15 setSourcePoints:v28];

  [v15 setDuration:INFINITY];
  [v15 setFillMode:*MEMORY[0x1E69797E0]];
  [v15 setRemovedOnCompletion:0];
  [(UIStatusBar *)self->_fakeStatusBar addAnimation:v15 forKey:@"SBFolderControllerFakeStatusBarMatchMoveKey"];
}

- (void)_removeFakeStatusBarAndAssertionIfExists
{
  [(SBFolderController *)self _unhideStatusBarForReason:@"SBFolderControllerFakeStatusBar"];
  fakeStatusBar = self->_fakeStatusBar;
  if (fakeStatusBar)
  {
    layer = [(UIStatusBar *)fakeStatusBar layer];
    [layer removeAnimationForKey:@"SBFolderControllerFakeStatusBarMatchMoveKey"];

    folderDelegate = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate folderController:self willRemoveFakeStatusBar:self->_fakeStatusBar];
    }

    else
    {
      [(UIStatusBar *)self->_fakeStatusBar removeFromSuperview];
    }

    v6 = self->_fakeStatusBar;
    self->_fakeStatusBar = 0;
  }

  v7 = MEMORY[0x1E69DCE70];

  [v7 _synchronizeDrawing];
}

- (void)_hideFakeStatusBarForReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  reasonCopy = reason;
  fakeStatusBarHidingReasons = self->_fakeStatusBarHidingReasons;
  v10 = reasonCopy;
  if (!fakeStatusBarHidingReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_fakeStatusBarHidingReasons;
    self->_fakeStatusBarHidingReasons = v8;

    reasonCopy = v10;
    fakeStatusBarHidingReasons = self->_fakeStatusBarHidingReasons;
  }

  [(NSMutableSet *)fakeStatusBarHidingReasons addObject:reasonCopy];
  if ([(NSMutableSet *)self->_fakeStatusBarHidingReasons count])
  {
    [(UIStatusBar *)self->_fakeStatusBar setHidden:1 animated:animatedCopy];
  }
}

- (void)_unhideFakeStatusBarForReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  [(NSMutableSet *)self->_fakeStatusBarHidingReasons removeObject:reason];
  if (![(NSMutableSet *)self->_fakeStatusBarHidingReasons count])
  {
    fakeStatusBar = self->_fakeStatusBar;

    [(UIStatusBar *)fakeStatusBar setHidden:0 animated:animatedCopy];
  }
}

- (void)_hideStatusBarForReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  reasonCopy = reason;
  realStatusBarHidingReasons = self->_realStatusBarHidingReasons;
  v13 = reasonCopy;
  if (!realStatusBarHidingReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_realStatusBarHidingReasons;
    self->_realStatusBarHidingReasons = v8;

    reasonCopy = v13;
    realStatusBarHidingReasons = self->_realStatusBarHidingReasons;
  }

  [(NSMutableSet *)realStatusBarHidingReasons addObject:reasonCopy];
  if ([(NSMutableSet *)self->_realStatusBarHidingReasons count])
  {
    folderDelegate = [(SBFolderController *)self folderDelegate];
    v11 = objc_opt_respondsToSelector();
    if (v11)
    {
      v12 = [folderDelegate folderControllerWantsToHideStatusBar:self animated:animatedCopy];
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&self->_statusBarAssertion, v12);
    if (v11)
    {
    }
  }
}

- (void)_unhideStatusBarForReason:(id)reason
{
  [(NSMutableSet *)self->_realStatusBarHidingReasons removeObject:reason];
  if (![(NSMutableSet *)self->_realStatusBarHidingReasons count])
  {
    [(BSInvalidatable *)self->_statusBarAssertion invalidate];
    statusBarAssertion = self->_statusBarAssertion;
    self->_statusBarAssertion = 0;
  }
}

- (void)_updateAssociatedControllerStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  innerFolderController = [(SBFolderController *)self innerFolderController];
  v6 = innerFolderController;
  if (innerFolderController)
  {
    v7 = innerFolderController;
    innerFolderController = [(SBFolderController *)self _updateStateOfAssociatedController:innerFolderController animated:animatedCopy];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](innerFolderController, v6);
}

- (void)_updateStateOfAssociatedController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [controllerCopy setOpen:{-[SBFolderController isOpen](self, "isOpen")}];
  [controllerCopy setEditing:-[SBFolderController isEditing](self animated:{"isEditing"), animatedCopy}];
  [controllerCopy setContentVisibility:{-[SBFolderController contentVisibility](self, "contentVisibility")}];
}

- (BOOL)isPageControlHidden
{
  folderView = [(SBFolderController *)self folderView];
  isPageControlHidden = [folderView isPageControlHidden];

  return isPageControlHidden;
}

- (void)setPageControlHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  folderView = [(SBFolderController *)self folderView];
  [folderView setPageControlHidden:hiddenCopy];
}

- (double)pageControlAlpha
{
  folderView = [(SBFolderController *)self folderView];
  [folderView pageControlAlpha];
  v4 = v3;

  return v4;
}

- (void)setPageControlAlpha:(double)alpha
{
  folderView = [(SBFolderController *)self folderView];
  [folderView setPageControlAlpha:alpha];
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  folderView = [(SBFolderController *)self folderView];
  gridSizeClassDomain = [folderView gridSizeClassDomain];

  return gridSizeClassDomain;
}

- (SBHIconImageAppearance)effectiveIconImageAppearance
{
  traitCollection = [(SBFolderController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v3;
}

- (BOOL)allowsGlassGroupingForCustomIconImageViewControllers
{
  if ([(SBFolderController *)self requiresGlassGroupingForCustomIconImageViewControllers])
  {
    return 1;
  }

  effectiveIconImageAppearance = [(SBFolderController *)self effectiveIconImageAppearance];
  hasGlass = [effectiveIconImageAppearance hasGlass];

  return hasGlass;
}

- (void)updateAfterIconStyleChange
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self allowsGlassGroupingForCustomIconImageViewControllers])
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    objectEnumerator = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v17 + 1) + 8 * i) invalidate];
        }

        v5 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }

    iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    self->_iconViewGlassGroupingDisabledAssertions = 0;
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    iconViewGlassGroupingDisabledAssertions = self->_iconViewsWithCustomImageViewControllers;
    v9 = [(NSHashTable *)iconViewGlassGroupingDisabledAssertions countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(iconViewGlassGroupingDisabledAssertions);
          }

          [(SBFolderController *)self _acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:*(*(&v13 + 1) + 8 * j), v13];
        }

        v10 = [(NSHashTable *)iconViewGlassGroupingDisabledAssertions countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)_acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:(id)view
{
  viewCopy = view;
  v4 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectForKey:?];
  if (!v4)
  {
    v4 = [viewCopy disallowGlassGroupingForReason:@"containing folder"];
    iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    if (!iconViewGlassGroupingDisabledAssertions)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v7 = self->_iconViewGlassGroupingDisabledAssertions;
      self->_iconViewGlassGroupingDisabledAssertions = strongToStrongObjectsMapTable;

      iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    }

    [(NSMapTable *)iconViewGlassGroupingDisabledAssertions setObject:v4 forKey:viewCopy];
  }
}

+ (Class)listViewClass
{
  _contentViewClass = [self _contentViewClass];

  return [_contentViewClass defaultIconListViewClass];
}

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  folderView = [(SBFolderController *)self folderView];
  [folderView layoutIconListsWithAnimationType:type forceRelayout:relayoutCopy];
}

- (BOOL)shouldViewControllersAppearVisibleForIconView:(id)view
{
  viewCopy = view;
  v5 = (-[SBFolderController bs_isDisappearingOrDisappeared](self, "bs_isDisappearingOrDisappeared") & 1) == 0 && -[SBFolderController contentVisibility](self, "contentVisibility") != 2 && [viewCopy contentVisibility] != 2;

  return v5;
}

- (BOOL)_allowUserInteraction
{
  if ([(SBFolderController *)self isScrolling])
  {
    return 0;
  }

  else
  {
    return ![(SBFolderController *)self isRotating];
  }
}

- (void)_cancelCloseFolderTimer
{
  if (self->_closeFolderTimer)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBFolderController *)v3 _cancelCloseFolderTimer];
    }

    [(NSTimer *)self->_closeFolderTimer invalidate];
    closeFolderTimer = self->_closeFolderTimer;
    self->_closeFolderTimer = 0;
  }
}

- (void)_closeFolderTimerFired
{
  [(SBFolderController *)self _cancelCloseFolderTimer];
  folder = [(SBFolderController *)self folder];

  if (folder)
  {
    _dragDelegate = [(SBFolderController *)self _dragDelegate];
    if (objc_opt_respondsToSelector())
    {
      currentIconListView = [(SBFolderController *)self currentIconListView];
      [_dragDelegate folderController:self draggedIconShouldDropFromListView:currentIconListView];
    }
  }
}

- (void)_setCloseFolderTimerIfNecessary
{
  if (!self->_closeFolderTimer && self->_grabbedIconHasEverEnteredFolderView && [(SBFolderController *)self closesAfterDragExits]&& ![(NSMutableSet *)self->_draggingEnteredIconListViews count])
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__closeFolderTimerFired selector:0 userInfo:0 repeats:0.25];
    closeFolderTimer = self->_closeFolderTimer;
    self->_closeFolderTimer = v3;

    MEMORY[0x1EEE66BB8](v3, closeFolderTimer);
  }
}

- (void)noteIconDrag:(id)drag didEnterIconListView:(id)view
{
  dragCopy = drag;
  viewCopy = view;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  if (!draggingEnteredIconListViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_draggingEnteredIconListViews;
    self->_draggingEnteredIconListViews = v8;

    draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  }

  [(NSMutableSet *)draggingEnteredIconListViews addObject:viewCopy];
  [dragCopy locationInView:viewCopy];
  v11 = v10;
  v13 = v12;
  [viewCopy bounds];
  v16.x = v11;
  v16.y = v13;
  if (CGRectContainsPoint(v17, v16))
  {
    [(SBFolderController *)self noteUserIsInteractingWithIcons];
    [(SBFolderController *)self _cancelAllInteractionTimers];
    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:0];
    if (![(SBFolderController *)self isAnimating])
    {
      self->_grabbedIconHasEverEnteredFolderView = 1;
    }
  }
}

- (void)noteIconDrag:(id)drag didChangeInIconListView:(id)view
{
  dragCopy = drag;
  viewCopy = view;
  innerFolderController = [(SBFolderController *)self innerFolderController];

  if (innerFolderController)
  {
    innerFolderController2 = [(SBFolderController *)self innerFolderController];
    [innerFolderController2 noteIconDrag:dragCopy didChangeInIconListView:viewCopy];
  }

  else
  {
    if (![(SBFolderController *)self _allowUserInteraction])
    {
      [(SBFolderController *)self _cancelAllInteractionTimers];
    }

    if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:viewCopy])
    {
      [dragCopy locationInView:viewCopy];
      v10 = v9;
      v12 = v11;
      [viewCopy bounds];
      v15.x = v10;
      v15.y = v12;
      if (CGRectContainsPoint(v16, v15))
      {
        if (![(SBFolderController *)self isAnimating])
        {
          self->_grabbedIconHasEverEnteredFolderView = 1;
        }
      }

      else
      {
        [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:viewCopy];
        [(SBFolderController *)self _setCloseFolderTimerIfNecessary];
      }
    }
  }
}

- (void)noteIconDrag:(id)drag didExitIconListView:(id)view
{
  viewCopy = view;
  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:?])
  {
    [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:viewCopy];
    [(SBFolderController *)self noteUserIsInteractingWithIcons];
    [(SBFolderController *)self _setCloseFolderTimerIfNecessary];
    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:0];
  }
}

- (void)noteIconDragDidEnd:(id)end
{
  [(SBFolderController *)self _cancelAllInteractionTimers];
  if (![(SBFolderController *)self isEditing])
  {
    folder = [(SBFolderController *)self folder];
    [folder compactLists];
  }

  self->_grabbedIconHasEverEnteredFolderView = 0;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  self->_draggingEnteredIconListViews = 0;
}

- (void)unscatterAnimated:(BOOL)animated afterDelay:(double)delay withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBFolderController *)self _clearIconAnimator];
  if (animatedCopy)
  {
    v9 = [(SBFolderController *)self _newAnimatorForZoomUp:0];
    iconAnimator = self->_iconAnimator;
    self->_iconAnimator = v9;

    [(SBIconAnimator *)self->_iconAnimator prepare];
    [(SBIconAnimator *)self->_iconAnimator setFraction:1.0];
    v11 = self->_iconAnimator;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__SBFolderController_unscatterAnimated_afterDelay_withCompletion___block_invoke;
    v12[3] = &unk_1E808B3C0;
    v12[4] = self;
    v13 = completionCopy;
    [(SBIconAnimator *)v11 animateToFraction:v12 afterDelay:0.0 withCompletion:delay];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

uint64_t __66__SBFolderController_unscatterAnimated_afterDelay_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearIconAnimator];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_clearIconAnimator
{
  [(SBIconAnimator *)self->_iconAnimator cleanup];
  iconAnimator = self->_iconAnimator;
  self->_iconAnimator = 0;
}

- (id)_newAnimatorForZoomUp:(BOOL)up
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = [(SBIconAnimator *)[SBIconFadeAnimator alloc] initWithAnimationContainer:self];
    iconAnimationSettings2 = +[SBHHomeScreenDomain rootSettings];
    iconAnimationSettings = [iconAnimationSettings2 iconAnimationSettings];
    reducedMotionSettings = [iconAnimationSettings reducedMotionSettings];
    [(SBIconAnimator *)v5 setSettings:reducedMotionSettings];
  }

  else
  {
    v9 = +[SBHHomeScreenDomain rootSettings];
    iconAnimationSettings2 = [v9 iconAnimationSettings];

    if (up)
    {
      [iconAnimationSettings2 centerLaunchSettings];
    }

    else
    {
      [iconAnimationSettings2 unlockSettings];
    }
    iconAnimationSettings = ;
    v5 = [[SBCenterIconZoomAnimator alloc] initWithFolderController:self];
    [(SBIconAnimator *)v5 setSettings:iconAnimationSettings];
  }

  return v5;
}

- (unint64_t)_depth
{
  outerFolderController = [(SBFolderController *)self outerFolderController];
  _depth = [outerFolderController _depth];

  return _depth + 1;
}

- (BOOL)_iconAppearsOnCurrentPage:(id)page
{
  pageCopy = page;
  folder = [(SBFolderController *)self folder];
  v6 = [folder indexPathForIcon:pageCopy];

  v7 = v6 && [v6 length] == 2 && -[SBFolderController _listIndexIsVisible:](self, "_listIndexIsVisible:", SBFolderRelativeListIndex(v6));
  return v7;
}

- (void)pushFolderIcon:(id)icon location:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  iconCopy = icon;
  locationCopy = location;
  completionCopy = completion;
  if ([(SBFolderController *)self isOpen])
  {
    if (iconCopy && [(SBFolderController *)self shouldOpenFolderIcon:iconCopy])
    {
      folder = [iconCopy folder];
      v14 = [(SBFolderController *)self controllerClassForFolder:folder];
      v15 = objc_alloc_init([(objc_class *)v14 configurationClass]);
      [v15 setFolder:folder];
      [v15 setOriginatingIconLocation:locationCopy];
      [(SBFolderController *)self configureInnerFolderControllerConfiguration:v15];
      v16 = [[v14 alloc] initWithConfiguration:v15];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66__SBFolderController_pushFolderIcon_location_animated_completion___block_invoke;
      v18[3] = &unk_1E808A0B8;
      v19 = completionCopy;
      [(SBNestingViewController *)self pushNestedViewController:v16 animated:animatedCopy withCompletion:v18];

      goto LABEL_11;
    }

    v17 = SBLogIcon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBFolderController pushFolderIcon:location:animated:completion:];
    }
  }

  else
  {
    v17 = SBLogIcon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBFolderController pushFolderIcon:location:animated:completion:];
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_11:
}

uint64_t __66__SBFolderController_pushFolderIcon_location_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)configureInnerFolderControllerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  listLayoutProvider = [(SBFolderController *)self listLayoutProvider];
  [configurationCopy setListLayoutProvider:listLayoutProvider];

  [configurationCopy setOrientation:{-[SBFolderController orientation](self, "orientation")}];
  [configurationCopy setAllowedOrientations:{-[SBFolderController allowedOrientations](self, "allowedOrientations")}];
  iconViewProvider = [(SBFolderController *)self iconViewProvider];
  [configurationCopy setIconViewProvider:iconViewProvider];

  folderIconImageCache = [(SBFolderController *)self folderIconImageCache];
  [configurationCopy setFolderIconImageCache:folderIconImageCache];

  iconImageCache = [(SBFolderController *)self iconImageCache];
  [configurationCopy setIconImageCache:iconImageCache];

  legibilitySettings = [(SBFolderController *)self legibilitySettings];
  [configurationCopy setLegibilitySettings:legibilitySettings];

  [configurationCopy setDelegate:self];
  [configurationCopy setFolderDelegate:self];
  [configurationCopy setAddsFocusGuidesForWrapping:{-[SBFolderController addsFocusGuidesForWrapping](self, "addsFocusGuidesForWrapping")}];
  [configurationCopy setVertical:{-[SBFolderController isVertical](self, "isVertical")}];
  [(SBFolderController *)self additionalPartialPagesToKeepVisible];
  [configurationCopy setAdditionalPartialPagesToKeepVisible:?];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self willCreateInnerFolderControllerWithConfiguration:configurationCopy];
  }
}

- (void)popFolderAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  innerFolderController = [(SBFolderController *)self innerFolderController];
  if (innerFolderController)
  {
    [(SBNestingViewController *)self popNestedViewControllerAnimated:animatedCopy withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)shouldOpenFolderIcon:(id)icon
{
  v3 = [(SBFolderController *)self firstIconViewForIcon:icon];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)restoreExpandedPathIdentifiers:(id)identifiers
{
  v36 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  folder = [(SBFolderController *)self folder];
  v5 = [folder resolvedComponentsForUniqueIdentifierPath:identifiersCopy];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  v8 = selfCopy;
  if (v7)
  {
    v9 = *v32;
    v8 = selfCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v11 == folder)
          {
            continue;
          }

          v12 = v11;
          v13 = [(SBFolderController *)selfCopy controllerClassForFolder:folder];
          v14 = objc_alloc_init([(objc_class *)v13 configurationClass]);
          [v14 setOriginatingIconLocation:@"SBIconLocationRoot"];
          [(SBFolderController *)selfCopy configureInnerFolderControllerConfiguration:v14];
          [v14 setFolder:v12];
          v15 = [[v13 alloc] initWithConfiguration:v14];
          [v24 addObject:v15];
          iconLocation = [(SBFolderController *)selfCopy iconLocation];
          [v14 setOriginatingIconLocation:iconLocation];
        }

        else
        {
          v17 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          v14 = v11;
          folder2 = [v8 folder];
          v20 = [folder2 indexOfList:v14];

          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v8 setCurrentPageIndex:v20];
          }

          v15 = v8;
        }

        v8 = v15;
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __53__SBFolderController_restoreExpandedPathIdentifiers___block_invoke;
  v26[3] = &unk_1E808D490;
  v26[4] = &v27;
  [(SBNestingViewController *)selfCopy setNestedViewControllers:v24 withCompletion:v26];
  v21 = *(v28 + 6) == 1;
  _Block_object_dispose(&v27, 8);

  return v21;
}

- (NSIndexPath)currentIndexPath
{
  innerFolderController = [(SBFolderController *)self innerFolderController];
  v4 = innerFolderController;
  if (innerFolderController)
  {
    currentIndexPath = [innerFolderController currentIndexPath];
    folder = [(SBFolderController *)self folder];
    folder2 = [v4 folder];
    v8 = [folder indexPathForFolder:folder2];
    v9 = [currentIndexPath bs_indexPathByAddingPrefix:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
  }

  return v9;
}

- (void)prepareToLaunchTappedIcon:(id)icon completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  handlerCopy = handler;
  if ([(SBFolderController *)self isDisplayingIcon:iconCopy])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [iconCopy uniqueIdentifier];
      v10 = 138412546;
      v11 = uniqueIdentifier;
      v12 = 1024;
      isScrolling = [(SBFolderController *)self isScrolling];
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Need to scroll to show tapped icon '%@' (already scrolling: %{BOOL}u)", &v10, 0x12u);
    }

    [(SBFolderController *)self setCurrentPageIndexToListDirectlyContainingIcon:iconCopy animated:1 completion:handlerCopy];
  }
}

- (void)_cancelTouchesForCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NSMapTable *)self->_iconViewCustomImageViewControllerTouchCancellationAssertions objectForKey:?];

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    cancelTouchesForCurrentEventInHostedContent = [controllerCopy cancelTouchesForCurrentEventInHostedContent];
    if (cancelTouchesForCurrentEventInHostedContent)
    {
      v6 = cancelTouchesForCurrentEventInHostedContent;
      iconViewCustomImageViewControllerTouchCancellationAssertions = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
      if (!iconViewCustomImageViewControllerTouchCancellationAssertions)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v9 = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
        self->_iconViewCustomImageViewControllerTouchCancellationAssertions = strongToStrongObjectsMapTable;

        iconViewCustomImageViewControllerTouchCancellationAssertions = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
      }

      [(NSMapTable *)iconViewCustomImageViewControllerTouchCancellationAssertions setObject:v6 forKey:controllerCopy];
    }
  }
}

- (id)cancelTouchesForAllCustomIconImageViewControllersForReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = [[SBHCompoundAssertion alloc] initWithReason:reasonCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_iconViewsWithCustomImageViewControllers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        customIconImageViewController = [*(*(&v15 + 1) + 8 * i) customIconImageViewController];
        if (objc_opt_respondsToSelector())
        {
          cancelTouchesForCurrentEventInHostedContent = [customIconImageViewController cancelTouchesForCurrentEventInHostedContent];
          if (cancelTouchesForCurrentEventInHostedContent)
          {
            v13 = cancelTouchesForCurrentEventInHostedContent;
            [(SBHCompoundAssertion *)v5 addAssertion:cancelTouchesForCurrentEventInHostedContent];
          }
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)matchMoveSourceViewForIconView:(id)view
{
  location = [view location];
  v5 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", location);

  if (v5)
  {
    [(SBFolderController *)self dockListView];
  }

  else
  {
    [(SBFolderController *)self currentIconListView];
  }
  v6 = ;

  return v6;
}

- (UIView)fallbackIconContainerView
{
  animationContext = [(SBFolderController *)self animationContext];
  fallbackIconContainer = [animationContext fallbackIconContainer];

  return fallbackIconContainer;
}

- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  folderView = [(SBFolderController *)self folderView];
  v8 = folderView;
  v26 = 0u;
  v27 = 0u;
  if (folderView)
  {
    [folderView visibleColumnRangeExcludingAdditionalWidthKeptVisible];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v18 = v26;
  v13 = __72__SBFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke;
  v14 = &unk_1E808D4E0;
  v19 = v27;
  v16 = &v22;
  v17 = v21;
  v20 = (options & 8) != 0;
  v9 = blockCopy;
  v15 = v9;
  [v8 enumerateIconListViewsUsingBlock:&v11];
  if ((options & 0x10) != 0 && (v23[3] & 1) == 0)
  {
    v10 = [(SBFolderController *)self innerFolderController:v11];
    [v10 enumerateDisplayedIconViewsWithOptions:options usingBlock:v9];
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);
}

void __72__SBFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [v5 iconColumnsForCurrentOrientation];
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = *(a1 + 72);
    v22[0] = *(a1 + 56);
    v22[1] = v8;
    VisibleColumnsForIconListIndex = SBVisibleColumnRangeGetVisibleColumnsForIconListIndex(v22, v7);
    v11 = v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__SBFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke_2;
    v14[3] = &unk_1E808D4B8;
    v21 = *(a1 + 88);
    v15 = v6;
    v18 = VisibleColumnsForIconListIndex;
    v19 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    v20 = a3;
    [v15 enumerateIconViewsUsingBlock:v14];
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __72__SBFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 80) != 1 || ((v6 = [*(a1 + 32) coordinateForIconAtIndex:a3], v7 = *(a1 + 56), v6 - 1 >= v7) ? (v8 = v6 - 1 - v7 >= *(a1 + 64)) : (v8 = 1), !v8))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  blockCopy = block;
  presentedIconLocations = [(SBFolderController *)self presentedIconLocations];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [presentedIconLocations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(presentedIconLocations);
        }

        v13 = [(SBFolderController *)self iconViewForIcon:iconCopy location:*(*(&v14 + 1) + 8 * v12)];
        if (v13)
        {
          blockCopy[2](blockCopy, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [presentedIconLocations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)setContentAlpha:(double)alpha
{
  folderView = [(SBFolderController *)self folderView];
  [folderView setContentAlpha:alpha];
}

- (UIEdgeInsets)statusBarInsetsForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  v8 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v19.receiver = self;
    v19.super_class = SBFolderController;
    [(SBNestingViewController *)&v19 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    v12 = v15;
    v14 = v16;
    goto LABEL_8;
  }

  viewIfLoaded = [containerCopy viewIfLoaded];
  [viewIfLoaded bounds];
  v12 = v11;
  v14 = v13;

LABEL_8:
  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v20.receiver = self;
  v20.super_class = SBFolderController;
  [(SBFolderController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  containerView = [coordinatorCopy containerView];
  _window = [containerView _window];

  _fromWindowOrientation = [_window _fromWindowOrientation];
  _toWindowOrientation = [_window _toWindowOrientation];
  [(SBFolderController *)self allowedOrientations];
  orientation = [(SBFolderController *)self orientation];
  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation() && orientation != _toWindowOrientation)
  {
    v13 = SBLogIcon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v30.width = width;
      v30.height = height;
      v16 = NSStringFromCGSize(v30);
      *buf = 138544130;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2048;
      v26 = _fromWindowOrientation;
      v27 = 2048;
      v28 = _toWindowOrientation;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "%{public}@ will transition to size %{public}@, %li to %li orientation", buf, 0x2Au);
    }

    [(SBFolderController *)self setRotating:1];
    folderView = [(SBFolderController *)self folderView];
    [folderView transitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
    [(SBFolderController *)self _resetFakeStatusBarFrameOnly];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v19[3] = &unk_1E808B460;
    v19[4] = self;
    v19[5] = _toWindowOrientation;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v18[3] = &unk_1E8089418;
    v18[4] = self;
    [coordinatorCopy animateAlongsideTransition:v19 completion:v18];
  }
}

uint64_t __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOrientation:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v8 >= v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  [*(*(a1 + 32) + 1064) setFrame:{v4, v6, v11, v11}];
  v12 = *(a1 + 32);

  return [v12 _resetFakeStatusBarFrameOnly];
}

uint64_t __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[133];
  v4 = [v2 view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = *(a1 + 32);

  return [v5 setRotating:0];
}

- (Class)controllerClassForFolder:(id)folder
{
  folderCopy = folder;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v6 = folderDelegate;
  if (folderDelegate)
  {
    v7 = [folderDelegate controllerClassForFolder:folderCopy];
  }

  else
  {
    v7 = objc_opt_class();
  }

  v8 = v7;
  v9 = v7;

  return v8;
}

- (BOOL)folderController:(id)controller canChangeCurrentPageIndexToIndex:(int64_t)index
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v7 = folderDelegate;
  if (folderDelegate)
  {
    v8 = [folderDelegate folderController:self canChangeCurrentPageIndexToIndex:index];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)folderController:(id)controller draggedIconShouldDropFromListView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:controllerCopy draggedIconShouldDropFromListView:viewCopy];
  }
}

- (BOOL)folderControllerShouldClose:(id)close withPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v7 = folderDelegate;
  if (!folderDelegate || [folderDelegate folderControllerShouldClose:self withPinchGesture:gestureCopy])
  {
    [(SBFolderController *)self popFolderAnimated:1 completion:0];
  }

  return 0;
}

- (void)folderControllerShouldBeginEditing:(id)editing withHaptic:(BOOL)haptic
{
  hapticCopy = haptic;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldBeginEditing:self withHaptic:hapticCopy];
}

- (double)minimumHomeScreenScaleForFolderController:(id)controller
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate minimumHomeScreenScaleForFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (void)folderControllerShouldEndEditing:(id)editing
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldEndEditing:self];
}

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerWillBeginScrolling:scrollingCopy];
}

- (void)folderControllerDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerDidEndScrolling:scrollingCopy];
}

- (BOOL)folderController:(id)controller iconListView:(id)view canHandleIconDropSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [_dragDelegate folderController:self iconListView:viewCopy canHandleIconDropSession:sessionCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)folderController:(id)controller iconListView:(id)view iconDropSessionDidEnter:(id)enter
{
  viewCopy = view;
  enterCopy = enter;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:viewCopy iconDropSessionDidEnter:enterCopy];
  }
}

- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_dragDelegate folderController:self iconListView:viewCopy iconDropSessionDidUpdate:updateCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  return v10;
}

- (void)folderController:(id)controller iconListView:(id)view iconDropSessionDidExit:(id)exit
{
  viewCopy = view;
  exitCopy = exit;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:viewCopy iconDropSessionDidExit:exitCopy];
  }
}

- (void)folderController:(id)controller iconListView:(id)view performIconDrop:(id)drop
{
  viewCopy = view;
  dropCopy = drop;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:viewCopy performIconDrop:dropCopy];
  }
}

- (id)folderController:(id)controller iconListView:(id)view iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  v15 = iconViewCopy;
  if (objc_opt_respondsToSelector())
  {
    v15 = [_dragDelegate folderController:controllerCopy iconListView:viewCopy iconViewForDroppingIconDragItem:itemCopy proposedIconView:iconViewCopy];
  }

  return v15;
}

- (void)folderController:(id)controller iconListView:(id)view willUseIconView:(id)iconView forDroppingIconDragItem:(id)item
{
  controllerCopy = controller;
  viewCopy = view;
  iconViewCopy = iconView;
  itemCopy = item;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:controllerCopy iconListView:viewCopy willUseIconView:iconViewCopy forDroppingIconDragItem:itemCopy];
  }
}

- (id)folderController:(id)controller iconListView:(id)view previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  previewCopy = preview;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  v15 = previewCopy;
  if (objc_opt_respondsToSelector())
  {
    v15 = [_dragDelegate folderController:controllerCopy iconListView:viewCopy previewForDroppingIconDragItem:itemCopy proposedPreview:previewCopy];
  }

  return v15;
}

- (void)folderController:(id)controller iconListView:(id)view iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator
{
  viewCopy = view;
  itemCopy = item;
  animatorCopy = animator;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:viewCopy iconDragItem:itemCopy willAnimateDropWithAnimator:animatorCopy];
  }
}

- (BOOL)folderController:(id)controller iconListView:(id)view shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView
{
  viewCopy = view;
  sessionCopy = session;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [_dragDelegate folderController:self iconListView:viewCopy shouldAllowSpringLoadedInteractionForIconDropSession:sessionCopy onIconView:iconViewCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderController:(id)controller iconListView:(id)view springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView
{
  viewCopy = view;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:viewCopy springLoadedInteractionForIconDragDidCompleteOnIconView:iconViewCopy];
  }
}

- (id)folderController:(id)controller iconListView:(id)view customSpringAnimationBehaviorForDroppingItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [_dragDelegate folderController:self iconListView:viewCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)controller
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate contentOverlayInsetsFromParentIfAvailableForFolderController:self];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (id)folderController:(id)controller accessibilityTintColorForScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [folderDelegate folderController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)folderController:(id)controller willCreateInnerFolderControllerWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:controllerCopy willCreateInnerFolderControllerWithConfiguration:configurationCopy];
  }
}

- (void)folderControllerWillOpen:(id)open
{
  openCopy = open;
  [(SBFolderController *)openCopy _updateFolderRequiredTrailingEmptyListCount];
  folderView = [(SBFolderController *)openCopy folderView];
  [folderView prepareToOpen];

  innerFolderController = [(SBFolderController *)self innerFolderController];

  if (innerFolderController)
  {
    folderView2 = [(SBFolderController *)self folderView];
    [folderView2 setSuppressesEditingStateForListViews:1];
  }

  [(SBFolderController *)self updateContentViewOcclusion];
  if (openCopy == self)
  {
    folder = [(SBFolderController *)self folder];
    if ([folder isCancelable])
    {
      [(SBFolderController *)self setWasFolderCancelable:1];
      [folder setCancelable:0];
    }
  }

  else
  {
    [(SBFolderController *)self addAssertionsFromInnerFolderController:?];
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderControllerWillOpen:openCopy];
  }
}

- (void)folderControllerDidOpen:(id)open
{
  openCopy = open;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderControllerDidOpen:openCopy];
  }
}

- (void)folderControllerWillClose:(id)close
{
  closeCopy = close;
  folderView = [(SBFolderController *)self folderView];
  [folderView setSuppressesEditingStateForListViews:0];

  folder = [(SBFolderController *)self folder];
  if ([folder isRootFolder])
  {
    folderView2 = [(SBFolderController *)self folderView];
    [folderView2 setContentVisibility:{-[SBFolderController effectiveContentVisibilityFolderHasInnerFolder:](self, "effectiveContentVisibilityFolderHasInnerFolder:", 0)}];
  }

  else
  {
    [(SBFolderController *)self updateContentViewOcclusion];
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderControllerWillClose:closeCopy];
  }
}

- (void)folderControllerDidClose:(id)close
{
  closeCopy = close;
  folder = [(SBFolderController *)closeCopy folder];
  if (([folder isRootFolder] & 1) == 0)
  {
    [folder setRequiredTrailingEmptyListCount:0];
  }

  if (closeCopy == self)
  {
    if ([(SBFolderController *)self wasFolderCancelable])
    {
      [folder setCancelable:1];
    }
  }

  else
  {
    [(SBFolderController *)self removeAssertionsFromInnerFolderController:?];
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderControllerDidClose:closeCopy];
  }
}

- (id)folderControllerWantsToHideStatusBar:(id)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [folderDelegate folderControllerWantsToHideStatusBar:barCopy animated:animatedCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fakeStatusBarForFolderController:(id)controller
{
  controllerCopy = controller;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [folderDelegate fakeStatusBarForFolderController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)folderController:(id)controller willRemoveFakeStatusBar:(id)bar
{
  barCopy = bar;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self willRemoveFakeStatusBar:barCopy];
  }
}

- (id)statusBarStyleRequestForFolderController:(id)controller
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [folderDelegate statusBarStyleRequestForFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)controller
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate statusBarEdgeInsetsForFolderController:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (id)folderController:(id)controller iconAnimatorForOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated initialDelay:(double *)delay
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [folderDelegate folderController:self iconAnimatorForOperation:operation onViewController:viewControllerCopy animated:animatedCopy initialDelay:delay];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderController:(id)controller willUseIconTransitionAnimator:(id)animator forOperation:(int64_t)operation onViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  animatorCopy = animator;
  viewControllerCopy = viewController;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self willUseIconTransitionAnimator:animatorCopy forOperation:operation onViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (id)nestingViewController:(id)controller sourceViewForPresentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    folder = [viewControllerCopy folder];
    icon = [folder icon];

    v12 = [(SBFolderController *)self firstIconViewForIcon:icon];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBFolderController;
    v12 = [(SBNestingViewController *)&v14 nestingViewController:controllerCopy sourceViewForPresentingViewController:viewControllerCopy];
  }

  return v12;
}

- (Class)iconListViewClassForFolderView:(id)view
{
  v3 = objc_opt_class();

  return [v3 listViewClass];
}

- (id)iconLocationForFolderView:(id)view
{
  v3 = objc_opt_class();

  return [v3 iconLocation];
}

- (BOOL)folderView:(id)view canChangeCurrentPageIndexToIndex:(int64_t)index
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v7 = folderDelegate;
  if (folderDelegate)
  {
    v8 = [folderDelegate folderController:self canChangeCurrentPageIndexToIndex:index];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)folderView:(id)view currentPageIndexDidChange:(int64_t)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:self];
}

- (void)folderViewWillBeginScrolling:(id)scrolling
{
  v34 = *MEMORY[0x1E69E9840];
  scrollingCopy = scrolling;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerWillBeginScrolling:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBFolderControllerWillBeginScrollingNotification" object:self userInfo:0];

  scrollView = [scrollingCopy scrollView];
  v8 = scrollView;
  if (scrollView)
  {
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer locationInView:v8];
    v11 = v10;
    v13 = v12;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_iconViewsWithCustomImageViewControllers;
    v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          customIconImageViewController = [*(*(&v29 + 1) + 8 * v18) customIconImageViewController];
          view = [customIconImageViewController view];
          superview = [view superview];
          [superview convertPoint:v8 fromView:{v11, v13}];
          v23 = v22;
          v25 = v24;

          [view frame];
          v35.x = v23;
          v35.y = v25;
          if (CGRectContainsPoint(v36, v35))
          {
            [(SBFolderController *)self _cancelTouchesForCustomIconImageViewController:customIconImageViewController];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }
  }

  [(SBFolderController *)self _disableTouchesOnAllCustomIconImageViewControllers];
  scrollingLightUpdatesAssertion = [(SBFolderController *)self scrollingLightUpdatesAssertion];

  if (!scrollingLightUpdatesAssertion)
  {
    v27 = +[SBHLightSourceManager sharedManager];
    v28 = [v27 reduceUpdateFrequencyForReason:@"scrolling"];

    [(SBFolderController *)self setScrollingLightUpdatesAssertion:v28];
  }
}

- (void)folderViewDidEndScrolling:(id)scrolling
{
  [(SBFolderController *)self updateAppearanceStateForPageViewControllers:1];
  [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerDidEndScrolling:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBFolderControllerDidEndScrollingNotification" object:self userInfo:0];

  iconImageViewControllerKeepStaticForAnimatedScrollAssertion = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  if (iconImageViewControllerKeepStaticForAnimatedScrollAssertion)
  {
    [(BSInvalidatable *)iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
    v7 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
    self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = 0;
  }

  scrollingLightUpdatesAssertion = [(SBFolderController *)self scrollingLightUpdatesAssertion];
  [scrollingLightUpdatesAssertion invalidate];

  [(SBFolderController *)self setScrollingLightUpdatesAssertion:0];
}

- (void)folderView:(id)view willAnimateScrollToPageIndex:(int64_t)index
{
  viewCopy = view;
  iconImageViewControllerKeepStaticForAnimatedScrollAssertion = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  if (iconImageViewControllerKeepStaticForAnimatedScrollAssertion)
  {
    [(BSInvalidatable *)iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
    v7 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
    self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = 0;
  }

  v8 = [MEMORY[0x1E696AD50] indexSetWithIndex:index];
  [v8 addIndex:{objc_msgSend(viewCopy, "currentPageIndex")}];
  v9 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v8 forReason:@"AnimatedScroll"];
  [(BSInvalidatable *)self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
  v10 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = v9;
}

- (void)folderViewShouldClose:(id)close withPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(SBFolderController *)self isRotating])
  {
    folderDelegate = [(SBFolderController *)self folderDelegate];
    [folderDelegate folderControllerShouldClose:self withPinchGesture:gestureCopy];
  }
}

- (void)folderViewShouldBeginEditing:(id)editing
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldBeginEditing:self withHaptic:0];
}

- (void)folderViewShouldEndEditing:(id)editing
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldEndEditing:self];
}

- (double)minimumHomeScreenScaleForFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate minimumHomeScreenScaleForFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)folderView:(id)view iconListView:(id)listView canHandleIconDropSession:(id)session
{
  listViewCopy = listView;
  sessionCopy = session;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [_dragDelegate folderController:self iconListView:listViewCopy canHandleIconDropSession:sessionCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)folderView:(id)view iconListView:(id)listView iconDropSessionDidEnter:(id)enter
{
  listViewCopy = listView;
  enterCopy = enter;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:listViewCopy iconDropSessionDidEnter:enterCopy];
  }

  [(SBFolderController *)self noteIconDrag:enterCopy didEnterIconListView:listViewCopy];
  [listViewCopy addDragObserver:self forDropSession:enterCopy];
}

- (id)folderView:(id)view iconListView:(id)listView iconDropSessionDidUpdate:(id)update
{
  listViewCopy = listView;
  updateCopy = update;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([_dragDelegate folderController:self iconListView:listViewCopy iconDropSessionDidUpdate:updateCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  [(SBFolderController *)self noteIconDrag:updateCopy didChangeInIconListView:listViewCopy];
  if ([listViewCopy iconsNeedLayout])
  {
    [(SBFolderController *)self layoutIconListsWithAnimationType:0 forceRelayout:1];
  }

  return v10;
}

- (void)folderView:(id)view iconListView:(id)listView iconDropSessionDidExit:(id)exit
{
  listViewCopy = listView;
  exitCopy = exit;
  [(SBFolderController *)self noteIconDrag:exitCopy didExitIconListView:listViewCopy];
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:listViewCopy iconDropSessionDidExit:exitCopy];
  }
}

- (void)folderView:(id)view iconListView:(id)listView performIconDrop:(id)drop
{
  listViewCopy = listView;
  dropCopy = drop;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:listViewCopy performIconDrop:dropCopy];
  }
}

- (id)folderView:(id)view iconListView:(id)listView iconViewForDroppingIconDragItem:(id)item proposedIconView:(id)iconView
{
  listViewCopy = listView;
  itemCopy = item;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  v13 = iconViewCopy;
  if (objc_opt_respondsToSelector())
  {
    v13 = [_dragDelegate folderController:self iconListView:listViewCopy iconViewForDroppingIconDragItem:itemCopy proposedIconView:iconViewCopy];
  }

  return v13;
}

- (void)folderView:(id)view iconListView:(id)listView willUseIconView:(id)iconView forDroppingIconDragItem:(id)item
{
  listViewCopy = listView;
  iconViewCopy = iconView;
  itemCopy = item;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self iconListView:listViewCopy willUseIconView:iconViewCopy forDroppingIconDragItem:itemCopy];
  }
}

- (id)folderView:(id)view iconListView:(id)listView previewForDroppingIconDragItem:(id)item proposedPreview:(id)preview
{
  listViewCopy = listView;
  itemCopy = item;
  previewCopy = preview;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  v13 = previewCopy;
  if (objc_opt_respondsToSelector())
  {
    v13 = [_dragDelegate folderController:self iconListView:listViewCopy previewForDroppingIconDragItem:itemCopy proposedPreview:previewCopy];
  }

  return v13;
}

- (void)folderView:(id)view iconListView:(id)listView iconDragItem:(id)item willAnimateDropWithAnimator:(id)animator
{
  viewCopy = view;
  listViewCopy = listView;
  itemCopy = item;
  animatorCopy = animator;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:listViewCopy iconDragItem:itemCopy willAnimateDropWithAnimator:animatorCopy];
  }

  if ([(SBFolderController *)self disablesScrollingWhileIconDragIsDropping])
  {
    [viewCopy _setScrollingDisabled:1 forReason:@"SBFolderController-IconDropping"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__SBFolderController_folderView_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke;
    v15[3] = &unk_1E8089000;
    v16 = viewCopy;
    [animatorCopy addCompletion:v15];
  }
}

- (BOOL)folderView:(id)view iconListView:(id)listView shouldAllowSpringLoadedInteractionForIconDropSession:(id)session onIconView:(id)iconView
{
  listViewCopy = listView;
  sessionCopy = session;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [_dragDelegate folderController:self iconListView:listViewCopy shouldAllowSpringLoadedInteractionForIconDropSession:sessionCopy onIconView:iconViewCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderView:(id)view iconListView:(id)listView springLoadedInteractionForIconDragDidCompleteOnIconView:(id)iconView
{
  listViewCopy = listView;
  iconViewCopy = iconView;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_dragDelegate folderController:self iconListView:listViewCopy springLoadedInteractionForIconDragDidCompleteOnIconView:iconViewCopy];
  }
}

- (id)folderView:(id)view iconListView:(id)listView customSpringAnimationBehaviorForDroppingItem:(id)item
{
  listViewCopy = listView;
  itemCopy = item;
  _dragDelegate = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [_dragDelegate folderController:self iconListView:listViewCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate contentOverlayInsetsFromParentIfAvailableForFolderController:self];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (id)folderView:(id)view accessibilityTintColorForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  _screen = [viewCopy _screen];
  coordinateSpace = [_screen coordinateSpace];
  [viewCopy convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (objc_opt_respondsToSelector())
  {
    v21 = [folderDelegate folderController:self accessibilityTintColorForScreenRect:{v14, v16, v18, v20}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)folderViewDidChangeOrientation:(id)orientation
{
  orientationCopy = orientation;
  if (![(SBFolderController *)self isRotating])
  {
    -[SBFolderController setOrientation:](self, "setOrientation:", [orientationCopy orientation]);
  }
}

- (void)folderView:(id)view didAddIconListView:(id)listView
{
  listViewCopy = listView;
  [listViewCopy addLayoutObserver:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBFolderController_folderView_didAddIconListView___block_invoke;
  v7[3] = &unk_1E808B620;
  v7[4] = self;
  v8 = listViewCopy;
  v6 = listViewCopy;
  [v6 enumerateIconViewsUsingBlock:v7];
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  iconViewCopy = iconView;
  [iconViewCopy addObserver:self];
  [iconViewCopy setOverrideParentViewControllerForCustomIconImageViewController:self];
  customIconImageViewController = [iconViewCopy customIconImageViewController];
  if (customIconImageViewController)
  {
    v7 = [(SBFolderController *)self parentViewControllerForCustomIconImageViewControllerForIconView:iconViewCopy];
    parentViewController = [customIconImageViewController parentViewController];

    if (parentViewController != v7)
    {
      [v7 bs_addChildViewController:customIconImageViewController];
    }

    v9 = SBLogRootController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderController iconListView:didAddIconView:];
    }

    [(SBFolderController *)self _updatePresentationModeForIconView:iconViewCopy];
    view = [customIconImageViewController view];
    superview = [view superview];

    if (!superview)
    {
      NSLog(&cfstr_NoSuperview.isa);
    }

    if (([iconViewCopy isIconImageViewBorrowed] & 1) == 0)
    {
      [iconViewCopy setCustomIconImageViewHitTestingDisabled:{-[SBFolderController _isHitTestingDisabledOnCustomIconImageViewControllers](self, "_isHitTestingDisabledOnCustomIconImageViewControllers")}];
    }

    [(SBFolderController *)self _beginTrackingIconViewWithCustomImageViewController:iconViewCopy];
  }
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  iconViewCopy = iconView;
  [iconViewCopy removeObserver:self];
  [iconViewCopy setOverrideParentViewControllerForCustomIconImageViewController:0];
  customIconImageViewController = [iconViewCopy customIconImageViewController];
  v7 = customIconImageViewController;
  if (customIconImageViewController)
  {
    view = [customIconImageViewController view];
    v9 = [view isDescendantOfView:iconViewCopy];
    v10 = SBLogRootController();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (!v9)
    {
      if (v11)
      {
        [SBFolderController iconListView:didRemoveIconView:];
      }

      goto LABEL_12;
    }

    if (v11)
    {
      [SBFolderController iconListView:didRemoveIconView:];
    }

    [v7 willMoveToParentViewController:0];
    [view removeFromSuperview];
    [v7 removeFromParentViewController];
    if ([v7 bs_isAppearingOrAppeared])
    {
      [v7 bs_beginAppearanceTransition:0 animated:0];
    }

    else if ([v7 _appearState] != 3)
    {
LABEL_12:
      [(SBFolderController *)self _endTrackingIconViewWithCustomImageViewController:iconViewCopy];

      goto LABEL_13;
    }

    [v7 bs_endAppearanceTransition];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)iconView:(id)view didChangeCustomImageViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  customIconImageViewController = [viewCopy customIconImageViewController];
  if (controllerCopy)
  {
    v9 = SBLogRootController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderController iconView:didChangeCustomImageViewController:];
    }

    [(SBFolderController *)self bs_removeChildViewController:controllerCopy];
    [(SBFolderController *)self _endTrackingIconViewWithCustomImageViewController:viewCopy];
  }

  if (customIconImageViewController)
  {
    if (([viewCopy isIconImageViewBorrowed] & 1) == 0)
    {
      [viewCopy setCustomIconImageViewHitTestingDisabled:{-[SBFolderController _isHitTestingDisabledOnCustomIconImageViewControllers](self, "_isHitTestingDisabledOnCustomIconImageViewControllers")}];
      v10 = SBLogRootController();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBFolderController iconView:didChangeCustomImageViewController:];
      }

      view = [customIconImageViewController view];
      superview = [view superview];

      if (!superview)
      {
        NSLog(&cfstr_NoSuperview.isa);
      }

      v13 = [(SBFolderController *)self parentViewControllerForCustomIconImageViewControllerForIconView:viewCopy];
      [v13 bs_addChildViewController:customIconImageViewController];
    }

    [(SBFolderController *)self _beginTrackingIconViewWithCustomImageViewController:viewCopy];
  }
}

- (void)iconViewWillPresentContextMenu:(id)menu
{
  object = [menu object];
  v4 = [(SBFolderController *)self isDisplayingIconView:object];
  v5 = object;
  if (v4)
  {
    customIconImageViewController = [object customIconImageViewController];
    if (customIconImageViewController)
    {
      [(SBFolderController *)self _cancelTouchesForCustomIconImageViewController:customIconImageViewController];
    }

    v5 = object;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)iconViewDidDismissContextMenu:(id)menu
{
  object = [menu object];
  if ([(SBFolderController *)self isDisplayingIconView:?])
  {
    [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  }
}

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  v20 = *MEMORY[0x1E69E9840];
  removedIconsCopy = removedIcons;
  innerFolderController = [(SBFolderController *)self innerFolderController];
  folder = [innerFolderController folder];
  icon = [folder icon];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = removedIconsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v15 + 1) + 8 * v14) isEqual:{icon, v15}])
        {
          [(SBFolderController *)self popFolderAnimated:0 completion:0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  iconCopy = icon;
  innerFolderController = [(SBFolderController *)self innerFolderController];
  folder = [innerFolderController folder];
  icon = [folder icon];

  LODWORD(folder) = [iconCopy isEqual:icon];
  if (folder)
  {
    [(SBFolderController *)self popFolderAnimated:0 completion:0];
  }
}

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  iconLocation = [(SBFolderController *)self iconLocation];
  v6 = [locationCopy isEqualToString:iconLocation];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v2 = MEMORY[0x1E695DFD8];
  iconLocation = [(SBFolderController *)self iconLocation];
  v4 = [v2 setWithObject:iconLocation];

  return v4;
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x1E69E9840];
  innerFolderController = [(SBFolderController *)self innerFolderController];
  v4 = innerFolderController;
  if (innerFolderController)
  {
    folderView = [innerFolderController folderView];
    v10[0] = folderView;
    v6 = v10;
  }

  else
  {
    folderView = [(SBFolderController *)self folderView];
    v9 = folderView;
    v6 = &v9;
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v7;
}

- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options
{
  reasonCopy = reason;
  layoutCopy = layout;
  folderView = [(SBFolderController *)self folderView];
  v11 = [folderView beginHidingIconsFromLayout:layoutCopy reason:reasonCopy options:options];

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

  innerFolderController = [(SBFolderController *)self innerFolderController];
  if (innerFolderController)
  {
    [v15 addAssertionFromChild:innerFolderController];
  }

  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v19 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = weakObjectsHashTable;

    layoutHidingAssertions = self->_layoutHidingAssertions;
  }

  [(NSHashTable *)layoutHidingAssertions addObject:v15];

  return v15;
}

- (void)addAssertionsFromInnerFolderController:(id)controller
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutHidingAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) addAssertionFromChild:{controllerCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeAssertionsFromInnerFolderController:(id)controller
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutHidingAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) removeAndInvalidateAssertionsForChild:{controllerCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBFolderView *)self->_contentView setLegibilitySettings:self->_legibilitySettings];
    innerFolderController = [(SBFolderController *)self innerFolderController];
    [innerFolderController setLegibilitySettings:self->_legibilitySettings];
  }
}

- (id)accessibilityTintColorForScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    [(SBFolderController *)self defaultAccessibilityTintColor];
  }
  v9 = ;

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFolderController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFolderController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFolderController *)self succinctDescriptionBuilder];
  folder = [(SBFolderController *)self folder];
  v6 = [succinctDescriptionBuilder appendObject:folder withName:@"folder"];

  folderView = [(SBFolderController *)self folderView];
  v8 = [succinctDescriptionBuilder appendObject:folderView withName:@"folderView"];

  originatingIconLocation = [(SBFolderController *)self originatingIconLocation];
  v10 = [originatingIconLocation isEqualToString:@"SBIconLocationNone"];

  if ((v10 & 1) == 0)
  {
    originatingIconLocation2 = [(SBFolderController *)self originatingIconLocation];
    v12 = [succinctDescriptionBuilder appendObject:originatingIconLocation2 withName:@"originatingIconLocation"];
  }

  contentVisibility = [(SBFolderController *)self contentVisibility];
  if (contentVisibility)
  {
    v14 = SBHStringFromContentVisibility(contentVisibility);
    [succinctDescriptionBuilder appendString:v14 withName:@"contentVisibility"];
  }

  return succinctDescriptionBuilder;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (void)nestingViewController:animationControllerForOperation:onViewController:animated:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_ERROR, "Forcing cross-fade animation for folder transition for icon: %@", v1, 0xCu);
}

- (void)pushFolderIcon:location:animated:completion:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_ERROR, "%s Unable to open folder icon %@ because we aren't actually open!", v1, 0x16u);
}

- (void)pushFolderIcon:location:animated:completion:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_ERROR, "%s Folder icon %@ cannot be opened because it does not exist on the current page.", v1, 0x16u);
}

@end