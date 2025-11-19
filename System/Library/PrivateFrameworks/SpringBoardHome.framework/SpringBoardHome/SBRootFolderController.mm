@interface SBRootFolderController
+ (BOOL)pageStateTransitionPrefersUsingScrollingDirection;
+ (NSString)dockIconLocation;
+ (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)a3 pageWidth:(double)a4 pageSpacing:(double)a5 pages:(double)a6 pageCount:(const int64_t *)a7 userInterfaceLayoutDirection:(unint64_t)a8 currentPageState:(int64_t)a9 currentPageOffset:(int64_t)a10 scrollingDirection:(unint64_t)a11;
- (BOOL)_internalDismissWidgetAddSheet:(BOOL)a3 clearAddSheetViewController:(BOOL)a4 notifyObservers:(BOOL)a5;
- (BOOL)_leadingCustomViewShouldShowAddWidgetButtonWhenEditing;
- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_listIndexIsVisible:(unint64_t)a3;
- (BOOL)_shouldObscureBackgroundBehindCustomLeadingPageAtIndex:(unint64_t)a3;
- (BOOL)_shouldObscureBackgroundBehindCustomTrailingPageAtIndex:(unint64_t)a3;
- (BOOL)_trailingCustomViewShouldShowAddWidgetButtonWhenEditing;
- (BOOL)_trailingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_useGrabberForSheetPresentation;
- (BOOL)allowsAutoscrollToLeadingCustomView;
- (BOOL)canShowWidgetIntroduction;
- (BOOL)canTransitionPageStateToState:(int64_t)a3;
- (BOOL)iconListViewContainsWidget:(unint64_t)a3;
- (BOOL)iconListViewsContainWidget;
- (BOOL)isAnySearchTransitioning;
- (BOOL)isAnySearchVisible;
- (BOOL)isAnySearchVisibleOrTransitioning;
- (BOOL)isDisplayingEditingButtons;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5;
- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4;
- (BOOL)isDisplayingWidgetIntroductionOnPage:(int64_t)a3;
- (BOOL)isDockExternal;
- (BOOL)isDockVisible;
- (BOOL)isIconPageVisibleOrTransitionDestination;
- (BOOL)isLeadingCustomViewOrLeadingCustomViewSearchVisible;
- (BOOL)isLeadingCustomViewPageHidden;
- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)a3;
- (BOOL)isLeadingCustomViewSearchTransitioning;
- (BOOL)isLeadingCustomViewSearchVisibleOrTransitioning;
- (BOOL)isLeadingCustomViewTransitioning;
- (BOOL)isLeadingCustomViewVisibleOrTransitionDestination;
- (BOOL)isOccludedByOverlay;
- (BOOL)isOnLeadingCustomPage;
- (BOOL)isPageManagementUITransitioningOutOfVisible;
- (BOOL)isPageManagementUIVisible;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)isPullDownSearchTransitioning;
- (BOOL)isPullDownSearchVisible;
- (BOOL)isPullDownSearchVisibleOrTransitioning;
- (BOOL)isPullDownSearchVisibleOrTransitioningToVisible;
- (BOOL)isTrailingCustomViewTransitioning;
- (BOOL)isTrailingCustomViewVisibleOrTransitionDestination;
- (BOOL)isTransitioningBetweenHorizontalPageStates;
- (BOOL)isTransitioningBetweenIconAndLeadingCustomView;
- (BOOL)isTransitioningBetweenIconAndTrailingCustomView;
- (BOOL)isTransitioningBetweenIconPageAndLeadingCustomPage;
- (BOOL)isTransitioningBetweenIconPageAndTrailingCustomPage;
- (BOOL)isTransitioningBetweenPageStateVerticalGroups;
- (BOOL)isTransitioningHorizontally;
- (BOOL)isTransitioningPageState;
- (BOOL)stackConfigurationInteraction:(id)a3 allowsRemovalOfIconDataSource:(id)a4;
- (NSArray)folderControllers;
- (NSSet)nonDockPresentedIconLocations;
- (NSSet)presentedIconLocations;
- (SBFParallaxSettings)parallaxSettings;
- (SBHRootFolderCustomViewPresenting)leadingCustomViewController;
- (SBHRootFolderCustomViewPresenting)trailingCustomViewController;
- (SBHStackConfigurationViewController)stackConfigurationViewController;
- (SBRootFolderController)initWithConfiguration:(id)a3;
- (SBRootFolderControllerAccessoryViewControllerDelegate)accessoryViewControllerDelegate;
- (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)a3;
- (UIView)searchBackdropView;
- (UIView)searchableLeadingCustomWrapperView;
- (double)_additionalMinimumOffsetForSheetPresentation;
- (double)distanceToTopOfSpotlightIconsForRootFolderView:(id)a3;
- (double)dockHeight;
- (double)externalDockHeightForRootFolderView:(id)a3;
- (double)maxExternalDockHeightForRootFolderView:(id)a3;
- (double)pageTransitionProgress;
- (double)preferredExternalDockVerticalMarginForRootFolderView:(id)a3;
- (double)spotlightFirstIconRowOffset;
- (double)titledButtonsAlpha;
- (double)visibilityProgressTowardPageStateMatchingTest:(id)a3;
- (id)_addWidgetSheetConfigurationManager;
- (id)_makeContentViewWithConfiguration:(id)a3;
- (id)_viewControllersToNotifyForViewObscuration;
- (id)addWidgetAddSheetObserver:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)applicationWidgetCollectionsForEditingViewController:(id)a3 withAllowedSizeClasses:(id *)a4 allowingNonStackableItems:(BOOL)a5;
- (id)backgroundViewForDockForRootFolderView:(id)a3;
- (id)backgroundViewForEditingDoneButtonForRootFolderView:(id)a3;
- (id)beginModifyingDockOffscreenFractionForReason:(id)a3;
- (id)beginPageStateTransitionFromPageState:(int64_t)a3 pageIndex:(int64_t)a4 toPageState:(int64_t)a5 pageIndex:(int64_t)a6 reason:(id)a7 animated:(BOOL)a8 interactive:(BOOL)a9;
- (id)beginPageStateTransitionToState:(int64_t)a3 reason:(id)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (id)customViewControllerForPageIndex:(int64_t)a3;
- (id)defaultTransitionForTransitioningFromPageState:(int64_t)a3 toPageState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)dockIconListView;
- (id)dockListView;
- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4;
- (id)iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:(id)a3;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5;
- (id)interactionControllerForDismissal:(id)a3;
- (id)interactionControllerForPresentation:(id)a3;
- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)a3;
- (id)showDoneButtonForReason:(id)a3;
- (id)stackConfigurationInteraction:(id)a3 dragPreviewForIconView:(id)a4;
- (id)stackConfigurationInteraction:(id)a3 draggedIconForIdentifier:(id)a4;
- (id)stackConfigurationInteraction:(id)a3 promoteSuggestedWidget:(id)a4 withinStack:(id)a5;
- (id)updateStateTransitionsDuringScrollingScrollView:(id)a3 pageBounceComparator:(void *)a4;
- (id)viewControllerForPageState:(int64_t)a3;
- (id)viewControllerForTransitioningFromPageState:(int64_t)a3 toPageState:(int64_t)a4;
- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4;
- (id)windowForIconDragPreviewsForStackConfigurationInteraction:(id)a3 forWindowScene:(id)a4;
- (int64_t)destinationPageState;
- (int64_t)leadingCustomViewPageIndex;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3;
- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)a3;
- (int64_t)trailingCustomViewPageIndex;
- (unint64_t)_addWidgetSheetStyle;
- (unint64_t)_currentHomeScreenEditingGridSize;
- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask;
- (unint64_t)destinationPageOffset;
- (unint64_t)dockEdge;
- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)a3;
- (unint64_t)presenterType;
- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)a3;
- (unint64_t)typeForPage:(int64_t)a3;
- (void)_cancelTouchesForSearchGestureOnIconView:(id)a3;
- (void)_checkForImproperScrollOffsetForPageState;
- (void)_dismissPageManagementIfPresented:(id)a3;
- (void)_doPageManagementEducation;
- (void)_handleWidgetSheetViewControllerDidDisappear:(id)a3;
- (void)_handleWidgetSheetViewControllerWillAppear:(id)a3;
- (void)_handleWidgetSheetViewControllerWillDisappear:(id)a3;
- (void)_invalidateSearchGestureIconViewTouchCancellationAssertion;
- (void)_presentPageManagement:(id)a3;
- (void)_refreshGalleryContentForHomeScreenEditingIfNecessary;
- (void)_removeShowDoneButtonAssertion:(id)a3;
- (void)_updateFolderRequiredTrailingEmptyListCount;
- (void)_updateStatusBarHiddenForWidgetSheetViewController:(id)a3 visible:(BOOL)a4;
- (void)acceptWidgetIntroduction;
- (void)addPageStateObserver:(id)a3;
- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)addWidgetSheetViewControllerDidAppear:(id)a3;
- (void)addWidgetSheetViewControllerDidDisappear:(id)a3;
- (void)addWidgetSheetViewControllerWillAppear:(id)a3;
- (void)addWidgetSheetViewControllerWillDisappear:(id)a3;
- (void)bringWidgetIntroductionPopoverToFront;
- (void)dealloc;
- (void)didBeginDraggingWidgetIcon:(id)a3;
- (void)didContinueTransitionToState:(int64_t)a3 progress:(double)a4;
- (void)didEndDraggingWidgetIcon:(id)a3;
- (void)didEndTransitionFromState:(int64_t)a3 pageIndex:(int64_t)a4 toState:(int64_t)a5 pageIndex:(int64_t)a6 successfully:(BOOL)a7;
- (void)dismissSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)enterPageManagementUIWithCompletionHandler:(id)a3;
- (void)enumerateCustomPageViewControllersUsingBlock:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumeratePageStateObserversUsingBlock:(id)a3;
- (void)enumerateWidgetAddSheetObserversUsingBlock:(id)a3;
- (void)exitPageManagementUIWithCompletionHandler:(id)a3;
- (void)folderController:(id)a3 didBeginEditingTitle:(id)a4;
- (void)folderController:(id)a3 didEndEditingTitle:(id)a4;
- (void)folderView:(id)a3 currentPageIndexDidChange:(int64_t)a4;
- (void)folderView:(id)a3 currentPageIndexWillChange:(int64_t)a4;
- (void)folderView:(id)a3 didBeginEditingTitle:(id)a4;
- (void)folderView:(id)a3 didEndEditingTitle:(id)a4;
- (void)folderView:(id)a3 willAnimateScrollToPageIndex:(int64_t)a4;
- (void)folderViewDidEndScrolling:(id)a3;
- (void)folderViewDidScroll:(id)a3;
- (void)folderViewWillUpdatePageDuringScrolling:(id)a3;
- (void)pageTransitionHandle:(id)a3 endPageStateTransitionSuccessfully:(BOOL)a4;
- (void)pageTransitionHandle:(id)a3 updateCurrentPageStateTransitionToProgress:(double)a4;
- (void)performDefaultPageStateTransitionToState:(int64_t)a3 reason:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)performPageStateTransitionToState:(int64_t)a3 pageIndex:(int64_t)a4 reason:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)presentSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)presentWidgetEditingViewControllerFromViewController:(id)a3;
- (void)presentWidgetEditingViewControllerFromViewController:(id)a3 withAllowedSizeClasses:(id)a4 allowingNonStackableItems:(BOOL)a5;
- (void)rejectWidgetIntroduction;
- (void)rootFolderView:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5;
- (void)rootFolderView:(id)a3 didEndOverscrollOnFirstPageWithVelocity:(double)a4 translation:(double)a5;
- (void)rootFolderView:(id)a3 didEndOverscrollOnLastPageWithVelocity:(double)a4 translation:(double)a5;
- (void)rootFolderView:(id)a3 didOverscrollOnFirstPageByAmount:(double)a4;
- (void)rootFolderView:(id)a3 didOverscrollOnLastPageByAmount:(double)a4;
- (void)rootFolderView:(id)a3 wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)a4;
- (void)rootFolderView:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5;
- (void)rootFolderView:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6;
- (void)rootFolderViewDidChangeSuppressesEditingStateForListViews:(id)a3;
- (void)rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:(id)a3;
- (void)rootFolderViewWantsIconTintViewControllerPresented:(id)a3;
- (void)rootFolderViewWantsSearchPresented:(id)a3;
- (void)rootFolderViewWantsToEndEditing:(id)a3;
- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3;
- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4;
- (void)searchGesture:(id)a3 completedShowing:(BOOL)a4;
- (void)searchGesture:(id)a3 resetAnimated:(BOOL)a4;
- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4;
- (void)setAllowsAutoscrollToLeadingCustomView:(BOOL)a3;
- (void)setDockEdge:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolderDelegate:(id)a3;
- (void)setIdleText:(id)a3;
- (void)setLeadingCustomViewPageHidden:(BOOL)a3;
- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(unint64_t)a4;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setOccludedByOverlay:(BOOL)a3;
- (void)setParallaxDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setPullDownSearchViewController:(id)a3;
- (void)setSuppressesEditingStateForListView:(BOOL)a3;
- (void)setSuppressesExtraEditingButtons:(BOOL)a3;
- (void)setTitledButtonsAlpha:(double)a3;
- (void)stackConfigurationInteraction:(id)a3 isConsumingDropSession:(id)a4;
- (void)stackConfigurationInteraction:(id)a3 noteDidRemoveSuggestedWidgetIcon:(id)a4;
- (void)stackConfigurationInteraction:(id)a3 requestsPresentAddWidgetSheetFromPresenter:(id)a4;
- (void)stackConfigurationInteractionWillAnimateWidgetInsertion:(id)a3;
- (void)stackConfigurationViewControllerDidAppear:(id)a3;
- (void)stackConfigurationViewControllerDidDisappear:(id)a3;
- (void)stackConfigurationViewControllerWillAppear:(id)a3;
- (void)transitionDidFinish:(id)a3;
- (void)transitionWillBegin:(id)a3;
- (void)transitionWillFinish:(id)a3;
- (void)transitionWillReverse:(id)a3;
- (void)updateExtraButtonVisibilityAnimated:(BOOL)a3;
- (void)updatePresentedWidgetEditingViewController;
- (void)updatePronouncedContainerViewVisibilityIfPossible:(BOOL)a3 vertical:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBeginTransitionToState:(int64_t)a3 pageIndex:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)willEndTransitionToState:(int64_t)a3 successfully:(BOOL)a4;
@end

@implementation SBRootFolderController

- (BOOL)isPullDownSearchVisible
{
  v3 = ![(SBRootFolderController *)self isTransitioningPageState]&& [(SBRootFolderController *)self pageState]== 1;
  v4 = [(SBRootFolderController *)self searchPresenter];
  v5 = v4;
  if (v4 && ![v4 presentationState])
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isTransitioningPageState
{
  v2 = [(SBRootFolderController *)self currentTransitionHandle];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isOnLeadingCustomPage
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  v4 = SBRootFolderPageStateIsOnLeadingCustomPage([(SBRootFolderController *)self pageState]);
  if (!v3 || !v4)
  {
    return !v3 && v4;
  }

  v5 = [(SBRootFolderController *)self destinationPageState];

  return SBRootFolderPageStateIsOnLeadingCustomPage(v5);
}

- (BOOL)isTrailingCustomViewVisibleOrTransitionDestination
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    v3 = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    v3 = [(SBRootFolderController *)self pageState];
  }

  return v3 == 4;
}

- (id)dockListView
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 dockView];
  v4 = [v3 dockListView];

  return v4;
}

- (BOOL)isDockExternal
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isDockExternal];

  return v3;
}

- (BOOL)isDockVisible
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isDockVisible];

  return v3;
}

- (BOOL)isPullDownSearchVisibleOrTransitioning
{
  if ([(SBRootFolderController *)self isPullDownSearchVisible])
  {
    return 1;
  }

  return [(SBRootFolderController *)self isPullDownSearchTransitioning];
}

- (BOOL)isPullDownSearchTransitioning
{
  LODWORD(v3) = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v3 = [(SBRootFolderController *)self pageState];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(SBRootFolderController *)self destinationPageState]== 1;
    }
  }

  return v3;
}

- (NSSet)nonDockPresentedIconLocations
{
  v2 = [(SBRootFolderController *)self presentedIconLocations];
  v3 = [v2 mutableCopy];

  v4 = [objc_opt_class() dockIconLocation];
  [v3 removeObject:v4];

  return v3;
}

- (NSSet)presentedIconLocations
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = [objc_opt_class() iconLocation];
  v5 = [v3 setWithObject:v4];

  v6 = [(SBRootFolderController *)self dockListView];
  v7 = [v6 iconLocation];

  if ([(SBFolderController *)self hasDock]&& ![(SBRootFolderController *)self isDockExternal]&& v7)
  {
    [v5 addObject:v7];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(SBFolderController *)self iconListViews];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) iconLocation];
        [v5 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isLeadingCustomViewSearchVisibleOrTransitioning
{
  if ([(SBRootFolderController *)self isLeadingCustomViewSearchVisible])
  {
    return 1;
  }

  return [(SBRootFolderController *)self isLeadingCustomViewSearchTransitioning];
}

- (BOOL)isLeadingCustomViewSearchTransitioning
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    LOBYTE(v3) = [(SBRootFolderController *)self pageState]== 3 || [(SBRootFolderController *)self destinationPageState]== 3;
  }

  return v3;
}

+ (NSString)dockIconLocation
{
  v2 = [a1 _contentViewClass];

  return [v2 dockIconLocation];
}

- (id)_viewControllersToNotifyForViewObscuration
{
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  v3 = [(SBFolderController *)&v10 _viewControllersToNotifyForViewObscuration];
  v4 = [v3 mutableCopy];

  if (SBRootFolderPageStateIsSearch([(SBRootFolderController *)self pageState]))
  {
    v5 = [(SBRootFolderController *)self pullDownSearchViewController];
    if (v5)
    {
      [v4 addObject:v5];
    }
  }

  v6 = [(SBRootFolderController *)self searchPresenter];
  v7 = [v6 isPresenting];

  if (v7)
  {
    v8 = [(SBRootFolderController *)self searchPresentableViewController];
    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  return v4;
}

- (BOOL)isAnySearchVisibleOrTransitioning
{
  if ([(SBRootFolderController *)self isAnySearchVisible])
  {
    return 1;
  }

  return [(SBRootFolderController *)self isAnySearchTransitioning];
}

- (BOOL)isAnySearchVisible
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    return 0;
  }

  v4 = [(SBRootFolderController *)self pageState];

  return SBRootFolderPageStateIsSearch(v4);
}

- (BOOL)isAnySearchTransitioning
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    if (SBRootFolderPageStateIsSearch([(SBRootFolderController *)self pageState]))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = [(SBRootFolderController *)self destinationPageState];

      LOBYTE(v3) = SBRootFolderPageStateIsSearch(v4);
    }
  }

  return v3;
}

- (BOOL)isPullDownSearchVisibleOrTransitioningToVisible
{
  v3 = [(SBRootFolderController *)self searchPresenter];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isPresenting];
  }

  else
  {
    v6 = [(SBRootFolderController *)self isPullDownSearchVisible];
    if ([(SBRootFolderController *)self isTransitioningPageState])
    {
      v7 = [(SBRootFolderController *)self destinationPageState]== 1;
    }

    else
    {
      v7 = 0;
    }

    v5 = v6 || v7;
  }

  return v5 & 1;
}

- (int64_t)destinationPageState
{
  if (![(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle isValid])
  {
    return -1;
  }

  currentTransitionHandle = self->_currentTransitionHandle;

  return [(_SBRootFolderPageTransitionHandle *)currentTransitionHandle destinationPageState];
}

- (SBRootFolderControllerAccessoryViewControllerDelegate)accessoryViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryViewControllerDelegate);

  return WeakRetained;
}

- (double)pageTransitionProgress
{
  if (![(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle isValid])
  {
    return 0.0;
  }

  currentTransitionHandle = self->_currentTransitionHandle;

  [(_SBRootFolderPageTransitionHandle *)currentTransitionHandle pageTransitionProgress];
  return result;
}

- (SBHRootFolderCustomViewPresenting)leadingCustomViewController
{
  v2 = [(SBRootFolderController *)self leadingCustomViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (NSArray)folderControllers
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  v4 = [(SBFolderController *)self innerFolderController];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [v5 innerFolderController];

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

- (id)dockIconListView
{
  if ([(SBRootFolderController *)self isDockExternal])
  {
    v3 = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 externalDockIconListViewForRootFolderController:self];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderController;
    v4 = [(SBFolderController *)&v6 dockIconListView];
  }

  return v4;
}

- (BOOL)isTransitioningHorizontally
{
  if ([(SBRootFolderController *)self isTransitioningBetweenPageStateVerticalGroups])
  {
    return 1;
  }

  return [(SBRootFolderController *)self isTransitioningBetweenHorizontalPageStates];
}

- (BOOL)isTransitioningBetweenPageStateVerticalGroups
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    v6 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(v4);
    LOBYTE(v3) = v6 != SBRootFolderPageStateVerticalGroupForRootFolderPageState(v5);
  }

  return v3;
}

- (void)_checkForImproperScrollOffsetForPageState
{
  if ([(SBFolderController *)self isScrolling])
  {
    return;
  }

  v9 = [(SBRootFolderController *)self rootFolderView];
  v3 = [(SBRootFolderController *)self pageState];
  v4 = [(SBFolderController *)self currentPageIndex];
  [v9 leadingCustomViewPageScrollOffset];
  v6 = v5;
  if (SBRootFolderPageStateIsOnLeadingCustomPage(v3))
  {
    v7 = v6;
    if (v4 != v6)
    {
      goto LABEL_10;
    }
  }

  if (!SBRootFolderPageStateIsOnIconPage(v3))
  {
    goto LABEL_11;
  }

  if (v4 >= [(SBFolderController *)self firstIconPageIndex])
  {
    if (v4 > [(SBFolderController *)self lastIconPageIndex])
    {
      v8 = [(SBFolderController *)self lastIconPageIndex];
      goto LABEL_9;
    }

LABEL_11:
    [v9 resetContentOffsetToCurrentPageAnimated:1];
    goto LABEL_12;
  }

  v8 = [(SBFolderController *)self firstIconPageIndex];
LABEL_9:
  v7 = v8;
LABEL_10:
  [(SBRootFolderController *)self setCurrentPageIndex:v7 animated:1];
LABEL_12:
}

+ (BOOL)pageStateTransitionPrefersUsingScrollingDirection
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (BOOL)isTransitioningBetweenHorizontalPageStates
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(v3) = SBRootFolderPageStateIsOnHorizontalScrollingPlane(v4) && (SBRootFolderPageStateIsOnHorizontalScrollingPlane(v5) & 1) != 0;
  }

  return v3;
}

- (void)bringWidgetIntroductionPopoverToFront
{
  if ([(SBRootFolderController *)self isDisplayingWidgetIntroductionOnPage:[(SBFolderController *)self firstIconPageIndex]])
  {
    v3 = [(SBFolderController *)self currentIconListView];
    [v3 bringWidgetIntroductionPopoverToFront];
  }
}

- (double)dockHeight
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  [v2 dockHeight];
  v4 = v3;

  return v4;
}

- (BOOL)isLeadingCustomViewVisibleOrTransitionDestination
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    v3 = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    v3 = [(SBRootFolderController *)self pageState];
  }

  return v3 == 2;
}

- (SBRootFolderController)initWithConfiguration:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = SBRootFolderController;
  v5 = [(SBFolderController *)&v50 initWithConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v5->_pageState = -1;
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__reduceTransparencyChanged name:*MEMORY[0x1E69DD920] object:0];
    [v7 addObserver:v6 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    v8 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = v4;
      v6->_showsDoneButtonWhileEditing = [v10 showsDoneButtonWhileEditing];
      v6->_showsAddWidgetButtonWhileEditingAllowedOrientations = [v10 showsAddWidgetButtonWhileEditingAllowedOrientations];
      v11 = [v10 searchPresenter];
      searchPresenter = v6->_searchPresenter;
      v6->_searchPresenter = v11;

      v13 = [v10 searchPresentableViewController];
      searchPresentableViewController = v6->_searchPresentableViewController;
      v6->_searchPresentableViewController = v13;

      if (!v6->_searchPresenter)
      {
        v15 = [v10 pullDownSearchViewController];
        pullDownSearchViewController = v6->_pullDownSearchViewController;
        v6->_pullDownSearchViewController = v15;
      }

      if (v6->_searchPresentableViewController)
      {
        [(SBRootFolderController *)v6 addChildViewController:?];
        [(SBHSearchPresentable *)v6->_searchPresentableViewController didMoveToParentViewController:v6];
      }

      if (v6->_pullDownSearchViewController)
      {
        [(SBRootFolderController *)v6 addChildViewController:?];
        [(UIViewController *)v6->_pullDownSearchViewController didMoveToParentViewController:v6];
      }

      v17 = [SBSearchGesture alloc];
      v18 = [v10 searchPresenter];
      v19 = [(SBSearchGesture *)v17 initWithSearchPresenter:v18];
      searchGesture = v6->_searchGesture;
      v6->_searchGesture = v19;

      [(SBSearchGesture *)v6->_searchGesture addObserver:v6];
      v21 = [v10 leadingCustomViewControllers];
      v22 = [v21 copy];
      leadingCustomViewControllers = v6->_leadingCustomViewControllers;
      v6->_leadingCustomViewControllers = v22;

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v6->_leadingCustomViewControllers;
      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v47;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v46 + 1) + 8 * i);
            [(SBRootFolderController *)v6 addChildViewController:v29];
            [v29 didMoveToParentViewController:v6];
          }

          v26 = [(NSArray *)v24 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v26);
      }

      v30 = [v10 trailingCustomViewControllers];
      v31 = [v30 copy];
      trailingCustomViewControllers = v6->_trailingCustomViewControllers;
      v6->_trailingCustomViewControllers = v31;

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = v6->_trailingCustomViewControllers;
      v34 = [(NSArray *)v33 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v43;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v43 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v42 + 1) + 8 * j);
            [(SBRootFolderController *)v6 addChildViewController:v38, v42];
            [v38 didMoveToParentViewController:v6];
            if (SBHIsHomeButtonDevice())
            {
              [v38 setAdditionalSafeAreaInsets:{20.0, 0.0, 0.0, 0.0}];
            }
          }

          v35 = [(NSArray *)v33 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v35);
      }

      v39 = objc_alloc_init(MEMORY[0x1E69D4030]);
      homeScreenDefaults = v6->_homeScreenDefaults;
      v6->_homeScreenDefaults = v39;
    }

    [(SBFolderController *)v6 setOpen:1, v42];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBRootFolderController;
  [(SBFolderController *)&v4 dealloc];
}

- (void)folderController:(id)a3 didBeginEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didBeginEditingTitle:v6];
  }
}

- (void)folderController:(id)a3 didEndEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didEndEditingTitle:v6];
  }
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SBRootFolderController;
  [(SBFolderController *)&v16 viewDidLoad];
  v3 = [(SBRootFolderController *)self rootFolderView];
  if ([(SBRootFolderController *)self pageState]== -1)
  {
    v11 = [v3 typeForPage:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
    if (v11 == 2)
    {
      [(SBRootFolderController *)self setPageState:4];
      [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
      [v3 setTrailingCustomViewVisibilityProgress:?];
    }

    else if (v11)
    {
      [(SBRootFolderController *)self setPageState:0];
    }

    else
    {
      [(SBRootFolderController *)self setPageState:2];
      [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
      [v3 setLeadingCustomViewVisibilityProgress:?];
    }
  }

  v4 = [(SBRootFolderController *)self trailingCustomViewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v3 trailingCustomSearchDimmingView];
          [v9 setSearchDimmingView:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SBRootFolderController;
  [(SBRootFolderController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 viewWillAppear:a3];
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderControllerViewWillAppear:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  [(SBFolderController *)&v12 viewDidDisappear:a3];
  v4 = [(SBRootFolderController *)self rootFolderView];
  if ([(SBRootFolderController *)self isLeadingCustomViewSearchVisible])
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __43__SBRootFolderController_viewDidDisappear___block_invoke;
    v9 = &unk_1E8088F18;
    v10 = v4;
    v11 = self;
    [(SBRootFolderController *)self dismissSpotlightAnimated:0 completionHandler:&v6];
  }

  else if ([(SBRootFolderController *)self isAnySearchVisibleOrTransitioning])
  {
    [(SBRootFolderController *)self dismissSpotlightAnimated:0 completionHandler:0];
  }

  [v4 updateIconListIndexAndVisibility:{1, v6, v7, v8, v9}];
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 rootFolderControllerViewDidDisappear:self];
  }
}

uint64_t __43__SBRootFolderController_viewDidDisappear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPageIndex:objc_msgSend(*(a1 + 40) animated:{"defaultPageIndex"), 0}];
  v2 = *(a1 + 32);

  return [v2 updateIconListIndexAndVisibility:1];
}

- (void)viewWillTransitionToSize:(CGSize)a3 forOperation:(int64_t)a4 withTransitionCoordinator:(id)a5
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 viewWillTransitionToSize:a4 forOperation:a5 withTransitionCoordinator:a3.width, a3.height];
}

- (id)_makeContentViewWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  v4 = [(SBFolderController *)&v7 _makeContentViewWithConfiguration:a3];
  v5 = [(SBRootFolderController *)self searchGesture];
  [v4 setSearchGesture:v5];

  return v4;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SBFolderController *)self isEditing];
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 setEditing:v5 animated:v4];
  if (v7 != v5)
  {
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:v4];
    v8 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    if (v5)
    {
      [v8 fetchGalleryContentForHomeScreenEditingWithGridSize:-[SBRootFolderController _currentHomeScreenEditingGridSize](self addWidgetSheetViewController:{"_currentHomeScreenEditingGridSize"), self->_addSheetViewController}];
    }

    else
    {
      [(SBRootFolderController *)self _internalDismissWidgetAddSheet:v4 clearAddSheetViewController:1 notifyObservers:1];
      [v8 setEditingSuggestedWidgetItems:0];
    }
  }
}

- (void)_updateFolderRequiredTrailingEmptyListCount
{
  v3 = [(SBFolderController *)self isEditing];
  v4 = [(SBFolderController *)self currentPageIndex];
  v5 = [(SBRootFolderController *)self typeForPage:v4];
  if (v5 == 2)
  {
    v6 = [(SBRootFolderController *)self trailingCustomPageIndexForPageIndex:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  [(SBFolderController *)&v8 _updateFolderRequiredTrailingEmptyListCount];
  v7 = !v3;
  if (v5 != 2)
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    [(SBFolderController *)self setCurrentPageIndex:[(SBRootFolderController *)self pageIndexForTrailingCustomPageIndex:v6]];
  }
}

- (void)_refreshGalleryContentForHomeScreenEditingIfNecessary
{
  if ([(SBFolderController *)self isEditing])
  {
    v3 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [v3 setEditingSuggestedWidgetItems:0];
    [v3 fetchGalleryContentForHomeScreenEditingWithGridSize:-[SBRootFolderController _currentHomeScreenEditingGridSize](self addWidgetSheetViewController:{"_currentHomeScreenEditingGridSize"), self->_addSheetViewController}];
  }
}

- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask
{
  if ([(SBRootFolderController *)self _addWidgetSheetStyle]== 1)
  {
    return 30;
  }

  else
  {
    return 14;
  }
}

- (unint64_t)_currentHomeScreenEditingGridSize
{
  if ([(SBRootFolderController *)self _addWidgetSheetStyle]!= 1)
  {
    return 0;
  }

  if ([(SBFolderController *)self isRotating])
  {
    v3 = [(SBRootFolderController *)self _rotatingToInterfaceOrientation];
  }

  else
  {
    v3 = [(SBFolderController *)self orientation];
  }

  if ((v3 - 3) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)setSuppressesExtraEditingButtons:(BOOL)a3
{
  if (self->_suppressesExtraEditingButtons != a3)
  {
    self->_suppressesExtraEditingButtons = a3;
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:0];
  }
}

- (id)showDoneButtonForReason:(id)a3
{
  v4 = a3;
  v5 = [[SBRootFolderControllerShowDoneButtonAssertion alloc] initWithFolderController:self reason:v4];

  showDoneButtonAssertions = self->_showDoneButtonAssertions;
  if (!showDoneButtonAssertions)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_showDoneButtonAssertions;
    self->_showDoneButtonAssertions = v7;

    showDoneButtonAssertions = self->_showDoneButtonAssertions;
  }

  [(NSHashTable *)showDoneButtonAssertions addObject:v5];
  [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];

  return v5;
}

- (void)_removeShowDoneButtonAssertion:(id)a3
{
  [(NSHashTable *)self->_showDoneButtonAssertions removeObject:a3];

  [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];
}

- (void)updateExtraButtonVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = [(SBRootFolderController *)self rootFolderView];
  [(SBFolderController *)self orientation];
  v5 = [(SBRootFolderController *)self showsDoneButtonWhileEditing];
  [(SBRootFolderController *)self showsAddWidgetButtonWhileEditingAllowedOrientations];
  v6 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
  v7 = [(SBFolderController *)self isEditing];
  if (v7 && v5)
  {
    v8 = !self->_suppressesExtraEditingButtons;
    v9 = 1;
    if (v6)
    {
LABEL_4:
      v10 = v8;
LABEL_5:
      v11 = v8;
      v12 = 1;
      v8 = v10;
      goto LABEL_9;
    }

LABEL_8:
    v12 = 0;
    v11 = 0;
LABEL_9:
    if (![(SBRootFolderController *)self isLeadingCustomViewVisibleOrTransitionDestination])
    {
      goto LABEL_20;
    }

    if (v8)
    {
      v8 = [(SBRootFolderController *)self _leadingCustomViewShouldShowDoneButtonWhenEditing];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
      if (!v11)
      {
        v11 = 0;
        goto LABEL_20;
      }
    }

    v11 = [(SBRootFolderController *)self _leadingCustomViewShouldShowAddWidgetButtonWhenEditing];
    goto LABEL_20;
  }

  v13 = [(NSHashTable *)self->_showDoneButtonAssertions count];
  v14 = v7 & v6;
  if (v13)
  {
    v8 = !self->_suppressesExtraEditingButtons;
    v9 = 1;
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v10 = 0;
    v9 = 0;
    v8 = !self->_suppressesExtraEditingButtons;
    goto LABEL_5;
  }

  [(SBRootFolderController *)self isLeadingCustomViewVisibleOrTransitionDestination];
  v12 = 0;
  v9 = 0;
  v8 = 0;
LABEL_19:
  v11 = 0;
LABEL_20:
  if (![(SBRootFolderController *)self isTrailingCustomViewVisibleOrTransitionDestination])
  {
    goto LABEL_26;
  }

  if (v8)
  {
    v8 = [(SBRootFolderController *)self _trailingCustomViewShouldShowDoneButtonWhenEditing];
    if (!v11)
    {
LABEL_23:
      v11 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 0;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  v11 = [(SBRootFolderController *)self _trailingCustomViewShouldShowAddWidgetButtonWhenEditing];
LABEL_26:
  [v15 setShowsDoneButton:v8 animated:v8 & v3];
  [v15 setShowsAddWidgetButton:v11 animated:v11 & v3];
  if ((v9 | v12) == 1)
  {
    [(SBFolderController *)self _hideStatusBarForReason:@"SBRootFolderEditingReason" animated:0];
    [(SBFolderController *)self _hideFakeStatusBarForReason:@"SBRootFolderEditingReason" animated:0];
  }

  else
  {
    [(SBFolderController *)self _unhideStatusBarForReason:@"SBRootFolderEditingReason"];
    [(SBFolderController *)self _unhideFakeStatusBarForReason:@"SBRootFolderEditingReason" animated:0];
  }
}

- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing
{
  v2 = [(SBRootFolderController *)self leadingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldShowDoneButtonWhenEditing];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_trailingCustomViewShouldShowDoneButtonWhenEditing
{
  v2 = [(SBRootFolderController *)self trailingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldShowDoneButtonWhenEditing];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_leadingCustomViewShouldShowAddWidgetButtonWhenEditing
{
  v2 = [(SBRootFolderController *)self leadingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldShowAddWidgetButtonWhenEditing];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_trailingCustomViewShouldShowAddWidgetButtonWhenEditing
{
  v2 = [(SBRootFolderController *)self trailingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldShowAddWidgetButtonWhenEditing];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_shouldObscureBackgroundBehindCustomLeadingPageAtIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self leadingCustomViewControllers];
  v5 = v4;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:a3];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldObscureBackgroundWhileVisible];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_shouldObscureBackgroundBehindCustomTrailingPageAtIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self trailingCustomViewControllers];
  v5 = v4;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:a3];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldObscureBackgroundWhileVisible];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)enumerateCustomPageViewControllersUsingBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_leadingCustomViewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v20 = 0;
      v4[2](v4, v10, &v20);
      if (v20)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_trailingCustomViewControllers;
    v11 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
LABEL_11:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        v20 = 0;
        v4[2](v4, v15, &v20);
        if (v20)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
          if (v12)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  [(SBFolderController *)&v8 setLegibilitySettings:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SBRootFolderController_setLegibilitySettings___block_invoke;
  v6[3] = &unk_1E80892E8;
  v7 = v4;
  v5 = v4;
  [(SBRootFolderController *)self enumerateCustomPageViewControllersUsingBlock:v6];
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 enumerateDisplayedIconViewsUsingBlock:v4];
  v5 = [(SBRootFolderController *)self dockListView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SBRootFolderController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8089310;
  v8 = v4;
  v6 = v4;
  [v5 enumerateIconViewsUsingBlock:v7];
}

- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SBRootFolderController;
  [(SBFolderController *)&v11 enumerateDisplayedIconViewsWithOptions:a3 usingBlock:v6];
  v7 = [(SBRootFolderController *)self dockListView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBRootFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E8089310;
  v10 = v6;
  v8 = v6;
  [v7 enumerateIconViewsUsingBlock:v9];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  v7 = a3;
  [(SBFolderController *)&v10 enumerateDisplayedIconViewsForIcon:v7 usingBlock:v6];
  v8 = [(SBRootFolderController *)self dockListView:v10.receiver];
  v9 = [v8 iconViewForIcon:v7];

  if (v9)
  {
    v6[2](v6, v9);
  }
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBFolderController *)self listLayoutProvider];
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  [(SBFolderController *)&v10 setListLayoutProvider:v6 animated:v4];
  v8 = [(SBFolderController *)self listLayoutProvider];

  if (v7 != v8)
  {
    v9 = [(SBRootFolderController *)self rootFolderView];
    [v9 setListLayoutProvider:v6 animated:v4];
  }
}

- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  if ([(SBRootFolderController *)self isPageManagementUIVisible]&& ![(SBRootFolderController *)self isPageManagementUITransitioningOutOfVisible])
  {
    v5 = [(SBRootFolderController *)self rootFolderView];
    v6 = [v5 specialLayoutManager];

    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 parentViewControllerForCustomIconImageViewControllerForIconView:v4];

      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  v7 = [(SBFolderController *)&v9 parentViewControllerForCustomIconImageViewControllerForIconView:v4];
LABEL_8:

  return v7;
}

- (void)setFolderDelegate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  v5 = [(SBFolderController *)&v7 folderDelegate];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderController;
    [(SBFolderController *)&v6 setFolderDelegate:v4];
  }
}

- (void)setPullDownSearchViewController:(id)a3
{
  v5 = a3;
  pullDownSearchViewController = self->_pullDownSearchViewController;
  if (pullDownSearchViewController != v5)
  {
    v8 = v5;
    [(UIViewController *)pullDownSearchViewController removeFromParentViewController];
    objc_storeStrong(&self->_pullDownSearchViewController, a3);
    v7 = v8;
    if (v8)
    {
      [(SBRootFolderController *)self addChildViewController:v8];
      v7 = v8;
    }

    pullDownSearchViewController = [(UIViewController *)v7 didMoveToParentViewController:self];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](pullDownSearchViewController, v5);
}

- (SBHRootFolderCustomViewPresenting)trailingCustomViewController
{
  v2 = [(SBRootFolderController *)self trailingCustomViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)customViewControllerForPageIndex:(int64_t)a3
{
  v5 = [(SBRootFolderController *)self rootFolderView];
  v6 = [v5 typeForPage:a3];
  if (v6 == 2)
  {
    v7 = [v5 trailingCustomPageIndexForPageIndex:a3];
    v8 = [(SBRootFolderController *)self trailingCustomViewControllers];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [v5 leadingCustomPageIndexForPageIndex:a3];
    v8 = [(SBRootFolderController *)self leadingCustomViewControllers];
LABEL_5:
    v9 = v8;
    if (v7 >= [v8 count])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v9 objectAtIndex:v7];
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (double)spotlightFirstIconRowOffset
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  [v2 _spotlightFirstIconRowOffset];
  v4 = v3;

  return v4;
}

- (void)setIdleText:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  [v5 setIdleText:v4];
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  if ([(SBFolderController *)&v9 isDisplayingIcon:v4])
  {
    goto LABEL_2;
  }

  v6 = [(SBRootFolderController *)self dockListView];
  if (![v6 containsIcon:v4])
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [(SBRootFolderController *)self isDockVisible];

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_2:
  v5 = 1;
LABEL_8:

  return v5;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [(SBRootFolderController *)self dockListView];
  v10 = [v9 iconLocation];
  if (v10 && [v7 isEqualToString:v10] && !-[SBRootFolderController isDockExternal](self, "isDockExternal"))
  {
    v13 = [v8 dock];
    v12 = [v13 directlyContainsIcon:v6];
LABEL_11:

    goto LABEL_12;
  }

  v11 = [(SBFolderController *)self iconListViewIndexForPageIndex:[(SBFolderController *)self currentPageIndex]];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SBFolderController *)self iconListViewAtIndex:v11];
    v14 = [v13 model];
    v15 = [v13 iconLocation];
    if ([v7 isEqualToString:v15])
    {
      v12 = [v14 directlyContainsIcon:v6];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBRootFolderController *)self dockListView];
  v9 = [v8 iconLocation];
  if (v9 && [v7 isEqualToString:v9] && !-[SBRootFolderController isDockExternal](self, "isDockExternal"))
  {
    v13 = [v8 isDisplayingIconView:v6];
  }

  else
  {
    v10 = [objc_opt_class() iconLocation];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v12 = [(SBFolderController *)self currentIconListView];
      v13 = [v12 isDisplayingIconView:v6];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBRootFolderController *)self dockListView];
  v11 = [v10 iconLocation];
  if (!v11 || ![v9 isEqualToString:v11] || -[SBRootFolderController isDockExternal](self, "isDockExternal") || (a5 & 8) != 0 && !-[SBRootFolderController isDockVisible](self, "isDockVisible") || (objc_msgSend(v10, "displayedIconViewForIcon:", v8), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14.receiver = self;
    v14.super_class = SBRootFolderController;
    v12 = [(SBFolderController *)&v14 iconViewForIcon:v8 location:v9 options:a5];
  }

  return v12;
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBRootFolderController *)self dockListView];
  v9 = [v8 iconLocation];
  if (!v9 || ![v7 isEqualToString:v9] || -[SBRootFolderController isDockExternal](self, "isDockExternal") || (objc_msgSend(v8, "displayedIconViewForIcon:", v6), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12.receiver = self;
    v12.super_class = SBRootFolderController;
    v10 = [(SBFolderController *)&v12 iconViewForIcon:v6 location:v7];
  }

  return v10;
}

- (id)beginModifyingDockOffscreenFractionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  v6 = [v5 beginModifyingDockOffscreenFractionForReason:v4];

  return v6;
}

- (unint64_t)dockEdge
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 dockEdge];

  return v3;
}

- (void)setDockEdge:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  [v4 setDockEdge:a3];
}

- (BOOL)_listIndexIsVisible:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  v5 = 1;
  if (![(SBFolderController *)&v12 _listIndexIsVisible:?]&& a3 != 10000)
  {
    v6 = [(SBRootFolderController *)self customViewControllerForPageIndex:[(SBFolderController *)self pageIndexForIconListModelIndex:a3]];
    v5 = 0;
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 iconListViewQueryable];
      v8 = [MEMORY[0x1E696AC88] sb_indexPathWithListIndex:a3];
      v9 = [(SBFolderController *)self folder];
      v10 = [v7 iconListViewForListAtIndexPath:v8 inFolder:v9];

      if (v10)
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

- (id)_addWidgetSheetConfigurationManager
{
  v3 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 addWidgetSheetConfigurationManagerForRootFolderController:self];
    [v4 setWidgetDragHandlerDelegate:self];
    [v4 setAddWidgetSheetLocation:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_addWidgetSheetStyle
{
  v3 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 addWidgetSheetStyleForRootFolderController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)rootFolderViewWantsIconTintViewControllerPresented:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderControllerWantsIconTintViewControllerPresented:self];
  }
}

- (void)rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:self];
  }
}

- (void)presentWidgetEditingViewControllerFromViewController:(id)a3
{
  v7 = a3;
  v4 = [SBHMutableIconGridSizeClassSet alloc];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", @"SBHIconGridSizeClassNewsLargeTall", 0}];
  v6 = [(SBHMutableIconGridSizeClassSet *)v4 initWithGridSizeClasses:v5];

  if ([(SBRootFolderController *)self _addWidgetSheetStyle]== 1)
  {
    [(SBHMutableIconGridSizeClassSet *)v6 addGridSizeClass:@"SBHIconGridSizeClassExtraLarge"];
  }

  [(SBRootFolderController *)self presentWidgetEditingViewControllerFromViewController:v7 withAllowedSizeClasses:v6 allowingNonStackableItems:1];
}

- (void)updatePresentedWidgetEditingViewController
{
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v5 addWidgetSheetConfigurationManagerForRootFolderController:self];
    v4 = [(SBRootFolderController *)self addSheetViewController];
    [v3 updatePresentedWidgetEditingViewController:v4];
  }
}

- (id)applicationWidgetCollectionsForEditingViewController:(id)a3 withAllowedSizeClasses:(id *)a4 allowingNonStackableItems:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
  v10 = [v9 applicationWidgetCollectionsForEditingViewController:v8 withAllowedSizeClasses:a4 allowingNonStackableItems:v5];

  return v10;
}

- (void)presentWidgetEditingViewControllerFromViewController:(id)a3 withAllowedSizeClasses:(id)a4 allowingNonStackableItems:(BOOL)a5
{
  v5 = a5;
  v62 = *MEMORY[0x1E69E9840];
  v59 = a4;
  v8 = a4;
  v9 = a3;
  v10 = [(SBRootFolderController *)self applicationWidgetCollectionsForEditingViewController:v9 withAllowedSizeClasses:&v59 allowingNonStackableItems:v5];
  v11 = v59;

  v12 = [(SBFolderController *)self listLayoutProvider];
  [(SBFolderController *)self gridSizeClassDomain];
  v51 = v53 = v11;
  v13 = [v11 chsWidgetFamilyMaskInDomain:?];
  v14 = v5;
  v15 = [(SBFolderController *)self iconViewProvider];
  v16 = [(SBFolderController *)self folderDelegate];
  v17 = [(SBRootFolderController *)self _addWidgetSheetStyle];
  v52 = v12;
  if (v17 == 1)
  {
    v18 = [(SBHAddWidgetSheetViewControllerBase *)[SBHPadAddSheetViewController alloc] initWithListLayoutProvider:v12 iconViewProvider:v15 allowedWidgets:v13 addWidgetSheetStyle:v14, 1];
  }

  else
  {
    v18 = [(SBHAddWidgetSheetViewControllerBase *)[SBHAddWidgetSheetViewController alloc] initWithListLayoutProvider:v12 iconViewProvider:v15 allowedWidgets:v13 addWidgetSheetStyle:v14, v17];
    if (objc_opt_respondsToSelector())
    {
      [v16 rootFolderController:self prepareAddSheetViewController:v18];
    }
  }

  v19 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
  -[SBHPadAddSheetViewController setAllowsFakeWidgets:](v18, "setAllowsFakeWidgets:", [v19 allowsFakeWidgets]);
  [(SBHPadAddSheetViewController *)v18 setPresenter:v9];
  v20 = [v9 presenterType];

  if (v20 == 2)
  {
    v21 = [(SBRootFolderController *)self _stackConfigurationGridSize];
    [v19 stackConfigurationSuggestedWidgetItems];
  }

  else
  {
    v21 = [(SBRootFolderController *)self _currentHomeScreenEditingGridSize];
    [v19 editingSuggestedWidgetItems];
  }
  v22 = ;
  [(SBHPadAddSheetViewController *)v18 setGalleryLayoutSize:v21];
  [(SBHPadAddSheetViewController *)v18 setSuggestedItems:v22 forGalleryLayoutSize:v21];
  -[SBHPadAddSheetViewController setAddWidgetSheetLocation:](v18, "setAddWidgetSheetLocation:", [v19 addWidgetSheetLocation]);
  [(SBRootFolderController *)self setAddSheetViewController:v18];
  v23 = SBLogWidgets();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v10;
    _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "Presenting add widget sheet with applicationWidgetCollections: %@", buf, 0xCu);
  }

  [(SBHPadAddSheetViewController *)v18 setApplicationWidgetCollections:v10];
  [(SBHAddWidgetSheetViewControllerBase *)v18 setDelegate:self];
  [(SBHPadAddSheetViewController *)v18 setModalPresentationStyle:2];
  v24 = [(SBRootFolderController *)self view];
  [v24 bounds];
  v26 = v25;
  v28 = v27;

  if (v17 == 1)
  {
    [(SBHPadAddSheetViewController *)v18 preferredInsetsForSheetPresentationInInterfaceOrientation:[(SBFolderController *)self orientation]];
    [(SBHPadAddSheetViewController *)v18 setPreferredContentSize:v26 - (v29 + v30), v28 - (v31 + v32)];
  }

  v33 = v16;
  v34 = [(SBHPadAddSheetViewController *)v18 sheetPresentationController];
  [v34 _setShouldDismissWhenTappedOutside:1];
  v54 = v10;
  v50 = v19;
  v35 = v15;
  if (v17 == 1)
  {
    [v34 setPrefersGrabberVisible:{-[SBRootFolderController _useGrabberForSheetPresentation](self, "_useGrabberForSheetPresentation")}];
    [(SBRootFolderController *)self _additionalMinimumOffsetForSheetPresentation];
    [v34 _setAdditionalMinimumTopInset:?];
    [v34 setPreferredCornerRadius:SBHAddWidgetSheetPreferredSheetCornerRadiusForStyle(1)];
    [v34 setPrefersEdgeAttachedInCompactHeight:1];
    [v34 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    v36 = [v34 traitOverrides];
    [v36 setHorizontalSizeClass:2];
  }

  else
  {
    v37 = [(SBFolderController *)self currentIconListView];
    [v34 setSourceView:v37];

    [v34 setPrefersGrabberVisible:{-[SBRootFolderController _useGrabberForSheetPresentation](self, "_useGrabberForSheetPresentation")}];
    [(SBRootFolderController *)self _additionalMinimumOffsetForSheetPresentation];
    [v34 _setAdditionalMinimumTopInset:?];
    [v34 setPreferredCornerRadius:SBHAddWidgetSheetPreferredSheetCornerRadiusForStyle(v17)];
  }

  v38 = [(SBRootFolderController *)self traitCollection];
  v39 = objc_opt_self();
  v40 = [v38 objectForTrait:v39];

  if (v40)
  {
    v41 = [(SBHPadAddSheetViewController *)v18 traitOverrides];
    v42 = objc_opt_self();
    [v41 setObject:v40 forTrait:v42];
  }

  if (v17 == 1)
  {
    v43 = [MEMORY[0x1E69DC938] currentDevice];
    v44 = [v43 userInterfaceIdiom];

    if ((v44 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v34 _setMarginInCompactHeight:8.0];
      [v34 _setMarginInRegularWidthRegularHeight:8.0];
    }

    [v34 _setWantsBottomAttached:1];
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __128__SBRootFolderController_presentWidgetEditingViewControllerFromViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke;
  v57[3] = &unk_1E8089338;
  v45 = v18;
  v58 = v45;
  [(SBRootFolderController *)self enumerateWidgetAddSheetObserversUsingBlock:v57];
  if (objc_opt_respondsToSelector())
  {
    [v33 rootFolderController:self willPresentAddSheetViewController:v45];
  }

  v46 = _os_activity_create(&dword_1BEB18000, "Add Widget Sheet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v46, &self->_widgetAddSheetActivityState);

  v47 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_ADD_SHEET_PRESENT", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __128__SBRootFolderController_presentWidgetEditingViewControllerFromViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke_115;
  v55[3] = &unk_1E8088F18;
  v55[4] = self;
  v56 = v45;
  v48 = v45;
  [(SBRootFolderController *)self presentViewController:v48 animated:1 completion:v55];
}

void __128__SBRootFolderController_presentWidgetEditingViewControllerFromViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke_115(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __128__SBRootFolderController_presentWidgetEditingViewControllerFromViewController_withAllowedSizeClasses_allowingNonStackableItems___block_invoke_2;
  v4[3] = &unk_1E8089338;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v1 enumerateWidgetAddSheetObserversUsingBlock:v4];
  v2 = SBLogWidgets();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_ADD_SHEET_PRESENT", " isAnimation=YES ", v3, 2u);
  }
}

- (BOOL)_internalDismissWidgetAddSheet:(BOOL)a3 clearAddSheetViewController:(BOOL)a4 notifyObservers:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = self->_addSheetViewController;
  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = [(SBRootFolderController *)self presentedViewController];

  if (v10 != v9)
  {
    if (v6)
    {
      [(SBRootFolderController *)self setAddSheetViewController:0];
    }

    goto LABEL_5;
  }

  if (v5)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __101__SBRootFolderController__internalDismissWidgetAddSheet_clearAddSheetViewController_notifyObservers___block_invoke;
    v19[3] = &unk_1E8089338;
    v20 = v9;
    [(SBRootFolderController *)self enumerateWidgetAddSheetObserversUsingBlock:v19];
  }

  v12 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_ADD_SHEET_DISMISS", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__SBRootFolderController__internalDismissWidgetAddSheet_clearAddSheetViewController_notifyObservers___block_invoke_116;
  v14[3] = &unk_1E8089360;
  v16 = v6;
  v14[4] = self;
  v17 = v5;
  v15 = v9;
  [(SBNestingViewController *)self dismissViewControllerAnimated:v7 completion:v14];

  v11 = 1;
LABEL_11:

  return v11;
}

void __101__SBRootFolderController__internalDismissWidgetAddSheet_clearAddSheetViewController_notifyObservers___block_invoke_116(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setAddSheetViewController:0];
  }

  if (*(a1 + 49) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __101__SBRootFolderController__internalDismissWidgetAddSheet_clearAddSheetViewController_notifyObservers___block_invoke_2;
    v5[3] = &unk_1E8089338;
    v2 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v2 enumerateWidgetAddSheetObserversUsingBlock:v5];
  }

  os_activity_scope_leave((*(a1 + 32) + 1432));
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_ADD_SHEET_DISMISS", " isAnimation=YES ", v4, 2u);
  }
}

- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SBRootFolderController *)self isTrailingCustomViewVisibleOrTransitionDestination])
  {
    [(SBFolderController *)self scrollUsingDecelerationAnimationToPageIndex:[(SBFolderController *)self lastIconPageIndex] withCompletionHandler:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBRootFolderController;
    [(SBFolderController *)&v5 scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:v4];
  }
}

- (double)_additionalMinimumOffsetForSheetPresentation
{
  v3 = [(SBFolderController *)self listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationRoot"];
  v5 = [(SBFolderController *)self orientation];
  [v4 layoutInsetsForOrientation:v5];
  v7 = v6;
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v4, v5, @"SBHIconGridSizeClassDefault");
  v9 = v7 + v8 * 0.5;
  v10 = [(SBRootFolderController *)self view];
  _UISheetMinimumTopInset();
  v12 = v11;

  return v9 - v12;
}

- (BOOL)_useGrabberForSheetPresentation
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
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

  v11 = objc_opt_class();
  v12 = v8;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v10)
  {
    v15 = [(SBRootFolderController *)self widgetIconForDescriptor:v10 sizeClass:a4];
  }

  else if (v14)
  {
    v16 = [v14 descriptorsForSizeClass:a4];
    v15 = [(SBRootFolderController *)self widgetIconForDescriptors:v16 sizeClass:a4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBFolderController *)self gridSizeClassDomain];
  v8 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptor:v6 inDomain:v7];

  v9 = [v7 iconGridSizeClassForCHSWidgetFamily:a4];
  [(SBIcon *)v8 setGridSizeClass:v9];

  return v8;
}

- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBFolderController *)self gridSizeClassDomain];
  v8 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:v6 inDomain:v7];

  v9 = [v7 iconGridSizeClassForCHSWidgetFamily:a4];
  [(SBIcon *)v8 setGridSizeClass:v9];

  return v8;
}

- (void)didBeginDraggingWidgetIcon:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([(SBRootFolderController *)self _addWidgetSheetStyle]== 1)
  {
    v4 = [(SBRootFolderController *)self addSheetViewController];
    v5 = [v4 sheetPresentationController];
    v6 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"AddWidgetSheetDodge" resolver:&__block_literal_global_2];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v5 setDetents:v7];

    [v5 setLargestUndimmedDetentIdentifier:@"AddWidgetSheetDodge"];
    v8 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__SBRootFolderController_didBeginDraggingWidgetIcon___block_invoke_2;
    v14[3] = &unk_1E8088C90;
    v9 = v4;
    v15 = v9;
    [v8 animateWithDuration:0 delay:v14 usingSpringWithDamping:&__block_literal_global_131 initialSpringVelocity:0.6 options:0.0 animations:1.0 completion:0.0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__SBRootFolderController_didBeginDraggingWidgetIcon___block_invoke_4;
    v12[3] = &unk_1E80893C8;
    v13 = v9;
    v10 = v9;
    v11 = _Block_copy(v12);
    v11[2](v11, @"SBRootFolderControllerKeepRootStaticAssertion");
    v11[2](v11, @"SBRootFolderControllerKeepStackStaticAssertion");
  }

  else
  {

    [(SBRootFolderController *)self _internalDismissWidgetAddSheet:1 clearAddSheetViewController:0 notifyObservers:0];
  }
}

void __53__SBRootFolderController_didBeginDraggingWidgetIcon___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

void __53__SBRootFolderController_didBeginDraggingWidgetIcon___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKey:v6];

  if (v4)
  {
    [v4 invalidate];
    v5 = [*(a1 + 32) userInfo];
    [v5 removeObjectForKey:v6];
  }
}

- (void)didEndDraggingWidgetIcon:(id)a3
{
  v4 = [(SBRootFolderController *)self _addWidgetSheetStyle];
  v5 = [(SBRootFolderController *)self addSheetViewController];
  if ([v5 _appearState] && v4 == 1)
  {
    v6 = dispatch_time(0, 600000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke;
    v7[3] = &unk_1E8088F18;
    v7[4] = self;
    v8 = v5;
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  }
}

void __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) addSheetViewController];
  v3 = [v2 sheetPresentationController];

  v4 = [MEMORY[0x1E69DCF58] largeDetent];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v3 setDetents:v5];

  [v3 setLargestUndimmedDetentIdentifier:0];
  v6 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke_2;
  v12[3] = &unk_1E8088C90;
  v13 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke_3;
  v9[3] = &unk_1E80893F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v6 animateWithDuration:0 delay:v12 usingSpringWithDamping:v9 initialSpringVelocity:0.6 options:0.0 animations:1.0 completion:0.0];
}

void __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

void __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 objectForKey:@"SBRootFolderControllerKeepRootStaticAssertion"];

    if (!v4)
    {
      v5 = [*(a1 + 40) keepIconImageViewControllersSnapshotsOfType:objc_msgSend(*(a1 + 40) inAllPagesExcluding:"snapshotTypeForIconImageViewControllersUnderWidgetAddSheet") forReason:{0, @"Add Sheet view controller after dragging end"}];
      if (v5)
      {
        v6 = [*(a1 + 32) userInfo];
        [v6 setObject:v5 forKey:@"SBRootFolderControllerKeepRootStaticAssertion"];
      }
    }

    v7 = [*(a1 + 40) stackConfigurationViewController];
    if (v7)
    {
      v12 = v7;
      v8 = [*(a1 + 32) userInfo];
      v9 = [v8 objectForKey:@"SBRootFolderControllerKeepStackStaticAssertion"];

      v7 = v12;
      if (!v9)
      {
        v10 = [v12 keepIconImageViewControllersStaticForReason:@"Add Sheet view controller after dragging end"];
        if (v10)
        {
          v11 = [*(a1 + 32) userInfo];
          [v11 setObject:v10 forKey:@"SBRootFolderControllerKeepStackStaticAssertion"];
        }

        v7 = v12;
      }
    }
  }
}

- (void)stackConfigurationViewControllerWillAppear:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
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

  v8 = [(SBRootFolderController *)self stackConfigurationViewController];

  if (v8 != v7)
  {
    [(SBRootFolderController *)self setStackConfigurationViewController:v7];
    v9 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [v9 fetchGalleryContentForStackConfigurationViewController:v7 addWidgetSheetViewController:self->_addSheetViewController];
  }

  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillAppear:v10];
}

- (void)stackConfigurationViewControllerDidAppear:(id)a3
{
  v6 = a3;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidAppear:?];
  v4 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:0 forReason:@"Stack Configuration"];
  if (v4)
  {
    v5 = [v6 userInfo];
    [v5 setObject:v4 forKey:@"SBRootFolderControllerKeepRootStaticAssertion"];
  }
}

- (void)stackConfigurationViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
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

  v8 = [(SBRootFolderController *)self stackConfigurationViewController];

  if (v8 == v7)
  {
    [(SBRootFolderController *)self setStackConfigurationViewController:0];
    v9 = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [v9 setStackConfigurationSuggestedWidgetItems:0];
  }

  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidDisappear:v10];
}

- (void)stackConfigurationInteraction:(id)a3 requestsPresentAddWidgetSheetFromPresenter:(id)a4
{
  v6 = a4;
  v7 = [a3 configuration];
  v9 = [v7 sizeClass];

  v8 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:v9];
  [(SBRootFolderController *)self presentWidgetEditingViewControllerFromViewController:v6 withAllowedSizeClasses:v8 allowingNonStackableItems:0];
}

- (id)stackConfigurationInteraction:(id)a3 draggedIconForIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 rootFolderController:self draggedIconForStackConfigurationInteractionForIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)stackConfigurationInteraction:(id)a3 isConsumingDropSession:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 rootFolderController:self noteDragItemWasConsumedExternallyForDropSession:v5];
  }

  v7 = [(SBFolderController *)self iconModel];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v5 items];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) sbh_appDragLocalContext];
        v14 = [v13 uniqueIdentifier];
        [v7 removeIconForIdentifier:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)stackConfigurationInteraction:(id)a3 noteDidRemoveSuggestedWidgetIcon:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 rootFolderController:self noteDidRemoveSuggestedWidgetIcon:v6];
  }
}

- (void)stackConfigurationInteractionWillAnimateWidgetInsertion:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderControllerWillAnimateWidgetInsertionForStackConfigurationInteraction:self];
  }
}

- (id)stackConfigurationInteraction:(id)a3 dragPreviewForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 rootFolderController:self dragPreviewForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForIconDragPreviewsForStackConfigurationInteraction:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 windowForStackConfigurationIconDragPreviewsForRootFolderController:self forWindowScene:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stackConfigurationInteraction:(id)a3 promoteSuggestedWidget:(id)a4 withinStack:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 rootFolderController:self promoteSuggestedWidget:v7 withinStack:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)stackConfigurationInteraction:(id)a3 allowsRemovalOfIconDataSource:(id)a4
{
  v5 = a4;
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 rootFolderController:self allowsRemovalOfIconDataSourceWithinStack:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SBRootFolderController_addWidgetSheetViewController_didSelectWidgetIconView___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [v7 icon];
  if ([v9 isWidgetIcon])
  {
    v10 = v9;
    v11 = [v6 presenter];
    v12 = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 rootFolderController:self handleInsertionForWidgetIcon:v10 withReferenceIconView:v7 fromPresenter:v11 dismissViewControllerHandler:v8];
    }

    else
    {
      v8[2](v8);
    }
  }

  else
  {
    v8[2](v8);
  }
}

- (void)addWidgetSheetViewControllerWillAppear:(id)a3
{
  v5 = a3;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillAppear:?];
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderController:self willPresentWidgetEditingViewController:v5];
  }
}

- (void)addWidgetSheetViewControllerDidAppear:(id)a3
{
  v11 = a3;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidAppear:?];
  v4 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:[(SBRootFolderController *)self snapshotTypeForIconImageViewControllersUnderWidgetAddSheet] inAllPagesExcluding:0 forReason:@"Add Widget Sheet"];
  if (v4)
  {
    v5 = [v11 userInfo];
    [v5 setObject:v4 forKey:@"SBRootFolderControllerKeepRootStaticAssertion"];
  }

  v6 = [(SBRootFolderController *)self stackConfigurationViewController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 keepIconImageViewControllersStaticForReason:@"Add Widget Sheet"];
    if (v8)
    {
      v9 = [v11 userInfo];
      [v9 setObject:v8 forKey:@"SBRootFolderControllerKeepStackStaticAssertion"];
    }
  }

  v10 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 rootFolderController:self didPresentWidgetEditingViewController:v11];
  }
}

- (void)addWidgetSheetViewControllerWillDisappear:(id)a3
{
  v5 = a3;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillDisappear:?];
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderController:self willDismissWidgetEditingViewController:v5];
  }
}

- (void)addWidgetSheetViewControllerDidDisappear:(id)a3
{
  v5 = a3;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidDisappear:?];
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderController:self didDismissWidgetEditingViewController:v5];
  }
}

- (void)_handleWidgetSheetViewControllerWillAppear:(id)a3
{
  v4 = a3;
  v5 = [v4 presenter];
  [v5 setSuppressesEditingStateForListView:1];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:v4 visible:1];

  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__SBRootFolderController__handleWidgetSheetViewControllerWillAppear___block_invoke;
  v8[3] = &unk_1E8088C90;
  v9 = v5;
  v7 = v5;
  [v6 animateWithDuration:v8 animations:0 completion:0.3];
}

- (void)_handleWidgetSheetViewControllerWillDisappear:(id)a3
{
  v4 = a3;
  v5 = [v4 presenter];
  [v5 setSuppressesEditingStateForListView:0];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:v4 visible:0];
  v6 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__SBRootFolderController__handleWidgetSheetViewControllerWillDisappear___block_invoke;
  v12[3] = &unk_1E8088C90;
  v13 = v5;
  v7 = v5;
  [v6 animateWithDuration:v12 animations:0 completion:0.3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBRootFolderController__handleWidgetSheetViewControllerWillDisappear___block_invoke_2;
  v10[3] = &unk_1E80893C8;
  v11 = v4;
  v8 = v4;
  v9 = _Block_copy(v10);
  v9[2](v9, @"SBRootFolderControllerKeepRootStaticAssertion");
  v9[2](v9, @"SBRootFolderControllerKeepStackStaticAssertion");
}

void __72__SBRootFolderController__handleWidgetSheetViewControllerWillDisappear___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKey:v6];

  if (v4)
  {
    [v4 invalidate];
    v5 = [*(a1 + 32) userInfo];
    [v5 removeObjectForKey:v6];
  }
}

- (void)_handleWidgetSheetViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  v5 = [v4 presenter];
  [v5 updateExtraButtonVisibilityAnimated:1];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:v4 visible:0];
}

- (void)_updateStatusBarHiddenForWidgetSheetViewController:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = objc_opt_respondsToSelector();
  v7 = v9;
  if (v6)
  {
    v6 = [v9 nonEditingStatusBarHidingReason];
    v7 = v9;
    if (v6)
    {
      v8 = v6;
      if (v4)
      {
        [(SBFolderController *)self _hideStatusBarForReason:v6 animated:1];
        [(SBFolderController *)self _hideFakeStatusBarForReason:v8 animated:1];
      }

      else
      {
        [(SBFolderController *)self _unhideStatusBarForReason:v6];
        [(SBFolderController *)self _unhideFakeStatusBarForReason:v8 animated:1];
      }

      v7 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)canShowWidgetIntroduction
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(SBFolderController *)self currentPageIndex];
  v4 = [(SBFolderController *)self firstIconPageIndex];
  v5 = [(SBRootFolderController *)self isDisplayingWidgetIntroductionOnPage:v3];
  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = v3 == v4;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Root folder can show widget discoverability= %ld, is showing = %ld", &v8, 0x16u);
  }

  return v3 == v4 && !v5;
}

- (BOOL)iconListViewsContainWidget
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SBFolderController *)self iconListViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) containsWidget])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)iconListViewContainsWidget:(unint64_t)a3
{
  v3 = [(SBFolderController *)self iconListViewAtIndex:a3];
  v4 = [v3 containsWidget];

  return v4;
}

- (BOOL)isDisplayingWidgetIntroductionOnPage:(int64_t)a3
{
  v4 = [(SBFolderController *)self iconListViewIndexForPageIndex:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(SBFolderController *)self iconListViewAtIndex:v4];
  v7 = [v6 isDisplayingWidgetIntroduction];

  return v7;
}

- (void)updatePronouncedContainerViewVisibilityIfPossible:(BOOL)a3 vertical:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(SBFolderController *)self currentPageIndex];
  v8 = [(SBFolderController *)self iconListViewIndexForPageIndex:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [(SBRootFolderController *)self iconListViewContainsWidget:v8];
    if (!v5)
    {
LABEL_8:
      v11 = [(SBFolderController *)self firstIconPageIndex];
      v10 = [(SBFolderController *)self iconListViewAtIndex:[(SBFolderController *)self iconListViewIndexForPageIndex:v11]];
      v12 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218496;
        v14 = v5;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Should add pronounced container: toVisible(%ld), currentPageIndex(%ld), firstIconPageIndex(%ld)", &v13, 0x20u);
      }

      if (v7 == v11 && v5)
      {
        [v10 layoutIconsNow];
        [v10 addPronouncedContainerViewWithDelegate:self vertical:v4];
      }

      else
      {
        [v10 removePronouncedContainerView];
      }

      goto LABEL_14;
    }
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v10 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "No need to update pronounced container", &v13, 2u);
  }

LABEL_14:
}

- (void)acceptWidgetIntroduction
{
  [(SBRootFolderController *)self updatePronouncedContainerViewVisibilityIfPossible:0 vertical:0];
  v3 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 rootFolderControllerDidAcceptWidgetIntroduction:self];
  }
}

- (void)rejectWidgetIntroduction
{
  v3 = [(SBFolderController *)self folderDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 rootFolderControllerDidSetPrototypeSettingEditAsUndo:self])
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 rootFolderControllerDidUndoWidgetIntroduction:self];
    }
  }

  else
  {
    [(SBRootFolderController *)self updatePronouncedContainerViewVisibilityIfPossible:0 vertical:0];
    [v3 folderControllerShouldBeginEditing:self withHaptic:0];
    if (objc_opt_respondsToSelector())
    {
      [v3 rootFolderControllerDidEditWidgetIntroduction:self];
    }
  }
}

- (id)viewControllerForPageState:(int64_t)a3
{
  if ((a3 | 2) == 3)
  {
    v4 = [(SBRootFolderController *)self searchPresentableViewController];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(SBRootFolderController *)self pullDownSearchViewController];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)viewControllerForTransitioningFromPageState:(int64_t)a3 toPageState:(int64_t)a4
{
  if ((a4 - 1) < 4)
  {
    goto LABEL_2;
  }

  if (!a4)
  {
LABEL_3:
    v6 = [(SBRootFolderController *)self viewControllerForPageState:a3, v4];

    return v6;
  }

  if (a4 == -1)
  {
LABEL_2:
    a3 = a4;
    goto LABEL_3;
  }

  v6 = 0;

  return v6;
}

- (void)addPageStateObserver:(id)a3
{
  v4 = a3;
  pageStateObservers = self->_pageStateObservers;
  v8 = v4;
  if (!pageStateObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_pageStateObservers;
    self->_pageStateObservers = v6;

    v4 = v8;
    pageStateObservers = self->_pageStateObservers;
  }

  [(NSHashTable *)pageStateObservers addObject:v4];
}

- (void)enumeratePageStateObserversUsingBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_pageStateObservers allObjects];
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

- (id)addWidgetAddSheetObserver:(id)a3
{
  v4 = a3;
  if (!self->_widgetAddSheetObservers)
  {
    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    widgetAddSheetObservers = self->_widgetAddSheetObservers;
    self->_widgetAddSheetObservers = v5;
  }

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = self->_widgetAddSheetObservers;
  v9 = [v4 copy];
  v10 = _Block_copy(v9);
  [(NSMapTable *)v8 setObject:v10 forKey:v7];

  return v7;
}

- (void)enumerateWidgetAddSheetObserversUsingBlock:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_widgetAddSheetObservers objectEnumerator];
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

- (BOOL)isPresentingIconLocation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() iconLocation];
  v6 = [v4 isEqualToString:v5];

  if (v6 & 1) != 0 || -[SBFolderController hasDock](self, "hasDock") && !-[SBRootFolderController isDockExternal](self, "isDockExternal") && (-[SBRootFolderController dockListView](self, "dockListView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 iconLocation], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v4), v9, v8, (v10))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(SBFolderController *)self iconListViews];
    v7 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) iconLocation];
          v15 = [v4 isEqualToString:v14];

          if (v15)
          {
            LOBYTE(v7) = 1;
            goto LABEL_16;
          }
        }

        v7 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return v7;
}

- (BOOL)allowsAutoscrollToLeadingCustomView
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 allowsAutoscrollToLeadingCustomView];

  return v3;
}

- (void)setAllowsAutoscrollToLeadingCustomView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBRootFolderController *)self rootFolderView];
  [v4 setAllowsAutoscrollToLeadingCustomView:v3];
}

- (UIView)searchableLeadingCustomWrapperView
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 leadingCustomViewWrapperView];

  return v3;
}

- (UIView)searchBackdropView
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 searchBackdropView];

  return v3;
}

- (SBFParallaxSettings)parallaxSettings
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 parallaxSettings];

  return v3;
}

- (void)setParallaxDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBRootFolderController *)self rootFolderView];
  [v7 _setParallaxDisabled:v4 forReason:v6];
}

- (int64_t)leadingCustomViewPageIndex
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 leadingCustomViewPageIndex];

  return v3;
}

- (int64_t)trailingCustomViewPageIndex
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 trailingCustomViewPageIndex];

  return v3;
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  v5 = [v4 pageIndexForLeadingCustomPageIndex:a3];

  return v5;
}

- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  v5 = [v4 leadingCustomPageIndexForPageIndex:a3];

  return v5;
}

- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  v5 = [v4 pageIndexForTrailingCustomPageIndex:a3];

  return v5;
}

- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  v5 = [v4 trailingCustomPageIndexForPageIndex:a3];

  return v5;
}

- (unint64_t)typeForPage:(int64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  v5 = [v4 typeForPage:a3];

  return v5;
}

- (BOOL)isPageManagementUIVisible
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isPageManagementUIVisible];

  return v3;
}

- (BOOL)isPageManagementUITransitioningOutOfVisible
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isPageManagementUITransitioningOutOfVisible];

  return v3;
}

- (void)enterPageManagementUIWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  [v5 enterPageManagementUIWithCompletionHandler:v4];
}

- (void)exitPageManagementUIWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  [v5 exitPageManagementUIWithCompletionHandler:v4];
}

- (void)setOccludedByOverlay:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBRootFolderController *)self rootFolderView];
  [v4 setOccludedByOverlay:v3];
}

- (BOOL)isOccludedByOverlay
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isOccludedByOverlay];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = SBRootFolderController;
  v7 = a4;
  [(SBFolderController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [v7 containerView];
  v9 = [v8 _window];

  v10 = [v9 _toWindowOrientation];
  v11 = [v9 _fromWindowOrientation];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SBRootFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E8089418;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__SBRootFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_1E8089440;
  v12[4] = self;
  *&v12[5] = width;
  *&v12[6] = height;
  [v7 animateAlongsideTransition:v13 completion:v12];

  if ((v10 - 1) < 2 != (v11 - 1) < 2)
  {
    [(SBRootFolderController *)self _refreshGalleryContentForHomeScreenEditingIfNecessary];
  }
}

uint64_t __77__SBRootFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEditing])
  {
    v2 = [*(a1 + 32) addSheetViewController];
    v3 = [v2 presenter];
    v4 = v3;
    if (v3 && [v3 presenterType] != 2)
    {
      [v2 setGalleryLayoutSize:{objc_msgSend(*(a1 + 32), "_currentHomeScreenEditingGridSize")}];
    }

    v5 = [v2 sheetPresentationController];
    [v5 setPrefersGrabberVisible:{objc_msgSend(*(a1 + 32), "_useGrabberForSheetPresentation")}];
    [*(a1 + 32) _additionalMinimumOffsetForSheetPresentation];
    [v5 _setAdditionalMinimumTopInset:?];
  }

  v6 = *(a1 + 32);

  return [v6 updateExtraButtonVisibilityAnimated:1];
}

void __77__SBRootFolderController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchGesture];
  [v2 updateForRotation];

  v3 = [*(a1 + 32) folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 rootFolderController:*(a1 + 32) viewDidTransitionToSize:{*(a1 + 40), *(a1 + 48)}];
  }
}

- (void)folderViewWillUpdatePageDuringScrolling:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  v4 = a3;
  [(SBFolderController *)&v8 folderViewWillUpdatePageDuringScrolling:v4];
  v5 = [v4 scrollView];

  if ([(SBFolderController *)self userInterfaceLayoutDirection])
  {
    v6 = MEMORY[0x1E698E5C8];
  }

  else
  {
    v6 = MEMORY[0x1E698E5D0];
  }

  v7 = [(SBRootFolderController *)self updateStateTransitionsDuringScrollingScrollView:v5 pageBounceComparator:v6];
}

- (void)folderViewDidScroll:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 folderViewDidScroll:a3];
  v4 = [(SBRootFolderController *)self implicitScrollTransition];
  if (v4 && ![(SBFolderController *)self isScrolling]&& [(SBRootFolderController *)self isTransitioningHorizontally])
  {
    [v4 endTransitionSuccessfully:1];
    [(SBRootFolderController *)self setImplicitScrollTransition:0];
  }
}

- (void)folderViewDidEndScrolling:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 folderViewDidEndScrolling:v4];
  if ([(SBRootFolderController *)self isTransitioningHorizontally])
  {
    [v4 currentScrollOffset];
    [(SBRootFolderController *)self pageStateTransitionSnapshotForScrollOffset:?];
    v5 = [(SBRootFolderController *)self destinationPageState]== 0;
    v6 = [(SBRootFolderController *)self implicitScrollTransition];
    [v6 endTransitionSuccessfully:v5];
    [(SBRootFolderController *)self setImplicitScrollTransition:0];
  }

  v7 = [v4 isOnLeadingCustomPage];
  v8 = [(SBRootFolderController *)self searchGesture];
  [v8 setDisabled:v7 forReason:@"SBRootFolderShowingLeadingCustomViewReason"];

  if ([(SBFolderController *)self isEditing])
  {
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];
  }
}

- (void)folderView:(id)a3 willAnimateScrollToPageIndex:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBRootFolderController;
  [(SBFolderController *)&v6 folderView:a3 willAnimateScrollToPageIndex:a4];
  if (![(SBRootFolderController *)self isTransitioningHorizontally])
  {
    if ([(SBRootFolderController *)self isTransitioningPageState])
    {
      v5 = [(SBRootFolderController *)self currentTransitionHandle];
      [v5 endTransitionSuccessfully:0];
    }
  }
}

- (void)folderView:(id)a3 didBeginEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didBeginEditingTitle:v6];
  }
}

- (void)folderView:(id)a3 didEndEditingTitle:(id)a4
{
  v6 = a4;
  v5 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 folderController:self didEndEditingTitle:v6];
  }
}

- (void)folderView:(id)a3 currentPageIndexWillChange:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  [(SBFolderController *)&v7 folderView:a3 currentPageIndexWillChange:a4];
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    if (![(SBRootFolderController *)self isTransitioningHorizontally])
    {
      v5 = [(SBRootFolderController *)self isIconPageVisibleOrTransitionDestination];
      v6 = [(SBRootFolderController *)self currentTransitionHandle];
      [v6 endTransitionSuccessfully:v5];
    }
  }
}

- (void)folderView:(id)a3 currentPageIndexDidChange:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SBRootFolderController;
  [(SBFolderController *)&v13 folderView:v6 currentPageIndexDidChange:a4];
  v7 = v6;
  v8 = [v7 isOnLeadingCustomPage];
  v9 = [v7 scrollView];
  v10 = [v9 isScrollAnimating];

  v11 = [(SBRootFolderController *)self searchGesture];
  if ([(SBRootFolderController *)self isPullDownSearchVisibleOrTransitioning])
  {
    [v11 resetAnimated:v10];
  }

  if ((([(SBRootFolderController *)self isTransitioningPageState]| v10) & 1) == 0 && ![(SBFolderController *)self isScrolling]&& v8 != [(SBRootFolderController *)self isLeadingCustomViewVisible])
  {
    if (v8)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [(SBRootFolderController *)self performPageStateTransitionToState:v12 reason:@"page index changed" animated:0 completionHandler:0];
  }

  [v11 setDisabled:v8 forReason:@"SBRootFolderShowingLeadingCustomViewReason"];
}

- (void)rootFolderView:(id)a3 wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 rootFolderController:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{x, y}];
  }
}

- (double)distanceToTopOfSpotlightIconsForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 distanceToTopOfSpotlightIconsForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)maxExternalDockHeightForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 maxExternalDockHeightForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)externalDockHeightForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 externalDockHeightForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)preferredExternalDockVerticalMarginForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v4 preferredExternalDockVerticalMarginForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (void)rootFolderViewDidChangeSuppressesEditingStateForListViews:(id)a3
{
  v5 = a3;
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderController:self setSuppressesEditingStateForExternalDockListViews:{objc_msgSend(v5, "suppressesEditingStateForListViews")}];
  }
}

- (id)backgroundViewForDockForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 backgroundViewForDockForRootFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)backgroundViewForEditingDoneButtonForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 backgroundViewForEditingDoneButtonForRootFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)rootFolderView:(id)a3 didOverscrollOnFirstPageByAmount:(double)a4
{
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 rootFolderController:self didOverscrollOnFirstPageByAmount:a4];
  }
}

- (void)rootFolderView:(id)a3 didEndOverscrollOnFirstPageWithVelocity:(double)a4 translation:(double)a5
{
  v8 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 rootFolderController:self didEndOverscrollOnFirstPageWithVelocity:a4 translation:a5];
  }
}

- (void)rootFolderView:(id)a3 didOverscrollOnLastPageByAmount:(double)a4
{
  v6 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 rootFolderController:self didOverscrollOnLastPageByAmount:a4];
  }
}

- (void)rootFolderView:(id)a3 didEndOverscrollOnLastPageWithVelocity:(double)a4 translation:(double)a5
{
  v8 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 rootFolderController:self didEndOverscrollOnLastPageWithVelocity:a4 translation:a5];
  }
}

- (void)rootFolderViewWantsToEndEditing:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  [v4 folderControllerShouldEndEditing:self];
}

- (void)rootFolderViewWantsSearchPresented:(id)a3
{
  [(SBRootFolderController *)self setPresentationSource:8];
  [(SBRootFolderController *)self presentSpotlightAnimated:1 completionHandler:0];

  [(SBRootFolderController *)self setPresentationSource:0];
}

- (void)rootFolderView:(id)a3 willPresentPageManagementWithLayoutManager:(id)a4 animator:(id)a5 context:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x1E696AC90];
  v13 = a3;
  v14 = [v12 indexSetWithIndex:{objc_msgSend(v13, "currentPageIndex")}];
  v15 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v14 forReason:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];

  if (v15)
  {
    [v11 setObject:v15 forKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  }

  [(SBRootFolderController *)self setSuppressesExtraEditingButtons:0];
  v16 = [v13 folder];

  -[SBRootFolderController setHiddenListCountWhenPageManagementPresented:](self, "setHiddenListCountWhenPageManagementPresented:", [v16 hiddenListCount]);
  v17 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 rootFolderController:self willPresentPageManagementWithLayoutManager:v18 animator:v10 context:v11];
  }
}

- (void)rootFolderView:(id)a3 willDismissPageManagementUsingAnimator:(id)a4 context:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(a3, "currentPageIndex")}];
  v10 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v9 forReason:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];

  if (v10)
  {
    [v8 setObject:v10 forKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];
  }

  v11 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 rootFolderController:self willDismissPageManagementUsingAnimator:v12 context:v8];
  }
}

- (void)rootFolderView:(id)a3 didDismissPageManagementWithLayoutManager:(id)a4 context:(id)a5
{
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  [v10 invalidate];
  [v9 removeObjectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  v11 = [v9 objectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];

  [v11 invalidate];
  [v9 removeObjectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];
  v12 = [(SBRootFolderController *)self homeScreenDefaults];
  if (([v12 pagesHaveEverBeenHidden] & 1) == 0)
  {
    v13 = [v27 folder];
    v14 = [v13 hiddenListCount];
    if (v14 > [(SBRootFolderController *)self hiddenListCountWhenPageManagementPresented])
    {
      [v12 setPagesHaveEverBeenHidden:1];
      v25 = MEMORY[0x1E69DC650];
      v15 = SBHBundle();
      v16 = [v15 localizedStringForKey:@"PAGE_HIDING_ALERT_TITLE" value:&stru_1F3D472A8 table:?];
      v17 = SBHBundle();
      [v17 localizedStringForKey:@"PAGE_HIDING_ALERT_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v18 = v26 = v8;
      v19 = [v25 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = SBHBundle();
      v22 = [v21 localizedStringForKey:@"OK" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v23 = [v20 actionWithTitle:v22 style:0 handler:0];

      [v19 addAction:v23];
      [(SBRootFolderController *)self presentViewController:v19 animated:1 completion:0];

      v8 = v26;
    }
  }

  v24 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v24 rootFolderController:self didDismissPageManagementWithLayoutManager:v8 context:v9];
  }
}

- (id)iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:(id)a3
{
  v4 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconLocationForListsWithNonDefaultSizedIconsForRootFolderController:self];
  }

  else
  {
    [objc_opt_class() iconLocation];
  }
  v5 = ;

  return v5;
}

- (void)_presentPageManagement:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  [v5 enterPageManagementUIWithCompletionHandler:v4];
}

- (void)_dismissPageManagementIfPresented:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderController *)self rootFolderView];
  [v5 exitPageManagementUIWithCompletionHandler:v4];
}

- (void)performPageStateTransitionToState:(int64_t)a3 pageIndex:(int64_t)a4 reason:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v22 = a5;
  v12 = a7;
  if ([(SBRootFolderController *)self canTransitionPageStateToState:a3])
  {
    v13 = [(SBRootFolderController *)self pageState];
    if ([(SBRootFolderController *)self isAnySearchTransitioning]&& (!a3 || !v13))
    {
      v13 = [(SBRootFolderController *)self destinationPageState];
    }

    v14 = [(SBFolderController *)self currentPageIndex];
    if (a3 <= 1)
    {
      if (a3 == -1)
      {
        goto LABEL_23;
      }

      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_25;
        }

        v15 = [(SBRootFolderController *)self searchGesture];
        [v15 revealAnimated:v8];
        goto LABEL_22;
      }

      if (v13 == 1)
      {
        v15 = [(SBRootFolderController *)self searchGesture];
        [v15 resetAnimated:v8];
LABEL_22:

        goto LABEL_23;
      }

      v17 = [(SBFolderController *)self firstIconPageIndex];
      goto LABEL_35;
    }

    v16 = v14;
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_25;
        }

        if (a4 == 0x7FFFFFFFFFFFFFFFLL || [(SBRootFolderController *)self typeForPage:a4]!= 2)
        {
          if ([(SBRootFolderController *)self typeForPage:v16]== 2)
          {
            goto LABEL_23;
          }

          v17 = [(SBRootFolderController *)self trailingCustomViewPageIndex];
          goto LABEL_35;
        }

LABEL_36:
        v21 = self;
        v20 = a4;
        goto LABEL_37;
      }

      v18 = self;
      v19 = 3;
LABEL_29:
      [(SBRootFolderController *)v18 performDefaultPageStateTransitionToState:v19 reason:v22 animated:v8 completionHandler:v12];
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      v18 = self;
      v19 = 2;
      goto LABEL_29;
    }

    if (a4 != 0x7FFFFFFFFFFFFFFFLL && ![(SBRootFolderController *)self typeForPage:a4])
    {
      goto LABEL_36;
    }

    if ([(SBRootFolderController *)self typeForPage:v16])
    {
      v17 = [(SBRootFolderController *)self leadingCustomViewPageIndex];
LABEL_35:
      v20 = v17;
      v21 = self;
LABEL_37:
      [(SBFolderController *)v21 setCurrentPageIndex:v20 animated:v8 completion:v12];
      goto LABEL_25;
    }
  }

LABEL_23:
  if (v12)
  {
    v12[2](v12);
  }

LABEL_25:
}

- (void)performDefaultPageStateTransitionToState:(int64_t)a3 reason:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [(SBRootFolderController *)self beginPageStateTransitionToState:a3 reason:a4 animated:v6 interactive:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__SBRootFolderController_performDefaultPageStateTransitionToState_reason_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  v12 = v11;
  v23 = v12;
  v13 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__SBRootFolderController_performDefaultPageStateTransitionToState_reason_animated_completionHandler___block_invoke_2;
  v19[3] = &unk_1E8089468;
  v14 = v12;
  v20 = v14;
  v15 = v10;
  v21 = v15;
  v16 = _Block_copy(v19);
  if (v6)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v13 animations:0.3];
    [v17 addCompletion:v16];
    v18 = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v18 rootFolderController:self willUsePropertyAnimator:v17 toTransitionToState:a3];
    }

    [v17 startAnimation];
  }

  else
  {
    v13[2](v13);
    v16[2](v16, 0);
  }
}

uint64_t __101__SBRootFolderController_performDefaultPageStateTransitionToState_reason_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endTransitionSuccessfully:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v10 = a4;
  if ([(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]|| [(SBRootFolderController *)self isTransitioningPageState]|| [(SBFolderController *)self isScrolling])
  {
    v6 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }

    (*(v10 + 2))(v10);
  }

  else
  {
    v7 = [(SBRootFolderController *)self searchPresenter];
    v8 = v7;
    if (v7)
    {
      [v7 presentSearchAnimated:v4];
      if (v10)
      {
        (*(v10 + 2))();
      }
    }

    else
    {
      if ([(SBRootFolderController *)self isOnLeadingCustomPage])
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      [(SBRootFolderController *)self performPageStateTransitionToState:v9 reason:@"present spotlight" animated:v4 completionHandler:v10];
    }
  }

  v6 = v10;
LABEL_7:
}

- (void)dismissSpotlightAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v10 = a4;
  if ([(SBRootFolderController *)self isPullDownSearchVisibleOrTransitioningToVisible])
  {
    v6 = [(SBRootFolderController *)self searchPresenter];
    v7 = v6;
    if (v6)
    {
      [v6 dismissSearchAnimated:v4];
      if (v10)
      {
        v10[2]();
      }
    }

    else
    {
      if ([(SBRootFolderController *)self isOnLeadingCustomPage])
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      [(SBRootFolderController *)self performPageStateTransitionToState:v9 reason:@"dismiss spotlight" animated:v4 completionHandler:v10];
    }
  }

  else
  {
    v8 = v10;
    if (!v10)
    {
      goto LABEL_13;
    }

    (v10[2])(v10);
  }

  v8 = v10;
LABEL_13:
}

- (id)updateStateTransitionsDuringScrollingScrollView:(id)a3 pageBounceComparator:(void *)a4
{
  v6 = [(SBRootFolderController *)self rootFolderView];
  [v6 scrollOffsetForPageIndexCalculation];
  v8 = v7;
  v40 = 0.0;
  v38 = 0u;
  v39 = 0u;
  [(SBRootFolderController *)self pageStateTransitionSnapshotForScrollOffset:v7];
  v9 = [(SBRootFolderController *)self implicitScrollTransition];
  v10 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(SBRootFolderController *)self currentTransitionHandle];
  v14 = [(SBRootFolderController *)self isTransitioningPageState];
  if (*(&v38 + 1) == -1)
  {
    if (v14)
    {
      if (v12)
      {
        v35 = v38;
        v36 = v39;
        v37 = v40;
        v17 = ([v12 matchesTransitionSnapshot:&v35] & 0xFFFFFFFFFFFFFFFDLL) == 1;
      }

      else
      {
        v17 = 0;
      }

      [v9 endTransitionSuccessfully:v17];
      [(SBRootFolderController *)self setImplicitScrollTransition:0];
    }

    v20 = v38;
    if (v20 == [(SBRootFolderController *)self pageState])
    {
      goto LABEL_28;
    }

    v21 = [(SBRootFolderController *)self pageState];
    v22 = [(SBFolderController *)self currentPageIndex];
    v23 = [v6 _pageIndexForOffset:v8];
    LOBYTE(v34) = 1;
    v24 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:v21 pageIndex:v22 toPageState:v38 pageIndex:v23 reason:@"implicit scroll" animated:1 interactive:v34];
    v25 = v24;
    v26 = 1.0;
    goto LABEL_32;
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    v18 = v38 == [(SBRootFolderController *)self destinationPageState];
    v19 = v13;
    goto LABEL_24;
  }

  v35 = v38;
  v36 = v39;
  v37 = v40;
  v15 = [v12 matchesTransitionSnapshot:&v35];
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = v40;
LABEL_26:
        [v9 setTransitionProgress:v16];
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v19 = v9;
    v18 = 0;
LABEL_24:
    [v19 endTransitionSuccessfully:v18];
    goto LABEL_27;
  }

  if (v15 == 2)
  {
    v16 = 1.0 - v40;
    goto LABEL_26;
  }

  if (v15 == 3)
  {
    v19 = v9;
    v18 = 1;
    goto LABEL_24;
  }

LABEL_27:
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
LABEL_28:
    v25 = 0;
    goto LABEL_33;
  }

  v27 = [v6 _pageIndexForPageOffset:v39];
  if (v27 != [(SBFolderController *)self currentPageIndex])
  {
    [v6 updateIconListIndexAndVisibility];
  }

  v28 = [v6 _pageIndexForPageOffset:*(&v39 + 1)];
  LOBYTE(v34) = 1;
  v24 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:v38 pageIndex:v27 toPageState:*(&v38 + 1) pageIndex:v28 reason:@"implicit scroll" animated:1 interactive:v34];
  v25 = v24;
  v26 = v40;
LABEL_32:
  [v24 setTransitionProgress:v26];
  [(SBRootFolderController *)self setImplicitScrollTransition:v25];
LABEL_33:
  v29 = [(SBRootFolderController *)self leadingCustomViewController];

  if (v29)
  {
    v30 = [v6 leadingCustomViewPageScrollOffset];
    v32 = (a4)(v30, v8, v31);
  }

  else
  {
    v32 = 0;
  }

  [v6 setLeadingCustomViewBouncing:v32];

  return v25;
}

- (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = [(SBRootFolderController *)self rootFolderView];
  v8 = [v7 pageCount];
  v9 = [v7 extraPageCountDuringScrolling] + v8;
  v25 = [(SBFolderController *)self userInterfaceLayoutDirection];
  [v7 _pageWidthOrHeight];
  v11 = v10;
  [v7 _pageSpacing];
  v13 = v12;
  v24 = [(SBRootFolderController *)self pageState];
  v23 = [v7 _pageOffsetForOffset:0 behavior:0 fractionOfDistanceThroughPage:a4];
  v14 = [v7 userInterfaceLayoutDirectionAwareScrollingDirection];
  if (v9 >= 0x14)
  {
    v16 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
    v15 = v16;
  }

  else
  {
    v15 = 0;
    v16 = &v26;
  }

  v17 = [v7 leadingCustomPageCount];
  v18 = [v7 trailingCustomPageCount];
  v19 = v17 + v18;
  if (v17)
  {
    memset_pattern16(v16, &unk_1BEE85500, 8 * v17);
  }

  if (v9 != v19)
  {
    if (v9 - v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v9 - v19;
    }

    bzero(&v16[8 * v17], 8 * v20);
    v17 += v20;
  }

  if (v18)
  {
    memset_pattern16(&v16[8 * v17], &unk_1BEE85510, 8 * v18);
  }

  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v21 = objc_opt_class();
  if (v21)
  {
    [v21 pageStateTransitionSnapshotForScrollOffset:v16 pageWidth:v9 pageSpacing:v25 pages:v24 pageCount:v23 userInterfaceLayoutDirection:v14 currentPageState:a4 currentPageOffset:v11 scrollingDirection:v13];
  }

  else
  {
    retstr->var4 = 0.0;
    *&retstr->var0 = 0u;
    *&retstr->var2 = 0u;
  }

  free(v15);

  return result;
}

+ (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)a3 pageWidth:(double)a4 pageSpacing:(double)a5 pages:(double)a6 pageCount:(const int64_t *)a7 userInterfaceLayoutDirection:(unint64_t)a8 currentPageState:(int64_t)a9 currentPageOffset:(int64_t)a10 scrollingDirection:(unint64_t)a11
{
  v25 = 0.0;
  result = [SBFolderView _pageOffsetForOffset:0 behavior:a8 pageWidth:a9 pageSpacing:&v25 pageCount:a4 userInterfaceLayoutDirection:a5 fractionOfDistanceThroughPage:a6];
  v19 = &a7[result];
  v20 = *v19;
  *&retstr->var0 = xmmword_1BEE854F0;
  retstr->var2 = a11;
  retstr->var3 = result;
  retstr->var4 = 0.0;
  if (v25 <= 0.0)
  {
    v24 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(a10);
    result = SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v24, v20);
    if (result)
    {
      v20 = a10;
    }

    goto LABEL_8;
  }

  v21 = result;
  if (result >= a8 - 1)
  {
LABEL_8:
    retstr->var0 = v20;
    v22 = -1;
    goto LABEL_9;
  }

  result = +[SBRootFolderController pageStateTransitionPrefersUsingScrollingDirection];
  if (result)
  {
    if (a12 != 2)
    {
LABEL_5:
      v22 = v20;
      v23 = v19[1];
      retstr->var0 = v23;
      retstr->var1 = v20;
      retstr->var2 = a11 + 1;
      retstr->var4 = 1.0 - v25;
      v20 = v23;
      goto LABEL_9;
    }
  }

  else
  {
    result = SBRootFolderPageStateVerticalGroupMatches(v20, a10);
    if (!result)
    {
      goto LABEL_5;
    }
  }

  v22 = v19[1];
  retstr->var0 = v20;
  retstr->var1 = v22;
  retstr->var4 = v25;
  retstr->var3 = &v21->var0 + 1;
LABEL_9:
  if (v20 != v22)
  {
    return result;
  }

  if (v22 <= 1)
  {
    if ((v22 + 1) >= 3)
    {
      return result;
    }

LABEL_23:
    retstr->var1 = -1;
    retstr->var4 = 0.0;
    return result;
  }

  if (v22 == 4)
  {
    if (a8 < 2 || a7[a8 - 2] != 4)
    {
      goto LABEL_23;
    }
  }

  else if (v22 == 3 || v22 == 2 && (a8 < 2 || a7[1] != 2))
  {
    goto LABEL_23;
  }

  return result;
}

- (double)visibilityProgressTowardPageStateMatchingTest:(id)a3
{
  v4 = a3;
  v5 = v4[2](v4, [(SBRootFolderController *)self pageState]);
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    v6 = [(SBRootFolderController *)self destinationPageState];
    [(SBRootFolderController *)self pageTransitionProgress];
    v8 = v7;
    v9 = v4[2](v4, v6);
    if ((v5 & v9) != 0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v8;
    }

    v11 = 1.0 - v8;
    if (!v5)
    {
      v11 = 0.0;
    }

    v12 = (v9 & 1) == 0;
  }

  else
  {
    v12 = v5 == 0;
    v11 = 0.0;
    v10 = 1.0;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (BOOL)isIconPageVisibleOrTransitionDestination
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    v3 = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    v3 = [(SBRootFolderController *)self pageState];
  }

  return v3 == 0;
}

- (BOOL)isLeadingCustomViewOrLeadingCustomViewSearchVisible
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    return 0;
  }

  v4 = [(SBRootFolderController *)self pageState];

  return SBRootFolderPageStateIsOnLeadingCustomPage(v4);
}

- (void)setLeadingCustomViewPageHidden:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if ([(SBRootFolderController *)self isLeadingCustomViewPageHidden]!= a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(SBRootFolderController *)self leadingCustomViewControllers];
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
          if (v3)
          {
            [*(*(&v12 + 1) + 8 * v9) willMoveToParentViewController:0];
            [(SBRootFolderController *)self removeChildViewController:v10];
          }

          else
          {
            [(SBRootFolderController *)self addChildViewController:*(*(&v12 + 1) + 8 * v9)];
            [v10 didMoveToParentViewController:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v11 = [(SBRootFolderController *)self rootFolderView];
    [v11 setLeadingCustomViewPageHidden:v3];
  }
}

- (BOOL)isLeadingCustomViewPageHidden
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  v3 = [v2 isLeadingCustomViewPageHidden];

  return v3;
}

- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  LOBYTE(a3) = [v4 isLeadingCustomViewPageHiddenAtIndex:a3];

  return a3;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  if ([(SBRootFolderController *)self isLeadingCustomViewPageHiddenAtIndex:a4]!= a3)
  {
    v7 = [(SBRootFolderController *)self leadingCustomViewControllers];
    v9 = [v7 objectAtIndex:a4];

    if (v5)
    {
      [v9 willMoveToParentViewController:0];
      [(SBRootFolderController *)self removeChildViewController:v9];
    }

    else
    {
      [(SBRootFolderController *)self addChildViewController:v9];
      [v9 didMoveToParentViewController:self];
    }

    v8 = [(SBRootFolderController *)self rootFolderView];
    [v8 setLeadingCustomViewPageHidden:v5 atIndex:a4];
  }
}

- (BOOL)isLeadingCustomViewTransitioning
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    LOBYTE(v3) = [(SBRootFolderController *)self pageState]== 2 || [(SBRootFolderController *)self destinationPageState]== 2;
  }

  return v3;
}

- (BOOL)isTransitioningBetweenIconAndLeadingCustomView
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(v3) = !v4 && v5 == 2 || v4 == 2 && v5 == 0;
  }

  return v3;
}

- (BOOL)isTransitioningBetweenIconPageAndLeadingCustomPage
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(v3) = SBRootFolderPageStateIsOnIconPage(v4) && SBRootFolderPageStateIsOnLeadingCustomPage(v5) || SBRootFolderPageStateIsOnLeadingCustomPage(v4) && SBRootFolderPageStateIsOnIconPage(v5);
  }

  return v3;
}

- (BOOL)isTransitioningBetweenIconAndTrailingCustomView
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(v3) = !v4 && v5 == 4 || v4 == 4 && v5 == 0;
  }

  return v3;
}

- (BOOL)isTransitioningBetweenIconPageAndTrailingCustomPage
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    v4 = [(SBRootFolderController *)self pageState];
    v5 = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(v3) = SBRootFolderPageStateIsOnIconPage(v4) && SBRootFolderPageStateIsOnTrailingCustomPage(v5) || SBRootFolderPageStateIsOnTrailingCustomPage(v4) && SBRootFolderPageStateIsOnIconPage(v5);
  }

  return v3;
}

- (BOOL)isTrailingCustomViewTransitioning
{
  v3 = [(SBRootFolderController *)self isTransitioningPageState];
  if (v3)
  {
    LOBYTE(v3) = [(SBRootFolderController *)self pageState]== 4 || [(SBRootFolderController *)self destinationPageState]== 4;
  }

  return v3;
}

- (unint64_t)destinationPageOffset
{
  if ([(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle isValid])
  {
    v3 = [(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle destinationPageIndex];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(SBFolderController *)self _isValidPageIndex:v3])
  {
    return v3 - [(SBFolderController *)self minimumPageIndex];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)beginPageStateTransitionToState:(int64_t)a3 reason:(id)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v7 = a5;
  v10 = a4;
  LOBYTE(v13) = a6;
  v11 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:[(SBRootFolderController *)self pageState] pageIndex:[(SBFolderController *)self currentPageIndex] toPageState:a3 pageIndex:0x7FFFFFFFFFFFFFFFLL reason:v10 animated:v7 interactive:v13];

  return v11;
}

- (id)beginPageStateTransitionFromPageState:(int64_t)a3 pageIndex:(int64_t)a4 toPageState:(int64_t)a5 pageIndex:(int64_t)a6 reason:(id)a7 animated:(BOOL)a8 interactive:(BOOL)a9
{
  v9 = a8;
  v33 = *MEMORY[0x1E69E9840];
  v15 = a7;
  v16 = SBLogRootController();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SBStringForRootFolderPageState(a5);
    *buf = 138544130;
    v27 = v17;
    v28 = 2114;
    v29 = v15;
    v30 = 1024;
    *v31 = v9;
    *&v31[4] = 1024;
    *&v31[6] = a9;
    _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Begin page state transition to state %{public}@, reason: %{public}@, animated: %{BOOL}u, interactive: %{BOOL}u", buf, 0x22u);
  }

  if ([(SBRootFolderController *)self canTransitionPageStateToState:a5])
  {
    v18 = [[_SBRootFolderPageTransitionHandle alloc] initWithFolderController:self sourcePageState:a3 sourcePageIndex:a4 destinationPageState:a5 destinationPageIndex:a6 reason:v15];
    [(SBRootFolderController *)self setCurrentTransitionHandle:v18];
    [(SBRootFolderController *)self willBeginTransitionToState:a5 pageIndex:a6 animated:v9 interactive:a9];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __124__SBRootFolderController_beginPageStateTransitionFromPageState_pageIndex_toPageState_pageIndex_reason_animated_interactive___block_invoke;
    v23[3] = &unk_1E80894B0;
    v23[4] = self;
    v23[5] = a5;
    v24 = v9;
    v25 = a9;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v23];
  }

  else
  {
    v19 = SBLogRootController();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = SBStringForRootFolderPageState(a3);
      v22 = SBStringForRootFolderPageState(a5);
      *buf = 138413058;
      v27 = self;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      *v31 = v22;
      *&v31[8] = 2114;
      v32 = v15;
      _os_log_error_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_ERROR, "Invalid state transition for %@: %{public}@ -> %{public}@, reason: %{public}@", buf, 0x2Au);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)canTransitionPageStateToState:(int64_t)a3
{
  v5 = [(SBRootFolderController *)self pageState];
  if ([(SBRootFolderController *)self isAnySearchTransitioning]&& (!a3 || !v5))
  {
    v5 = [(SBRootFolderController *)self destinationPageState];
  }

  if (v5 > 4)
  {
    v7 = 0;
  }

  else if (((1 << v5) & 0x15) != 0)
  {
    v6 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(v5);
    if (SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v6, a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = SBRootFolderPageStateIsOnHorizontalScrollingPlane(a3);
    }
  }

  else
  {
    v8 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(v5);
    v9 = SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v8, a3);
    v10 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 0 || v9;
    if (a3 == 4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v10;
    }
  }

  if (v5 == a3)
  {
    if (a3 > 1)
    {
      if (a3 == 2 || a3 == 4)
      {
        v11 = [(SBRootFolderController *)self rootFolderView];
        v7 = [v11 leadingCustomPageCount] > 1;

        goto LABEL_26;
      }

      if (a3 != 3)
      {
        goto LABEL_26;
      }
    }

    else if ((a3 + 1) >= 3)
    {
      goto LABEL_26;
    }

    v7 = 0;
  }

LABEL_26:
  if (SBRootFolderPageStateIsOnLeadingCustomPage(a3))
  {
    v12 = [(SBRootFolderController *)self leadingCustomViewController];
    v13 = v12 != 0;

    v7 &= v13;
  }

  if (SBRootFolderPageStateIsSearch(a3))
  {
    v14 = [(SBRootFolderController *)self pullDownSearchViewController];
    if (v14)
    {
    }

    else
    {
      v15 = [(SBRootFolderController *)self searchPresenter];
      v16 = v15 != 0;

      v7 &= v16;
    }
  }

  if (SBRootFolderPageStateIsOnTrailingCustomPage(a3))
  {
    v17 = [(SBRootFolderController *)self trailingCustomViewController];
    v18 = v17 != 0;

    return v18 & v7;
  }

  return v7;
}

- (void)willBeginTransitionToState:(int64_t)a3 pageIndex:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v63 = [(SBRootFolderController *)self rootFolderView];
  v11 = [(SBRootFolderController *)self pageState];
  v60 = SBRootFolderPageStateIsOnLeadingCustomPage(v11);
  v61 = SBRootFolderPageStateIsOnLeadingCustomPage(a3);
  v62 = SBRootFolderPageStateIsOnTrailingCustomPage(v11);
  v59 = SBRootFolderPageStateIsOnTrailingCustomPage(a3);
  IsSearch = SBRootFolderPageStateIsSearch(v11);
  v13 = SBRootFolderPageStateIsSearch(a3);
  if ([(SBFolderController *)self _isValidPageIndex:a4])
  {
    v14 = [(SBRootFolderController *)self customViewControllerForPageIndex:a4];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 view];
      [v16 setNeedsLayout];
      [v16 layoutIfNeeded];
      if (objc_opt_respondsToSelector())
      {
        [v15 setContentVisibility:3];
      }
    }
  }

  [(SBRootFolderController *)self _anySearchVisibilityProgress];
  v18 = v17;
  [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
  v20 = v19;
  [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
  v22 = v21;
  [v63 setPullDownSearchVisibilityProgress:v18];
  [v63 setLeadingCustomViewVisibilityProgress:v20];
  [v63 setTrailingCustomViewVisibilityProgress:v22];
  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isTransitioning]&& ![(SBViewControllerTransitionContext *)self->_currentTransitionContext isCancelled])
  {
    v23 = [(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive];
    currentTransitionContext = self->_currentTransitionContext;
    if (v23)
    {
      [(SBViewControllerTransitionContext *)currentTransitionContext cancelInteractiveTransition];
    }

    else
    {
      [(SBViewControllerTransitionContext *)currentTransitionContext cancelTransition];
    }
  }

  v58 = a4;
  v25 = IsSearch ^ v13;
  v26 = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  v27 = [v26 rootFolderController:self transitionContextForTransitioningToState:a3 animated:v7 interactive:v6];

  if (v27)
  {
    [v63 setShiftsPullDownSearchForVisibility:0];
    goto LABEL_53;
  }

  v27 = [(SBRootFolderController *)self defaultTransitionForTransitioningFromPageState:v11 toPageState:a3 animated:v7 interactive:v6];
  [v63 setShiftsPullDownSearchForVisibility:!v60 && !v61];
  if (v25)
  {
    v28 = [(SBRootFolderController *)self searchPresentableViewController];

    if (!v28)
    {
      v29 = [v63 searchBackdropView];
      v30 = v29;
      if (a3 == 1 || v11 == 1)
      {
        if (v13)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2;
        }

        [v29 prepareForTransitionType:v31];
      }
    }
  }

  if (v60 || v61)
  {
    v32 = [(SBFolderController *)self currentPageIndex];
    v33 = v60 && [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomLeadingPageAtIndex:[(SBRootFolderController *)self leadingCustomPageIndexForPageIndex:v32]];
    v34 = [(SBRootFolderController *)self leadingCustomPageIndexForPageIndex:v58];
    if (v61)
    {
      v35 = [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomLeadingPageAtIndex:v34];
      v36 = !v33;
      v37 = !v35;
      if (v33 && !v37)
      {
        v38 = 3;
LABEL_35:
        v39 = [v63 leadingCustomBackdropView];
        [v39 prepareForTransitionType:v38];

        goto LABEL_36;
      }
    }

    else
    {
      v35 = 0;
      v36 = !v33;
      v37 = 1;
    }

    if (v36 || v35)
    {
      v38 = v33 | v37;
    }

    else
    {
      v38 = 2;
    }

    goto LABEL_35;
  }

LABEL_36:
  if (v62 || v59)
  {
    v41 = v62 && (v40 = [(SBRootFolderController *)self trailingCustomPageIndexForPageIndex:[(SBFolderController *)self currentPageIndex]], v40 != 0x7FFFFFFFFFFFFFFFLL) && [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomTrailingPageAtIndex:v40];
    if (v59 && (v42 = [(SBRootFolderController *)self trailingCustomPageIndexForPageIndex:v58], v42 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v43 = [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomTrailingPageAtIndex:v42];
      v44 = !v41;
      v45 = !v43;
      if (v41 && !v45)
      {
        v46 = 3;
LABEL_52:
        v47 = [v63 trailingCustomBackdropView];
        [v47 prepareForTransitionType:v46];

        goto LABEL_53;
      }
    }

    else
    {
      v43 = 0;
      v44 = !v41;
      v45 = 1;
    }

    if (v44 || v43)
    {
      v46 = v41 | v45;
    }

    else
    {
      v46 = 2;
    }

    goto LABEL_52;
  }

LABEL_53:
  [(SBViewControllerTransitionContext *)v27 setDelegate:self];
  v48 = MEMORY[0x1E696AEC0];
  v49 = SBStringForRootFolderPageState(v11);
  v50 = SBStringForRootFolderPageState(a3);
  v51 = [v48 stringWithFormat:@"PageStateTransition %@ -> %@", v49, v50];
  v52 = [(SBFolderController *)self cancelTouchesForAllCustomIconImageViewControllersForReason:v51];

  v53 = [(SBRootFolderController *)self currentTransitionHandle];
  [v53 setCustomIconImageViewControllerCancelTouchesAssertion:v52];

  v54 = objc_alloc_init(SBRootFolderControllerTransitionInfo);
  [(SBRootFolderControllerTransitionInfo *)v54 setSourcePageState:v11];
  [(SBRootFolderControllerTransitionInfo *)v54 setDestinationPageState:a3];
  [(SBViewControllerTransitionContext *)v27 setUserInfo:v54];
  v55 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v55 rootFolderController:self willUseTransitionContext:v27 toTransitionToState:a3];
  }

  if (v25)
  {
    [v63 setSearchHidden:0];
  }

  v56 = self->_currentTransitionContext;
  self->_currentTransitionContext = v27;
  v57 = v27;

  [(SBViewControllerTransitionContext *)v57 startTransition];
}

- (void)didContinueTransitionToState:(int64_t)a3 progress:(double)a4
{
  v7 = [(SBRootFolderController *)self rootFolderView];
  v8 = [(SBRootFolderController *)self pageState];
  [(SBRootFolderController *)self _anySearchVisibilityProgress];
  v10 = v9;
  [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
  v12 = v11;
  [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
  v14 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SBRootFolderController_didContinueTransitionToState_progress___block_invoke;
  aBlock[3] = &__block_descriptor_56_e33_v24__0q8__SBSearchBackdropView_16l;
  aBlock[4] = v8;
  aBlock[5] = a3;
  *&aBlock[6] = a4;
  v15 = _Block_copy(aBlock);
  v16 = [(SBRootFolderController *)self searchPresentableViewController];
  if (!v16)
  {
    v17 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v16 = [v7 searchBackdropView];
    v15[2](v15, 1, v16);
  }

LABEL_5:
  v19 = [v7 leadingCustomBackdropView];
  v15[2](v15, 2, v19);

  v20 = [v7 trailingCustomBackdropView];
  v15[2](v15, 4, v20);

  [v7 setPullDownSearchVisibilityProgress:v10];
  [v7 setLeadingCustomViewVisibilityProgress:v12];
  [v7 setTrailingCustomViewVisibilityProgress:v14];
  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive])
  {
    [(SBViewControllerTransitionContext *)self->_currentTransitionContext updateInteractiveTransition:a4];
  }
}

void __64__SBRootFolderController_didContinueTransitionToState_progress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == a2 || *(a1 + 40) == a2)
  {
    v6 = v5;
    [v5 setTransitionProgress:*(a1 + 48)];
    v5 = v6;
  }
}

- (void)willEndTransitionToState:(int64_t)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBRootFolderController *)self rootFolderView];
  v8 = [(SBRootFolderController *)self pageState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SBRootFolderController_willEndTransitionToState_successfully___block_invoke;
  aBlock[3] = &__block_descriptor_49_e33_v24__0q8__SBSearchBackdropView_16l;
  aBlock[4] = v8;
  aBlock[5] = a3;
  v20 = v4;
  v9 = _Block_copy(aBlock);
  v10 = [(SBRootFolderController *)self searchPresentableViewController];
  if (v10)
  {
    goto LABEL_4;
  }

  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 searchBackdropView];
    v9[2](v9, 1, v10);
LABEL_4:
  }

  v13 = [v7 leadingCustomBackdropView];
  v9[2](v9, 2, v13);

  v14 = [v7 trailingCustomBackdropView];
  v9[2](v9, 4, v14);

  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isTransitioning]&& ![(SBViewControllerTransitionContext *)self->_currentTransitionContext isCancelled])
  {
    v17 = [(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive];
    currentTransitionContext = self->_currentTransitionContext;
    if (v17)
    {
      if (v4)
      {
        [(SBViewControllerTransitionContext *)currentTransitionContext finishInteractiveTransition];
      }

      else
      {
        [(SBViewControllerTransitionContext *)currentTransitionContext cancelInteractiveTransition];
      }
    }

    else if (v4)
    {
      if (![(SBViewControllerTransitionContext *)currentTransitionContext isAnimated])
      {
        [(SBViewControllerTransitionContext *)self->_currentTransitionContext completeTransition:1];
      }
    }

    else
    {
      [(SBViewControllerTransitionContext *)currentTransitionContext cancelTransition];
    }
  }

  v15 = [(SBRootFolderController *)self currentTransitionHandle];
  v16 = [v15 customIconImageViewControllerCancelTouchesAssertion];
  [v16 invalidate];

  [v15 setCustomIconImageViewControllerCancelTouchesAssertion:0];
}

void __64__SBRootFolderController_willEndTransitionToState_successfully___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == a2 || *(a1 + 40) == a2)
  {
    v6 = 0.0;
    if (*(a1 + 48))
    {
      v6 = 1.0;
    }

    v7 = v5;
    [v5 setTransitionProgress:v6];
    [v7 completeIncrementalTransitionSuccessfully:*(a1 + 48)];
    [v7 completeTransitionSuccessfully:*(a1 + 48)];
    v5 = v7;
  }
}

- (void)didEndTransitionFromState:(int64_t)a3 pageIndex:(int64_t)a4 toState:(int64_t)a5 pageIndex:(int64_t)a6 successfully:(BOOL)a7
{
  v7 = a7;
  v25 = [(SBRootFolderController *)self rootFolderView];
  [(SBRootFolderController *)self _checkForImproperScrollOffsetForPageState];
  [v25 setNeedsLayout];
  if (a3 == 1 && a5 != 1 && v7)
  {
    v13 = [(SBRootFolderController *)self searchGesture];
    [v13 resetAnimated:0];
  }

  v14 = !v7;
  if (v7)
  {
    v15 = a5;
  }

  else
  {
    v15 = a3;
  }

  if (v7)
  {
    v16 = a6;
  }

  else
  {
    v16 = a4;
  }

  if (!v14)
  {
    a6 = a4;
  }

  [v25 setSearchHidden:!SBRootFolderPageStateIsSearch(v15)];
  [(SBRootFolderController *)self _anySearchVisibilityProgress];
  v18 = v17;
  [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
  v20 = v19;
  [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
  v22 = v21;
  [v25 setPullDownSearchVisibilityProgress:v18];
  [v25 setLeadingCustomViewVisibilityProgress:v20];
  [v25 setTrailingCustomViewVisibilityProgress:v22];
  if ([(SBFolderController *)self _isValidPageIndex:v16])
  {
    v23 = [(SBRootFolderController *)self customViewControllerForPageIndex:v16];
  }

  else
  {
    v23 = 0;
  }

  if ([(SBFolderController *)self _isValidPageIndex:a6])
  {
    v24 = [(SBRootFolderController *)self customViewControllerForPageIndex:a6];
  }

  else
  {
    v24 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v24 setContentVisibility:2];
  }

  if (objc_opt_respondsToSelector())
  {
    [v23 setContentVisibility:0];
  }
}

- (void)pageTransitionHandle:(id)a3 updateCurrentPageStateTransitionToProgress:(double)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBRootFolderController *)self currentTransitionHandle];

  v8 = SBLogRootController();
  v9 = v8;
  if (v7 == v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = a4;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Update page state transition to progress %f", buf, 0xCu);
    }

    v10 = [(SBRootFolderController *)self destinationPageState];
    [(SBRootFolderController *)self didContinueTransitionToState:v10 progress:a4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__SBRootFolderController_pageTransitionHandle_updateCurrentPageStateTransitionToProgress___block_invoke;
    v11[3] = &unk_1E8089518;
    v11[4] = self;
    v11[5] = v10;
    *&v11[6] = a4;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBRootFolderController pageTransitionHandle:v6 updateCurrentPageStateTransitionToProgress:v9];
    }
  }
}

- (void)pageTransitionHandle:(id)a3 endPageStateTransitionSuccessfully:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBRootFolderController *)self currentTransitionHandle];
  if (v7 == v6)
  {
    v9 = [(SBRootFolderController *)self destinationPageState];
    v10 = [(SBRootFolderController *)self pageState];
    v11 = SBLogRootController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = SBStringForRootFolderPageState(v9);
      *buf = 138543618;
      v18 = v12;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "End page state transition to state %{public}@ successfully: %{BOOL}u", buf, 0x12u);
    }

    [(SBRootFolderController *)self willEndTransitionToState:v9 successfully:v4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__SBRootFolderController_pageTransitionHandle_endPageStateTransitionSuccessfully___block_invoke;
    v15[3] = &unk_1E8089540;
    v15[4] = self;
    v15[5] = v9;
    v16 = v4;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v15];
    if (v4)
    {
      [(SBRootFolderController *)self setPageState:v9];
    }

    [v7 setValid:0];
    [(SBRootFolderController *)self setCurrentTransitionHandle:0];
    -[SBRootFolderController didEndTransitionFromState:pageIndex:toState:pageIndex:successfully:](self, "didEndTransitionFromState:pageIndex:toState:pageIndex:successfully:", v10, [v6 sourcePageIndex], v9, objc_msgSend(v6, "destinationPageIndex"), v4);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__SBRootFolderController_pageTransitionHandle_endPageStateTransitionSuccessfully___block_invoke_2;
    v13[3] = &unk_1E8089568;
    v13[4] = self;
    v13[5] = v10;
    v13[6] = v9;
    v14 = v4;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v13];
  }

  else
  {
    v8 = SBLogRootController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBRootFolderController pageTransitionHandle:v6 endPageStateTransitionSuccessfully:v8];
    }
  }
}

- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  if ([(SBRootFolderController *)self canTransitionPageStateToState:v5])
  {
    v7 = [(SBRootFolderController *)self beginPageStateTransitionToState:v5 reason:@"search gesture started" animated:1 interactive:1];
    [(SBRootFolderController *)self setSearchGestureTransition:v7];
  }

  v14 = [(SBFolderController *)self currentIconListView];
  [v6 locationInView:v14];
  v9 = v8;
  v11 = v10;

  v12 = [v14 iconAtPoint:0 index:{v9, v11}];
  v13 = [v14 displayedIconViewForIcon:v12];
  if (v12)
  {
    [(SBRootFolderController *)self _cancelTouchesForSearchGestureOnIconView:v13];
  }
}

- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4
{
  v6 = [(SBRootFolderController *)self searchGestureTransition];
  if (v6)
  {
    v9 = v6;
    v7 = [(SBRootFolderController *)self destinationPageState];
    v8 = 1.0 - a4;
    if (v7 == 1)
    {
      v8 = a4;
    }

    [v9 setTransitionProgress:v8];
    v6 = v9;
  }
}

- (void)searchGesture:(id)a3 completedShowing:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(SBRootFolderController *)self searchGestureTransition];
  if (v6)
  {
    [v6 endTransitionSuccessfully:{(-[SBRootFolderController destinationPageState](self, "destinationPageState") != 1) ^ v4}];
    [(SBRootFolderController *)self setSearchGestureTransition:0];
  }

  else
  {
    [v7 resetAnimated:0];
  }

  [(SBRootFolderController *)self _invalidateSearchGestureIconViewTouchCancellationAssertion];
}

- (void)searchGesture:(id)a3 resetAnimated:(BOOL)a4
{
  v4 = a4;
  if (![(SBRootFolderController *)self isTransitioningPageState])
  {
    if ([(SBRootFolderController *)self pageState]== 1 && [(SBRootFolderController *)self canTransitionPageStateToState:0])
    {
      v6 = [(SBRootFolderController *)self beginPageStateTransitionToState:0 reason:@"search gesture reset" animated:v4 interactive:1];
      [(SBRootFolderController *)self setSearchGestureTransition:v6];
    }

    if (![(SBRootFolderController *)self isLeadingCustomViewVisible])
    {
      [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
      if (v7 > 0.0)
      {
        v8 = [(SBFolderController *)self firstIconPageIndex];

        [(SBRootFolderController *)self setCurrentPageIndex:v8 animated:v4];
      }
    }
  }
}

- (void)_cancelTouchesForSearchGestureOnIconView:(id)a3
{
  v4 = a3;
  [(SBRootFolderController *)self _invalidateSearchGestureIconViewTouchCancellationAssertion];
  v7 = [v4 customIconImageViewController];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v7 cancelTouchesForCurrentEventInHostedContent];
    searchGestureIconViewTouchCancellationAssertion = self->_searchGestureIconViewTouchCancellationAssertion;
    self->_searchGestureIconViewTouchCancellationAssertion = v5;
  }
}

- (void)_invalidateSearchGestureIconViewTouchCancellationAssertion
{
  searchGestureIconViewTouchCancellationAssertion = self->_searchGestureIconViewTouchCancellationAssertion;
  if (searchGestureIconViewTouchCancellationAssertion)
  {
    [(BSInvalidatable *)searchGestureIconViewTouchCancellationAssertion invalidate];
    v4 = self->_searchGestureIconViewTouchCancellationAssertion;
    self->_searchGestureIconViewTouchCancellationAssertion = 0;
  }
}

- (void)transitionWillBegin:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v28 transitionWillBegin:v4];
  if (self->_currentTransitionContext == v4)
  {
    objc_opt_class();
    v6 = [(SBViewControllerTransitionContext *)v4 animator];
    v7 = SBFSafeCast();

    objc_opt_class();
    v8 = [(SBViewControllerTransitionContext *)v4 interactor];
    v9 = SBFSafeCast();

    v10 = [(SBFramewiseInteractiveTransitionAnimator *)v7 isPresenting];
    v11 = objc_opt_self();
    v12 = [(SBViewControllerTransitionContext *)v4 userInfo];
    v5 = SBFSafeCast();

    v13 = [v5 sourcePageState];
    v14 = [v5 destinationPageState];
    v15 = MEMORY[0x1E69DE778];
    if (!v10)
    {
      v15 = MEMORY[0x1E69DE768];
    }

    v16 = [(SBViewControllerTransitionContext *)v4 viewControllerForKey:*v15];
    currentTransitionAnimator = self->_currentTransitionAnimator;
    self->_currentTransitionAnimator = v7;
    v18 = v7;

    currentTransitionInteractor = self->_currentTransitionInteractor;
    self->_currentTransitionInteractor = v9;

    v20 = [(SBViewControllerTransitionContext *)v4 isAnimated];
    [v16 beginAppearanceTransition:v10 animated:v20];
    if (v14 == 1)
    {
      v21 = SBHIsSpotlightFloatingWindowEnabled();
    }

    else
    {
      v21 = 0;
    }

    v22 = [(SBRootFolderController *)self viewControllerForPageState:v13];
    v23 = v22;
    if (v22 && v22 != v16 && (v21 & 1) == 0)
    {
      [v22 beginAppearanceTransition:0 animated:v20];
    }

    v24 = [(SBRootFolderController *)self viewControllerForPageState:v14];
    v25 = v24;
    if (v24 && v24 != v16)
    {
      [v24 beginAppearanceTransition:1 animated:v20];
    }
  }

  else
  {
    v5 = SBLogSpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "transitionContext is the same so not doing anything", v27, 2u);
    }
  }

  v26 = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [v26 rootFolderController:self transitionWillBegin:v4];
}

- (void)transitionWillReverse:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderController;
  v4 = a3;
  [(SBNestingViewController *)&v6 transitionWillReverse:v4];
  v5 = [(SBRootFolderController *)self accessoryViewControllerDelegate:v6.receiver];
  [v5 rootFolderController:self transitionWillReverse:v4];
}

- (void)transitionWillFinish:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v26 transitionWillFinish:v4];
  if (self->_currentTransitionContext == v4)
  {
    v5 = [(SBViewControllerTransitionContext *)v4 userInfo];
    v6 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_31;
    }

    objc_opt_class();
    v9 = [(SBViewControllerTransitionContext *)v4 animator];
    v10 = SBFSafeCast();

    v11 = [v8 destinationPageState];
    v12 = [v8 sourcePageState];
    v13 = [(SBViewControllerTransitionContext *)v4 transitionWasCancelled];
    v14 = [v10 isPresenting];
    v15 = MEMORY[0x1E69DE778];
    if (!v14)
    {
      v15 = MEMORY[0x1E69DE768];
    }

    v16 = [(SBViewControllerTransitionContext *)v4 viewControllerForKey:*v15];
    v17 = [(SBRootFolderController *)self viewControllerForPageState:v12];
    v18 = [(SBRootFolderController *)self viewControllerForPageState:v11];
    if (v13)
    {
      [v16 cancelBeginAppearanceTransition];
      if (v17 && v17 != v16)
      {
        [v17 cancelBeginAppearanceTransition];
      }

      if (v18 && v18 != v16)
      {
        [v18 cancelBeginAppearanceTransition];
      }

LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    if (v11 == 2)
    {
      v19 = [(SBFolderController *)self folderDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v19 contentOverlayInsetsFromParentIfAvailableForFolderController:self];
      }

      else
      {
        v20 = *MEMORY[0x1E69DDCE0];
        v21 = *(MEMORY[0x1E69DDCE0] + 8);
        v22 = *(MEMORY[0x1E69DDCE0] + 16);
        v23 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      [(SBRootFolderController *)self _setContentOverlayInsets:v20, v21, v22, v23];
      [v16 _updateContentOverlayInsetsFromParentIfNecessary];

      [v16 endAppearanceTransition];
    }

    else
    {
      [v16 endAppearanceTransition];
      if (v11 == 1)
      {
        v24 = SBHIsSpotlightFloatingWindowEnabled();
        goto LABEL_23;
      }
    }

    v24 = 0;
LABEL_23:
    if (v17 && v17 != v16 && (v24 & 1) == 0)
    {
      [v17 endAppearanceTransition];
    }

    if (v18 && v18 != v16)
    {
      [v18 endAppearanceTransition];
    }

    goto LABEL_30;
  }

LABEL_32:
  v25 = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [v25 rootFolderController:self transitionWillFinish:v4];
}

- (void)transitionDidFinish:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v10 transitionDidFinish:v4];
  currentTransitionContext = self->_currentTransitionContext;
  if (currentTransitionContext == v4)
  {
    [(SBViewControllerTransitionContext *)currentTransitionContext setDelegate:0];
    [(SBFramewiseInteractiveTransitionAnimator *)self->_currentTransitionAnimator setDelegate:0];
    v6 = self->_currentTransitionContext;
    self->_currentTransitionContext = 0;

    currentTransitionAnimator = self->_currentTransitionAnimator;
    self->_currentTransitionAnimator = 0;

    currentTransitionInteractor = self->_currentTransitionInteractor;
    self->_currentTransitionInteractor = 0;
  }

  v9 = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [v9 rootFolderController:self transitionDidFinish:v4];
}

- (id)defaultTransitionForTransitioningFromPageState:(int64_t)a3 toPageState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = [(SBRootFolderController *)self viewControllerForTransitioningFromPageState:a3 toPageState:?];
  if (v10)
  {
    if (a4)
    {
      v11 = [(SBRootFolderController *)self animationControllerForPresentedController:v10 presentingController:0 sourceController:0];
      v12 = 0;
      if (v11 && v6 && v7)
      {
        v13 = [(SBRootFolderController *)self interactionControllerForPresentation:v11];
LABEL_12:
        v12 = v13;
      }
    }

    else
    {
      v11 = [(SBRootFolderController *)self animationControllerForDismissedController:v10];
      v12 = 0;
      if (v11 && v6 && v7)
      {
        v13 = [(SBRootFolderController *)self interactionControllerForDismissal:v11];
        goto LABEL_12;
      }
    }

    v14 = objc_alloc_init(SBRootFolderControllerDefaultTransitionContext);
    [(SBViewControllerTransitionContext *)v14 setDelegate:self];
    v15 = [(SBRootFolderController *)self rootFolderView];
    [(SBViewControllerTransitionContext *)v14 setContainerView:v15];

    [(SBViewControllerTransitionContext *)v14 setAnimator:v11];
    [(SBViewControllerTransitionContext *)v14 setInteractor:v12];
    [(SBViewControllerTransitionContext *)v14 setWantsAnimation:v7];
    v16 = MEMORY[0x1E69DE768];
    if (a4)
    {
      v16 = MEMORY[0x1E69DE778];
      v17 = MEMORY[0x1E69DE780];
    }

    else
    {
      v17 = MEMORY[0x1E69DE770];
    }

    [(SBViewControllerTransitionContext *)v14 setViewController:v10 forKey:*v16];
    v18 = [v10 view];
    [(SBViewControllerTransitionContext *)v14 setView:v18 forKey:*v17];

    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = objc_alloc_init(SBFramewiseInteractiveTransitionAnimator);
  [(SBFramewiseInteractiveTransitionAnimator *)v6 setDelegate:self];
  [(SBFramewiseInteractiveTransitionAnimator *)v6 setPresenting:1];

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = objc_alloc_init(SBFramewiseInteractiveTransitionAnimator);
  [(SBFramewiseInteractiveTransitionAnimator *)v4 setDelegate:self];
  [(SBFramewiseInteractiveTransitionAnimator *)v4 setPresenting:0];

  return v4;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v3 = objc_alloc_init(SBPercentPassthroughInteractiveTransition);

  return v3;
}

- (id)interactionControllerForDismissal:(id)a3
{
  v3 = objc_alloc_init(SBPercentPassthroughInteractiveTransition);

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  v4 = [(SBFolderController *)&v12 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:-[SBRootFolderController isDockExternal](self withName:{"isDockExternal"), @"isDockExternal"}];
  v6 = [v4 appendInteger:-[SBRootFolderController dockEdge](self withName:{"dockEdge"), @"dockEdge"}];
  v7 = SBStringForRootFolderPageState([(SBRootFolderController *)self pageState]);
  v8 = [v4 appendObject:v7 withName:@"pageState"];

  v9 = [(SBRootFolderController *)self currentTransitionHandle];
  v10 = [v4 appendObject:v9 withName:@"currentPageStateTransition" skipIfNil:1];

  return v4;
}

- (unint64_t)presenterType
{
  v3 = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 widgetSheetPresenterTypeForRootFolderController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDisplayingEditingButtons
{
  v3 = [(SBRootFolderController *)self rootFolderView];
  if ([v3 showsDoneButton])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBRootFolderController *)self rootFolderView];
    v4 = [v5 showsAddWidgetButton];
  }

  return v4;
}

- (void)setSuppressesEditingStateForListView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBRootFolderController *)self rootFolderView];
  [v4 setSuppressesEditingStateForListViews:v3];
}

- (double)titledButtonsAlpha
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  [v2 titledButtonsAlpha];
  v4 = v3;

  return v4;
}

- (void)setTitledButtonsAlpha:(double)a3
{
  v4 = [(SBRootFolderController *)self rootFolderView];
  [v4 setTitledButtonsAlpha:a3];
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = ((v5 & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBRootFolderController *)self isDisplayingIcon:v8 inLocation:v9];

  return v10;
}

- (BOOL)isDisplayingIcon:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = ((v4 & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBRootFolderController *)self isDisplayingIcon:v6];

  return v7;
}

- (BOOL)isDisplayingIconView:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = ((v4 & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBFolderController *)self isDisplayingIconView:v6];

  return v7;
}

- (id)firstIconViewForIcon:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  if ((a4 & 1) != 0 && [(SBRootFolderController *)self isAnySearchVisibleOrTransitioning])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRootFolderController;
    v7 = [(SBFolderController *)&v9 firstIconViewForIcon:v6 options:a4];
  }

  return v7;
}

- (void)_doPageManagementEducation
{
  v2 = [(SBRootFolderController *)self rootFolderView];
  [v2 _doPageManagementEducation];
}

- (SBHStackConfigurationViewController)stackConfigurationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_stackConfigurationViewController);

  return WeakRetained;
}

- (void)pageTransitionHandle:(uint64_t)a1 updateCurrentPageStateTransitionToProgress:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Trying to update a transition without the current transition handle: %{public}@", &v2, 0xCu);
}

- (void)pageTransitionHandle:(uint64_t)a1 endPageStateTransitionSuccessfully:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Trying to end a transition without the current transition handle: %{public}@", &v2, 0xCu);
}

@end