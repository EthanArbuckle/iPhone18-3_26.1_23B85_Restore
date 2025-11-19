@interface SBFolderController
+ (Class)listViewClass;
- (BOOL)_allowUserInteraction;
- (BOOL)_iconAppearsOnCurrentPage:(id)a3;
- (BOOL)_isValidPageIndex:(int64_t)a3;
- (BOOL)allowsGlassGroupingForCustomIconImageViewControllers;
- (BOOL)doesPageContainIconListView:(int64_t)a3;
- (BOOL)folderController:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4;
- (BOOL)folderController:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5;
- (BOOL)folderController:(id)a3 iconListView:(id)a4 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a5 onIconView:(id)a6;
- (BOOL)folderControllerShouldClose:(id)a3 withPinchGesture:(id)a4;
- (BOOL)folderView:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4;
- (BOOL)folderView:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5;
- (BOOL)folderView:(id)a3 iconListView:(id)a4 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a5 onIconView:(id)a6;
- (BOOL)hasDock;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isPageControlHidden;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)isScrollDecelerating;
- (BOOL)isScrollDragging;
- (BOOL)isScrollTracking;
- (BOOL)isVertical;
- (BOOL)restoreExpandedPathIdentifiers:(id)a3;
- (BOOL)shouldOpenFolderIcon:(id)a3;
- (BOOL)shouldViewControllersAppearVisibleForIconView:(id)a3;
- (BOOL)usesGlassGroup;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (Class)controllerClassForFolder:(id)a3;
- (Class)iconListViewClassForFolderView:(id)a3;
- (NSArray)visibleIconListViews;
- (NSIndexPath)currentIndexPath;
- (NSSet)presentedIconLocations;
- (SBFolderController)deepestFolderController;
- (SBFolderController)initWithConfiguration:(id)a3;
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
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3;
- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderView:(id)a3;
- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)a3;
- (UIEdgeInsets)statusBarInsetsForOrientation:(int64_t)a3;
- (UIView)contentView;
- (UIView)fallbackIconContainerView;
- (UIWindow)animationWindow;
- (double)currentScrollingOffset;
- (double)minimumHomeScreenScaleForFolderController:(id)a3;
- (double)minimumHomeScreenScaleForFolderView:(id)a3;
- (double)pageControlAlpha;
- (id)_dragDelegate;
- (id)_makeContentViewWithConfiguration:(id)a3;
- (id)_newAnimatorForZoomUp:(BOOL)a3;
- (id)accessibilityTintColorForScreenRect:(CGRect)a3;
- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)borrowScalingView;
- (id)cancelTouchesForAllCustomIconImageViewControllersForReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)disableAutoScrollForReason:(id)a3;
- (id)fakeStatusBarForFolderController:(id)a3;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4;
- (id)firstIconViewWithOptions:(unint64_t)a3 iconPassingTest:(id)a4;
- (id)folderController:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4;
- (id)folderController:(id)a3 iconAnimatorForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6 initialDelay:(double *)a7;
- (id)folderController:(id)a3 iconListView:(id)a4 customSpringAnimationBehaviorForDroppingItem:(id)a5;
- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5;
- (id)folderController:(id)a3 iconListView:(id)a4 iconViewForDroppingIconDragItem:(id)a5 proposedIconView:(id)a6;
- (id)folderController:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6;
- (id)folderControllerForFolder:(id)a3;
- (id)folderControllerWantsToHideStatusBar:(id)a3 animated:(BOOL)a4;
- (id)folderView:(id)a3 accessibilityTintColorForRect:(CGRect)a4;
- (id)folderView:(id)a3 iconListView:(id)a4 customSpringAnimationBehaviorForDroppingItem:(id)a5;
- (id)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5;
- (id)folderView:(id)a3 iconListView:(id)a4 iconViewForDroppingIconDragItem:(id)a5 proposedIconView:(id)a6;
- (id)folderView:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6;
- (id)iconListViewAtIndex:(unint64_t)a3;
- (id)iconListViewAtPoint:(CGPoint)a3;
- (id)iconListViewForDrag:(id)a3;
- (id)iconListViewForIconListModelIndex:(unint64_t)a3;
- (id)iconListViewForTouch:(id)a3;
- (id)iconListViewWithIconListModel:(id)a3;
- (id)iconLocation;
- (id)iconLocationForFolderView:(id)a3;
- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5;
- (id)keepIconImageViewControllersSnapshotsOfType:(unint64_t)a3 inAllPagesExcluding:(id)a4 forReason:(id)a5;
- (id)keyCommands;
- (id)matchMoveSourceViewForIconView:(id)a3;
- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6;
- (id)nestingViewController:(id)a3 sourceViewForPresentingViewController:(id)a4;
- (id)pageViewControllersForLeadingPageIndex:(int64_t)a3 trailingPageIndex:(int64_t)a4;
- (id)preferredFocusEnvironments;
- (id)statusBarStyleRequestForFolderController:(id)a3;
- (id)succinctDescription;
- (id)viewControllersForPageIndex:(int64_t)a3;
- (id)visiblePageViewControllers;
- (int64_t)pageIndexForIconListModelIndex:(unint64_t)a3;
- (int64_t)pageIndexForIconListViewIndex:(unint64_t)a3;
- (int64_t)userInterfaceLayoutDirection;
- (unint64_t)_depth;
- (unint64_t)effectiveContentVisibility;
- (unint64_t)effectiveContentVisibilityFolderHasInnerFolder:(BOOL)a3;
- (unint64_t)iconListModelIndexForPageIndex:(int64_t)a3;
- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)a3;
- (unint64_t)iconListViewIndexForPageIndex:(int64_t)a3;
- (unint64_t)userInterfaceLayoutDirectionHandling;
- (void)_acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:(id)a3;
- (void)_addFakeStatusBarView;
- (void)_beginTrackingIconViewWithCustomImageViewController:(id)a3;
- (void)_cancelCloseFolderTimer;
- (void)_cancelTouchesForAllCustomIconImageViewControllers;
- (void)_cancelTouchesForCustomIconImageViewController:(id)a3;
- (void)_clearIconAnimator;
- (void)_closeFolder;
- (void)_closeFolderTimerFired;
- (void)_compactFolder;
- (void)_configureForInnerFolderController:(id)a3;
- (void)_disableTouchesOnAllCustomIconImageViewControllers;
- (void)_enableTouchesOnAllCustomIconImageViewControllers;
- (void)_endTrackingIconViewWithCustomImageViewController:(id)a3;
- (void)_fadeHomescreenAndDockIfNecessaryForFolderOpen:(BOOL)a3;
- (void)_handleEndEditingKeyCommand:(id)a3;
- (void)_hideFakeStatusBarForReason:(id)a3 animated:(BOOL)a4;
- (void)_hideStatusBarForReason:(id)a3 animated:(BOOL)a4;
- (void)_invalidateAllCancelTouchesAssertions;
- (void)_removeFakeStatusBarAndAssertionIfExists;
- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)a3;
- (void)_resetFakeStatusBarFrameOnly;
- (void)_resetFakeStatusBarMatchMoveAnimation;
- (void)_resetFakeStatusBarSettingsIfNecessary;
- (void)_resetIconLists;
- (void)_setCloseFolderTimerIfNecessary;
- (void)_setHomescreenAndDockAlpha:(double)a3;
- (void)_unhideFakeStatusBarForReason:(id)a3 animated:(BOOL)a4;
- (void)_unhideStatusBarForReason:(id)a3;
- (void)_updateAssociatedControllerStateAnimated:(BOOL)a3;
- (void)_updateFolderRequiredTrailingEmptyListCount;
- (void)_updateHomescreenAndDockFade;
- (void)_updatePresentationModeForIconView:(id)a3;
- (void)_updatePresentationModeForIconViews;
- (void)_updateStateOfAssociatedController:(id)a3 animated:(BOOL)a4;
- (void)addAssertionsFromInnerFolderController:(id)a3;
- (void)beginEditingTitle;
- (void)cancelScrolling;
- (void)configureInnerFolderControllerConfiguration:(id)a3;
- (void)dealloc;
- (void)delegateDidChange;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)fadeContentForMagnificationFraction:(double)a3;
- (void)fadeContentForMinificationFraction:(double)a3;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)folderController:(id)a3 draggedIconShouldDropFromListView:(id)a4;
- (void)folderController:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6;
- (void)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidEnter:(id)a5;
- (void)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidExit:(id)a5;
- (void)folderController:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5;
- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5;
- (void)folderController:(id)a3 iconListView:(id)a4 willUseIconView:(id)a5 forDroppingIconDragItem:(id)a6;
- (void)folderController:(id)a3 willCreateInnerFolderControllerWithConfiguration:(id)a4;
- (void)folderController:(id)a3 willRemoveFakeStatusBar:(id)a4;
- (void)folderController:(id)a3 willUseIconTransitionAnimator:(id)a4 forOperation:(int64_t)a5 onViewController:(id)a6 animated:(BOOL)a7;
- (void)folderControllerDidClose:(id)a3;
- (void)folderControllerDidEndScrolling:(id)a3;
- (void)folderControllerDidOpen:(id)a3;
- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4;
- (void)folderControllerShouldEndEditing:(id)a3;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)folderControllerWillClose:(id)a3;
- (void)folderControllerWillOpen:(id)a3;
- (void)folderView:(id)a3 currentPageIndexDidChange:(int64_t)a4;
- (void)folderView:(id)a3 didAddIconListView:(id)a4;
- (void)folderView:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6;
- (void)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidEnter:(id)a5;
- (void)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidExit:(id)a5;
- (void)folderView:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5;
- (void)folderView:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5;
- (void)folderView:(id)a3 iconListView:(id)a4 willUseIconView:(id)a5 forDroppingIconDragItem:(id)a6;
- (void)folderView:(id)a3 willAnimateScrollToPageIndex:(int64_t)a4;
- (void)folderViewDidChangeOrientation:(id)a3;
- (void)folderViewDidEndScrolling:(id)a3;
- (void)folderViewShouldBeginEditing:(id)a3;
- (void)folderViewShouldClose:(id)a3 withPinchGesture:(id)a4;
- (void)folderViewShouldEndEditing:(id)a3;
- (void)folderViewWillBeginScrolling:(id)a3;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)iconViewDidDismissContextMenu:(id)a3;
- (void)iconViewWillPresentContextMenu:(id)a3;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)loadView;
- (void)minimumHomeScreenScaleDidChange;
- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6;
- (void)noteIconDrag:(id)a3 didChangeInIconListView:(id)a4;
- (void)noteIconDrag:(id)a3 didEnterIconListView:(id)a4;
- (void)noteIconDrag:(id)a3 didExitIconListView:(id)a4;
- (void)noteIconDragDidEnd:(id)a3;
- (void)parentDelegateDidChange;
- (void)performWhenScrollingEndsUsingBlock:(id)a3;
- (void)popFolderAnimated:(BOOL)a3 completion:(id)a4;
- (void)prepareToLaunchTappedIcon:(id)a3 completionHandler:(id)a4;
- (void)pushFolderIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)removeAssertionsFromInnerFolderController:(id)a3;
- (void)returnScalingView;
- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setCurrentPageIndexToListDirectlyContainingIcon:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolder:(id)a3;
- (void)setFolderDelegate:(id)a3;
- (void)setFolderIconImageCache:(id)a3;
- (void)setFolderIconView:(id)a3;
- (void)setIconImageCache:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)a3;
- (void)setOpen:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setPageControlAlpha:(double)a3;
- (void)setPageControlHidden:(BOOL)a3;
- (void)setScrollingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setUsesGlassGroup:(BOOL)a3;
- (void)unscatterAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5;
- (void)updateAfterIconStyleChange;
- (void)updateAppearanceStateForPageViewControllers:(BOOL)a3;
- (void)updateContentViewOcclusion;
- (void)updatePresentationModeFolderContextForIconView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBFolderController

- (SBFolderController)innerFolderController
{
  v2 = [(SBNestingViewController *)self nestedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateContentViewOcclusion
{
  v3 = [(SBFolderController *)self folderView];
  [v3 setContentVisibility:{-[SBFolderController effectiveContentVisibility](self, "effectiveContentVisibility")}];
}

- (UIView)contentView
{
  [(SBFolderController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (unint64_t)effectiveContentVisibility
{
  v3 = [(SBFolderController *)self innerFolderController];
  v4 = v3 != 0;

  return [(SBFolderController *)self effectiveContentVisibilityFolderHasInnerFolder:v4];
}

- (SBFolderController)deepestFolderController
{
  v2 = [(SBFolderController *)self innerFolderController];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = v3;

      v3 = [v5 innerFolderController];

      v4 = v5;
    }

    while (v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDock
{
  v2 = [(SBFolderController *)self folder];
  v3 = [v2 isRootFolder];

  return v3;
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
  v3 = [(SBFolderController *)self folderView];
  if (([v3 _isValidPageIndex:self->_leadingVisiblePageIndex] & 1) == 0)
  {
    [v3 getLeadingVisiblePageIndex:&self->_leadingVisiblePageIndex trailingVisiblePageIndex:&self->_trailingVisiblePageIndex];
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
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 currentIconListView];

  return v3;
}

- (UIWindow)animationWindow
{
  v2 = [(SBFolderController *)self animationContext];
  v3 = [v2 animationWindow];

  return v3;
}

- (SBHIconModel)iconModel
{
  v2 = [(SBFolderController *)self folder];
  v3 = [v2 rootFolder];

  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 model];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBIconListPageControl)pageControl
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 pageControl];

  return v3;
}

- (id)iconLocation
{
  v2 = [(SBFolderController *)self iconListViews];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 iconLocation];
  }

  else
  {
    v4 = @"SBIconLocationNone";
  }

  v5 = v4;

  return v5;
}

- (void)_resetIconLists
{
  [(SBFolderView *)self->_contentView resetIconListViews];
  v3 = [(SBFolderController *)self innerFolderController];
  [v3 _resetIconLists];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBFolderController;
  [(SBFolderController *)&v4 viewDidLoad];
  [(SBFolderController *)self _resetIconLists];
  v3 = [(SBFolderController *)self folderView];
  [v3 setEditing:-[SBFolderController isEditing](self animated:{"isEditing"), 0}];
  [v3 setContentVisibility:{-[SBFolderController effectiveContentVisibility](self, "effectiveContentVisibility")}];
  [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self defaultPageIndex] animated:0];
  [(SBFolderController *)self updateAppearanceStateForPageViewControllers:1];
}

- (id)borrowScalingView
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 borrowScalingView];

  return v3;
}

- (void)returnScalingView
{
  v2 = [(SBFolderController *)self folderView];
  [v2 returnScalingView];
}

- (void)_compactFolder
{
  v2 = [(SBFolderController *)self folder];
  [v2 compactLists];
}

- (int64_t)userInterfaceLayoutDirection
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 userInterfaceLayoutDirection];

  return v3;
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
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 currentIconListModel];

  return v3;
}

- (SBFolderController)initWithConfiguration:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SBFolderController;
  v5 = [(SBNestingViewController *)&v33 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 listLayoutProvider];
    listLayoutProvider = v5->_listLayoutProvider;
    v5->_listLayoutProvider = v8;

    v5->_orientation = [v4 orientation];
    v5->_allowedOrientations = [v4 allowedOrientations];
    v10 = [v4 originatingIconLocation];
    v11 = [v10 copy];
    originatingIconLocation = v5->_originatingIconLocation;
    v5->_originatingIconLocation = v11;

    v13 = [v4 iconViewProvider];
    objc_storeWeak(&v5->_iconViewProvider, v13);

    v14 = [v4 animationContext];
    animationContext = v5->_animationContext;
    v5->_animationContext = v14;

    v16 = [v4 folderDelegate];
    objc_storeWeak(&v5->_folderDelegate, v16);

    v17 = [v4 legibilitySettings];
    legibilitySettings = v5->_legibilitySettings;
    v5->_legibilitySettings = v17;

    v19 = [v4 headerView];
    headerView = v5->_headerView;
    v5->_headerView = v19;

    v21 = [v4 folderIconImageCache];
    folderIconImageCache = v5->_folderIconImageCache;
    v5->_folderIconImageCache = v21;

    v23 = [v4 iconImageCache];
    iconImageCache = v5->_iconImageCache;
    v5->_iconImageCache = v23;

    v5->_addsFocusGuidesForWrapping = [v4 addsFocusGuidesForWrapping];
    v5->_contentVisibility = 0;
    [v4 additionalPartialPagesToKeepVisible];
    v5->_additionalPartialPagesToKeepVisible = v25;
    v5->_requiresGlassGroupingForCustomIconImageViewControllers = [v4 requiresGlassGroupingForCustomIconImageViewControllers];
    v26 = [v4 delegate];
    [(SBNestingViewController *)v5 setDelegate:v26];

    v27 = [v4 folder];
    [(SBFolderController *)v5 setFolder:v27];
    [(SBFolderController *)v5 setCurrentPageIndex:[(SBFolderController *)v5 defaultPageIndex] animated:0];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v5 selector:sel_iconViewWillPresentContextMenu_ name:@"SBIconViewWillPresentContextMenuNotification" object:0];
    [v28 addObserver:v5 selector:sel_iconViewDidDismissContextMenu_ name:@"SBIconViewDidDismissContextMenuNotification" object:0];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SBIconViewWillPresentContextMenuNotification" object:0];
  [v3 removeObserver:self name:@"SBIconViewDidDismissContextMenuNotification" object:0];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(SBFolderController *)self extraAssertions];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
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
          objc_enumerationMutation(v5);
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
      v8 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
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

- (void)setFolderDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_folderDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_folderDelegate, obj);
    [(SBFolderController *)self delegateDidChange];
    v6 = [(SBFolderController *)self innerFolderController];
    [v6 parentDelegateDidChange];

    v5 = obj;
  }
}

- (void)delegateDidChange
{
  v2 = [(SBFolderController *)self folderViewIfLoaded];
  [v2 updateAccessibilityTintColors];
}

- (void)parentDelegateDidChange
{
  v3 = [(SBFolderController *)self innerFolderController];
  [v3 parentDelegateDidChange];

  v4 = [(SBFolderController *)self folderViewIfLoaded];
  [v4 updateAccessibilityTintColors];
}

- (void)loadView
{
  v7 = [(SBFolderController *)self configuration];
  v3 = [(SBFolderController *)self _makeContentViewWithConfiguration:v7];
  contentView = self->_contentView;
  self->_contentView = v3;

  [(SBFolderView *)self->_contentView setDelegate:self];
  [(SBFolderController *)self setConfiguration:0];
  v5 = [[SBFolderContainerView alloc] initWithFolderView:self->_contentView];
  containerView = self->_containerView;
  self->_containerView = v5;

  [(SBFolderController *)self setView:self->_containerView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isDisappearingOrDisappeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v19.receiver = self;
  v19.super_class = SBFolderController;
  [(SBNestingViewController *)&v19 viewWillAppear:v3];
  [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * v10) bs_beginAppearanceTransition:1 animated:{v3, v14}];
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
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v8);
  }

  [(SBFolderController *)self updateContentViewOcclusion];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isDisappearingOrDisappeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v19.receiver = self;
  v19.super_class = SBFolderController;
  [(SBNestingViewController *)&v19 viewDidAppear:v3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
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
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v8);
  }

  [(SBFolderController *)self updateContentViewOcclusion];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isAppearingOrAppeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v18.receiver = self;
  v18.super_class = SBFolderController;
  [(SBNestingViewController *)&v18 viewWillDisappear:v3];
  [(SBFolderController *)self _cancelTouchesForAllCustomIconImageViewControllers];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = self;
  v5 = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) bs_beginAppearanceTransition:0 animated:v3];
        v10 = SBLogRootController();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 67109378;
          v20 = v3;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "viewWillDisappear:%{public:BOOL}d %{public}@", buf, 0x12u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v7);
  }

  [(SBFolderController *)v13 updateContentViewOcclusion];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if ([(SBFolderController *)self bs_isAppearingOrAppeared])
  {
    NSLog(&cfstr_ThisViewHasAlr.isa);
  }

  v18.receiver = self;
  v18.super_class = SBFolderController;
  [(SBNestingViewController *)&v18 viewDidDisappear:v3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = self;
  v5 = [(SBFolderController *)self _viewControllersToNotifyForViewObscuration];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) bs_endAppearanceTransition:0];
        v10 = SBLogRootController();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 67109378;
          v20 = v3;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "viewDidDisappear:%{public:BOOL}d %{public}@", buf, 0x12u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v7);
  }

  [(SBFolderController *)v13 updateContentViewOcclusion];
}

- (id)keyCommands
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBFolderController;
  v3 = [(SBFolderController *)&v7 keyCommands];
  if ([(SBFolderController *)self isEditing])
  {
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__handleEndEditingKeyCommand_];
    [v4 setRepeatBehavior:2];
    if (v3)
    {
      v5 = [v3 arrayByAddingObject:v4];

      v3 = v5;
    }

    else
    {
      v8[0] = v4;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }
  }

  return v3;
}

- (id)nestingViewController:(id)a3 animationControllerForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if (v10 == self && a4 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v13 = [(SBFolderController *)self folderContainerView];
      v14 = [v12 folderContainerView];

      [v13 setChildFolderContainerView:v14];
    }
  }

  v30.receiver = self;
  v30.super_class = SBFolderController;
  v15 = [(SBNestingViewController *)&v30 nestingViewController:v10 animationControllerForOperation:a4 onViewController:v11 animated:v6];
  v16 = [(SBNestingViewController *)self delegate];
  if (!v15 && (objc_opt_respondsToSelector() & 1) == 0 && v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_6;
    }

    v27 = v10;
    v18 = v11;
    v28 = [(SBFolderController *)self folderDelegate];
    v29 = 0.0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_29;
      }

      v22 = [v28 folderController:self iconAnimatorForOperation:a4 onViewController:v18 animated:1 initialDelay:&v29];
LABEL_25:
      if (v22)
      {
        v15 = [[SBHomeScreenIconTransitionAnimator alloc] initWithIconAnimator:v22 childViewController:v18 operation:a4 != 1];
        [(SBHomeScreenIconTransitionAnimator *)v15 setInitialDelay:v29];
        if (objc_opt_respondsToSelector())
        {
          [v28 folderController:self willUseIconTransitionAnimator:v15 forOperation:a4 onViewController:v18 animated:1];
        }

        goto LABEL_30;
      }

LABEL_29:
      v15 = 0;
LABEL_30:

      goto LABEL_6;
    }

    v19 = v18;
    v20 = [v19 folder];
    v21 = [v20 icon];

    if (v21 && [(SBScaleIconZoomAnimator *)SBFolderIconZoomAnimator validateAnimationContainer:v27 targetIcon:v21])
    {
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v22 = [[SBFolderIconZoomAnimator alloc] initWithAnimationContainer:v27 innerFolderController:v19 folderIcon:v21];
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

- (void)nestingViewController:(id)a3 willPerformOperation:(int64_t)a4 onViewController:(id)a5 withTransitionCoordinator:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4 == 1;
  v13 = v10;
  if (a3 != self)
  {
    backgroundView = self->_backgroundView;
    v15 = a3;
    [(SBFolderControllerBackgroundView *)backgroundView setFrozen:a4 == 1];
    [(SBFolderController *)self _resetFakeStatusBarSettingsIfNecessary];
    goto LABEL_25;
  }

  v16 = a3;
  if (![(SBFolderController *)self doesPageContainIconListView:[(SBFolderController *)self currentPageIndex]])
  {
    [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self defaultPageIndex] animated:0];
  }

  objc_opt_class();
  v17 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  v41 = v13;
  v42 = a4;
  if (objc_opt_isKindOfClass())
  {
    v18 = v13;
    v19 = v18;
    if (a4 == 1)
    {
      if (v18)
      {
LABEL_11:
        v20 = [SBFolderControllerBackgroundView alloc];
        v21 = [(SBFolderController *)self folderView];
        [v21 bounds];
        v22 = [(SBFolderControllerBackgroundView *)v20 initWithFrame:?];
        v23 = self->_backgroundView;
        self->_backgroundView = v22;

        [(SBFolderControllerBackgroundView *)self->_backgroundView setDelegate:self];
        if (v19)
        {
          [(SBFolderController *)self _configureForInnerFolderController:v19];
          v24 = [(SBFolderController *)self folderContainerView];
          v25 = [v19 folderContainerView];
          [v24 setChildFolderContainerView:v25];
          [v24 insertSubview:self->_backgroundView belowSubview:v25];
          [v24 setBackgroundView:self->_backgroundView];

          [(SBFolderController *)self _addFakeStatusBarView];
          v26 = 0;
          v17 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
LABEL_16:
          if ([v11 isAnimated])
          {
            [(SBFolderController *)self setAnimating:1];
          }

          aBlock = MEMORY[0x1E69E9820];
          v63 = v17[128];
          v27 = v63;
          v64 = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke;
          v65 = &unk_1E80893F0;
          v66 = self;
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
          v38 = v26;
          v57 = v38;
          v30 = v29;
          [v11 animateAlongsideTransition:v59 completion:v55];

          goto LABEL_21;
        }

        v26 = 0;
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
    if (a4 == 1)
    {
      goto LABEL_10;
    }

    v19 = 0;
  }

  v26 = [(SBFolderController *)self innerFolderController];
  if (v19)
  {
    [(SBFolderController *)self _configureForInnerFolderController:0];
    goto LABEL_16;
  }

LABEL_20:
  v38 = v26;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_4;
  v52[3] = &unk_1E808D418;
  v54 = v12;
  v53 = v13;
  [v11 animateAlongsideTransition:0 completion:v52];

  v40 = 0;
LABEL_21:
  v31 = v12;
  v32 = v17;
  v33 = [(SBFolderController *)self folderView];
  v34 = [v11 isAnimated];
  v35 = [v11 transitionAnimationFactory];
  v36 = [v35 settings];
  [v33 willTransitionAnimated:v34 withSettings:v36];

  a4 = v42;
  if (v42 == 1)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  [(SBFolderControllerBackgroundView *)self->_backgroundView setExpanding:v42 == 1];
  [(SBFolderController *)self fadeContentForMagnificationFraction:v37];
  v46 = MEMORY[0x1E69E9820];
  v47 = v32[128];
  v48 = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_5;
  v49 = &unk_1E808D418;
  v51 = v31;
  v50 = self;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = v47;
  v44[2] = __108__SBFolderController_nestingViewController_willPerformOperation_onViewController_withTransitionCoordinator___block_invoke_7;
  v44[3] = &unk_1E808D418;
  v45 = v31;
  v44[4] = self;
  [v11 animateAlongsideTransition:&v46 completion:v44];

  v13 = v41;
LABEL_25:
  v43.receiver = self;
  v43.super_class = SBFolderController;
  [(SBNestingViewController *)&v43 nestingViewController:a3 willPerformOperation:a4 onViewController:v13 withTransitionCoordinator:v11];
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

- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(SBFolderController *)self folderIconView];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  [(SBFolderController *)self setOpen:a4 == 1];
  if ([v9 isAnimated])
  {
    [(SBFolderController *)self setAnimating:1];
  }

  v12 = [(SBFolderController *)self folderView];
  if (a4 == 1)
  {
    -[SBFolderController setCurrentPageIndex:animated:](self, "setCurrentPageIndex:animated:", [v10 visibleMiniIconListIndex], 0);
    if (!IsReduceMotionEnabled)
    {
      [v10 setAllIconElementsButLabelHidden:1];
    }

    [(SBFolderController *)self folderControllerWillOpen:self];
    v13 = 1.0;
  }

  else
  {
    v14 = [v12 iconListViewIndexForPageIndex:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
    if (self->_isEditing)
    {
      [v10 scrollToGapOrTopIfFullOfPage:v14 animated:0];
    }

    else
    {
      [v10 scrollToTopOfPage:v14 animated:0];
    }

    [(SBFolderController *)self folderControllerWillClose:self];
    v13 = 0.0;
  }

  v15 = !IsReduceMotionEnabled;
  v16 = [v9 isAnimated];
  v17 = [v9 transitionAnimationFactory];
  v18 = [v17 settings];
  [v12 willTransitionAnimated:v16 withSettings:v18];

  [(SBFolderController *)self fadeContentForMinificationFraction:v13];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke;
  v24[3] = &unk_1E808D440;
  v27 = v15;
  v28 = a4 == 1;
  v25 = v10;
  v26 = self;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__SBFolderController_viewWillTransitionToSize_forOperation_withTransitionCoordinator___block_invoke_3;
  v21[3] = &unk_1E808D468;
  v23 = a4 == 1;
  v21[4] = self;
  v22 = v25;
  v19 = v25;
  [v9 animateAlongsideTransition:v24 completion:v21];
  v20.receiver = self;
  v20.super_class = SBFolderController;
  [(SBNestingViewController *)&v20 viewWillTransitionToSize:a4 forOperation:v9 withTransitionCoordinator:width, height];
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

- (id)_makeContentViewWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_contentViewClass"))];

  return v4;
}

- (void)setFolder:(id)a3
{
  v5 = a3;
  folder = self->_folder;
  if (folder != v5)
  {
    v8 = v5;
    [(SBFolder *)folder removeFolderObserver:self];
    objc_storeStrong(&self->_folder, a3);
    if (v8)
    {
      if (![(SBFolder *)self->_folder listCount])
      {
        v7 = [(SBFolder *)self->_folder addEmptyList];
      }

      [(SBFolder *)self->_folder addFolderObserver:self];
    }

    folder = [(SBFolderView *)self->_contentView setFolder:self->_folder];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](folder, v5);
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_listLayoutProvider != v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(SBFolderController *)self presentedIconLocations];
    v9 = [v8 allObjects];

    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v9);
          }

          SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(self->_listLayoutProvider, v7, *(*(&v15 + 1) + 8 * v13++), 1);
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&self->_listLayoutProvider, a3);
    v14 = [(SBFolderController *)self folderView];
    [v14 setListLayoutProvider:v7 animated:v4];
  }
}

- (void)setOrientation:(int64_t)a3
{
  orientation = self->_orientation;
  if (orientation != a3 && SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    self->_orientation = a3;

    [(SBFolderController *)self orientationDidChange:orientation];
  }
}

- (BOOL)isScrollDragging
{
  v2 = [(SBFolderView *)self->_contentView scrollView];
  v3 = [v2 isDragging];

  return v3;
}

- (BOOL)isScrollDecelerating
{
  v2 = [(SBFolderView *)self->_contentView scrollView];
  v3 = [v2 isDecelerating];

  return v3;
}

- (BOOL)isScrollTracking
{
  v2 = [(SBFolderView *)self->_contentView scrollView];
  v3 = [v2 isTracking];

  return v3;
}

- (double)currentScrollingOffset
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 scrollView];
  [v3 contentOffset];
  v5 = v4;

  return v5;
}

- (void)setOpen:(BOOL)a3
{
  if (self->_isOpen != a3)
  {
    self->_isOpen = a3;
    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isEditing != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_isEditing = a3;
    [(SBFolderController *)self _updateFolderRequiredTrailingEmptyListCount];
    [(SBFolderView *)self->_contentView setEditing:v6 animated:v5];

    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:v5];
  }
}

- (void)_handleEndEditingKeyCommand:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerShouldEndEditing:self];
}

- (void)_updateFolderRequiredTrailingEmptyListCount
{
  v3 = [(SBFolderController *)self folder];
  [v3 setRequiredTrailingEmptyListCount:{-[SBFolderController isEditing](self, "isEditing")}];
}

- (void)beginEditingTitle
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 _titleTextField];

  if ([v3 showingEditUI])
  {
    [v3 becomeFirstResponder];
    [v3 selectAll:0];
  }
}

- (void)setCurrentPageIndexToListDirectlyContainingIcon:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  if (v13 && ![(SBFolderController *)self isDisplayingIcon:v13])
  {
    v9 = [(SBFolderController *)self folder];
    v10 = v9;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v12 = [v9 indexOfListContainingIcon:v13];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(SBFolderController *)self pageIndexForIconListModelIndex:v12];
      }
    }

    if ([(SBFolderController *)self _isValidPageIndex:v11])
    {
      [(SBFolderController *)self setCurrentPageIndex:v11 animated:v6 completion:v8];
    }

    else if (v8)
    {
      v8[2](v8);
    }
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(SBFolderController *)self scrollUsingDecelerationAnimationToPageIndex:[(SBFolderController *)self defaultPageIndex] withCompletionHandler:v4];
}

- (void)setNumberOfInitialPagesToPreferVisible:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  [v4 setNumberOfInitialPagesToPreferVisible:a3];
}

- (void)_configureForInnerFolderController:(id)a3
{
  v8 = a3;
  v4 = [(SBFolderController *)self innerFolderController];
  [v8 setFolderDelegate:self];
  if (v8 && v4 != v8)
  {
    [(SBFolderController *)self _updateStateOfAssociatedController:v8 animated:0];
    v5 = [v8 folder];
    v6 = [v5 icon];
    v7 = [(SBFolderController *)self firstIconViewForIcon:v6];
    [v8 setFolderIconView:v7];
  }
}

- (SBFolderController)outerFolderController
{
  v2 = [(SBNestingViewController *)self parentNestingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)folderControllerForFolder:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];

  if (v5 == v4)
  {
    v7 = self;
  }

  else
  {
    v6 = [(SBFolderController *)self innerFolderController];
    v7 = [v6 folderControllerForFolder:v4];
  }

  return v7;
}

- (void)setFolderIconView:(id)a3
{
  v5 = a3;
  if (self->_folderIconView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_folderIconView, a3);
    v5 = v6;
    if (v6)
    {
      [(SBFolderController *)self setCurrentPageIndex:[(SBFolderController *)self pageIndexForIconListViewIndex:[(SBIconView *)v6 visibleMiniIconListIndex]] animated:0];
      v5 = v6;
    }
  }
}

- (BOOL)doesPageContainIconListView:(int64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  LOBYTE(a3) = [v4 doesPageContainIconListView:a3];

  return a3;
}

- (id)iconListViewAtIndex:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 iconListViewAtIndex:a3];

  return v5;
}

- (id)iconListViewForIconListModelIndex:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 iconListViewForIconListModelIndex:a3];

  return v5;
}

- (id)iconListViewWithIconListModel:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViewWithList:v4];

  return v6;
}

- (id)iconListViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViewAtPoint:{x, y}];

  return v6;
}

- (id)iconListViewForTouch:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViewForTouch:v4];

  return v6;
}

- (id)iconListViewForDrag:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViewForDrag:v4];

  return v6;
}

- (unint64_t)iconListViewIndexForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 iconListViewIndexForPageIndex:a3];

  return v5;
}

- (unint64_t)iconListModelIndexForPageIndex:(int64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 iconListModelIndexForPageIndex:a3];

  return v5;
}

- (int64_t)pageIndexForIconListViewIndex:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 pageIndexForIconListViewIndex:a3];

  return v5;
}

- (int64_t)pageIndexForIconListModelIndex:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 pageIndexForIconListModelIndex:a3];

  return v5;
}

- (unint64_t)iconListViewIndexForIconListModelIndex:(unint64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  v5 = [v4 iconListViewIndexForIconListModelIndex:a3];

  return v5;
}

- (BOOL)_isValidPageIndex:(int64_t)a3
{
  v4 = [(SBFolderController *)self folderView];
  LOBYTE(a3) = [v4 _isValidPageIndex:a3];

  return a3;
}

- (NSArray)visibleIconListViews
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 visibleIconListViews];

  return v3;
}

- (void)_closeFolder
{
  v3 = [(SBFolderController *)self folderView];
  [(SBFolderController *)self folderViewShouldClose:v3 withPinchGesture:0];
}

- (id)viewControllersForPageIndex:(int64_t)a3
{
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViewForPageIndex:a3];

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
  v7 = [(SBFolderController *)self pageViewControllerForPageIndex:a3];
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

- (id)pageViewControllersForLeadingPageIndex:(int64_t)a3 trailingPageIndex:(int64_t)a4
{
  if (a3 <= a4)
  {
    v5 = a3;
    v4 = 0;
    v7 = a4 + 1;
    do
    {
      v8 = [(SBFolderController *)self pageViewControllerForPageIndex:v5];
      if (v8)
      {
        if (!v4)
        {
          v4 = [MEMORY[0x1E695DF70] array];
        }

        [v4 addObject:v8];
      }

      ++v5;
    }

    while (v7 != v5);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateAppearanceStateForPageViewControllers:(BOOL)a3
{
  v3 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v5 = [(SBFolderController *)self folderView];
  v35 = 0;
  v36 = 0;
  [v5 getLeadingVisiblePageIndex:&v36 trailingVisiblePageIndex:&v35];
  if (v36 != self->_leadingVisiblePageIndex || (v35 == self->_trailingVisiblePageIndex ? (v6 = !v3) : (v6 = 0), !v6))
  {
    v26 = v5;
    v7 = [(SBFolderController *)self visiblePageViewControllers];
    v25 = self;
    v8 = [(SBFolderController *)self pageViewControllersForLeadingPageIndex:v36 trailingPageIndex:v35];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
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
    v5 = v26;
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
          if (v3)
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
    v25->_leadingVisiblePageIndex = v36;
    v25->_trailingVisiblePageIndex = v24;
  }
}

- (id)keepIconImageViewControllersSnapshotsOfType:(unint64_t)a3 inAllPagesExcluding:(id)a4 forReason:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = SBLogRootController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Begin keeping icon image view controllers static in all pages excluding: %{public}@ for reason: %{public}@", &v18, 0x16u);
  }

  v11 = [[_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion alloc] initWithFolderController:self snapshotType:a3 pageIndexesToExclude:v8 reason:v9];
  if (a3 == 1)
  {
    v12 = 1144;
  }

  else
  {
    if (a3)
    {
      goto LABEL_10;
    }

    v12 = 1136;
  }

  v13 = (&self->super.super.super.super.isa + v12);
  v14 = *(&self->super.super.super.super.isa + v12);
  if (!v14)
  {
    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v16 = *v13;
    *v13 = v15;

    v14 = *v13;
  }

  [v14 addObject:v11];
LABEL_10:
  [(SBFolderController *)self _updatePresentationModeForIconViews];

  return v11;
}

- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogRootController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "End keeping icon image view controllers static for reason: %{public}@", &v9, 0xCu);
  }

  v7 = [v4 snapshotType];
  if (!v7)
  {
    v8 = &OBJC_IVAR___SBFolderController__iconImageViewControllerKeepSnapshotTypeDefaultAssertions;
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v8 = &OBJC_IVAR___SBFolderController__iconImageViewControllerKeepSnapshotTypeLowResolutionAssertions;
LABEL_7:
    [*(&self->super.super.super.super.isa + *v8) removeObject:v4];
  }

  [(SBFolderController *)self _updatePresentationModeForIconViews];
}

- (void)updatePresentationModeFolderContextForIconView:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 1136;
  if ([(NSHashTable *)self->_iconImageViewControllerKeepSnapshotTypeDefaultAssertions count]|| [(NSHashTable *)self->_iconImageViewControllerKeepSnapshotTypeLowResolutionAssertions count])
  {
    v5 = [MEMORY[0x1E696AD50] indexSet];
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

          v11 = [*(*(&v40 + 1) + 8 * i) pageIndexesToExclude];
          if (v11)
          {
            [v5 addIndexes:v11];
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

          v17 = [*(*(&v36 + 1) + 8 * j) pageIndexesToExclude];
          if (v17)
          {
            [v5 addIndexes:v17];
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
    v5 = 0;
    v35 = 1;
  }

  v18 = [(SBFolderController *)self folder];
  v19 = [v4 icon];
  v20 = [v18 indexPathForIcon:v19];

  v21 = v20;
  v22 = -[SBFolderController pageIndexForIconListModelIndex:](self, "pageIndexForIconListModelIndex:", [v20 sbListIndex]);
  v23 = objc_alloc_init(SBHMutablePresentationModeFolderContext);
  v24 = [(SBFolderController *)self iconLocation];
  v25 = v4;
  v26 = [v4 location];
  v27 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupIconHierarchy", v24);
  v28 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupIconHierarchy", v26);
  v29 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupWidgetConfiguration", v26);
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
      if (-[SBFolderController _isValidPageIndex:](self, "_isValidPageIndex:", v22) && ([v5 containsIndex:v22] & 1) == 0)
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

- (void)_updatePresentationModeForIconView:(id)a3
{
  v5 = a3;
  v4 = [v5 customIconImageViewController];
  if (v4)
  {
    [(SBFolderController *)self updatePresentationModeFolderContextForIconView:v5];
  }
}

- (void)_beginTrackingIconViewWithCustomImageViewController:(id)a3
{
  v4 = a3;
  iconViewsWithCustomImageViewControllers = self->_iconViewsWithCustomImageViewControllers;
  v8 = v4;
  if (!iconViewsWithCustomImageViewControllers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_iconViewsWithCustomImageViewControllers;
    self->_iconViewsWithCustomImageViewControllers = v6;

    v4 = v8;
    iconViewsWithCustomImageViewControllers = self->_iconViewsWithCustomImageViewControllers;
  }

  [(NSHashTable *)iconViewsWithCustomImageViewControllers addObject:v4];
  if (![(SBFolderController *)self allowsGlassGroupingForCustomIconImageViewControllers])
  {
    [(SBFolderController *)self _acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:v8];
  }
}

- (void)_endTrackingIconViewWithCustomImageViewController:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectForKey:v6];
  [v4 invalidate];
  [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions removeObjectForKey:v6];
  if (![(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions count])
  {
    iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    self->_iconViewGlassGroupingDisabledAssertions = 0;
  }

  [(NSHashTable *)self->_iconViewsWithCustomImageViewControllers removeObject:v6];
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 indexPathForIcon:v4];

  if (v6)
  {
    v7 = [v5 folderContainingIndexPath:v6 relativeIndexPath:0];
    if (v7 == v5 && (v8 = [v6 sbListIndex], v8 != 0x7FFFFFFFFFFFFFFFLL))
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

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([(SBFolderController *)self isPresentingIconLocation:a4])
  {
    v7 = [(SBFolderController *)self currentIconListView];
    v8 = [v7 model];
    v9 = [v8 directlyContainsIcon:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(SBFolderController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v4 isDescendantOfView:v5];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBFolderController *)self isPresentingIconLocation:v7]&& [(SBFolderController *)self isDisplayingIconView:v6])
  {
    v8 = [v6 location];
    v9 = [v8 isEqualToString:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (![(SBFolderController *)self isPresentingIconLocation:v9])
  {
    v18 = 0;
    goto LABEL_17;
  }

  v10 = [(SBFolderController *)self folderView];
  v11 = v10;
  v27 = 0u;
  v28 = 0u;
  if (v10)
  {
    [v10 visibleColumnRangeExcludingAdditionalWidthKeptVisible];
  }

  v12 = [(SBFolderController *)self iconListViews];
  if (![v12 count])
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  while (1)
  {
    v14 = [v12 objectAtIndex:v13];
    v15 = [v14 iconLocation];
    v16 = [v9 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v14 displayedIconViewForIcon:v8];
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = v17;
    v19 = [v17 location];
    v20 = [v19 isEqualToString:v9];

    if (v20)
    {
      if ((v5 & 8) == 0)
      {
        break;
      }

      [v14 iconColumnsForCurrentOrientation];
      v26[0] = v27;
      v26[1] = v28;
      VisibleColumnsForIconListIndex = SBVisibleColumnRangeGetVisibleColumnsForIconListIndex(v26, v13);
      v23 = v22;
      v24 = [v14 coordinateForIcon:v8];
      if (v24 - 1 >= VisibleColumnsForIconListIndex && v24 - 1 - VisibleColumnsForIconListIndex < v23)
      {
        break;
      }
    }

LABEL_13:
    if (++v13 >= [v12 count])
    {
      goto LABEL_14;
    }
  }

LABEL_15:
LABEL_17:

  return v18;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [(SBFolderController *)self iconViewForIcon:v6 location:*(*(&v15 + 1) + 8 * i), v15];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SBFolderController *)self presentedIconLocations];
  v8 = [v7 allObjects];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [(SBFolderController *)self iconViewForIcon:v6 location:*(*(&v16 + 1) + 8 * i) options:a4];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self presentedIconLocations];
  v6 = [v5 allObjects];
  v7 = [(SBFolderController *)self firstIconViewForIcon:v4 inLocations:v6];

  return v7;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBFolderController *)self presentedIconLocations];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v6];
  v10 = [v9 allObjects];
  v11 = [(SBFolderController *)self firstIconViewForIcon:v7 inLocations:v10];

  return v11;
}

- (id)firstIconViewWithOptions:(unint64_t)a3 iconPassingTest:(id)a4
{
  v6 = a4;
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
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [(SBFolderController *)self enumerateDisplayedIconViewsWithOptions:a3 usingBlock:v10];
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

- (void)fadeContentForMagnificationFraction:(double)a3
{
  v4 = [(SBFolderController *)self folderView];
  [v4 fadeContentForMagnificationFraction:a3];
}

- (void)fadeContentForMinificationFraction:(double)a3
{
  v4 = [(SBFolderController *)self folderView];
  [v4 fadeContentForMinificationFraction:a3];
}

- (void)setScrollingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBFolderController *)self folderView];
  [v7 _setScrollingDisabled:v4 forReason:v6];
}

- (void)cancelScrolling
{
  v3 = [(SBFolderController *)self folderView];
  [v3 cancelScrolling];

  v4 = [(SBFolderController *)self innerFolderController];
  [v4 cancelScrolling];
}

- (id)disableAutoScrollForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 disableAutoScrollForReason:v4];

  return v6;
}

- (void)performWhenScrollingEndsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderView];
  [v5 performWhenScrollingEndsUsingBlock:v4];
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    v6 = [(SBFolderController *)self innerFolderController];
    [v6 setContentVisibility:a3];

    [(SBFolderController *)self updateContentViewOcclusion];
  }
}

- (unint64_t)effectiveContentVisibilityFolderHasInnerFolder:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  if (![(SBFolderController *)self _appearState])
  {
    return 2;
  }

  return [(SBFolderController *)self contentVisibility];
}

- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SBFolderController *)self folder];
  v11 = [v10 indexPathForIcon:v9];

  if (v11)
  {
    v12 = [(SBFolderController *)self pageIndexForIconListModelIndex:SBFolderRelativeListIndex(v11)];
    v13 = [(SBFolderController *)self currentPageIndex];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == v12)
    {
      if (v8)
      {
        v8[2](v8, v12 != 0x7FFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__SBFolderController_revealIcon_animated_completionHandler___block_invoke;
      v14[3] = &unk_1E8089600;
      v15 = v8;
      [(SBFolderController *)self setCurrentPageIndex:v12 animated:v5 completion:v14];
    }
  }

  else if (v8)
  {
    v8[2](v8, 0);
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
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 userInterfaceLayoutDirectionHandling];

  return v3;
}

- (BOOL)isVertical
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 isVertical];

  return v3;
}

- (void)setIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_iconImageCache != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_iconImageCache, a3);
    v6 = [(SBFolderController *)self folderView];
    [v6 setIconImageCache:v7];

    v5 = v7;
  }
}

- (void)setFolderIconImageCache:(id)a3
{
  v5 = a3;
  if (self->_folderIconImageCache != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_folderIconImageCache, a3);
    v6 = [(SBFolderController *)self folderView];
    [v6 setFolderIconImageCache:v7];

    v5 = v7;
  }
}

- (void)minimumHomeScreenScaleDidChange
{
  v2 = [(SBFolderController *)self folderView];
  [v2 minimumHomeScreenScaleDidChange];
}

- (BOOL)usesGlassGroup
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 usesGlassGroup];

  return v3;
}

- (void)setUsesGlassGroup:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFolderController *)self folderView];
  [v4 setUsesGlassGroup:v3];
}

- (id)_dragDelegate
{
  v3 = [(SBFolderController *)self folderDelegate];
  v4 = v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 draggingDelegateForFolderController:self];
  }

  return v4;
}

- (void)_setHomescreenAndDockAlpha:(double)a3
{
  v4 = [(SBFolderController *)self folderViewIfLoaded];
  [v4 setAlpha:a3];
}

- (void)_updateHomescreenAndDockFade
{
  if ([(SBFolderController *)self _homescreenAndDockShouldFade])
  {
    v4 = [(SBNestingViewController *)self nestedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 isOpen];
    }

    else
    {
      v3 = 0;
    }

    [(SBFolderController *)self _fadeHomescreenAndDockIfNecessaryForFolderOpen:v3];
  }

  else
  {

    [(SBFolderController *)self _setHomescreenAndDockAlpha:1.0];
  }
}

- (void)_fadeHomescreenAndDockIfNecessaryForFolderOpen:(BOOL)a3
{
  v3 = a3;
  if ([(SBFolderController *)self _homescreenAndDockShouldFade])
  {
    v5 = 1.0;
    if (v3)
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
  v6 = [(SBFolderController *)self folderDelegate];
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v4 = [v6 fakeStatusBarForFolderController:self];
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
    v5 = [(SBFolderController *)self view];
    [v5 insertSubview:self->_fakeStatusBar belowSubview:self->_backgroundView];
  }
}

- (void)_resetFakeStatusBarSettingsIfNecessary
{
  if (self->_fakeStatusBar)
  {
    [(SBFolderController *)self _resetFakeStatusBarFrameOnly];
    v5 = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v5 statusBarStyleRequestForFolderController:self];
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
  v16 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v16 statusBarEdgeInsetsForFolderController:self];
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
  v3 = [(UIStatusBar *)self->_fakeStatusBar layer];
  [v3 removeAnimationForKey:@"SBFolderControllerFakeStatusBarMatchMoveKey"];

  v4 = [(SBFolderController *)self view];
  v5 = [v4 window];
  v6 = [v5 layer];

  [(UIStatusBar *)self->_fakeStatusBar frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E69793B8]);
  [v15 setSourceLayer:v6];
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
    v4 = [(UIStatusBar *)fakeStatusBar layer];
    [v4 removeAnimationForKey:@"SBFolderControllerFakeStatusBarMatchMoveKey"];

    v5 = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 folderController:self willRemoveFakeStatusBar:self->_fakeStatusBar];
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

- (void)_hideFakeStatusBarForReason:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  fakeStatusBarHidingReasons = self->_fakeStatusBarHidingReasons;
  v10 = v6;
  if (!fakeStatusBarHidingReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_fakeStatusBarHidingReasons;
    self->_fakeStatusBarHidingReasons = v8;

    v6 = v10;
    fakeStatusBarHidingReasons = self->_fakeStatusBarHidingReasons;
  }

  [(NSMutableSet *)fakeStatusBarHidingReasons addObject:v6];
  if ([(NSMutableSet *)self->_fakeStatusBarHidingReasons count])
  {
    [(UIStatusBar *)self->_fakeStatusBar setHidden:1 animated:v4];
  }
}

- (void)_unhideFakeStatusBarForReason:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(NSMutableSet *)self->_fakeStatusBarHidingReasons removeObject:a3];
  if (![(NSMutableSet *)self->_fakeStatusBarHidingReasons count])
  {
    fakeStatusBar = self->_fakeStatusBar;

    [(UIStatusBar *)fakeStatusBar setHidden:0 animated:v4];
  }
}

- (void)_hideStatusBarForReason:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  realStatusBarHidingReasons = self->_realStatusBarHidingReasons;
  v13 = v6;
  if (!realStatusBarHidingReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_realStatusBarHidingReasons;
    self->_realStatusBarHidingReasons = v8;

    v6 = v13;
    realStatusBarHidingReasons = self->_realStatusBarHidingReasons;
  }

  [(NSMutableSet *)realStatusBarHidingReasons addObject:v6];
  if ([(NSMutableSet *)self->_realStatusBarHidingReasons count])
  {
    v10 = [(SBFolderController *)self folderDelegate];
    v11 = objc_opt_respondsToSelector();
    if (v11)
    {
      v12 = [v10 folderControllerWantsToHideStatusBar:self animated:v4];
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

- (void)_unhideStatusBarForReason:(id)a3
{
  [(NSMutableSet *)self->_realStatusBarHidingReasons removeObject:a3];
  if (![(NSMutableSet *)self->_realStatusBarHidingReasons count])
  {
    [(BSInvalidatable *)self->_statusBarAssertion invalidate];
    statusBarAssertion = self->_statusBarAssertion;
    self->_statusBarAssertion = 0;
  }
}

- (void)_updateAssociatedControllerStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBFolderController *)self innerFolderController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(SBFolderController *)self _updateStateOfAssociatedController:v5 animated:v3];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_updateStateOfAssociatedController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setOpen:{-[SBFolderController isOpen](self, "isOpen")}];
  [v6 setEditing:-[SBFolderController isEditing](self animated:{"isEditing"), v4}];
  [v6 setContentVisibility:{-[SBFolderController contentVisibility](self, "contentVisibility")}];
}

- (BOOL)isPageControlHidden
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 isPageControlHidden];

  return v3;
}

- (void)setPageControlHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFolderController *)self folderView];
  [v4 setPageControlHidden:v3];
}

- (double)pageControlAlpha
{
  v2 = [(SBFolderController *)self folderView];
  [v2 pageControlAlpha];
  v4 = v3;

  return v4;
}

- (void)setPageControlAlpha:(double)a3
{
  v4 = [(SBFolderController *)self folderView];
  [v4 setPageControlAlpha:a3];
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 gridSizeClassDomain];

  return v3;
}

- (SBHIconImageAppearance)effectiveIconImageAppearance
{
  v2 = [(SBFolderController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];

  return v3;
}

- (BOOL)allowsGlassGroupingForCustomIconImageViewControllers
{
  if ([(SBFolderController *)self requiresGlassGroupingForCustomIconImageViewControllers])
  {
    return 1;
  }

  v4 = [(SBFolderController *)self effectiveIconImageAppearance];
  v5 = [v4 hasGlass];

  return v5;
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
    v3 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v17 + 1) + 8 * i) invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)_acquireGlassGroupingDisabledAssertionIfNecessaryForIconView:(id)a3
{
  v8 = a3;
  v4 = [(NSMapTable *)self->_iconViewGlassGroupingDisabledAssertions objectForKey:?];
  if (!v4)
  {
    v4 = [v8 disallowGlassGroupingForReason:@"containing folder"];
    iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    if (!iconViewGlassGroupingDisabledAssertions)
    {
      v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v7 = self->_iconViewGlassGroupingDisabledAssertions;
      self->_iconViewGlassGroupingDisabledAssertions = v6;

      iconViewGlassGroupingDisabledAssertions = self->_iconViewGlassGroupingDisabledAssertions;
    }

    [(NSMapTable *)iconViewGlassGroupingDisabledAssertions setObject:v4 forKey:v8];
  }
}

+ (Class)listViewClass
{
  v2 = [a1 _contentViewClass];

  return [v2 defaultIconListViewClass];
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFolderController *)self folderView];
  [v6 layoutIconListsWithAnimationType:a3 forceRelayout:v4];
}

- (BOOL)shouldViewControllersAppearVisibleForIconView:(id)a3
{
  v4 = a3;
  v5 = (-[SBFolderController bs_isDisappearingOrDisappeared](self, "bs_isDisappearingOrDisappeared") & 1) == 0 && -[SBFolderController contentVisibility](self, "contentVisibility") != 2 && [v4 contentVisibility] != 2;

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
  v3 = [(SBFolderController *)self folder];

  if (v3)
  {
    v5 = [(SBFolderController *)self _dragDelegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(SBFolderController *)self currentIconListView];
      [v5 folderController:self draggedIconShouldDropFromListView:v4];
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

- (void)noteIconDrag:(id)a3 didEnterIconListView:(id)a4
{
  v14 = a3;
  v6 = a4;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  if (!draggingEnteredIconListViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_draggingEnteredIconListViews;
    self->_draggingEnteredIconListViews = v8;

    draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  }

  [(NSMutableSet *)draggingEnteredIconListViews addObject:v6];
  [v14 locationInView:v6];
  v11 = v10;
  v13 = v12;
  [v6 bounds];
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

- (void)noteIconDrag:(id)a3 didChangeInIconListView:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SBFolderController *)self innerFolderController];

  if (v7)
  {
    v8 = [(SBFolderController *)self innerFolderController];
    [v8 noteIconDrag:v13 didChangeInIconListView:v6];
  }

  else
  {
    if (![(SBFolderController *)self _allowUserInteraction])
    {
      [(SBFolderController *)self _cancelAllInteractionTimers];
    }

    if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:v6])
    {
      [v13 locationInView:v6];
      v10 = v9;
      v12 = v11;
      [v6 bounds];
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
        [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:v6];
        [(SBFolderController *)self _setCloseFolderTimerIfNecessary];
      }
    }
  }
}

- (void)noteIconDrag:(id)a3 didExitIconListView:(id)a4
{
  v5 = a4;
  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:?])
  {
    [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:v5];
    [(SBFolderController *)self noteUserIsInteractingWithIcons];
    [(SBFolderController *)self _setCloseFolderTimerIfNecessary];
    [(SBFolderController *)self _updateAssociatedControllerStateAnimated:0];
  }
}

- (void)noteIconDragDidEnd:(id)a3
{
  [(SBFolderController *)self _cancelAllInteractionTimers];
  if (![(SBFolderController *)self isEditing])
  {
    v4 = [(SBFolderController *)self folder];
    [v4 compactLists];
  }

  self->_grabbedIconHasEverEnteredFolderView = 0;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  self->_draggingEnteredIconListViews = 0;
}

- (void)unscatterAnimated:(BOOL)a3 afterDelay:(double)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  [(SBFolderController *)self _clearIconAnimator];
  if (v6)
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
    v13 = v8;
    [(SBIconAnimator *)v11 animateToFraction:v12 afterDelay:0.0 withCompletion:a4];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1);
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

- (id)_newAnimatorForZoomUp:(BOOL)a3
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = [(SBIconAnimator *)[SBIconFadeAnimator alloc] initWithAnimationContainer:self];
    v6 = +[SBHHomeScreenDomain rootSettings];
    v7 = [v6 iconAnimationSettings];
    v8 = [v7 reducedMotionSettings];
    [(SBIconAnimator *)v5 setSettings:v8];
  }

  else
  {
    v9 = +[SBHHomeScreenDomain rootSettings];
    v6 = [v9 iconAnimationSettings];

    if (a3)
    {
      [v6 centerLaunchSettings];
    }

    else
    {
      [v6 unlockSettings];
    }
    v7 = ;
    v5 = [[SBCenterIconZoomAnimator alloc] initWithFolderController:self];
    [(SBIconAnimator *)v5 setSettings:v7];
  }

  return v5;
}

- (unint64_t)_depth
{
  v2 = [(SBFolderController *)self outerFolderController];
  v3 = [v2 _depth];

  return v3 + 1;
}

- (BOOL)_iconAppearsOnCurrentPage:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 indexPathForIcon:v4];

  v7 = v6 && [v6 length] == 2 && -[SBFolderController _listIndexIsVisible:](self, "_listIndexIsVisible:", SBFolderRelativeListIndex(v6));
  return v7;
}

- (void)pushFolderIcon:(id)a3 location:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(SBFolderController *)self isOpen])
  {
    if (v10 && [(SBFolderController *)self shouldOpenFolderIcon:v10])
    {
      v13 = [v10 folder];
      v14 = [(SBFolderController *)self controllerClassForFolder:v13];
      v15 = objc_alloc_init([(objc_class *)v14 configurationClass]);
      [v15 setFolder:v13];
      [v15 setOriginatingIconLocation:v11];
      [(SBFolderController *)self configureInnerFolderControllerConfiguration:v15];
      v16 = [[v14 alloc] initWithConfiguration:v15];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66__SBFolderController_pushFolderIcon_location_animated_completion___block_invoke;
      v18[3] = &unk_1E808A0B8;
      v19 = v12;
      [(SBNestingViewController *)self pushNestedViewController:v16 animated:v7 withCompletion:v18];

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

  if (v12)
  {
    (*(v12 + 2))(v12, 0);
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

- (void)configureInnerFolderControllerConfiguration:(id)a3
{
  v10 = a3;
  v4 = [(SBFolderController *)self listLayoutProvider];
  [v10 setListLayoutProvider:v4];

  [v10 setOrientation:{-[SBFolderController orientation](self, "orientation")}];
  [v10 setAllowedOrientations:{-[SBFolderController allowedOrientations](self, "allowedOrientations")}];
  v5 = [(SBFolderController *)self iconViewProvider];
  [v10 setIconViewProvider:v5];

  v6 = [(SBFolderController *)self folderIconImageCache];
  [v10 setFolderIconImageCache:v6];

  v7 = [(SBFolderController *)self iconImageCache];
  [v10 setIconImageCache:v7];

  v8 = [(SBFolderController *)self legibilitySettings];
  [v10 setLegibilitySettings:v8];

  [v10 setDelegate:self];
  [v10 setFolderDelegate:self];
  [v10 setAddsFocusGuidesForWrapping:{-[SBFolderController addsFocusGuidesForWrapping](self, "addsFocusGuidesForWrapping")}];
  [v10 setVertical:{-[SBFolderController isVertical](self, "isVertical")}];
  [(SBFolderController *)self additionalPartialPagesToKeepVisible];
  [v10 setAdditionalPartialPagesToKeepVisible:?];
  v9 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 folderController:self willCreateInnerFolderControllerWithConfiguration:v10];
  }
}

- (void)popFolderAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(SBFolderController *)self innerFolderController];
  if (v6)
  {
    [(SBNestingViewController *)self popNestedViewControllerAnimated:v4 withCompletion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (BOOL)shouldOpenFolderIcon:(id)a3
{
  v3 = [(SBFolderController *)self firstIconViewForIcon:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)restoreExpandedPathIdentifiers:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v4 = [(SBFolderController *)self folder];
  v5 = [v4 resolvedComponentsForUniqueIdentifierPath:v23];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = self;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = *v32;
    v8 = v6;
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
          if (v11 == v4)
          {
            continue;
          }

          v12 = v11;
          v13 = [(SBFolderController *)v6 controllerClassForFolder:v4];
          v14 = objc_alloc_init([(objc_class *)v13 configurationClass]);
          [v14 setOriginatingIconLocation:@"SBIconLocationRoot"];
          [(SBFolderController *)v6 configureInnerFolderControllerConfiguration:v14];
          [v14 setFolder:v12];
          v15 = [[v13 alloc] initWithConfiguration:v14];
          [v24 addObject:v15];
          v16 = [(SBFolderController *)v6 iconLocation];
          [v14 setOriginatingIconLocation:v16];
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
          v19 = [v8 folder];
          v20 = [v19 indexOfList:v14];

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
  [(SBNestingViewController *)v6 setNestedViewControllers:v24 withCompletion:v26];
  v21 = *(v28 + 6) == 1;
  _Block_object_dispose(&v27, 8);

  return v21;
}

- (NSIndexPath)currentIndexPath
{
  v3 = [(SBFolderController *)self innerFolderController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentIndexPath];
    v6 = [(SBFolderController *)self folder];
    v7 = [v4 folder];
    v8 = [v6 indexPathForFolder:v7];
    v9 = [v5 bs_indexPathByAddingPrefix:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
  }

  return v9;
}

- (void)prepareToLaunchTappedIcon:(id)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(SBFolderController *)self isDisplayingIcon:v6])
  {
    v7[2](v7);
  }

  else
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 uniqueIdentifier];
      v10 = 138412546;
      v11 = v9;
      v12 = 1024;
      v13 = [(SBFolderController *)self isScrolling];
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "Need to scroll to show tapped icon '%@' (already scrolling: %{BOOL}u)", &v10, 0x12u);
    }

    [(SBFolderController *)self setCurrentPageIndexToListDirectlyContainingIcon:v6 animated:1 completion:v7];
  }
}

- (void)_cancelTouchesForCustomIconImageViewController:(id)a3
{
  v10 = a3;
  v4 = [(NSMapTable *)self->_iconViewCustomImageViewControllerTouchCancellationAssertions objectForKey:?];

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v10 cancelTouchesForCurrentEventInHostedContent];
    if (v5)
    {
      v6 = v5;
      iconViewCustomImageViewControllerTouchCancellationAssertions = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
      if (!iconViewCustomImageViewControllerTouchCancellationAssertions)
      {
        v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v9 = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
        self->_iconViewCustomImageViewControllerTouchCancellationAssertions = v8;

        iconViewCustomImageViewControllerTouchCancellationAssertions = self->_iconViewCustomImageViewControllerTouchCancellationAssertions;
      }

      [(NSMapTable *)iconViewCustomImageViewControllerTouchCancellationAssertions setObject:v6 forKey:v10];
    }
  }
}

- (id)cancelTouchesForAllCustomIconImageViewControllersForReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[SBHCompoundAssertion alloc] initWithReason:v4];
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

        v11 = [*(*(&v15 + 1) + 8 * i) customIconImageViewController];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 cancelTouchesForCurrentEventInHostedContent];
          if (v12)
          {
            v13 = v12;
            [(SBHCompoundAssertion *)v5 addAssertion:v12];
          }
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)matchMoveSourceViewForIconView:(id)a3
{
  v4 = [a3 location];
  v5 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", v4);

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
  v2 = [(SBFolderController *)self animationContext];
  v3 = [v2 fallbackIconContainer];

  return v3;
}

- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(SBFolderController *)self folderView];
  v8 = v7;
  v26 = 0u;
  v27 = 0u;
  if (v7)
  {
    [v7 visibleColumnRangeExcludingAdditionalWidthKeptVisible];
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
  v20 = (a3 & 8) != 0;
  v9 = v6;
  v15 = v9;
  [v8 enumerateIconListViewsUsingBlock:&v11];
  if ((a3 & 0x10) != 0 && (v23[3] & 1) == 0)
  {
    v10 = [(SBFolderController *)self innerFolderController:v11];
    [v10 enumerateDisplayedIconViewsWithOptions:a3 usingBlock:v9];
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

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self presentedIconLocations];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [(SBFolderController *)self iconViewForIcon:v6 location:*(*(&v14 + 1) + 8 * v12)];
        if (v13)
        {
          v7[2](v7, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)setContentAlpha:(double)a3
{
  v4 = [(SBFolderController *)self folderView];
  [v4 setContentAlpha:a3];
}

- (UIEdgeInsets)statusBarInsetsForOrientation:(int64_t)a3
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
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
    [(SBNestingViewController *)&v19 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
    v12 = v15;
    v14 = v16;
    goto LABEL_8;
  }

  v10 = [v7 viewIfLoaded];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

LABEL_8:
  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = SBFolderController;
  [(SBFolderController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [v7 containerView];
  v9 = [v8 _window];

  v10 = [v9 _fromWindowOrientation];
  v11 = [v9 _toWindowOrientation];
  [(SBFolderController *)self allowedOrientations];
  v12 = [(SBFolderController *)self orientation];
  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation() && v12 != v11)
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
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "%{public}@ will transition to size %{public}@, %li to %li orientation", buf, 0x2Au);
    }

    [(SBFolderController *)self setRotating:1];
    v17 = [(SBFolderController *)self folderView];
    [v17 transitionToSize:v7 withTransitionCoordinator:{width, height}];
    [(SBFolderController *)self _resetFakeStatusBarFrameOnly];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v19[3] = &unk_1E808B460;
    v19[4] = self;
    v19[5] = v11;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__SBFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v18[3] = &unk_1E8089418;
    v18[4] = self;
    [v7 animateAlongsideTransition:v19 completion:v18];
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

- (Class)controllerClassForFolder:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderDelegate];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 controllerClassForFolder:v4];
  }

  else
  {
    v7 = objc_opt_class();
  }

  v8 = v7;
  v9 = v7;

  return v8;
}

- (BOOL)folderController:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4
{
  v6 = [(SBFolderController *)self folderDelegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 folderController:self canChangeCurrentPageIndexToIndex:a4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)folderController:(id)a3 draggedIconShouldDropFromListView:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderController:v8 draggedIconShouldDropFromListView:v6];
  }
}

- (BOOL)folderControllerShouldClose:(id)a3 withPinchGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  v7 = v6;
  if (!v6 || [v6 folderControllerShouldClose:self withPinchGesture:v5])
  {
    [(SBFolderController *)self popFolderAnimated:1 completion:0];
  }

  return 0;
}

- (void)folderControllerShouldBeginEditing:(id)a3 withHaptic:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  [v6 folderControllerShouldBeginEditing:self withHaptic:v4];
}

- (double)minimumHomeScreenScaleForFolderController:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 minimumHomeScreenScaleForFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (void)folderControllerShouldEndEditing:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerShouldEndEditing:self];
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderDelegate];
  [v5 folderControllerWillBeginScrolling:v4];
}

- (void)folderControllerDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderDelegate];
  [v5 folderControllerDidEndScrolling:v4];
}

- (BOOL)folderController:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 folderController:self iconListView:v7 canHandleIconDropSession:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidEnter:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 iconDropSessionDidEnter:v7];
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 folderController:self iconListView:v7 iconDropSessionDidUpdate:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  return v10;
}

- (void)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidExit:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 iconDropSessionDidExit:v7];
  }
}

- (void)folderController:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 performIconDrop:v7];
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 iconViewForDroppingIconDragItem:(id)a5 proposedIconView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SBFolderController *)self _dragDelegate];
  v15 = v13;
  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 folderController:v10 iconListView:v11 iconViewForDroppingIconDragItem:v12 proposedIconView:v13];
  }

  return v15;
}

- (void)folderController:(id)a3 iconListView:(id)a4 willUseIconView:(id)a5 forDroppingIconDragItem:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 folderController:v14 iconListView:v10 willUseIconView:v11 forDroppingIconDragItem:v12];
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SBFolderController *)self _dragDelegate];
  v15 = v13;
  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 folderController:v10 iconListView:v11 previewForDroppingIconDragItem:v12 proposedPreview:v13];
  }

  return v15;
}

- (void)folderController:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 folderController:self iconListView:v12 iconDragItem:v9 willAnimateDropWithAnimator:v10];
  }
}

- (BOOL)folderController:(id)a3 iconListView:(id)a4 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a5 onIconView:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 folderController:self iconListView:v9 shouldAllowSpringLoadedInteractionForIconDropSession:v10 onIconView:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 springLoadedInteractionForIconDragDidCompleteOnIconView:v7];
  }
}

- (id)folderController:(id)a3 iconListView:(id)a4 customSpringAnimationBehaviorForDroppingItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 folderController:self iconListView:v7 customSpringAnimationBehaviorForDroppingItem:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderController:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 contentOverlayInsetsFromParentIfAvailableForFolderController:self];
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

- (id)folderController:(id)a3 accessibilityTintColorForScreenRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 folderController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)folderController:(id)a3 willCreateInnerFolderControllerWithConfiguration:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderController:v8 willCreateInnerFolderControllerWithConfiguration:v6];
  }
}

- (void)folderControllerWillOpen:(id)a3
{
  v9 = a3;
  [(SBFolderController *)v9 _updateFolderRequiredTrailingEmptyListCount];
  v4 = [(SBFolderController *)v9 folderView];
  [v4 prepareToOpen];

  v5 = [(SBFolderController *)self innerFolderController];

  if (v5)
  {
    v6 = [(SBFolderController *)self folderView];
    [v6 setSuppressesEditingStateForListViews:1];
  }

  [(SBFolderController *)self updateContentViewOcclusion];
  if (v9 == self)
  {
    v7 = [(SBFolderController *)self folder];
    if ([v7 isCancelable])
    {
      [(SBFolderController *)self setWasFolderCancelable:1];
      [v7 setCancelable:0];
    }
  }

  else
  {
    [(SBFolderController *)self addAssertionsFromInnerFolderController:?];
  }

  v8 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderControllerWillOpen:v9];
  }
}

- (void)folderControllerDidOpen:(id)a3
{
  v5 = a3;
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 folderControllerDidOpen:v5];
  }
}

- (void)folderControllerWillClose:(id)a3
{
  v8 = a3;
  v4 = [(SBFolderController *)self folderView];
  [v4 setSuppressesEditingStateForListViews:0];

  v5 = [(SBFolderController *)self folder];
  if ([v5 isRootFolder])
  {
    v6 = [(SBFolderController *)self folderView];
    [v6 setContentVisibility:{-[SBFolderController effectiveContentVisibilityFolderHasInnerFolder:](self, "effectiveContentVisibilityFolderHasInnerFolder:", 0)}];
  }

  else
  {
    [(SBFolderController *)self updateContentViewOcclusion];
  }

  v7 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 folderControllerWillClose:v8];
  }
}

- (void)folderControllerDidClose:(id)a3
{
  v6 = a3;
  v4 = [(SBFolderController *)v6 folder];
  if (([v4 isRootFolder] & 1) == 0)
  {
    [v4 setRequiredTrailingEmptyListCount:0];
  }

  if (v6 == self)
  {
    if ([(SBFolderController *)self wasFolderCancelable])
    {
      [v4 setCancelable:1];
    }
  }

  else
  {
    [(SBFolderController *)self removeAssertionsFromInnerFolderController:?];
  }

  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderControllerDidClose:v6];
  }
}

- (id)folderControllerWantsToHideStatusBar:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 folderControllerWantsToHideStatusBar:v6 animated:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fakeStatusBarForFolderController:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 fakeStatusBarForFolderController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)folderController:(id)a3 willRemoveFakeStatusBar:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self willRemoveFakeStatusBar:v6];
  }
}

- (id)statusBarStyleRequestForFolderController:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 statusBarStyleRequestForFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)statusBarEdgeInsetsForFolderController:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 statusBarEdgeInsetsForFolderController:self];
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

- (id)folderController:(id)a3 iconAnimatorForOperation:(int64_t)a4 onViewController:(id)a5 animated:(BOOL)a6 initialDelay:(double *)a7
{
  v8 = a6;
  v11 = a5;
  v12 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 folderController:self iconAnimatorForOperation:a4 onViewController:v11 animated:v8 initialDelay:a7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderController:(id)a3 willUseIconTransitionAnimator:(id)a4 forOperation:(int64_t)a5 onViewController:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v13 = a4;
  v11 = a6;
  v12 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 folderController:self willUseIconTransitionAnimator:v13 forOperation:a5 onViewController:v11 animated:v7];
  }
}

- (id)nestingViewController:(id)a3 sourceViewForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 folder];
    v11 = [v10 icon];

    v12 = [(SBFolderController *)self firstIconViewForIcon:v11];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SBFolderController;
    v12 = [(SBNestingViewController *)&v14 nestingViewController:v6 sourceViewForPresentingViewController:v7];
  }

  return v12;
}

- (Class)iconListViewClassForFolderView:(id)a3
{
  v3 = objc_opt_class();

  return [v3 listViewClass];
}

- (id)iconLocationForFolderView:(id)a3
{
  v3 = objc_opt_class();

  return [v3 iconLocation];
}

- (BOOL)folderView:(id)a3 canChangeCurrentPageIndexToIndex:(int64_t)a4
{
  v6 = [(SBFolderController *)self folderDelegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 folderController:self canChangeCurrentPageIndexToIndex:a4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)folderView:(id)a3 currentPageIndexDidChange:(int64_t)a4
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SBFolderControllerCurrentPageIndexDidChangeNotification" object:self];
}

- (void)folderViewWillBeginScrolling:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBFolderController *)self folderDelegate];
  [v5 folderControllerWillBeginScrolling:self];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"SBFolderControllerWillBeginScrollingNotification" object:self userInfo:0];

  v7 = [v4 scrollView];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 panGestureRecognizer];
    [v9 locationInView:v8];
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

          v19 = [*(*(&v29 + 1) + 8 * v18) customIconImageViewController];
          v20 = [v19 view];
          v21 = [v20 superview];
          [v21 convertPoint:v8 fromView:{v11, v13}];
          v23 = v22;
          v25 = v24;

          [v20 frame];
          v35.x = v23;
          v35.y = v25;
          if (CGRectContainsPoint(v36, v35))
          {
            [(SBFolderController *)self _cancelTouchesForCustomIconImageViewController:v19];
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
  v26 = [(SBFolderController *)self scrollingLightUpdatesAssertion];

  if (!v26)
  {
    v27 = +[SBHLightSourceManager sharedManager];
    v28 = [v27 reduceUpdateFrequencyForReason:@"scrolling"];

    [(SBFolderController *)self setScrollingLightUpdatesAssertion:v28];
  }
}

- (void)folderViewDidEndScrolling:(id)a3
{
  [(SBFolderController *)self updateAppearanceStateForPageViewControllers:1];
  [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerDidEndScrolling:self];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SBFolderControllerDidEndScrollingNotification" object:self userInfo:0];

  iconImageViewControllerKeepStaticForAnimatedScrollAssertion = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  if (iconImageViewControllerKeepStaticForAnimatedScrollAssertion)
  {
    [(BSInvalidatable *)iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
    v7 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
    self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = 0;
  }

  v8 = [(SBFolderController *)self scrollingLightUpdatesAssertion];
  [v8 invalidate];

  [(SBFolderController *)self setScrollingLightUpdatesAssertion:0];
}

- (void)folderView:(id)a3 willAnimateScrollToPageIndex:(int64_t)a4
{
  v11 = a3;
  iconImageViewControllerKeepStaticForAnimatedScrollAssertion = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  if (iconImageViewControllerKeepStaticForAnimatedScrollAssertion)
  {
    [(BSInvalidatable *)iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
    v7 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
    self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = 0;
  }

  v8 = [MEMORY[0x1E696AD50] indexSetWithIndex:a4];
  [v8 addIndex:{objc_msgSend(v11, "currentPageIndex")}];
  v9 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v8 forReason:@"AnimatedScroll"];
  [(BSInvalidatable *)self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion invalidate];
  v10 = self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion;
  self->_iconImageViewControllerKeepStaticForAnimatedScrollAssertion = v9;
}

- (void)folderViewShouldClose:(id)a3 withPinchGesture:(id)a4
{
  v6 = a4;
  if (![(SBFolderController *)self isRotating])
  {
    v5 = [(SBFolderController *)self folderDelegate];
    [v5 folderControllerShouldClose:self withPinchGesture:v6];
  }
}

- (void)folderViewShouldBeginEditing:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerShouldBeginEditing:self withHaptic:0];
}

- (void)folderViewShouldEndEditing:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerShouldEndEditing:self];
}

- (double)minimumHomeScreenScaleForFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 minimumHomeScreenScaleForFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)folderView:(id)a3 iconListView:(id)a4 canHandleIconDropSession:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 folderController:self iconListView:v7 canHandleIconDropSession:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidEnter:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 iconDropSessionDidEnter:v7];
  }

  [(SBFolderController *)self noteIconDrag:v7 didEnterIconListView:v9];
  [v9 addDragObserver:self forDropSession:v7];
}

- (id)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v9 folderController:self iconListView:v7 iconDropSessionDidUpdate:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];
  }

  [(SBFolderController *)self noteIconDrag:v8 didChangeInIconListView:v7];
  if ([v7 iconsNeedLayout])
  {
    [(SBFolderController *)self layoutIconListsWithAnimationType:0 forceRelayout:1];
  }

  return v10;
}

- (void)folderView:(id)a3 iconListView:(id)a4 iconDropSessionDidExit:(id)a5
{
  v9 = a4;
  v7 = a5;
  [(SBFolderController *)self noteIconDrag:v7 didExitIconListView:v9];
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 iconDropSessionDidExit:v7];
  }
}

- (void)folderView:(id)a3 iconListView:(id)a4 performIconDrop:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 performIconDrop:v7];
  }
}

- (id)folderView:(id)a3 iconListView:(id)a4 iconViewForDroppingIconDragItem:(id)a5 proposedIconView:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBFolderController *)self _dragDelegate];
  v13 = v11;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 folderController:self iconListView:v9 iconViewForDroppingIconDragItem:v10 proposedIconView:v11];
  }

  return v13;
}

- (void)folderView:(id)a3 iconListView:(id)a4 willUseIconView:(id)a5 forDroppingIconDragItem:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 folderController:self iconListView:v12 willUseIconView:v9 forDroppingIconDragItem:v10];
  }
}

- (id)folderView:(id)a3 iconListView:(id)a4 previewForDroppingIconDragItem:(id)a5 proposedPreview:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBFolderController *)self _dragDelegate];
  v13 = v11;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 folderController:self iconListView:v9 previewForDroppingIconDragItem:v10 proposedPreview:v11];
  }

  return v13;
}

- (void)folderView:(id)a3 iconListView:(id)a4 iconDragItem:(id)a5 willAnimateDropWithAnimator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 folderController:self iconListView:v11 iconDragItem:v12 willAnimateDropWithAnimator:v13];
  }

  if ([(SBFolderController *)self disablesScrollingWhileIconDragIsDropping])
  {
    [v10 _setScrollingDisabled:1 forReason:@"SBFolderController-IconDropping"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__SBFolderController_folderView_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke;
    v15[3] = &unk_1E8089000;
    v16 = v10;
    [v13 addCompletion:v15];
  }
}

- (BOOL)folderView:(id)a3 iconListView:(id)a4 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a5 onIconView:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 folderController:self iconListView:v9 shouldAllowSpringLoadedInteractionForIconDropSession:v10 onIconView:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)folderView:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self iconListView:v9 springLoadedInteractionForIconDragDidCompleteOnIconView:v7];
  }
}

- (id)folderView:(id)a3 iconListView:(id)a4 customSpringAnimationBehaviorForDroppingItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self _dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 folderController:self iconListView:v7 customSpringAnimationBehaviorForDroppingItem:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIEdgeInsets)contentOverlayInsetsFromParentIfAvailableForFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 contentOverlayInsetsFromParentIfAvailableForFolderController:self];
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

- (id)folderView:(id)a3 accessibilityTintColorForRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(SBFolderController *)self folderDelegate];
  v11 = [v9 _screen];
  v12 = [v11 coordinateSpace];
  [v9 convertRect:v12 toCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (objc_opt_respondsToSelector())
  {
    v21 = [v10 folderController:self accessibilityTintColorForScreenRect:{v14, v16, v18, v20}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)folderViewDidChangeOrientation:(id)a3
{
  v4 = a3;
  if (![(SBFolderController *)self isRotating])
  {
    -[SBFolderController setOrientation:](self, "setOrientation:", [v4 orientation]);
  }
}

- (void)folderView:(id)a3 didAddIconListView:(id)a4
{
  v5 = a4;
  [v5 addLayoutObserver:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SBFolderController_folderView_didAddIconListView___block_invoke;
  v7[3] = &unk_1E808B620;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 enumerateIconViewsUsingBlock:v7];
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v5 = a4;
  [v5 addObserver:self];
  [v5 setOverrideParentViewControllerForCustomIconImageViewController:self];
  v6 = [v5 customIconImageViewController];
  if (v6)
  {
    v7 = [(SBFolderController *)self parentViewControllerForCustomIconImageViewControllerForIconView:v5];
    v8 = [v6 parentViewController];

    if (v8 != v7)
    {
      [v7 bs_addChildViewController:v6];
    }

    v9 = SBLogRootController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderController iconListView:didAddIconView:];
    }

    [(SBFolderController *)self _updatePresentationModeForIconView:v5];
    v10 = [v6 view];
    v11 = [v10 superview];

    if (!v11)
    {
      NSLog(&cfstr_NoSuperview.isa);
    }

    if (([v5 isIconImageViewBorrowed] & 1) == 0)
    {
      [v5 setCustomIconImageViewHitTestingDisabled:{-[SBFolderController _isHitTestingDisabledOnCustomIconImageViewControllers](self, "_isHitTestingDisabledOnCustomIconImageViewControllers")}];
    }

    [(SBFolderController *)self _beginTrackingIconViewWithCustomImageViewController:v5];
  }
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v5 = a4;
  [v5 removeObserver:self];
  [v5 setOverrideParentViewControllerForCustomIconImageViewController:0];
  v6 = [v5 customIconImageViewController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 view];
    v9 = [v8 isDescendantOfView:v5];
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
    [v8 removeFromSuperview];
    [v7 removeFromParentViewController];
    if ([v7 bs_isAppearingOrAppeared])
    {
      [v7 bs_beginAppearanceTransition:0 animated:0];
    }

    else if ([v7 _appearState] != 3)
    {
LABEL_12:
      [(SBFolderController *)self _endTrackingIconViewWithCustomImageViewController:v5];

      goto LABEL_13;
    }

    [v7 bs_endAppearanceTransition];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 customIconImageViewController];
  if (v7)
  {
    v9 = SBLogRootController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderController iconView:didChangeCustomImageViewController:];
    }

    [(SBFolderController *)self bs_removeChildViewController:v7];
    [(SBFolderController *)self _endTrackingIconViewWithCustomImageViewController:v6];
  }

  if (v8)
  {
    if (([v6 isIconImageViewBorrowed] & 1) == 0)
    {
      [v6 setCustomIconImageViewHitTestingDisabled:{-[SBFolderController _isHitTestingDisabledOnCustomIconImageViewControllers](self, "_isHitTestingDisabledOnCustomIconImageViewControllers")}];
      v10 = SBLogRootController();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBFolderController iconView:didChangeCustomImageViewController:];
      }

      v11 = [v8 view];
      v12 = [v11 superview];

      if (!v12)
      {
        NSLog(&cfstr_NoSuperview.isa);
      }

      v13 = [(SBFolderController *)self parentViewControllerForCustomIconImageViewControllerForIconView:v6];
      [v13 bs_addChildViewController:v8];
    }

    [(SBFolderController *)self _beginTrackingIconViewWithCustomImageViewController:v6];
  }
}

- (void)iconViewWillPresentContextMenu:(id)a3
{
  v7 = [a3 object];
  v4 = [(SBFolderController *)self isDisplayingIconView:v7];
  v5 = v7;
  if (v4)
  {
    v6 = [v7 customIconImageViewController];
    if (v6)
    {
      [(SBFolderController *)self _cancelTouchesForCustomIconImageViewController:v6];
    }

    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)iconViewDidDismissContextMenu:(id)a3
{
  v4 = [a3 object];
  if ([(SBFolderController *)self isDisplayingIconView:?])
  {
    [(SBFolderController *)self _invalidateAllCancelTouchesAssertions];
  }
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(SBFolderController *)self innerFolderController];
  v8 = [v7 folder];
  v9 = [v8 icon];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v6;
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

        if ([*(*(&v15 + 1) + 8 * v14) isEqual:{v9, v15}])
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

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v6 = a4;
  v9 = [(SBFolderController *)self innerFolderController];
  v7 = [v9 folder];
  v8 = [v7 icon];

  LODWORD(v7) = [v6 isEqual:v8];
  if (v7)
  {
    [(SBFolderController *)self popFolderAnimated:0 completion:0];
  }
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self iconLocation];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(SBFolderController *)self iconLocation];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBFolderController *)self innerFolderController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 folderView];
    v10[0] = v5;
    v6 = v10;
  }

  else
  {
    v5 = [(SBFolderController *)self folderView];
    v9 = v5;
    v6 = &v9;
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v7;
}

- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBFolderController *)self folderView];
  v11 = [v10 beginHidingIconsFromLayout:v9 reason:v8 options:a5];

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

  v16 = [(SBFolderController *)self innerFolderController];
  if (v16)
  {
    [v15 addAssertionFromChild:v16];
  }

  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    v18 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v19 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = v18;

    layoutHidingAssertions = self->_layoutHidingAssertions;
  }

  [(NSHashTable *)layoutHidingAssertions addObject:v15];

  return v15;
}

- (void)addAssertionsFromInnerFolderController:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) addAssertionFromChild:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeAssertionsFromInnerFolderController:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) removeAndInvalidateAssertionsForChild:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v6 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBFolderView *)self->_contentView setLegibilitySettings:self->_legibilitySettings];
    v5 = [(SBFolderController *)self innerFolderController];
    [v5 setLegibilitySettings:self->_legibilitySettings];
  }
}

- (id)accessibilityTintColorForScreenRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 folderController:self accessibilityTintColorForScreenRect:{x, y, width, height}];
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
  v2 = [(SBFolderController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFolderController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFolderController *)self succinctDescriptionBuilder];
  v5 = [(SBFolderController *)self folder];
  v6 = [v4 appendObject:v5 withName:@"folder"];

  v7 = [(SBFolderController *)self folderView];
  v8 = [v4 appendObject:v7 withName:@"folderView"];

  v9 = [(SBFolderController *)self originatingIconLocation];
  v10 = [v9 isEqualToString:@"SBIconLocationNone"];

  if ((v10 & 1) == 0)
  {
    v11 = [(SBFolderController *)self originatingIconLocation];
    v12 = [v4 appendObject:v11 withName:@"originatingIconLocation"];
  }

  v13 = [(SBFolderController *)self contentVisibility];
  if (v13)
  {
    v14 = SBHStringFromContentVisibility(v13);
    [v4 appendString:v14 withName:@"contentVisibility"];
  }

  return v4;
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