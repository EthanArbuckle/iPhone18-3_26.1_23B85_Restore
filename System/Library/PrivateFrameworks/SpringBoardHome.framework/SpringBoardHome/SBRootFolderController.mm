@interface SBRootFolderController
+ (BOOL)pageStateTransitionPrefersUsingScrollingDirection;
+ (NSString)dockIconLocation;
+ (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)offset pageWidth:(double)width pageSpacing:(double)spacing pages:(double)pages pageCount:(const int64_t *)count userInterfaceLayoutDirection:(unint64_t)direction currentPageState:(int64_t)state currentPageOffset:(int64_t)self0 scrollingDirection:(unint64_t)self1;
- (BOOL)_internalDismissWidgetAddSheet:(BOOL)sheet clearAddSheetViewController:(BOOL)controller notifyObservers:(BOOL)observers;
- (BOOL)_leadingCustomViewShouldShowAddWidgetButtonWhenEditing;
- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_listIndexIsVisible:(unint64_t)visible;
- (BOOL)_shouldObscureBackgroundBehindCustomLeadingPageAtIndex:(unint64_t)index;
- (BOOL)_shouldObscureBackgroundBehindCustomTrailingPageAtIndex:(unint64_t)index;
- (BOOL)_trailingCustomViewShouldShowAddWidgetButtonWhenEditing;
- (BOOL)_trailingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_useGrabberForSheetPresentation;
- (BOOL)allowsAutoscrollToLeadingCustomView;
- (BOOL)canShowWidgetIntroduction;
- (BOOL)canTransitionPageStateToState:(int64_t)state;
- (BOOL)iconListViewContainsWidget:(unint64_t)widget;
- (BOOL)iconListViewsContainWidget;
- (BOOL)isAnySearchTransitioning;
- (BOOL)isAnySearchVisible;
- (BOOL)isAnySearchVisibleOrTransitioning;
- (BOOL)isDisplayingEditingButtons;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options;
- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options;
- (BOOL)isDisplayingWidgetIntroductionOnPage:(int64_t)page;
- (BOOL)isDockExternal;
- (BOOL)isDockVisible;
- (BOOL)isIconPageVisibleOrTransitionDestination;
- (BOOL)isLeadingCustomViewOrLeadingCustomViewSearchVisible;
- (BOOL)isLeadingCustomViewPageHidden;
- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)index;
- (BOOL)isLeadingCustomViewSearchTransitioning;
- (BOOL)isLeadingCustomViewSearchVisibleOrTransitioning;
- (BOOL)isLeadingCustomViewTransitioning;
- (BOOL)isLeadingCustomViewVisibleOrTransitionDestination;
- (BOOL)isOccludedByOverlay;
- (BOOL)isOnLeadingCustomPage;
- (BOOL)isPageManagementUITransitioningOutOfVisible;
- (BOOL)isPageManagementUIVisible;
- (BOOL)isPresentingIconLocation:(id)location;
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
- (BOOL)stackConfigurationInteraction:(id)interaction allowsRemovalOfIconDataSource:(id)source;
- (NSArray)folderControllers;
- (NSSet)nonDockPresentedIconLocations;
- (NSSet)presentedIconLocations;
- (SBFParallaxSettings)parallaxSettings;
- (SBHRootFolderCustomViewPresenting)leadingCustomViewController;
- (SBHRootFolderCustomViewPresenting)trailingCustomViewController;
- (SBHStackConfigurationViewController)stackConfigurationViewController;
- (SBRootFolderController)initWithConfiguration:(id)configuration;
- (SBRootFolderControllerAccessoryViewControllerDelegate)accessoryViewControllerDelegate;
- (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)offset;
- (UIView)searchBackdropView;
- (UIView)searchableLeadingCustomWrapperView;
- (double)_additionalMinimumOffsetForSheetPresentation;
- (double)distanceToTopOfSpotlightIconsForRootFolderView:(id)view;
- (double)dockHeight;
- (double)externalDockHeightForRootFolderView:(id)view;
- (double)maxExternalDockHeightForRootFolderView:(id)view;
- (double)pageTransitionProgress;
- (double)preferredExternalDockVerticalMarginForRootFolderView:(id)view;
- (double)spotlightFirstIconRowOffset;
- (double)titledButtonsAlpha;
- (double)visibilityProgressTowardPageStateMatchingTest:(id)test;
- (id)_addWidgetSheetConfigurationManager;
- (id)_makeContentViewWithConfiguration:(id)configuration;
- (id)_viewControllersToNotifyForViewObscuration;
- (id)addWidgetAddSheetObserver:(id)observer;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)applicationWidgetCollectionsForEditingViewController:(id)controller withAllowedSizeClasses:(id *)classes allowingNonStackableItems:(BOOL)items;
- (id)backgroundViewForDockForRootFolderView:(id)view;
- (id)backgroundViewForEditingDoneButtonForRootFolderView:(id)view;
- (id)beginModifyingDockOffscreenFractionForReason:(id)reason;
- (id)beginPageStateTransitionFromPageState:(int64_t)state pageIndex:(int64_t)index toPageState:(int64_t)pageState pageIndex:(int64_t)pageIndex reason:(id)reason animated:(BOOL)animated interactive:(BOOL)interactive;
- (id)beginPageStateTransitionToState:(int64_t)state reason:(id)reason animated:(BOOL)animated interactive:(BOOL)interactive;
- (id)customViewControllerForPageIndex:(int64_t)index;
- (id)defaultTransitionForTransitioningFromPageState:(int64_t)state toPageState:(int64_t)pageState animated:(BOOL)animated interactive:(BOOL)interactive;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)dockIconListView;
- (id)dockListView;
- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options;
- (id)iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:(id)view;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)view;
- (id)showDoneButtonForReason:(id)reason;
- (id)stackConfigurationInteraction:(id)interaction dragPreviewForIconView:(id)view;
- (id)stackConfigurationInteraction:(id)interaction draggedIconForIdentifier:(id)identifier;
- (id)stackConfigurationInteraction:(id)interaction promoteSuggestedWidget:(id)widget withinStack:(id)stack;
- (id)updateStateTransitionsDuringScrollingScrollView:(id)view pageBounceComparator:(void *)comparator;
- (id)viewControllerForPageState:(int64_t)state;
- (id)viewControllerForTransitioningFromPageState:(int64_t)state toPageState:(int64_t)pageState;
- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class;
- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class;
- (id)windowForIconDragPreviewsForStackConfigurationInteraction:(id)interaction forWindowScene:(id)scene;
- (int64_t)destinationPageState;
- (int64_t)leadingCustomViewPageIndex;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index;
- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)index;
- (int64_t)trailingCustomViewPageIndex;
- (unint64_t)_addWidgetSheetStyle;
- (unint64_t)_currentHomeScreenEditingGridSize;
- (unint64_t)_defaultEditingSuggestedWidgetItemsFamilyMask;
- (unint64_t)destinationPageOffset;
- (unint64_t)dockEdge;
- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)index;
- (unint64_t)presenterType;
- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)index;
- (unint64_t)typeForPage:(int64_t)page;
- (void)_cancelTouchesForSearchGestureOnIconView:(id)view;
- (void)_checkForImproperScrollOffsetForPageState;
- (void)_dismissPageManagementIfPresented:(id)presented;
- (void)_doPageManagementEducation;
- (void)_handleWidgetSheetViewControllerDidDisappear:(id)disappear;
- (void)_handleWidgetSheetViewControllerWillAppear:(id)appear;
- (void)_handleWidgetSheetViewControllerWillDisappear:(id)disappear;
- (void)_invalidateSearchGestureIconViewTouchCancellationAssertion;
- (void)_presentPageManagement:(id)management;
- (void)_refreshGalleryContentForHomeScreenEditingIfNecessary;
- (void)_removeShowDoneButtonAssertion:(id)assertion;
- (void)_updateFolderRequiredTrailingEmptyListCount;
- (void)_updateStatusBarHiddenForWidgetSheetViewController:(id)controller visible:(BOOL)visible;
- (void)acceptWidgetIntroduction;
- (void)addPageStateObserver:(id)observer;
- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)addWidgetSheetViewControllerDidAppear:(id)appear;
- (void)addWidgetSheetViewControllerDidDisappear:(id)disappear;
- (void)addWidgetSheetViewControllerWillAppear:(id)appear;
- (void)addWidgetSheetViewControllerWillDisappear:(id)disappear;
- (void)bringWidgetIntroductionPopoverToFront;
- (void)dealloc;
- (void)didBeginDraggingWidgetIcon:(id)icon;
- (void)didContinueTransitionToState:(int64_t)state progress:(double)progress;
- (void)didEndDraggingWidgetIcon:(id)icon;
- (void)didEndTransitionFromState:(int64_t)state pageIndex:(int64_t)index toState:(int64_t)toState pageIndex:(int64_t)pageIndex successfully:(BOOL)successfully;
- (void)dismissSpotlightAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)enterPageManagementUIWithCompletionHandler:(id)handler;
- (void)enumerateCustomPageViewControllersUsingBlock:(id)block;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumeratePageStateObserversUsingBlock:(id)block;
- (void)enumerateWidgetAddSheetObserversUsingBlock:(id)block;
- (void)exitPageManagementUIWithCompletionHandler:(id)handler;
- (void)folderController:(id)controller didBeginEditingTitle:(id)title;
- (void)folderController:(id)controller didEndEditingTitle:(id)title;
- (void)folderView:(id)view currentPageIndexDidChange:(int64_t)change;
- (void)folderView:(id)view currentPageIndexWillChange:(int64_t)change;
- (void)folderView:(id)view didBeginEditingTitle:(id)title;
- (void)folderView:(id)view didEndEditingTitle:(id)title;
- (void)folderView:(id)view willAnimateScrollToPageIndex:(int64_t)index;
- (void)folderViewDidEndScrolling:(id)scrolling;
- (void)folderViewDidScroll:(id)scroll;
- (void)folderViewWillUpdatePageDuringScrolling:(id)scrolling;
- (void)pageTransitionHandle:(id)handle endPageStateTransitionSuccessfully:(BOOL)successfully;
- (void)pageTransitionHandle:(id)handle updateCurrentPageStateTransitionToProgress:(double)progress;
- (void)performDefaultPageStateTransitionToState:(int64_t)state reason:(id)reason animated:(BOOL)animated completionHandler:(id)handler;
- (void)performPageStateTransitionToState:(int64_t)state pageIndex:(int64_t)index reason:(id)reason animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentSpotlightAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)presentWidgetEditingViewControllerFromViewController:(id)controller;
- (void)presentWidgetEditingViewControllerFromViewController:(id)controller withAllowedSizeClasses:(id)classes allowingNonStackableItems:(BOOL)items;
- (void)rejectWidgetIntroduction;
- (void)rootFolderView:(id)view didDismissPageManagementWithLayoutManager:(id)manager context:(id)context;
- (void)rootFolderView:(id)view didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation;
- (void)rootFolderView:(id)view didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation;
- (void)rootFolderView:(id)view didOverscrollOnFirstPageByAmount:(double)amount;
- (void)rootFolderView:(id)view didOverscrollOnLastPageByAmount:(double)amount;
- (void)rootFolderView:(id)view wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)offset;
- (void)rootFolderView:(id)view willDismissPageManagementUsingAnimator:(id)animator context:(id)context;
- (void)rootFolderView:(id)view willPresentPageManagementWithLayoutManager:(id)manager animator:(id)animator context:(id)context;
- (void)rootFolderViewDidChangeSuppressesEditingStateForListViews:(id)views;
- (void)rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:(id)presented;
- (void)rootFolderViewWantsIconTintViewControllerPresented:(id)presented;
- (void)rootFolderViewWantsSearchPresented:(id)presented;
- (void)rootFolderViewWantsToEndEditing:(id)editing;
- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)handler;
- (void)searchGesture:(id)gesture changedPercentComplete:(double)complete;
- (void)searchGesture:(id)gesture completedShowing:(BOOL)showing;
- (void)searchGesture:(id)gesture resetAnimated:(BOOL)animated;
- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing;
- (void)setAllowsAutoscrollToLeadingCustomView:(BOOL)view;
- (void)setDockEdge:(unint64_t)edge;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolderDelegate:(id)delegate;
- (void)setIdleText:(id)text;
- (void)setLeadingCustomViewPageHidden:(BOOL)hidden;
- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(unint64_t)index;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setOccludedByOverlay:(BOOL)overlay;
- (void)setParallaxDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setPullDownSearchViewController:(id)controller;
- (void)setSuppressesEditingStateForListView:(BOOL)view;
- (void)setSuppressesExtraEditingButtons:(BOOL)buttons;
- (void)setTitledButtonsAlpha:(double)alpha;
- (void)stackConfigurationInteraction:(id)interaction isConsumingDropSession:(id)session;
- (void)stackConfigurationInteraction:(id)interaction noteDidRemoveSuggestedWidgetIcon:(id)icon;
- (void)stackConfigurationInteraction:(id)interaction requestsPresentAddWidgetSheetFromPresenter:(id)presenter;
- (void)stackConfigurationInteractionWillAnimateWidgetInsertion:(id)insertion;
- (void)stackConfigurationViewControllerDidAppear:(id)appear;
- (void)stackConfigurationViewControllerDidDisappear:(id)disappear;
- (void)stackConfigurationViewControllerWillAppear:(id)appear;
- (void)transitionDidFinish:(id)finish;
- (void)transitionWillBegin:(id)begin;
- (void)transitionWillFinish:(id)finish;
- (void)transitionWillReverse:(id)reverse;
- (void)updateExtraButtonVisibilityAnimated:(BOOL)animated;
- (void)updatePresentedWidgetEditingViewController;
- (void)updatePronouncedContainerViewVisibilityIfPossible:(BOOL)possible vertical:(BOOL)vertical;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBeginTransitionToState:(int64_t)state pageIndex:(int64_t)index animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)willEndTransitionToState:(int64_t)state successfully:(BOOL)successfully;
@end

@implementation SBRootFolderController

- (BOOL)isPullDownSearchVisible
{
  v3 = ![(SBRootFolderController *)self isTransitioningPageState]&& [(SBRootFolderController *)self pageState]== 1;
  searchPresenter = [(SBRootFolderController *)self searchPresenter];
  v5 = searchPresenter;
  if (searchPresenter && ![searchPresenter presentationState])
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isTransitioningPageState
{
  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  v3 = currentTransitionHandle != 0;

  return v3;
}

- (BOOL)isOnLeadingCustomPage
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  v4 = SBRootFolderPageStateIsOnLeadingCustomPage([(SBRootFolderController *)self pageState]);
  if (!isTransitioningPageState || !v4)
  {
    return !isTransitioningPageState && v4;
  }

  destinationPageState = [(SBRootFolderController *)self destinationPageState];

  return SBRootFolderPageStateIsOnLeadingCustomPage(destinationPageState);
}

- (BOOL)isTrailingCustomViewVisibleOrTransitionDestination
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    destinationPageState = [(SBRootFolderController *)self pageState];
  }

  return destinationPageState == 4;
}

- (id)dockListView
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  dockView = [rootFolderView dockView];
  dockListView = [dockView dockListView];

  return dockListView;
}

- (BOOL)isDockExternal
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isDockExternal = [rootFolderView isDockExternal];

  return isDockExternal;
}

- (BOOL)isDockVisible
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isDockVisible = [rootFolderView isDockVisible];

  return isDockVisible;
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
  LODWORD(pageState) = [(SBRootFolderController *)self isTransitioningPageState];
  if (pageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    if (pageState != 1)
    {
      LOBYTE(pageState) = [(SBRootFolderController *)self destinationPageState]== 1;
    }
  }

  return pageState;
}

- (NSSet)nonDockPresentedIconLocations
{
  presentedIconLocations = [(SBRootFolderController *)self presentedIconLocations];
  v3 = [presentedIconLocations mutableCopy];

  dockIconLocation = [objc_opt_class() dockIconLocation];
  [v3 removeObject:dockIconLocation];

  return v3;
}

- (NSSet)presentedIconLocations
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  iconLocation = [objc_opt_class() iconLocation];
  v5 = [v3 setWithObject:iconLocation];

  dockListView = [(SBRootFolderController *)self dockListView];
  iconLocation2 = [dockListView iconLocation];

  if ([(SBFolderController *)self hasDock]&& ![(SBRootFolderController *)self isDockExternal]&& iconLocation2)
  {
    [v5 addObject:iconLocation2];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  iconListViews = [(SBFolderController *)self iconListViews];
  v9 = [iconListViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        iconLocation3 = [*(*(&v15 + 1) + 8 * i) iconLocation];
        [v5 addObject:iconLocation3];
      }

      v10 = [iconListViews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    LOBYTE(isTransitioningPageState) = [(SBRootFolderController *)self pageState]== 3 || [(SBRootFolderController *)self destinationPageState]== 3;
  }

  return isTransitioningPageState;
}

+ (NSString)dockIconLocation
{
  _contentViewClass = [self _contentViewClass];

  return [_contentViewClass dockIconLocation];
}

- (id)_viewControllersToNotifyForViewObscuration
{
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  _viewControllersToNotifyForViewObscuration = [(SBFolderController *)&v10 _viewControllersToNotifyForViewObscuration];
  v4 = [_viewControllersToNotifyForViewObscuration mutableCopy];

  if (SBRootFolderPageStateIsSearch([(SBRootFolderController *)self pageState]))
  {
    pullDownSearchViewController = [(SBRootFolderController *)self pullDownSearchViewController];
    if (pullDownSearchViewController)
    {
      [v4 addObject:pullDownSearchViewController];
    }
  }

  searchPresenter = [(SBRootFolderController *)self searchPresenter];
  isPresenting = [searchPresenter isPresenting];

  if (isPresenting)
  {
    searchPresentableViewController = [(SBRootFolderController *)self searchPresentableViewController];
    if (searchPresentableViewController)
    {
      [v4 addObject:searchPresentableViewController];
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

  pageState = [(SBRootFolderController *)self pageState];

  return SBRootFolderPageStateIsSearch(pageState);
}

- (BOOL)isAnySearchTransitioning
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    if (SBRootFolderPageStateIsSearch([(SBRootFolderController *)self pageState]))
    {
      LOBYTE(isTransitioningPageState) = 1;
    }

    else
    {
      destinationPageState = [(SBRootFolderController *)self destinationPageState];

      LOBYTE(isTransitioningPageState) = SBRootFolderPageStateIsSearch(destinationPageState);
    }
  }

  return isTransitioningPageState;
}

- (BOOL)isPullDownSearchVisibleOrTransitioningToVisible
{
  searchPresenter = [(SBRootFolderController *)self searchPresenter];
  v4 = searchPresenter;
  if (searchPresenter)
  {
    isPresenting = [searchPresenter isPresenting];
  }

  else
  {
    isPullDownSearchVisible = [(SBRootFolderController *)self isPullDownSearchVisible];
    if ([(SBRootFolderController *)self isTransitioningPageState])
    {
      v7 = [(SBRootFolderController *)self destinationPageState]== 1;
    }

    else
    {
      v7 = 0;
    }

    isPresenting = isPullDownSearchVisible || v7;
  }

  return isPresenting & 1;
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
  leadingCustomViewControllers = [(SBRootFolderController *)self leadingCustomViewControllers];
  lastObject = [leadingCustomViewControllers lastObject];

  return lastObject;
}

- (NSArray)folderControllers
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  innerFolderController = [(SBFolderController *)self innerFolderController];
  if (innerFolderController)
  {
    v5 = innerFolderController;
    do
    {
      [v3 addObject:v5];
      innerFolderController2 = [v5 innerFolderController];

      v5 = innerFolderController2;
    }

    while (innerFolderController2);
  }

  return v3;
}

- (id)dockIconListView
{
  if ([(SBRootFolderController *)self isDockExternal])
  {
    folderDelegate = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      dockIconListView = [folderDelegate externalDockIconListViewForRootFolderController:self];
    }

    else
    {
      dockIconListView = 0;
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderController;
    dockIconListView = [(SBFolderController *)&v6 dockIconListView];
  }

  return dockIconListView;
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
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    v6 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(pageState);
    LOBYTE(isTransitioningPageState) = v6 != SBRootFolderPageStateVerticalGroupForRootFolderPageState(destinationPageState);
  }

  return isTransitioningPageState;
}

- (void)_checkForImproperScrollOffsetForPageState
{
  if ([(SBFolderController *)self isScrolling])
  {
    return;
  }

  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  pageState = [(SBRootFolderController *)self pageState];
  currentPageIndex = [(SBFolderController *)self currentPageIndex];
  [rootFolderView leadingCustomViewPageScrollOffset];
  v6 = v5;
  if (SBRootFolderPageStateIsOnLeadingCustomPage(pageState))
  {
    v7 = v6;
    if (currentPageIndex != v6)
    {
      goto LABEL_10;
    }
  }

  if (!SBRootFolderPageStateIsOnIconPage(pageState))
  {
    goto LABEL_11;
  }

  if (currentPageIndex >= [(SBFolderController *)self firstIconPageIndex])
  {
    if (currentPageIndex > [(SBFolderController *)self lastIconPageIndex])
    {
      lastIconPageIndex = [(SBFolderController *)self lastIconPageIndex];
      goto LABEL_9;
    }

LABEL_11:
    [rootFolderView resetContentOffsetToCurrentPageAnimated:1];
    goto LABEL_12;
  }

  lastIconPageIndex = [(SBFolderController *)self firstIconPageIndex];
LABEL_9:
  v7 = lastIconPageIndex;
LABEL_10:
  [(SBRootFolderController *)self setCurrentPageIndex:v7 animated:1];
LABEL_12:
}

+ (BOOL)pageStateTransitionPrefersUsingScrollingDirection
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (BOOL)isTransitioningBetweenHorizontalPageStates
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(isTransitioningPageState) = SBRootFolderPageStateIsOnHorizontalScrollingPlane(pageState) && (SBRootFolderPageStateIsOnHorizontalScrollingPlane(destinationPageState) & 1) != 0;
  }

  return isTransitioningPageState;
}

- (void)bringWidgetIntroductionPopoverToFront
{
  if ([(SBRootFolderController *)self isDisplayingWidgetIntroductionOnPage:[(SBFolderController *)self firstIconPageIndex]])
  {
    currentIconListView = [(SBFolderController *)self currentIconListView];
    [currentIconListView bringWidgetIntroductionPopoverToFront];
  }
}

- (double)dockHeight
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView dockHeight];
  v4 = v3;

  return v4;
}

- (BOOL)isLeadingCustomViewVisibleOrTransitionDestination
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    destinationPageState = [(SBRootFolderController *)self pageState];
  }

  return destinationPageState == 2;
}

- (SBRootFolderController)initWithConfiguration:(id)configuration
{
  v53 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v50.receiver = self;
  v50.super_class = SBRootFolderController;
  v5 = [(SBFolderController *)&v50 initWithConfiguration:configurationCopy];
  v6 = v5;
  if (v5)
  {
    v5->_pageState = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__reduceTransparencyChanged name:*MEMORY[0x1E69DD920] object:0];
    [defaultCenter addObserver:v6 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    v8 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = configurationCopy;
      v6->_showsDoneButtonWhileEditing = [v10 showsDoneButtonWhileEditing];
      v6->_showsAddWidgetButtonWhileEditingAllowedOrientations = [v10 showsAddWidgetButtonWhileEditingAllowedOrientations];
      searchPresenter = [v10 searchPresenter];
      searchPresenter = v6->_searchPresenter;
      v6->_searchPresenter = searchPresenter;

      searchPresentableViewController = [v10 searchPresentableViewController];
      searchPresentableViewController = v6->_searchPresentableViewController;
      v6->_searchPresentableViewController = searchPresentableViewController;

      if (!v6->_searchPresenter)
      {
        pullDownSearchViewController = [v10 pullDownSearchViewController];
        pullDownSearchViewController = v6->_pullDownSearchViewController;
        v6->_pullDownSearchViewController = pullDownSearchViewController;
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
      searchPresenter2 = [v10 searchPresenter];
      v19 = [(SBSearchGesture *)v17 initWithSearchPresenter:searchPresenter2];
      searchGesture = v6->_searchGesture;
      v6->_searchGesture = v19;

      [(SBSearchGesture *)v6->_searchGesture addObserver:v6];
      leadingCustomViewControllers = [v10 leadingCustomViewControllers];
      v22 = [leadingCustomViewControllers copy];
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

      trailingCustomViewControllers = [v10 trailingCustomViewControllers];
      v31 = [trailingCustomViewControllers copy];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBRootFolderController;
  [(SBFolderController *)&v4 dealloc];
}

- (void)folderController:(id)controller didBeginEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didBeginEditingTitle:titleCopy];
  }
}

- (void)folderController:(id)controller didEndEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didEndEditingTitle:titleCopy];
  }
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SBRootFolderController;
  [(SBFolderController *)&v16 viewDidLoad];
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  if ([(SBRootFolderController *)self pageState]== -1)
  {
    v11 = [rootFolderView typeForPage:{-[SBFolderController currentPageIndex](self, "currentPageIndex")}];
    if (v11 == 2)
    {
      [(SBRootFolderController *)self setPageState:4];
      [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
      [rootFolderView setTrailingCustomViewVisibilityProgress:?];
    }

    else if (v11)
    {
      [(SBRootFolderController *)self setPageState:0];
    }

    else
    {
      [(SBRootFolderController *)self setPageState:2];
      [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
      [rootFolderView setLeadingCustomViewVisibilityProgress:?];
    }
  }

  trailingCustomViewControllers = [(SBRootFolderController *)self trailingCustomViewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [trailingCustomViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(trailingCustomViewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          trailingCustomSearchDimmingView = [rootFolderView trailingCustomSearchDimmingView];
          [v9 setSearchDimmingView:trailingCustomSearchDimmingView];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [trailingCustomViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBRootFolderController;
  [(SBRootFolderController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 viewWillAppear:appear];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerViewWillAppear:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  [(SBFolderController *)&v12 viewDidDisappear:disappear];
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  if ([(SBRootFolderController *)self isLeadingCustomViewSearchVisible])
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __43__SBRootFolderController_viewDidDisappear___block_invoke;
    v9 = &unk_1E8088F18;
    v10 = rootFolderView;
    selfCopy = self;
    [(SBRootFolderController *)self dismissSpotlightAnimated:0 completionHandler:&v6];
  }

  else if ([(SBRootFolderController *)self isAnySearchVisibleOrTransitioning])
  {
    [(SBRootFolderController *)self dismissSpotlightAnimated:0 completionHandler:0];
  }

  [rootFolderView updateIconListIndexAndVisibility:{1, v6, v7, v8, v9}];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerViewDidDisappear:self];
  }
}

uint64_t __43__SBRootFolderController_viewDidDisappear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPageIndex:objc_msgSend(*(a1 + 40) animated:{"defaultPageIndex"), 0}];
  v2 = *(a1 + 32);

  return [v2 updateIconListIndexAndVisibility:1];
}

- (void)viewWillTransitionToSize:(CGSize)size forOperation:(int64_t)operation withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 viewWillTransitionToSize:operation forOperation:coordinator withTransitionCoordinator:size.width, size.height];
}

- (id)_makeContentViewWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  v4 = [(SBFolderController *)&v7 _makeContentViewWithConfiguration:configuration];
  searchGesture = [(SBRootFolderController *)self searchGesture];
  [v4 setSearchGesture:searchGesture];

  return v4;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  isEditing = [(SBFolderController *)self isEditing];
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:animatedCopy];
    _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    if (editingCopy)
    {
      [_addWidgetSheetConfigurationManager fetchGalleryContentForHomeScreenEditingWithGridSize:-[SBRootFolderController _currentHomeScreenEditingGridSize](self addWidgetSheetViewController:{"_currentHomeScreenEditingGridSize"), self->_addSheetViewController}];
    }

    else
    {
      [(SBRootFolderController *)self _internalDismissWidgetAddSheet:animatedCopy clearAddSheetViewController:1 notifyObservers:1];
      [_addWidgetSheetConfigurationManager setEditingSuggestedWidgetItems:0];
    }
  }
}

- (void)_updateFolderRequiredTrailingEmptyListCount
{
  isEditing = [(SBFolderController *)self isEditing];
  currentPageIndex = [(SBFolderController *)self currentPageIndex];
  v5 = [(SBRootFolderController *)self typeForPage:currentPageIndex];
  if (v5 == 2)
  {
    v6 = [(SBRootFolderController *)self trailingCustomPageIndexForPageIndex:currentPageIndex];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  [(SBFolderController *)&v8 _updateFolderRequiredTrailingEmptyListCount];
  v7 = !isEditing;
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
    _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [_addWidgetSheetConfigurationManager setEditingSuggestedWidgetItems:0];
    [_addWidgetSheetConfigurationManager fetchGalleryContentForHomeScreenEditingWithGridSize:-[SBRootFolderController _currentHomeScreenEditingGridSize](self addWidgetSheetViewController:{"_currentHomeScreenEditingGridSize"), self->_addSheetViewController}];
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
    _rotatingToInterfaceOrientation = [(SBRootFolderController *)self _rotatingToInterfaceOrientation];
  }

  else
  {
    _rotatingToInterfaceOrientation = [(SBFolderController *)self orientation];
  }

  if ((_rotatingToInterfaceOrientation - 3) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)setSuppressesExtraEditingButtons:(BOOL)buttons
{
  if (self->_suppressesExtraEditingButtons != buttons)
  {
    self->_suppressesExtraEditingButtons = buttons;
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:0];
  }
}

- (id)showDoneButtonForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[SBRootFolderControllerShowDoneButtonAssertion alloc] initWithFolderController:self reason:reasonCopy];

  showDoneButtonAssertions = self->_showDoneButtonAssertions;
  if (!showDoneButtonAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_showDoneButtonAssertions;
    self->_showDoneButtonAssertions = weakObjectsHashTable;

    showDoneButtonAssertions = self->_showDoneButtonAssertions;
  }

  [(NSHashTable *)showDoneButtonAssertions addObject:v5];
  [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];

  return v5;
}

- (void)_removeShowDoneButtonAssertion:(id)assertion
{
  [(NSHashTable *)self->_showDoneButtonAssertions removeObject:assertion];

  [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];
}

- (void)updateExtraButtonVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [(SBFolderController *)self orientation];
  showsDoneButtonWhileEditing = [(SBRootFolderController *)self showsDoneButtonWhileEditing];
  [(SBRootFolderController *)self showsAddWidgetButtonWhileEditingAllowedOrientations];
  v6 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
  isEditing = [(SBFolderController *)self isEditing];
  if (isEditing && showsDoneButtonWhileEditing)
  {
    _leadingCustomViewShouldShowDoneButtonWhenEditing = !self->_suppressesExtraEditingButtons;
    v9 = 1;
    if (v6)
    {
LABEL_4:
      v10 = _leadingCustomViewShouldShowDoneButtonWhenEditing;
LABEL_5:
      _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = _leadingCustomViewShouldShowDoneButtonWhenEditing;
      v12 = 1;
      _leadingCustomViewShouldShowDoneButtonWhenEditing = v10;
      goto LABEL_9;
    }

LABEL_8:
    v12 = 0;
    _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = 0;
LABEL_9:
    if (![(SBRootFolderController *)self isLeadingCustomViewVisibleOrTransitionDestination])
    {
      goto LABEL_20;
    }

    if (_leadingCustomViewShouldShowDoneButtonWhenEditing)
    {
      _leadingCustomViewShouldShowDoneButtonWhenEditing = [(SBRootFolderController *)self _leadingCustomViewShouldShowDoneButtonWhenEditing];
      if (!_leadingCustomViewShouldShowAddWidgetButtonWhenEditing)
      {
        goto LABEL_19;
      }
    }

    else
    {
      _leadingCustomViewShouldShowDoneButtonWhenEditing = 0;
      if (!_leadingCustomViewShouldShowAddWidgetButtonWhenEditing)
      {
        _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = 0;
        goto LABEL_20;
      }
    }

    _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = [(SBRootFolderController *)self _leadingCustomViewShouldShowAddWidgetButtonWhenEditing];
    goto LABEL_20;
  }

  v13 = [(NSHashTable *)self->_showDoneButtonAssertions count];
  v14 = isEditing & v6;
  if (v13)
  {
    _leadingCustomViewShouldShowDoneButtonWhenEditing = !self->_suppressesExtraEditingButtons;
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
    _leadingCustomViewShouldShowDoneButtonWhenEditing = !self->_suppressesExtraEditingButtons;
    goto LABEL_5;
  }

  [(SBRootFolderController *)self isLeadingCustomViewVisibleOrTransitionDestination];
  v12 = 0;
  v9 = 0;
  _leadingCustomViewShouldShowDoneButtonWhenEditing = 0;
LABEL_19:
  _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = 0;
LABEL_20:
  if (![(SBRootFolderController *)self isTrailingCustomViewVisibleOrTransitionDestination])
  {
    goto LABEL_26;
  }

  if (_leadingCustomViewShouldShowDoneButtonWhenEditing)
  {
    _leadingCustomViewShouldShowDoneButtonWhenEditing = [(SBRootFolderController *)self _trailingCustomViewShouldShowDoneButtonWhenEditing];
    if (!_leadingCustomViewShouldShowAddWidgetButtonWhenEditing)
    {
LABEL_23:
      _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = 0;
      goto LABEL_26;
    }
  }

  else
  {
    _leadingCustomViewShouldShowDoneButtonWhenEditing = 0;
    if (!_leadingCustomViewShouldShowAddWidgetButtonWhenEditing)
    {
      goto LABEL_23;
    }
  }

  _leadingCustomViewShouldShowAddWidgetButtonWhenEditing = [(SBRootFolderController *)self _trailingCustomViewShouldShowAddWidgetButtonWhenEditing];
LABEL_26:
  [rootFolderView setShowsDoneButton:_leadingCustomViewShouldShowDoneButtonWhenEditing animated:_leadingCustomViewShouldShowDoneButtonWhenEditing & animatedCopy];
  [rootFolderView setShowsAddWidgetButton:_leadingCustomViewShouldShowAddWidgetButtonWhenEditing animated:_leadingCustomViewShouldShowAddWidgetButtonWhenEditing & animatedCopy];
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
  leadingCustomViewController = [(SBRootFolderController *)self leadingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    shouldShowDoneButtonWhenEditing = [leadingCustomViewController shouldShowDoneButtonWhenEditing];
  }

  else
  {
    shouldShowDoneButtonWhenEditing = 0;
  }

  return shouldShowDoneButtonWhenEditing;
}

- (BOOL)_trailingCustomViewShouldShowDoneButtonWhenEditing
{
  trailingCustomViewController = [(SBRootFolderController *)self trailingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    shouldShowDoneButtonWhenEditing = [trailingCustomViewController shouldShowDoneButtonWhenEditing];
  }

  else
  {
    shouldShowDoneButtonWhenEditing = 1;
  }

  return shouldShowDoneButtonWhenEditing;
}

- (BOOL)_leadingCustomViewShouldShowAddWidgetButtonWhenEditing
{
  leadingCustomViewController = [(SBRootFolderController *)self leadingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    shouldShowAddWidgetButtonWhenEditing = [leadingCustomViewController shouldShowAddWidgetButtonWhenEditing];
  }

  else
  {
    shouldShowAddWidgetButtonWhenEditing = 0;
  }

  return shouldShowAddWidgetButtonWhenEditing;
}

- (BOOL)_trailingCustomViewShouldShowAddWidgetButtonWhenEditing
{
  trailingCustomViewController = [(SBRootFolderController *)self trailingCustomViewController];
  if (objc_opt_respondsToSelector())
  {
    shouldShowAddWidgetButtonWhenEditing = [trailingCustomViewController shouldShowAddWidgetButtonWhenEditing];
  }

  else
  {
    shouldShowAddWidgetButtonWhenEditing = 1;
  }

  return shouldShowAddWidgetButtonWhenEditing;
}

- (BOOL)_shouldObscureBackgroundBehindCustomLeadingPageAtIndex:(unint64_t)index
{
  leadingCustomViewControllers = [(SBRootFolderController *)self leadingCustomViewControllers];
  v5 = leadingCustomViewControllers;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [leadingCustomViewControllers objectAtIndex:index];
  }

  if (objc_opt_respondsToSelector())
  {
    shouldObscureBackgroundWhileVisible = [v6 shouldObscureBackgroundWhileVisible];
  }

  else
  {
    shouldObscureBackgroundWhileVisible = 1;
  }

  return shouldObscureBackgroundWhileVisible;
}

- (BOOL)_shouldObscureBackgroundBehindCustomTrailingPageAtIndex:(unint64_t)index
{
  trailingCustomViewControllers = [(SBRootFolderController *)self trailingCustomViewControllers];
  v5 = trailingCustomViewControllers;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [trailingCustomViewControllers objectAtIndex:index];
  }

  if (objc_opt_respondsToSelector())
  {
    shouldObscureBackgroundWhileVisible = [v6 shouldObscureBackgroundWhileVisible];
  }

  else
  {
    shouldObscureBackgroundWhileVisible = 1;
  }

  return shouldObscureBackgroundWhileVisible;
}

- (void)enumerateCustomPageViewControllersUsingBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
      blockCopy[2](blockCopy, v10, &v20);
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
        blockCopy[2](blockCopy, v15, &v20);
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

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  [(SBFolderController *)&v8 setLegibilitySettings:settingsCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SBRootFolderController_setLegibilitySettings___block_invoke;
  v6[3] = &unk_1E80892E8;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(SBRootFolderController *)self enumerateCustomPageViewControllersUsingBlock:v6];
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 enumerateDisplayedIconViewsUsingBlock:blockCopy];
  dockListView = [(SBRootFolderController *)self dockListView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SBRootFolderController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8089310;
  v8 = blockCopy;
  v6 = blockCopy;
  [dockListView enumerateIconViewsUsingBlock:v7];
}

- (void)enumerateDisplayedIconViewsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = SBRootFolderController;
  [(SBFolderController *)&v11 enumerateDisplayedIconViewsWithOptions:options usingBlock:blockCopy];
  dockListView = [(SBRootFolderController *)self dockListView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBRootFolderController_enumerateDisplayedIconViewsWithOptions_usingBlock___block_invoke;
  v9[3] = &unk_1E8089310;
  v10 = blockCopy;
  v8 = blockCopy;
  [dockListView enumerateIconViewsUsingBlock:v9];
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  iconCopy = icon;
  [(SBFolderController *)&v10 enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];
  v8 = [(SBRootFolderController *)self dockListView:v10.receiver];
  v9 = [v8 iconViewForIcon:iconCopy];

  if (v9)
  {
    blockCopy[2](blockCopy, v9);
  }
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  listLayoutProvider = [(SBFolderController *)self listLayoutProvider];
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  [(SBFolderController *)&v10 setListLayoutProvider:providerCopy animated:animatedCopy];
  listLayoutProvider2 = [(SBFolderController *)self listLayoutProvider];

  if (listLayoutProvider != listLayoutProvider2)
  {
    rootFolderView = [(SBRootFolderController *)self rootFolderView];
    [rootFolderView setListLayoutProvider:providerCopy animated:animatedCopy];
  }
}

- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)view
{
  viewCopy = view;
  if ([(SBRootFolderController *)self isPageManagementUIVisible]&& ![(SBRootFolderController *)self isPageManagementUITransitioningOutOfVisible])
  {
    rootFolderView = [(SBRootFolderController *)self rootFolderView];
    specialLayoutManager = [rootFolderView specialLayoutManager];

    if (objc_opt_respondsToSelector())
    {
      v7 = [specialLayoutManager parentViewControllerForCustomIconImageViewControllerForIconView:viewCopy];

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
  v7 = [(SBFolderController *)&v9 parentViewControllerForCustomIconImageViewControllerForIconView:viewCopy];
LABEL_8:

  return v7;
}

- (void)setFolderDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  folderDelegate = [(SBFolderController *)&v7 folderDelegate];

  if (folderDelegate != delegateCopy)
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderController;
    [(SBFolderController *)&v6 setFolderDelegate:delegateCopy];
  }
}

- (void)setPullDownSearchViewController:(id)controller
{
  controllerCopy = controller;
  pullDownSearchViewController = self->_pullDownSearchViewController;
  if (pullDownSearchViewController != controllerCopy)
  {
    v8 = controllerCopy;
    [(UIViewController *)pullDownSearchViewController removeFromParentViewController];
    objc_storeStrong(&self->_pullDownSearchViewController, controller);
    v7 = v8;
    if (v8)
    {
      [(SBRootFolderController *)self addChildViewController:v8];
      v7 = v8;
    }

    pullDownSearchViewController = [(UIViewController *)v7 didMoveToParentViewController:self];
    controllerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](pullDownSearchViewController, controllerCopy);
}

- (SBHRootFolderCustomViewPresenting)trailingCustomViewController
{
  trailingCustomViewControllers = [(SBRootFolderController *)self trailingCustomViewControllers];
  firstObject = [trailingCustomViewControllers firstObject];

  return firstObject;
}

- (id)customViewControllerForPageIndex:(int64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v6 = [rootFolderView typeForPage:index];
  if (v6 == 2)
  {
    v7 = [rootFolderView trailingCustomPageIndexForPageIndex:index];
    trailingCustomViewControllers = [(SBRootFolderController *)self trailingCustomViewControllers];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [rootFolderView leadingCustomPageIndexForPageIndex:index];
    trailingCustomViewControllers = [(SBRootFolderController *)self leadingCustomViewControllers];
LABEL_5:
    v9 = trailingCustomViewControllers;
    if (v7 >= [trailingCustomViewControllers count])
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
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView _spotlightFirstIconRowOffset];
  v4 = v3;

  return v4;
}

- (void)setIdleText:(id)text
{
  textCopy = text;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setIdleText:textCopy];
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  if ([(SBFolderController *)&v9 isDisplayingIcon:iconCopy])
  {
    goto LABEL_2;
  }

  dockListView = [(SBRootFolderController *)self dockListView];
  if (![dockListView containsIcon:iconCopy])
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  isDockVisible = [(SBRootFolderController *)self isDockVisible];

  if (!isDockVisible)
  {
    goto LABEL_7;
  }

LABEL_2:
  v5 = 1;
LABEL_8:

  return v5;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  folder = [(SBFolderController *)self folder];
  dockListView = [(SBRootFolderController *)self dockListView];
  iconLocation = [dockListView iconLocation];
  if (iconLocation && [locationCopy isEqualToString:iconLocation] && !-[SBRootFolderController isDockExternal](self, "isDockExternal"))
  {
    dock = [folder dock];
    v12 = [dock directlyContainsIcon:iconCopy];
LABEL_11:

    goto LABEL_12;
  }

  v11 = [(SBFolderController *)self iconListViewIndexForPageIndex:[(SBFolderController *)self currentPageIndex]];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    dock = [(SBFolderController *)self iconListViewAtIndex:v11];
    model = [dock model];
    iconLocation2 = [dock iconLocation];
    if ([locationCopy isEqualToString:iconLocation2])
    {
      v12 = [model directlyContainsIcon:iconCopy];
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

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  dockListView = [(SBRootFolderController *)self dockListView];
  iconLocation = [dockListView iconLocation];
  if (iconLocation && [locationCopy isEqualToString:iconLocation] && !-[SBRootFolderController isDockExternal](self, "isDockExternal"))
  {
    v13 = [dockListView isDisplayingIconView:viewCopy];
  }

  else
  {
    iconLocation2 = [objc_opt_class() iconLocation];
    v11 = [locationCopy isEqualToString:iconLocation2];

    if (v11)
    {
      currentIconListView = [(SBFolderController *)self currentIconListView];
      v13 = [currentIconListView isDisplayingIconView:viewCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
  dockListView = [(SBRootFolderController *)self dockListView];
  iconLocation = [dockListView iconLocation];
  if (!iconLocation || ![locationCopy isEqualToString:iconLocation] || -[SBRootFolderController isDockExternal](self, "isDockExternal") || (options & 8) != 0 && !-[SBRootFolderController isDockVisible](self, "isDockVisible") || (objc_msgSend(dockListView, "displayedIconViewForIcon:", iconCopy), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14.receiver = self;
    v14.super_class = SBRootFolderController;
    v12 = [(SBFolderController *)&v14 iconViewForIcon:iconCopy location:locationCopy options:options];
  }

  return v12;
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  dockListView = [(SBRootFolderController *)self dockListView];
  iconLocation = [dockListView iconLocation];
  if (!iconLocation || ![locationCopy isEqualToString:iconLocation] || -[SBRootFolderController isDockExternal](self, "isDockExternal") || (objc_msgSend(dockListView, "displayedIconViewForIcon:", iconCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12.receiver = self;
    v12.super_class = SBRootFolderController;
    v10 = [(SBFolderController *)&v12 iconViewForIcon:iconCopy location:locationCopy];
  }

  return v10;
}

- (id)beginModifyingDockOffscreenFractionForReason:(id)reason
{
  reasonCopy = reason;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v6 = [rootFolderView beginModifyingDockOffscreenFractionForReason:reasonCopy];

  return v6;
}

- (unint64_t)dockEdge
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  dockEdge = [rootFolderView dockEdge];

  return dockEdge;
}

- (void)setDockEdge:(unint64_t)edge
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setDockEdge:edge];
}

- (BOOL)_listIndexIsVisible:(unint64_t)visible
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  v5 = 1;
  if (![(SBFolderController *)&v12 _listIndexIsVisible:?]&& visible != 10000)
  {
    v6 = [(SBRootFolderController *)self customViewControllerForPageIndex:[(SBFolderController *)self pageIndexForIconListModelIndex:visible]];
    v5 = 0;
    if (objc_opt_respondsToSelector())
    {
      iconListViewQueryable = [v6 iconListViewQueryable];
      v8 = [MEMORY[0x1E696AC88] sb_indexPathWithListIndex:visible];
      folder = [(SBFolderController *)self folder];
      v10 = [iconListViewQueryable iconListViewForListAtIndexPath:v8 inFolder:folder];

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
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [folderDelegate addWidgetSheetConfigurationManagerForRootFolderController:self];
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
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [folderDelegate addWidgetSheetStyleForRootFolderController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)rootFolderViewWantsIconTintViewControllerPresented:(id)presented
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerWantsIconTintViewControllerPresented:self];
  }
}

- (void)rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:(id)presented
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerWantsHomeScreenWallpaperViewControllerPresented:self];
  }
}

- (void)presentWidgetEditingViewControllerFromViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [SBHMutableIconGridSizeClassSet alloc];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", @"SBHIconGridSizeClassNewsLargeTall", 0}];
  v6 = [(SBHMutableIconGridSizeClassSet *)v4 initWithGridSizeClasses:v5];

  if ([(SBRootFolderController *)self _addWidgetSheetStyle]== 1)
  {
    [(SBHMutableIconGridSizeClassSet *)v6 addGridSizeClass:@"SBHIconGridSizeClassExtraLarge"];
  }

  [(SBRootFolderController *)self presentWidgetEditingViewControllerFromViewController:controllerCopy withAllowedSizeClasses:v6 allowingNonStackableItems:1];
}

- (void)updatePresentedWidgetEditingViewController
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [folderDelegate addWidgetSheetConfigurationManagerForRootFolderController:self];
    addSheetViewController = [(SBRootFolderController *)self addSheetViewController];
    [v3 updatePresentedWidgetEditingViewController:addSheetViewController];
  }
}

- (id)applicationWidgetCollectionsForEditingViewController:(id)controller withAllowedSizeClasses:(id *)classes allowingNonStackableItems:(BOOL)items
{
  itemsCopy = items;
  controllerCopy = controller;
  _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
  v10 = [_addWidgetSheetConfigurationManager applicationWidgetCollectionsForEditingViewController:controllerCopy withAllowedSizeClasses:classes allowingNonStackableItems:itemsCopy];

  return v10;
}

- (void)presentWidgetEditingViewControllerFromViewController:(id)controller withAllowedSizeClasses:(id)classes allowingNonStackableItems:(BOOL)items
{
  itemsCopy = items;
  v62 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  classesCopy2 = classes;
  controllerCopy = controller;
  v10 = [(SBRootFolderController *)self applicationWidgetCollectionsForEditingViewController:controllerCopy withAllowedSizeClasses:&classesCopy allowingNonStackableItems:itemsCopy];
  v11 = classesCopy;

  listLayoutProvider = [(SBFolderController *)self listLayoutProvider];
  [(SBFolderController *)self gridSizeClassDomain];
  v51 = v53 = v11;
  v13 = [v11 chsWidgetFamilyMaskInDomain:?];
  v14 = itemsCopy;
  iconViewProvider = [(SBFolderController *)self iconViewProvider];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  _addWidgetSheetStyle = [(SBRootFolderController *)self _addWidgetSheetStyle];
  v52 = listLayoutProvider;
  if (_addWidgetSheetStyle == 1)
  {
    v18 = [(SBHAddWidgetSheetViewControllerBase *)[SBHPadAddSheetViewController alloc] initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:v13 addWidgetSheetStyle:v14, 1];
  }

  else
  {
    v18 = [(SBHAddWidgetSheetViewControllerBase *)[SBHAddWidgetSheetViewController alloc] initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:v13 addWidgetSheetStyle:v14, _addWidgetSheetStyle];
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate rootFolderController:self prepareAddSheetViewController:v18];
    }
  }

  _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
  -[SBHPadAddSheetViewController setAllowsFakeWidgets:](v18, "setAllowsFakeWidgets:", [_addWidgetSheetConfigurationManager allowsFakeWidgets]);
  [(SBHPadAddSheetViewController *)v18 setPresenter:controllerCopy];
  presenterType = [controllerCopy presenterType];

  if (presenterType == 2)
  {
    _stackConfigurationGridSize = [(SBRootFolderController *)self _stackConfigurationGridSize];
    [_addWidgetSheetConfigurationManager stackConfigurationSuggestedWidgetItems];
  }

  else
  {
    _stackConfigurationGridSize = [(SBRootFolderController *)self _currentHomeScreenEditingGridSize];
    [_addWidgetSheetConfigurationManager editingSuggestedWidgetItems];
  }
  v22 = ;
  [(SBHPadAddSheetViewController *)v18 setGalleryLayoutSize:_stackConfigurationGridSize];
  [(SBHPadAddSheetViewController *)v18 setSuggestedItems:v22 forGalleryLayoutSize:_stackConfigurationGridSize];
  -[SBHPadAddSheetViewController setAddWidgetSheetLocation:](v18, "setAddWidgetSheetLocation:", [_addWidgetSheetConfigurationManager addWidgetSheetLocation]);
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
  view = [(SBRootFolderController *)self view];
  [view bounds];
  v26 = v25;
  v28 = v27;

  if (_addWidgetSheetStyle == 1)
  {
    [(SBHPadAddSheetViewController *)v18 preferredInsetsForSheetPresentationInInterfaceOrientation:[(SBFolderController *)self orientation]];
    [(SBHPadAddSheetViewController *)v18 setPreferredContentSize:v26 - (v29 + v30), v28 - (v31 + v32)];
  }

  v33 = folderDelegate;
  sheetPresentationController = [(SBHPadAddSheetViewController *)v18 sheetPresentationController];
  [sheetPresentationController _setShouldDismissWhenTappedOutside:1];
  v54 = v10;
  v50 = _addWidgetSheetConfigurationManager;
  v35 = iconViewProvider;
  if (_addWidgetSheetStyle == 1)
  {
    [sheetPresentationController setPrefersGrabberVisible:{-[SBRootFolderController _useGrabberForSheetPresentation](self, "_useGrabberForSheetPresentation")}];
    [(SBRootFolderController *)self _additionalMinimumOffsetForSheetPresentation];
    [sheetPresentationController _setAdditionalMinimumTopInset:?];
    [sheetPresentationController setPreferredCornerRadius:SBHAddWidgetSheetPreferredSheetCornerRadiusForStyle(1)];
    [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];
    [sheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    traitOverrides = [sheetPresentationController traitOverrides];
    [traitOverrides setHorizontalSizeClass:2];
  }

  else
  {
    currentIconListView = [(SBFolderController *)self currentIconListView];
    [sheetPresentationController setSourceView:currentIconListView];

    [sheetPresentationController setPrefersGrabberVisible:{-[SBRootFolderController _useGrabberForSheetPresentation](self, "_useGrabberForSheetPresentation")}];
    [(SBRootFolderController *)self _additionalMinimumOffsetForSheetPresentation];
    [sheetPresentationController _setAdditionalMinimumTopInset:?];
    [sheetPresentationController setPreferredCornerRadius:SBHAddWidgetSheetPreferredSheetCornerRadiusForStyle(_addWidgetSheetStyle)];
  }

  traitCollection = [(SBRootFolderController *)self traitCollection];
  v39 = objc_opt_self();
  v40 = [traitCollection objectForTrait:v39];

  if (v40)
  {
    traitOverrides2 = [(SBHPadAddSheetViewController *)v18 traitOverrides];
    v42 = objc_opt_self();
    [traitOverrides2 setObject:v40 forTrait:v42];
  }

  if (_addWidgetSheetStyle == 1)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [sheetPresentationController _setMarginInCompactHeight:8.0];
      [sheetPresentationController _setMarginInRegularWidthRegularHeight:8.0];
    }

    [sheetPresentationController _setWantsBottomAttached:1];
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

- (BOOL)_internalDismissWidgetAddSheet:(BOOL)sheet clearAddSheetViewController:(BOOL)controller notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  controllerCopy = controller;
  sheetCopy = sheet;
  v9 = self->_addSheetViewController;
  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_11;
  }

  presentedViewController = [(SBRootFolderController *)self presentedViewController];

  if (presentedViewController != v9)
  {
    if (controllerCopy)
    {
      [(SBRootFolderController *)self setAddSheetViewController:0];
    }

    goto LABEL_5;
  }

  if (observersCopy)
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
  v16 = controllerCopy;
  v14[4] = self;
  v17 = observersCopy;
  v15 = v9;
  [(SBNestingViewController *)self dismissViewControllerAnimated:sheetCopy completion:v14];

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

- (void)scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SBRootFolderController *)self isTrailingCustomViewVisibleOrTransitionDestination])
  {
    [(SBFolderController *)self scrollUsingDecelerationAnimationToPageIndex:[(SBFolderController *)self lastIconPageIndex] withCompletionHandler:handlerCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBRootFolderController;
    [(SBFolderController *)&v5 scrollUsingDecelerationAnimationToDefaultPageWithCompletionHandler:handlerCopy];
  }
}

- (double)_additionalMinimumOffsetForSheetPresentation
{
  listLayoutProvider = [(SBFolderController *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  orientation = [(SBFolderController *)self orientation];
  [v4 layoutInsetsForOrientation:orientation];
  v7 = v6;
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v4, orientation, @"SBHIconGridSizeClassDefault");
  v9 = v7 + v8 * 0.5;
  view = [(SBRootFolderController *)self view];
  _UISheetMinimumTopInset();
  v12 = v11;

  return v9 - v12;
}

- (BOOL)_useGrabberForSheetPresentation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class
{
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = itemCopy;
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
    v15 = [(SBRootFolderController *)self widgetIconForDescriptor:v10 sizeClass:class];
  }

  else if (v14)
  {
    v16 = [v14 descriptorsForSizeClass:class];
    v15 = [(SBRootFolderController *)self widgetIconForDescriptors:v16 sizeClass:class];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  descriptorCopy = descriptor;
  gridSizeClassDomain = [(SBFolderController *)self gridSizeClassDomain];
  v8 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptor:descriptorCopy inDomain:gridSizeClassDomain];

  v9 = [gridSizeClassDomain iconGridSizeClassForCHSWidgetFamily:class];
  [(SBIcon *)v8 setGridSizeClass:v9];

  return v8;
}

- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class
{
  descriptorsCopy = descriptors;
  gridSizeClassDomain = [(SBFolderController *)self gridSizeClassDomain];
  v8 = [[SBWidgetIcon alloc] initWithCHSWidgetDescriptors:descriptorsCopy inDomain:gridSizeClassDomain];

  v9 = [gridSizeClassDomain iconGridSizeClassForCHSWidgetFamily:class];
  [(SBIcon *)v8 setGridSizeClass:v9];

  return v8;
}

- (void)didBeginDraggingWidgetIcon:(id)icon
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([(SBRootFolderController *)self _addWidgetSheetStyle]== 1)
  {
    addSheetViewController = [(SBRootFolderController *)self addSheetViewController];
    sheetPresentationController = [addSheetViewController sheetPresentationController];
    v6 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"AddWidgetSheetDodge" resolver:&__block_literal_global_2];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [sheetPresentationController setDetents:v7];

    [sheetPresentationController setLargestUndimmedDetentIdentifier:@"AddWidgetSheetDodge"];
    v8 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__SBRootFolderController_didBeginDraggingWidgetIcon___block_invoke_2;
    v14[3] = &unk_1E8088C90;
    v9 = addSheetViewController;
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

- (void)didEndDraggingWidgetIcon:(id)icon
{
  _addWidgetSheetStyle = [(SBRootFolderController *)self _addWidgetSheetStyle];
  addSheetViewController = [(SBRootFolderController *)self addSheetViewController];
  if ([addSheetViewController _appearState] && _addWidgetSheetStyle == 1)
  {
    v6 = dispatch_time(0, 600000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SBRootFolderController_didEndDraggingWidgetIcon___block_invoke;
    v7[3] = &unk_1E8088F18;
    v7[4] = self;
    v8 = addSheetViewController;
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

- (void)stackConfigurationViewControllerWillAppear:(id)appear
{
  appearCopy = appear;
  v5 = objc_opt_class();
  v10 = appearCopy;
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

  stackConfigurationViewController = [(SBRootFolderController *)self stackConfigurationViewController];

  if (stackConfigurationViewController != v7)
  {
    [(SBRootFolderController *)self setStackConfigurationViewController:v7];
    _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [_addWidgetSheetConfigurationManager fetchGalleryContentForStackConfigurationViewController:v7 addWidgetSheetViewController:self->_addSheetViewController];
  }

  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillAppear:v10];
}

- (void)stackConfigurationViewControllerDidAppear:(id)appear
{
  appearCopy = appear;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidAppear:?];
  v4 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:0 forReason:@"Stack Configuration"];
  if (v4)
  {
    userInfo = [appearCopy userInfo];
    [userInfo setObject:v4 forKey:@"SBRootFolderControllerKeepRootStaticAssertion"];
  }
}

- (void)stackConfigurationViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_class();
  v10 = disappearCopy;
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

  stackConfigurationViewController = [(SBRootFolderController *)self stackConfigurationViewController];

  if (stackConfigurationViewController == v7)
  {
    [(SBRootFolderController *)self setStackConfigurationViewController:0];
    _addWidgetSheetConfigurationManager = [(SBRootFolderController *)self _addWidgetSheetConfigurationManager];
    [_addWidgetSheetConfigurationManager setStackConfigurationSuggestedWidgetItems:0];
  }

  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidDisappear:v10];
}

- (void)stackConfigurationInteraction:(id)interaction requestsPresentAddWidgetSheetFromPresenter:(id)presenter
{
  presenterCopy = presenter;
  configuration = [interaction configuration];
  sizeClass = [configuration sizeClass];

  v8 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:sizeClass];
  [(SBRootFolderController *)self presentWidgetEditingViewControllerFromViewController:presenterCopy withAllowedSizeClasses:v8 allowingNonStackableItems:0];
}

- (id)stackConfigurationInteraction:(id)interaction draggedIconForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [folderDelegate rootFolderController:self draggedIconForStackConfigurationInteractionForIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)stackConfigurationInteraction:(id)interaction isConsumingDropSession:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self noteDragItemWasConsumedExternallyForDropSession:sessionCopy];
  }

  iconModel = [(SBFolderController *)self iconModel];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [sessionCopy items];
  v9 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(items);
        }

        sbh_appDragLocalContext = [*(*(&v15 + 1) + 8 * v12) sbh_appDragLocalContext];
        uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];
        [iconModel removeIconForIdentifier:uniqueIdentifier];

        ++v12;
      }

      while (v10 != v12);
      v10 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)stackConfigurationInteraction:(id)interaction noteDidRemoveSuggestedWidgetIcon:(id)icon
{
  iconCopy = icon;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self noteDidRemoveSuggestedWidgetIcon:iconCopy];
  }
}

- (void)stackConfigurationInteractionWillAnimateWidgetInsertion:(id)insertion
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerWillAnimateWidgetInsertionForStackConfigurationInteraction:self];
  }
}

- (id)stackConfigurationInteraction:(id)interaction dragPreviewForIconView:(id)view
{
  viewCopy = view;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [folderDelegate rootFolderController:self dragPreviewForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)windowForIconDragPreviewsForStackConfigurationInteraction:(id)interaction forWindowScene:(id)scene
{
  sceneCopy = scene;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [folderDelegate windowForStackConfigurationIconDragPreviewsForRootFolderController:self forWindowScene:sceneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stackConfigurationInteraction:(id)interaction promoteSuggestedWidget:(id)widget withinStack:(id)stack
{
  widgetCopy = widget;
  stackCopy = stack;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [folderDelegate rootFolderController:self promoteSuggestedWidget:widgetCopy withinStack:stackCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)stackConfigurationInteraction:(id)interaction allowsRemovalOfIconDataSource:(id)source
{
  sourceCopy = source;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [folderDelegate rootFolderController:self allowsRemovalOfIconDataSourceWithinStack:sourceCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SBRootFolderController_addWidgetSheetViewController_didSelectWidgetIconView___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  icon = [viewCopy icon];
  if ([icon isWidgetIcon])
  {
    v10 = icon;
    presenter = [controllerCopy presenter];
    folderDelegate = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate rootFolderController:self handleInsertionForWidgetIcon:v10 withReferenceIconView:viewCopy fromPresenter:presenter dismissViewControllerHandler:v8];
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

- (void)addWidgetSheetViewControllerWillAppear:(id)appear
{
  appearCopy = appear;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillAppear:?];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self willPresentWidgetEditingViewController:appearCopy];
  }
}

- (void)addWidgetSheetViewControllerDidAppear:(id)appear
{
  appearCopy = appear;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidAppear:?];
  v4 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:[(SBRootFolderController *)self snapshotTypeForIconImageViewControllersUnderWidgetAddSheet] inAllPagesExcluding:0 forReason:@"Add Widget Sheet"];
  if (v4)
  {
    userInfo = [appearCopy userInfo];
    [userInfo setObject:v4 forKey:@"SBRootFolderControllerKeepRootStaticAssertion"];
  }

  stackConfigurationViewController = [(SBRootFolderController *)self stackConfigurationViewController];
  v7 = stackConfigurationViewController;
  if (stackConfigurationViewController)
  {
    v8 = [stackConfigurationViewController keepIconImageViewControllersStaticForReason:@"Add Widget Sheet"];
    if (v8)
    {
      userInfo2 = [appearCopy userInfo];
      [userInfo2 setObject:v8 forKey:@"SBRootFolderControllerKeepStackStaticAssertion"];
    }
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didPresentWidgetEditingViewController:appearCopy];
  }
}

- (void)addWidgetSheetViewControllerWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerWillDisappear:?];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self willDismissWidgetEditingViewController:disappearCopy];
  }
}

- (void)addWidgetSheetViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  [(SBRootFolderController *)self _handleWidgetSheetViewControllerDidDisappear:?];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didDismissWidgetEditingViewController:disappearCopy];
  }
}

- (void)_handleWidgetSheetViewControllerWillAppear:(id)appear
{
  appearCopy = appear;
  presenter = [appearCopy presenter];
  [presenter setSuppressesEditingStateForListView:1];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:appearCopy visible:1];

  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__SBRootFolderController__handleWidgetSheetViewControllerWillAppear___block_invoke;
  v8[3] = &unk_1E8088C90;
  v9 = presenter;
  v7 = presenter;
  [v6 animateWithDuration:v8 animations:0 completion:0.3];
}

- (void)_handleWidgetSheetViewControllerWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  presenter = [disappearCopy presenter];
  [presenter setSuppressesEditingStateForListView:0];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:disappearCopy visible:0];
  v6 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__SBRootFolderController__handleWidgetSheetViewControllerWillDisappear___block_invoke;
  v12[3] = &unk_1E8088C90;
  v13 = presenter;
  v7 = presenter;
  [v6 animateWithDuration:v12 animations:0 completion:0.3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBRootFolderController__handleWidgetSheetViewControllerWillDisappear___block_invoke_2;
  v10[3] = &unk_1E80893C8;
  v11 = disappearCopy;
  v8 = disappearCopy;
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

- (void)_handleWidgetSheetViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  presenter = [disappearCopy presenter];
  [presenter updateExtraButtonVisibilityAnimated:1];
  [(SBRootFolderController *)self _updateStatusBarHiddenForWidgetSheetViewController:disappearCopy visible:0];
}

- (void)_updateStatusBarHiddenForWidgetSheetViewController:(id)controller visible:(BOOL)visible
{
  visibleCopy = visible;
  controllerCopy = controller;
  nonEditingStatusBarHidingReason = objc_opt_respondsToSelector();
  v7 = controllerCopy;
  if (nonEditingStatusBarHidingReason)
  {
    nonEditingStatusBarHidingReason = [controllerCopy nonEditingStatusBarHidingReason];
    v7 = controllerCopy;
    if (nonEditingStatusBarHidingReason)
    {
      v8 = nonEditingStatusBarHidingReason;
      if (visibleCopy)
      {
        [(SBFolderController *)self _hideStatusBarForReason:nonEditingStatusBarHidingReason animated:1];
        [(SBFolderController *)self _hideFakeStatusBarForReason:v8 animated:1];
      }

      else
      {
        [(SBFolderController *)self _unhideStatusBarForReason:nonEditingStatusBarHidingReason];
        [(SBFolderController *)self _unhideFakeStatusBarForReason:v8 animated:1];
      }

      v7 = controllerCopy;
    }
  }

  MEMORY[0x1EEE66BB8](nonEditingStatusBarHidingReason, v7);
}

- (BOOL)canShowWidgetIntroduction
{
  v12 = *MEMORY[0x1E69E9840];
  currentPageIndex = [(SBFolderController *)self currentPageIndex];
  firstIconPageIndex = [(SBFolderController *)self firstIconPageIndex];
  v5 = [(SBRootFolderController *)self isDisplayingWidgetIntroductionOnPage:currentPageIndex];
  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = currentPageIndex == firstIconPageIndex;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Root folder can show widget discoverability= %ld, is showing = %ld", &v8, 0x16u);
  }

  return currentPageIndex == firstIconPageIndex && !v5;
}

- (BOOL)iconListViewsContainWidget
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  iconListViews = [(SBFolderController *)self iconListViews];
  v3 = [iconListViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(iconListViews);
        }

        if ([*(*(&v7 + 1) + 8 * i) containsWidget])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [iconListViews countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (BOOL)iconListViewContainsWidget:(unint64_t)widget
{
  v3 = [(SBFolderController *)self iconListViewAtIndex:widget];
  containsWidget = [v3 containsWidget];

  return containsWidget;
}

- (BOOL)isDisplayingWidgetIntroductionOnPage:(int64_t)page
{
  v4 = [(SBFolderController *)self iconListViewIndexForPageIndex:page];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [(SBFolderController *)self iconListViewAtIndex:v4];
  isDisplayingWidgetIntroduction = [v6 isDisplayingWidgetIntroduction];

  return isDisplayingWidgetIntroduction;
}

- (void)updatePronouncedContainerViewVisibilityIfPossible:(BOOL)possible vertical:(BOOL)vertical
{
  verticalCopy = vertical;
  possibleCopy = possible;
  v19 = *MEMORY[0x1E69E9840];
  currentPageIndex = [(SBFolderController *)self currentPageIndex];
  v8 = [(SBFolderController *)self iconListViewIndexForPageIndex:currentPageIndex];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    if (!possibleCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [(SBRootFolderController *)self iconListViewContainsWidget:v8];
    if (!possibleCopy)
    {
LABEL_8:
      firstIconPageIndex = [(SBFolderController *)self firstIconPageIndex];
      v10 = [(SBFolderController *)self iconListViewAtIndex:[(SBFolderController *)self iconListViewIndexForPageIndex:firstIconPageIndex]];
      v12 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218496;
        v14 = possibleCopy;
        v15 = 2048;
        v16 = currentPageIndex;
        v17 = 2048;
        v18 = firstIconPageIndex;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Should add pronounced container: toVisible(%ld), currentPageIndex(%ld), firstIconPageIndex(%ld)", &v13, 0x20u);
      }

      if (currentPageIndex == firstIconPageIndex && possibleCopy)
      {
        [v10 layoutIconsNow];
        [v10 addPronouncedContainerViewWithDelegate:self vertical:verticalCopy];
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
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderControllerDidAcceptWidgetIntroduction:self];
  }
}

- (void)rejectWidgetIntroduction
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [folderDelegate rootFolderControllerDidSetPrototypeSettingEditAsUndo:self])
  {
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate rootFolderControllerDidUndoWidgetIntroduction:self];
    }
  }

  else
  {
    [(SBRootFolderController *)self updatePronouncedContainerViewVisibilityIfPossible:0 vertical:0];
    [folderDelegate folderControllerShouldBeginEditing:self withHaptic:0];
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate rootFolderControllerDidEditWidgetIntroduction:self];
    }
  }
}

- (id)viewControllerForPageState:(int64_t)state
{
  if ((state | 2) == 3)
  {
    searchPresentableViewController = [(SBRootFolderController *)self searchPresentableViewController];
    v5 = searchPresentableViewController;
    if (searchPresentableViewController)
    {
      pullDownSearchViewController = searchPresentableViewController;
    }

    else
    {
      pullDownSearchViewController = [(SBRootFolderController *)self pullDownSearchViewController];
    }

    v7 = pullDownSearchViewController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)viewControllerForTransitioningFromPageState:(int64_t)state toPageState:(int64_t)pageState
{
  if ((pageState - 1) < 4)
  {
    goto LABEL_2;
  }

  if (!pageState)
  {
LABEL_3:
    v6 = [(SBRootFolderController *)self viewControllerForPageState:state, v4];

    return v6;
  }

  if (pageState == -1)
  {
LABEL_2:
    state = pageState;
    goto LABEL_3;
  }

  v6 = 0;

  return v6;
}

- (void)addPageStateObserver:(id)observer
{
  observerCopy = observer;
  pageStateObservers = self->_pageStateObservers;
  v8 = observerCopy;
  if (!pageStateObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_pageStateObservers;
    self->_pageStateObservers = weakObjectsHashTable;

    observerCopy = v8;
    pageStateObservers = self->_pageStateObservers;
  }

  [(NSHashTable *)pageStateObservers addObject:observerCopy];
}

- (void)enumeratePageStateObserversUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_pageStateObservers allObjects];
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

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)addWidgetAddSheetObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_widgetAddSheetObservers)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    widgetAddSheetObservers = self->_widgetAddSheetObservers;
    self->_widgetAddSheetObservers = strongToStrongObjectsMapTable;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v8 = self->_widgetAddSheetObservers;
  v9 = [observerCopy copy];
  v10 = _Block_copy(v9);
  [(NSMapTable *)v8 setObject:v10 forKey:uUID];

  return uUID;
}

- (void)enumerateWidgetAddSheetObserversUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_widgetAddSheetObservers objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isPresentingIconLocation:(id)location
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  iconLocation = [objc_opt_class() iconLocation];
  v6 = [locationCopy isEqualToString:iconLocation];

  if (v6 & 1) != 0 || -[SBFolderController hasDock](self, "hasDock") && !-[SBRootFolderController isDockExternal](self, "isDockExternal") && (-[SBRootFolderController dockListView](self, "dockListView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 iconLocation], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", locationCopy), v9, v8, (v10))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    iconListViews = [(SBFolderController *)self iconListViews];
    v7 = [iconListViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(iconListViews);
          }

          iconLocation2 = [*(*(&v17 + 1) + 8 * i) iconLocation];
          v15 = [locationCopy isEqualToString:iconLocation2];

          if (v15)
          {
            LOBYTE(v7) = 1;
            goto LABEL_16;
          }
        }

        v7 = [iconListViews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  allowsAutoscrollToLeadingCustomView = [rootFolderView allowsAutoscrollToLeadingCustomView];

  return allowsAutoscrollToLeadingCustomView;
}

- (void)setAllowsAutoscrollToLeadingCustomView:(BOOL)view
{
  viewCopy = view;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setAllowsAutoscrollToLeadingCustomView:viewCopy];
}

- (UIView)searchableLeadingCustomWrapperView
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  leadingCustomViewWrapperView = [rootFolderView leadingCustomViewWrapperView];

  return leadingCustomViewWrapperView;
}

- (UIView)searchBackdropView
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  searchBackdropView = [rootFolderView searchBackdropView];

  return searchBackdropView;
}

- (SBFParallaxSettings)parallaxSettings
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  parallaxSettings = [rootFolderView parallaxSettings];

  return parallaxSettings;
}

- (void)setParallaxDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView _setParallaxDisabled:disabledCopy forReason:reasonCopy];
}

- (int64_t)leadingCustomViewPageIndex
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  leadingCustomViewPageIndex = [rootFolderView leadingCustomViewPageIndex];

  return leadingCustomViewPageIndex;
}

- (int64_t)trailingCustomViewPageIndex
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  trailingCustomViewPageIndex = [rootFolderView trailingCustomViewPageIndex];

  return trailingCustomViewPageIndex;
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v5 = [rootFolderView pageIndexForLeadingCustomPageIndex:index];

  return v5;
}

- (unint64_t)leadingCustomPageIndexForPageIndex:(int64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v5 = [rootFolderView leadingCustomPageIndexForPageIndex:index];

  return v5;
}

- (int64_t)pageIndexForTrailingCustomPageIndex:(unint64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v5 = [rootFolderView pageIndexForTrailingCustomPageIndex:index];

  return v5;
}

- (unint64_t)trailingCustomPageIndexForPageIndex:(int64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v5 = [rootFolderView trailingCustomPageIndexForPageIndex:index];

  return v5;
}

- (unint64_t)typeForPage:(int64_t)page
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  v5 = [rootFolderView typeForPage:page];

  return v5;
}

- (BOOL)isPageManagementUIVisible
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isPageManagementUIVisible = [rootFolderView isPageManagementUIVisible];

  return isPageManagementUIVisible;
}

- (BOOL)isPageManagementUITransitioningOutOfVisible
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isPageManagementUITransitioningOutOfVisible = [rootFolderView isPageManagementUITransitioningOutOfVisible];

  return isPageManagementUITransitioningOutOfVisible;
}

- (void)enterPageManagementUIWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView enterPageManagementUIWithCompletionHandler:handlerCopy];
}

- (void)exitPageManagementUIWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView exitPageManagementUIWithCompletionHandler:handlerCopy];
}

- (void)setOccludedByOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setOccludedByOverlay:overlayCopy];
}

- (BOOL)isOccludedByOverlay
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isOccludedByOverlay = [rootFolderView isOccludedByOverlay];

  return isOccludedByOverlay;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = SBRootFolderController;
  coordinatorCopy = coordinator;
  [(SBFolderController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  containerView = [coordinatorCopy containerView];
  _window = [containerView _window];

  _toWindowOrientation = [_window _toWindowOrientation];
  _fromWindowOrientation = [_window _fromWindowOrientation];
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
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];

  if ((_toWindowOrientation - 1) < 2 != (_fromWindowOrientation - 1) < 2)
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

- (void)folderViewWillUpdatePageDuringScrolling:(id)scrolling
{
  v8.receiver = self;
  v8.super_class = SBRootFolderController;
  scrollingCopy = scrolling;
  [(SBFolderController *)&v8 folderViewWillUpdatePageDuringScrolling:scrollingCopy];
  scrollView = [scrollingCopy scrollView];

  if ([(SBFolderController *)self userInterfaceLayoutDirection])
  {
    v6 = MEMORY[0x1E698E5C8];
  }

  else
  {
    v6 = MEMORY[0x1E698E5D0];
  }

  v7 = [(SBRootFolderController *)self updateStateTransitionsDuringScrollingScrollView:scrollView pageBounceComparator:v6];
}

- (void)folderViewDidScroll:(id)scroll
{
  v5.receiver = self;
  v5.super_class = SBRootFolderController;
  [(SBFolderController *)&v5 folderViewDidScroll:scroll];
  implicitScrollTransition = [(SBRootFolderController *)self implicitScrollTransition];
  if (implicitScrollTransition && ![(SBFolderController *)self isScrolling]&& [(SBRootFolderController *)self isTransitioningHorizontally])
  {
    [implicitScrollTransition endTransitionSuccessfully:1];
    [(SBRootFolderController *)self setImplicitScrollTransition:0];
  }
}

- (void)folderViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  v9.receiver = self;
  v9.super_class = SBRootFolderController;
  [(SBFolderController *)&v9 folderViewDidEndScrolling:scrollingCopy];
  if ([(SBRootFolderController *)self isTransitioningHorizontally])
  {
    [scrollingCopy currentScrollOffset];
    [(SBRootFolderController *)self pageStateTransitionSnapshotForScrollOffset:?];
    v5 = [(SBRootFolderController *)self destinationPageState]== 0;
    implicitScrollTransition = [(SBRootFolderController *)self implicitScrollTransition];
    [implicitScrollTransition endTransitionSuccessfully:v5];
    [(SBRootFolderController *)self setImplicitScrollTransition:0];
  }

  isOnLeadingCustomPage = [scrollingCopy isOnLeadingCustomPage];
  searchGesture = [(SBRootFolderController *)self searchGesture];
  [searchGesture setDisabled:isOnLeadingCustomPage forReason:@"SBRootFolderShowingLeadingCustomViewReason"];

  if ([(SBFolderController *)self isEditing])
  {
    [(SBRootFolderController *)self updateExtraButtonVisibilityAnimated:1];
  }
}

- (void)folderView:(id)view willAnimateScrollToPageIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = SBRootFolderController;
  [(SBFolderController *)&v6 folderView:view willAnimateScrollToPageIndex:index];
  if (![(SBRootFolderController *)self isTransitioningHorizontally])
  {
    if ([(SBRootFolderController *)self isTransitioningPageState])
    {
      currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
      [currentTransitionHandle endTransitionSuccessfully:0];
    }
  }
}

- (void)folderView:(id)view didBeginEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didBeginEditingTitle:titleCopy];
  }
}

- (void)folderView:(id)view didEndEditingTitle:(id)title
{
  titleCopy = title;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate folderController:self didEndEditingTitle:titleCopy];
  }
}

- (void)folderView:(id)view currentPageIndexWillChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = SBRootFolderController;
  [(SBFolderController *)&v7 folderView:view currentPageIndexWillChange:change];
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    if (![(SBRootFolderController *)self isTransitioningHorizontally])
    {
      isIconPageVisibleOrTransitionDestination = [(SBRootFolderController *)self isIconPageVisibleOrTransitionDestination];
      currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
      [currentTransitionHandle endTransitionSuccessfully:isIconPageVisibleOrTransitionDestination];
    }
  }
}

- (void)folderView:(id)view currentPageIndexDidChange:(int64_t)change
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = SBRootFolderController;
  [(SBFolderController *)&v13 folderView:viewCopy currentPageIndexDidChange:change];
  v7 = viewCopy;
  isOnLeadingCustomPage = [v7 isOnLeadingCustomPage];
  scrollView = [v7 scrollView];
  isScrollAnimating = [scrollView isScrollAnimating];

  searchGesture = [(SBRootFolderController *)self searchGesture];
  if ([(SBRootFolderController *)self isPullDownSearchVisibleOrTransitioning])
  {
    [searchGesture resetAnimated:isScrollAnimating];
  }

  if ((([(SBRootFolderController *)self isTransitioningPageState]| isScrollAnimating) & 1) == 0 && ![(SBFolderController *)self isScrolling]&& isOnLeadingCustomPage != [(SBRootFolderController *)self isLeadingCustomViewVisible])
  {
    if (isOnLeadingCustomPage)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [(SBRootFolderController *)self performPageStateTransitionToState:v12 reason:@"page index changed" animated:0 completionHandler:0];
  }

  [searchGesture setDisabled:isOnLeadingCustomPage forReason:@"SBRootFolderShowingLeadingCustomViewReason"];
}

- (void)rootFolderView:(id)view wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{x, y}];
  }
}

- (double)distanceToTopOfSpotlightIconsForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate distanceToTopOfSpotlightIconsForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)maxExternalDockHeightForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate maxExternalDockHeightForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)externalDockHeightForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate externalDockHeightForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (double)preferredExternalDockVerticalMarginForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  v5 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate preferredExternalDockVerticalMarginForRootFolderController:self];
    v5 = v6;
  }

  return v5;
}

- (void)rootFolderViewDidChangeSuppressesEditingStateForListViews:(id)views
{
  viewsCopy = views;
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self setSuppressesEditingStateForExternalDockListViews:{objc_msgSend(viewsCopy, "suppressesEditingStateForListViews")}];
  }
}

- (id)backgroundViewForDockForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [folderDelegate backgroundViewForDockForRootFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)backgroundViewForEditingDoneButtonForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [folderDelegate backgroundViewForEditingDoneButtonForRootFolderController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)rootFolderView:(id)view didOverscrollOnFirstPageByAmount:(double)amount
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didOverscrollOnFirstPageByAmount:amount];
  }
}

- (void)rootFolderView:(id)view didEndOverscrollOnFirstPageWithVelocity:(double)velocity translation:(double)translation
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didEndOverscrollOnFirstPageWithVelocity:velocity translation:translation];
  }
}

- (void)rootFolderView:(id)view didOverscrollOnLastPageByAmount:(double)amount
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didOverscrollOnLastPageByAmount:amount];
  }
}

- (void)rootFolderView:(id)view didEndOverscrollOnLastPageWithVelocity:(double)velocity translation:(double)translation
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didEndOverscrollOnLastPageWithVelocity:velocity translation:translation];
  }
}

- (void)rootFolderViewWantsToEndEditing:(id)editing
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  [folderDelegate folderControllerShouldEndEditing:self];
}

- (void)rootFolderViewWantsSearchPresented:(id)presented
{
  [(SBRootFolderController *)self setPresentationSource:8];
  [(SBRootFolderController *)self presentSpotlightAnimated:1 completionHandler:0];

  [(SBRootFolderController *)self setPresentationSource:0];
}

- (void)rootFolderView:(id)view willPresentPageManagementWithLayoutManager:(id)manager animator:(id)animator context:(id)context
{
  managerCopy = manager;
  animatorCopy = animator;
  contextCopy = context;
  v12 = MEMORY[0x1E696AC90];
  viewCopy = view;
  v14 = [v12 indexSetWithIndex:{objc_msgSend(viewCopy, "currentPageIndex")}];
  v15 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v14 forReason:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];

  if (v15)
  {
    [contextCopy setObject:v15 forKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  }

  [(SBRootFolderController *)self setSuppressesExtraEditingButtons:0];
  folder = [viewCopy folder];

  -[SBRootFolderController setHiddenListCountWhenPageManagementPresented:](self, "setHiddenListCountWhenPageManagementPresented:", [folder hiddenListCount]);
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self willPresentPageManagementWithLayoutManager:managerCopy animator:animatorCopy context:contextCopy];
  }
}

- (void)rootFolderView:(id)view willDismissPageManagementUsingAnimator:(id)animator context:(id)context
{
  animatorCopy = animator;
  contextCopy = context;
  v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(view, "currentPageIndex")}];
  v10 = [(SBFolderController *)self keepIconImageViewControllersSnapshotsOfType:1 inAllPagesExcluding:v9 forReason:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];

  if (v10)
  {
    [contextCopy setObject:v10 forKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self willDismissPageManagementUsingAnimator:animatorCopy context:contextCopy];
  }
}

- (void)rootFolderView:(id)view didDismissPageManagementWithLayoutManager:(id)manager context:(id)context
{
  viewCopy = view;
  managerCopy = manager;
  contextCopy = context;
  v10 = [contextCopy objectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  [v10 invalidate];
  [contextCopy removeObjectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIVisibleReason"];
  v11 = [contextCopy objectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];

  [v11 invalidate];
  [contextCopy removeObjectForKey:@"SBKeepIconImageViewControllersStaticForPageManagementUIDismissalReason"];
  homeScreenDefaults = [(SBRootFolderController *)self homeScreenDefaults];
  if (([homeScreenDefaults pagesHaveEverBeenHidden] & 1) == 0)
  {
    folder = [viewCopy folder];
    hiddenListCount = [folder hiddenListCount];
    if (hiddenListCount > [(SBRootFolderController *)self hiddenListCountWhenPageManagementPresented])
    {
      [homeScreenDefaults setPagesHaveEverBeenHidden:1];
      v25 = MEMORY[0x1E69DC650];
      v15 = SBHBundle();
      v16 = [v15 localizedStringForKey:@"PAGE_HIDING_ALERT_TITLE" value:&stru_1F3D472A8 table:?];
      v17 = SBHBundle();
      [v17 localizedStringForKey:@"PAGE_HIDING_ALERT_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v18 = v26 = managerCopy;
      v19 = [v25 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = SBHBundle();
      v22 = [v21 localizedStringForKey:@"OK" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v23 = [v20 actionWithTitle:v22 style:0 handler:0];

      [v19 addAction:v23];
      [(SBRootFolderController *)self presentViewController:v19 animated:1 completion:0];

      managerCopy = v26;
    }
  }

  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self didDismissPageManagementWithLayoutManager:managerCopy context:contextCopy];
  }
}

- (id)iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:(id)view
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate iconLocationForListsWithNonDefaultSizedIconsForRootFolderController:self];
  }

  else
  {
    [objc_opt_class() iconLocation];
  }
  v5 = ;

  return v5;
}

- (void)_presentPageManagement:(id)management
{
  managementCopy = management;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView enterPageManagementUIWithCompletionHandler:managementCopy];
}

- (void)_dismissPageManagementIfPresented:(id)presented
{
  presentedCopy = presented;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView exitPageManagementUIWithCompletionHandler:presentedCopy];
}

- (void)performPageStateTransitionToState:(int64_t)state pageIndex:(int64_t)index reason:(id)reason animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  reasonCopy = reason;
  handlerCopy = handler;
  if ([(SBRootFolderController *)self canTransitionPageStateToState:state])
  {
    pageState = [(SBRootFolderController *)self pageState];
    if ([(SBRootFolderController *)self isAnySearchTransitioning]&& (!state || !pageState))
    {
      pageState = [(SBRootFolderController *)self destinationPageState];
    }

    currentPageIndex = [(SBFolderController *)self currentPageIndex];
    if (state <= 1)
    {
      if (state == -1)
      {
        goto LABEL_23;
      }

      if (state)
      {
        if (state != 1)
        {
          goto LABEL_25;
        }

        searchGesture = [(SBRootFolderController *)self searchGesture];
        [searchGesture revealAnimated:animatedCopy];
        goto LABEL_22;
      }

      if (pageState == 1)
      {
        searchGesture = [(SBRootFolderController *)self searchGesture];
        [searchGesture resetAnimated:animatedCopy];
LABEL_22:

        goto LABEL_23;
      }

      firstIconPageIndex = [(SBFolderController *)self firstIconPageIndex];
      goto LABEL_35;
    }

    v16 = currentPageIndex;
    if (state != 2)
    {
      if (state != 3)
      {
        if (state != 4)
        {
          goto LABEL_25;
        }

        if (index == 0x7FFFFFFFFFFFFFFFLL || [(SBRootFolderController *)self typeForPage:index]!= 2)
        {
          if ([(SBRootFolderController *)self typeForPage:v16]== 2)
          {
            goto LABEL_23;
          }

          firstIconPageIndex = [(SBRootFolderController *)self trailingCustomViewPageIndex];
          goto LABEL_35;
        }

LABEL_36:
        selfCopy4 = self;
        indexCopy = index;
        goto LABEL_37;
      }

      selfCopy3 = self;
      v19 = 3;
LABEL_29:
      [(SBRootFolderController *)selfCopy3 performDefaultPageStateTransitionToState:v19 reason:reasonCopy animated:animatedCopy completionHandler:handlerCopy];
      goto LABEL_25;
    }

    if (pageState == 3)
    {
      selfCopy3 = self;
      v19 = 2;
      goto LABEL_29;
    }

    if (index != 0x7FFFFFFFFFFFFFFFLL && ![(SBRootFolderController *)self typeForPage:index])
    {
      goto LABEL_36;
    }

    if ([(SBRootFolderController *)self typeForPage:v16])
    {
      firstIconPageIndex = [(SBRootFolderController *)self leadingCustomViewPageIndex];
LABEL_35:
      indexCopy = firstIconPageIndex;
      selfCopy4 = self;
LABEL_37:
      [(SBFolderController *)selfCopy4 setCurrentPageIndex:indexCopy animated:animatedCopy completion:handlerCopy];
      goto LABEL_25;
    }
  }

LABEL_23:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_25:
}

- (void)performDefaultPageStateTransitionToState:(int64_t)state reason:(id)reason animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  v11 = [(SBRootFolderController *)self beginPageStateTransitionToState:state reason:reason animated:animatedCopy interactive:0];
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
  v15 = handlerCopy;
  v21 = v15;
  v16 = _Block_copy(v19);
  if (animatedCopy)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v13 animations:0.3];
    [v17 addCompletion:v16];
    folderDelegate = [(SBFolderController *)self folderDelegate];
    if (objc_opt_respondsToSelector())
    {
      [folderDelegate rootFolderController:self willUsePropertyAnimator:v17 toTransitionToState:state];
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

- (void)presentSpotlightAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if ([(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]|| [(SBRootFolderController *)self isTransitioningPageState]|| [(SBFolderController *)self isScrolling])
  {
    v6 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    (*(handlerCopy + 2))(handlerCopy);
  }

  else
  {
    searchPresenter = [(SBRootFolderController *)self searchPresenter];
    v8 = searchPresenter;
    if (searchPresenter)
    {
      [searchPresenter presentSearchAnimated:animatedCopy];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))();
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

      [(SBRootFolderController *)self performPageStateTransitionToState:v9 reason:@"present spotlight" animated:animatedCopy completionHandler:handlerCopy];
    }
  }

  v6 = handlerCopy;
LABEL_7:
}

- (void)dismissSpotlightAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if ([(SBRootFolderController *)self isPullDownSearchVisibleOrTransitioningToVisible])
  {
    searchPresenter = [(SBRootFolderController *)self searchPresenter];
    v7 = searchPresenter;
    if (searchPresenter)
    {
      [searchPresenter dismissSearchAnimated:animatedCopy];
      if (handlerCopy)
      {
        handlerCopy[2]();
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

      [(SBRootFolderController *)self performPageStateTransitionToState:v9 reason:@"dismiss spotlight" animated:animatedCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    v8 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_13;
    }

    (handlerCopy[2])(handlerCopy);
  }

  v8 = handlerCopy;
LABEL_13:
}

- (id)updateStateTransitionsDuringScrollingScrollView:(id)view pageBounceComparator:(void *)comparator
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView scrollOffsetForPageIndexCalculation];
  v8 = v7;
  v40 = 0.0;
  v38 = 0u;
  v39 = 0u;
  [(SBRootFolderController *)self pageStateTransitionSnapshotForScrollOffset:v7];
  implicitScrollTransition = [(SBRootFolderController *)self implicitScrollTransition];
  v10 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v11 = implicitScrollTransition;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (*(&v38 + 1) == -1)
  {
    if (isTransitioningPageState)
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

      [implicitScrollTransition endTransitionSuccessfully:v17];
      [(SBRootFolderController *)self setImplicitScrollTransition:0];
    }

    v20 = v38;
    if (v20 == [(SBRootFolderController *)self pageState])
    {
      goto LABEL_28;
    }

    pageState = [(SBRootFolderController *)self pageState];
    currentPageIndex = [(SBFolderController *)self currentPageIndex];
    v23 = [rootFolderView _pageIndexForOffset:v8];
    LOBYTE(v34) = 1;
    v24 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:pageState pageIndex:currentPageIndex toPageState:v38 pageIndex:v23 reason:@"implicit scroll" animated:1 interactive:v34];
    v25 = v24;
    v26 = 1.0;
    goto LABEL_32;
  }

  if (!isTransitioningPageState)
  {
    goto LABEL_27;
  }

  if (!v12)
  {
    if (!currentTransitionHandle)
    {
      goto LABEL_27;
    }

    v18 = v38 == [(SBRootFolderController *)self destinationPageState];
    v19 = currentTransitionHandle;
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
        [implicitScrollTransition setTransitionProgress:v16];
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v19 = implicitScrollTransition;
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
    v19 = implicitScrollTransition;
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

  v27 = [rootFolderView _pageIndexForPageOffset:v39];
  if (v27 != [(SBFolderController *)self currentPageIndex])
  {
    [rootFolderView updateIconListIndexAndVisibility];
  }

  v28 = [rootFolderView _pageIndexForPageOffset:*(&v39 + 1)];
  LOBYTE(v34) = 1;
  v24 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:v38 pageIndex:v27 toPageState:*(&v38 + 1) pageIndex:v28 reason:@"implicit scroll" animated:1 interactive:v34];
  v25 = v24;
  v26 = v40;
LABEL_32:
  [v24 setTransitionProgress:v26];
  [(SBRootFolderController *)self setImplicitScrollTransition:v25];
LABEL_33:
  leadingCustomViewController = [(SBRootFolderController *)self leadingCustomViewController];

  if (leadingCustomViewController)
  {
    leadingCustomViewPageScrollOffset = [rootFolderView leadingCustomViewPageScrollOffset];
    v32 = (comparator)(leadingCustomViewPageScrollOffset, v8, v31);
  }

  else
  {
    v32 = 0;
  }

  [rootFolderView setLeadingCustomViewBouncing:v32];

  return v25;
}

- (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)offset
{
  v27 = *MEMORY[0x1E69E9840];
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  pageCount = [rootFolderView pageCount];
  v9 = [rootFolderView extraPageCountDuringScrolling] + pageCount;
  userInterfaceLayoutDirection = [(SBFolderController *)self userInterfaceLayoutDirection];
  [rootFolderView _pageWidthOrHeight];
  v11 = v10;
  [rootFolderView _pageSpacing];
  v13 = v12;
  pageState = [(SBRootFolderController *)self pageState];
  v23 = [rootFolderView _pageOffsetForOffset:0 behavior:0 fractionOfDistanceThroughPage:a4];
  userInterfaceLayoutDirectionAwareScrollingDirection = [rootFolderView userInterfaceLayoutDirectionAwareScrollingDirection];
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

  leadingCustomPageCount = [rootFolderView leadingCustomPageCount];
  trailingCustomPageCount = [rootFolderView trailingCustomPageCount];
  v19 = leadingCustomPageCount + trailingCustomPageCount;
  if (leadingCustomPageCount)
  {
    memset_pattern16(v16, &unk_1BEE85500, 8 * leadingCustomPageCount);
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

    bzero(&v16[8 * leadingCustomPageCount], 8 * v20);
    leadingCustomPageCount += v20;
  }

  if (trailingCustomPageCount)
  {
    memset_pattern16(&v16[8 * leadingCustomPageCount], &unk_1BEE85510, 8 * trailingCustomPageCount);
  }

  retstr->var4 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v21 = objc_opt_class();
  if (v21)
  {
    [v21 pageStateTransitionSnapshotForScrollOffset:v16 pageWidth:v9 pageSpacing:userInterfaceLayoutDirection pages:pageState pageCount:v23 userInterfaceLayoutDirection:userInterfaceLayoutDirectionAwareScrollingDirection currentPageState:a4 currentPageOffset:v11 scrollingDirection:v13];
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

+ (SBRootFolderPageStateTransitionSnapshot)pageStateTransitionSnapshotForScrollOffset:(SEL)offset pageWidth:(double)width pageSpacing:(double)spacing pages:(double)pages pageCount:(const int64_t *)count userInterfaceLayoutDirection:(unint64_t)direction currentPageState:(int64_t)state currentPageOffset:(int64_t)self0 scrollingDirection:(unint64_t)self1
{
  v25 = 0.0;
  result = [SBFolderView _pageOffsetForOffset:0 behavior:direction pageWidth:state pageSpacing:&v25 pageCount:width userInterfaceLayoutDirection:spacing fractionOfDistanceThroughPage:pages];
  v19 = &count[result];
  pageOffsetCopy = *v19;
  *&retstr->var0 = xmmword_1BEE854F0;
  retstr->var2 = scrollingDirection;
  retstr->var3 = result;
  retstr->var4 = 0.0;
  if (v25 <= 0.0)
  {
    v24 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(pageOffset);
    result = SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v24, pageOffsetCopy);
    if (result)
    {
      pageOffsetCopy = pageOffset;
    }

    goto LABEL_8;
  }

  v21 = result;
  if (result >= direction - 1)
  {
LABEL_8:
    retstr->var0 = pageOffsetCopy;
    v22 = -1;
    goto LABEL_9;
  }

  result = +[SBRootFolderController pageStateTransitionPrefersUsingScrollingDirection];
  if (result)
  {
    if (a12 != 2)
    {
LABEL_5:
      v22 = pageOffsetCopy;
      v23 = v19[1];
      retstr->var0 = v23;
      retstr->var1 = pageOffsetCopy;
      retstr->var2 = scrollingDirection + 1;
      retstr->var4 = 1.0 - v25;
      pageOffsetCopy = v23;
      goto LABEL_9;
    }
  }

  else
  {
    result = SBRootFolderPageStateVerticalGroupMatches(pageOffsetCopy, pageOffset);
    if (!result)
    {
      goto LABEL_5;
    }
  }

  v22 = v19[1];
  retstr->var0 = pageOffsetCopy;
  retstr->var1 = v22;
  retstr->var4 = v25;
  retstr->var3 = &v21->var0 + 1;
LABEL_9:
  if (pageOffsetCopy != v22)
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
    if (direction < 2 || count[direction - 2] != 4)
    {
      goto LABEL_23;
    }
  }

  else if (v22 == 3 || v22 == 2 && (direction < 2 || count[1] != 2))
  {
    goto LABEL_23;
  }

  return result;
}

- (double)visibilityProgressTowardPageStateMatchingTest:(id)test
{
  testCopy = test;
  v5 = testCopy[2](testCopy, [(SBRootFolderController *)self pageState]);
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    [(SBRootFolderController *)self pageTransitionProgress];
    v8 = v7;
    v9 = testCopy[2](testCopy, destinationPageState);
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
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
  }

  else
  {
    destinationPageState = [(SBRootFolderController *)self pageState];
  }

  return destinationPageState == 0;
}

- (BOOL)isLeadingCustomViewOrLeadingCustomViewSearchVisible
{
  if ([(SBRootFolderController *)self isTransitioningPageState])
  {
    return 0;
  }

  pageState = [(SBRootFolderController *)self pageState];

  return SBRootFolderPageStateIsOnLeadingCustomPage(pageState);
}

- (void)setLeadingCustomViewPageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v17 = *MEMORY[0x1E69E9840];
  if ([(SBRootFolderController *)self isLeadingCustomViewPageHidden]!= hidden)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    leadingCustomViewControllers = [(SBRootFolderController *)self leadingCustomViewControllers];
    v6 = [leadingCustomViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(leadingCustomViewControllers);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (hiddenCopy)
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
        v7 = [leadingCustomViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    rootFolderView = [(SBRootFolderController *)self rootFolderView];
    [rootFolderView setLeadingCustomViewPageHidden:hiddenCopy];
  }
}

- (BOOL)isLeadingCustomViewPageHidden
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  isLeadingCustomViewPageHidden = [rootFolderView isLeadingCustomViewPageHidden];

  return isLeadingCustomViewPageHidden;
}

- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)index
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  LOBYTE(index) = [rootFolderView isLeadingCustomViewPageHiddenAtIndex:index];

  return index;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(unint64_t)index
{
  hiddenCopy = hidden;
  if ([(SBRootFolderController *)self isLeadingCustomViewPageHiddenAtIndex:index]!= hidden)
  {
    leadingCustomViewControllers = [(SBRootFolderController *)self leadingCustomViewControllers];
    v9 = [leadingCustomViewControllers objectAtIndex:index];

    if (hiddenCopy)
    {
      [v9 willMoveToParentViewController:0];
      [(SBRootFolderController *)self removeChildViewController:v9];
    }

    else
    {
      [(SBRootFolderController *)self addChildViewController:v9];
      [v9 didMoveToParentViewController:self];
    }

    rootFolderView = [(SBRootFolderController *)self rootFolderView];
    [rootFolderView setLeadingCustomViewPageHidden:hiddenCopy atIndex:index];
  }
}

- (BOOL)isLeadingCustomViewTransitioning
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    LOBYTE(isTransitioningPageState) = [(SBRootFolderController *)self pageState]== 2 || [(SBRootFolderController *)self destinationPageState]== 2;
  }

  return isTransitioningPageState;
}

- (BOOL)isTransitioningBetweenIconAndLeadingCustomView
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(isTransitioningPageState) = !pageState && destinationPageState == 2 || pageState == 2 && destinationPageState == 0;
  }

  return isTransitioningPageState;
}

- (BOOL)isTransitioningBetweenIconPageAndLeadingCustomPage
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(isTransitioningPageState) = SBRootFolderPageStateIsOnIconPage(pageState) && SBRootFolderPageStateIsOnLeadingCustomPage(destinationPageState) || SBRootFolderPageStateIsOnLeadingCustomPage(pageState) && SBRootFolderPageStateIsOnIconPage(destinationPageState);
  }

  return isTransitioningPageState;
}

- (BOOL)isTransitioningBetweenIconAndTrailingCustomView
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(isTransitioningPageState) = !pageState && destinationPageState == 4 || pageState == 4 && destinationPageState == 0;
  }

  return isTransitioningPageState;
}

- (BOOL)isTransitioningBetweenIconPageAndTrailingCustomPage
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    pageState = [(SBRootFolderController *)self pageState];
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    LOBYTE(isTransitioningPageState) = SBRootFolderPageStateIsOnIconPage(pageState) && SBRootFolderPageStateIsOnTrailingCustomPage(destinationPageState) || SBRootFolderPageStateIsOnTrailingCustomPage(pageState) && SBRootFolderPageStateIsOnIconPage(destinationPageState);
  }

  return isTransitioningPageState;
}

- (BOOL)isTrailingCustomViewTransitioning
{
  isTransitioningPageState = [(SBRootFolderController *)self isTransitioningPageState];
  if (isTransitioningPageState)
  {
    LOBYTE(isTransitioningPageState) = [(SBRootFolderController *)self pageState]== 4 || [(SBRootFolderController *)self destinationPageState]== 4;
  }

  return isTransitioningPageState;
}

- (unint64_t)destinationPageOffset
{
  if ([(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle isValid])
  {
    destinationPageIndex = [(_SBRootFolderPageTransitionHandle *)self->_currentTransitionHandle destinationPageIndex];
  }

  else
  {
    destinationPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(SBFolderController *)self _isValidPageIndex:destinationPageIndex])
  {
    return destinationPageIndex - [(SBFolderController *)self minimumPageIndex];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)beginPageStateTransitionToState:(int64_t)state reason:(id)reason animated:(BOOL)animated interactive:(BOOL)interactive
{
  animatedCopy = animated;
  reasonCopy = reason;
  LOBYTE(v13) = interactive;
  v11 = [(SBRootFolderController *)self beginPageStateTransitionFromPageState:[(SBRootFolderController *)self pageState] pageIndex:[(SBFolderController *)self currentPageIndex] toPageState:state pageIndex:0x7FFFFFFFFFFFFFFFLL reason:reasonCopy animated:animatedCopy interactive:v13];

  return v11;
}

- (id)beginPageStateTransitionFromPageState:(int64_t)state pageIndex:(int64_t)index toPageState:(int64_t)pageState pageIndex:(int64_t)pageIndex reason:(id)reason animated:(BOOL)animated interactive:(BOOL)interactive
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v16 = SBLogRootController();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SBStringForRootFolderPageState(pageState);
    *buf = 138544130;
    selfCopy = v17;
    v28 = 2114;
    v29 = reasonCopy;
    v30 = 1024;
    *v31 = animatedCopy;
    *&v31[4] = 1024;
    *&v31[6] = interactive;
    _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "Begin page state transition to state %{public}@, reason: %{public}@, animated: %{BOOL}u, interactive: %{BOOL}u", buf, 0x22u);
  }

  if ([(SBRootFolderController *)self canTransitionPageStateToState:pageState])
  {
    v18 = [[_SBRootFolderPageTransitionHandle alloc] initWithFolderController:self sourcePageState:state sourcePageIndex:index destinationPageState:pageState destinationPageIndex:pageIndex reason:reasonCopy];
    [(SBRootFolderController *)self setCurrentTransitionHandle:v18];
    [(SBRootFolderController *)self willBeginTransitionToState:pageState pageIndex:pageIndex animated:animatedCopy interactive:interactive];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __124__SBRootFolderController_beginPageStateTransitionFromPageState_pageIndex_toPageState_pageIndex_reason_animated_interactive___block_invoke;
    v23[3] = &unk_1E80894B0;
    v23[4] = self;
    v23[5] = pageState;
    v24 = animatedCopy;
    interactiveCopy = interactive;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v23];
  }

  else
  {
    v19 = SBLogRootController();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = SBStringForRootFolderPageState(state);
      v22 = SBStringForRootFolderPageState(pageState);
      *buf = 138413058;
      selfCopy = self;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      *v31 = v22;
      *&v31[8] = 2114;
      v32 = reasonCopy;
      _os_log_error_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_ERROR, "Invalid state transition for %@: %{public}@ -> %{public}@, reason: %{public}@", buf, 0x2Au);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)canTransitionPageStateToState:(int64_t)state
{
  pageState = [(SBRootFolderController *)self pageState];
  if ([(SBRootFolderController *)self isAnySearchTransitioning]&& (!state || !pageState))
  {
    pageState = [(SBRootFolderController *)self destinationPageState];
  }

  if (pageState > 4)
  {
    v7 = 0;
  }

  else if (((1 << pageState) & 0x15) != 0)
  {
    v6 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(pageState);
    if (SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v6, state))
    {
      v7 = 1;
    }

    else
    {
      v7 = SBRootFolderPageStateIsOnHorizontalScrollingPlane(state);
    }
  }

  else
  {
    v8 = SBRootFolderPageStateVerticalGroupForRootFolderPageState(pageState);
    v9 = SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(v8, state);
    v10 = (state & 0xFFFFFFFFFFFFFFFDLL) == 0 || v9;
    if (state == 4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v10;
    }
  }

  if (pageState == state)
  {
    if (state > 1)
    {
      if (state == 2 || state == 4)
      {
        rootFolderView = [(SBRootFolderController *)self rootFolderView];
        v7 = [rootFolderView leadingCustomPageCount] > 1;

        goto LABEL_26;
      }

      if (state != 3)
      {
        goto LABEL_26;
      }
    }

    else if ((state + 1) >= 3)
    {
      goto LABEL_26;
    }

    v7 = 0;
  }

LABEL_26:
  if (SBRootFolderPageStateIsOnLeadingCustomPage(state))
  {
    leadingCustomViewController = [(SBRootFolderController *)self leadingCustomViewController];
    v13 = leadingCustomViewController != 0;

    v7 &= v13;
  }

  if (SBRootFolderPageStateIsSearch(state))
  {
    pullDownSearchViewController = [(SBRootFolderController *)self pullDownSearchViewController];
    if (pullDownSearchViewController)
    {
    }

    else
    {
      searchPresenter = [(SBRootFolderController *)self searchPresenter];
      v16 = searchPresenter != 0;

      v7 &= v16;
    }
  }

  if (SBRootFolderPageStateIsOnTrailingCustomPage(state))
  {
    trailingCustomViewController = [(SBRootFolderController *)self trailingCustomViewController];
    v18 = trailingCustomViewController != 0;

    return v18 & v7;
  }

  return v7;
}

- (void)willBeginTransitionToState:(int64_t)state pageIndex:(int64_t)index animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  pageState = [(SBRootFolderController *)self pageState];
  v60 = SBRootFolderPageStateIsOnLeadingCustomPage(pageState);
  v61 = SBRootFolderPageStateIsOnLeadingCustomPage(state);
  v62 = SBRootFolderPageStateIsOnTrailingCustomPage(pageState);
  v59 = SBRootFolderPageStateIsOnTrailingCustomPage(state);
  IsSearch = SBRootFolderPageStateIsSearch(pageState);
  v13 = SBRootFolderPageStateIsSearch(state);
  if ([(SBFolderController *)self _isValidPageIndex:index])
  {
    v14 = [(SBRootFolderController *)self customViewControllerForPageIndex:index];
    if (v14)
    {
      v15 = v14;
      view = [v14 view];
      [view setNeedsLayout];
      [view layoutIfNeeded];
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
  [rootFolderView setPullDownSearchVisibilityProgress:v18];
  [rootFolderView setLeadingCustomViewVisibilityProgress:v20];
  [rootFolderView setTrailingCustomViewVisibilityProgress:v22];
  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isTransitioning]&& ![(SBViewControllerTransitionContext *)self->_currentTransitionContext isCancelled])
  {
    isInteractive = [(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive];
    currentTransitionContext = self->_currentTransitionContext;
    if (isInteractive)
    {
      [(SBViewControllerTransitionContext *)currentTransitionContext cancelInteractiveTransition];
    }

    else
    {
      [(SBViewControllerTransitionContext *)currentTransitionContext cancelTransition];
    }
  }

  indexCopy = index;
  v25 = IsSearch ^ v13;
  accessoryViewControllerDelegate = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  v27 = [accessoryViewControllerDelegate rootFolderController:self transitionContextForTransitioningToState:state animated:animatedCopy interactive:interactiveCopy];

  if (v27)
  {
    [rootFolderView setShiftsPullDownSearchForVisibility:0];
    goto LABEL_53;
  }

  v27 = [(SBRootFolderController *)self defaultTransitionForTransitioningFromPageState:pageState toPageState:state animated:animatedCopy interactive:interactiveCopy];
  [rootFolderView setShiftsPullDownSearchForVisibility:!v60 && !v61];
  if (v25)
  {
    searchPresentableViewController = [(SBRootFolderController *)self searchPresentableViewController];

    if (!searchPresentableViewController)
    {
      searchBackdropView = [rootFolderView searchBackdropView];
      v30 = searchBackdropView;
      if (state == 1 || pageState == 1)
      {
        if (v13)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2;
        }

        [searchBackdropView prepareForTransitionType:v31];
      }
    }
  }

  if (v60 || v61)
  {
    currentPageIndex = [(SBFolderController *)self currentPageIndex];
    v33 = v60 && [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomLeadingPageAtIndex:[(SBRootFolderController *)self leadingCustomPageIndexForPageIndex:currentPageIndex]];
    v34 = [(SBRootFolderController *)self leadingCustomPageIndexForPageIndex:indexCopy];
    if (v61)
    {
      v35 = [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomLeadingPageAtIndex:v34];
      v36 = !v33;
      v37 = !v35;
      if (v33 && !v37)
      {
        v38 = 3;
LABEL_35:
        leadingCustomBackdropView = [rootFolderView leadingCustomBackdropView];
        [leadingCustomBackdropView prepareForTransitionType:v38];

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
    if (v59 && (v42 = [(SBRootFolderController *)self trailingCustomPageIndexForPageIndex:indexCopy], v42 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v43 = [(SBRootFolderController *)self _shouldObscureBackgroundBehindCustomTrailingPageAtIndex:v42];
      v44 = !v41;
      v45 = !v43;
      if (v41 && !v45)
      {
        v46 = 3;
LABEL_52:
        trailingCustomBackdropView = [rootFolderView trailingCustomBackdropView];
        [trailingCustomBackdropView prepareForTransitionType:v46];

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
  v49 = SBStringForRootFolderPageState(pageState);
  v50 = SBStringForRootFolderPageState(state);
  v51 = [v48 stringWithFormat:@"PageStateTransition %@ -> %@", v49, v50];
  v52 = [(SBFolderController *)self cancelTouchesForAllCustomIconImageViewControllersForReason:v51];

  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  [currentTransitionHandle setCustomIconImageViewControllerCancelTouchesAssertion:v52];

  v54 = objc_alloc_init(SBRootFolderControllerTransitionInfo);
  [(SBRootFolderControllerTransitionInfo *)v54 setSourcePageState:pageState];
  [(SBRootFolderControllerTransitionInfo *)v54 setDestinationPageState:state];
  [(SBViewControllerTransitionContext *)v27 setUserInfo:v54];
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    [folderDelegate rootFolderController:self willUseTransitionContext:v27 toTransitionToState:state];
  }

  if (v25)
  {
    [rootFolderView setSearchHidden:0];
  }

  v56 = self->_currentTransitionContext;
  self->_currentTransitionContext = v27;
  v57 = v27;

  [(SBViewControllerTransitionContext *)v57 startTransition];
}

- (void)didContinueTransitionToState:(int64_t)state progress:(double)progress
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  pageState = [(SBRootFolderController *)self pageState];
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
  aBlock[4] = pageState;
  aBlock[5] = state;
  *&aBlock[6] = progress;
  v15 = _Block_copy(aBlock);
  searchPresentableViewController = [(SBRootFolderController *)self searchPresentableViewController];
  if (!searchPresentableViewController)
  {
    v17 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    searchPresentableViewController = [rootFolderView searchBackdropView];
    v15[2](v15, 1, searchPresentableViewController);
  }

LABEL_5:
  leadingCustomBackdropView = [rootFolderView leadingCustomBackdropView];
  v15[2](v15, 2, leadingCustomBackdropView);

  trailingCustomBackdropView = [rootFolderView trailingCustomBackdropView];
  v15[2](v15, 4, trailingCustomBackdropView);

  [rootFolderView setPullDownSearchVisibilityProgress:v10];
  [rootFolderView setLeadingCustomViewVisibilityProgress:v12];
  [rootFolderView setTrailingCustomViewVisibilityProgress:v14];
  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive])
  {
    [(SBViewControllerTransitionContext *)self->_currentTransitionContext updateInteractiveTransition:progress];
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

- (void)willEndTransitionToState:(int64_t)state successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  pageState = [(SBRootFolderController *)self pageState];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SBRootFolderController_willEndTransitionToState_successfully___block_invoke;
  aBlock[3] = &__block_descriptor_49_e33_v24__0q8__SBSearchBackdropView_16l;
  aBlock[4] = pageState;
  aBlock[5] = state;
  v20 = successfullyCopy;
  v9 = _Block_copy(aBlock);
  searchPresentableViewController = [(SBRootFolderController *)self searchPresentableViewController];
  if (searchPresentableViewController)
  {
    goto LABEL_4;
  }

  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    searchPresentableViewController = [rootFolderView searchBackdropView];
    v9[2](v9, 1, searchPresentableViewController);
LABEL_4:
  }

  leadingCustomBackdropView = [rootFolderView leadingCustomBackdropView];
  v9[2](v9, 2, leadingCustomBackdropView);

  trailingCustomBackdropView = [rootFolderView trailingCustomBackdropView];
  v9[2](v9, 4, trailingCustomBackdropView);

  if ([(SBViewControllerTransitionContext *)self->_currentTransitionContext isTransitioning]&& ![(SBViewControllerTransitionContext *)self->_currentTransitionContext isCancelled])
  {
    isInteractive = [(SBViewControllerTransitionContext *)self->_currentTransitionContext isInteractive];
    currentTransitionContext = self->_currentTransitionContext;
    if (isInteractive)
    {
      if (successfullyCopy)
      {
        [(SBViewControllerTransitionContext *)currentTransitionContext finishInteractiveTransition];
      }

      else
      {
        [(SBViewControllerTransitionContext *)currentTransitionContext cancelInteractiveTransition];
      }
    }

    else if (successfullyCopy)
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

  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  customIconImageViewControllerCancelTouchesAssertion = [currentTransitionHandle customIconImageViewControllerCancelTouchesAssertion];
  [customIconImageViewControllerCancelTouchesAssertion invalidate];

  [currentTransitionHandle setCustomIconImageViewControllerCancelTouchesAssertion:0];
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

- (void)didEndTransitionFromState:(int64_t)state pageIndex:(int64_t)index toState:(int64_t)toState pageIndex:(int64_t)pageIndex successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [(SBRootFolderController *)self _checkForImproperScrollOffsetForPageState];
  [rootFolderView setNeedsLayout];
  if (state == 1 && toState != 1 && successfullyCopy)
  {
    searchGesture = [(SBRootFolderController *)self searchGesture];
    [searchGesture resetAnimated:0];
  }

  v14 = !successfullyCopy;
  if (successfullyCopy)
  {
    stateCopy = toState;
  }

  else
  {
    stateCopy = state;
  }

  if (successfullyCopy)
  {
    indexCopy = pageIndex;
  }

  else
  {
    indexCopy = index;
  }

  if (!v14)
  {
    pageIndex = index;
  }

  [rootFolderView setSearchHidden:!SBRootFolderPageStateIsSearch(stateCopy)];
  [(SBRootFolderController *)self _anySearchVisibilityProgress];
  v18 = v17;
  [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
  v20 = v19;
  [(SBRootFolderController *)self _trailingCustomViewVisibilityProgress];
  v22 = v21;
  [rootFolderView setPullDownSearchVisibilityProgress:v18];
  [rootFolderView setLeadingCustomViewVisibilityProgress:v20];
  [rootFolderView setTrailingCustomViewVisibilityProgress:v22];
  if ([(SBFolderController *)self _isValidPageIndex:indexCopy])
  {
    v23 = [(SBRootFolderController *)self customViewControllerForPageIndex:indexCopy];
  }

  else
  {
    v23 = 0;
  }

  if ([(SBFolderController *)self _isValidPageIndex:pageIndex])
  {
    v24 = [(SBRootFolderController *)self customViewControllerForPageIndex:pageIndex];
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

- (void)pageTransitionHandle:(id)handle updateCurrentPageStateTransitionToProgress:(double)progress
{
  v14 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];

  v8 = SBLogRootController();
  v9 = v8;
  if (currentTransitionHandle == handleCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      progressCopy = progress;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Update page state transition to progress %f", buf, 0xCu);
    }

    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    [(SBRootFolderController *)self didContinueTransitionToState:destinationPageState progress:progress];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90__SBRootFolderController_pageTransitionHandle_updateCurrentPageStateTransitionToProgress___block_invoke;
    v11[3] = &unk_1E8089518;
    v11[4] = self;
    v11[5] = destinationPageState;
    *&v11[6] = progress;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v11];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBRootFolderController pageTransitionHandle:handleCopy updateCurrentPageStateTransitionToProgress:v9];
    }
  }
}

- (void)pageTransitionHandle:(id)handle endPageStateTransitionSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v21 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  if (currentTransitionHandle == handleCopy)
  {
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    pageState = [(SBRootFolderController *)self pageState];
    v11 = SBLogRootController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = SBStringForRootFolderPageState(destinationPageState);
      *buf = 138543618;
      v18 = v12;
      v19 = 1024;
      v20 = successfullyCopy;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "End page state transition to state %{public}@ successfully: %{BOOL}u", buf, 0x12u);
    }

    [(SBRootFolderController *)self willEndTransitionToState:destinationPageState successfully:successfullyCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__SBRootFolderController_pageTransitionHandle_endPageStateTransitionSuccessfully___block_invoke;
    v15[3] = &unk_1E8089540;
    v15[4] = self;
    v15[5] = destinationPageState;
    v16 = successfullyCopy;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v15];
    if (successfullyCopy)
    {
      [(SBRootFolderController *)self setPageState:destinationPageState];
    }

    [currentTransitionHandle setValid:0];
    [(SBRootFolderController *)self setCurrentTransitionHandle:0];
    -[SBRootFolderController didEndTransitionFromState:pageIndex:toState:pageIndex:successfully:](self, "didEndTransitionFromState:pageIndex:toState:pageIndex:successfully:", pageState, [handleCopy sourcePageIndex], destinationPageState, objc_msgSend(handleCopy, "destinationPageIndex"), successfullyCopy);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__SBRootFolderController_pageTransitionHandle_endPageStateTransitionSuccessfully___block_invoke_2;
    v13[3] = &unk_1E8089568;
    v13[4] = self;
    v13[5] = pageState;
    v13[6] = destinationPageState;
    v14 = successfullyCopy;
    [(SBRootFolderController *)self enumeratePageStateObserversUsingBlock:v13];
  }

  else
  {
    v8 = SBLogRootController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBRootFolderController pageTransitionHandle:handleCopy endPageStateTransitionSuccessfully:v8];
    }
  }
}

- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing
{
  showingCopy = showing;
  gestureCopy = gesture;
  if ([(SBRootFolderController *)self canTransitionPageStateToState:showingCopy])
  {
    v7 = [(SBRootFolderController *)self beginPageStateTransitionToState:showingCopy reason:@"search gesture started" animated:1 interactive:1];
    [(SBRootFolderController *)self setSearchGestureTransition:v7];
  }

  currentIconListView = [(SBFolderController *)self currentIconListView];
  [gestureCopy locationInView:currentIconListView];
  v9 = v8;
  v11 = v10;

  v12 = [currentIconListView iconAtPoint:0 index:{v9, v11}];
  v13 = [currentIconListView displayedIconViewForIcon:v12];
  if (v12)
  {
    [(SBRootFolderController *)self _cancelTouchesForSearchGestureOnIconView:v13];
  }
}

- (void)searchGesture:(id)gesture changedPercentComplete:(double)complete
{
  searchGestureTransition = [(SBRootFolderController *)self searchGestureTransition];
  if (searchGestureTransition)
  {
    v9 = searchGestureTransition;
    destinationPageState = [(SBRootFolderController *)self destinationPageState];
    completeCopy = 1.0 - complete;
    if (destinationPageState == 1)
    {
      completeCopy = complete;
    }

    [v9 setTransitionProgress:completeCopy];
    searchGestureTransition = v9;
  }
}

- (void)searchGesture:(id)gesture completedShowing:(BOOL)showing
{
  showingCopy = showing;
  gestureCopy = gesture;
  searchGestureTransition = [(SBRootFolderController *)self searchGestureTransition];
  if (searchGestureTransition)
  {
    [searchGestureTransition endTransitionSuccessfully:{(-[SBRootFolderController destinationPageState](self, "destinationPageState") != 1) ^ showingCopy}];
    [(SBRootFolderController *)self setSearchGestureTransition:0];
  }

  else
  {
    [gestureCopy resetAnimated:0];
  }

  [(SBRootFolderController *)self _invalidateSearchGestureIconViewTouchCancellationAssertion];
}

- (void)searchGesture:(id)gesture resetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(SBRootFolderController *)self isTransitioningPageState])
  {
    if ([(SBRootFolderController *)self pageState]== 1 && [(SBRootFolderController *)self canTransitionPageStateToState:0])
    {
      v6 = [(SBRootFolderController *)self beginPageStateTransitionToState:0 reason:@"search gesture reset" animated:animatedCopy interactive:1];
      [(SBRootFolderController *)self setSearchGestureTransition:v6];
    }

    if (![(SBRootFolderController *)self isLeadingCustomViewVisible])
    {
      [(SBRootFolderController *)self _leadingCustomViewVisibilityProgress];
      if (v7 > 0.0)
      {
        firstIconPageIndex = [(SBFolderController *)self firstIconPageIndex];

        [(SBRootFolderController *)self setCurrentPageIndex:firstIconPageIndex animated:animatedCopy];
      }
    }
  }
}

- (void)_cancelTouchesForSearchGestureOnIconView:(id)view
{
  viewCopy = view;
  [(SBRootFolderController *)self _invalidateSearchGestureIconViewTouchCancellationAssertion];
  customIconImageViewController = [viewCopy customIconImageViewController];

  if (objc_opt_respondsToSelector())
  {
    cancelTouchesForCurrentEventInHostedContent = [customIconImageViewController cancelTouchesForCurrentEventInHostedContent];
    searchGestureIconViewTouchCancellationAssertion = self->_searchGestureIconViewTouchCancellationAssertion;
    self->_searchGestureIconViewTouchCancellationAssertion = cancelTouchesForCurrentEventInHostedContent;
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

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  v28.receiver = self;
  v28.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v28 transitionWillBegin:beginCopy];
  if (self->_currentTransitionContext == beginCopy)
  {
    objc_opt_class();
    animator = [(SBViewControllerTransitionContext *)beginCopy animator];
    v7 = SBFSafeCast();

    objc_opt_class();
    interactor = [(SBViewControllerTransitionContext *)beginCopy interactor];
    v9 = SBFSafeCast();

    isPresenting = [(SBFramewiseInteractiveTransitionAnimator *)v7 isPresenting];
    v11 = objc_opt_self();
    userInfo = [(SBViewControllerTransitionContext *)beginCopy userInfo];
    v5 = SBFSafeCast();

    sourcePageState = [v5 sourcePageState];
    destinationPageState = [v5 destinationPageState];
    v15 = MEMORY[0x1E69DE778];
    if (!isPresenting)
    {
      v15 = MEMORY[0x1E69DE768];
    }

    v16 = [(SBViewControllerTransitionContext *)beginCopy viewControllerForKey:*v15];
    currentTransitionAnimator = self->_currentTransitionAnimator;
    self->_currentTransitionAnimator = v7;
    v18 = v7;

    currentTransitionInteractor = self->_currentTransitionInteractor;
    self->_currentTransitionInteractor = v9;

    isAnimated = [(SBViewControllerTransitionContext *)beginCopy isAnimated];
    [v16 beginAppearanceTransition:isPresenting animated:isAnimated];
    if (destinationPageState == 1)
    {
      v21 = SBHIsSpotlightFloatingWindowEnabled();
    }

    else
    {
      v21 = 0;
    }

    v22 = [(SBRootFolderController *)self viewControllerForPageState:sourcePageState];
    v23 = v22;
    if (v22 && v22 != v16 && (v21 & 1) == 0)
    {
      [v22 beginAppearanceTransition:0 animated:isAnimated];
    }

    v24 = [(SBRootFolderController *)self viewControllerForPageState:destinationPageState];
    v25 = v24;
    if (v24 && v24 != v16)
    {
      [v24 beginAppearanceTransition:1 animated:isAnimated];
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

  accessoryViewControllerDelegate = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [accessoryViewControllerDelegate rootFolderController:self transitionWillBegin:beginCopy];
}

- (void)transitionWillReverse:(id)reverse
{
  v6.receiver = self;
  v6.super_class = SBRootFolderController;
  reverseCopy = reverse;
  [(SBNestingViewController *)&v6 transitionWillReverse:reverseCopy];
  v5 = [(SBRootFolderController *)self accessoryViewControllerDelegate:v6.receiver];
  [v5 rootFolderController:self transitionWillReverse:reverseCopy];
}

- (void)transitionWillFinish:(id)finish
{
  finishCopy = finish;
  v26.receiver = self;
  v26.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v26 transitionWillFinish:finishCopy];
  if (self->_currentTransitionContext == finishCopy)
  {
    userInfo = [(SBViewControllerTransitionContext *)finishCopy userInfo];
    v6 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v7 = userInfo;
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
    animator = [(SBViewControllerTransitionContext *)finishCopy animator];
    v10 = SBFSafeCast();

    destinationPageState = [v8 destinationPageState];
    sourcePageState = [v8 sourcePageState];
    transitionWasCancelled = [(SBViewControllerTransitionContext *)finishCopy transitionWasCancelled];
    isPresenting = [v10 isPresenting];
    v15 = MEMORY[0x1E69DE778];
    if (!isPresenting)
    {
      v15 = MEMORY[0x1E69DE768];
    }

    v16 = [(SBViewControllerTransitionContext *)finishCopy viewControllerForKey:*v15];
    v17 = [(SBRootFolderController *)self viewControllerForPageState:sourcePageState];
    v18 = [(SBRootFolderController *)self viewControllerForPageState:destinationPageState];
    if (transitionWasCancelled)
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

    if (destinationPageState == 2)
    {
      folderDelegate = [(SBFolderController *)self folderDelegate];
      if (objc_opt_respondsToSelector())
      {
        [folderDelegate contentOverlayInsetsFromParentIfAvailableForFolderController:self];
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
      if (destinationPageState == 1)
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
  accessoryViewControllerDelegate = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [accessoryViewControllerDelegate rootFolderController:self transitionWillFinish:finishCopy];
}

- (void)transitionDidFinish:(id)finish
{
  finishCopy = finish;
  v10.receiver = self;
  v10.super_class = SBRootFolderController;
  [(SBNestingViewController *)&v10 transitionDidFinish:finishCopy];
  currentTransitionContext = self->_currentTransitionContext;
  if (currentTransitionContext == finishCopy)
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

  accessoryViewControllerDelegate = [(SBRootFolderController *)self accessoryViewControllerDelegate];
  [accessoryViewControllerDelegate rootFolderController:self transitionDidFinish:finishCopy];
}

- (id)defaultTransitionForTransitioningFromPageState:(int64_t)state toPageState:(int64_t)pageState animated:(BOOL)animated interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v10 = [(SBRootFolderController *)self viewControllerForTransitioningFromPageState:state toPageState:?];
  if (v10)
  {
    if (pageState)
    {
      v11 = [(SBRootFolderController *)self animationControllerForPresentedController:v10 presentingController:0 sourceController:0];
      v12 = 0;
      if (v11 && interactiveCopy && animatedCopy)
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
      if (v11 && interactiveCopy && animatedCopy)
      {
        v13 = [(SBRootFolderController *)self interactionControllerForDismissal:v11];
        goto LABEL_12;
      }
    }

    v14 = objc_alloc_init(SBRootFolderControllerDefaultTransitionContext);
    [(SBViewControllerTransitionContext *)v14 setDelegate:self];
    rootFolderView = [(SBRootFolderController *)self rootFolderView];
    [(SBViewControllerTransitionContext *)v14 setContainerView:rootFolderView];

    [(SBViewControllerTransitionContext *)v14 setAnimator:v11];
    [(SBViewControllerTransitionContext *)v14 setInteractor:v12];
    [(SBViewControllerTransitionContext *)v14 setWantsAnimation:animatedCopy];
    v16 = MEMORY[0x1E69DE768];
    if (pageState)
    {
      v16 = MEMORY[0x1E69DE778];
      v17 = MEMORY[0x1E69DE780];
    }

    else
    {
      v17 = MEMORY[0x1E69DE770];
    }

    [(SBViewControllerTransitionContext *)v14 setViewController:v10 forKey:*v16];
    view = [v10 view];
    [(SBViewControllerTransitionContext *)v14 setView:view forKey:*v17];

    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = objc_alloc_init(SBFramewiseInteractiveTransitionAnimator);
  [(SBFramewiseInteractiveTransitionAnimator *)v6 setDelegate:self];
  [(SBFramewiseInteractiveTransitionAnimator *)v6 setPresenting:1];

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = objc_alloc_init(SBFramewiseInteractiveTransitionAnimator);
  [(SBFramewiseInteractiveTransitionAnimator *)v4 setDelegate:self];
  [(SBFramewiseInteractiveTransitionAnimator *)v4 setPresenting:0];

  return v4;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  v3 = objc_alloc_init(SBPercentPassthroughInteractiveTransition);

  return v3;
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  v3 = objc_alloc_init(SBPercentPassthroughInteractiveTransition);

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBRootFolderController;
  v4 = [(SBFolderController *)&v12 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:-[SBRootFolderController isDockExternal](self withName:{"isDockExternal"), @"isDockExternal"}];
  v6 = [v4 appendInteger:-[SBRootFolderController dockEdge](self withName:{"dockEdge"), @"dockEdge"}];
  v7 = SBStringForRootFolderPageState([(SBRootFolderController *)self pageState]);
  v8 = [v4 appendObject:v7 withName:@"pageState"];

  currentTransitionHandle = [(SBRootFolderController *)self currentTransitionHandle];
  v10 = [v4 appendObject:currentTransitionHandle withName:@"currentPageStateTransition" skipIfNil:1];

  return v4;
}

- (unint64_t)presenterType
{
  folderDelegate = [(SBFolderController *)self folderDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [folderDelegate widgetSheetPresenterTypeForRootFolderController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDisplayingEditingButtons
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  if ([rootFolderView showsDoneButton])
  {
    showsAddWidgetButton = 1;
  }

  else
  {
    rootFolderView2 = [(SBRootFolderController *)self rootFolderView];
    showsAddWidgetButton = [rootFolderView2 showsAddWidgetButton];
  }

  return showsAddWidgetButton;
}

- (void)setSuppressesEditingStateForListView:(BOOL)view
{
  viewCopy = view;
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setSuppressesEditingStateForListViews:viewCopy];
}

- (double)titledButtonsAlpha
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView titledButtonsAlpha];
  v4 = v3;

  return v4;
}

- (void)setTitledButtonsAlpha:(double)alpha
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView setTitledButtonsAlpha:alpha];
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location options:(unint64_t)options
{
  optionsCopy = options;
  iconCopy = icon;
  locationCopy = location;
  v10 = ((optionsCopy & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBRootFolderController *)self isDisplayingIcon:iconCopy inLocation:locationCopy];

  return v10;
}

- (BOOL)isDisplayingIcon:(id)icon options:(unint64_t)options
{
  optionsCopy = options;
  iconCopy = icon;
  v7 = ((optionsCopy & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBRootFolderController *)self isDisplayingIcon:iconCopy];

  return v7;
}

- (BOOL)isDisplayingIconView:(id)view options:(unint64_t)options
{
  optionsCopy = options;
  viewCopy = view;
  v7 = ((optionsCopy & 1) == 0 || ![(SBRootFolderController *)self isAnySearchVisibleOrTransitioning]) && [(SBFolderController *)self isDisplayingIconView:viewCopy];

  return v7;
}

- (id)firstIconViewForIcon:(id)icon options:(unint64_t)options
{
  iconCopy = icon;
  if ((options & 1) != 0 && [(SBRootFolderController *)self isAnySearchVisibleOrTransitioning])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRootFolderController;
    v7 = [(SBFolderController *)&v9 firstIconViewForIcon:iconCopy options:options];
  }

  return v7;
}

- (void)_doPageManagementEducation
{
  rootFolderView = [(SBRootFolderController *)self rootFolderView];
  [rootFolderView _doPageManagementEducation];
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