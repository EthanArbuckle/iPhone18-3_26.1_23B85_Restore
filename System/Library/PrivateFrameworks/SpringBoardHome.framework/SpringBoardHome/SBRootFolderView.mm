@interface SBRootFolderView
+ (void)_editButtonLayoutFramesInBounds:(CGRect)bounds forVisualConfiguration:(id)configuration withTranslationOffset:(double)offset inRTL:(BOOL)l doneButton:(id)button addWidgetButton:(id)widgetButton doneButtonFrame:(CGRect *)frame addWidgetButtonFrame:(CGRect *)self0;
+ (void)_getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds forListLayout:(id)layout withTranslationOffset:(double)offset inRTL:(BOOL)l;
+ (void)_getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds forVisualConfiguration:(id)configuration includingContentEdgeInsets:(BOOL)insets withTranslationOffset:(double)offset inRTL:(BOOL)l;
- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_shouldIgnoreOverscrollOnFirstPageForCurrentOrientation;
- (BOOL)_shouldIgnoreOverscrollOnLastPageForCurrentOrientation;
- (BOOL)iconScrollView:(id)view shouldSetAutoscrollContentOffset:(CGPoint)offset;
- (BOOL)iconScrollView:(id)view shouldSetContentOffset:(CGPoint *)offset animated:(BOOL)animated;
- (BOOL)isDockViewBorrowed;
- (BOOL)isDockVisible;
- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)index;
- (BOOL)isPageControlHidden;
- (BOOL)isPageManagementUITransitioningOutOfVisible;
- (BOOL)isPageManagementUIVisible;
- (BOOL)isScrollAccessoryBorrowed;
- (BOOL)scrollViewHeightIncludesPageControlAndDock;
- (BOOL)shouldFadeDockOutDuringTransitionToLeadingCustomView;
- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGRect)_scaledBoundsForMinimumHomeScreenScale;
- (CGRect)_scrollViewFrameForDockEdge:(unint64_t)edge;
- (CGRect)enterEditingTouchRect;
- (CGSize)dockIconSpacing;
- (CGSize)dockIconSpacingWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (NSString)dockIconLocation;
- (SBHRootFolderVisualConfiguration)rootFolderVisualConfiguration;
- (SBRootFolderView)initWithConfiguration:(id)configuration;
- (SBSearchBackdropView)leadingCustomBackdropView;
- (SBSearchBackdropView)searchBackdropView;
- (SBSearchBackdropView)trailingCustomBackdropView;
- (UIEdgeInsets)_statusBarInsetsForDockEdge:(unint64_t)edge dockOffscreenPercentage:(double)percentage;
- (UIEdgeInsets)statusBarInsetsForDockEdge:(unint64_t)edge;
- (UIView)leadingCustomView;
- (UIView)titledButtonsContainerView;
- (UIView)trailingCustomSearchDimmingView;
- (UIView)trailingCustomView;
- (double)_firstPageScrollOffsetForOverscroll;
- (double)_lastPageScrollOffsetForOverscroll;
- (double)_minimumHomeScreenScale;
- (double)_spotlightFirstIconRowOffset;
- (double)additionalScrollWidthToKeepVisibleInOneDirection;
- (double)currentDockOffscreenFraction;
- (double)dockHeight;
- (double)externalDockPageControlVerticalMargin;
- (double)internalDockPageControlVerticalMargin;
- (double)leadingCustomViewPageScrollOffset;
- (double)leadingCustomViewPageScrollOffsetUsingPageWidth:(double)width;
- (double)maxDockHeight;
- (double)pageControlAlpha;
- (double)trailingCustomViewPageScrollOffset;
- (double)trailingCustomViewPageScrollOffsetUsingPageWidth:(double)width;
- (id)_createIconListViewForList:(id)list;
- (id)_stateCaptureString;
- (id)accessibilityTintColorForDockView:(id)view;
- (id)additionalIconListViews;
- (id)allCustomViewControllers;
- (id)beginModifyingDockOffscreenFractionForReason:(id)reason;
- (id)borrowDockViewForReason:(id)reason;
- (id)borrowScrollAccessoryForReason:(id)reason;
- (id)customViewControllerForPageAtIndex:(int64_t)index;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)editMenu;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)iconListView:(id)view alternateIconLocationForListWithNonDefaultSizedIcons:(BOOL)icons;
- (id)iconListViewAtIndex:(unint64_t)index;
- (id)iconListViewAtPoint:(CGPoint)point;
- (id)iconListViewForExtraIndex:(unint64_t)index;
- (id)iconListViewForIconListModelIndex:(unint64_t)index;
- (id)iconListViewForPageIndex:(int64_t)index;
- (id)iconLocationForListsWithNonDefaultSizedIcons;
- (id)leadingCustomViewController;
- (id)makeTitledButtonOfClass:(Class)class;
- (id)newDockBackgroundMaterialViewWithInitialWeighting:(double)weighting;
- (id)newDockBackgroundView;
- (id)newHomeScreenButtonBackgroundView;
- (id)requirePageDotsVisibilityForReason:(id)reason;
- (id)rootListLayout;
- (id)rootWithWidgetsListLayout;
- (id)searchableLeadingCustomWrapperView;
- (id)trailingCustomViewController;
- (id)visibleIconListViews;
- (int64_t)_adjustPageIndexForPageControl:(int64_t)control;
- (int64_t)_adjustPageIndexFromPageControl:(int64_t)control;
- (int64_t)_pageCountForPageControl;
- (int64_t)firstLeadingCustomPageIndex;
- (int64_t)lastLeadingCustomPageIndex;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index;
- (unint64_t)_countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl;
- (unint64_t)_countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl;
- (unint64_t)countOfHiddenLeadingCustomPagesInRange:(_NSRange)range;
- (unint64_t)leadingCustomPageCount;
- (unint64_t)numberOfInitialPagesToPreferVisible;
- (unint64_t)totalLeadingCustomPageCount;
- (unint64_t)trailingCustomPageCount;
- (void)_adjustLeadingCustomContentForEdgeBounce;
- (void)_animateViewsForPullingToSearch;
- (void)_animateViewsForPullingToSearchWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)_animateViewsForScrollingToLeadingOrTrailingCustomView;
- (void)_animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)_applyPageDotsVisibilityAssertions;
- (void)_captureInitialSearchScrollTrackingState;
- (void)_cleanUpAfterOverscrollScrollGestureEnded:(id)ended;
- (void)_cleanUpAfterScrolling;
- (void)_cleanupAfterExtraScrollGesturesCompleted;
- (void)_currentPageIndexDidChangeFromPageIndex:(int64_t)index;
- (void)_flashPageDotsForReason:(id)reason;
- (void)_forceLayoutPageControl;
- (void)_layoutSubviews;
- (void)_layoutSubviewsForLeadingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)_layoutSubviewsForPulldownSearch;
- (void)_layoutSubviewsForTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)_overscrollScrollPanGestureRecognizerDidUpdate:(id)update;
- (void)_reduceMotionStatusDidChange:(id)change;
- (void)_resetSearchScrollTrackingState;
- (void)_setupIdleTextPrivacyDisclosures;
- (void)_setupLeadingCustomBackdropViewIfNecessary;
- (void)_setupSearchBackdropViewIfNecessary;
- (void)_setupStateDumper;
- (void)_setupTrailingCustomBackdropViewIfNecessary;
- (void)_setupTrailingCustomDimmingViewIfNecessary;
- (void)_updateDockViewZOrdering;
- (void)_updateEditingStateAnimated:(BOOL)animated;
- (void)_updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:(BOOL)layout;
- (void)_updateIconListLegibilitySettings;
- (void)_updatePageControlNumberOfPages;
- (void)_updateParallaxSettings;
- (void)_updatePullToSearchSettings;
- (void)_updateScrollingState:(BOOL)state;
- (void)_willScrollToPageIndex:(int64_t)index animated:(BOOL)animated;
- (void)cleanUpAfterTransition;
- (void)dealloc;
- (void)doneButtonTriggered:(id)triggered;
- (void)editHomeScreenWallpaperButtonTriggered:(id)triggered;
- (void)elementBorrowedAssertionDidInvalidate:(id)invalidate;
- (void)enterPageManagementUIWithCompletionHandler:(id)handler;
- (void)enumerateScrollViewPageViewsUsingBlock:(id)block;
- (void)exitPageManagementUIWithCompletionHandler:(id)handler;
- (void)folderDidChange;
- (void)getMetrics:(SBRootFolderViewMetrics *)metrics;
- (void)getMetrics:(SBRootFolderViewMetrics *)metrics dockEdge:(unint64_t)edge;
- (void)iconListViewWillLayoutIcons:(id)icons;
- (void)iconScrollViewDidCancelTouchTracking:(id)tracking;
- (void)iconTintButtonTriggered:(id)triggered;
- (void)layoutDockViewWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout;
- (void)layoutPageControlWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)layoutSearchableViews;
- (void)layoutSearchableViewsWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)layoutTopButtons;
- (void)layoutTopButtonsWithMetrics:(const SBRootFolderViewMetrics *)metrics;
- (void)minimumHomeScreenScaleDidChange;
- (void)pageControlDidBeginScrubbing:(id)scrubbing;
- (void)pageControlDidEndScrubbing:(id)scrubbing;
- (void)pageControlDidReceiveButtonTap:(id)tap;
- (void)prepareForTransition;
- (void)remoteBasebandLogCollectionStateDidChange:(BOOL)change;
- (void)removeDockOffscreenFractionClient:(id)client;
- (void)resetIconListViews;
- (void)returnScalingView;
- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)index withCompletionHandler:(id)handler;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContentAlpha:(double)alpha;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setDockEdge:(unint64_t)edge;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIdleText:(id)text animated:(BOOL)animated;
- (void)setLeadingCustomViewBouncing:(BOOL)bouncing;
- (void)setLeadingCustomViewPageHidden:(BOOL)hidden;
- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(unint64_t)index;
- (void)setLeadingCustomViewVisibilityProgress:(double)progress;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setNeedsLayout;
- (void)setOrientation:(int64_t)orientation;
- (void)setPageControlAlpha:(double)alpha;
- (void)setPageControlHidden:(BOOL)hidden;
- (void)setPullDownSearchVisibilityProgress:(double)progress;
- (void)setSearchGesture:(id)gesture;
- (void)setShouldPrewarmContent:(BOOL)content ofNonIconPageAtIndex:(int64_t)index;
- (void)setShowsAddWidgetButton:(BOOL)button animated:(BOOL)animated;
- (void)setShowsDoneButton:(BOOL)button animated:(BOOL)animated;
- (void)setSpecialLayoutManager:(id)manager completionHandler:(id)handler;
- (void)setSuppressesEditingStateForListViews:(BOOL)views;
- (void)setTitledButtonsAlpha:(double)alpha;
- (void)setTrailingCustomViewVisibilityProgress:(double)progress;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)tearDownListViews;
- (void)transitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)updateDockViewOrientation;
- (void)updateEditButtonMenu;
- (void)updateIconListIndexAndVisibility:(BOOL)visibility;
- (void)updateIconListViews;
- (void)updatePageControlConfiguration;
- (void)widgetButtonTriggered:(id)triggered;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBRootFolderView

- (id)additionalIconListViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_dockListView)
  {
    v5[0] = self->_dockListView;
    additionalIconListViews = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBRootFolderView;
    additionalIconListViews = [(SBFolderView *)&v4 additionalIconListViews];
  }

  return additionalIconListViews;
}

- (unint64_t)leadingCustomPageCount
{
  if (![(SBFolderView *)self iconListViewCount]&& [(SBFolderView *)self automaticallyCreatesIconListViews])
  {
    return 0;
  }

  leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
  v5 = [leadingCustomViewControllers count];

  hiddenLeadingCustomPageIndexes = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  v3 = v5 - [hiddenLeadingCustomPageIndexes count];
  if ([(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    v3 = 0;
  }

  if ([(NSArray *)self->_searchableLeadingCustomWrapperViews count]< v3)
  {
    v3 = [(NSArray *)self->_searchableLeadingCustomWrapperViews count];
  }

  return v3;
}

- (unint64_t)trailingCustomPageCount
{
  if (![(SBFolderView *)self iconListViewCount]&& [(SBFolderView *)self automaticallyCreatesIconListViews])
  {
    return 0;
  }

  trailingCustomView = [(SBRootFolderView *)self trailingCustomView];

  if (!trailingCustomView)
  {
    return 0;
  }

  trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
  v5 = [trailingCustomViewControllers count];

  return v5;
}

- (UIView)trailingCustomView
{
  firstObject = [(NSArray *)self->_searchableTrailingCustomWrapperViews firstObject];
  wrappedView = [firstObject wrappedView];

  return wrappedView;
}

- (id)leadingCustomViewController
{
  leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
  lastObject = [leadingCustomViewControllers lastObject];

  return lastObject;
}

- (BOOL)isDockVisible
{
  [(SBRootFolderView *)self currentDockOffscreenFraction];
  if (v3 >= 1.0)
  {
    return 0;
  }

  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  if (v4 >= 1.0)
  {
    return 0;
  }

  [(SBRootFolderView *)self trailingCustomViewVisibilityProgress];
  return v5 < 1.0;
}

- (double)currentDockOffscreenFraction
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_dockOffscreenProgressSettingClients;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = -1.79769313e308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) desiredOffscreenFraction];
        if (v8 > v6)
        {
          v6 = v8;
        }
      }

      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1.79769313e308;
  }

  result = 0.0;
  if (v6 != -1.79769313e308)
  {
    return v6;
  }

  return result;
}

- (double)_minimumHomeScreenScale
{
  delegate = [(SBFolderView *)self delegate];
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [delegate minimumHomeScreenScaleForFolderView:self];
    v4 = v5;
  }

  return v4;
}

- (double)additionalScrollWidthToKeepVisibleInOneDirection
{
  if (([(SBRootFolderView *)self dockEdge]& 0xA) != 0)
  {

    [(SBRootFolderView *)self maxDockHeight];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBRootFolderView;
    [(SBFolderView *)&v4 additionalScrollWidthToKeepVisibleInOneDirection];
  }

  return result;
}

- (CGRect)_scaledBoundsForMinimumHomeScreenScale
{
  [(SBRootFolderView *)self _minimumHomeScreenScale];
  v4 = v3;
  [(SBRootFolderView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  UIRectGetCenter();
  CGAffineTransformMakeScale(&v17, 1.0 / v4, 1.0 / v4);
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  CGRectApplyAffineTransform(v18, &v17);
  UIRectCenteredAboutPoint();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (SBSearchBackdropView)leadingCustomBackdropView
{
  [(SBRootFolderView *)self _setupLeadingCustomBackdropViewIfNecessary];
  leadingCustomBackdropView = self->_leadingCustomBackdropView;

  return leadingCustomBackdropView;
}

- (void)_setupLeadingCustomBackdropViewIfNecessary
{
  if ([(NSArray *)self->_searchableLeadingCustomWrapperViews count]&& !self->_leadingCustomBackdropView)
  {
    window = [(SBRootFolderView *)self window];
    v4 = window;
    if (window)
    {
      selfCopy = window;
    }

    else
    {
      selfCopy = self;
    }

    v9 = selfCopy;

    v6 = [SBSearchBackdropView alloc];
    [(SBRootFolderView *)self _scaledBoundsForMinimumHomeScreenScale];
    v7 = [(SBSearchBackdropView *)v6 initWithFrame:4 style:?];
    leadingCustomBackdropView = self->_leadingCustomBackdropView;
    self->_leadingCustomBackdropView = v7;

    [(SBSearchBackdropView *)self->_leadingCustomBackdropView setAutoresizingMask:18];
    [(SBSearchBackdropView *)self->_leadingCustomBackdropView setAlpha:1.0];
    [(SBSearchBackdropView *)self->_leadingCustomBackdropView prepareForTransitionType:2];
    [(SBSearchBackdropView *)self->_leadingCustomBackdropView completeTransitionSuccessfully:1];
    [(SBRootFolderView *)v9 insertSubview:self->_leadingCustomBackdropView atIndex:0];
  }
}

- (SBSearchBackdropView)trailingCustomBackdropView
{
  [(SBRootFolderView *)self _setupTrailingCustomBackdropViewIfNecessary];
  trailingCustomBackdropView = self->_trailingCustomBackdropView;

  return trailingCustomBackdropView;
}

- (void)_setupTrailingCustomBackdropViewIfNecessary
{
  if ([(NSArray *)self->_searchableTrailingCustomWrapperViews count]&& !self->_trailingCustomBackdropView)
  {
    window = [(SBRootFolderView *)self window];
    v4 = window;
    if (window)
    {
      selfCopy = window;
    }

    else
    {
      selfCopy = self;
    }

    v10 = selfCopy;

    if ([(NSArray *)self->_leadingCustomViewControllers count])
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }

    v7 = [SBSearchBackdropView alloc];
    [(SBRootFolderView *)self _scaledBoundsForMinimumHomeScreenScale];
    v8 = [(SBSearchBackdropView *)v7 initWithFrame:v6 style:?];
    trailingCustomBackdropView = self->_trailingCustomBackdropView;
    self->_trailingCustomBackdropView = v8;

    [(SBSearchBackdropView *)self->_trailingCustomBackdropView setAutoresizingMask:18];
    [(SBSearchBackdropView *)self->_trailingCustomBackdropView setAlpha:1.0];
    [(SBSearchBackdropView *)self->_trailingCustomBackdropView prepareForTransitionType:2];
    [(SBSearchBackdropView *)self->_trailingCustomBackdropView completeTransitionSuccessfully:1];
    [(SBRootFolderView *)v10 insertSubview:self->_trailingCustomBackdropView atIndex:0];
  }
}

- (id)rootWithWidgetsListLayout
{
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  iconLocationForListsWithNonDefaultSizedIcons = [(SBRootFolderView *)self iconLocationForListsWithNonDefaultSizedIcons];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocationForListsWithNonDefaultSizedIcons];

  return v5;
}

- (id)iconLocationForListsWithNonDefaultSizedIcons
{
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:self];
  }

  else
  {
    [objc_opt_class() defaultIconLocation];
  }
  v4 = ;

  return v4;
}

- (void)_animateViewsForScrollingToLeadingOrTrailingCustomView
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [(SBRootFolderView *)self getMetrics:v3];
  [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:v3];
}

- (void)_layoutSubviewsForPulldownSearch
{
  searchBackdropView = self->_searchBackdropView;
  [(SBRootFolderView *)self _scaledBoundsForMinimumHomeScreenScale];

  [(SBSearchBackdropView *)searchBackdropView setFrame:?];
}

- (double)_spotlightFirstIconRowOffset
{
  firstIconListView = [(SBFolderView *)self firstIconListView];
  layout = [firstIconListView layout];
  [layout layoutInsetsForOrientation:{objc_msgSend(firstIconListView, "orientation")}];
  v6 = v5;

  delegate = [(SBFolderView *)self delegate];
  v8 = objc_opt_respondsToSelector();
  v9 = 0.0;
  if (v8)
  {
    [delegate distanceToTopOfSpotlightIconsForRootFolderView:{self, 0.0}];
  }

  if (v9 - v6 <= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 - v6;
  }

  return v10;
}

- (void)_animateViewsForPullingToSearch
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [(SBRootFolderView *)self getMetrics:v3];
  [(SBRootFolderView *)self _animateViewsForPullingToSearchWithMetrics:v3];
}

- (SBHRootFolderVisualConfiguration)rootFolderVisualConfiguration
{
  rootListLayout = [(SBRootFolderView *)self rootListLayout];
  if (objc_opt_respondsToSelector())
  {
    rootFolderVisualConfiguration = [rootListLayout rootFolderVisualConfiguration];
  }

  else
  {
    rootFolderVisualConfiguration = objc_alloc_init(SBHRootFolderVisualConfiguration);
  }

  v4 = rootFolderVisualConfiguration;

  return v4;
}

- (id)rootListLayout
{
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  iconLocation = [(SBFolderView *)self iconLocation];
  v5 = [listLayoutProvider layoutForIconLocation:iconLocation];

  return v5;
}

- (double)dockHeight
{
  if ([(SBRootFolderView *)self isDockExternal])
  {
    delegate = [(SBFolderView *)self delegate];
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [delegate externalDockHeightForRootFolderView:self];
      v4 = v5;
    }

    return v4;
  }

  else
  {
    dockView = self->_dockView;

    [(SBDockView *)dockView dockHeight];
  }

  return result;
}

- (BOOL)shouldFadeDockOutDuringTransitionToLeadingCustomView
{
  dockView = [(SBRootFolderView *)self dockView];
  v4 = ([dockView isDockInset] & 1) == 0 && (-[SBRootFolderView dockEdge](self, "dockEdge") & 0xA) == 0;

  return v4;
}

- (double)internalDockPageControlVerticalMargin
{
  v3 = 0.0;
  if ([(SBRootFolderView *)self scrollViewHeightIncludesPageControlAndDock])
  {
    rootFolderVisualConfiguration = [(SBRootFolderView *)self rootFolderVisualConfiguration];
    [rootFolderVisualConfiguration pageControlVerticalOffset];
    v3 = v5;
    scrollAccessoryAuxiliaryView = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (scrollAccessoryAuxiliaryView)
    {
      [rootFolderVisualConfiguration scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView];
      v3 = v3 + v7;
    }
  }

  return v3;
}

- (BOOL)scrollViewHeightIncludesPageControlAndDock
{
  v3 = objc_opt_self();
  LOBYTE(self) = [(SBRootFolderView *)self isMemberOfClass:v3];

  return self;
}

- (int64_t)firstLeadingCustomPageIndex
{
  if ([(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  leadingCustomView = [(SBRootFolderView *)self leadingCustomView];

  if (!leadingCustomView)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  return [(SBFolderView *)&v5 firstLeadingCustomPageIndex];
}

- (UIView)leadingCustomView
{
  lastObject = [(NSArray *)self->_searchableLeadingCustomWrapperViews lastObject];
  wrappedView = [lastObject wrappedView];

  return wrappedView;
}

- (BOOL)isDockViewBorrowed
{
  dockBorrowedAssertion = [(SBRootFolderView *)self dockBorrowedAssertion];
  v3 = dockBorrowedAssertion != 0;

  return v3;
}

- (BOOL)isScrollAccessoryBorrowed
{
  scrollAccessoryBorrowedAssertion = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];
  v3 = scrollAccessoryBorrowedAssertion != 0;

  return v3;
}

- (BOOL)isPageManagementUIVisible
{
  specialLayoutManager = [(SBRootFolderView *)self specialLayoutManager];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (double)leadingCustomViewPageScrollOffset
{
  [(SBFolderView *)self _pageWidth];

  [(SBRootFolderView *)self leadingCustomViewPageScrollOffsetUsingPageWidth:?];
  return result;
}

- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing
{
  leadingCustomViewController = [(SBRootFolderView *)self leadingCustomViewController];
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

- (unint64_t)numberOfInitialPagesToPreferVisible
{
  rootFolderVisualConfiguration = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  numberOfInitialPagesToPreferVisible = [rootFolderVisualConfiguration numberOfInitialPagesToPreferVisible];
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  numberOfInitialPagesToPreferVisible2 = [(SBFolderView *)&v8 numberOfInitialPagesToPreferVisible];
  if (numberOfInitialPagesToPreferVisible <= numberOfInitialPagesToPreferVisible2)
  {
    v6 = numberOfInitialPagesToPreferVisible2;
  }

  else
  {
    v6 = numberOfInitialPagesToPreferVisible;
  }

  return v6;
}

- (unint64_t)totalLeadingCustomPageCount
{
  leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
  v3 = [leadingCustomViewControllers count];

  return v3;
}

- (void)setNeedsLayout
{
  [(SBIconListView *)self->_dockListView setIconsNeedLayout];
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 setNeedsLayout];
}

- (void)_layoutSubviews
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  [(SBRootFolderView *)self getMetrics:&v6];
  headerView = [(SBFolderView *)self headerView];
  [headerView setFrame:{v6, v7}];

  if (![(SBFolderView *)self isScalingViewBorrowed])
  {
    [(SBRootFolderView *)self layoutSearchableViewsWithMetrics:&v6];
  }

  if (![(SBRootFolderView *)self isDockViewBorrowed])
  {
    [(SBRootFolderView *)self layoutDockViewWithMetrics:&v6];
  }

  if ([(SBRootFolderView *)self isLeadingCustomViewBouncing])
  {
    [(SBRootFolderView *)self _adjustLeadingCustomContentForEdgeBounce];
    [(SBRootFolderView *)self setLeadingCustomViewBouncing:0];
  }

  searchGesture = [(SBRootFolderView *)self searchGesture];
  [searchGesture updateForRotation];

  searchPresentableView = [(SBRootFolderView *)self searchPresentableView];
  [(SBRootFolderView *)self bounds];
  [searchPresentableView setFrame:?];
}

- (void)_updatePageControlNumberOfPages
{
  pageControl = [(SBFolderView *)self pageControl];
  numberOfPages = [pageControl numberOfPages];
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _updatePageControlNumberOfPages];
  if (numberOfPages != [pageControl numberOfPages])
  {
    scrollAccessoryAuxiliaryView = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (scrollAccessoryAuxiliaryView)
    {
      [(SBRootFolderView *)self _forceLayoutPageControl];
    }

    [(SBRootFolderView *)self _applyPageDotsVisibilityAssertions];
  }
}

- (int64_t)_pageCountForPageControl
{
  leadingCustomPageCount = [(SBRootFolderView *)self leadingCustomPageCount];
  _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl = [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
  trailingCustomPageCount = [(SBRootFolderView *)self trailingCustomPageCount];
  _countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl = [(SBRootFolderView *)self _countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl];
  folder = [(SBFolderView *)self folder];
  visibleListCount = [folder visibleListCount];

  return leadingCustomPageCount + trailingCustomPageCount - (_countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl + _countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl) + visibleListCount;
}

- (unint64_t)_countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
  v3 = [leadingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(leadingCustomViewControllers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 shouldBeIndicatedInPageControl] ^ 1;
        }
      }

      v4 = [leadingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
  v3 = [trailingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(trailingCustomViewControllers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 shouldBeIndicatedInPageControl] ^ 1;
        }
      }

      v4 = [trailingCustomViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)returnScalingView
{
  v12.receiver = self;
  v12.super_class = SBRootFolderView;
  [(SBFolderView *)&v12 returnScalingView];
  [(SBRootFolderView *)self bringSubviewToFront:self->_searchPulldownWrapperView];
  superview = [(SBSearchBackdropView *)self->_leadingCustomBackdropView superview];
  [superview sendSubviewToBack:self->_leadingCustomBackdropView];

  superview2 = [(SBSearchBackdropView *)self->_trailingCustomBackdropView superview];
  [superview2 sendSubviewToBack:self->_trailingCustomBackdropView];

  superview3 = [(SBSearchBackdropView *)self->_trailingCustomBackdropView superview];
  [superview3 insertSubview:self->_trailingCustomSearchDimmingView aboveSubview:self->_trailingCustomBackdropView];

  doneButton = [(SBRootFolderView *)self doneButton];
  v7 = doneButton;
  if (doneButton)
  {
    superview4 = [doneButton superview];
    [superview4 bringSubviewToFront:v7];
  }

  widgetButton = [(SBRootFolderView *)self widgetButton];
  v10 = widgetButton;
  if (widgetButton)
  {
    superview5 = [widgetButton superview];
    [superview5 bringSubviewToFront:v10];
  }
}

- (void)_forceLayoutPageControl
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [(SBRootFolderView *)self getMetrics:v4];
  [(SBRootFolderView *)self layoutPageControlWithMetrics:v4];
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  [scrollAccessoryView setNeedsLayout];
  [scrollAccessoryView layoutIfNeeded];
}

- (void)_applyPageDotsVisibilityAssertions
{
  pageDotsVisibilityTimer = [(SBRootFolderView *)self pageDotsVisibilityTimer];
  [pageDotsVisibilityTimer invalidate];

  [(SBRootFolderView *)self setPageDotsVisibilityTimer:0];
  pageDotsVisibilityAssertions = [(SBRootFolderView *)self pageDotsVisibilityAssertions];
  if ([pageDotsVisibilityAssertions count])
  {
    pageControl = [(SBFolderView *)self pageControl];
    numberOfPages = [pageControl numberOfPages];

    if (numberOfPages > 1)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 1;
LABEL_6:
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  [scrollAccessoryView setMode:v7];
}

- (void)cleanUpAfterTransition
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 cleanUpAfterTransition];
  [(UILabel *)self->_idleTextView setHidden:0];
  self->_iconListFrameOrientationOverride = 0;
  [(SBRootFolderView *)self _updatePageControlNumberOfPages];
  [(SBFolderView *)self _updatePageControlToIndex:[(SBFolderView *)self currentPageIndex]];
}

- (double)_firstPageScrollOffsetForOverscroll
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:[(SBFolderView *)self minimumPageIndex]];

  [(SBFolderView *)self scrollingDimensionForPoint:?];
  return result;
}

- (double)_lastPageScrollOffsetForOverscroll
{
  [(SBFolderView *)self _scrollOffsetForPageAtIndex:[(SBFolderView *)self maximumPageIndex]];

  [(SBFolderView *)self scrollingDimensionForPoint:?];
  return result;
}

- (BOOL)_shouldIgnoreOverscrollOnFirstPageForCurrentOrientation
{
  orientation = [(SBFolderView *)self orientation];

  return [(SBRootFolderView *)self _shouldIgnoreOverscrollOnFirstPageForOrientation:orientation];
}

- (void)_adjustLeadingCustomContentForEdgeBounce
{
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView contentOffset];
  v5 = v4;
  v7 = v6;

  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate rootFolderView:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{v5, v7}];
  }
}

- (void)_captureInitialSearchScrollTrackingState
{
  self->_scrollToSearchIsDraggingOrAnimating = 1;
  [(SBFolderView *)self _pageWidth];
  self->_pageWidthWhenScrollToSearchBeganDragging = v3;
  if ([(SBFolderView *)self isRTL])
  {
    [(SBFolderView *)self _scrollOffsetForFirstListView];
    [(SBFolderView *)self scrollingDimensionForPoint:?];
  }

  else
  {
    pageWidthWhenScrollToSearchBeganDragging = self->_pageWidthWhenScrollToSearchBeganDragging;
  }

  self->_baseOffsetForDeterminingScrollToSearchThreshold = pageWidthWhenScrollToSearchBeganDragging;
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView contentOffset];
  [(SBFolderView *)self scrollingDimensionForPoint:?];
  self->_scrollOffsetWhenScrollingBegan = v5;
}

- (void)_cleanupAfterExtraScrollGesturesCompleted
{
  scrollView = [(SBFolderView *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];

  [(SBRootFolderView *)self _cleanUpAfterOverscrollScrollGestureEnded:panGestureRecognizer];
}

- (void)_updateParallaxSettings
{
  v9.receiver = self;
  v9.super_class = SBRootFolderView;
  [(SBFolderView *)&v9 _updateParallaxSettings];
  if ([(SBFolderView *)self isParallaxEnabled])
  {
    _useParallaxOnPageControl = [(SBRootFolderView *)self _useParallaxOnPageControl];
  }

  else
  {
    _useParallaxOnPageControl = 0;
  }

  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  v6 = scrollAccessoryView;
  v7 = MEMORY[0x1E69DEB00];
  if (!_useParallaxOnPageControl)
  {
    v7 = MEMORY[0x1E69DEAF8];
  }

  [scrollAccessoryView _setVisualAltitude:*v7];

  if ((SBHPerformanceFlagEnabled(9) & 1) == 0)
  {
    scrollView = [(SBFolderView *)self scrollView];
    SBFApplyParallaxSettingsToViewWithFactor();
  }
}

- (void)_cleanUpAfterScrolling
{
  if (![(SBFolderView *)self isScrolling])
  {
    self->_isLeadingCustomViewBouncing = 0;

    [(SBRootFolderView *)self _resetSearchScrollTrackingState];
  }
}

- (void)_resetSearchScrollTrackingState
{
  self->_scrollToSearchIsDraggingOrAnimating = 0;
  self->_pageWidthWhenScrollToSearchBeganDragging = 1.79769313e308;
  self->_baseOffsetForDeterminingScrollToSearchThreshold = 1.79769313e308;
  self->_scrollOffsetWhenScrollingBegan = 1.79769313e308;
}

- (SBRootFolderView)initWithConfiguration:(id)configuration
{
  v118 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v114.receiver = self;
  v114.super_class = SBRootFolderView;
  v5 = [(SBFolderView *)&v114 initWithConfiguration:configurationCopy];
  if (!v5)
  {
    goto LABEL_64;
  }

  v6 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  folder = [(SBFolderView *)v5 folder];
  isForSnapshot = [v8 isForSnapshot];
  v5->_dockEdge = 4;
  v102 = v8;
  v103 = v5;
  v100 = configurationCopy;
  v101 = folder;
  if ([v8 isDockExternal])
  {
    v5->_dockExternal = 1;
  }

  else
  {
    dock = [folder dock];
    dockIconLocation = [(SBRootFolderView *)v5 dockIconLocation];
    v13 = [SBDockIconListView alloc];
    listLayoutProvider = [(SBFolderView *)v103 listLayoutProvider];
    orientation = [(SBFolderView *)v103 orientation];
    iconViewProvider = [(SBFolderView *)v103 iconViewProvider];
    v17 = [(SBDockIconListView *)v13 initWithModel:dock layoutProvider:listLayoutProvider iconLocation:dockIconLocation orientation:orientation iconViewProvider:iconViewProvider];
    dockListView = v103->_dockListView;
    v103->_dockListView = v17;

    v8 = v102;
    [(SBIconListView *)v103->_dockListView setLayoutInsetsMode:2];
    [(SBIconListView *)v103->_dockListView setAutomaticallyAdjustsLayoutMetricsToFit:0];
    [(SBIconListView *)v103->_dockListView setAdjustsColumnPositionsForFullScreenWidth:1];
    [(SBIconListView *)v103->_dockListView setIconGlassGroupingBehavior:2];
    [(SBIconListView *)v103->_dockListView setIconViewBackdropGroupName:@"SBRootFolder"];
    v19 = v103->_dockListView;
    folderIconImageCache = [(SBFolderView *)v103 folderIconImageCache];
    [(SBIconListView *)v19 setFolderIconImageCache:folderIconImageCache];

    v21 = v103->_dockListView;
    iconImageCache = [(SBFolderView *)v103 iconImageCache];
    v23 = v21;
    v5 = v103;
    [(SBIconListView *)v23 setIconImageCache:iconImageCache];

    [(SBIconListView *)v5->_dockListView setLayoutDelegate:v5];
    [(SBIconListView *)v5->_dockListView setDragDelegate:v5];
    [(SBFolderView *)v5 _configureIconListView:v5->_dockListView];
    v24 = [[SBDockView alloc] initWithDockListView:v103->_dockListView forSnapshot:isForSnapshot];
    dockView = v103->_dockView;
    v103->_dockView = v24;

    [(SBDockView *)v103->_dockView setDelegate:v103];
  }

  scalingView = [(SBFolderView *)v5 scalingView];
  headerView = [(SBFolderView *)v5 headerView];
  if (headerView)
  {
    [scalingView addSubview:headerView];
  }

  scrollView = [(SBFolderView *)v5 scrollView];
  [scalingView addSubview:?];
  rootFolderVisualConfiguration = [(SBRootFolderView *)v5 rootFolderVisualConfiguration];
  [rootFolderVisualConfiguration pageControlCustomPadding];
  v29 = v28;
  v31 = v30;
  pageControl = [(SBFolderView *)v5 pageControl];
  v33 = pageControl;
  if (v29 > 0.0)
  {
    [pageControl _setCustomHorizontalPadding:v29];
  }

  if (v31 > 0.0)
  {
    [v33 _setCustomVerticalPadding:v31];
  }

  v34 = [[SBFolderScrollAccessoryView alloc] initWithFolder:folder pageControl:v33];
  scrollAccessoryView = v5->_scrollAccessoryView;
  v5->_scrollAccessoryView = v34;

  scrollAccessoryAuxiliaryView = [v8 scrollAccessoryAuxiliaryView];
  scrollAccessoryAuxiliaryView = v5->_scrollAccessoryAuxiliaryView;
  v5->_scrollAccessoryAuxiliaryView = scrollAccessoryAuxiliaryView;

  scrollAccessoryBackgroundView = [v8 scrollAccessoryBackgroundView];
  scrollAccessoryBackgroundView = v5->_scrollAccessoryBackgroundView;
  v5->_scrollAccessoryBackgroundView = scrollAccessoryBackgroundView;

  [scalingView addSubview:v5->_scrollAccessoryView];
  [(SBRootFolderView *)v5 updatePageControlConfiguration];
  if (isForSnapshot)
  {
    v40 = [(SBRootFolderView *)v5 requirePageDotsVisibilityForReason:@"snapshot"];
    [(SBRootFolderView *)v5 setConfiguredForSnapshotPageDotsVisibilityAssertion:v40];
  }

  if (!SBHHardwareSupportsHomeScreenSearchAffordance())
  {
    v41 = [(SBRootFolderView *)v5 requirePageDotsVisibilityForReason:@"hardware-unsupported"];
    [(SBRootFolderView *)v5 setSearchButtonUnsupportedHardwarePageDotsVisibilityAssertion:v41];
    goto LABEL_20;
  }

  if (!v5->_scrollAccessoryAuxiliaryView)
  {
    v41 = [(SBRootFolderView *)v5 requirePageDotsVisibilityForReason:@"feature-disabled"];
    [(SBRootFolderView *)v5 setSearchButtonDisabledPageDotsVisibilityAssertion:v41];
LABEL_20:
  }

  [(SBRootFolderView *)v5 _applyPageDotsVisibilityAssertions];
  if (v5->_dockView)
  {
    [scalingView addSubview:?];
    [(SBRootFolderView *)v5 _updateDockViewZOrdering];
  }

  leadingCustomViewControllers = [v8 leadingCustomViewControllers];
  v43 = [leadingCustomViewControllers copy];
  leadingCustomViewControllers = v5->_leadingCustomViewControllers;
  v5->_leadingCustomViewControllers = v43;

  v96 = v33;
  if ([(NSArray *)v5->_leadingCustomViewControllers count])
  {
    v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v104 = 0;
  }

  v98 = headerView;
  v99 = scalingView;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v45 = v5->_leadingCustomViewControllers;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v110 objects:v117 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v111;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v111 != v49)
        {
          objc_enumerationMutation(v45);
        }

        view = [*(*(&v110 + 1) + 8 * i) view];
        if (view)
        {
          v52 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
          [(_SBRootFolderLayoutWrapperView *)v52 setWrappedView:view];
          [scrollView addSubview:v52];
          [v104 addObject:v52];

          v48 = 1;
        }

        else
        {
          v103->_leadingCustomViewPageHidden = 1;
        }
      }

      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v110 objects:v117 count:16];
    }

    while (v47);
  }

  else
  {
    v48 = 0;
  }

  v53 = [v104 copy];
  v5 = v103;
  searchableLeadingCustomWrapperViews = v103->_searchableLeadingCustomWrapperViews;
  v103->_searchableLeadingCustomWrapperViews = v53;

  trailingCustomViewControllers = [v102 trailingCustomViewControllers];
  v56 = [trailingCustomViewControllers copy];
  trailingCustomViewControllers = v103->_trailingCustomViewControllers;
  v103->_trailingCustomViewControllers = v56;

  if ([(NSArray *)v103->_trailingCustomViewControllers count])
  {
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v58 = 0;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v59 = v103->_trailingCustomViewControllers;
  v60 = [(NSArray *)v59 countByEnumeratingWithState:&v106 objects:v116 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v107;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v107 != v62)
        {
          objc_enumerationMutation(v59);
        }

        view2 = [*(*(&v106 + 1) + 8 * j) view];
        if (view2)
        {
          v65 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
          [(_SBRootFolderLayoutWrapperView *)v65 setWrappedView:view2];
          [scrollView addSubview:v65];
          [v58 addObject:v65];

          v48 = 1;
        }
      }

      v61 = [(NSArray *)v59 countByEnumeratingWithState:&v106 objects:v116 count:16];
    }

    while (v61);
  }

  v66 = [v58 copy];
  searchableTrailingCustomWrapperViews = v103->_searchableTrailingCustomWrapperViews;
  v103->_searchableTrailingCustomWrapperViews = v66;

  if (v48)
  {
    v68 = objc_alloc_init(SBHMinusPageStepper);
    customPageAnimationStepper = v103->_customPageAnimationStepper;
    v103->_customPageAnimationStepper = v68;
  }

  searchPresenter = [v102 searchPresenter];
  searchPresenter = v103->_searchPresenter;
  v103->_searchPresenter = searchPresenter;

  if (v103->_searchPresenter)
  {
    searchPresentableViewController = [v102 searchPresentableViewController];
    view3 = [searchPresentableViewController view];
    searchPresentableView = v103->_searchPresentableView;
    v103->_searchPresentableView = view3;

    v75 = v103->_searchPresentableView;
    [(SBRootFolderView *)v103 bounds];
    [(UIView *)v75 setFrame:?];
    [(UIView *)v103->_searchPresentableView setHidden:1];
    [(SBRootFolderView *)v103 addSubview:v103->_searchPresentableView];
  }

  pullDownSearchViewController = [v102 pullDownSearchViewController];
  view4 = [pullDownSearchViewController view];

  configurationCopy = v100;
  if (view4 || v103->_searchPresenter)
  {
    v78 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
    searchPulldownWrapperView = v103->_searchPulldownWrapperView;
    v103->_searchPulldownWrapperView = v78;

    if (view4)
    {
      [(_SBRootFolderLayoutWrapperView *)v103->_searchPulldownWrapperView setWrappedView:view4];
    }

    [(_SBRootFolderLayoutWrapperView *)v103->_searchPulldownWrapperView setHidden:1];
    [(SBRootFolderView *)v103 addSubview:v103->_searchPulldownWrapperView];
  }

  v80 = +[SBHHomeScreenDomain rootSettings];
  v103->_ignoresOverscrollOnFirstPageOrientations = [v102 ignoresOverscrollOnFirstPageOrientations];
  ignoresOverscrollOnLastPageOrientations = [v102 ignoresOverscrollOnLastPageOrientations];
  v103->_ignoresOverscrollOnLastPageOrientations = ignoresOverscrollOnLastPageOrientations;
  if (v103->_ignoresOverscrollOnFirstPageOrientations | ignoresOverscrollOnLastPageOrientations)
  {
    panGestureRecognizer = [scrollView panGestureRecognizer];
    [panGestureRecognizer addTarget:v103 action:sel__overscrollScrollPanGestureRecognizerDidUpdate_];
  }

  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  dockOffscreenProgressSettingClients = v103->_dockOffscreenProgressSettingClients;
  v103->_dockOffscreenProgressSettingClients = weakObjectsHashTable;

  iconSettings = [v80 iconSettings];
  iconParallaxSettings = [iconSettings iconParallaxSettings];
  parallaxSettings = v103->_parallaxSettings;
  v103->_parallaxSettings = iconParallaxSettings;

  [(SBFParallaxSettings *)v103->_parallaxSettings addKeyObserver:v103];
  [(SBRootFolderView *)v103 _updateParallaxSettings];
  homeScreenPullToSearchSettings = [v80 homeScreenPullToSearchSettings];
  pullToSearchSettings = v103->_pullToSearchSettings;
  v103->_pullToSearchSettings = homeScreenPullToSearchSettings;

  [(PTSettings *)v103->_pullToSearchSettings addKeyObserver:v103];
  [(SBRootFolderView *)v103 _updatePullToSearchSettings];
  rootFolderSettings = [v80 rootFolderSettings];
  folderSettings = v103->_folderSettings;
  v103->_folderSettings = rootFolderSettings;

  [(SBRootFolderView *)v103 _resetSearchScrollTrackingState];
  v103->_allowsAutoscrollToLeadingCustomView = 1;
  v103->_folderPageManagementAllowedOrientations = [v102 folderPageManagementAllowedOrientations];
  [(SBRootFolderView *)v103 _setupIdleTextPrivacyDisclosures];
  [(SBRootFolderView *)v103 _setupStateDumper];
  v103->_titledButtonsAlpha = 1.0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v103 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x1E69DD918] object:0];

  if (v103->_scrollAccessoryAuxiliaryView)
  {
    v115 = objc_opt_class();
    v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    v94 = [(SBRootFolderView *)v103 registerForTraitChanges:v93 withAction:sel__forceLayoutPageControl];
  }

LABEL_64:
  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x1E69D4008] = [MEMORY[0x1E69D4008] sharedInstance];
  [mEMORY[0x1E69D4008] removeObserver:self];

  [(SBFParallaxSettings *)self->_parallaxSettings removeKeyObserver:self];
  [(BSInvalidatable *)self->_dockStateDumpHandle invalidate];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  pageDotsVisibilityAssertions = [(SBRootFolderView *)self pageDotsVisibilityAssertions];
  v6 = [pageDotsVisibilityAssertions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(pageDotsVisibilityAssertions);
        }

        [*(*(&v11 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [pageDotsVisibilityAssertions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 dealloc];
}

- (id)trailingCustomViewController
{
  trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
  firstObject = [trailingCustomViewControllers firstObject];

  return firstObject;
}

- (id)allCustomViewControllers
{
  leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
  trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
  v5 = [leadingCustomViewControllers arrayByAddingObjectsFromArray:trailingCustomViewControllers];

  return v5;
}

- (id)customViewControllerForPageAtIndex:(int64_t)index
{
  v5 = [(SBFolderView *)self typeForPage:?];
  if (v5 == 2)
  {
    v9 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:index];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v9;
      trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
      goto LABEL_8;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:index];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v7 = v6;
  trailingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
LABEL_8:
  v11 = trailingCustomViewControllers;
  v10 = [trailingCustomViewControllers objectAtIndex:v7];

LABEL_9:

  return v10;
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 setContentVisibility:?];
  dockView = [(SBRootFolderView *)self dockView];
  [dockView setContentVisibility:visibility];
}

- (void)setSearchGesture:(id)gesture
{
  gestureCopy = gesture;
  searchGesture = self->_searchGesture;
  if (searchGesture != gestureCopy)
  {
    v9 = gestureCopy;
    [(SBSearchGesture *)searchGesture setTargetView:0];
    objc_storeStrong(&self->_searchGesture, gesture);
    v7 = self->_searchGesture;
    scrollView = [(SBFolderView *)self scrollView];
    [(SBSearchGesture *)v7 setTargetView:scrollView];

    gestureCopy = v9;
  }

  MEMORY[0x1EEE66BB8](searchGesture, gestureCopy);
}

- (void)setLeadingCustomViewPageHidden:(BOOL)hidden
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_leadingCustomViewPageHidden != hidden)
  {
    hiddenCopy = hidden;
    leadingCustomView = [(SBRootFolderView *)self leadingCustomView];

    if (leadingCustomView)
    {
      if ([(SBRootFolderView *)self isOnLeadingCustomPage]&& hiddenCopy)
      {
        [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self firstIconPageIndex] animated:0];
      }

      currentPageUniqueIdentifier = [(SBFolderView *)self currentPageUniqueIdentifier];
      self->_leadingCustomViewPageHidden = hiddenCopy;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = self->_searchableLeadingCustomWrapperViews;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if (hiddenCopy)
            {
              [*(*(&v15 + 1) + 8 * i) removeFromSuperview];
            }

            else
            {
              scrollView = [(SBFolderView *)self scrollView];
              [scrollView addSubview:v12];
            }
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      [(SBFolderView *)self _updateIconListFrames];
      defaultPageIndex = [(SBFolderView *)self pageIndexForUniqueIdentifier:currentPageUniqueIdentifier];
      if (defaultPageIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        defaultPageIndex = [(SBFolderView *)self defaultPageIndex];
      }

      [(SBFolderView *)self setCurrentPageIndex:defaultPageIndex animated:0, v15];
      [(SBRootFolderView *)self setNeedsLayout];
      [(SBRootFolderView *)self layoutIfNeeded];
    }
  }
}

- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)index
{
  hiddenLeadingCustomPageIndexes = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  LOBYTE(index) = [hiddenLeadingCustomPageIndexes containsIndex:index];

  return index;
}

- (unint64_t)countOfHiddenLeadingCustomPagesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  hiddenLeadingCustomPageIndexes = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  v6 = [hiddenLeadingCustomPageIndexes countOfIndexesInRange:{location, length}];

  return v6;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(unint64_t)index
{
  hiddenCopy = hidden;
  hiddenLeadingCustomPageIndexes = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  if ([hiddenLeadingCustomPageIndexes containsIndex:index] != hiddenCopy)
  {
    currentPageIndex = [(SBFolderView *)self currentPageIndex];
    if ([(SBRootFolderView *)self isOnLeadingCustomPage]&& hiddenCopy && [(SBFolderView *)self leadingCustomPageIndexForPageIndex:currentPageIndex]== index)
    {
      [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self firstIconPageIndex] animated:0];
    }

    currentPageUniqueIdentifier = [(SBFolderView *)self currentPageUniqueIdentifier];
    if (hiddenLeadingCustomPageIndexes)
    {
      v9 = [hiddenLeadingCustomPageIndexes mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    }

    v10 = v9;
    if (hiddenCopy)
    {
      [v9 addIndex:index];
    }

    else
    {
      [v9 removeIndex:index];
    }

    [(SBRootFolderView *)self setHiddenLeadingCustomPageIndexes:v10];
    v11 = [(NSArray *)self->_searchableLeadingCustomWrapperViews objectAtIndex:index];
    v12 = v11;
    if (hiddenCopy)
    {
      [v11 removeFromSuperview];
    }

    else
    {
      scrollView = [(SBFolderView *)self scrollView];
      [scrollView addSubview:v12];
    }

    [(SBFolderView *)self _updateIconListFrames];
    defaultPageIndex = [(SBFolderView *)self pageIndexForUniqueIdentifier:currentPageUniqueIdentifier];
    if (defaultPageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      defaultPageIndex = [(SBFolderView *)self defaultPageIndex];
    }

    [(SBFolderView *)self setCurrentPageIndex:defaultPageIndex animated:0];
    [(SBRootFolderView *)self setNeedsLayout];
    [(SBRootFolderView *)self layoutIfNeeded];
  }
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 setListLayoutProvider:providerCopy animated:animatedCopy];

  listLayoutProvider2 = [(SBFolderView *)self listLayoutProvider];

  if (listLayoutProvider != listLayoutProvider2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__SBRootFolderView_setListLayoutProvider_animated___block_invoke;
    v9[3] = &unk_1E8088C90;
    v9[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.3];
  }
}

uint64_t __51__SBRootFolderView_setListLayoutProvider_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dockView];
  [v2 listLayoutProviderDidChange];

  v3 = *(a1 + 32);

  return [v3 _layoutSubviews];
}

- (void)_flashPageDotsForReason:(id)reason
{
  v3 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:reason];
  [v3 invalidate];
}

- (void)willMoveToWindow:(id)window
{
  v25 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  window = [(SBRootFolderView *)self window];
  if (window)
  {
    v6 = 0;
  }

  else
  {
    v6 = windowCopy != 0;
  }

  window2 = [(SBRootFolderView *)self window];

  if (window2)
  {
    v8 = windowCopy != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v6 || !v8)
  {
    minimumPageIndex = [(SBFolderView *)self minimumPageIndex];
    maximumPageIndex = [(SBFolderView *)self maximumPageIndex];
    currentPageIndex = [(SBFolderView *)self currentPageIndex];
    v12 = maximumPageIndex & ~(maximumPageIndex >> 63);
    if (currentPageIndex <= v12)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (currentPageIndex >= minimumPageIndex)
    {
      v13 = v12;
    }

    else
    {
      v13 = minimumPageIndex;
    }

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "SBRootFolderView current state: %{public}@", buf, 0xCu);
      }

      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        selfCopy = v13;
        _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "SBRootFolderView is moving to page: %{public}lu", buf, 0xCu);
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = windowCopy;
        _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "SBRootFolderView is moving to window: %{public}@", buf, 0xCu);
      }

      v17 = SBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        selfCopy = windowCopy;
        v21 = 2114;
        selfCopy2 = self;
        v23 = 2050;
        v24 = v13;
        _os_log_fault_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_FAULT, "SBRootFolderView is moving to window '%{public}@' state: %{public}@; will trigger setCurrentPageIndex:'%{public}lu' animated:NO", buf, 0x20u);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SBRootFolderView;
  [(SBFolderView *)&v18 willMoveToWindow:windowCopy];
}

- (void)setOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 setOrientation:?];
  if (![(SBRootFolderView *)self isDockViewBorrowed])
  {
    [(SBIconListView *)self->_dockListView setOrientation:orientation];
    [(SBIconListView *)self->_dockListView layoutIconsNow];
  }

  [(SBRootFolderView *)self updateEditButtonMenu];
  [(SBRootFolderView *)self setNeedsLayout];
  [(SBRootFolderView *)self layoutIfNeeded];
}

- (void)setLegibilitySettings:(id)settings
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  settingsCopy = settings;
  [(SBFolderView *)&v5 setLegibilitySettings:settingsCopy];
  [(SBDockView *)self->_dockView setLegibilitySettings:settingsCopy, v5.receiver, v5.super_class];
  [(SBTitledHomeScreenButton *)self->_doneButton setLegibilitySettings:settingsCopy];
  [(SBTitledHomeScreenButton *)self->_widgetButton setLegibilitySettings:settingsCopy];
}

- (void)_updateIconListLegibilitySettings
{
  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [(SBFolderView *)&v7 _updateIconListLegibilitySettings];
  legibilitySettingsForIconListViews = [(SBFolderView *)self legibilitySettingsForIconListViews];
  [(SBIconListView *)self->_dockListView setLegibilitySettings:legibilitySettingsForIconListViews];
  idleTextView = self->_idleTextView;
  primaryColor = [legibilitySettingsForIconListViews primaryColor];
  if (primaryColor)
  {
    [(UILabel *)idleTextView setTextColor:primaryColor];
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)idleTextView setTextColor:whiteColor];
  }
}

- (NSString)dockIconLocation
{
  v2 = objc_opt_class();

  return [v2 dockIconLocation];
}

- (double)maxDockHeight
{
  if ([(SBRootFolderView *)self isDockExternal])
  {
    delegate = [(SBFolderView *)self delegate];
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [delegate maxExternalDockHeightForRootFolderView:self];
      v4 = v5;
    }

    return v4;
  }

  else
  {
    dockView = self->_dockView;

    [(SBDockView *)dockView dockHeight];
  }

  return result;
}

- (void)getMetrics:(SBRootFolderViewMetrics *)metrics
{
  dockEdge = [(SBRootFolderView *)self dockEdge];

  [(SBRootFolderView *)self getMetrics:metrics dockEdge:dockEdge];
}

- (void)getMetrics:(SBRootFolderViewMetrics *)metrics dockEdge:(unint64_t)edge
{
  metrics->var11.size.height = 0.0;
  *&metrics->var10.size.height = 0u;
  *&metrics->var11.origin.y = 0u;
  *&metrics->var9.size.height = 0u;
  *&metrics->var10.origin.y = 0u;
  *&metrics->var8 = 0u;
  *&metrics->var9.origin.y = 0u;
  metrics->var7.origin = 0u;
  metrics->var7.size = 0u;
  metrics->var6.origin = 0u;
  metrics->var6.size = 0u;
  metrics->var5.origin = 0u;
  metrics->var5.size = 0u;
  metrics->var4.origin = 0u;
  metrics->var4.size = 0u;
  metrics->var3.origin = 0u;
  metrics->var3.size = 0u;
  metrics->var2.origin = 0u;
  metrics->var2.size = 0u;
  metrics->var1.origin = 0u;
  metrics->var1.size = 0u;
  metrics->var0.origin = 0u;
  metrics->var0.size = 0u;
  [(SBRootFolderView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBRootFolderView *)self safeAreaInsets];
  rootWithWidgetsListLayout = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  rootWithWidgetsListLayout2 = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  [rootWithWidgetsListLayout2 iconImageInfo];
  v18 = v17;

  IsZero = BSFloatIsZero();
  v20 = 1.0;
  remainder.origin.x = v8;
  remainder.origin.y = v10;
  if (!IsZero)
  {
    v20 = v18;
  }

  v127 = v20;
  remainder.size.width = v12;
  remainder.size.height = v14;
  v143.origin.x = v8;
  v143.origin.y = v10;
  v143.size.width = v12;
  v143.size.height = v14;
  v142.origin.x = v8;
  v142.origin.y = v10;
  v142.size.width = v12;
  v142.size.height = v14;
  v145.origin.x = v8;
  v145.origin.y = v10;
  v145.size.width = v12;
  v145.size.height = v14;
  Width = CGRectGetWidth(v145);
  v146.origin.x = v8;
  rect = v10;
  v146.origin.y = v10;
  v146.size.width = v12;
  v146.size.height = v14;
  if (Width < CGRectGetHeight(v146))
  {
    v147.origin.x = v8;
    v147.origin.y = v10;
    v147.size.width = v12;
    v147.size.height = v14;
    v22 = CGRectGetWidth(v147);
    v148.origin.x = v8;
    v148.origin.y = v10;
    v148.size.width = v12;
    v148.size.height = v14;
    v142.size.width = CGRectGetHeight(v148);
    v142.size.height = v22;
  }

  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v24 = v23;
  [(SBRootFolderView *)self trailingCustomViewVisibilityProgress];
  v26 = v25;
  rootFolderVisualConfiguration = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  gridSizeClassDomain = [(SBFolderView *)self gridSizeClassDomain];
  [(SBRootFolderView *)self dockHeight];
  v30 = v29;
  [(SBRootFolderView *)self currentDockOffscreenFraction];
  v32 = v31;
  v33 = CGRectMinYEdge;
  v124 = v14;
  if (edge <= 3)
  {
    if (!edge)
    {
      goto LABEL_13;
    }

    if (edge != 2)
    {
      goto LABEL_14;
    }

    v125 = v12;
    v34 = rect;
    v33 = CGRectMinXEdge;
LABEL_18:
    isDockExternal = [(SBRootFolderView *)self isDockExternal];
    isRTL = [(SBFolderView *)self isRTL];
    if (v32 <= 0.0)
    {
      v38 = v30;
    }

    else
    {
      v38 = v30 * (1.0 - v32);
    }

    if (v24 >= v26)
    {
      v39 = v24;
    }

    else
    {
      v39 = v26;
    }

    v149.origin.x = v8;
    v149.origin.y = v34;
    v12 = v125;
    v149.size.width = v125;
    v149.size.height = v124;
    v40 = v39 * (CGRectGetWidth(v149) - v30);
    v14 = v124;
    v41 = fmax(v30 - v40, 0.0);
    if (v30 <= v41)
    {
      v41 = v30;
    }

    if (v38 <= v41)
    {
      v37 = v38;
    }

    else
    {
      v37 = v41;
    }

    goto LABEL_29;
  }

  switch(edge)
  {
    case 0xFuLL:
LABEL_13:
      v33 = CGRectMaxYEdge;
      break;
    case 8uLL:
      v125 = v12;
      v34 = rect;
      v33 = CGRectMaxXEdge;
      goto LABEL_18;
    case 4uLL:
      goto LABEL_13;
  }

LABEL_14:
  isDockExternal = [(SBRootFolderView *)self isDockExternal];
  isRTL = [(SBFolderView *)self isRTL];
  if (v32 <= 0.0)
  {
    v37 = v30;
  }

  else
  {
    v37 = v30 * (1.0 - v32);
  }

LABEL_29:
  if (v37 >= 0.0)
  {
    v42 = v14;
  }

  else
  {
    v42 = v14 - v37;
    remainder.size.height = v14 - v37;
    v37 = 0.0;
  }

  v43 = v8;
  v44 = rect;
  v45 = v12;
  CGRectDivide(*(&v42 - 3), &metrics->var7, &remainder, v37, v33);
  memset(&slice, 0, sizeof(slice));
  CGRectDivide(v143, &slice, &v143, v30, v33);
  memset(&v140, 0, sizeof(v140));
  CGRectDivide(v142, &v140, &v142, v30, v33);
  v121 = CGRectGetWidth(v143);
  v46 = v26 * v121;
  *(&metrics->var0.origin.x + qword_1BEE85A28[v33]) = v30;
  v47 = 0.0;
  if ([(SBRootFolderView *)self shouldScrollDockDuringTransitionToLeadingCustomView])
  {
    if (edge > 0xF)
    {
      goto LABEL_47;
    }

    if (((1 << edge) & 0x106) == 0)
    {
      if (((1 << edge) & 0x8011) == 0)
      {
        goto LABEL_47;
      }

      if ([(SBRootFolderView *)self shouldFadeDockOutDuringTransitionToLeadingCustomView])
      {
        if (v24 * v121 <= 0.0)
        {
          if (v46 > 0.0)
          {
            v119 = -v46;
            if (!isRTL)
            {
              v119 = v46;
            }

            v47 = 0.0 - v119;
          }
        }

        else if (isRTL)
        {
          v47 = -(v24 * v121);
        }

        else
        {
          v47 = v24 * v121;
        }
      }

      else
      {
        v48 = -(v24 * v121);
        if (!isRTL)
        {
          v48 = v24 * v121;
        }

        v49 = v48 + metrics->var7.origin.x;
        v50 = -v46;
        if (!isRTL)
        {
          v50 = v46;
        }

        metrics->var7.origin.x = v49 - v50;
      }
    }
  }

  metrics->var8 = v47;
LABEL_47:
  [(SBFolderView *)self headerHeight];
  if (v51 != 0.0)
  {
    v52 = v51;
    CGRectDivide(remainder, &metrics->var0, &remainder, v51, CGRectMinYEdge);
    memset(&v139, 0, sizeof(v139));
    CGRectDivide(v143, &v139, &v143, v52, CGRectMinYEdge);
    memset(&v138, 0, sizeof(v138));
    CGRectDivide(v142, &v138, &v142, v52, CGRectMinYEdge);
  }

  doneButton = [(SBRootFolderView *)self doneButton];
  widgetButton = [(SBRootFolderView *)self widgetButton];
  v55 = *(MEMORY[0x1E695F058] + 16);
  v137.origin = *MEMORY[0x1E695F058];
  v137.size = v55;
  v122 = v55;
  origin = v137.origin;
  v136.origin = v137.origin;
  v136.size = v55;
  leadingCustomViewController = [(SBRootFolderView *)self leadingCustomViewController];
  v57 = v24 * v121;
  if (objc_opt_respondsToSelector())
  {
    [leadingCustomViewController scrollPageOffsetForButtonsInEditingMode];
    v57 = v58;
  }

  [objc_opt_class() _editButtonLayoutFramesInBounds:rootFolderVisualConfiguration forVisualConfiguration:isRTL withTranslationOffset:doneButton inRTL:widgetButton doneButton:&v136 addWidgetButton:&v137 doneButtonFrame:v8 addWidgetButtonFrame:{rect, v12, v14, v57}];
  size = v137.size;
  metrics->var2.origin = v137.origin;
  metrics->var2.size = size;
  v60 = v136.size;
  metrics->var1.origin = v136.origin;
  metrics->var1.size = v60;
  x = v137.origin.x;
  v60.width = v137.origin.y;
  v62 = v137.size.width;
  height = v137.size.height;
  v150 = CGRectUnion(*(&v60 - 8), v136);
  MaxY = CGRectGetMaxY(v150);
  metrics->var3.origin.x = 0.0;
  metrics->var3.origin.y = 0.0;
  v151.origin.x = v8;
  v151.origin.y = rect;
  v126 = v12;
  v151.size.width = v12;
  v151.size.height = v14;
  metrics->var3.size.width = CGRectGetWidth(v151);
  metrics->var3.size.height = MaxY + 20.0;

  if (self->_idleTextView)
  {
    orientation = [(SBFolderView *)self orientation];
    [rootWithWidgetsListLayout layoutInsetsForOrientation:orientation];
    v67 = v66;
    SBHIconListLayoutLargestExtraIconImageSizeInDomain(rootWithWidgetsListLayout, orientation, gridSizeClassDomain);
    v69 = v67 + v68 * -0.5;
    memset(&v137, 0, sizeof(v137));
    memset(&v135, 0, sizeof(v135));
    CGRectDivide(remainder, &v137, &v135, v69, CGRectMinYEdge);
    memset(&v134, 0, sizeof(v134));
    CGRectDivide(remainder, &v134, &remainder, v69, CGRectMinYEdge);
    memset(&v133, 0, sizeof(v133));
    CGRectDivide(v143, &v133, &v143, v69, CGRectMinYEdge);
    memset(&v132, 0, sizeof(v132));
    CGRectDivide(v142, &v132, &v142, v69, CGRectMinYEdge);
    font = [(UILabel *)self->_idleTextView font];
    [font lineHeight];

    [rootFolderVisualConfiguration idleTextVerticalOffset];
    UIRectInsetEdges();
    CGRectGetWidth(remainder);
    UISizeRoundToScale();
    BSRectWithSize();
    v120 = v127;
    UIRectCenteredYInRectScale();
    metrics->var4.size.width = v73;
    metrics->var4.size.height = v74;
    v75 = v24 * v121;
    if (isRTL)
    {
      v75 = -(v24 * v121);
    }

    metrics->var4.origin.x = v75 + v71;
    metrics->var4.origin.y = v72;
  }

  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  pageControl = [(SBFolderView *)self pageControl];
  if (isDockExternal)
  {
    [(SBRootFolderView *)self externalDockPageControlVerticalMargin];
    v79 = v78;
    v80 = 0.0;
  }

  else
  {
    [(SBRootFolderView *)self internalDockPageControlVerticalMargin];
    v79 = v81;
    [(SBRootFolderView *)self internalDockPageControlHorizontalOffset];
    v80 = v82;
  }

  [rootFolderVisualConfiguration pageControlFrameInset];
  [scrollAccessoryView intrinsicContentSize];
  v84 = v83;
  v86 = v85;
  [pageControl sizeForNumberOfPages:2];
  if (v84 < v87)
  {
    v84 = v87;
  }

  SBFFloatCeilForScale();
  v89 = v88;
  SBFFloatCeilForScale();
  v91 = v90;
  v152.origin.x = 0.0;
  v152.origin.y = 0.0;
  v152.size.width = v84;
  v152.size.height = v86;
  CGRectInset(v152, v89, v91);
  UIRectCenteredXInRectScale();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v80 + v98;
  v100 = CGRectGetMaxY(remainder);
  v153.origin.x = v99;
  v153.origin.y = v93;
  v153.size.width = v95;
  v153.size.height = v97;
  v101 = v100 - CGRectGetHeight(v153) - v79;
  v102 = CGRectGetMaxY(remainder);
  v154.origin.x = v99;
  v154.origin.y = v101;
  v154.size.width = v95;
  v154.size.height = v97;
  v103 = v102 - CGRectGetMinY(v154);
  memset(&v131, 0, sizeof(v131));
  CGRectDivide(remainder, &v131, &remainder, v103, CGRectMaxYEdge);
  memset(&v130, 0, sizeof(v130));
  CGRectDivide(v143, &v130, &v143, v103, CGRectMaxYEdge);
  memset(&v129, 0, sizeof(v129));
  CGRectDivide(v142, &v129, &v142, v103, CGRectMaxYEdge);
  [(SBRootFolderView *)self shouldScrollPageControlDuringTransitionToLeadingCustomView];
  SBFRectRoundForScale();
  metrics->var6.origin.x = v104;
  metrics->var6.origin.y = v105;
  metrics->var6.size.width = v106;
  metrics->var6.size.height = v107;

  if (isDockExternal)
  {
    metrics->var5.origin.x = v8;
    metrics->var5.origin.y = rect;
    v108 = v126;
    metrics->var5.size.width = v126;
    metrics->var5.size.height = v124;
  }

  else
  {
    v108 = v126;
    if ([(SBRootFolderView *)self scrollViewHeightIncludesPageControlAndDock])
    {
      v109 = CGRectGetWidth(v143);
      v155.origin.x = v8;
      v155.origin.y = rect;
      v155.size.width = v126;
      v155.size.height = v124;
      v110 = CGRectGetHeight(v155);
      metrics->var5.origin.x = v8;
      metrics->var5.origin.y = rect;
      metrics->var5.size.width = v109;
      metrics->var5.size.height = v110;
    }

    else
    {
      v111 = v143.size;
      metrics->var5.origin = v143.origin;
      metrics->var5.size = v111;
    }
  }

  if (self->_searchableLeadingCustomWrapperViews || self->_searchableTrailingCustomWrapperViews)
  {
    scrollView = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self convertRect:scrollView toView:v8, rect, v108, v124];
    v114 = v113;
    v116 = v115;
    if ([(NSArray *)self->_searchableLeadingCustomWrapperViews count])
    {
      metrics->var9.origin.x = 0.0;
      metrics->var9.origin.y = 0.0;
      metrics->var9.size.width = v114;
      metrics->var9.size.height = v116;
      [(SBRootFolderView *)self leadingCustomViewPageScrollOffsetUsingPageWidth:v121];
      metrics->var9.origin.x = v117;
    }

    if ([(NSArray *)self->_searchableTrailingCustomWrapperViews count])
    {
      metrics->var10.origin.x = 0.0;
      metrics->var10.origin.y = 0.0;
      metrics->var10.size.width = v114;
      metrics->var10.size.height = v116;
      [(SBRootFolderView *)self trailingCustomViewPageScrollOffsetUsingPageWidth:v121];
      metrics->var10.origin.x = v118;
    }
  }

  metrics->var11.origin = origin;
  metrics->var11.size = v122;
}

- (double)externalDockPageControlVerticalMargin
{
  rootWithWidgetsListLayout = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  gridSizeClassDomain = [(SBFolderView *)self gridSizeClassDomain];
  orientation = [(SBFolderView *)self orientation];
  [rootWithWidgetsListLayout layoutInsetsForOrientation:orientation];
  v7 = v6;
  v9 = v8;
  v34 = v10;
  v12 = v11;
  v13 = SBHIconListLayoutLargestExtraIconImageSizeInDomain(rootWithWidgetsListLayout, orientation, gridSizeClassDomain);
  v35 = v14;
  [(SBRootFolderView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v9 + v15;
  rect = v7 + v17;
  v24 = v19 - (v9 + v12);
  v25 = v21 - (v7 + v34);
  [(SBRootFolderView *)self dockHeight];
  v27 = v26;
  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = v23;
  v37.origin.y = rect;
  v37.size.width = v24;
  v37.size.height = v25;
  v29 = MaxY - CGRectGetMaxY(v37) - v27 - v35 * 0.5;
  [(SBFolderView *)self pageControlAreaHeight];
  v31 = ceil(v29 * 0.5 - v30 * 0.5);

  return v31;
}

- (void)_layoutSubviewsForLeadingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  size = metrics->var9.size;
  origin = metrics->var9.origin;
  v13 = size;
  [(SBFolderView *)self _pageWidthOrHeight];
  v6 = v5;
  isVertical = [(SBFolderView *)self isVertical];
  isRTL = [(SBFolderView *)self isRTL];
  searchableLeadingCustomWrapperViews = self->_searchableLeadingCustomWrapperViews;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SBRootFolderView__layoutSubviewsForLeadingCustomViewWithMetrics___block_invoke;
  v11[3] = &unk_1E808B2B0;
  if (isRTL)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11[4] = self;
  v15 = isVertical;
  v16 = isRTL;
  v14 = v6;
  [(NSArray *)searchableLeadingCustomWrapperViews enumerateObjectsWithOptions:v10 usingBlock:v11];
}

void __67__SBRootFolderView__layoutSubviewsForLeadingCustomViewWithMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (([*(a1 + 32) isLeadingCustomViewPageHiddenAtIndex:a3] & 1) == 0)
  {
    v5 = a3 - [*(a1 + 32) countOfHiddenLeadingCustomPagesInRange:{0, a3}];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v9 = v5;
    if (*(a1 + 81))
    {
      v8 = -v8;
    }

    v10 = v7 + v8 * v9;
    v11 = v6 + v8 * v9;
    if (*(a1 + 80))
    {
      v7 = v10;
    }

    else
    {
      v6 = v11;
    }

    [v12 setFrame:{v6, v7, *(a1 + 56), *(a1 + 64), v11, v10}];
  }
}

- (void)_layoutSubviewsForTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  size = metrics->var10.size;
  origin = metrics->var10.origin;
  v13 = size;
  [(SBFolderView *)self _pageWidthOrHeight];
  v6 = v5;
  isVertical = [(SBFolderView *)self isVertical];
  isRTL = [(SBFolderView *)self isRTL];
  searchableTrailingCustomWrapperViews = self->_searchableTrailingCustomWrapperViews;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SBRootFolderView__layoutSubviewsForTrailingCustomViewWithMetrics___block_invoke;
  v11[3] = &__block_descriptor_74_e47_v32__0___SBRootFolderLayoutWrapperView_8Q16_B24l;
  if (isRTL)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v15 = isVertical;
  v16 = isRTL;
  v14 = v6;
  [(NSArray *)searchableTrailingCustomWrapperViews enumerateObjectsWithOptions:v10 usingBlock:v11];
}

uint64_t __68__SBRootFolderView__layoutSubviewsForTrailingCustomViewWithMetrics___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  if (*(a1 + 73))
  {
    v5 = -v5;
  }

  v6 = v4 + v5 * a3;
  v7 = v3 + v5 * a3;
  if (*(a1 + 72))
  {
    v4 = v6;
  }

  else
  {
    v3 = v7;
  }

  return [a2 setFrame:{v3, v4, *(a1 + 48), *(a1 + 56), v7, a3, v6}];
}

- (void)layoutSearchableViews
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [(SBRootFolderView *)self getMetrics:v3];
  [(SBRootFolderView *)self layoutSearchableViewsWithMetrics:v3];
}

- (void)layoutSearchableViewsWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  [(SBRootFolderView *)self _animateViewsForPullingToSearchWithMetrics:?];
  [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:metrics];
  [(SBRootFolderView *)self _layoutSubviewsForPulldownSearch];
  [(SBRootFolderView *)self _layoutSubviewsForLeadingCustomViewWithMetrics:metrics];
  [(SBRootFolderView *)self _layoutSubviewsForTrailingCustomViewWithMetrics:metrics];
  [(SBRootFolderView *)self _updateDockOffscreenFractionWithMetrics:metrics];
  if (![(SBFolderView *)self isRTL])
  {
    scrollView = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self leadingCustomViewPageScrollOffset];
    [scrollView _setFirstPageOffset:?];
  }
}

- (CGRect)_scrollViewFrameForDockEdge:(unint64_t)edge
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  [(SBRootFolderView *)self getMetrics:v7 dockEdge:edge];
  v4 = *(&v8 + 1);
  v3 = *&v8;
  v6 = *(&v9 + 1);
  v5 = *&v9;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layoutPageControlWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
    pageControl = [(SBFolderView *)self pageControl];
    _isInRetargetableAnimationBlock = [MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock];
    _isInAnimationBlock = [MEMORY[0x1E69DD250] _isInAnimationBlock];
    isModifyingDockOffscreenFraction = [(SBRootFolderView *)self isModifyingDockOffscreenFraction];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__SBRootFolderView_layoutPageControlWithMetrics___block_invoke;
    aBlock[3] = &unk_1E808A090;
    v10 = scrollAccessoryView;
    v15 = v10;
    metricsCopy = metrics;
    v11 = pageControl;
    v16 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (!isModifyingDockOffscreenFraction || (_isInRetargetableAnimationBlock & 1) != 0 || (_isInAnimationBlock & 1) != 0)
    {
      (*(v12 + 2))(v12);
    }

    else
    {
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v12];
    }
  }
}

void __49__SBRootFolderView_layoutPageControlWithMetrics___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) sbf_setBoundsAndPositionFromFrame:{*(*(a1 + 48) + 192), *(*(a1 + 48) + 200), *(*(a1 + 48) + 208), *(*(a1 + 48) + 216)}];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696B098] valueWithCGRect:{*(*(a1 + 48) + 328), *(*(a1 + 48) + 336), *(*(a1 + 48) + 344), *(*(a1 + 48) + 352)}];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setTouchIgnoreRects:v4];
}

- (void)layoutDockViewWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  if (![(SBRootFolderView *)self isDockViewBorrowed])
  {
    dockView = [(SBRootFolderView *)self dockView];
    if (dockView)
    {
      dockListView = [(SBRootFolderView *)self dockListView];
      isDockExternal = [(SBRootFolderView *)self isDockExternal];
      p_var7 = &metrics->var7;
      if (isDockExternal)
      {
        p_var7 = MEMORY[0x1E695F058];
      }

      size = p_var7->size;
      origin = p_var7->origin;
      v31 = size;
      [(SBRootFolderView *)self dockIconSpacingWithMetrics:metrics];
      v11 = v10;
      v13 = v12;
      _isInRetargetableAnimationBlock = [MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock];
      _isInAnimationBlock = [MEMORY[0x1E69DD250] _isInAnimationBlock];
      isModifyingDockOffscreenFraction = [(SBRootFolderView *)self isModifyingDockOffscreenFraction];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__SBRootFolderView_layoutDockViewWithMetrics___block_invoke;
      aBlock[3] = &unk_1E808B2F8;
      v23 = dockView;
      v25 = origin;
      v26 = v31;
      metricsCopy = metrics;
      v17 = dockListView;
      v24 = v17;
      v28 = v11;
      v29 = v13;
      v18 = _Block_copy(aBlock);
      v19 = v18;
      if (!isModifyingDockOffscreenFraction || (_isInRetargetableAnimationBlock & 1) != 0 || (_isInAnimationBlock & 1) != 0)
      {
        (*(v18 + 2))(v18);
      }

      else
      {
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v18];
      }

      dockListView2 = [(SBRootFolderView *)self dockListView];
      displayedModel = [dockListView2 displayedModel];
      -[SBRootFolderView setLastDockIconCountCheckedForIconSpacing:](self, "setLastDockIconCountCheckedForIconSpacing:", [displayedModel numberOfIcons]);
    }
  }
}

uint64_t __46__SBRootFolderView_layoutDockViewWithMetrics___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sbf_setBoundsAndPositionFromFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setDockListOffset:*(*(a1 + 80) + 256)];
  [*(a1 + 40) setIconSpacing:{*(a1 + 88), *(a1 + 96)}];
  v2 = *(a1 + 40);

  return [v2 layoutIconsIfNeeded];
}

- (CGSize)dockIconSpacing
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  [(SBRootFolderView *)self getMetrics:v5];
  [(SBRootFolderView *)self dockIconSpacingWithMetrics:v5];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)dockIconSpacingWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  dockListView = [(SBRootFolderView *)self dockListView];
  displayedModel = [dockListView displayedModel];
  listLayoutProvider = [(SBFolderView *)self listLayoutProvider];
  v7 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationDock"];

  v8 = SBHIconListLayoutListIconSpacingWithDefault(v7, 1, 20.0);
  numberOfIcons = [displayedModel numberOfIcons];
  if (numberOfIcons >= [dockListView maximumIconCount])
  {
    v10 = -123.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)beginModifyingDockOffscreenFractionForReason:(id)reason
{
  v10 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = reasonCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Begin modifying dock offscreen fraction for reason: %{public}@", &v8, 0xCu);
  }

  v6 = [[_SBRootFolderDockOffscreenFractionClient alloc] initWithFolderView:self reason:reasonCopy];
  [(NSHashTable *)self->_dockOffscreenProgressSettingClients addObject:v6];

  return v6;
}

- (void)removeDockOffscreenFractionClient:(id)client
{
  v9 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reason = [clientCopy reason];
    v7 = 138543362;
    v8 = reason;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "End modifying dock offscreen fraction for reason: %{public}@", &v7, 0xCu);
  }

  [(NSHashTable *)self->_dockOffscreenProgressSettingClients removeObject:clientCopy];
  [(SBRootFolderView *)self setNeedsLayout];
}

- (void)setDockEdge:(unint64_t)edge
{
  if (self->_dockEdge != edge)
  {
    self->_dockEdge = edge;
    dockView = [(SBRootFolderView *)self dockView];
    [dockView setDockEdge:edge];

    [(SBRootFolderView *)self _updateDockViewZOrdering];
    [(SBRootFolderView *)self _updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:0];

    [(SBRootFolderView *)self setNeedsLayout];
  }
}

- (void)updateDockViewOrientation
{
  [(SBIconListView *)self->_dockListView setOrientation:[(SBFolderView *)self orientation]];
  dockListView = self->_dockListView;

  [(SBIconListView *)dockListView layoutIconsNow];
}

- (void)_updateDockViewZOrdering
{
  dockEdge = [(SBRootFolderView *)self dockEdge];
  if (dockEdge > 7)
  {
    if (dockEdge == 15)
    {
      goto LABEL_9;
    }

    if (dockEdge != 8)
    {
      goto LABEL_12;
    }

LABEL_7:
    scalingView = [(SBFolderView *)self scalingView];
    goto LABEL_8;
  }

  if (dockEdge == 2)
  {
    goto LABEL_7;
  }

  if (dockEdge != 4)
  {
    goto LABEL_12;
  }

LABEL_9:
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  if (BSFloatIsZero())
  {
    [(SBRootFolderView *)self trailingCustomViewVisibilityProgress];
    IsZero = BSFloatIsZero();
    scalingView = [(SBFolderView *)self scalingView];
    if (!IsZero)
    {
      goto LABEL_13;
    }

LABEL_8:
    v6 = scalingView;
    [scalingView bringSubviewToFront:self->_dockView];
    goto LABEL_14;
  }

LABEL_12:
  scalingView = [(SBFolderView *)self scalingView];
LABEL_13:
  v6 = scalingView;
  [scalingView sendSubviewToBack:self->_dockView];
LABEL_14:
}

- (void)setContentAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 setContentAlpha:?];
  dockView = [(SBRootFolderView *)self dockView];
  [dockView setAlpha:alpha];
}

- (id)borrowDockViewForReason:(id)reason
{
  reasonCopy = reason;
  dockBorrowedAssertion = [(SBRootFolderView *)self dockBorrowedAssertion];

  if (dockBorrowedAssertion)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_SBRootFolderViewElementBorrowedAssertion alloc] initWithFolderView:self reason:reasonCopy];
    [(SBRootFolderView *)self setDockBorrowedAssertion:v6];
  }

  return v6;
}

- (void)elementBorrowedAssertionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dockBorrowedAssertion = [(SBRootFolderView *)self dockBorrowedAssertion];

  if (dockBorrowedAssertion == invalidateCopy)
  {
    [(SBRootFolderView *)self setDockBorrowedAssertion:0];
    scalingView = [(SBFolderView *)self scalingView];
    [scalingView addSubview:self->_dockView];
    [(SBDockView *)self->_dockView setAlpha:1.0];
    [(SBDockView *)self->_dockView setHidden:0];
    [(SBRootFolderView *)self updateDockViewOrientation];
    [(SBRootFolderView *)self _updateDockViewZOrdering];
    [(SBRootFolderView *)self setNeedsLayout];
LABEL_11:

    goto LABEL_12;
  }

  scrollAccessoryBorrowedAssertion = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];

  if (scrollAccessoryBorrowedAssertion == invalidateCopy)
  {
    [(SBRootFolderView *)self setScrollAccessoryBorrowedAssertion:0];
    scalingView = [(SBFolderView *)self scalingView];
    scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
    [scalingView addSubview:scrollAccessoryView];
    pageControl = [(SBFolderView *)self pageControl];
    if (![pageControl hidesForSinglePage] || objc_msgSend(pageControl, "numberOfPages") >= 2)
    {
      [pageControl setAlpha:1.0];
      [pageControl setHidden:0];
    }

    [(SBRootFolderView *)self setNeedsLayout];

    goto LABEL_11;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SBRootFolderView *)invalidateCopy elementBorrowedAssertionDidInvalidate:v7];
  }

LABEL_12:
}

- (id)borrowScrollAccessoryForReason:(id)reason
{
  reasonCopy = reason;
  scrollAccessoryBorrowedAssertion = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];

  if (scrollAccessoryBorrowedAssertion)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_SBRootFolderViewElementBorrowedAssertion alloc] initWithFolderView:self reason:reasonCopy];
    [(SBRootFolderView *)self setScrollAccessoryBorrowedAssertion:v6];
  }

  return v6;
}

- (id)requirePageDotsVisibilityForReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__SBRootFolderView_requirePageDotsVisibilityForReason___block_invoke;
  v15 = &unk_1E808A7B8;
  objc_copyWeak(&v16, &location);
  v8 = [v5 initWithIdentifier:@"RootFolderPageDotsVisibility" forReason:reasonCopy queue:v6 invalidationBlock:&v12];

  array = [(SBRootFolderView *)self pageDotsVisibilityAssertions:v12];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(SBRootFolderView *)self setPageDotsVisibilityAssertions:array];
  }

  v10 = [array count];
  [array addObject:v8];
  if (!v10)
  {
    [(SBRootFolderView *)self _applyPageDotsVisibilityAssertions];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v8;
}

void __55__SBRootFolderView_requirePageDotsVisibilityForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained pageDotsVisibilityAssertions];
  [v5 removeObject:v3];

  if (![v5 count])
  {
    v6 = MEMORY[0x1E695DFF0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SBRootFolderView_requirePageDotsVisibilityForReason___block_invoke_2;
    v9[3] = &unk_1E808B320;
    v7 = WeakRetained;
    v10 = v7;
    v8 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:0.8];
    [v7 setPageDotsVisibilityTimer:v8];
  }
}

- (void)setPageControlAlpha:(double)alpha
{
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
    [scrollAccessoryView setAlpha:alpha];
  }
}

- (BOOL)isPageControlHidden
{
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  isHidden = [scrollAccessoryView isHidden];

  return isHidden;
}

- (void)setPageControlHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  [scrollAccessoryView setHidden:hiddenCopy];
}

- (double)pageControlAlpha
{
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  [scrollAccessoryView alpha];
  v4 = v3;

  return v4;
}

- (int64_t)_adjustPageIndexForPageControl:(int64_t)control
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v6 _adjustPageIndexForPageControl:control];
  return v4 - [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
}

- (int64_t)_adjustPageIndexFromPageControl:(int64_t)control
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v6 _adjustPageIndexForPageControl:control];
  return v4 + [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
}

- (UIEdgeInsets)statusBarInsetsForDockEdge:(unint64_t)edge
{
  [(SBRootFolderView *)self currentDockOffscreenFraction];

  [(SBRootFolderView *)self _statusBarInsetsForDockEdge:edge dockOffscreenPercentage:?];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)searchableLeadingCustomWrapperView
{
  [(SBRootFolderView *)self _setupSearchBackdropViewIfNecessary];
  searchableLeadingCustomWrapperViews = self->_searchableLeadingCustomWrapperViews;

  return [(NSArray *)searchableLeadingCustomWrapperViews lastObject];
}

- (SBSearchBackdropView)searchBackdropView
{
  [(SBRootFolderView *)self _setupSearchBackdropViewIfNecessary];
  searchBackdropView = self->_searchBackdropView;

  return searchBackdropView;
}

- (UIView)trailingCustomSearchDimmingView
{
  [(SBRootFolderView *)self _setupTrailingCustomDimmingViewIfNecessary];
  trailingCustomSearchDimmingView = self->_trailingCustomSearchDimmingView;

  return trailingCustomSearchDimmingView;
}

- (id)newDockBackgroundView
{
  delegate = [(SBFolderView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate backgroundViewForDockForRootFolderView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SBRootFolderView *)self newDockBackgroundMaterialViewWithInitialWeighting:1.0];
  }

  return v4;
}

- (id)newDockBackgroundMaterialViewWithInitialWeighting:(double)weighting
{
  v3 = [MEMORY[0x1E69AE158] materialViewWithRecipe:19 options:0 initialWeighting:weighting];
  [v3 setGroupNameBase:0];
  [v3 setGroupName:@"WallpaperCaptureGroup"];
  layer = [v3 layer];
  v5 = objc_opt_class();
  v6 = layer;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setGroupNamespace:*MEMORY[0x1E69795C8]];
  return v3;
}

- (id)newHomeScreenButtonBackgroundView
{
  delegate = [(SBFolderView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate backgroundViewForEditingDoneButtonForRootFolderView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[SBIconView componentBackgroundView];
  }

  return v4;
}

- (id)makeTitledButtonOfClass:(Class)class
{
  rootFolderVisualConfiguration = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  v6 = [class alloc];
  v7 = [v6 initWithFrame:3 material:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  configuration = [v7 configuration];
  [rootFolderVisualConfiguration editModeButtonContentEdgeInsets];
  [configuration setContentInsets:?];
  [v7 setConfiguration:configuration];
  [rootFolderVisualConfiguration editModeButtonSize];
  [v7 setPreferredContentFittingSize:?];
  materialView = [v7 materialView];
  legibilitySettings = [(SBFolderView *)self legibilitySettings];
  [materialView setLegibilityStyle:{objc_msgSend(legibilitySettings, "style")}];

  legibilitySettings2 = [(SBFolderView *)self legibilitySettings];
  [v7 setLegibilitySettings:legibilitySettings2];

  return v7;
}

+ (void)_editButtonLayoutFramesInBounds:(CGRect)bounds forVisualConfiguration:(id)configuration withTranslationOffset:(double)offset inRTL:(BOOL)l doneButton:(id)button addWidgetButton:(id)widgetButton doneButtonFrame:(CGRect *)frame addWidgetButtonFrame:(CGRect *)self0
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v36 = 0;
  buttonCopy = button;
  configurationCopy = configuration;
  [widgetButton sizeThatFits:{width, height}];
  v37.width = v24;
  v37.height = v25;
  v34 = 0;
  [buttonCopy sizeThatFits:{width, height}];
  v27 = v26;
  v29 = v28;

  v35.width = v27;
  v35.height = v29;
  if (button)
  {
    v30 = &v36;
  }

  else
  {
    v30 = 0;
  }

  if (button)
  {
    v31 = &v34;
  }

  else
  {
    v31 = &v36;
  }

  [self _getTopLeadingButtonFrame:v30 topTrailingButtonFrame:v31 inBounds:configurationCopy forVisualConfiguration:1 includingContentEdgeInsets:lCopy withTranslationOffset:x inRTL:{y, width, height, offset}];

  if (frame)
  {
    v32 = v35;
    frame->origin = v34;
    frame->size = v32;
  }

  if (buttonFrame)
  {
    v33 = v37;
    buttonFrame->origin = v36;
    buttonFrame->size = v33;
  }
}

+ (void)_getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds forListLayout:(id)layout withTranslationOffset:(double)offset inRTL:(BOOL)l
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v18 = 28.0;
  if (objc_opt_respondsToSelector())
  {
    rootFolderVisualConfiguration = [layoutCopy rootFolderVisualConfiguration];
    v20 = rootFolderVisualConfiguration;
    if (rootFolderVisualConfiguration)
    {
      [rootFolderVisualConfiguration editModeButtonSize];
      v18 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = 0x4051000000000000;
LABEL_6:
  v27 = 0;
  v28.width = v18;
  *&v28.height = v21;
  v25 = 0;
  v26.width = v18;
  *&v26.height = v21;
  [self _getTopLeadingButtonFrame:&v27 topTrailingButtonFrame:&v25 inBounds:v20 forVisualConfiguration:0 includingContentEdgeInsets:lCopy withTranslationOffset:x inRTL:{y, width, height, offset}];
  if (frame)
  {
    v23 = v28;
    frame->origin = v27;
    frame->size = v23;
  }

  if (buttonFrame)
  {
    v24 = v26;
    buttonFrame->origin = v25;
    buttonFrame->size = v24;
  }
}

+ (void)_getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds forVisualConfiguration:(id)configuration includingContentEdgeInsets:(BOOL)insets withTranslationOffset:(double)offset inRTL:(BOOL)l
{
  lCopy = l;
  width = bounds.size.width;
  insetsCopy = insets;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  configurationCopy = configuration;
  v46 = configurationCopy;
  if (insetsCopy)
  {
    [configurationCopy editModeButtonContentEdgeInsets];
    SBHDirectionalEdgeInsetsGetEdgeInsets();
    configurationCopy = v46;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v17 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v21 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [configurationCopy editModeButtonLayoutOffset];
  v25 = v24;
  v27 = v26;
  if (frame)
  {
    v28 = v17 + frame->origin.y;
    v29 = frame->size.width - (v23 + v19);
    v30 = frame->size.height - (v21 + v17);
    frame->origin.x = v19 + frame->origin.x;
    frame->origin.y = v28;
    frame->size.width = v29;
    frame->size.height = v30;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    frame->origin.y = v27 + CGRectGetMinY(v48);
  }

  v31 = v46;
  if (buttonFrame)
  {
    v32 = v17 + buttonFrame->origin.y;
    v33 = buttonFrame->size.width - (v23 + v19);
    v34 = buttonFrame->size.height - (v21 + v17);
    buttonFrame->origin.x = v19 + buttonFrame->origin.x;
    buttonFrame->origin.y = v32;
    buttonFrame->size.width = v33;
    buttonFrame->size.height = v34;
    if (frame)
    {
      v35 = frame->origin.y;
    }

    else
    {
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      MinX = CGRectGetMinX(v49);
      v31 = v46;
      v35 = v27 + MinX;
    }

    buttonFrame->origin.y = v35;
  }

  v37 = !lCopy;
  if (lCopy)
  {
    frameCopy = buttonFrame;
  }

  else
  {
    frameCopy = frame;
  }

  if (!v37)
  {
    buttonFrame = frame;
  }

  if (buttonFrame)
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    MaxX = CGRectGetMaxX(v50);
    v40 = CGRectGetWidth(*buttonFrame);
    v31 = v46;
    buttonFrame->origin.x = MaxX - v40 - v25 + v43;
  }

  if (frameCopy)
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v41 = CGRectGetMinX(v51);
    v31 = v46;
    frameCopy->origin.x = v25 + v41 + v43;
  }
}

- (UIView)titledButtonsContainerView
{
  titledButtonsContainerView = self->_titledButtonsContainerView;
  if (!titledButtonsContainerView)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    [(SBRootFolderView *)self getMetrics:v10];
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{v11, v12}];
    v6 = self->_titledButtonsContainerView;
    self->_titledButtonsContainerView = v5;

    v7 = self->_titledButtonsContainerView;
    v8 = objc_alloc_init(MEMORY[0x1E69DD820]);
    [(UIView *)v7 _setBackground:v8];

    [(SBRootFolderView *)self addSubview:self->_titledButtonsContainerView];
    titledButtonsContainerView = self->_titledButtonsContainerView;
  }

  return titledButtonsContainerView;
}

- (void)setShowsDoneButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsDoneButton != button)
  {
    v44 = v7;
    v45 = v6;
    v46 = v4;
    v47 = v5;
    animatedCopy = animated;
    buttonCopy = button;
    self->_showsDoneButton = button;
    doneButton = [(SBRootFolderView *)self doneButton];
    v12 = doneButton;
    if (buttonCopy)
    {
      titledButtonsContainerView = [(SBRootFolderView *)self titledButtonsContainerView];
      [(SBRootFolderView *)self bringSubviewToFront:titledButtonsContainerView];
      if (!v12)
      {
        v14 = [(SBRootFolderView *)self makeTitledButtonOfClass:objc_opt_class()];
        [v14 addTarget:self action:sel_doneButtonTriggered_ forControlEvents:0x2000];
        [(SBRootFolderView *)self setDoneButton:v14];
        [(SBRootFolderView *)self bounds];
        [v14 sizeThatFits:{v15, v16}];
        v18 = v17;
        v20 = v19;
        v21 = MEMORY[0x1E69DD250];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke;
        v36[3] = &unk_1E808A9C0;
        v12 = v14;
        v40 = 0;
        v41 = 0;
        v37 = v12;
        v42 = v18;
        v43 = v20;
        v38 = titledButtonsContainerView;
        selfCopy = self;
        [v21 performWithoutAnimation:v36];
      }

      if (animatedCopy)
      {
        v22 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_2;
        v34[3] = &unk_1E8088C90;
        v23 = v12;
        v35 = v23;
        [v22 performWithoutAnimation:v34];
        v24 = MEMORY[0x1E69DD250];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_3;
        v31[3] = &unk_1E8088F18;
        v32 = v23;
        selfCopy2 = self;
        [v24 animateWithDuration:v31 animations:0.2];
      }
    }

    else if (animatedCopy)
    {
      v25 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_4;
      v29[3] = &unk_1E8088C90;
      v30 = doneButton;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_5;
      v26[3] = &unk_1E80893F0;
      v12 = v30;
      v27 = v12;
      selfCopy3 = self;
      [v25 animateWithDuration:v29 animations:v26 completion:0.2];
    }

    else
    {
      [doneButton removeFromSuperview];
      [(SBRootFolderView *)self setDoneButton:0];
    }
  }
}

uint64_t __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  [*(a1 + 48) layoutTopButtons];
  v2 = *(a1 + 48);

  return [v2 layoutIfNeeded];
}

uint64_t __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(*(a1 + 40) + 1024)];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_5(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromSuperview];
    v3 = *(v2 + 40);

    return [v3 setDoneButton:0];
  }

  return result;
}

- (void)setShowsAddWidgetButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsAddWidgetButton != button)
  {
    v44 = v7;
    v45 = v6;
    v46 = v4;
    v47 = v5;
    animatedCopy = animated;
    buttonCopy = button;
    self->_showsAddWidgetButton = button;
    widgetButton = [(SBRootFolderView *)self widgetButton];
    [widgetButton setAccessibilityIdentifier:@"avocado-widget-add-button"];
    if (buttonCopy)
    {
      titledButtonsContainerView = [(SBRootFolderView *)self titledButtonsContainerView];
      [(SBRootFolderView *)self bringSubviewToFront:titledButtonsContainerView];
      if (!widgetButton)
      {
        v13 = [(SBRootFolderView *)self makeTitledButtonOfClass:objc_opt_class()];
        editMenu = [(SBRootFolderView *)self editMenu];
        [v13 setMenu:editMenu];
        [v13 setShowsMenuAsPrimaryAction:1];
        [(SBRootFolderView *)self setWidgetButton:v13];
        [(SBRootFolderView *)self bounds];
        [v13 sizeThatFits:{v15, v16}];
        v18 = v17;
        v20 = v19;
        v21 = MEMORY[0x1E69DD250];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke;
        v36[3] = &unk_1E808A9C0;
        widgetButton = v13;
        v40 = 0;
        v41 = 0;
        v37 = widgetButton;
        v42 = v18;
        v43 = v20;
        v38 = titledButtonsContainerView;
        selfCopy = self;
        [v21 performWithoutAnimation:v36];
      }

      if (animatedCopy)
      {
        v22 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_2;
        v34[3] = &unk_1E8088C90;
        v23 = widgetButton;
        v35 = v23;
        [v22 performWithoutAnimation:v34];
        v24 = MEMORY[0x1E69DD250];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_3;
        v31[3] = &unk_1E8088F18;
        v32 = v23;
        selfCopy2 = self;
        [v24 animateWithDuration:v31 animations:0.2];
      }
    }

    else if (animatedCopy)
    {
      v25 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_4;
      v29[3] = &unk_1E8088C90;
      v30 = widgetButton;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_5;
      v26[3] = &unk_1E80893F0;
      widgetButton = v30;
      v27 = widgetButton;
      selfCopy3 = self;
      [v25 animateWithDuration:v29 animations:v26 completion:0.2];
    }

    else
    {
      [widgetButton removeFromSuperview];
      [(SBRootFolderView *)self setWidgetButton:0];
    }
  }
}

uint64_t __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  [*(a1 + 48) layoutTopButtons];
  v2 = *(a1 + 48);

  return [v2 layoutIfNeeded];
}

uint64_t __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(*(a1 + 40) + 1024)];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  return [v2 setTransform:&v4];
}

uint64_t __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_5(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) removeFromSuperview];
    v3 = *(v2 + 40);

    return [v3 setWidgetButton:0];
  }

  return result;
}

- (void)setTitledButtonsAlpha:(double)alpha
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_titledButtonsAlpha != alpha)
  {
    self->_titledButtonsAlpha = alpha;
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      alphaCopy = alpha;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "SBRootFolderView setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:alpha];
    [(SBTitledHomeScreenButton *)self->_widgetButton setAlpha:alpha];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v12.receiver = self;
  v12.super_class = SBRootFolderView;
  [SBFolderView setEditing:sel_setEditing_animated_ animated:?];
  if ([(SBRootFolderView *)self folderPageManagementAllowedOrientations])
  {
    v7 = 0.3;
    if (!animatedCopy)
    {
      v7 = 0.0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__SBRootFolderView_setEditing_animated___block_invoke;
    v11[3] = &unk_1E8088C90;
    v11[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v7];
    [(SBRootFolderView *)self setNeedsLayout];
    [(SBRootFolderView *)self layoutIfNeeded];
  }

  if (editingCopy)
  {
    editingPageDotsVisibilityAssertion = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:@"editing"];
    [(SBRootFolderView *)self setEditingPageDotsVisibilityAssertion:editingPageDotsVisibilityAssertion];
    scrollAccessoryAuxiliaryView = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (scrollAccessoryAuxiliaryView)
    {
      pageControl = [(SBFolderView *)self pageControl];
      [pageControl cancelTapGesture];
    }
  }

  else
  {
    editingPageDotsVisibilityAssertion = [(SBRootFolderView *)self editingPageDotsVisibilityAssertion];
    [(SBRootFolderView *)self setEditingPageDotsVisibilityAssertion:0];
    [editingPageDotsVisibilityAssertion invalidate];
    [(SBRootFolderView *)self exitPageManagementUIWithCompletionHandler:0];
  }
}

- (id)editMenu
{
  v46[4] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v4 = SBHBundle();
  v5 = [v4 localizedStringForKey:@"EDIT_MENU_ADD_WIDGET" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"widget.small.badge.plus"];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __28__SBRootFolderView_editMenu__block_invoke;
  v43[3] = &unk_1E808B348;
  objc_copyWeak(&v44, &location);
  v36 = [v3 actionWithTitle:v5 image:v6 identifier:@"addwidget" handler:v43];

  isRTL = [(SBFolderView *)self isRTL];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (([(SBFolderView *)self orientation]- 3) > 1)
    {
      v10 = @"apps.ipad.badge.paintbrush";
      v11 = !isRTL;
      if (isRTL)
      {
        v10 = @"apps.ipad.badge.paintbrush.rtl";
      }

      v12 = @"apps.ipad.on.rectangle.portraint";
      v13 = @"apps.ipad.on.rectangle.portraint.rtl";
    }

    else
    {
      v10 = @"apps.ipad.landscape.badge.paintbrush";
      v11 = !isRTL;
      if (isRTL)
      {
        v10 = @"apps.ipad.landscape.badge.paintbrush.rtl";
      }

      v12 = @"apps.ipad.landscape.on.rectangle";
      v13 = @"apps.ipad.landscape.on.rectangle.rtl";
    }
  }

  else
  {
    v10 = @"apps.iphone.badge.paintbrush";
    v11 = !isRTL;
    if (isRTL)
    {
      v10 = @"apps.iphone.badge.paintbrush.rtl";
    }

    v12 = @"apps.iphone.on.rectangle.portrait";
    v13 = @"apps.iphone.on.rectangle.portrait.rtl";
  }

  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v10;
  v16 = v14;
  v17 = MEMORY[0x1E69DC628];
  v18 = SBHBundle();
  v19 = [v18 localizedStringForKey:@"EDIT_MENU_CUSTOMIZE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v20 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v15];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __28__SBRootFolderView_editMenu__block_invoke_2;
  v41[3] = &unk_1E808B348;
  objc_copyWeak(&v42, &location);
  v21 = [v17 actionWithTitle:v19 image:v20 identifier:@"customize" handler:v41];

  v22 = MEMORY[0x1E69DC628];
  v23 = SBHBundle();
  v24 = [v23 localizedStringForKey:@"EDIT_MENU_EDIT_PAGES" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v25 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v16];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __28__SBRootFolderView_editMenu__block_invoke_3;
  v39[3] = &unk_1E808B348;
  objc_copyWeak(&v40, &location);
  v26 = [v22 actionWithTitle:v24 image:v25 identifier:@"pageManagement" handler:v39];

  v27 = MEMORY[0x1E69DC628];
  v28 = SBHBundle();
  v29 = [v28 localizedStringForKey:@"EDIT_MENU_EDIT_WALLPAPER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v30 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.photos"];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __28__SBRootFolderView_editMenu__block_invoke_4;
  v37[3] = &unk_1E808B348;
  objc_copyWeak(&v38, &location);
  v31 = [v27 actionWithTitle:v29 image:v30 identifier:@"editWallpaper" handler:v37];

  v32 = MEMORY[0x1E69DCC60];
  v46[0] = v36;
  v46[1] = v21;
  v46[2] = v31;
  v46[3] = v26;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  v34 = [v32 menuWithChildren:v33];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

  return v34;
}

void __28__SBRootFolderView_editMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained widgetButtonTriggered:v4];
}

void __28__SBRootFolderView_editMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained iconTintButtonTriggered:v4];
}

void __28__SBRootFolderView_editMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enterPageManagementUIWithCompletionHandler:0];
}

void __28__SBRootFolderView_editMenu__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained editHomeScreenWallpaperButtonTriggered:v4];
}

- (void)updateEditButtonMenu
{
  widgetButton = [(SBRootFolderView *)self widgetButton];
  if (widgetButton)
  {
    v5 = widgetButton;
    editMenu = [(SBRootFolderView *)self editMenu];
    [v5 setMenu:editMenu];

    widgetButton = v5;
  }
}

- (void)doneButtonTriggered:(id)triggered
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__SBRootFolderView_doneButtonTriggered___block_invoke;
  v3[3] = &unk_1E8088C90;
  v3[4] = self;
  [(SBRootFolderView *)self exitPageManagementUIWithCompletionHandler:v3];
}

void __40__SBRootFolderView_doneButtonTriggered___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 rootFolderViewWantsToEndEditing:*(a1 + 32)];
  }
}

- (void)widgetButtonTriggered:(id)triggered
{
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate rootFolderViewWantsWidgetEditingViewControllerPresented:self];
  }
}

- (void)iconTintButtonTriggered:(id)triggered
{
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate rootFolderViewWantsIconTintViewControllerPresented:self];
  }
}

- (void)editHomeScreenWallpaperButtonTriggered:(id)triggered
{
  delegate = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:self];
  }
}

- (BOOL)isPageManagementUITransitioningOutOfVisible
{
  transitioningNewSpecialLayoutManager = [(SBRootFolderView *)self transitioningNewSpecialLayoutManager];
  transitioningOldSpecialLayoutManager = [(SBRootFolderView *)self transitioningOldSpecialLayoutManager];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (transitioningNewSpecialLayoutManager == 0);
}

- (void)enterPageManagementUIWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  transitioningNewSpecialLayoutManager = [(SBRootFolderView *)self transitioningNewSpecialLayoutManager];
  isPageManagementUIVisible = [(SBRootFolderView *)self isPageManagementUIVisible];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isPageManagementUIVisible || (isKindOfClass & 1) != 0)
  {
    if (handlerCopy)
    {
      handlerCopy[2]();
    }
  }

  else
  {
    v8 = objc_alloc_init(SBRootFolderViewPageManagementLayoutManager);
    [(SBRootFolderViewPageManagementLayoutManager *)v8 setAllowsEditing:1];
    [(SBRootFolderView *)self setSpecialLayoutManager:v8 completionHandler:handlerCopy];
  }

  mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
  [mEMORY[0x1E69D3F90] emitEvent:52];
}

- (void)exitPageManagementUIWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  isPageManagementUIVisible = [(SBRootFolderView *)self isPageManagementUIVisible];
  isPageManagementUITransitioningOutOfVisible = [(SBRootFolderView *)self isPageManagementUITransitioningOutOfVisible];
  if (!isPageManagementUIVisible || isPageManagementUITransitioningOutOfVisible)
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
    [(SBRootFolderView *)self setSpecialLayoutManager:0 completionHandler:handlerCopy];
  }

  v6 = handlerCopy;
LABEL_7:
}

- (void)updatePageControlConfiguration
{
  [(SBRootFolderView *)self folderPageManagementAllowedOrientations];
  [(SBFolderView *)self orientation];
  v3 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
  v4 = v3 & [(SBFolderView *)self isEditing];
  scrollAccessoryAuxiliaryView = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];
  if (scrollAccessoryAuxiliaryView)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  pageControl = [(SBFolderView *)self pageControl];
  scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
  [pageControl setHidesForSinglePage:v5 ^ 1];
  [pageControl setActsAsButton:v5];
  if (scrollAccessoryAuxiliaryView)
  {
    auxiliaryView = [scrollAccessoryView auxiliaryView];
    if (!auxiliaryView || (v9 = auxiliaryView, [scrollAccessoryView backgroundView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      [scrollAccessoryView setAuxiliaryView:scrollAccessoryAuxiliaryView];
      scrollAccessoryBackgroundView = [(SBRootFolderView *)self scrollAccessoryBackgroundView];
      [scrollAccessoryView setBackgroundView:scrollAccessoryBackgroundView];
    }

    v12 = [SBHLegibilitySettings alloc];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    legibilitySettings = [(SBHLegibilitySettings *)v12 initWithPrimaryColor:blackColor];
  }

  else
  {
    [scrollAccessoryView setBackgroundView:0];
    legibilitySettings = [(SBFolderView *)self legibilitySettings];
  }

  [pageControl setLegibilitySettings:legibilitySettings];
}

- (void)folderDidChange
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 folderDidChange];
  folder = [(SBFolderView *)self folder];
  dockListView = self->_dockListView;
  dock = [folder dock];
  [(SBIconListView *)dockListView setModel:dock];
}

- (void)setPullDownSearchVisibilityProgress:(double)progress
{
  if (self->_pullDownSearchVisibilityProgress != progress || BSFloatGreaterThanOrEqualToFloat() && ([(SBRootFolderView *)self searchPresenter], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    self->_pullDownSearchVisibilityProgress = progress;
    [(SBRootFolderView *)self _layoutSubviewsForPulldownSearch];

    [(SBRootFolderView *)self _animateViewsForPullingToSearch];
  }
}

- (void)setLeadingCustomViewVisibilityProgress:(double)progress
{
  if (self->_leadingCustomViewVisibilityProgress != progress)
  {
    self->_leadingCustomViewVisibilityProgress = progress;
    [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomView];
  }
}

- (void)setLeadingCustomViewBouncing:(BOOL)bouncing
{
  if (self->_leadingCustomViewBouncing != bouncing)
  {
    self->_leadingCustomViewBouncing = bouncing;
    [(SBRootFolderView *)self setNeedsLayout];
  }
}

- (void)setTrailingCustomViewVisibilityProgress:(double)progress
{
  if (self->_trailingCustomViewVisibilityProgress != progress)
  {
    self->_trailingCustomViewVisibilityProgress = progress;
    [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomView];

    [(SBRootFolderView *)self _updateDockViewZOrdering];
  }
}

- (void)setSpecialLayoutManager:(id)manager completionHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  v9 = handlerCopy;
  specialLayoutManager = self->_specialLayoutManager;
  if (specialLayoutManager == managerCopy)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy);
    }
  }

  else
  {
    v44 = handlerCopy;
    v11 = specialLayoutManager;
    v42 = +[SBHHomeScreenDomain rootSettings];
    iconEditingSettings = [v42 iconEditingSettings];
    [iconEditingSettings defaultSpringDuration];
    v14 = v13;
    v41 = iconEditingSettings;
    [iconEditingSettings defaultSpringDampingRatio];
    v16 = v15;
    LOBYTE(iconEditingSettings) = UIAccessibilityIsReduceMotionEnabled();
    isTrackingActiveOrDroppingIconDrags = [(SBRootFolderViewLayoutManager *)v11 isTrackingActiveOrDroppingIconDrags];
    v18 = 0;
    if ((iconEditingSettings & 1) == 0 && (isTrackingActiveOrDroppingIconDrags & 1) == 0)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 dampingRatio:v14 animations:v16];
    }

    delegate = [(SBFolderView *)self delegate];
    v20 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v22 = isKindOfClass & 1;
    v23 = objc_opt_self();
    v24 = objc_opt_isKindOfClass();

    if (v24 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      userInfo = [(SBRootFolderViewLayoutManager *)v11 userInfo];
      [delegate rootFolderView:self willDismissPageManagementUsingAnimator:v18 context:userInfo];
    }

    v40 = v24 & 1;
    if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [delegate rootFolderView:self willPresentPageManagementWithLayoutManager:managerCopy animator:v18 context:v26];
      [(SBRootFolderViewLayoutManager *)managerCopy setUserInfo:v26];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke;
    aBlock[3] = &unk_1E808B370;
    v27 = v11;
    v61 = v27;
    selfCopy = self;
    v28 = managerCopy;
    v63 = v28;
    v64 = v44;
    v29 = _Block_copy(aBlock);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_2;
    v58[3] = &unk_1E8088EF0;
    v30 = v29;
    v59 = v30;
    [v18 addCompletion:v58];
    [(SBRootFolderViewLayoutManager *)v28 setRootFolderView:self];
    layoutManager = [(SBRootFolderView *)self layoutManager];
    if (v28)
    {
      objc_storeStrong(&self->_specialLayoutManager, manager);
    }

    [(SBRootFolderView *)self setTransitioningNewSpecialLayoutManager:v28];
    [(SBRootFolderView *)self setTransitioningOldSpecialLayoutManager:v27];
    [layoutManager transitionToActive:0 inFolderView:self usingAnimator:v18];
    [(SBRootFolderViewLayoutManager *)v28 transitionToActive:1 inFolderView:self usingAnimator:v18];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_3;
    v52[3] = &unk_1E808B398;
    v56 = v40;
    v57 = v22;
    v31 = delegate;
    v53 = v31;
    v32 = v27;
    v54 = v32;
    selfCopy2 = self;
    v33 = _Block_copy(v52);
    v34 = v33;
    if (v18)
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_4;
      v50[3] = &unk_1E8088EF0;
      v51 = v33;
      [v18 addCompletion:v50];
      [v18 startAnimation];
      currentIconListView = v51;
    }

    else
    {
      (*(v33 + 2))(v33, 1);
      [(SBRootFolderViewLayoutManager *)v32 setRootFolderView:0];
      objc_storeStrong(&self->_specialLayoutManager, manager);
      currentIconListView = [(SBFolderView *)self currentIconListView];
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_5;
      v48[3] = &unk_1E8089928;
      v37 = weakToStrongObjectsMapTable;
      v49 = v37;
      [currentIconListView enumerateDisplayedIconViewsUsingBlock:v48];
      v38 = MEMORY[0x1E69DD250];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_7;
      v45[3] = &unk_1E808B3C0;
      v46 = v37;
      v47 = v30;
      v39 = v37;
      [v38 transitionWithView:self duration:5242880 options:&__block_literal_global_24 animations:v45 completion:0.3];
    }

    v9 = v44;
  }
}

uint64_t __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setRootFolderView:0];
    objc_storeStrong((*(a1 + 40) + 1344), *(a1 + 48));
    v3 = [*(a1 + 40) transitioningOldSpecialLayoutManager];
    v4 = *(a1 + 32);

    if (v3 == v4)
    {
      [*(a1 + 40) setTransitioningOldSpecialLayoutManager:0];
    }

    v5 = [*(a1 + 40) transitioningNewSpecialLayoutManager];
    v6 = *(a1 + 48);

    if (v5 == v6)
    {
      [*(a1 + 40) setTransitioningNewSpecialLayoutManager:0];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

uint64_t __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 56) == 1 && (*(result + 57) & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(v2 + 40) userInfo];
        [*(v2 + 32) rootFolderView:*(v2 + 48) didDismissPageManagementWithLayoutManager:*(v2 + 40) context:v3];
      }

      v4 = *(v2 + 40);

      return [v4 setUserInfo:0];
    }
  }

  return result;
}

void __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 disallowGlassGroupingForReason:@"PageManagementExit"];
  [*(a1 + 32) setObject:v4 forKey:v3];
}

uint64_t __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_7(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKey:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)pageControlDidReceiveButtonTap:(id)tap
{
  if ([(SBFolderView *)self isEditing])
  {

    [(SBRootFolderView *)self enterPageManagementUIWithCompletionHandler:0];
  }

  else
  {
    delegate = [(SBFolderView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate rootFolderViewWantsSearchPresented:self];
    }
  }
}

- (void)pageControlDidBeginScrubbing:(id)scrubbing
{
  scrubbingPageDotsVisibilityAssertion = [(SBRootFolderView *)self scrubbingPageDotsVisibilityAssertion];

  if (!scrubbingPageDotsVisibilityAssertion)
  {
    v5 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:@"scrubbing"];
    [(SBRootFolderView *)self setScrubbingPageDotsVisibilityAssertion:v5];
  }
}

- (void)pageControlDidEndScrubbing:(id)scrubbing
{
  scrubbingPageDotsVisibilityAssertion = [(SBRootFolderView *)self scrubbingPageDotsVisibilityAssertion];
  [(SBRootFolderView *)self setScrubbingPageDotsVisibilityAssertion:0];
  [scrubbingPageDotsVisibilityAssertion invalidate];
}

- (CGRect)enterEditingTouchRect
{
  [(SBRootFolderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  orientation = [(SBFolderView *)self orientation];
  currentIconListView = [(SBFolderView *)self currentIconListView];
  if (!currentIconListView)
  {
    currentIconListView = [(SBFolderView *)self firstIconListView];
  }

  [currentIconListView layoutInsetsForOrientation:orientation];
  v14 = v13;
  v16 = v15;
  rootFolderVisualConfiguration = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  [rootFolderVisualConfiguration editingEntryAreaHorizontalInset];
  v19 = v18;
  if (v18 == -10000.0)
  {
    layout = [currentIconListView layout];
    gridSizeClassDomain = [(SBFolderView *)self gridSizeClassDomain];
    v19 = SBHIconListLayoutLargestExtraIconImageSizeInDomain(layout, orientation, gridSizeClassDomain) + 40.0;
  }

  v22 = v4 + v14 - v19;
  v23 = v6 + 0.0;
  v24 = v8 - (v14 - v19 + v16 - v19);
  v25 = v10;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)minimumHomeScreenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 minimumHomeScreenScaleDidChange];
  [(SBDockView *)self->_dockView minimumHomeScreenScaleDidChange];
}

- (id)_createIconListViewForList:(id)list
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  v3 = [(SBFolderView *)&v5 _createIconListViewForList:list];
  [v3 setAdjustsColumnPositionsForFullScreenWidth:1];
  [v3 setIconGlassGroupingBehavior:2];
  [v3 setIconViewBackdropGroupName:@"SBRootFolder"];

  return v3;
}

- (id)iconListViewForExtraIndex:(unint64_t)index
{
  if (index == 10000)
  {
    v4 = self->_dockListView;
  }

  else
  {
    leadingCustomViewController = [(SBRootFolderView *)self leadingCustomViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      leadingCustomViewController2 = [(SBRootFolderView *)self leadingCustomViewController];
      iconListViewQueryable = [leadingCustomViewController2 iconListViewQueryable];

      v10 = [MEMORY[0x1E696AC88] sb_indexPathWithListIndex:index];
      folder = [(SBFolderView *)self folder];
      v4 = [iconListViewQueryable iconListViewForListAtIndexPath:v10 inFolder:folder];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)iconListViewAtIndex:(unint64_t)index
{
  v5 = [(SBRootFolderView *)self iconListViewForExtraIndex:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBRootFolderView;
    v7 = [(SBFolderView *)&v10 iconListViewAtIndex:index];
  }

  v8 = v7;

  return v8;
}

- (id)iconListViewForIconListModelIndex:(unint64_t)index
{
  v5 = [(SBRootFolderView *)self iconListViewForExtraIndex:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBRootFolderView;
    v7 = [(SBFolderView *)&v10 iconListViewForIconListModelIndex:index];
  }

  v8 = v7;

  return v8;
}

- (id)iconListViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v18.receiver = self;
  v18.super_class = SBRootFolderView;
  v6 = [(SBFolderView *)&v18 iconListViewAtPoint:?];
  if (!v6)
  {
    dockListView = self->_dockListView;
    [(SBDockIconListView *)dockListView bounds];
    [(SBDockIconListView *)dockListView convertRect:self toView:?];
    v20.x = x;
    v20.y = y;
    if (CGRectContainsPoint(v21, v20))
    {
      v6 = self->_dockListView;
    }

    else
    {
      leadingCustomViewController = [(SBRootFolderView *)self leadingCustomViewController];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        leadingCustomViewController2 = [(SBRootFolderView *)self leadingCustomViewController];
        view = [leadingCustomViewController2 view];
        [view convertPoint:self fromView:{x, y}];
        v13 = v12;
        v15 = v14;

        iconListViewQueryable = [leadingCustomViewController2 iconListViewQueryable];
        v6 = [iconListViewQueryable iconListViewAtPoint:{v13, v15}];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)resetIconListViews
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 resetIconListViews];
  dockListView = self->_dockListView;
  folder = [(SBFolderView *)self folder];
  dock = [folder dock];
  [(SBIconListView *)dockListView setModel:dock];

  [(SBIconListView *)self->_dockListView showAllIcons];
  [(SBIconListView *)self->_dockListView layoutIconsNow];
}

- (id)iconListViewForPageIndex:(int64_t)index
{
  if ([(SBFolderView *)self _isValidPageIndex:?])
  {
    v5 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:index];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      leadingCustomViewControllers = [(SBRootFolderView *)self leadingCustomViewControllers];
      v8 = [leadingCustomViewControllers objectAtIndex:v6];

      if (objc_opt_respondsToSelector())
      {
        rootIconListView = [v8 rootIconListView];

        if (rootIconListView)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v10 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:index];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      trailingCustomViewControllers = [(SBRootFolderView *)self trailingCustomViewControllers];
      v13 = [trailingCustomViewControllers objectAtIndex:v11];

      if (objc_opt_respondsToSelector())
      {
        rootIconListView = [v13 rootIconListView];

        if (rootIconListView)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SBRootFolderView;
  rootIconListView = [(SBFolderView *)&v15 iconListViewForPageIndex:index];
LABEL_13:

  return rootIconListView;
}

- (void)setSuppressesEditingStateForListViews:(BOOL)views
{
  viewsCopy = views;
  if ([(SBFolderView *)self suppressesEditingStateForListViews]!= views)
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderView;
    [(SBFolderView *)&v6 setSuppressesEditingStateForListViews:viewsCopy];
    delegate = [(SBFolderView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate rootFolderViewDidChangeSuppressesEditingStateForListViews:self];
    }
  }
}

- (void)_updateEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 _updateEditingStateAnimated:?];
  [(SBIconListView *)self->_dockListView setEditing:[(SBFolderView *)self isEditing]& ([(SBFolderView *)self suppressesEditingStateForListViews]^ 1)];
  [(SBIconListView *)self->_dockListView updateEditingStateAnimated:animatedCopy];
}

- (void)tearDownListViews
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 tearDownListViews];
  [(SBIconListView *)self->_dockListView setModel:0];
}

- (void)layoutIconListsWithAnimationType:(int64_t)type forceRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [SBFolderView layoutIconListsWithAnimationType:sel_layoutIconListsWithAnimationType_forceRelayout_ forceRelayout:?];
  if (relayoutCopy)
  {
    [(SBIconListView *)self->_dockListView setIconsNeedLayout];
  }

  [(SBIconListView *)self->_dockListView layoutIconsIfNeededWithAnimationType:type options:0];
}

- (void)prepareForTransition
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 prepareForTransition];
  [(UILabel *)self->_idleTextView setHidden:1];
}

- (id)visibleIconListViews
{
  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  visibleIconListViews = [(SBFolderView *)&v7 visibleIconListViews];
  dockListView = [(SBRootFolderView *)self dockListView];
  if (dockListView && [(SBRootFolderView *)self isDockVisible])
  {
    v5 = [visibleIconListViews arrayByAddingObject:dockListView];

    visibleIconListViews = v5;
  }

  return visibleIconListViews;
}

- (void)enumerateScrollViewPageViewsUsingBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_searchableLeadingCustomWrapperViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      v21 = 0;
      blockCopy[2](blockCopy, v10, &v21);
      if (v21)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

    v20.receiver = self;
    v20.super_class = SBRootFolderView;
    [(SBFolderView *)&v20 enumerateScrollViewPageViewsUsingBlock:blockCopy];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_searchableTrailingCustomWrapperViews;
    v11 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
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
        v21 = 0;
        blockCopy[2](blockCopy, v15, &v21);
        if (v21)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
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

- (void)setShouldPrewarmContent:(BOOL)content ofNonIconPageAtIndex:(int64_t)index
{
  contentCopy = content;
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  [SBFolderView setShouldPrewarmContent:sel_setShouldPrewarmContent_ofNonIconPageAtIndex_ ofNonIconPageAtIndex:?];
  v7 = [(SBRootFolderView *)self customViewControllerForPageAtIndex:index];
  if (objc_opt_respondsToSelector())
  {
    [v7 setShouldPrewarmContent:contentCopy];
  }
}

- (void)setIdleText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v8 length])
  {

    v8 = 0;
  }

  text = [(UILabel *)self->_idleTextView text];
  v10 = text | v8;

  if (v10)
  {
    text2 = [(UILabel *)self->_idleTextView text];
    v12 = BSEqualStrings();

    if ((v12 & 1) == 0)
    {
      if (!self->_idleTextView)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        idleTextView = self->_idleTextView;
        self->_idleTextView = v13;

        [(UILabel *)self->_idleTextView setTextAlignment:1];
        v15 = self->_idleTextView;
        v16 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
        [(UILabel *)v15 setFont:v16];

        v17 = self->_idleTextView;
        legibilitySettingsForIconListViews = [(SBFolderView *)self legibilitySettingsForIconListViews];
        primaryColor = [legibilitySettingsForIconListViews primaryColor];
        if (primaryColor)
        {
          [(UILabel *)v17 setTextColor:primaryColor];
        }

        else
        {
          whiteColor = [MEMORY[0x1E69DC888] whiteColor];
          [(UILabel *)v17 setTextColor:whiteColor];
        }

        v21 = self->_idleTextView;
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [(UILabel *)v21 setBackgroundColor:clearColor];

        scalingView = [(SBFolderView *)self scalingView];
        [scalingView addSubview:self->_idleTextView];

        [(UILabel *)self->_idleTextView setAlpha:0.0];
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        *location = 0u;
        v39 = 0u;
        [(SBRootFolderView *)self getMetrics:location];
        [(UILabel *)self->_idleTextView sbf_setBoundsAndPositionFromFrame:v46, v47];
      }

      v24 = self->_idleTextView;
      if (!v8)
      {
        if (!animatedCopy)
        {
          [(UILabel *)v24 removeFromSuperview];
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      [(UILabel *)v24 setText:v8];
      [(UILabel *)self->_idleTextView setMarqueeEnabled:1];
      [(UILabel *)self->_idleTextView setMarqueeRunning:1];
      if (animatedCopy)
      {
        v24 = self->_idleTextView;
LABEL_14:
        v25 = v24;
        objc_initWeak(location, self);
        v26 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __41__SBRootFolderView_setIdleText_animated___block_invoke;
        v34[3] = &unk_1E808B3E8;
        objc_copyWeak(&v37, location);
        v27 = v25;
        v35 = v27;
        v28 = v8;
        v36 = v28;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __41__SBRootFolderView_setIdleText_animated___block_invoke_2;
        v30[3] = &unk_1E808B410;
        objc_copyWeak(&v33, location);
        v31 = v28;
        v29 = v27;
        v32 = v29;
        [v26 animateWithDuration:v34 animations:v30 completion:0.3];

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v37);
        objc_destroyWeak(location);
      }
    }
  }

LABEL_16:
}

void __41__SBRootFolderView_setIdleText_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = 1.0;
  if (!*(a1 + 40))
  {
    v2 = 0.0;
  }

  [*(a1 + 32) setAlpha:v2];
  [WeakRetained setNeedsLayout];
  [WeakRetained layoutIfNeeded];
}

void __41__SBRootFolderView_setIdleText_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = WeakRetained == 0;
  }

  if (!v3)
  {
    v5 = WeakRetained;
    [*(a1 + 40) removeFromSuperview];
    WeakRetained = v5;
    v4 = *(v5 + 150);
    if (*(a1 + 40) == v4)
    {
      *(v5 + 150) = 0;

      WeakRetained = v5;
    }
  }
}

- (void)transitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = SBRootFolderView;
  [(SBFolderView *)&v9 transitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(SBRootFolderView *)self folderPageManagementAllowedOrientations])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBRootFolderView_transitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E8089418;
    v8[4] = self;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 scrollViewWillBeginDragging:draggingCopy];
  if ([draggingCopy isScrollAnimating])
  {
    [draggingCopy stopScrollingAndZooming];
  }

  [(SBRootFolderView *)self _captureInitialSearchScrollTrackingState];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  offset->x = self->_scrollingAdjustment + offset->x;
  draggingCopy = dragging;
  [(SBRootFolderView *)self setScrollingAdjustment:0.0];
  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndDragging:dragging willDecelerate:?];
  if (!decelerate)
  {
    [(SBRootFolderView *)self _cleanUpAfterScrolling];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndDecelerating:decelerating];
  scrollView = [(SBFolderView *)self scrollView];
  isTracking = [scrollView isTracking];

  if ((isTracking & 1) == 0)
  {
    [(SBRootFolderView *)self _cleanUpAfterScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndScrollingAnimation:animation];
  scrollView = [(SBFolderView *)self scrollView];
  if ([scrollView isTracking])
  {
  }

  else
  {
    _shouldIgnoreScrollingDidEndNotifications = [(SBFolderView *)self _shouldIgnoreScrollingDidEndNotifications];

    if (!_shouldIgnoreScrollingDidEndNotifications)
    {
      [(SBRootFolderView *)self _cleanUpAfterScrolling];
    }
  }
}

- (void)iconScrollViewDidCancelTouchTracking:(id)tracking
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  [(SBFolderView *)&v8 iconScrollViewDidCancelTouchTracking:tracking];
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v5 = v4;
  if ([(SBFolderView *)self currentPageIndex]< 0 && v5 <= 0.0)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = _SBFLoggingMethodProem();
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "%{public}@ Home Screen page mismatch, forcing page zero", buf, 0xCu);
    }

    [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self defaultPageIndex] animated:1];
  }
}

- (BOOL)iconScrollView:(id)view shouldSetContentOffset:(CGPoint *)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(SBRootFolderView *)self allowsFreeScrollingUntilScrollingEnds]|| ![(SBRootFolderView *)self shouldPinScrollingToFirstOrLastPageScrollOffsetForProposedScrollOffset:offset])
  {
    isVertical = [(SBFolderView *)self isVertical];
    v11 = 8;
    if (!isVertical)
    {
      v11 = 0;
    }

    *(&offset->x + v11) = self->_scrollingAdjustment + *(&offset->x + v11);
    v13.receiver = self;
    v13.super_class = SBRootFolderView;
    v9 = [(SBFolderView *)&v13 iconScrollView:viewCopy shouldSetContentOffset:offset animated:animatedCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)iconScrollView:(id)view shouldSetAutoscrollContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  window = [(SBRootFolderView *)self window];
  [(SBFolderView *)self scrollingDimensionForPoint:x, y];
  v10 = v9;
  if ((([window isRotating] & 1) != 0 || -[SBRootFolderView allowsAutoscrollToLeadingCustomView](self, "allowsAutoscrollToLeadingCustomView") || -[SBFolderView typeForPage:](self, "typeForPage:", -[SBFolderView _pageIndexForOffset:](self, "_pageIndexForOffset:", v10))) && (v13.receiver = self, v13.super_class = SBRootFolderView, -[SBFolderView iconScrollView:shouldSetAutoscrollContentOffset:](&v13, sel_iconScrollView_shouldSetAutoscrollContentOffset_, viewCopy, x, y)))
  {
    v11 = 1;
    [(SBRootFolderView *)self setAllowsFreeScrollingUntilScrollingEnds:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGPoint)_scrollView:(id)view adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)inView horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  [(SBFolderView *)self scrollingDimensionForPoint:view, velocity, verticalVelocity, offset.x, offset.y, translation.x, translation.y, point.x, point.y, inView.x, inView.y];
  v12 = v11;
  if (velocity)
  {
    v13 = *velocity;
  }

  else
  {
    v13 = 0.0;
  }

  [(SBRootFolderView *)self _firstPageScrollOffsetForOverscroll];
  v15 = v14;
  [(SBRootFolderView *)self _lastPageScrollOffsetForOverscroll];
  v17 = v16;
  isRTL = [(SBFolderView *)self isRTL];
  v19 = !isRTL && v12 < v15 || v12 > v15 && isRTL;
  v20 = v12 <= v17 || isRTL;
  v21 = v12 < v17 && isRTL;
  v22 = v20 != 1 || v21;
  if ((v19 & [(SBRootFolderView *)self _shouldIgnoreOverscrollOnFirstPageForCurrentOrientation]) != 0)
  {
    v13 = 0.0;
    v12 = v15;
  }

  if (v22 && [(SBRootFolderView *)self _shouldIgnoreOverscrollOnLastPageForCurrentOrientation])
  {
    v13 = 0.0;
    v12 = v17;
  }

  if (velocity)
  {
    *velocity = v13;
  }

  [(SBFolderView *)self pointForScrollingDimension:v12];
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)updateIconListIndexAndVisibility:(BOOL)visibility
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 updateIconListIndexAndVisibility:?];
  if (self->_scrollToSearchIsDraggingOrAnimating || visibility || ([(SBRootFolderView *)self leadingCustomViewVisibilityProgress], (BSFloatIsZero() & 1) == 0))
  {
    [(SBRootFolderView *)self _updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:1];
  }
}

- (void)_updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:(BOOL)layout
{
  layoutCopy = layout;
  v31 = *MEMORY[0x1E69E9840];
  scrollView = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self currentScrollOffset];
  v7 = v6;
  isScrolling = [(SBFolderView *)self isScrolling];
  if (isScrolling)
  {
    [(SBFolderView *)self scrollOffsetForPageIndexCalculation];
    v9 = [(SBFolderView *)self typeForPage:[(SBFolderView *)self _pageIndexForOffset:?]];
    if ([scrollView isTracking] && v9 == 1)
    {
      scrollingPageDotsVisibilityAssertion = [(SBRootFolderView *)self scrollingPageDotsVisibilityAssertion];

      if (!scrollingPageDotsVisibilityAssertion)
      {
        v11 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:@"scrolling"];
        [(SBRootFolderView *)self setScrollingPageDotsVisibilityAssertion:v11];
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = [(SBFolderView *)self typeForPage:[(SBFolderView *)self currentPageIndex]];
  }

  scrollingPageDotsVisibilityAssertion2 = [(SBRootFolderView *)self scrollingPageDotsVisibilityAssertion];
  [(SBRootFolderView *)self setScrollingPageDotsVisibilityAssertion:0];
  [scrollingPageDotsVisibilityAssertion2 invalidate];

  if (v9)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  isRTL = [(SBFolderView *)self isRTL];
  baseOffsetForDeterminingScrollToSearchThreshold = self->_baseOffsetForDeterminingScrollToSearchThreshold;
  v17 = v7 - baseOffsetForDeterminingScrollToSearchThreshold;
  v18 = baseOffsetForDeterminingScrollToSearchThreshold - v7;
  if (isRTL)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v13 = 1;
  if (BSFloatIsZero())
  {
    if (v19 > 0.0 && layoutCopy)
    {
      [(SBRootFolderView *)self layoutSearchableViews];
    }
  }

LABEL_9:
  if (![(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    v14 = ((isScrolling | v13) & 1) == 0 && [(SBRootFolderView *)self hidesOffscreenCustomPageViews];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = self->_searchableLeadingCustomWrapperViews;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v26 + 1) + 8 * i) setHidden:{v14, v26}];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }
}

- (void)_willScrollToPageIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _willScrollToPageIndex:index animated:?];
  [(SBRootFolderView *)self setAllowsFreeScrollingUntilScrollingEnds:1];
  if (animatedCopy && ![(SBFolderView *)self isScrolling])
  {
    [(SBRootFolderView *)self _captureInitialSearchScrollTrackingState];
  }
}

- (void)_currentPageIndexDidChangeFromPageIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _currentPageIndexDidChangeFromPageIndex:index];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [(SBRootFolderView *)self getMetrics:v4];
  [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:v4];
  [(SBRootFolderView *)self layoutSearchableViewsWithMetrics:v4];
}

- (void)_updateScrollingState:(BOOL)state
{
  stateCopy = state;
  if (!state)
  {
    [(SBRootFolderView *)self setScrollingAdjustment:0.0];
    [(SBRootFolderView *)self setAllowsFreeScrollingUntilScrollingEnds:0];
    [(SBRootFolderView *)self _cleanupAfterExtraScrollGesturesCompleted];
  }

  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 _updateScrollingState:stateCopy];
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  if (BSFloatIsOne())
  {
    [(SBRootFolderView *)self _captureInitialSearchScrollTrackingState];
  }
}

- (void)updateIconListViews
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 updateIconListViews];
  [(SBRootFolderView *)self layoutSearchableViews];
}

- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SBFolderView *)self currentPageIndex]!= index || [(SBFolderView *)self isScrolling])
  {
    [(SBRootFolderView *)self _flashPageDotsForReason:@"animated scroll"];
  }

  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [(SBFolderView *)&v7 scrollUsingDecelerationAnimationToPageIndex:index withCompletionHandler:handlerCopy];
}

- (double)leadingCustomViewPageScrollOffsetUsingPageWidth:(double)width
{
  firstLeadingCustomPageIndex = [(SBRootFolderView *)self firstLeadingCustomPageIndex];
  result = 0.0;
  if (firstLeadingCustomPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:firstLeadingCustomPageIndex pageWidth:width];
  }

  return result;
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)index
{
  leadingCustomView = [(SBRootFolderView *)self leadingCustomView];

  if (!leadingCustomView)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  return [(SBFolderView *)&v7 pageIndexForLeadingCustomPageIndex:index];
}

- (int64_t)lastLeadingCustomPageIndex
{
  if ([(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  leadingCustomView = [(SBRootFolderView *)self leadingCustomView];

  if (!leadingCustomView)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  return [(SBFolderView *)&v5 lastLeadingCustomPageIndex];
}

- (double)trailingCustomViewPageScrollOffset
{
  [(SBFolderView *)self _pageWidth];

  [(SBRootFolderView *)self trailingCustomViewPageScrollOffsetUsingPageWidth:?];
  return result;
}

- (double)trailingCustomViewPageScrollOffsetUsingPageWidth:(double)width
{
  trailingCustomViewPageIndex = [(SBRootFolderView *)self trailingCustomViewPageIndex];

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:trailingCustomViewPageIndex pageWidth:width];
  return result;
}

- (UIEdgeInsets)_statusBarInsetsForDockEdge:(unint64_t)edge dockOffscreenPercentage:(double)percentage
{
  v7 = MEMORY[0x1E69DDCE0];
  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  [(SBDockView *)self->_dockView dockHeight];
  v12 = v11;
  [(SBDockView *)self->_dockView dockHeightPadding];
  v13 = 1.0 - percentage;
  v15 = -(v14 - v12 * v13);
  if (edge == 8)
  {
    v16 = -(v14 - v12 * v13);
LABEL_5:
    v15 = v9;
    goto LABEL_6;
  }

  v16 = *(v7 + 24);
  if (edge != 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v17 = v8;
  v18 = v10;
  result.right = v16;
  result.bottom = v18;
  result.left = v15;
  result.top = v17;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = SBRootFolderView;
  v8 = [(SBFolderView *)&v19 hitTest:eventCopy withEvent:x, y];
  if ([(SBFolderView *)self isEditing])
  {
    v9 = v8;
  }

  else
  {
    scrollView = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
    if (v11 > 0.0 && ([v8 isDescendantOfView:scrollView] & 1) == 0 && self->_dockView)
    {
      [(SBRootFolderView *)self pullDownSearchVisibilityProgress];
      if (BSFloatIsZero())
      {
        lastObject = [(NSArray *)self->_searchableLeadingCustomWrapperViews lastObject];
      }

      else
      {
        lastObject = self->_searchPulldownWrapperView;
      }

      v13 = lastObject;
      [(SBRootFolderView *)self convertPoint:lastObject toView:x, y];
      v14 = [(SBHTouchPassThroughView *)v13 hitTest:eventCopy withEvent:?];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16;

      v8 = v17;
    }

    v9 = v8;
  }

  return v9;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  v7 = settingsCopy;
  if (self->_parallaxSettings == settingsCopy)
  {
    [(SBRootFolderView *)self _updateParallaxSettings];
    v7 = settingsCopy;
  }

  if (self->_pullToSearchSettings == v7)
  {
    [(SBRootFolderView *)self _updatePullToSearchSettings];
  }
}

- (void)_updatePullToSearchSettings
{
  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings searchContentFadeInStartThreshold];
  [(SBRootFolderView *)self setPullToSearchFadeInThreshold:?];
  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionActivationThreshold];
  [(SBRootFolderView *)self setPullToSearchActivationThreshold:?];
  appIconsFollowTranslation = [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings appIconsFollowTranslation];

  [(SBRootFolderView *)self setPullToSearchTranslatesIcons:appIconsFollowTranslation];
}

- (void)_animateViewsForPullingToSearchWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  [(SBRootFolderView *)self pullDownSearchVisibilityProgress];
  v6 = v5;
  v7 = 0.0;
  if ([(SBRootFolderView *)self isOnLeadingCustomPage])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  if ([(SBRootFolderView *)self shiftsPullDownSearchForVisibility])
  {
    v9 = v6;
  }

  else
  {
    v9 = 1.0;
  }

  searchPresenter = [(SBRootFolderView *)self searchPresenter];
  [(SBRootFolderView *)self bounds];
  v49 = v12;
  v50 = v11;
  v47 = v14;
  v48 = v13;
  if (v6 > 0.0 || v8 > 0.0)
  {
    [(SBRootFolderView *)self _spotlightFirstIconRowOffset];
    v7 = v15;
  }

  if (searchPresenter)
  {
    v16 = 0.0;
    if (self->_pullToSearchTranslatesIcons != 0.0 && [searchPresenter presentationState] == 1)
    {
      [searchPresenter presentationOffset];
      v16 = v17;
    }
  }

  else
  {
    v16 = v8 * v7;
  }

  v18 = v9 * v7;
  v19 = 0.0;
  if (v9 < 1.0)
  {
    v19 = v7;
  }

  v46 = v19;
  v53 = CGRectOffset(metrics->var5, 0.0, v16);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  scrollView = [(SBFolderView *)self scrollView];
  [scrollView frame];
  v56.origin.x = v25;
  v56.origin.y = v26;
  v56.size.width = v27;
  v56.size.height = v28;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (!CGRectEqualToRect(v54, v56))
  {
    [scrollView setFrame:{x, y, width, height}];
  }

  v29 = v7 - v18;
  if (searchPresenter)
  {
    if (self->_pullToSearchTranslatesIcons != 0.0)
    {
      memcpy(__dst, metrics, sizeof(__dst));
      *&__dst[224] = CGRectOffset(metrics->var7, 0.0, v16);
      scrollAccessoryAuxiliaryView = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];
      if (!scrollAccessoryAuxiliaryView || (v31 = scrollAccessoryAuxiliaryView, IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled(), v31, IsReduceMotionEnabled))
      {
        v55 = CGRectOffset(metrics->var6, 0.0, v16);
        v33 = v55.origin.x;
        v34 = v55.origin.y;
        v35 = v55.size.width;
        v36 = v55.size.height;
        *&__dst[192] = v55;
        scrollAccessoryView = [(SBRootFolderView *)self scrollAccessoryView];
        [scrollAccessoryView sbf_setBoundsAndPositionFromFrame:{v33, v34, v35, v36}];
      }

      [(SBRootFolderView *)self layoutDockViewWithMetrics:__dst, *&v46];
    }

    v38 = 0;
  }

  else
  {
    _window = [(SBRootFolderView *)self _window];
    v38 = [_window isRotating] ^ 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBRootFolderView__animateViewsForPullingToSearchWithMetrics___block_invoke;
  aBlock[3] = &unk_1E808B438;
  aBlock[4] = self;
  aBlock[5] = v50;
  aBlock[6] = v49;
  aBlock[7] = v48;
  aBlock[8] = v47;
  *&aBlock[9] = v29;
  aBlock[10] = 0;
  *&aBlock[11] = v46;
  v40 = _Block_copy(aBlock);
  v41 = v40;
  if (v38)
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v40];
  }

  else
  {
    (*(v40 + 2))(v40);
  }

  pullDownSearchView = [(SBRootFolderView *)self pullDownSearchView];
  v43 = pullDownSearchView;
  v44 = (v6 - self->_pullToSearchFadeInThreshold) / (self->_pullToSearchActivationThreshold - self->_pullToSearchFadeInThreshold);
  if (v44 <= 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44 + 0.0;
  }

  [pullDownSearchView setAlpha:{fmin(v45, 1.0)}];
}

uint64_t __63__SBRootFolderView__animateViewsForPullingToSearchWithMetrics___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 864) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 864) setHeaderOffset:*(a1 + 72)];
  v2 = *(*(a1 + 32) + 864);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  return [v2 setExtendedSize:{v3, v4}];
}

- (void)_animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v6 = v5;
  [(SBRootFolderView *)self trailingCustomViewVisibilityProgress];
  v8 = v7;
  if (v7 <= 0.0)
  {
    v7 = v6;
  }

  [(SBFSteppedAnimationTimingFunctionCalculator *)self->_customPageAnimationStepper setPercentComplete:v7];
  [(SBHMinusPageStepper *)self->_customPageAnimationStepper backgroundBlurAlpha];
  v10 = v9;
  dockEdge = [(SBRootFolderView *)self dockEdge];
  dockView = [(SBRootFolderView *)self dockView];
  shouldFadeDockOutDuringTransitionToLeadingCustomView = [(SBRootFolderView *)self shouldFadeDockOutDuringTransitionToLeadingCustomView];
  v13 = 1.0;
  if (shouldFadeDockOutDuringTransitionToLeadingCustomView && dockEdge <= 0xF && ((1 << dockEdge) & 0x8011) != 0)
  {
    v13 = 1.0 - v10;
  }

  [dockView setBackgroundAlpha:v13];
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    shouldFadePageControlOutDuringTransitionToLeadingCustomView = [(SBRootFolderView *)self shouldFadePageControlOutDuringTransitionToLeadingCustomView];
    v15 = 1.0;
    if (shouldFadePageControlOutDuringTransitionToLeadingCustomView)
    {
      customPageAnimationStepper = self->_customPageAnimationStepper;
      if (customPageAnimationStepper)
      {
        [(SBHMinusPageStepper *)customPageAnimationStepper pageControlAlpha];
      }
    }

    [(SBRootFolderView *)self setPageControlAlpha:v15];
  }

  [(SBSearchBackdropView *)self->_leadingCustomBackdropView setHidden:BSFloatIsZero()];
  [(SBSearchBackdropView *)self->_trailingCustomBackdropView setHidden:BSFloatIsZero()];
  [(UIView *)self->_trailingCustomSearchDimmingView setAlpha:v8];
  [(SBRootFolderView *)self layoutDockViewWithMetrics:metrics];
  [(SBRootFolderView *)self layoutTopButtonsWithMetrics:metrics];
  [(SBRootFolderView *)self layoutPageControlWithMetrics:metrics];
  [(UILabel *)self->_idleTextView sbf_setBoundsAndPositionFromFrame:metrics->var4.origin.x, metrics->var4.origin.y, metrics->var4.size.width, metrics->var4.size.height];
  headerView = [(SBFolderView *)self headerView];
  [headerView sbf_setBoundsAndPositionFromFrame:{metrics->var0.origin.x, metrics->var0.origin.y, metrics->var0.size.width, metrics->var0.size.height}];
}

- (void)layoutTopButtons
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [(SBRootFolderView *)self getMetrics:v3];
  [(SBRootFolderView *)self layoutTopButtonsWithMetrics:v3];
}

- (void)layoutTopButtonsWithMetrics:(const SBRootFolderViewMetrics *)metrics
{
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v7 = v5 > 0.0 && ([(SBRootFolderView *)self leadingCustomViewVisibilityProgress], v6 != 1.0) && [(SBRootFolderView *)self _leadingCustomViewShouldShowDoneButtonWhenEditing];
  if (![(SBRootFolderView *)self isPageManagementUIVisible]&& !v7)
  {
    titledButtonsContainerView = [(SBRootFolderView *)self titledButtonsContainerView];
    [titledButtonsContainerView sbf_setBoundsAndPositionFromFrame:{metrics->var3.origin.x, metrics->var3.origin.y, metrics->var3.size.width, metrics->var3.size.height}];

    doneButton = [(SBRootFolderView *)self doneButton];
    [doneButton sbf_setBoundsAndPositionFromFrame:{metrics->var1.origin.x, metrics->var1.origin.y, metrics->var1.size.width, metrics->var1.size.height}];

    widgetButton = [(SBRootFolderView *)self widgetButton];
    [widgetButton sbf_setBoundsAndPositionFromFrame:{metrics->var2.origin.x, metrics->var2.origin.y, metrics->var2.size.width, metrics->var2.size.height}];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v16.receiver = self;
  v16.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v16 descriptionBuilderWithMultilinePrefix:prefix];
  if ([(NSHashTable *)self->_dockOffscreenProgressSettingClients count])
  {
    v5 = [v4 appendObject:self->_dockOffscreenProgressSettingClients withName:@"dockOffscreenProgressSettingClients"];
  }

  v6 = [v4 appendBool:self->_dockExternal withName:@"isDockExternal" ifEqualTo:1];
  v7 = [v4 appendFloat:@"leadingCustomViewVisibilityProgress" withName:2 decimalPrecision:self->_leadingCustomViewVisibilityProgress];
  v8 = [v4 appendFloat:@"pullDownSearchVisibilityProgress" withName:2 decimalPrecision:self->_pullDownSearchVisibilityProgress];
  v9 = [v4 appendBool:self->_userAttemptedToOverscrollFirstPageDuringCurrentGesture withName:@"userAttemptedToOverscrollFirstPageDuringCurrentGesture" ifEqualTo:1];
  v10 = [v4 appendBool:self->_userAttemptedToOverscrollLastPageDuringCurrentGesture withName:@"userAttemptedToOverscrollLastPageDuringCurrentGesture" ifEqualTo:1];
  v11 = [v4 appendBool:self->_allowsFreeScrollingUntilScrollingEnds withName:@"allowsFreeScrollingUntilScrollingEnds" ifEqualTo:1];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v12 = [v4 appendFloat:@"scrollingAdjustment" withName:2 decimalPrecision:self->_scrollingAdjustment];
  }

  v13 = [v4 appendObject:self->_dockBorrowedAssertion withName:@"dockBorrowedAssertion" skipIfNil:1];
  v14 = [v4 appendObject:self->_scrollAccessoryBorrowedAssertion withName:@"scrollAccessoryBorrowedAssertion" skipIfNil:1];

  return v4;
}

- (id)accessibilityTintColorForDockView:(id)view
{
  [(SBDockView *)self->_dockView frame];

  return [(SBFolderView *)self accessibilityTintColorForRect:3 tintStyle:?];
}

- (void)remoteBasebandLogCollectionStateDidChange:(BOOL)change
{
  if (change)
  {
    v3 = *MEMORY[0x1E69D4038];
  }

  else
  {
    v3 = &stru_1F3D472A8;
  }

  [(SBRootFolderView *)self setIdleText:v3];
}

- (void)_setupIdleTextPrivacyDisclosures
{
  mEMORY[0x1E69D4008] = [MEMORY[0x1E69D4008] sharedInstance];
  [mEMORY[0x1E69D4008] addObserver:self];

  if (ct_green_tea_logging_enabled())
  {
    v4 = @"Regulatory Logging Enabled";
  }

  else
  {
    mEMORY[0x1E69D4008]2 = [MEMORY[0x1E69D4008] sharedInstance];
    isLogCollectionEnabled = [mEMORY[0x1E69D4008]2 isLogCollectionEnabled];

    if (!isLogCollectionEnabled)
    {
      return;
    }

    v4 = *MEMORY[0x1E69D4038];
  }

  [(SBRootFolderView *)self setIdleText:v4 animated:0];
}

- (void)_reduceMotionStatusDidChange:(id)change
{
  changeCopy = change;
  searchBackdropView = self->_searchBackdropView;
  if (searchBackdropView)
  {
    [(SBSearchBackdropView *)searchBackdropView removeFromSuperview];
    v5 = self->_searchBackdropView;
    self->_searchBackdropView = 0;

    [(SBRootFolderView *)self _setupSearchBackdropViewIfNecessary];
  }

  trailingCustomBackdropView = self->_trailingCustomBackdropView;
  if (trailingCustomBackdropView)
  {
    [(SBSearchBackdropView *)trailingCustomBackdropView removeFromSuperview];
    v7 = self->_trailingCustomBackdropView;
    self->_trailingCustomBackdropView = 0;

    [(SBRootFolderView *)self _setupTrailingCustomBackdropViewIfNecessary];
  }

  leadingCustomBackdropView = self->_leadingCustomBackdropView;
  if (leadingCustomBackdropView)
  {
    [(SBSearchBackdropView *)leadingCustomBackdropView removeFromSuperview];
    v9 = self->_leadingCustomBackdropView;
    self->_leadingCustomBackdropView = 0;

    [(SBRootFolderView *)self _setupLeadingCustomBackdropViewIfNecessary];
  }
}

- (void)_setupSearchBackdropViewIfNecessary
{
  if (!self->_searchBackdropView)
  {
    v6 = self->_searchPulldownWrapperView;
    v3 = [SBSearchBackdropView alloc];
    [(_SBRootFolderLayoutWrapperView *)v6 bounds];
    v4 = [(SBSearchBackdropView *)v3 initWithFrame:0 style:?];
    searchBackdropView = self->_searchBackdropView;
    self->_searchBackdropView = v4;

    [(SBSearchBackdropView *)self->_searchBackdropView setAutoresizingMask:18];
    [(SBSearchBackdropView *)self->_searchBackdropView setAlpha:1.0];
    [(_SBRootFolderLayoutWrapperView *)v6 insertSubview:self->_searchBackdropView atIndex:0];
  }
}

- (void)_setupTrailingCustomDimmingViewIfNecessary
{
  if ([(NSArray *)self->_searchableTrailingCustomWrapperViews count]&& !self->_trailingCustomSearchDimmingView)
  {
    v3 = MEMORY[0x1E69DD250];
    selfCopy = self;
    v4 = [v3 alloc];
    [(SBRootFolderView *)selfCopy _scaledBoundsForMinimumHomeScreenScale];
    v5 = [v4 initWithFrame:?];
    trailingCustomSearchDimmingView = self->_trailingCustomSearchDimmingView;
    self->_trailingCustomSearchDimmingView = v5;

    [(UIView *)self->_trailingCustomSearchDimmingView setAutoresizingMask:18];
    [(UIView *)self->_trailingCustomSearchDimmingView setAlpha:0.0];
    [(UIView *)self->_trailingCustomSearchDimmingView setUserInteractionEnabled:0];
    [(SBRootFolderView *)selfCopy insertSubview:self->_trailingCustomSearchDimmingView atIndex:0];
  }
}

- (void)_setupStateDumper
{
  if (!self->_dockStateDumpHandle)
  {
    if (self->_dockView)
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v6, &location);
      v4 = BSLogAddStateCaptureBlockWithTitle();
      dockStateDumpHandle = self->_dockStateDumpHandle;
      self->_dockStateDumpHandle = v4;

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

id __37__SBRootFolderView__setupStateDumper__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _stateCaptureString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_stateCaptureString
{
  v56[12] = *MEMORY[0x1E69E9840];
  dockView = [(SBRootFolderView *)self dockView];
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  [(SBRootFolderView *)self getMetrics:v47];
  v55[0] = @"hidden";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(dockView, "isHidden")}];
  v56[0] = v44;
  v55[1] = @"alpha";
  v4 = MEMORY[0x1E696AD98];
  [dockView alpha];
  v43 = [v4 numberWithDouble:?];
  v56[1] = v43;
  v55[2] = @"leadingCustomViewVisibilityProgress";
  v5 = MEMORY[0x1E696AD98];
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v42 = [v5 numberWithDouble:?];
  v56[2] = v42;
  v55[3] = @"pullDownSearchVisibilityProgress";
  v6 = MEMORY[0x1E696AD98];
  [(SBRootFolderView *)self pullDownSearchVisibilityProgress];
  v41 = [v6 numberWithDouble:?];
  v56[3] = v41;
  v55[4] = @"currentDockOffscreenFraction";
  window3 = MEMORY[0x1E696AD98];
  selfCopy = self;
  [(SBRootFolderView *)self currentDockOffscreenFraction];
  v40 = [window3 numberWithDouble:?];
  v56[4] = v40;
  v55[5] = @"transform";
  if (dockView)
  {
    [dockView transform];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  v8 = NSStringFromCGAffineTransform(&transform);
  v9 = &stru_1F3D472A8;
  v39 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F3D472A8;
  }

  v56[5] = v10;
  v55[6] = @"dockFrame";
  [dockView frame];
  v11 = NSStringFromCGRect(v58);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F3D472A8;
  }

  v56[6] = v13;
  v55[7] = @"effectiveDockFrame";
  v14 = NSStringFromCGRect(v47[7]);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F3D472A8;
  }

  v56[7] = v16;
  v55[8] = @"dockView";
  v17 = [dockView description];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F3D472A8;
  }

  v56[8] = v19;
  v55[9] = @"dockViewSuperview";
  superview = [dockView superview];
  v21 = [superview description];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_1F3D472A8;
  }

  v56[9] = v23;
  v55[10] = @"dockWindow";
  window = [dockView window];
  v25 = window;
  if (window)
  {
    v26 = window;
  }

  else
  {
    v26 = &stru_1F3D472A8;
  }

  v56[10] = v26;
  v55[11] = @"dockWindowLevel";
  window2 = [dockView window];
  if (window2)
  {
    v28 = MEMORY[0x1E696AD98];
    window3 = [dockView window];
    [window3 windowLevel];
    v9 = [v28 numberWithDouble:?];
  }

  v56[11] = v9;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:12];
  if (window2)
  {
  }

  v29 = MEMORY[0x1E696AEC0];
  folder = [(SBFolderView *)selfCopy folder];
  layoutDescription = [folder layoutDescription];
  folder2 = [(SBFolderView *)selfCopy folder];
  rotatedLayoutDescription = [folder2 rotatedLayoutDescription];
  v34 = [v29 stringWithFormat:@"\nlayoutDescription:\n%@\n\nrotatedLayoutDescription:\n%@", layoutDescription, rotatedLayoutDescription];

  v35 = [v38 description];
  v36 = [v35 stringByAppendingString:v34];

  return v36;
}

- (void)_overscrollScrollPanGestureRecognizerDidUpdate:(id)update
{
  updateCopy = update;
  state = [updateCopy state];
  [(SBRootFolderView *)self _firstPageScrollOffsetForOverscroll];
  v6 = v5;
  [(SBRootFolderView *)self _lastPageScrollOffsetForOverscroll];
  v8 = v7;
  _shouldIgnoreOverscrollOnFirstPageForCurrentOrientation = [(SBRootFolderView *)self _shouldIgnoreOverscrollOnFirstPageForCurrentOrientation];
  _shouldIgnoreOverscrollOnLastPageForCurrentOrientation = [(SBRootFolderView *)self _shouldIgnoreOverscrollOnLastPageForCurrentOrientation];
  v11 = _shouldIgnoreOverscrollOnLastPageForCurrentOrientation;
  if (_shouldIgnoreOverscrollOnFirstPageForCurrentOrientation || _shouldIgnoreOverscrollOnLastPageForCurrentOrientation)
  {
    if ((state - 3) < 3)
    {
      [(SBRootFolderView *)self _cleanUpAfterOverscrollScrollGestureEnded:updateCopy];
      goto LABEL_33;
    }

    if (state == 2)
    {
      [updateCopy translationInView:self];
      [(SBFolderView *)self scrollingDimensionForPoint:?];
      v13 = v12;
      v14 = self->_scrollOffsetWhenScrollingBegan - v12;
      isRTL = [(SBFolderView *)self isRTL];
      v16 = !isRTL && v14 < v6 || v14 > v6 && isRTL;
      v17 = v14 <= v8 || isRTL;
      v18 = v17 != 1 || v14 < v8 && isRTL;
      delegate = [(SBFolderView *)self delegate];
      if (v16 && _shouldIgnoreOverscrollOnFirstPageForCurrentOrientation)
      {
        [(SBRootFolderView *)self setUserAttemptedToOverscrollFirstPageDuringCurrentGesture:1];
        v21 = objc_opt_respondsToSelector();
        v20 = v13;
        if ((v21 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (!self->_lastEventWasAttemptingToOverscrollFirstPage || v16 || ([(SBRootFolderView *)self setUserAttemptedToOverscrollFirstPageDuringCurrentGesture:1], v22 = objc_opt_respondsToSelector(), v20 = 0.0, (v22 & 1) == 0))
      {
LABEL_27:
        if (v18 && v11 || self->_lastEventWasAttemptingToOverscrollLastPage && !v18)
        {
          [(SBRootFolderView *)self setUserAttemptedToOverscrollLastPageDuringCurrentGesture:1, v20];
          if (objc_opt_respondsToSelector())
          {
            [delegate rootFolderView:self didOverscrollOnLastPageByAmount:v13];
          }
        }

        self->_lastEventWasAttemptingToOverscrollFirstPage = v16;
        self->_lastEventWasAttemptingToOverscrollLastPage = v18;

        goto LABEL_33;
      }

      [delegate rootFolderView:self didOverscrollOnFirstPageByAmount:v20];
      goto LABEL_27;
    }
  }

LABEL_33:
}

- (void)_cleanUpAfterOverscrollScrollGestureEnded:(id)ended
{
  endedCopy = ended;
  userAttemptedToOverscrollFirstPageDuringCurrentGesture = [(SBRootFolderView *)self userAttemptedToOverscrollFirstPageDuringCurrentGesture];
  userAttemptedToOverscrollLastPageDuringCurrentGesture = [(SBRootFolderView *)self userAttemptedToOverscrollLastPageDuringCurrentGesture];
  v6 = userAttemptedToOverscrollLastPageDuringCurrentGesture;
  if (userAttemptedToOverscrollFirstPageDuringCurrentGesture || userAttemptedToOverscrollLastPageDuringCurrentGesture)
  {
    delegate = [(SBFolderView *)self delegate];
    [endedCopy velocityInView:self];
    [(SBFolderView *)self scrollingDimensionForPoint:?];
    v9 = v8;
    [endedCopy translationInView:self];
    [(SBFolderView *)self scrollingDimensionForPoint:?];
    v11 = v10;
    if (userAttemptedToOverscrollFirstPageDuringCurrentGesture)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate rootFolderView:self didEndOverscrollOnFirstPageWithVelocity:v9 translation:v11];
      }

      [(SBRootFolderView *)self setUserAttemptedToOverscrollFirstPageDuringCurrentGesture:0];
    }

    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate rootFolderView:self didEndOverscrollOnLastPageWithVelocity:v9 translation:v11];
      }

      [(SBRootFolderView *)self setUserAttemptedToOverscrollLastPageDuringCurrentGesture:0];
    }
  }

  self->_lastEventWasAttemptingToOverscrollFirstPage = 0;
  self->_lastEventWasAttemptingToOverscrollLastPage = 0;
}

- (BOOL)_shouldIgnoreOverscrollOnLastPageForCurrentOrientation
{
  orientation = [(SBFolderView *)self orientation];

  return [(SBRootFolderView *)self _shouldIgnoreOverscrollOnLastPageForOrientation:orientation];
}

- (void)iconListViewWillLayoutIcons:(id)icons
{
  iconsCopy = icons;
  if (self->_dockListView == iconsCopy)
  {
    v8 = iconsCopy;
    displayedModel = [(SBIconListView *)iconsCopy displayedModel];
    numberOfIcons = [displayedModel numberOfIcons];

    v7 = numberOfIcons == [(SBRootFolderView *)self lastDockIconCountCheckedForIconSpacing];
    iconsCopy = v8;
    if (!v7)
    {
      [(SBRootFolderView *)self dockIconSpacing];
      [(SBIconListView *)v8 setIconSpacing:?];
      [(SBRootFolderView *)self setLastDockIconCountCheckedForIconSpacing:numberOfIcons];
      iconsCopy = v8;
    }
  }
}

- (id)iconListView:(id)view alternateIconLocationForListWithNonDefaultSizedIcons:(BOOL)icons
{
  viewCopy = view;
  v7 = viewCopy;
  if (self->_dockListView == viewCopy || (viewCopy = self, !icons))
  {
    iconLocation = [(SBIconListView *)viewCopy iconLocation];
  }

  else
  {
    iconLocation = [(SBRootFolderView *)self iconLocationForListsWithNonDefaultSizedIcons];
  }

  v9 = iconLocation;

  return v9;
}

- (void)elementBorrowedAssertionDidInvalidate:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 reason];
  v5 = 138412546;
  v6 = a1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Unknown borrowed element assertion invalidated: %@ (reason: %{public}@", &v5, 0x16u);
}

@end