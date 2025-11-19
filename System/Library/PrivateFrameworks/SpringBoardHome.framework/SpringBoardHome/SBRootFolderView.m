@interface SBRootFolderView
+ (void)_editButtonLayoutFramesInBounds:(CGRect)a3 forVisualConfiguration:(id)a4 withTranslationOffset:(double)a5 inRTL:(BOOL)a6 doneButton:(id)a7 addWidgetButton:(id)a8 doneButtonFrame:(CGRect *)a9 addWidgetButtonFrame:(CGRect *)a10;
+ (void)_getTopLeadingButtonFrame:(CGRect *)a3 topTrailingButtonFrame:(CGRect *)a4 inBounds:(CGRect)a5 forListLayout:(id)a6 withTranslationOffset:(double)a7 inRTL:(BOOL)a8;
+ (void)_getTopLeadingButtonFrame:(CGRect *)a3 topTrailingButtonFrame:(CGRect *)a4 inBounds:(CGRect)a5 forVisualConfiguration:(id)a6 includingContentEdgeInsets:(BOOL)a7 withTranslationOffset:(double)a8 inRTL:(BOOL)a9;
- (BOOL)_leadingCustomViewShouldShowDoneButtonWhenEditing;
- (BOOL)_shouldIgnoreOverscrollOnFirstPageForCurrentOrientation;
- (BOOL)_shouldIgnoreOverscrollOnLastPageForCurrentOrientation;
- (BOOL)iconScrollView:(id)a3 shouldSetAutoscrollContentOffset:(CGPoint)a4;
- (BOOL)iconScrollView:(id)a3 shouldSetContentOffset:(CGPoint *)a4 animated:(BOOL)a5;
- (BOOL)isDockViewBorrowed;
- (BOOL)isDockVisible;
- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)a3;
- (BOOL)isPageControlHidden;
- (BOOL)isPageManagementUITransitioningOutOfVisible;
- (BOOL)isPageManagementUIVisible;
- (BOOL)isScrollAccessoryBorrowed;
- (BOOL)scrollViewHeightIncludesPageControlAndDock;
- (BOOL)shouldFadeDockOutDuringTransitionToLeadingCustomView;
- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9;
- (CGRect)_scaledBoundsForMinimumHomeScreenScale;
- (CGRect)_scrollViewFrameForDockEdge:(unint64_t)a3;
- (CGRect)enterEditingTouchRect;
- (CGSize)dockIconSpacing;
- (CGSize)dockIconSpacingWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (NSString)dockIconLocation;
- (SBHRootFolderVisualConfiguration)rootFolderVisualConfiguration;
- (SBRootFolderView)initWithConfiguration:(id)a3;
- (SBSearchBackdropView)leadingCustomBackdropView;
- (SBSearchBackdropView)searchBackdropView;
- (SBSearchBackdropView)trailingCustomBackdropView;
- (UIEdgeInsets)_statusBarInsetsForDockEdge:(unint64_t)a3 dockOffscreenPercentage:(double)a4;
- (UIEdgeInsets)statusBarInsetsForDockEdge:(unint64_t)a3;
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
- (double)leadingCustomViewPageScrollOffsetUsingPageWidth:(double)a3;
- (double)maxDockHeight;
- (double)pageControlAlpha;
- (double)trailingCustomViewPageScrollOffset;
- (double)trailingCustomViewPageScrollOffsetUsingPageWidth:(double)a3;
- (id)_createIconListViewForList:(id)a3;
- (id)_stateCaptureString;
- (id)accessibilityTintColorForDockView:(id)a3;
- (id)additionalIconListViews;
- (id)allCustomViewControllers;
- (id)beginModifyingDockOffscreenFractionForReason:(id)a3;
- (id)borrowDockViewForReason:(id)a3;
- (id)borrowScrollAccessoryForReason:(id)a3;
- (id)customViewControllerForPageAtIndex:(int64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)editMenu;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)iconListView:(id)a3 alternateIconLocationForListWithNonDefaultSizedIcons:(BOOL)a4;
- (id)iconListViewAtIndex:(unint64_t)a3;
- (id)iconListViewAtPoint:(CGPoint)a3;
- (id)iconListViewForExtraIndex:(unint64_t)a3;
- (id)iconListViewForIconListModelIndex:(unint64_t)a3;
- (id)iconListViewForPageIndex:(int64_t)a3;
- (id)iconLocationForListsWithNonDefaultSizedIcons;
- (id)leadingCustomViewController;
- (id)makeTitledButtonOfClass:(Class)a3;
- (id)newDockBackgroundMaterialViewWithInitialWeighting:(double)a3;
- (id)newDockBackgroundView;
- (id)newHomeScreenButtonBackgroundView;
- (id)requirePageDotsVisibilityForReason:(id)a3;
- (id)rootListLayout;
- (id)rootWithWidgetsListLayout;
- (id)searchableLeadingCustomWrapperView;
- (id)trailingCustomViewController;
- (id)visibleIconListViews;
- (int64_t)_adjustPageIndexForPageControl:(int64_t)a3;
- (int64_t)_adjustPageIndexFromPageControl:(int64_t)a3;
- (int64_t)_pageCountForPageControl;
- (int64_t)firstLeadingCustomPageIndex;
- (int64_t)lastLeadingCustomPageIndex;
- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3;
- (unint64_t)_countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl;
- (unint64_t)_countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl;
- (unint64_t)countOfHiddenLeadingCustomPagesInRange:(_NSRange)a3;
- (unint64_t)leadingCustomPageCount;
- (unint64_t)numberOfInitialPagesToPreferVisible;
- (unint64_t)totalLeadingCustomPageCount;
- (unint64_t)trailingCustomPageCount;
- (void)_adjustLeadingCustomContentForEdgeBounce;
- (void)_animateViewsForPullingToSearch;
- (void)_animateViewsForPullingToSearchWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)_animateViewsForScrollingToLeadingOrTrailingCustomView;
- (void)_animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)_applyPageDotsVisibilityAssertions;
- (void)_captureInitialSearchScrollTrackingState;
- (void)_cleanUpAfterOverscrollScrollGestureEnded:(id)a3;
- (void)_cleanUpAfterScrolling;
- (void)_cleanupAfterExtraScrollGesturesCompleted;
- (void)_currentPageIndexDidChangeFromPageIndex:(int64_t)a3;
- (void)_flashPageDotsForReason:(id)a3;
- (void)_forceLayoutPageControl;
- (void)_layoutSubviews;
- (void)_layoutSubviewsForLeadingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)_layoutSubviewsForPulldownSearch;
- (void)_layoutSubviewsForTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)_overscrollScrollPanGestureRecognizerDidUpdate:(id)a3;
- (void)_reduceMotionStatusDidChange:(id)a3;
- (void)_resetSearchScrollTrackingState;
- (void)_setupIdleTextPrivacyDisclosures;
- (void)_setupLeadingCustomBackdropViewIfNecessary;
- (void)_setupSearchBackdropViewIfNecessary;
- (void)_setupStateDumper;
- (void)_setupTrailingCustomBackdropViewIfNecessary;
- (void)_setupTrailingCustomDimmingViewIfNecessary;
- (void)_updateDockViewZOrdering;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:(BOOL)a3;
- (void)_updateIconListLegibilitySettings;
- (void)_updatePageControlNumberOfPages;
- (void)_updateParallaxSettings;
- (void)_updatePullToSearchSettings;
- (void)_updateScrollingState:(BOOL)a3;
- (void)_willScrollToPageIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)cleanUpAfterTransition;
- (void)dealloc;
- (void)doneButtonTriggered:(id)a3;
- (void)editHomeScreenWallpaperButtonTriggered:(id)a3;
- (void)elementBorrowedAssertionDidInvalidate:(id)a3;
- (void)enterPageManagementUIWithCompletionHandler:(id)a3;
- (void)enumerateScrollViewPageViewsUsingBlock:(id)a3;
- (void)exitPageManagementUIWithCompletionHandler:(id)a3;
- (void)folderDidChange;
- (void)getMetrics:(SBRootFolderViewMetrics *)a3;
- (void)getMetrics:(SBRootFolderViewMetrics *)a3 dockEdge:(unint64_t)a4;
- (void)iconListViewWillLayoutIcons:(id)a3;
- (void)iconScrollViewDidCancelTouchTracking:(id)a3;
- (void)iconTintButtonTriggered:(id)a3;
- (void)layoutDockViewWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)layoutPageControlWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)layoutSearchableViews;
- (void)layoutSearchableViewsWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)layoutTopButtons;
- (void)layoutTopButtonsWithMetrics:(const SBRootFolderViewMetrics *)a3;
- (void)minimumHomeScreenScaleDidChange;
- (void)pageControlDidBeginScrubbing:(id)a3;
- (void)pageControlDidEndScrubbing:(id)a3;
- (void)pageControlDidReceiveButtonTap:(id)a3;
- (void)prepareForTransition;
- (void)remoteBasebandLogCollectionStateDidChange:(BOOL)a3;
- (void)removeDockOffscreenFractionClient:(id)a3;
- (void)resetIconListViews;
- (void)returnScalingView;
- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentAlpha:(double)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setDockEdge:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setIdleText:(id)a3 animated:(BOOL)a4;
- (void)setLeadingCustomViewBouncing:(BOOL)a3;
- (void)setLeadingCustomViewPageHidden:(BOOL)a3;
- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(unint64_t)a4;
- (void)setLeadingCustomViewVisibilityProgress:(double)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setNeedsLayout;
- (void)setOrientation:(int64_t)a3;
- (void)setPageControlAlpha:(double)a3;
- (void)setPageControlHidden:(BOOL)a3;
- (void)setPullDownSearchVisibilityProgress:(double)a3;
- (void)setSearchGesture:(id)a3;
- (void)setShouldPrewarmContent:(BOOL)a3 ofNonIconPageAtIndex:(int64_t)a4;
- (void)setShowsAddWidgetButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsDoneButton:(BOOL)a3 animated:(BOOL)a4;
- (void)setSpecialLayoutManager:(id)a3 completionHandler:(id)a4;
- (void)setSuppressesEditingStateForListViews:(BOOL)a3;
- (void)setTitledButtonsAlpha:(double)a3;
- (void)setTrailingCustomViewVisibilityProgress:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)tearDownListViews;
- (void)transitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)updateDockViewOrientation;
- (void)updateEditButtonMenu;
- (void)updateIconListIndexAndVisibility:(BOOL)a3;
- (void)updateIconListViews;
- (void)updatePageControlConfiguration;
- (void)widgetButtonTriggered:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBRootFolderView

- (id)additionalIconListViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_dockListView)
  {
    v5[0] = self->_dockListView;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBRootFolderView;
    v2 = [(SBFolderView *)&v4 additionalIconListViews];
  }

  return v2;
}

- (unint64_t)leadingCustomPageCount
{
  if (![(SBFolderView *)self iconListViewCount]&& [(SBFolderView *)self automaticallyCreatesIconListViews])
  {
    return 0;
  }

  v4 = [(SBRootFolderView *)self leadingCustomViewControllers];
  v5 = [v4 count];

  v6 = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  v3 = v5 - [v6 count];
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

  v3 = [(SBRootFolderView *)self trailingCustomView];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SBRootFolderView *)self trailingCustomViewControllers];
  v5 = [v4 count];

  return v5;
}

- (UIView)trailingCustomView
{
  v2 = [(NSArray *)self->_searchableTrailingCustomWrapperViews firstObject];
  v3 = [v2 wrappedView];

  return v3;
}

- (id)leadingCustomViewController
{
  v2 = [(SBRootFolderView *)self leadingCustomViewControllers];
  v3 = [v2 lastObject];

  return v3;
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
  v3 = [(SBFolderView *)self delegate];
  v4 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 minimumHomeScreenScaleForFolderView:self];
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
    v3 = [(SBRootFolderView *)self window];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = self;
    }

    v9 = v5;

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
    v3 = [(SBRootFolderView *)self window];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = self;
    }

    v10 = v5;

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
  v3 = [(SBFolderView *)self listLayoutProvider];
  v4 = [(SBRootFolderView *)self iconLocationForListsWithNonDefaultSizedIcons];
  v5 = [v3 layoutForIconLocation:v4];

  return v5;
}

- (id)iconLocationForListsWithNonDefaultSizedIcons
{
  v3 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 iconLocationForListsWithNonDefaultSizedIconsForRootFolderView:self];
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
  v3 = [(SBFolderView *)self firstIconListView];
  v4 = [v3 layout];
  [v4 layoutInsetsForOrientation:{objc_msgSend(v3, "orientation")}];
  v6 = v5;

  v7 = [(SBFolderView *)self delegate];
  v8 = objc_opt_respondsToSelector();
  v9 = 0.0;
  if (v8)
  {
    [v7 distanceToTopOfSpotlightIconsForRootFolderView:{self, 0.0}];
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
  v2 = [(SBRootFolderView *)self rootListLayout];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 rootFolderVisualConfiguration];
  }

  else
  {
    v3 = objc_alloc_init(SBHRootFolderVisualConfiguration);
  }

  v4 = v3;

  return v4;
}

- (id)rootListLayout
{
  v3 = [(SBFolderView *)self listLayoutProvider];
  v4 = [(SBFolderView *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];

  return v5;
}

- (double)dockHeight
{
  if ([(SBRootFolderView *)self isDockExternal])
  {
    v3 = [(SBFolderView *)self delegate];
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v3 externalDockHeightForRootFolderView:self];
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
  v3 = [(SBRootFolderView *)self dockView];
  v4 = ([v3 isDockInset] & 1) == 0 && (-[SBRootFolderView dockEdge](self, "dockEdge") & 0xA) == 0;

  return v4;
}

- (double)internalDockPageControlVerticalMargin
{
  v3 = 0.0;
  if ([(SBRootFolderView *)self scrollViewHeightIncludesPageControlAndDock])
  {
    v4 = [(SBRootFolderView *)self rootFolderVisualConfiguration];
    [v4 pageControlVerticalOffset];
    v3 = v5;
    v6 = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (v6)
    {
      [v4 scrollAccessoryVerticalOffsetAdjustmentForAuxiliaryView];
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

  v3 = [(SBRootFolderView *)self leadingCustomView];

  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  return [(SBFolderView *)&v5 firstLeadingCustomPageIndex];
}

- (UIView)leadingCustomView
{
  v2 = [(NSArray *)self->_searchableLeadingCustomWrapperViews lastObject];
  v3 = [v2 wrappedView];

  return v3;
}

- (BOOL)isDockViewBorrowed
{
  v2 = [(SBRootFolderView *)self dockBorrowedAssertion];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isScrollAccessoryBorrowed
{
  v2 = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isPageManagementUIVisible
{
  v2 = [(SBRootFolderView *)self specialLayoutManager];
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
  v2 = [(SBRootFolderView *)self leadingCustomViewController];
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

- (unint64_t)numberOfInitialPagesToPreferVisible
{
  v3 = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  v4 = [v3 numberOfInitialPagesToPreferVisible];
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  v5 = [(SBFolderView *)&v8 numberOfInitialPagesToPreferVisible];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (unint64_t)totalLeadingCustomPageCount
{
  v2 = [(SBRootFolderView *)self leadingCustomViewControllers];
  v3 = [v2 count];

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
  v3 = [(SBFolderView *)self headerView];
  [v3 setFrame:{v6, v7}];

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

  v4 = [(SBRootFolderView *)self searchGesture];
  [v4 updateForRotation];

  v5 = [(SBRootFolderView *)self searchPresentableView];
  [(SBRootFolderView *)self bounds];
  [v5 setFrame:?];
}

- (void)_updatePageControlNumberOfPages
{
  v3 = [(SBFolderView *)self pageControl];
  v4 = [v3 numberOfPages];
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _updatePageControlNumberOfPages];
  if (v4 != [v3 numberOfPages])
  {
    v5 = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (v5)
    {
      [(SBRootFolderView *)self _forceLayoutPageControl];
    }

    [(SBRootFolderView *)self _applyPageDotsVisibilityAssertions];
  }
}

- (int64_t)_pageCountForPageControl
{
  v3 = [(SBRootFolderView *)self leadingCustomPageCount];
  v4 = [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
  v5 = [(SBRootFolderView *)self trailingCustomPageCount];
  v6 = [(SBRootFolderView *)self _countOfTrailingCustomViewsThatShouldNotBeIndicatedInPageControl];
  v7 = [(SBFolderView *)self folder];
  v8 = [v7 visibleListCount];

  return v3 + v5 - (v4 + v6) + v8;
}

- (unint64_t)_countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SBRootFolderView *)self leadingCustomViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 shouldBeIndicatedInPageControl] ^ 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(SBRootFolderView *)self trailingCustomViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 += [v8 shouldBeIndicatedInPageControl] ^ 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(SBSearchBackdropView *)self->_leadingCustomBackdropView superview];
  [v3 sendSubviewToBack:self->_leadingCustomBackdropView];

  v4 = [(SBSearchBackdropView *)self->_trailingCustomBackdropView superview];
  [v4 sendSubviewToBack:self->_trailingCustomBackdropView];

  v5 = [(SBSearchBackdropView *)self->_trailingCustomBackdropView superview];
  [v5 insertSubview:self->_trailingCustomSearchDimmingView aboveSubview:self->_trailingCustomBackdropView];

  v6 = [(SBRootFolderView *)self doneButton];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 superview];
    [v8 bringSubviewToFront:v7];
  }

  v9 = [(SBRootFolderView *)self widgetButton];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 superview];
    [v11 bringSubviewToFront:v10];
  }
}

- (void)_forceLayoutPageControl
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [(SBRootFolderView *)self getMetrics:v4];
  [(SBRootFolderView *)self layoutPageControlWithMetrics:v4];
  v3 = [(SBRootFolderView *)self scrollAccessoryView];
  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
}

- (void)_applyPageDotsVisibilityAssertions
{
  v3 = [(SBRootFolderView *)self pageDotsVisibilityTimer];
  [v3 invalidate];

  [(SBRootFolderView *)self setPageDotsVisibilityTimer:0];
  v4 = [(SBRootFolderView *)self pageDotsVisibilityAssertions];
  if ([v4 count])
  {
    v5 = [(SBFolderView *)self pageControl];
    v6 = [v5 numberOfPages];

    if (v6 > 1)
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
  v8 = [(SBRootFolderView *)self scrollAccessoryView];
  [v8 setMode:v7];
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
  v3 = [(SBFolderView *)self orientation];

  return [(SBRootFolderView *)self _shouldIgnoreOverscrollOnFirstPageForOrientation:v3];
}

- (void)_adjustLeadingCustomContentForEdgeBounce
{
  v3 = [(SBFolderView *)self scrollView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 rootFolderView:self wantsToAdjustLeadingCustomContentForEdgeBounceForScrollOffset:{v5, v7}];
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
  v6 = [(SBFolderView *)self scrollView];
  [v6 contentOffset];
  [(SBFolderView *)self scrollingDimensionForPoint:?];
  self->_scrollOffsetWhenScrollingBegan = v5;
}

- (void)_cleanupAfterExtraScrollGesturesCompleted
{
  v3 = [(SBFolderView *)self scrollView];
  v4 = [v3 panGestureRecognizer];

  [(SBRootFolderView *)self _cleanUpAfterOverscrollScrollGestureEnded:v4];
}

- (void)_updateParallaxSettings
{
  v9.receiver = self;
  v9.super_class = SBRootFolderView;
  [(SBFolderView *)&v9 _updateParallaxSettings];
  if ([(SBFolderView *)self isParallaxEnabled])
  {
    v4 = [(SBRootFolderView *)self _useParallaxOnPageControl];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SBRootFolderView *)self scrollAccessoryView];
  v6 = v5;
  v7 = MEMORY[0x1E69DEB00];
  if (!v4)
  {
    v7 = MEMORY[0x1E69DEAF8];
  }

  [v5 _setVisualAltitude:*v7];

  if ((SBHPerformanceFlagEnabled(9) & 1) == 0)
  {
    v8 = [(SBFolderView *)self scrollView];
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

- (SBRootFolderView)initWithConfiguration:(id)a3
{
  v118 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v114.receiver = self;
  v114.super_class = SBRootFolderView;
  v5 = [(SBFolderView *)&v114 initWithConfiguration:v4];
  if (!v5)
  {
    goto LABEL_64;
  }

  v6 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(SBFolderView *)v5 folder];
  v10 = [v8 isForSnapshot];
  v5->_dockEdge = 4;
  v102 = v8;
  v103 = v5;
  v100 = v4;
  v101 = v9;
  if ([v8 isDockExternal])
  {
    v5->_dockExternal = 1;
  }

  else
  {
    v11 = [v9 dock];
    v12 = [(SBRootFolderView *)v5 dockIconLocation];
    v13 = [SBDockIconListView alloc];
    v14 = [(SBFolderView *)v103 listLayoutProvider];
    v15 = [(SBFolderView *)v103 orientation];
    v16 = [(SBFolderView *)v103 iconViewProvider];
    v17 = [(SBDockIconListView *)v13 initWithModel:v11 layoutProvider:v14 iconLocation:v12 orientation:v15 iconViewProvider:v16];
    dockListView = v103->_dockListView;
    v103->_dockListView = v17;

    v8 = v102;
    [(SBIconListView *)v103->_dockListView setLayoutInsetsMode:2];
    [(SBIconListView *)v103->_dockListView setAutomaticallyAdjustsLayoutMetricsToFit:0];
    [(SBIconListView *)v103->_dockListView setAdjustsColumnPositionsForFullScreenWidth:1];
    [(SBIconListView *)v103->_dockListView setIconGlassGroupingBehavior:2];
    [(SBIconListView *)v103->_dockListView setIconViewBackdropGroupName:@"SBRootFolder"];
    v19 = v103->_dockListView;
    v20 = [(SBFolderView *)v103 folderIconImageCache];
    [(SBIconListView *)v19 setFolderIconImageCache:v20];

    v21 = v103->_dockListView;
    v22 = [(SBFolderView *)v103 iconImageCache];
    v23 = v21;
    v5 = v103;
    [(SBIconListView *)v23 setIconImageCache:v22];

    [(SBIconListView *)v5->_dockListView setLayoutDelegate:v5];
    [(SBIconListView *)v5->_dockListView setDragDelegate:v5];
    [(SBFolderView *)v5 _configureIconListView:v5->_dockListView];
    v24 = [[SBDockView alloc] initWithDockListView:v103->_dockListView forSnapshot:v10];
    dockView = v103->_dockView;
    v103->_dockView = v24;

    [(SBDockView *)v103->_dockView setDelegate:v103];
  }

  v26 = [(SBFolderView *)v5 scalingView];
  v27 = [(SBFolderView *)v5 headerView];
  if (v27)
  {
    [v26 addSubview:v27];
  }

  v105 = [(SBFolderView *)v5 scrollView];
  [v26 addSubview:?];
  v97 = [(SBRootFolderView *)v5 rootFolderVisualConfiguration];
  [v97 pageControlCustomPadding];
  v29 = v28;
  v31 = v30;
  v32 = [(SBFolderView *)v5 pageControl];
  v33 = v32;
  if (v29 > 0.0)
  {
    [v32 _setCustomHorizontalPadding:v29];
  }

  if (v31 > 0.0)
  {
    [v33 _setCustomVerticalPadding:v31];
  }

  v34 = [[SBFolderScrollAccessoryView alloc] initWithFolder:v9 pageControl:v33];
  scrollAccessoryView = v5->_scrollAccessoryView;
  v5->_scrollAccessoryView = v34;

  v36 = [v8 scrollAccessoryAuxiliaryView];
  scrollAccessoryAuxiliaryView = v5->_scrollAccessoryAuxiliaryView;
  v5->_scrollAccessoryAuxiliaryView = v36;

  v38 = [v8 scrollAccessoryBackgroundView];
  scrollAccessoryBackgroundView = v5->_scrollAccessoryBackgroundView;
  v5->_scrollAccessoryBackgroundView = v38;

  [v26 addSubview:v5->_scrollAccessoryView];
  [(SBRootFolderView *)v5 updatePageControlConfiguration];
  if (v10)
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
    [v26 addSubview:?];
    [(SBRootFolderView *)v5 _updateDockViewZOrdering];
  }

  v42 = [v8 leadingCustomViewControllers];
  v43 = [v42 copy];
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

  v98 = v27;
  v99 = v26;
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

        v51 = [*(*(&v110 + 1) + 8 * i) view];
        if (v51)
        {
          v52 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
          [(_SBRootFolderLayoutWrapperView *)v52 setWrappedView:v51];
          [v105 addSubview:v52];
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

  v55 = [v102 trailingCustomViewControllers];
  v56 = [v55 copy];
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

        v64 = [*(*(&v106 + 1) + 8 * j) view];
        if (v64)
        {
          v65 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
          [(_SBRootFolderLayoutWrapperView *)v65 setWrappedView:v64];
          [v105 addSubview:v65];
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

  v70 = [v102 searchPresenter];
  searchPresenter = v103->_searchPresenter;
  v103->_searchPresenter = v70;

  if (v103->_searchPresenter)
  {
    v72 = [v102 searchPresentableViewController];
    v73 = [v72 view];
    searchPresentableView = v103->_searchPresentableView;
    v103->_searchPresentableView = v73;

    v75 = v103->_searchPresentableView;
    [(SBRootFolderView *)v103 bounds];
    [(UIView *)v75 setFrame:?];
    [(UIView *)v103->_searchPresentableView setHidden:1];
    [(SBRootFolderView *)v103 addSubview:v103->_searchPresentableView];
  }

  v76 = [v102 pullDownSearchViewController];
  v77 = [v76 view];

  v4 = v100;
  if (v77 || v103->_searchPresenter)
  {
    v78 = objc_alloc_init(_SBRootFolderLayoutWrapperView);
    searchPulldownWrapperView = v103->_searchPulldownWrapperView;
    v103->_searchPulldownWrapperView = v78;

    if (v77)
    {
      [(_SBRootFolderLayoutWrapperView *)v103->_searchPulldownWrapperView setWrappedView:v77];
    }

    [(_SBRootFolderLayoutWrapperView *)v103->_searchPulldownWrapperView setHidden:1];
    [(SBRootFolderView *)v103 addSubview:v103->_searchPulldownWrapperView];
  }

  v80 = +[SBHHomeScreenDomain rootSettings];
  v103->_ignoresOverscrollOnFirstPageOrientations = [v102 ignoresOverscrollOnFirstPageOrientations];
  v81 = [v102 ignoresOverscrollOnLastPageOrientations];
  v103->_ignoresOverscrollOnLastPageOrientations = v81;
  if (v103->_ignoresOverscrollOnFirstPageOrientations | v81)
  {
    v82 = [v105 panGestureRecognizer];
    [v82 addTarget:v103 action:sel__overscrollScrollPanGestureRecognizerDidUpdate_];
  }

  v83 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  dockOffscreenProgressSettingClients = v103->_dockOffscreenProgressSettingClients;
  v103->_dockOffscreenProgressSettingClients = v83;

  v85 = [v80 iconSettings];
  v86 = [v85 iconParallaxSettings];
  parallaxSettings = v103->_parallaxSettings;
  v103->_parallaxSettings = v86;

  [(SBFParallaxSettings *)v103->_parallaxSettings addKeyObserver:v103];
  [(SBRootFolderView *)v103 _updateParallaxSettings];
  v88 = [v80 homeScreenPullToSearchSettings];
  pullToSearchSettings = v103->_pullToSearchSettings;
  v103->_pullToSearchSettings = v88;

  [(PTSettings *)v103->_pullToSearchSettings addKeyObserver:v103];
  [(SBRootFolderView *)v103 _updatePullToSearchSettings];
  v90 = [v80 rootFolderSettings];
  folderSettings = v103->_folderSettings;
  v103->_folderSettings = v90;

  [(SBRootFolderView *)v103 _resetSearchScrollTrackingState];
  v103->_allowsAutoscrollToLeadingCustomView = 1;
  v103->_folderPageManagementAllowedOrientations = [v102 folderPageManagementAllowedOrientations];
  [(SBRootFolderView *)v103 _setupIdleTextPrivacyDisclosures];
  [(SBRootFolderView *)v103 _setupStateDumper];
  v103->_titledButtonsAlpha = 1.0;
  v92 = [MEMORY[0x1E696AD88] defaultCenter];
  [v92 addObserver:v103 selector:sel__reduceMotionStatusDidChange_ name:*MEMORY[0x1E69DD918] object:0];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69D4008] sharedInstance];
  [v4 removeObserver:self];

  [(SBFParallaxSettings *)self->_parallaxSettings removeKeyObserver:self];
  [(BSInvalidatable *)self->_dockStateDumpHandle invalidate];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(SBRootFolderView *)self pageDotsVisibilityAssertions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 dealloc];
}

- (id)trailingCustomViewController
{
  v2 = [(SBRootFolderView *)self trailingCustomViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)allCustomViewControllers
{
  v3 = [(SBRootFolderView *)self leadingCustomViewControllers];
  v4 = [(SBRootFolderView *)self trailingCustomViewControllers];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)customViewControllerForPageAtIndex:(int64_t)a3
{
  v5 = [(SBFolderView *)self typeForPage:?];
  if (v5 == 2)
  {
    v9 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:a3];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v9;
      v8 = [(SBRootFolderView *)self trailingCustomViewControllers];
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

  v6 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(SBRootFolderView *)self leadingCustomViewControllers];
LABEL_8:
  v11 = v8;
  v10 = [v8 objectAtIndex:v7];

LABEL_9:

  return v10;
}

- (void)setContentVisibility:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 setContentVisibility:?];
  v5 = [(SBRootFolderView *)self dockView];
  [v5 setContentVisibility:a3];
}

- (void)setSearchGesture:(id)a3
{
  v5 = a3;
  searchGesture = self->_searchGesture;
  if (searchGesture != v5)
  {
    v9 = v5;
    [(SBSearchGesture *)searchGesture setTargetView:0];
    objc_storeStrong(&self->_searchGesture, a3);
    v7 = self->_searchGesture;
    v8 = [(SBFolderView *)self scrollView];
    [(SBSearchGesture *)v7 setTargetView:v8];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](searchGesture, v5);
}

- (void)setLeadingCustomViewPageHidden:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_leadingCustomViewPageHidden != a3)
  {
    v3 = a3;
    v5 = [(SBRootFolderView *)self leadingCustomView];

    if (v5)
    {
      if ([(SBRootFolderView *)self isOnLeadingCustomPage]&& v3)
      {
        [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self firstIconPageIndex] animated:0];
      }

      v6 = [(SBFolderView *)self currentPageUniqueIdentifier];
      self->_leadingCustomViewPageHidden = v3;
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
            if (v3)
            {
              [*(*(&v15 + 1) + 8 * i) removeFromSuperview];
            }

            else
            {
              v13 = [(SBFolderView *)self scrollView];
              [v13 addSubview:v12];
            }
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      [(SBFolderView *)self _updateIconListFrames];
      v14 = [(SBFolderView *)self pageIndexForUniqueIdentifier:v6];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [(SBFolderView *)self defaultPageIndex];
      }

      [(SBFolderView *)self setCurrentPageIndex:v14 animated:0, v15];
      [(SBRootFolderView *)self setNeedsLayout];
      [(SBRootFolderView *)self layoutIfNeeded];
    }
  }
}

- (BOOL)isLeadingCustomViewPageHiddenAtIndex:(unint64_t)a3
{
  v4 = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

- (unint64_t)countOfHiddenLeadingCustomPagesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  v6 = [v5 countOfIndexesInRange:{location, length}];

  return v6;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v15 = [(SBRootFolderView *)self hiddenLeadingCustomPageIndexes];
  if ([v15 containsIndex:a4] != v5)
  {
    v7 = [(SBFolderView *)self currentPageIndex];
    if ([(SBRootFolderView *)self isOnLeadingCustomPage]&& v5 && [(SBFolderView *)self leadingCustomPageIndexForPageIndex:v7]== a4)
    {
      [(SBFolderView *)self setCurrentPageIndex:[(SBFolderView *)self firstIconPageIndex] animated:0];
    }

    v8 = [(SBFolderView *)self currentPageUniqueIdentifier];
    if (v15)
    {
      v9 = [v15 mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    }

    v10 = v9;
    if (v5)
    {
      [v9 addIndex:a4];
    }

    else
    {
      [v9 removeIndex:a4];
    }

    [(SBRootFolderView *)self setHiddenLeadingCustomPageIndexes:v10];
    v11 = [(NSArray *)self->_searchableLeadingCustomWrapperViews objectAtIndex:a4];
    v12 = v11;
    if (v5)
    {
      [v11 removeFromSuperview];
    }

    else
    {
      v13 = [(SBFolderView *)self scrollView];
      [v13 addSubview:v12];
    }

    [(SBFolderView *)self _updateIconListFrames];
    v14 = [(SBFolderView *)self pageIndexForUniqueIdentifier:v8];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(SBFolderView *)self defaultPageIndex];
    }

    [(SBFolderView *)self setCurrentPageIndex:v14 animated:0];
    [(SBRootFolderView *)self setNeedsLayout];
    [(SBRootFolderView *)self layoutIfNeeded];
  }
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBFolderView *)self listLayoutProvider];
  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 setListLayoutProvider:v6 animated:v4];

  v8 = [(SBFolderView *)self listLayoutProvider];

  if (v7 != v8)
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

- (void)_flashPageDotsForReason:(id)a3
{
  v3 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:a3];
  [v3 invalidate];
}

- (void)willMoveToWindow:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBRootFolderView *)self window];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 != 0;
  }

  v7 = [(SBRootFolderView *)self window];

  if (v7)
  {
    v8 = v4 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (v6 || !v8)
  {
    v9 = [(SBFolderView *)self minimumPageIndex];
    v10 = [(SBFolderView *)self maximumPageIndex];
    v11 = [(SBFolderView *)self currentPageIndex];
    v12 = v10 & ~(v10 >> 63);
    if (v11 <= v12)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v11 >= v9)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = self;
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "SBRootFolderView current state: %{public}@", buf, 0xCu);
      }

      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v20 = v13;
        _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "SBRootFolderView is moving to page: %{public}lu", buf, 0xCu);
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v4;
        _os_log_impl(&dword_1BEB18000, v16, OS_LOG_TYPE_DEFAULT, "SBRootFolderView is moving to window: %{public}@", buf, 0xCu);
      }

      v17 = SBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v20 = v4;
        v21 = 2114;
        v22 = self;
        v23 = 2050;
        v24 = v13;
        _os_log_fault_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_FAULT, "SBRootFolderView is moving to window '%{public}@' state: %{public}@; will trigger setCurrentPageIndex:'%{public}lu' animated:NO", buf, 0x20u);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SBRootFolderView;
  [(SBFolderView *)&v18 willMoveToWindow:v4];
}

- (void)setOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 setOrientation:?];
  if (![(SBRootFolderView *)self isDockViewBorrowed])
  {
    [(SBIconListView *)self->_dockListView setOrientation:a3];
    [(SBIconListView *)self->_dockListView layoutIconsNow];
  }

  [(SBRootFolderView *)self updateEditButtonMenu];
  [(SBRootFolderView *)self setNeedsLayout];
  [(SBRootFolderView *)self layoutIfNeeded];
}

- (void)setLegibilitySettings:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  v4 = a3;
  [(SBFolderView *)&v5 setLegibilitySettings:v4];
  [(SBDockView *)self->_dockView setLegibilitySettings:v4, v5.receiver, v5.super_class];
  [(SBTitledHomeScreenButton *)self->_doneButton setLegibilitySettings:v4];
  [(SBTitledHomeScreenButton *)self->_widgetButton setLegibilitySettings:v4];
}

- (void)_updateIconListLegibilitySettings
{
  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [(SBFolderView *)&v7 _updateIconListLegibilitySettings];
  v3 = [(SBFolderView *)self legibilitySettingsForIconListViews];
  [(SBIconListView *)self->_dockListView setLegibilitySettings:v3];
  idleTextView = self->_idleTextView;
  v5 = [v3 primaryColor];
  if (v5)
  {
    [(UILabel *)idleTextView setTextColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)idleTextView setTextColor:v6];
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
    v3 = [(SBFolderView *)self delegate];
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v3 maxExternalDockHeightForRootFolderView:self];
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

- (void)getMetrics:(SBRootFolderViewMetrics *)a3
{
  v5 = [(SBRootFolderView *)self dockEdge];

  [(SBRootFolderView *)self getMetrics:a3 dockEdge:v5];
}

- (void)getMetrics:(SBRootFolderViewMetrics *)a3 dockEdge:(unint64_t)a4
{
  a3->var11.size.height = 0.0;
  *&a3->var10.size.height = 0u;
  *&a3->var11.origin.y = 0u;
  *&a3->var9.size.height = 0u;
  *&a3->var10.origin.y = 0u;
  *&a3->var8 = 0u;
  *&a3->var9.origin.y = 0u;
  a3->var7.origin = 0u;
  a3->var7.size = 0u;
  a3->var6.origin = 0u;
  a3->var6.size = 0u;
  a3->var5.origin = 0u;
  a3->var5.size = 0u;
  a3->var4.origin = 0u;
  a3->var4.size = 0u;
  a3->var3.origin = 0u;
  a3->var3.size = 0u;
  a3->var2.origin = 0u;
  a3->var2.size = 0u;
  a3->var1.origin = 0u;
  a3->var1.size = 0u;
  a3->var0.origin = 0u;
  a3->var0.size = 0u;
  [(SBRootFolderView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBRootFolderView *)self safeAreaInsets];
  v15 = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  v16 = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  [v16 iconImageInfo];
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
  v27 = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  v28 = [(SBFolderView *)self gridSizeClassDomain];
  [(SBRootFolderView *)self dockHeight];
  v30 = v29;
  [(SBRootFolderView *)self currentDockOffscreenFraction];
  v32 = v31;
  v33 = CGRectMinYEdge;
  v124 = v14;
  if (a4 <= 3)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    if (a4 != 2)
    {
      goto LABEL_14;
    }

    v125 = v12;
    v34 = rect;
    v33 = CGRectMinXEdge;
LABEL_18:
    v35 = [(SBRootFolderView *)self isDockExternal];
    v36 = [(SBFolderView *)self isRTL];
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

  switch(a4)
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
  v35 = [(SBRootFolderView *)self isDockExternal];
  v36 = [(SBFolderView *)self isRTL];
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
  CGRectDivide(*(&v42 - 3), &a3->var7, &remainder, v37, v33);
  memset(&slice, 0, sizeof(slice));
  CGRectDivide(v143, &slice, &v143, v30, v33);
  memset(&v140, 0, sizeof(v140));
  CGRectDivide(v142, &v140, &v142, v30, v33);
  v121 = CGRectGetWidth(v143);
  v46 = v26 * v121;
  *(&a3->var0.origin.x + qword_1BEE85A28[v33]) = v30;
  v47 = 0.0;
  if ([(SBRootFolderView *)self shouldScrollDockDuringTransitionToLeadingCustomView])
  {
    if (a4 > 0xF)
    {
      goto LABEL_47;
    }

    if (((1 << a4) & 0x106) == 0)
    {
      if (((1 << a4) & 0x8011) == 0)
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
            if (!v36)
            {
              v119 = v46;
            }

            v47 = 0.0 - v119;
          }
        }

        else if (v36)
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
        if (!v36)
        {
          v48 = v24 * v121;
        }

        v49 = v48 + a3->var7.origin.x;
        v50 = -v46;
        if (!v36)
        {
          v50 = v46;
        }

        a3->var7.origin.x = v49 - v50;
      }
    }
  }

  a3->var8 = v47;
LABEL_47:
  [(SBFolderView *)self headerHeight];
  if (v51 != 0.0)
  {
    v52 = v51;
    CGRectDivide(remainder, &a3->var0, &remainder, v51, CGRectMinYEdge);
    memset(&v139, 0, sizeof(v139));
    CGRectDivide(v143, &v139, &v143, v52, CGRectMinYEdge);
    memset(&v138, 0, sizeof(v138));
    CGRectDivide(v142, &v138, &v142, v52, CGRectMinYEdge);
  }

  v53 = [(SBRootFolderView *)self doneButton];
  v54 = [(SBRootFolderView *)self widgetButton];
  v55 = *(MEMORY[0x1E695F058] + 16);
  v137.origin = *MEMORY[0x1E695F058];
  v137.size = v55;
  v122 = v55;
  origin = v137.origin;
  v136.origin = v137.origin;
  v136.size = v55;
  v56 = [(SBRootFolderView *)self leadingCustomViewController];
  v57 = v24 * v121;
  if (objc_opt_respondsToSelector())
  {
    [v56 scrollPageOffsetForButtonsInEditingMode];
    v57 = v58;
  }

  [objc_opt_class() _editButtonLayoutFramesInBounds:v27 forVisualConfiguration:v36 withTranslationOffset:v53 inRTL:v54 doneButton:&v136 addWidgetButton:&v137 doneButtonFrame:v8 addWidgetButtonFrame:{rect, v12, v14, v57}];
  size = v137.size;
  a3->var2.origin = v137.origin;
  a3->var2.size = size;
  v60 = v136.size;
  a3->var1.origin = v136.origin;
  a3->var1.size = v60;
  x = v137.origin.x;
  v60.width = v137.origin.y;
  v62 = v137.size.width;
  height = v137.size.height;
  v150 = CGRectUnion(*(&v60 - 8), v136);
  MaxY = CGRectGetMaxY(v150);
  a3->var3.origin.x = 0.0;
  a3->var3.origin.y = 0.0;
  v151.origin.x = v8;
  v151.origin.y = rect;
  v126 = v12;
  v151.size.width = v12;
  v151.size.height = v14;
  a3->var3.size.width = CGRectGetWidth(v151);
  a3->var3.size.height = MaxY + 20.0;

  if (self->_idleTextView)
  {
    v65 = [(SBFolderView *)self orientation];
    [v15 layoutInsetsForOrientation:v65];
    v67 = v66;
    SBHIconListLayoutLargestExtraIconImageSizeInDomain(v15, v65, v28);
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
    v70 = [(UILabel *)self->_idleTextView font];
    [v70 lineHeight];

    [v27 idleTextVerticalOffset];
    UIRectInsetEdges();
    CGRectGetWidth(remainder);
    UISizeRoundToScale();
    BSRectWithSize();
    v120 = v127;
    UIRectCenteredYInRectScale();
    a3->var4.size.width = v73;
    a3->var4.size.height = v74;
    v75 = v24 * v121;
    if (v36)
    {
      v75 = -(v24 * v121);
    }

    a3->var4.origin.x = v75 + v71;
    a3->var4.origin.y = v72;
  }

  v76 = [(SBRootFolderView *)self scrollAccessoryView];
  v77 = [(SBFolderView *)self pageControl];
  if (v35)
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

  [v27 pageControlFrameInset];
  [v76 intrinsicContentSize];
  v84 = v83;
  v86 = v85;
  [v77 sizeForNumberOfPages:2];
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
  a3->var6.origin.x = v104;
  a3->var6.origin.y = v105;
  a3->var6.size.width = v106;
  a3->var6.size.height = v107;

  if (v35)
  {
    a3->var5.origin.x = v8;
    a3->var5.origin.y = rect;
    v108 = v126;
    a3->var5.size.width = v126;
    a3->var5.size.height = v124;
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
      a3->var5.origin.x = v8;
      a3->var5.origin.y = rect;
      a3->var5.size.width = v109;
      a3->var5.size.height = v110;
    }

    else
    {
      v111 = v143.size;
      a3->var5.origin = v143.origin;
      a3->var5.size = v111;
    }
  }

  if (self->_searchableLeadingCustomWrapperViews || self->_searchableTrailingCustomWrapperViews)
  {
    v112 = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self convertRect:v112 toView:v8, rect, v108, v124];
    v114 = v113;
    v116 = v115;
    if ([(NSArray *)self->_searchableLeadingCustomWrapperViews count])
    {
      a3->var9.origin.x = 0.0;
      a3->var9.origin.y = 0.0;
      a3->var9.size.width = v114;
      a3->var9.size.height = v116;
      [(SBRootFolderView *)self leadingCustomViewPageScrollOffsetUsingPageWidth:v121];
      a3->var9.origin.x = v117;
    }

    if ([(NSArray *)self->_searchableTrailingCustomWrapperViews count])
    {
      a3->var10.origin.x = 0.0;
      a3->var10.origin.y = 0.0;
      a3->var10.size.width = v114;
      a3->var10.size.height = v116;
      [(SBRootFolderView *)self trailingCustomViewPageScrollOffsetUsingPageWidth:v121];
      a3->var10.origin.x = v118;
    }
  }

  a3->var11.origin = origin;
  a3->var11.size = v122;
}

- (double)externalDockPageControlVerticalMargin
{
  v3 = [(SBRootFolderView *)self rootWithWidgetsListLayout];
  v4 = [(SBFolderView *)self gridSizeClassDomain];
  v5 = [(SBFolderView *)self orientation];
  [v3 layoutInsetsForOrientation:v5];
  v7 = v6;
  v9 = v8;
  v34 = v10;
  v12 = v11;
  v13 = SBHIconListLayoutLargestExtraIconImageSizeInDomain(v3, v5, v4);
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

- (void)_layoutSubviewsForLeadingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  size = a3->var9.size;
  origin = a3->var9.origin;
  v13 = size;
  [(SBFolderView *)self _pageWidthOrHeight];
  v6 = v5;
  v7 = [(SBFolderView *)self isVertical];
  v8 = [(SBFolderView *)self isRTL];
  searchableLeadingCustomWrapperViews = self->_searchableLeadingCustomWrapperViews;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__SBRootFolderView__layoutSubviewsForLeadingCustomViewWithMetrics___block_invoke;
  v11[3] = &unk_1E808B2B0;
  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11[4] = self;
  v15 = v7;
  v16 = v8;
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

- (void)_layoutSubviewsForTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  size = a3->var10.size;
  origin = a3->var10.origin;
  v13 = size;
  [(SBFolderView *)self _pageWidthOrHeight];
  v6 = v5;
  v7 = [(SBFolderView *)self isVertical];
  v8 = [(SBFolderView *)self isRTL];
  searchableTrailingCustomWrapperViews = self->_searchableTrailingCustomWrapperViews;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SBRootFolderView__layoutSubviewsForTrailingCustomViewWithMetrics___block_invoke;
  v11[3] = &__block_descriptor_74_e47_v32__0___SBRootFolderLayoutWrapperView_8Q16_B24l;
  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v15 = v7;
  v16 = v8;
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

- (void)layoutSearchableViewsWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  [(SBRootFolderView *)self _animateViewsForPullingToSearchWithMetrics:?];
  [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:a3];
  [(SBRootFolderView *)self _layoutSubviewsForPulldownSearch];
  [(SBRootFolderView *)self _layoutSubviewsForLeadingCustomViewWithMetrics:a3];
  [(SBRootFolderView *)self _layoutSubviewsForTrailingCustomViewWithMetrics:a3];
  [(SBRootFolderView *)self _updateDockOffscreenFractionWithMetrics:a3];
  if (![(SBFolderView *)self isRTL])
  {
    v5 = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self leadingCustomViewPageScrollOffset];
    [v5 _setFirstPageOffset:?];
  }
}

- (CGRect)_scrollViewFrameForDockEdge:(unint64_t)a3
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
  [(SBRootFolderView *)self getMetrics:v7 dockEdge:a3];
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

- (void)layoutPageControlWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    v5 = [(SBRootFolderView *)self scrollAccessoryView];
    v6 = [(SBFolderView *)self pageControl];
    v7 = [MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock];
    v8 = [MEMORY[0x1E69DD250] _isInAnimationBlock];
    v9 = [(SBRootFolderView *)self isModifyingDockOffscreenFraction];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__SBRootFolderView_layoutPageControlWithMetrics___block_invoke;
    aBlock[3] = &unk_1E808A090;
    v10 = v5;
    v15 = v10;
    v17 = a3;
    v11 = v6;
    v16 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (!v9 || (v7 & 1) != 0 || (v8 & 1) != 0)
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

- (void)layoutDockViewWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  if (![(SBRootFolderView *)self isDockViewBorrowed])
  {
    v5 = [(SBRootFolderView *)self dockView];
    if (v5)
    {
      v6 = [(SBRootFolderView *)self dockListView];
      v7 = [(SBRootFolderView *)self isDockExternal];
      p_var7 = &a3->var7;
      if (v7)
      {
        p_var7 = MEMORY[0x1E695F058];
      }

      size = p_var7->size;
      origin = p_var7->origin;
      v31 = size;
      [(SBRootFolderView *)self dockIconSpacingWithMetrics:a3];
      v11 = v10;
      v13 = v12;
      v14 = [MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock];
      v15 = [MEMORY[0x1E69DD250] _isInAnimationBlock];
      v16 = [(SBRootFolderView *)self isModifyingDockOffscreenFraction];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__SBRootFolderView_layoutDockViewWithMetrics___block_invoke;
      aBlock[3] = &unk_1E808B2F8;
      v23 = v5;
      v25 = origin;
      v26 = v31;
      v27 = a3;
      v17 = v6;
      v24 = v17;
      v28 = v11;
      v29 = v13;
      v18 = _Block_copy(aBlock);
      v19 = v18;
      if (!v16 || (v14 & 1) != 0 || (v15 & 1) != 0)
      {
        (*(v18 + 2))(v18);
      }

      else
      {
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v18];
      }

      v20 = [(SBRootFolderView *)self dockListView];
      v21 = [v20 displayedModel];
      -[SBRootFolderView setLastDockIconCountCheckedForIconSpacing:](self, "setLastDockIconCountCheckedForIconSpacing:", [v21 numberOfIcons]);
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

- (CGSize)dockIconSpacingWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  v4 = [(SBRootFolderView *)self dockListView];
  v5 = [v4 displayedModel];
  v6 = [(SBFolderView *)self listLayoutProvider];
  v7 = [v6 layoutForIconLocation:@"SBIconLocationDock"];

  v8 = SBHIconListLayoutListIconSpacingWithDefault(v7, 1, 20.0);
  v9 = [v5 numberOfIcons];
  if (v9 >= [v4 maximumIconCount])
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

- (id)beginModifyingDockOffscreenFractionForReason:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Begin modifying dock offscreen fraction for reason: %{public}@", &v8, 0xCu);
  }

  v6 = [[_SBRootFolderDockOffscreenFractionClient alloc] initWithFolderView:self reason:v4];
  [(NSHashTable *)self->_dockOffscreenProgressSettingClients addObject:v6];

  return v6;
}

- (void)removeDockOffscreenFractionClient:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 reason];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "End modifying dock offscreen fraction for reason: %{public}@", &v7, 0xCu);
  }

  [(NSHashTable *)self->_dockOffscreenProgressSettingClients removeObject:v4];
  [(SBRootFolderView *)self setNeedsLayout];
}

- (void)setDockEdge:(unint64_t)a3
{
  if (self->_dockEdge != a3)
  {
    self->_dockEdge = a3;
    v6 = [(SBRootFolderView *)self dockView];
    [v6 setDockEdge:a3];

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
  v3 = [(SBRootFolderView *)self dockEdge];
  if (v3 > 7)
  {
    if (v3 == 15)
    {
      goto LABEL_9;
    }

    if (v3 != 8)
    {
      goto LABEL_12;
    }

LABEL_7:
    v4 = [(SBFolderView *)self scalingView];
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }

  if (v3 != 4)
  {
    goto LABEL_12;
  }

LABEL_9:
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  if (BSFloatIsZero())
  {
    [(SBRootFolderView *)self trailingCustomViewVisibilityProgress];
    IsZero = BSFloatIsZero();
    v4 = [(SBFolderView *)self scalingView];
    if (!IsZero)
    {
      goto LABEL_13;
    }

LABEL_8:
    v6 = v4;
    [v4 bringSubviewToFront:self->_dockView];
    goto LABEL_14;
  }

LABEL_12:
  v4 = [(SBFolderView *)self scalingView];
LABEL_13:
  v6 = v4;
  [v4 sendSubviewToBack:self->_dockView];
LABEL_14:
}

- (void)setContentAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 setContentAlpha:?];
  v5 = [(SBRootFolderView *)self dockView];
  [v5 setAlpha:a3];
}

- (id)borrowDockViewForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderView *)self dockBorrowedAssertion];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_SBRootFolderViewElementBorrowedAssertion alloc] initWithFolderView:self reason:v4];
    [(SBRootFolderView *)self setDockBorrowedAssertion:v6];
  }

  return v6;
}

- (void)elementBorrowedAssertionDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderView *)self dockBorrowedAssertion];

  if (v5 == v4)
  {
    [(SBRootFolderView *)self setDockBorrowedAssertion:0];
    v8 = [(SBFolderView *)self scalingView];
    [v8 addSubview:self->_dockView];
    [(SBDockView *)self->_dockView setAlpha:1.0];
    [(SBDockView *)self->_dockView setHidden:0];
    [(SBRootFolderView *)self updateDockViewOrientation];
    [(SBRootFolderView *)self _updateDockViewZOrdering];
    [(SBRootFolderView *)self setNeedsLayout];
LABEL_11:

    goto LABEL_12;
  }

  v6 = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];

  if (v6 == v4)
  {
    [(SBRootFolderView *)self setScrollAccessoryBorrowedAssertion:0];
    v8 = [(SBFolderView *)self scalingView];
    v9 = [(SBRootFolderView *)self scrollAccessoryView];
    [v8 addSubview:v9];
    v10 = [(SBFolderView *)self pageControl];
    if (![v10 hidesForSinglePage] || objc_msgSend(v10, "numberOfPages") >= 2)
    {
      [v10 setAlpha:1.0];
      [v10 setHidden:0];
    }

    [(SBRootFolderView *)self setNeedsLayout];

    goto LABEL_11;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SBRootFolderView *)v4 elementBorrowedAssertionDidInvalidate:v7];
  }

LABEL_12:
}

- (id)borrowScrollAccessoryForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBRootFolderView *)self scrollAccessoryBorrowedAssertion];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_SBRootFolderViewElementBorrowedAssertion alloc] initWithFolderView:self reason:v4];
    [(SBRootFolderView *)self setScrollAccessoryBorrowedAssertion:v6];
  }

  return v6;
}

- (id)requirePageDotsVisibilityForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__SBRootFolderView_requirePageDotsVisibilityForReason___block_invoke;
  v15 = &unk_1E808A7B8;
  objc_copyWeak(&v16, &location);
  v8 = [v5 initWithIdentifier:@"RootFolderPageDotsVisibility" forReason:v4 queue:v6 invalidationBlock:&v12];

  v9 = [(SBRootFolderView *)self pageDotsVisibilityAssertions:v12];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    [(SBRootFolderView *)self setPageDotsVisibilityAssertions:v9];
  }

  v10 = [v9 count];
  [v9 addObject:v8];
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

- (void)setPageControlAlpha:(double)a3
{
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    v5 = [(SBRootFolderView *)self scrollAccessoryView];
    [v5 setAlpha:a3];
  }
}

- (BOOL)isPageControlHidden
{
  v2 = [(SBRootFolderView *)self scrollAccessoryView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setPageControlHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBRootFolderView *)self scrollAccessoryView];
  [v4 setHidden:v3];
}

- (double)pageControlAlpha
{
  v2 = [(SBRootFolderView *)self scrollAccessoryView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (int64_t)_adjustPageIndexForPageControl:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v6 _adjustPageIndexForPageControl:a3];
  return v4 - [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
}

- (int64_t)_adjustPageIndexFromPageControl:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v6 _adjustPageIndexForPageControl:a3];
  return v4 + [(SBRootFolderView *)self _countOfLeadingCustomViewsThatShouldNotBeIndicatedInPageControl];
}

- (UIEdgeInsets)statusBarInsetsForDockEdge:(unint64_t)a3
{
  [(SBRootFolderView *)self currentDockOffscreenFraction];

  [(SBRootFolderView *)self _statusBarInsetsForDockEdge:a3 dockOffscreenPercentage:?];
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
  v3 = [(SBFolderView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 backgroundViewForDockForRootFolderView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SBRootFolderView *)self newDockBackgroundMaterialViewWithInitialWeighting:1.0];
  }

  return v4;
}

- (id)newDockBackgroundMaterialViewWithInitialWeighting:(double)a3
{
  v3 = [MEMORY[0x1E69AE158] materialViewWithRecipe:19 options:0 initialWeighting:a3];
  [v3 setGroupNameBase:0];
  [v3 setGroupName:@"WallpaperCaptureGroup"];
  v4 = [v3 layer];
  v5 = objc_opt_class();
  v6 = v4;
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
  v3 = [(SBFolderView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 backgroundViewForEditingDoneButtonForRootFolderView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[SBIconView componentBackgroundView];
  }

  return v4;
}

- (id)makeTitledButtonOfClass:(Class)a3
{
  v5 = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  v6 = [a3 alloc];
  v7 = [v6 initWithFrame:3 material:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v8 = [v7 configuration];
  [v5 editModeButtonContentEdgeInsets];
  [v8 setContentInsets:?];
  [v7 setConfiguration:v8];
  [v5 editModeButtonSize];
  [v7 setPreferredContentFittingSize:?];
  v9 = [v7 materialView];
  v10 = [(SBFolderView *)self legibilitySettings];
  [v9 setLegibilityStyle:{objc_msgSend(v10, "style")}];

  v11 = [(SBFolderView *)self legibilitySettings];
  [v7 setLegibilitySettings:v11];

  return v7;
}

+ (void)_editButtonLayoutFramesInBounds:(CGRect)a3 forVisualConfiguration:(id)a4 withTranslationOffset:(double)a5 inRTL:(BOOL)a6 doneButton:(id)a7 addWidgetButton:(id)a8 doneButtonFrame:(CGRect *)a9 addWidgetButtonFrame:(CGRect *)a10
{
  v14 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v36 = 0;
  v22 = a7;
  v23 = a4;
  [a8 sizeThatFits:{width, height}];
  v37.width = v24;
  v37.height = v25;
  v34 = 0;
  [v22 sizeThatFits:{width, height}];
  v27 = v26;
  v29 = v28;

  v35.width = v27;
  v35.height = v29;
  if (a7)
  {
    v30 = &v36;
  }

  else
  {
    v30 = 0;
  }

  if (a7)
  {
    v31 = &v34;
  }

  else
  {
    v31 = &v36;
  }

  [a1 _getTopLeadingButtonFrame:v30 topTrailingButtonFrame:v31 inBounds:v23 forVisualConfiguration:1 includingContentEdgeInsets:v14 withTranslationOffset:x inRTL:{y, width, height, a5}];

  if (a9)
  {
    v32 = v35;
    a9->origin = v34;
    a9->size = v32;
  }

  if (a10)
  {
    v33 = v37;
    a10->origin = v36;
    a10->size = v33;
  }
}

+ (void)_getTopLeadingButtonFrame:(CGRect *)a3 topTrailingButtonFrame:(CGRect *)a4 inBounds:(CGRect)a5 forListLayout:(id)a6 withTranslationOffset:(double)a7 inRTL:(BOOL)a8
{
  v8 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a6;
  v18 = 28.0;
  if (objc_opt_respondsToSelector())
  {
    v19 = [v17 rootFolderVisualConfiguration];
    v20 = v19;
    if (v19)
    {
      [v19 editModeButtonSize];
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
  [a1 _getTopLeadingButtonFrame:&v27 topTrailingButtonFrame:&v25 inBounds:v20 forVisualConfiguration:0 includingContentEdgeInsets:v8 withTranslationOffset:x inRTL:{y, width, height, a7}];
  if (a3)
  {
    v23 = v28;
    a3->origin = v27;
    a3->size = v23;
  }

  if (a4)
  {
    v24 = v26;
    a4->origin = v25;
    a4->size = v24;
  }
}

+ (void)_getTopLeadingButtonFrame:(CGRect *)a3 topTrailingButtonFrame:(CGRect *)a4 inBounds:(CGRect)a5 forVisualConfiguration:(id)a6 includingContentEdgeInsets:(BOOL)a7 withTranslationOffset:(double)a8 inRTL:(BOOL)a9
{
  v9 = a9;
  width = a5.size.width;
  v10 = a7;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a6;
  v46 = v15;
  if (v10)
  {
    [v15 editModeButtonContentEdgeInsets];
    SBHDirectionalEdgeInsetsGetEdgeInsets();
    v15 = v46;
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

  [v15 editModeButtonLayoutOffset];
  v25 = v24;
  v27 = v26;
  if (a3)
  {
    v28 = v17 + a3->origin.y;
    v29 = a3->size.width - (v23 + v19);
    v30 = a3->size.height - (v21 + v17);
    a3->origin.x = v19 + a3->origin.x;
    a3->origin.y = v28;
    a3->size.width = v29;
    a3->size.height = v30;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    a3->origin.y = v27 + CGRectGetMinY(v48);
  }

  v31 = v46;
  if (a4)
  {
    v32 = v17 + a4->origin.y;
    v33 = a4->size.width - (v23 + v19);
    v34 = a4->size.height - (v21 + v17);
    a4->origin.x = v19 + a4->origin.x;
    a4->origin.y = v32;
    a4->size.width = v33;
    a4->size.height = v34;
    if (a3)
    {
      v35 = a3->origin.y;
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

    a4->origin.y = v35;
  }

  v37 = !v9;
  if (v9)
  {
    v38 = a4;
  }

  else
  {
    v38 = a3;
  }

  if (!v37)
  {
    a4 = a3;
  }

  if (a4)
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    MaxX = CGRectGetMaxX(v50);
    v40 = CGRectGetWidth(*a4);
    v31 = v46;
    a4->origin.x = MaxX - v40 - v25 + v43;
  }

  if (v38)
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v41 = CGRectGetMinX(v51);
    v31 = v46;
    v38->origin.x = v25 + v41 + v43;
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

- (void)setShowsDoneButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsDoneButton != a3)
  {
    v44 = v7;
    v45 = v6;
    v46 = v4;
    v47 = v5;
    v8 = a4;
    v9 = a3;
    self->_showsDoneButton = a3;
    v11 = [(SBRootFolderView *)self doneButton];
    v12 = v11;
    if (v9)
    {
      v13 = [(SBRootFolderView *)self titledButtonsContainerView];
      [(SBRootFolderView *)self bringSubviewToFront:v13];
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
        v38 = v13;
        v39 = self;
        [v21 performWithoutAnimation:v36];
      }

      if (v8)
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
        v33 = self;
        [v24 animateWithDuration:v31 animations:0.2];
      }
    }

    else if (v8)
    {
      v25 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_4;
      v29[3] = &unk_1E8088C90;
      v30 = v11;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __48__SBRootFolderView_setShowsDoneButton_animated___block_invoke_5;
      v26[3] = &unk_1E80893F0;
      v12 = v30;
      v27 = v12;
      v28 = self;
      [v25 animateWithDuration:v29 animations:v26 completion:0.2];
    }

    else
    {
      [v11 removeFromSuperview];
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

- (void)setShowsAddWidgetButton:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsAddWidgetButton != a3)
  {
    v44 = v7;
    v45 = v6;
    v46 = v4;
    v47 = v5;
    v8 = a4;
    v9 = a3;
    self->_showsAddWidgetButton = a3;
    v11 = [(SBRootFolderView *)self widgetButton];
    [v11 setAccessibilityIdentifier:@"avocado-widget-add-button"];
    if (v9)
    {
      v12 = [(SBRootFolderView *)self titledButtonsContainerView];
      [(SBRootFolderView *)self bringSubviewToFront:v12];
      if (!v11)
      {
        v13 = [(SBRootFolderView *)self makeTitledButtonOfClass:objc_opt_class()];
        v14 = [(SBRootFolderView *)self editMenu];
        [v13 setMenu:v14];
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
        v11 = v13;
        v40 = 0;
        v41 = 0;
        v37 = v11;
        v42 = v18;
        v43 = v20;
        v38 = v12;
        v39 = self;
        [v21 performWithoutAnimation:v36];
      }

      if (v8)
      {
        v22 = MEMORY[0x1E69DD250];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_2;
        v34[3] = &unk_1E8088C90;
        v23 = v11;
        v35 = v23;
        [v22 performWithoutAnimation:v34];
        v24 = MEMORY[0x1E69DD250];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_3;
        v31[3] = &unk_1E8088F18;
        v32 = v23;
        v33 = self;
        [v24 animateWithDuration:v31 animations:0.2];
      }
    }

    else if (v8)
    {
      v25 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_4;
      v29[3] = &unk_1E8088C90;
      v30 = v11;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __53__SBRootFolderView_setShowsAddWidgetButton_animated___block_invoke_5;
      v26[3] = &unk_1E80893F0;
      v11 = v30;
      v27 = v11;
      v28 = self;
      [v25 animateWithDuration:v29 animations:v26 completion:0.2];
    }

    else
    {
      [v11 removeFromSuperview];
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

- (void)setTitledButtonsAlpha:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_titledButtonsAlpha != a3)
  {
    self->_titledButtonsAlpha = a3;
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      v7 = a3;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "SBRootFolderView setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:a3];
    [(SBTitledHomeScreenButton *)self->_widgetButton setAlpha:a3];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBRootFolderView;
  [SBFolderView setEditing:sel_setEditing_animated_ animated:?];
  if ([(SBRootFolderView *)self folderPageManagementAllowedOrientations])
  {
    v7 = 0.3;
    if (!v4)
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

  if (v5)
  {
    v8 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:@"editing"];
    [(SBRootFolderView *)self setEditingPageDotsVisibilityAssertion:v8];
    v9 = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];

    if (v9)
    {
      v10 = [(SBFolderView *)self pageControl];
      [v10 cancelTapGesture];
    }
  }

  else
  {
    v8 = [(SBRootFolderView *)self editingPageDotsVisibilityAssertion];
    [(SBRootFolderView *)self setEditingPageDotsVisibilityAssertion:0];
    [v8 invalidate];
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

  v7 = [(SBFolderView *)self isRTL];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (([(SBFolderView *)self orientation]- 3) > 1)
    {
      v10 = @"apps.ipad.badge.paintbrush";
      v11 = !v7;
      if (v7)
      {
        v10 = @"apps.ipad.badge.paintbrush.rtl";
      }

      v12 = @"apps.ipad.on.rectangle.portraint";
      v13 = @"apps.ipad.on.rectangle.portraint.rtl";
    }

    else
    {
      v10 = @"apps.ipad.landscape.badge.paintbrush";
      v11 = !v7;
      if (v7)
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
    v11 = !v7;
    if (v7)
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
  v3 = [(SBRootFolderView *)self widgetButton];
  if (v3)
  {
    v5 = v3;
    v4 = [(SBRootFolderView *)self editMenu];
    [v5 setMenu:v4];

    v3 = v5;
  }
}

- (void)doneButtonTriggered:(id)a3
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

- (void)widgetButtonTriggered:(id)a3
{
  v4 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderViewWantsWidgetEditingViewControllerPresented:self];
  }
}

- (void)iconTintButtonTriggered:(id)a3
{
  v4 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderViewWantsIconTintViewControllerPresented:self];
  }
}

- (void)editHomeScreenWallpaperButtonTriggered:(id)a3
{
  v4 = [(SBFolderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 rootFolderViewWantsHomeScreenWallpaperEditorViewControllerPresented:self];
  }
}

- (BOOL)isPageManagementUITransitioningOutOfVisible
{
  v3 = [(SBRootFolderView *)self transitioningNewSpecialLayoutManager];
  v4 = [(SBRootFolderView *)self transitioningOldSpecialLayoutManager];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v3 == 0);
}

- (void)enterPageManagementUIWithCompletionHandler:(id)a3
{
  v10 = a3;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v4 = [(SBRootFolderView *)self transitioningNewSpecialLayoutManager];
  v5 = [(SBRootFolderView *)self isPageManagementUIVisible];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v5 || (isKindOfClass & 1) != 0)
  {
    if (v10)
    {
      v10[2]();
    }
  }

  else
  {
    v8 = objc_alloc_init(SBRootFolderViewPageManagementLayoutManager);
    [(SBRootFolderViewPageManagementLayoutManager *)v8 setAllowsEditing:1];
    [(SBRootFolderView *)self setSpecialLayoutManager:v8 completionHandler:v10];
  }

  v9 = [MEMORY[0x1E69D3F90] sharedInstance];
  [v9 emitEvent:52];
}

- (void)exitPageManagementUIWithCompletionHandler:(id)a3
{
  v7 = a3;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v4 = [(SBRootFolderView *)self isPageManagementUIVisible];
  v5 = [(SBRootFolderView *)self isPageManagementUITransitioningOutOfVisible];
  if (!v4 || v5)
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    (*(v7 + 2))(v7);
  }

  else
  {
    [(SBRootFolderView *)self setSpecialLayoutManager:0 completionHandler:v7];
  }

  v6 = v7;
LABEL_7:
}

- (void)updatePageControlConfiguration
{
  [(SBRootFolderView *)self folderPageManagementAllowedOrientations];
  [(SBFolderView *)self orientation];
  v3 = SBFInterfaceOrientationMaskContainsInterfaceOrientation();
  v4 = v3 & [(SBFolderView *)self isEditing];
  v15 = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];
  if (v15)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(SBFolderView *)self pageControl];
  v7 = [(SBRootFolderView *)self scrollAccessoryView];
  [v6 setHidesForSinglePage:v5 ^ 1];
  [v6 setActsAsButton:v5];
  if (v15)
  {
    v8 = [v7 auxiliaryView];
    if (!v8 || (v9 = v8, [v7 backgroundView], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      [v7 setAuxiliaryView:v15];
      v11 = [(SBRootFolderView *)self scrollAccessoryBackgroundView];
      [v7 setBackgroundView:v11];
    }

    v12 = [SBHLegibilitySettings alloc];
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v14 = [(SBHLegibilitySettings *)v12 initWithPrimaryColor:v13];
  }

  else
  {
    [v7 setBackgroundView:0];
    v14 = [(SBFolderView *)self legibilitySettings];
  }

  [v6 setLegibilitySettings:v14];
}

- (void)folderDidChange
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 folderDidChange];
  v3 = [(SBFolderView *)self folder];
  dockListView = self->_dockListView;
  v5 = [v3 dock];
  [(SBIconListView *)dockListView setModel:v5];
}

- (void)setPullDownSearchVisibilityProgress:(double)a3
{
  if (self->_pullDownSearchVisibilityProgress != a3 || BSFloatGreaterThanOrEqualToFloat() && ([(SBRootFolderView *)self searchPresenter], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    self->_pullDownSearchVisibilityProgress = a3;
    [(SBRootFolderView *)self _layoutSubviewsForPulldownSearch];

    [(SBRootFolderView *)self _animateViewsForPullingToSearch];
  }
}

- (void)setLeadingCustomViewVisibilityProgress:(double)a3
{
  if (self->_leadingCustomViewVisibilityProgress != a3)
  {
    self->_leadingCustomViewVisibilityProgress = a3;
    [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomView];
  }
}

- (void)setLeadingCustomViewBouncing:(BOOL)a3
{
  if (self->_leadingCustomViewBouncing != a3)
  {
    self->_leadingCustomViewBouncing = a3;
    [(SBRootFolderView *)self setNeedsLayout];
  }
}

- (void)setTrailingCustomViewVisibilityProgress:(double)a3
{
  if (self->_trailingCustomViewVisibilityProgress != a3)
  {
    self->_trailingCustomViewVisibilityProgress = a3;
    [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomView];

    [(SBRootFolderView *)self _updateDockViewZOrdering];
  }
}

- (void)setSpecialLayoutManager:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  specialLayoutManager = self->_specialLayoutManager;
  if (specialLayoutManager == v7)
  {
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }

  else
  {
    v44 = v8;
    v11 = specialLayoutManager;
    v42 = +[SBHHomeScreenDomain rootSettings];
    v12 = [v42 iconEditingSettings];
    [v12 defaultSpringDuration];
    v14 = v13;
    v41 = v12;
    [v12 defaultSpringDampingRatio];
    v16 = v15;
    LOBYTE(v12) = UIAccessibilityIsReduceMotionEnabled();
    v17 = [(SBRootFolderViewLayoutManager *)v11 isTrackingActiveOrDroppingIconDrags];
    v18 = 0;
    if ((v12 & 1) == 0 && (v17 & 1) == 0)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 dampingRatio:v14 animations:v16];
    }

    v19 = [(SBFolderView *)self delegate];
    v20 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v22 = isKindOfClass & 1;
    v23 = objc_opt_self();
    v24 = objc_opt_isKindOfClass();

    if (v24 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v25 = [(SBRootFolderViewLayoutManager *)v11 userInfo];
      [v19 rootFolderView:self willDismissPageManagementUsingAnimator:v18 context:v25];
    }

    v40 = v24 & 1;
    if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v19 rootFolderView:self willPresentPageManagementWithLayoutManager:v7 animator:v18 context:v26];
      [(SBRootFolderViewLayoutManager *)v7 setUserInfo:v26];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke;
    aBlock[3] = &unk_1E808B370;
    v27 = v11;
    v61 = v27;
    v62 = self;
    v28 = v7;
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
    v43 = [(SBRootFolderView *)self layoutManager];
    if (v28)
    {
      objc_storeStrong(&self->_specialLayoutManager, a3);
    }

    [(SBRootFolderView *)self setTransitioningNewSpecialLayoutManager:v28];
    [(SBRootFolderView *)self setTransitioningOldSpecialLayoutManager:v27];
    [v43 transitionToActive:0 inFolderView:self usingAnimator:v18];
    [(SBRootFolderViewLayoutManager *)v28 transitionToActive:1 inFolderView:self usingAnimator:v18];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_3;
    v52[3] = &unk_1E808B398;
    v56 = v40;
    v57 = v22;
    v31 = v19;
    v53 = v31;
    v32 = v27;
    v54 = v32;
    v55 = self;
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
      v35 = v51;
    }

    else
    {
      (*(v33 + 2))(v33, 1);
      [(SBRootFolderViewLayoutManager *)v32 setRootFolderView:0];
      objc_storeStrong(&self->_specialLayoutManager, a3);
      v35 = [(SBFolderView *)self currentIconListView];
      v36 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __62__SBRootFolderView_setSpecialLayoutManager_completionHandler___block_invoke_5;
      v48[3] = &unk_1E8089928;
      v37 = v36;
      v49 = v37;
      [v35 enumerateDisplayedIconViewsUsingBlock:v48];
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

- (void)pageControlDidReceiveButtonTap:(id)a3
{
  if ([(SBFolderView *)self isEditing])
  {

    [(SBRootFolderView *)self enterPageManagementUIWithCompletionHandler:0];
  }

  else
  {
    v4 = [(SBFolderView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 rootFolderViewWantsSearchPresented:self];
    }
  }
}

- (void)pageControlDidBeginScrubbing:(id)a3
{
  v4 = [(SBRootFolderView *)self scrubbingPageDotsVisibilityAssertion];

  if (!v4)
  {
    v5 = [(SBRootFolderView *)self requirePageDotsVisibilityForReason:@"scrubbing"];
    [(SBRootFolderView *)self setScrubbingPageDotsVisibilityAssertion:v5];
  }
}

- (void)pageControlDidEndScrubbing:(id)a3
{
  v4 = [(SBRootFolderView *)self scrubbingPageDotsVisibilityAssertion];
  [(SBRootFolderView *)self setScrubbingPageDotsVisibilityAssertion:0];
  [v4 invalidate];
}

- (CGRect)enterEditingTouchRect
{
  [(SBRootFolderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBFolderView *)self orientation];
  v12 = [(SBFolderView *)self currentIconListView];
  if (!v12)
  {
    v12 = [(SBFolderView *)self firstIconListView];
  }

  [v12 layoutInsetsForOrientation:v11];
  v14 = v13;
  v16 = v15;
  v17 = [(SBRootFolderView *)self rootFolderVisualConfiguration];
  [v17 editingEntryAreaHorizontalInset];
  v19 = v18;
  if (v18 == -10000.0)
  {
    v20 = [v12 layout];
    v21 = [(SBFolderView *)self gridSizeClassDomain];
    v19 = SBHIconListLayoutLargestExtraIconImageSizeInDomain(v20, v11, v21) + 40.0;
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

- (id)_createIconListViewForList:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  v3 = [(SBFolderView *)&v5 _createIconListViewForList:a3];
  [v3 setAdjustsColumnPositionsForFullScreenWidth:1];
  [v3 setIconGlassGroupingBehavior:2];
  [v3 setIconViewBackdropGroupName:@"SBRootFolder"];

  return v3;
}

- (id)iconListViewForExtraIndex:(unint64_t)a3
{
  if (a3 == 10000)
  {
    v4 = self->_dockListView;
  }

  else
  {
    v6 = [(SBRootFolderView *)self leadingCustomViewController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SBRootFolderView *)self leadingCustomViewController];
      v9 = [v8 iconListViewQueryable];

      v10 = [MEMORY[0x1E696AC88] sb_indexPathWithListIndex:a3];
      v11 = [(SBFolderView *)self folder];
      v4 = [v9 iconListViewForListAtIndexPath:v10 inFolder:v11];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)iconListViewAtIndex:(unint64_t)a3
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
    v7 = [(SBFolderView *)&v10 iconListViewAtIndex:a3];
  }

  v8 = v7;

  return v8;
}

- (id)iconListViewForIconListModelIndex:(unint64_t)a3
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
    v7 = [(SBFolderView *)&v10 iconListViewForIconListModelIndex:a3];
  }

  v8 = v7;

  return v8;
}

- (id)iconListViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
      v8 = [(SBRootFolderView *)self leadingCustomViewController];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(SBRootFolderView *)self leadingCustomViewController];
        v11 = [v10 view];
        [v11 convertPoint:self fromView:{x, y}];
        v13 = v12;
        v15 = v14;

        v16 = [v10 iconListViewQueryable];
        v6 = [v16 iconListViewAtPoint:{v13, v15}];
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
  v4 = [(SBFolderView *)self folder];
  v5 = [v4 dock];
  [(SBIconListView *)dockListView setModel:v5];

  [(SBIconListView *)self->_dockListView showAllIcons];
  [(SBIconListView *)self->_dockListView layoutIconsNow];
}

- (id)iconListViewForPageIndex:(int64_t)a3
{
  if ([(SBFolderView *)self _isValidPageIndex:?])
  {
    v5 = [(SBFolderView *)self leadingCustomPageIndexForPageIndex:a3];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [(SBRootFolderView *)self leadingCustomViewControllers];
      v8 = [v7 objectAtIndex:v6];

      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 rootIconListView];

        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v10 = [(SBFolderView *)self trailingCustomPageIndexForPageIndex:a3];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [(SBRootFolderView *)self trailingCustomViewControllers];
      v13 = [v12 objectAtIndex:v11];

      if (objc_opt_respondsToSelector())
      {
        v9 = [v13 rootIconListView];

        if (v9)
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
  v9 = [(SBFolderView *)&v15 iconListViewForPageIndex:a3];
LABEL_13:

  return v9;
}

- (void)setSuppressesEditingStateForListViews:(BOOL)a3
{
  v3 = a3;
  if ([(SBFolderView *)self suppressesEditingStateForListViews]!= a3)
  {
    v6.receiver = self;
    v6.super_class = SBRootFolderView;
    [(SBFolderView *)&v6 setSuppressesEditingStateForListViews:v3];
    v5 = [(SBFolderView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 rootFolderViewDidChangeSuppressesEditingStateForListViews:self];
    }
  }
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 _updateEditingStateAnimated:?];
  [(SBIconListView *)self->_dockListView setEditing:[(SBFolderView *)self isEditing]& ([(SBFolderView *)self suppressesEditingStateForListViews]^ 1)];
  [(SBIconListView *)self->_dockListView updateEditingStateAnimated:v3];
}

- (void)tearDownListViews
{
  v3.receiver = self;
  v3.super_class = SBRootFolderView;
  [(SBFolderView *)&v3 tearDownListViews];
  [(SBIconListView *)self->_dockListView setModel:0];
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [SBFolderView layoutIconListsWithAnimationType:sel_layoutIconListsWithAnimationType_forceRelayout_ forceRelayout:?];
  if (v4)
  {
    [(SBIconListView *)self->_dockListView setIconsNeedLayout];
  }

  [(SBIconListView *)self->_dockListView layoutIconsIfNeededWithAnimationType:a3 options:0];
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
  v3 = [(SBFolderView *)&v7 visibleIconListViews];
  v4 = [(SBRootFolderView *)self dockListView];
  if (v4 && [(SBRootFolderView *)self isDockVisible])
  {
    v5 = [v3 arrayByAddingObject:v4];

    v3 = v5;
  }

  return v3;
}

- (void)enumerateScrollViewPageViewsUsingBlock:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v4[2](v4, v10, &v21);
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
    [(SBFolderView *)&v20 enumerateScrollViewPageViewsUsingBlock:v4];
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
        v4[2](v4, v15, &v21);
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

- (void)setShouldPrewarmContent:(BOOL)a3 ofNonIconPageAtIndex:(int64_t)a4
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  [SBFolderView setShouldPrewarmContent:sel_setShouldPrewarmContent_ofNonIconPageAtIndex_ ofNonIconPageAtIndex:?];
  v7 = [(SBRootFolderView *)self customViewControllerForPageAtIndex:a4];
  if (objc_opt_respondsToSelector())
  {
    [v7 setShouldPrewarmContent:v5];
  }
}

- (void)setIdleText:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if (![v8 length])
  {

    v8 = 0;
  }

  v9 = [(UILabel *)self->_idleTextView text];
  v10 = v9 | v8;

  if (v10)
  {
    v11 = [(UILabel *)self->_idleTextView text];
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
        v18 = [(SBFolderView *)self legibilitySettingsForIconListViews];
        v19 = [v18 primaryColor];
        if (v19)
        {
          [(UILabel *)v17 setTextColor:v19];
        }

        else
        {
          v20 = [MEMORY[0x1E69DC888] whiteColor];
          [(UILabel *)v17 setTextColor:v20];
        }

        v21 = self->_idleTextView;
        v22 = [MEMORY[0x1E69DC888] clearColor];
        [(UILabel *)v21 setBackgroundColor:v22];

        v23 = [(SBFolderView *)self scalingView];
        [v23 addSubview:self->_idleTextView];

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
        if (!v4)
        {
          [(UILabel *)v24 removeFromSuperview];
          goto LABEL_16;
        }

        goto LABEL_14;
      }

      [(UILabel *)v24 setText:v8];
      [(UILabel *)self->_idleTextView setMarqueeEnabled:1];
      [(UILabel *)self->_idleTextView setMarqueeRunning:1];
      if (v4)
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

- (void)transitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = SBRootFolderView;
  [(SBFolderView *)&v9 transitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(SBRootFolderView *)self folderPageManagementAllowedOrientations])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBRootFolderView_transitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E8089418;
    v8[4] = self;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 scrollViewWillBeginDragging:v4];
  if ([v4 isScrollAnimating])
  {
    [v4 stopScrollingAndZooming];
  }

  [(SBRootFolderView *)self _captureInitialSearchScrollTrackingState];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  a5->x = self->_scrollingAdjustment + a5->x;
  v9 = a3;
  [(SBRootFolderView *)self setScrollingAdjustment:0.0];
  v10.receiver = self;
  v10.super_class = SBRootFolderView;
  [(SBFolderView *)&v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndDragging:a3 willDecelerate:?];
  if (!a4)
  {
    [(SBRootFolderView *)self _cleanUpAfterScrolling];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndDecelerating:a3];
  v4 = [(SBFolderView *)self scrollView];
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    [(SBRootFolderView *)self _cleanUpAfterScrolling];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 scrollViewDidEndScrollingAnimation:a3];
  v4 = [(SBFolderView *)self scrollView];
  if ([v4 isTracking])
  {
  }

  else
  {
    v5 = [(SBFolderView *)self _shouldIgnoreScrollingDidEndNotifications];

    if (!v5)
    {
      [(SBRootFolderView *)self _cleanUpAfterScrolling];
    }
  }
}

- (void)iconScrollViewDidCancelTouchTracking:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBRootFolderView;
  [(SBFolderView *)&v8 iconScrollViewDidCancelTouchTracking:a3];
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

- (BOOL)iconScrollView:(id)a3 shouldSetContentOffset:(CGPoint *)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([(SBRootFolderView *)self allowsFreeScrollingUntilScrollingEnds]|| ![(SBRootFolderView *)self shouldPinScrollingToFirstOrLastPageScrollOffsetForProposedScrollOffset:a4])
  {
    v10 = [(SBFolderView *)self isVertical];
    v11 = 8;
    if (!v10)
    {
      v11 = 0;
    }

    *(&a4->x + v11) = self->_scrollingAdjustment + *(&a4->x + v11);
    v13.receiver = self;
    v13.super_class = SBRootFolderView;
    v9 = [(SBFolderView *)&v13 iconScrollView:v8 shouldSetContentOffset:a4 animated:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)iconScrollView:(id)a3 shouldSetAutoscrollContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(SBRootFolderView *)self window];
  [(SBFolderView *)self scrollingDimensionForPoint:x, y];
  v10 = v9;
  if ((([v8 isRotating] & 1) != 0 || -[SBRootFolderView allowsAutoscrollToLeadingCustomView](self, "allowsAutoscrollToLeadingCustomView") || -[SBFolderView typeForPage:](self, "typeForPage:", -[SBFolderView _pageIndexForOffset:](self, "_pageIndexForOffset:", v10))) && (v13.receiver = self, v13.super_class = SBRootFolderView, -[SBFolderView iconScrollView:shouldSetAutoscrollContentOffset:](&v13, sel_iconScrollView_shouldSetAutoscrollContentOffset_, v7, x, y)))
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

- (CGPoint)_scrollView:(id)a3 adjustedOffsetForOffset:(CGPoint)a4 translation:(CGPoint)a5 startPoint:(CGPoint)a6 locationInView:(CGPoint)a7 horizontalVelocity:(double *)a8 verticalVelocity:(double *)a9
{
  [(SBFolderView *)self scrollingDimensionForPoint:a3, a8, a9, a4.x, a4.y, a5.x, a5.y, a6.x, a6.y, a7.x, a7.y];
  v12 = v11;
  if (a8)
  {
    v13 = *a8;
  }

  else
  {
    v13 = 0.0;
  }

  [(SBRootFolderView *)self _firstPageScrollOffsetForOverscroll];
  v15 = v14;
  [(SBRootFolderView *)self _lastPageScrollOffsetForOverscroll];
  v17 = v16;
  v18 = [(SBFolderView *)self isRTL];
  v19 = !v18 && v12 < v15 || v12 > v15 && v18;
  v20 = v12 <= v17 || v18;
  v21 = v12 < v17 && v18;
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

  if (a8)
  {
    *a8 = v13;
  }

  [(SBFolderView *)self pointForScrollingDimension:v12];
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)updateIconListIndexAndVisibility:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 updateIconListIndexAndVisibility:?];
  if (self->_scrollToSearchIsDraggingOrAnimating || a3 || ([(SBRootFolderView *)self leadingCustomViewVisibilityProgress], (BSFloatIsZero() & 1) == 0))
  {
    [(SBRootFolderView *)self _updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:1];
  }
}

- (void)_updateIconListIndexSearchableAndLeadingCustomViewsWithLayout:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(SBFolderView *)self scrollView];
  [(SBFolderView *)self currentScrollOffset];
  v7 = v6;
  v8 = [(SBFolderView *)self isScrolling];
  if (v8)
  {
    [(SBFolderView *)self scrollOffsetForPageIndexCalculation];
    v9 = [(SBFolderView *)self typeForPage:[(SBFolderView *)self _pageIndexForOffset:?]];
    if ([v5 isTracking] && v9 == 1)
    {
      v10 = [(SBRootFolderView *)self scrollingPageDotsVisibilityAssertion];

      if (!v10)
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

  v12 = [(SBRootFolderView *)self scrollingPageDotsVisibilityAssertion];
  [(SBRootFolderView *)self setScrollingPageDotsVisibilityAssertion:0];
  [v12 invalidate];

  if (v9)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v15 = [(SBFolderView *)self isRTL];
  baseOffsetForDeterminingScrollToSearchThreshold = self->_baseOffsetForDeterminingScrollToSearchThreshold;
  v17 = v7 - baseOffsetForDeterminingScrollToSearchThreshold;
  v18 = baseOffsetForDeterminingScrollToSearchThreshold - v7;
  if (v15)
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
    if (v19 > 0.0 && v3)
    {
      [(SBRootFolderView *)self layoutSearchableViews];
    }
  }

LABEL_9:
  if (![(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    v14 = ((v8 | v13) & 1) == 0 && [(SBRootFolderView *)self hidesOffscreenCustomPageViews];
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

- (void)_willScrollToPageIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _willScrollToPageIndex:a3 animated:?];
  [(SBRootFolderView *)self setAllowsFreeScrollingUntilScrollingEnds:1];
  if (v4 && ![(SBFolderView *)self isScrolling])
  {
    [(SBRootFolderView *)self _captureInitialSearchScrollTrackingState];
  }
}

- (void)_currentPageIndexDidChangeFromPageIndex:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBRootFolderView;
  [(SBFolderView *)&v6 _currentPageIndexDidChangeFromPageIndex:a3];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  [(SBRootFolderView *)self getMetrics:v4];
  [(SBRootFolderView *)self _animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:v4];
  [(SBRootFolderView *)self layoutSearchableViewsWithMetrics:v4];
}

- (void)_updateScrollingState:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(SBRootFolderView *)self setScrollingAdjustment:0.0];
    [(SBRootFolderView *)self setAllowsFreeScrollingUntilScrollingEnds:0];
    [(SBRootFolderView *)self _cleanupAfterExtraScrollGesturesCompleted];
  }

  v5.receiver = self;
  v5.super_class = SBRootFolderView;
  [(SBFolderView *)&v5 _updateScrollingState:v3];
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

- (void)scrollUsingDecelerationAnimationToPageIndex:(int64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if ([(SBFolderView *)self currentPageIndex]!= a3 || [(SBFolderView *)self isScrolling])
  {
    [(SBRootFolderView *)self _flashPageDotsForReason:@"animated scroll"];
  }

  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  [(SBFolderView *)&v7 scrollUsingDecelerationAnimationToPageIndex:a3 withCompletionHandler:v6];
}

- (double)leadingCustomViewPageScrollOffsetUsingPageWidth:(double)a3
{
  v5 = [(SBRootFolderView *)self firstLeadingCustomPageIndex];
  result = 0.0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBFolderView *)self _scrollOffsetForPageAtIndex:v5 pageWidth:a3];
  }

  return result;
}

- (int64_t)pageIndexForLeadingCustomPageIndex:(unint64_t)a3
{
  v5 = [(SBRootFolderView *)self leadingCustomView];

  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7.receiver = self;
  v7.super_class = SBRootFolderView;
  return [(SBFolderView *)&v7 pageIndexForLeadingCustomPageIndex:a3];
}

- (int64_t)lastLeadingCustomPageIndex
{
  if ([(SBRootFolderView *)self isLeadingCustomViewPageHidden])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(SBRootFolderView *)self leadingCustomView];

  if (!v3)
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

- (double)trailingCustomViewPageScrollOffsetUsingPageWidth:(double)a3
{
  v5 = [(SBRootFolderView *)self trailingCustomViewPageIndex];

  [(SBFolderView *)self _scrollOffsetForPageAtIndex:v5 pageWidth:a3];
  return result;
}

- (UIEdgeInsets)_statusBarInsetsForDockEdge:(unint64_t)a3 dockOffscreenPercentage:(double)a4
{
  v7 = MEMORY[0x1E69DDCE0];
  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  [(SBDockView *)self->_dockView dockHeight];
  v12 = v11;
  [(SBDockView *)self->_dockView dockHeightPadding];
  v13 = 1.0 - a4;
  v15 = -(v14 - v12 * v13);
  if (a3 == 8)
  {
    v16 = -(v14 - v12 * v13);
LABEL_5:
    v15 = v9;
    goto LABEL_6;
  }

  v16 = *(v7 + 24);
  if (a3 != 2)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SBRootFolderView;
  v8 = [(SBFolderView *)&v19 hitTest:v7 withEvent:x, y];
  if ([(SBFolderView *)self isEditing])
  {
    v9 = v8;
  }

  else
  {
    v10 = [(SBFolderView *)self scrollView];
    [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
    if (v11 > 0.0 && ([v8 isDescendantOfView:v10] & 1) == 0 && self->_dockView)
    {
      [(SBRootFolderView *)self pullDownSearchVisibilityProgress];
      if (BSFloatIsZero())
      {
        v12 = [(NSArray *)self->_searchableLeadingCustomWrapperViews lastObject];
      }

      else
      {
        v12 = self->_searchPulldownWrapperView;
      }

      v13 = v12;
      [(SBRootFolderView *)self convertPoint:v12 toView:x, y];
      v14 = [(SBHTouchPassThroughView *)v13 hitTest:v7 withEvent:?];
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v8;
  if (self->_parallaxSettings == v8)
  {
    [(SBRootFolderView *)self _updateParallaxSettings];
    v7 = v8;
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
  v3 = [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings appIconsFollowTranslation];

  [(SBRootFolderView *)self setPullToSearchTranslatesIcons:v3];
}

- (void)_animateViewsForPullingToSearchWithMetrics:(const SBRootFolderViewMetrics *)a3
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

  v10 = [(SBRootFolderView *)self searchPresenter];
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

  if (v10)
  {
    v16 = 0.0;
    if (self->_pullToSearchTranslatesIcons != 0.0 && [v10 presentationState] == 1)
    {
      [v10 presentationOffset];
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
  v53 = CGRectOffset(a3->var5, 0.0, v16);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  v24 = [(SBFolderView *)self scrollView];
  [v24 frame];
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
    [v24 setFrame:{x, y, width, height}];
  }

  v29 = v7 - v18;
  if (v10)
  {
    if (self->_pullToSearchTranslatesIcons != 0.0)
    {
      memcpy(__dst, a3, sizeof(__dst));
      *&__dst[224] = CGRectOffset(a3->var7, 0.0, v16);
      v30 = [(SBRootFolderView *)self scrollAccessoryAuxiliaryView];
      if (!v30 || (v31 = v30, IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled(), v31, IsReduceMotionEnabled))
      {
        v55 = CGRectOffset(a3->var6, 0.0, v16);
        v33 = v55.origin.x;
        v34 = v55.origin.y;
        v35 = v55.size.width;
        v36 = v55.size.height;
        *&__dst[192] = v55;
        v37 = [(SBRootFolderView *)self scrollAccessoryView];
        [v37 sbf_setBoundsAndPositionFromFrame:{v33, v34, v35, v36}];
      }

      [(SBRootFolderView *)self layoutDockViewWithMetrics:__dst, *&v46];
    }

    v38 = 0;
  }

  else
  {
    v39 = [(SBRootFolderView *)self _window];
    v38 = [v39 isRotating] ^ 1;
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

  v42 = [(SBRootFolderView *)self pullDownSearchView];
  v43 = v42;
  v44 = (v6 - self->_pullToSearchFadeInThreshold) / (self->_pullToSearchActivationThreshold - self->_pullToSearchFadeInThreshold);
  if (v44 <= 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44 + 0.0;
  }

  [v42 setAlpha:{fmin(v45, 1.0)}];
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

- (void)_animateViewsForScrollingToLeadingOrTrailingCustomViewWithMetrics:(const SBRootFolderViewMetrics *)a3
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
  v11 = [(SBRootFolderView *)self dockEdge];
  v18 = [(SBRootFolderView *)self dockView];
  v12 = [(SBRootFolderView *)self shouldFadeDockOutDuringTransitionToLeadingCustomView];
  v13 = 1.0;
  if (v12 && v11 <= 0xF && ((1 << v11) & 0x8011) != 0)
  {
    v13 = 1.0 - v10;
  }

  [v18 setBackgroundAlpha:v13];
  if (![(SBRootFolderView *)self isScrollAccessoryBorrowed])
  {
    v14 = [(SBRootFolderView *)self shouldFadePageControlOutDuringTransitionToLeadingCustomView];
    v15 = 1.0;
    if (v14)
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
  [(SBRootFolderView *)self layoutDockViewWithMetrics:a3];
  [(SBRootFolderView *)self layoutTopButtonsWithMetrics:a3];
  [(SBRootFolderView *)self layoutPageControlWithMetrics:a3];
  [(UILabel *)self->_idleTextView sbf_setBoundsAndPositionFromFrame:a3->var4.origin.x, a3->var4.origin.y, a3->var4.size.width, a3->var4.size.height];
  v17 = [(SBFolderView *)self headerView];
  [v17 sbf_setBoundsAndPositionFromFrame:{a3->var0.origin.x, a3->var0.origin.y, a3->var0.size.width, a3->var0.size.height}];
}

- (void)layoutTopButtons
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [(SBRootFolderView *)self getMetrics:v3];
  [(SBRootFolderView *)self layoutTopButtonsWithMetrics:v3];
}

- (void)layoutTopButtonsWithMetrics:(const SBRootFolderViewMetrics *)a3
{
  [(SBRootFolderView *)self leadingCustomViewVisibilityProgress];
  v7 = v5 > 0.0 && ([(SBRootFolderView *)self leadingCustomViewVisibilityProgress], v6 != 1.0) && [(SBRootFolderView *)self _leadingCustomViewShouldShowDoneButtonWhenEditing];
  if (![(SBRootFolderView *)self isPageManagementUIVisible]&& !v7)
  {
    v8 = [(SBRootFolderView *)self titledButtonsContainerView];
    [v8 sbf_setBoundsAndPositionFromFrame:{a3->var3.origin.x, a3->var3.origin.y, a3->var3.size.width, a3->var3.size.height}];

    v9 = [(SBRootFolderView *)self doneButton];
    [v9 sbf_setBoundsAndPositionFromFrame:{a3->var1.origin.x, a3->var1.origin.y, a3->var1.size.width, a3->var1.size.height}];

    v10 = [(SBRootFolderView *)self widgetButton];
    [v10 sbf_setBoundsAndPositionFromFrame:{a3->var2.origin.x, a3->var2.origin.y, a3->var2.size.width, a3->var2.size.height}];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v16.receiver = self;
  v16.super_class = SBRootFolderView;
  v4 = [(SBFolderView *)&v16 descriptionBuilderWithMultilinePrefix:a3];
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

- (id)accessibilityTintColorForDockView:(id)a3
{
  [(SBDockView *)self->_dockView frame];

  return [(SBFolderView *)self accessibilityTintColorForRect:3 tintStyle:?];
}

- (void)remoteBasebandLogCollectionStateDidChange:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x1E69D4008] sharedInstance];
  [v3 addObserver:self];

  if (ct_green_tea_logging_enabled())
  {
    v4 = @"Regulatory Logging Enabled";
  }

  else
  {
    v5 = [MEMORY[0x1E69D4008] sharedInstance];
    v6 = [v5 isLogCollectionEnabled];

    if (!v6)
    {
      return;
    }

    v4 = *MEMORY[0x1E69D4038];
  }

  [(SBRootFolderView *)self setIdleText:v4 animated:0];
}

- (void)_reduceMotionStatusDidChange:(id)a3
{
  v10 = a3;
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
    v7 = self;
    v4 = [v3 alloc];
    [(SBRootFolderView *)v7 _scaledBoundsForMinimumHomeScreenScale];
    v5 = [v4 initWithFrame:?];
    trailingCustomSearchDimmingView = self->_trailingCustomSearchDimmingView;
    self->_trailingCustomSearchDimmingView = v5;

    [(UIView *)self->_trailingCustomSearchDimmingView setAutoresizingMask:18];
    [(UIView *)self->_trailingCustomSearchDimmingView setAlpha:0.0];
    [(UIView *)self->_trailingCustomSearchDimmingView setUserInteractionEnabled:0];
    [(SBRootFolderView *)v7 insertSubview:self->_trailingCustomSearchDimmingView atIndex:0];
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
  v3 = [(SBRootFolderView *)self dockView];
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
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isHidden")}];
  v56[0] = v44;
  v55[1] = @"alpha";
  v4 = MEMORY[0x1E696AD98];
  [v3 alpha];
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
  v7 = MEMORY[0x1E696AD98];
  v45 = self;
  [(SBRootFolderView *)self currentDockOffscreenFraction];
  v40 = [v7 numberWithDouble:?];
  v56[4] = v40;
  v55[5] = @"transform";
  if (v3)
  {
    [v3 transform];
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
  [v3 frame];
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
  v17 = [v3 description];
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
  v20 = [v3 superview];
  v21 = [v20 description];
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
  v24 = [v3 window];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_1F3D472A8;
  }

  v56[10] = v26;
  v55[11] = @"dockWindowLevel";
  v27 = [v3 window];
  if (v27)
  {
    v28 = MEMORY[0x1E696AD98];
    v7 = [v3 window];
    [v7 windowLevel];
    v9 = [v28 numberWithDouble:?];
  }

  v56[11] = v9;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:12];
  if (v27)
  {
  }

  v29 = MEMORY[0x1E696AEC0];
  v30 = [(SBFolderView *)v45 folder];
  v31 = [v30 layoutDescription];
  v32 = [(SBFolderView *)v45 folder];
  v33 = [v32 rotatedLayoutDescription];
  v34 = [v29 stringWithFormat:@"\nlayoutDescription:\n%@\n\nrotatedLayoutDescription:\n%@", v31, v33];

  v35 = [v38 description];
  v36 = [v35 stringByAppendingString:v34];

  return v36;
}

- (void)_overscrollScrollPanGestureRecognizerDidUpdate:(id)a3
{
  v23 = a3;
  v4 = [v23 state];
  [(SBRootFolderView *)self _firstPageScrollOffsetForOverscroll];
  v6 = v5;
  [(SBRootFolderView *)self _lastPageScrollOffsetForOverscroll];
  v8 = v7;
  v9 = [(SBRootFolderView *)self _shouldIgnoreOverscrollOnFirstPageForCurrentOrientation];
  v10 = [(SBRootFolderView *)self _shouldIgnoreOverscrollOnLastPageForCurrentOrientation];
  v11 = v10;
  if (v9 || v10)
  {
    if ((v4 - 3) < 3)
    {
      [(SBRootFolderView *)self _cleanUpAfterOverscrollScrollGestureEnded:v23];
      goto LABEL_33;
    }

    if (v4 == 2)
    {
      [v23 translationInView:self];
      [(SBFolderView *)self scrollingDimensionForPoint:?];
      v13 = v12;
      v14 = self->_scrollOffsetWhenScrollingBegan - v12;
      v15 = [(SBFolderView *)self isRTL];
      v16 = !v15 && v14 < v6 || v14 > v6 && v15;
      v17 = v14 <= v8 || v15;
      v18 = v17 != 1 || v14 < v8 && v15;
      v19 = [(SBFolderView *)self delegate];
      if (v16 && v9)
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
            [v19 rootFolderView:self didOverscrollOnLastPageByAmount:v13];
          }
        }

        self->_lastEventWasAttemptingToOverscrollFirstPage = v16;
        self->_lastEventWasAttemptingToOverscrollLastPage = v18;

        goto LABEL_33;
      }

      [v19 rootFolderView:self didOverscrollOnFirstPageByAmount:v20];
      goto LABEL_27;
    }
  }

LABEL_33:
}

- (void)_cleanUpAfterOverscrollScrollGestureEnded:(id)a3
{
  v12 = a3;
  v4 = [(SBRootFolderView *)self userAttemptedToOverscrollFirstPageDuringCurrentGesture];
  v5 = [(SBRootFolderView *)self userAttemptedToOverscrollLastPageDuringCurrentGesture];
  v6 = v5;
  if (v4 || v5)
  {
    v7 = [(SBFolderView *)self delegate];
    [v12 velocityInView:self];
    [(SBFolderView *)self scrollingDimensionForPoint:?];
    v9 = v8;
    [v12 translationInView:self];
    [(SBFolderView *)self scrollingDimensionForPoint:?];
    v11 = v10;
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 rootFolderView:self didEndOverscrollOnFirstPageWithVelocity:v9 translation:v11];
      }

      [(SBRootFolderView *)self setUserAttemptedToOverscrollFirstPageDuringCurrentGesture:0];
    }

    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 rootFolderView:self didEndOverscrollOnLastPageWithVelocity:v9 translation:v11];
      }

      [(SBRootFolderView *)self setUserAttemptedToOverscrollLastPageDuringCurrentGesture:0];
    }
  }

  self->_lastEventWasAttemptingToOverscrollFirstPage = 0;
  self->_lastEventWasAttemptingToOverscrollLastPage = 0;
}

- (BOOL)_shouldIgnoreOverscrollOnLastPageForCurrentOrientation
{
  v3 = [(SBFolderView *)self orientation];

  return [(SBRootFolderView *)self _shouldIgnoreOverscrollOnLastPageForOrientation:v3];
}

- (void)iconListViewWillLayoutIcons:(id)a3
{
  v4 = a3;
  if (self->_dockListView == v4)
  {
    v8 = v4;
    v5 = [(SBIconListView *)v4 displayedModel];
    v6 = [v5 numberOfIcons];

    v7 = v6 == [(SBRootFolderView *)self lastDockIconCountCheckedForIconSpacing];
    v4 = v8;
    if (!v7)
    {
      [(SBRootFolderView *)self dockIconSpacing];
      [(SBIconListView *)v8 setIconSpacing:?];
      [(SBRootFolderView *)self setLastDockIconCountCheckedForIconSpacing:v6];
      v4 = v8;
    }
  }
}

- (id)iconListView:(id)a3 alternateIconLocationForListWithNonDefaultSizedIcons:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_dockListView == v6 || (v6 = self, !a4))
  {
    v8 = [(SBIconListView *)v6 iconLocation];
  }

  else
  {
    v8 = [(SBRootFolderView *)self iconLocationForListsWithNonDefaultSizedIcons];
  }

  v9 = v8;

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