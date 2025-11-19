@interface SBHTodayViewController
- (BOOL)_isViewVisibleInScrollViewSpace:(id)a3;
- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4;
- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)needsToManageTopInset;
- (CGPoint)_interactiveSpotlightDraggingBeginPoint;
- (CGPoint)scrollingBeginningOffset;
- (CGRect)_cellFrameInScrollBoundsForCell:(id)a3;
- (CGRect)_suggestedTodayViewFrameForBounds:(CGRect)a3;
- (CGSize)_iconSpacingForIconListViews;
- (NSSet)presentedIconLocations;
- (SBFOverlayDismissalDelegate)dismissalDelegate;
- (SBHIconManager)iconManager;
- (SBHLegibilitySettings)effectiveLegibilitySettings;
- (SBHTodayViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 location:(int64_t)a5;
- (SBHTodayViewControllerDelegate)delegate;
- (SBIconListView)listView;
- (SBIconViewProviding)iconViewProvider;
- (UIEdgeInsets)_effectiveLayoutInsets;
- (UIEdgeInsets)visibleContainerInsets;
- (UIViewController)containerViewController;
- (id)_widgetIconViewAtLocation:(CGPoint)a3;
- (id)beginOverridingViewControllerAppearanceStateToRemainDisappearedForReason:(id)a3;
- (id)cancelTouchesOnIconViews;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)extraViews;
- (id)extraViewsContainers;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5;
- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (id)keepIconImageViewControllersStaticForReason:(id)a3;
- (id)listModel;
- (id)succinctDescription;
- (int64_t)layoutOrientation;
- (unint64_t)_indexForNextWidgetInListViewAfterContentOffset:(double)a3;
- (void)_beginSuspendingVisibleRowRangeUpdatesForReason:(id)a3;
- (void)_cancelTouchesForHitTestedWidgetInScrollView:(id)a3;
- (void)_cancelTouchesForWidgetIconView:(id)a3;
- (void)_endSuspendingVisibleRowRangeUpdatesForReason:(id)a3;
- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)a3;
- (void)_scrollViewDidEndScrolling;
- (void)_setUpIconListViewLayoutDelegates;
- (void)_setUpIconListViews;
- (void)_setUpScrollView;
- (void)_setupStateCapture;
- (void)_toggleListVisibilityWithEditing:(BOOL)a3;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateEditingStateForListView:(id)a3;
- (void)_updateIconListSpacing;
- (void)_updateListViewLayoutAnimated:(BOOL)a3;
- (void)_updatePresentationModeContextForIconViews;
- (void)_updateRevealStateAnimated:(BOOL)a3;
- (void)_updateScrollViewContentSize;
- (void)_updateSubviewOrderingForListViews;
- (void)_updateTouchInsets;
- (void)_updateVisibleRowRangeForListView:(id)a3;
- (void)_updateVisiblySettledForIconViewsInListView:(id)a3;
- (void)addObserver:(id)a3;
- (void)beginDisablingWidgetHitTestingForReason:(id)a3;
- (void)cancelTouchesForAllWidgets;
- (void)cleanupViews;
- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4;
- (void)dealloc;
- (void)endDisablingWidgetHitTestingForReason:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateScrollableIconViewsUsingBlock:(id)a3;
- (void)enumerateWidgetIconViewsUsingBlock:(id)a3;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4;
- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4;
- (void)iconListView:(id)a3 performIconDrop:(id)a4;
- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4;
- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)iconViewWillDismissContextMenu:(id)a3;
- (void)iconViewWillPresentContextMenu:(id)a3;
- (void)invalidateAllCancelTouchesAssertions;
- (void)layoutIconListViewWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)loadView;
- (void)noteIconViewWillZoomDown:(id)a3;
- (void)removeFromParentViewController;
- (void)scrollIconToVisible:(id)a3 atPosition:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4;
- (void)setOverrideLegibilitySettings:(id)a3;
- (void)setRevealed:(BOOL)a3;
- (void)setRootFolder:(id)a3;
- (void)setSuppressesEditingStateForListViews:(BOOL)a3;
- (void)setVisuallyRevealed:(BOOL)a3 animated:(BOOL)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateViewsWithLegibilitySettings;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SBHTodayViewController

- (void)viewWillLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v20 viewWillLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isTodayViewRotating:self];

  if ((v4 & 1) == 0)
  {
    [(SBHTodayViewController *)self _effectiveLayoutInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = v9;
    if (v9 == 0.0)
    {
      v14 = [MEMORY[0x1E69DEBC0] sbh_displayEdgeInfoForScreenType:3];
      v15 = [v14 safeAreaInsetsPortrait];
      [v15 bottomInset];
      v13 = v16;
    }

    [(UIScrollView *)self->_scrollView _setAutoScrollTouchInsets:0.0, 0.0, -v13, 0.0];
    v17 = [(SBHTodayViewController *)self view];
    [v17 setNeedsUpdateConstraints];

    [(NSLayoutConstraint *)self->_stackViewToScrollViewTopConstraint constant];
    if (v18 != v6 && [(SBHTodayViewController *)self needsToManageTopInset])
    {
      [(NSLayoutConstraint *)self->_stackViewToScrollViewTopConstraint setConstant:v6];
    }

    [(NSLayoutConstraint *)self->_stackViewToScrollViewBottomConstraint constant];
    if (v19 != -v10)
    {
      [(NSLayoutConstraint *)self->_stackViewToScrollViewBottomConstraint setConstant:?];
    }

    [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setCarouselInsets:v6, v8, v10, v12];
    [(SBHTodayViewController *)self _updateListLayoutAdditionalInsets];
    [(SBHTodayViewController *)self _updateTouchInsets];
    [(SBHTodayViewController *)self _updateScrollViewContentInset];
    [(UIScrollView *)self->_scrollView layoutIfNeeded];
  }
}

- (UIEdgeInsets)_effectiveLayoutInsets
{
  v2 = [(SBHTodayViewController *)self view];
  [v2 layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)_updateTouchInsets
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = [(SBHTodayViewController *)self view];
    v5 = [v16 window];
    [(SBHTodayViewController *)self _effectiveLayoutInsets];
    [v5 bounds];
    [v16 bounds];
    [v5 convertRect:v16 fromView:?];
    CGRectGetMaxY(v18);
    UIEdgeInsetsSubtract();
    UIEdgeInsetsMin();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIStackView *)self->_stackView _setTouchInsets:?];
    [(UIScrollView *)self->_scrollView _setTouchInsets:v7, v9, v11, v13];
    [v16 _setTouchInsets:{v7, v9, v11, v13}];
    v14 = [(SBHTodayViewController *)self parentViewController];
    v15 = [v14 view];
    [v15 _setTouchInsets:{v7, v9, v11, v13}];

    [(SBIconListView *)self->_listView _setTouchInsets:0.0, v9, 0.0, v13];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v3 viewDidLayoutSubviews];
  [(SBHTodayViewController *)self _updateVisibleRowRangeForListViews];
  if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isCarouselLayout])
  {
    [(SBIconListView *)self->_listView setIconsNeedLayout];
  }
}

- (void)invalidateAllCancelTouchesAssertions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_cancelTouchesAssertionsByWidgetID;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v8 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID removeAllObjects];
}

- (int64_t)layoutOrientation
{
  v2 = [(SBHTodayViewController *)self listView];
  v3 = [v2 window];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (SBIconListView)listView
{
  [(SBHTodayViewController *)self loadViewIfNeeded];
  listView = self->_listView;

  return listView;
}

- (SBHLegibilitySettings)effectiveLegibilitySettings
{
  overrideLegibilitySettings = self->_overrideLegibilitySettings;
  if (!overrideLegibilitySettings)
  {
    overrideLegibilitySettings = self->_legibilitySettings;
  }

  return overrideLegibilitySettings;
}

- (BOOL)needsToManageTopInset
{
  v2 = [(SBHTodayViewController *)self iconLocation];
  v3 = [v2 isEqualToString:@"SBIconLocationTodayViewOverlay"];

  return v3;
}

- (id)cancelTouchesOnIconViews
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SBHTodayViewController_cancelTouchesOnIconViews__block_invoke;
  v7[3] = &unk_1E8089928;
  v8 = v3;
  v4 = v3;
  [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:v7];
  v5 = [[_SBHTodayViewControllerCancelTouchesAssertion alloc] initWithAssertions:v4];

  return v5;
}

void __50__SBHTodayViewController_cancelTouchesOnIconViews__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 customIconImageViewController];
  v4 = objc_opt_respondsToSelector();

  v5 = v8;
  if (v4)
  {
    v6 = [v8 customIconImageViewController];
    v7 = [v6 cancelTouchesForCurrentEventInHostedContent];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    v5 = v8;
  }
}

- (void)cleanupViews
{
  [(SBHTodayViewController *)self invalidateAllCancelTouchesAssertions];
  [(SBHTodayViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:0];
  [(SBHTodayViewController *)self _beginSuspendingVisibleRowRangeUpdatesForReason:@"SBHTodayViewSuspendVisibleRowRangeUpdatesForDisappearedReason"];
  listView = self->_listView;

  [(SBIconListView *)listView hideAllIcons];
}

- (SBHTodayViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 location:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = SBHTodayViewController;
  v11 = [(SBHTodayViewController *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_listLayoutProvider, a3);
    objc_storeWeak(&v12->_iconViewProvider, v10);
    v12->_location = a5;
    objc_storeStrong(&v12->_iconLocation, @"SBIconLocationTodayView");
    v12->_contentVisibility = 0;
    v13 = +[SBHHomeScreenDomain rootSettings];
    v14 = [v13 widgetSettings];
    widgetSettings = v12->_widgetSettings;
    v12->_widgetSettings = v14;

    [(PTSettings *)v12->_widgetSettings addKeyObserver:v12];
    if (([objc_opt_class() _isCarouselLayoutEnabled] & 1) == 0)
    {
      v16 = [(SBHScrollableIconViewInteraction *)[SBHScrollableZoomingIconViewInteraction alloc] initWithContainer:v12];
      scrollingInteraction = v12->_scrollingInteraction;
      v12->_scrollingInteraction = &v16->super;
    }

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v12 selector:sel_iconViewWillPresentContextMenu_ name:@"SBIconViewWillPresentContextMenuNotification" object:0];
    [v18 addObserver:v12 selector:sel_iconViewWillDismissContextMenu_ name:@"SBIconViewWillDismissContextMenuNotification" object:0];
    v19 = [v9 layoutForIconLocation:@"SBIconLocationRoot"];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v19 sidebarVisualConfiguration];
    }

    else
    {
      v20 = objc_alloc_init(SBHSidebarVisualConfiguration);
    }

    v21 = v20;
    [(SBHSidebarVisualConfiguration *)v20 searchBarTopOffset];
    v12->_searchBarTopOffset = v22;
    [(SBHSidebarVisualConfiguration *)v21 firstWidgetTopOffset];
    v12->_firstWidgetTopOffset = v23;
    [(SBHSidebarVisualConfiguration *)v21 insets];
    v12->_widgetsLeadingOffset = v24;
    v12->_widgetsAreCenteredForFullScreen = [(SBHSidebarVisualConfiguration *)v21 isContentFullscreen];
    v25 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    iconViewsForbiddenFromEditing = v12->_iconViewsForbiddenFromEditing;
    v12->_iconViewsForbiddenFromEditing = v25;

    [(SBHTodayViewController *)v12 setViewRespectsSystemMinimumLayoutMargins:0];
    [(SBHTodayViewController *)v12 _setupStateCapture];
  }

  return v12;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCapture invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SBIconViewWillPresentContextMenuNotification" object:0];
  [v3 removeObserver:self name:@"SBIconViewWillDismissContextMenuNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v5 loadView];
  v3 = [(SBHTodayViewController *)self view];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [SBHLegibilitySettings sharedInstanceForStyle:1];
  [(SBHTodayViewController *)self setOverrideLegibilitySettings:v4];

  [(SBHTodayViewController *)self _setUpScrollView];
  [(SBHTodayViewController *)self _setUpIconListViews];
  [(SBHTodayViewController *)self setRevealed:1];
  [(SBHTodayViewController *)self setVisuallyRevealed:1 animated:0];
}

- (void)_setUpScrollView
{
  v28[4] = *MEMORY[0x1E69E9840];
  v3 = [(SBHTodayViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  v6 = [(UIScrollView *)self->_scrollView layer];
  [v6 setHitTestsAsOpaque:1];

  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setClipsToBounds:0];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setDelaysContentTouches:0];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [v3 addSubview:self->_scrollView];
  v7 = 0.0;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 29.0;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v8 userInterfaceIdiom] == 1)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 29.0;
      }
    }
  }

  scrollViewLeadingConstraint = self->_scrollViewLeadingConstraint;
  if (!scrollViewLeadingConstraint)
  {
    v10 = [(UIScrollView *)self->_scrollView leadingAnchor];
    v11 = [v3 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v13 = self->_scrollViewLeadingConstraint;
    self->_scrollViewLeadingConstraint = v12;

    v14 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v15 = [v3 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    scrollViewTrailingConstraint = self->_scrollViewTrailingConstraint;
    self->_scrollViewTrailingConstraint = v16;

    scrollViewLeadingConstraint = self->_scrollViewLeadingConstraint;
  }

  v18 = MEMORY[0x1E696ACD8];
  v19 = self->_scrollViewTrailingConstraint;
  v28[0] = scrollViewLeadingConstraint;
  v28[1] = v19;
  v20 = [v3 topAnchor];
  v21 = [(UIScrollView *)self->_scrollView topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v28[2] = v22;
  v23 = [v3 bottomAnchor];
  [(UIScrollView *)self->_scrollView bottomAnchor];
  v24 = v27 = v3;
  v25 = [v23 constraintEqualToAnchor:v24 constant:v7];
  v28[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v18 activateConstraints:v26];

  [(UIScrollView *)self->_scrollView setAccessibilityIdentifier:@"left-of-home-scroll-view"];
}

- (CGSize)_iconSpacingForIconListViews
{
  v3 = [(SBHTodayViewController *)self listLayoutProvider];
  v4 = [(SBHTodayViewController *)self iconLocation];
  v5 = [v3 layoutForIconLocation:v4];
  v6 = SBHIconListLayoutListIconSpacing(v5, 1);
  v7 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassSmall");
  v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassMedium") + v7 * -2.0;
  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = v8;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_updateIconListSpacing
{
  [(SBIconListView *)self->_listView addIconViewConfigurationOption:2];
  [(SBHTodayViewController *)self _iconSpacingForIconListViews];
  v4 = v3;
  [(SBIconListView *)self->_listView setIconSpacing:?];
  stackView = self->_stackView;

  [(UIStackView *)stackView setSpacing:v4];
}

- (void)_setUpIconListViewLayoutDelegates
{
  v3 = [objc_opt_class() _isCarouselLayoutEnabled];
  v4 = [[SBHTodayIconListLayoutDelegate alloc] initWithIconListView:self->_listView];
  listLayoutDelegate = self->_listLayoutDelegate;
  self->_listLayoutDelegate = v4;

  v6 = self->_listLayoutDelegate;
  v7 = [(SBHTodayViewController *)self view];
  [(SBHTodayIconListLayoutDelegate *)v6 setContainerView:v7];

  [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setScrollView:self->_scrollView];
  [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setCarouselLayout:v3];
  listView = self->_listView;
  v9 = self->_listLayoutDelegate;

  [(SBIconListView *)listView setLayoutDelegate:v9];
}

- (void)_setUpIconListViews
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  onScreenIconIndexRangeByIconListView = self->_onScreenIconIndexRangeByIconListView;
  self->_onScreenIconIndexRangeByIconListView = v3;

  [(SBHTodayViewController *)self _beginSuspendingVisibleRowRangeUpdatesForReason:@"SBHTodayViewSuspendVisibleRowRangeUpdatesForDisappearedReason"];
  v5 = [(SBHTodayViewController *)self listLayoutProvider];
  v6 = [(SBHTodayViewController *)self listModel];
  v7 = [(SBHTodayViewController *)self iconViewProvider];
  [(SBHTodayViewController *)self iconLocation];
  v48 = v49 = v5;
  v8 = [[SBIconListView alloc] initWithModel:v6 layoutProvider:v5 iconLocation:v48 orientation:1 iconViewProvider:v7];
  listView = self->_listView;
  self->_listView = v8;

  [(SBIconListView *)self->_listView addLayoutObserver:self];
  [(SBIconListView *)self->_listView setDragDelegate:self];
  v10 = self->_listView;
  v11 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
  [(SBIconListView *)v10 setLegibilitySettings:v11];

  [(SBIconListView *)self->_listView setAutomaticallyAdjustsLayoutMetricsToFit:0];
  [(SBIconListView *)self->_listView hideAllIcons];
  if (self->_location == 2)
  {
    [(SBIconListView *)self->_listView setIconViewConfigurationOptions:16];
  }

  [(SBIconListView *)self->_listView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_onScreenIconIndexRangeByIconListView;
  v13 = [MEMORY[0x1E696B098] valueWithRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  [(NSMapTable *)v12 setObject:v13 forKey:self->_listView];

  v14 = objc_alloc(MEMORY[0x1E69DCF90]);
  v51[0] = self->_listView;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v16 = [v14 initWithArrangedSubviews:v15];
  stackView = self->_stackView;
  self->_stackView = v16;

  [(UIStackView *)self->_stackView setAlignment:3];
  v18 = [(SBIconListView *)self->_listView heightAnchor];
  v19 = [v18 constraintGreaterThanOrEqualToConstant:0.0];
  listViewMinimumHeightConstraint = self->_listViewMinimumHeightConstraint;
  self->_listViewMinimumHeightConstraint = v19;

  v21 = [(SBIconListView *)self->_listView widthAnchor];
  v22 = [v21 constraintGreaterThanOrEqualToConstant:0.0];
  listViewMinimumWidthConstraint = self->_listViewMinimumWidthConstraint;
  self->_listViewMinimumWidthConstraint = v22;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
  v24 = [(SBIconListView *)self->_listView layer];
  [v24 setSortsSublayers:0];

  [(SBHTodayViewController *)self _updateIconListSpacing];
  [(SBHTodayViewController *)self _setUpIconListViewLayoutDelegates];
  v25 = [(UIStackView *)self->_stackView topAnchor];
  v26 = [(UIScrollView *)self->_scrollView topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  stackViewToScrollViewTopConstraint = self->_stackViewToScrollViewTopConstraint;
  self->_stackViewToScrollViewTopConstraint = v27;

  v29 = [(UIStackView *)self->_stackView bottomAnchor];
  v30 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  stackViewToScrollViewBottomConstraint = self->_stackViewToScrollViewBottomConstraint;
  self->_stackViewToScrollViewBottomConstraint = v31;

  v33 = self->_stackView;
  if (self->_widgetsAreCenteredForFullScreen)
  {
    v34 = [(UIStackView *)v33 centerXAnchor];
    v35 = [(UIScrollView *)self->_scrollView centerXAnchor];
    [v34 constraintEqualToAnchor:v35];
  }

  else
  {
    v34 = [(UIStackView *)v33 leadingAnchor];
    v35 = [(UIScrollView *)self->_scrollView leadingAnchor];
    [v34 constraintEqualToAnchor:v35 constant:self->_widgetsLeadingOffset];
  }
  v36 = ;

  v37 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v38 = [v37 leadingAnchor];
  v39 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];

  v42 = MEMORY[0x1E696ACD8];
  v43 = self->_stackViewToScrollViewTopConstraint;
  v50[0] = v41;
  v50[1] = v36;
  v44 = self->_stackViewToScrollViewBottomConstraint;
  v45 = self->_listViewMinimumHeightConstraint;
  v50[2] = v43;
  v50[3] = v44;
  v46 = self->_listViewMinimumWidthConstraint;
  v50[4] = v45;
  v50[5] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  [v42 activateConstraints:v47];
}

- (void)_setupStateCapture
{
  if (!self->_stateCapture)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = self->_location;
    v8 = @"UNKNOWN SBHTodayViewControllerLOCATION";
    if (v7 == 2)
    {
      v8 = @"SBHTodayViewControllerLocationCoverSheet";
    }

    if (v7 == 1)
    {
      v9 = @"SBHTodayViewControllerLocationLeftOfHome";
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
    v11 = [v4 stringWithFormat:@"%@-%@", v6, v10];
    objc_copyWeak(&v14, &location);
    v12 = BSLogAddStateCaptureBlockWithTitle();
    stateCapture = self->_stateCapture;
    self->_stateCapture = v12;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

__CFString *__44__SBHTodayViewController__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 descriptionWithMultilinePrefix:@"\n"];
  }

  else
  {
    v4 = @"(NULL!)";
  }

  return v4;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_widgetSettings == a3)
  {
    [(SBHTodayViewController *)self _updateIconListSpacing];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    location = self->_location;
    *buf = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v3;
    v15 = 2048;
    v16 = location;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%@ animated: %{BOOL}u location %ld", buf, 0x1Cu);
  }

  v10.receiver = self;
  v10.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v10 viewWillAppear:v3];
  [(SBHTodayViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:1 animated:v3];
  [(SBHTodayViewController *)self _endSuspendingVisibleRowRangeUpdatesForReason:@"SBHTodayViewSuspendVisibleRowRangeUpdatesForDisappearedReason"];
  [(SBHTodayViewController *)self _updateListLayoutAdditionalInsets];
  [(SBHTodayViewController *)self _updateScrollViewContentInset];
  [(SBHTodayViewController *)self _updateVisiblySettledForIconViews];
  v8 = [(SBHTodayViewController *)self view];
  [v8 setNeedsLayout];

  v9 = [(SBHTodayViewController *)self view];
  [v9 layoutIfNeeded];

  [(SBHTodayViewController *)self invalidateAllCancelTouchesAssertions];
  [(SBHTodayViewController *)self endDisablingWidgetHitTestingForReason:@"SBHTodayViewDisableWidgetHitTestingForDisappearedReason"];
  [(SBIconListView *)self->_listView setContentVisibility:[(SBHTodayViewController *)self contentVisibility]];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    location = self->_location;
    v22 = [(SBHTodayViewController *)self layoutOrientation];
    v24 = [(SBHTodayViewController *)self scrollView];
    [v24 frame];
    v7 = NSStringFromCGRect(v48);
    v8 = [(SBHTodayViewController *)self scrollViewLeadingConstraint];
    [v8 constant];
    v10 = v9;
    v11 = [(SBHTodayViewController *)self stackView];
    [v11 frame];
    v12 = NSStringFromCGRect(v49);
    v13 = [(SBHTodayViewController *)self stackViewToScrollViewLeadingConstraint];
    [v13 constant];
    *buf = 138545154;
    v32 = v6;
    v33 = 1024;
    v34 = v3;
    v35 = 2048;
    v36 = location;
    v37 = 2048;
    v38 = v22;
    v39 = 2114;
    v40 = v7;
    v41 = 2048;
    v42 = v10;
    v43 = 2114;
    v44 = v12;
    v45 = 2048;
    v46 = v14;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[Overlay Position] %{public}@ animated: %{BOOL}u location %ld, orientation: %ld, scrollViewFrame: %{public}@, scrollViewLeading: %f, stackViewFrame: %{public}@, stackViewLeading: %f", buf, 0x4Eu);
  }

  v29.receiver = self;
  v29.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v29 viewDidAppear:v3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained todayViewDidAppear:self];

  [(SBHTodayViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:1];
  [(SBIconListView *)self->_listView setContentVisibility:[(SBHTodayViewController *)self contentVisibility]];
  [(SBHTodayViewController *)self _updateVisiblySettledForIconViews];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [(NSHashTable *)self->_observers copy];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 todayViewControllerDidAppear:self];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    location = self->_location;
    *buf = 138412802;
    v21 = v6;
    v22 = 1024;
    v23 = v3;
    v24 = 2048;
    v25 = location;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%@ animated: %{BOOL}u location %ld", buf, 0x1Cu);
  }

  v18.receiver = self;
  v18.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v18 viewWillDisappear:v3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 todayViewControllerWillDisappear:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  [(SBHTodayViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:0 animated:v3];
  [(SBHTodayViewController *)self _updateVisiblySettledForIconViews];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    location = self->_location;
    *buf = 138412802;
    v21 = v6;
    v22 = 1024;
    v23 = v3;
    v24 = 2048;
    v25 = location;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%@ animated: %{BOOL}u location %ld", buf, 0x1Cu);
  }

  v18.receiver = self;
  v18.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v18 viewDidDisappear:v3];
  [(SBIconListView *)self->_listView setContentVisibility:2];
  [(SBHTodayViewController *)self cleanupViews];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 todayViewControllerDidDisappear:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)removeFromParentViewController
{
  v3.receiver = self;
  v3.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v3 removeFromParentViewController];
  [(SBHTodayViewController *)self cleanupViews];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)willMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBHTodayViewController;
  v4 = a3;
  [(SBHTodayViewController *)&v9 willMoveToParentViewController:v4];
  v5 = [(SBHTodayViewController *)self parentViewController:v9.receiver];

  if (v5 != v4)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = [v5 view];
      [v8 _setTouchInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    }
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = SBHTodayViewController;
  [(SBHTodayViewController *)&v6 setEditing:a3 animated:?];
  [(SBHTodayViewController *)self loadViewIfNeeded];
  [(SBHTodayViewController *)self _updateEditingStateAnimated:v4];
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SBHTodayViewController *)self isEditing])
  {
    v5 = [(SBHTodayViewController *)self suppressesEditingStateForListViews]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [(SBIconListView *)self->_listView setEditing:v5];
  [(SBIconListView *)self->_listView updateEditingStateAnimated:v3];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringWithFormat:@"ToggleEditing-%@", v8];

  [(SBHTodayViewController *)self _beginSuspendingVisibleRowRangeUpdatesForReason:v9];
  [(UIScrollView *)self->_scrollView stopScrollingAndZooming];
  v10 = MEMORY[0x1E69DD250];
  v11 = [(SBHWidgetSettings *)self->_widgetSettings toggleEditingOrPinnedAnimationSettings];
  if (v3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__SBHTodayViewController__updateEditingStateAnimated___block_invoke;
  v17[3] = &unk_1E80897D8;
  v17[4] = self;
  v18 = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__SBHTodayViewController__updateEditingStateAnimated___block_invoke_2;
  v14[3] = &unk_1E808A790;
  v15 = v9;
  v16 = self;
  v13 = v9;
  [v10 sb_animateWithSettings:v11 mode:v12 animations:v17 completion:v14];
}

uint64_t __54__SBHTodayViewController__updateEditingStateAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateListLayoutAdditionalInsets];
  [*(a1 + 32) _toggleListVisibilityWithEditing:*(a1 + 40)];
  [*(a1 + 32) _updateScrollViewContentInset];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(*(a1 + 32) + 1096) layout];
    v3 = SBHIconListLayoutIconImageInfoForGridSizeClass(v2, @"SBHIconGridSizeClassMedium");
    v5 = v4;
    [*(*(a1 + 32) + 1096) frame];
    Height = CGRectGetHeight(v12);
    if (Height >= v5)
    {
      v5 = Height;
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  [*(*(a1 + 32) + 1216) setConstant:v5];
  [*(*(a1 + 32) + 1224) setConstant:v3];
  [*(*(a1 + 32) + 1192) layoutIfNeeded];
  [*(*(a1 + 32) + 1136) layoutIfNeeded];
  if (([*(*(a1 + 32) + 1232) isVisuallyRevealed] & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 1136);
    [v7 adjustedContentInset];
    [v7 setContentOffset:{0.0, -v8}];
  }

  [*(a1 + 32) _updateEditingStateForListView:*(*(a1 + 32) + 1096)];
  v9 = *(*(a1 + 32) + 1096);

  return [v9 layoutIconsNow];
}

uint64_t __54__SBHTodayViewController__updateEditingStateAnimated___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _endSuspendingVisibleRowRangeUpdatesForReason:?];
  }

  return result;
}

- (void)_toggleListVisibilityWithEditing:(BOOL)a3
{
  [(SBHTodayViewController *)self setVisuallyRevealed:1 animated:0];

  [(SBHTodayViewController *)self setRevealed:1];
}

- (void)setRootFolder:(id)a3
{
  v5 = a3;
  rootFolder = self->_rootFolder;
  if (rootFolder != v5)
  {
    v11 = v5;
    v7 = [(SBRootFolder *)rootFolder todayList];
    [v7 removeListObserver:self];

    objc_storeStrong(&self->_rootFolder, a3);
    v8 = [(SBRootFolder *)v11 todayList];
    [v8 addListObserver:self];
    listView = self->_listView;
    if (listView)
    {
      [(SBIconListView *)listView setModel:v8];
      v10 = [(SBHTodayViewController *)self view];
      [v10 setNeedsLayout];
    }

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](rootFolder, v5);
}

- (id)listModel
{
  v2 = [(SBHTodayViewController *)self rootFolder];
  v3 = [v2 todayList];

  return v3;
}

- (void)layoutIconListViewWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  if (a4)
  {
    [(SBIconListView *)self->_listView setIconsNeedLayout];
  }

  listView = self->_listView;

  [(SBIconListView *)listView layoutIconsIfNeededWithAnimationType:a3 options:0];
}

- (void)setSuppressesEditingStateForListViews:(BOOL)a3
{
  if (self->_suppressesEditingStateForListViews != a3)
  {
    self->_suppressesEditingStateForListViews = a3;
    [(SBHTodayViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)noteIconViewWillZoomDown:(id)a3
{
  v12 = a3;
  if (-[SBHTodayViewController bs_isAppearingOrAppeared](self, "bs_isAppearingOrAppeared") && ([objc_opt_class() _isCarouselLayoutEnabled] & 1) == 0)
  {
    v4 = [v12 location];
    IsAppPrediction = SBHIconLocationIsAppPrediction(v4);

    if (IsAppPrediction)
    {
      v6 = [(SBHTodayViewController *)self iconManager];
      v7 = [v6 appPredictionsIconViewDisplayingIconView:v12 options:1];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v12;
      }

      v9 = v8;

      v10 = v9;
    }

    else
    {
      v10 = v12;
    }

    v12 = v10;
    v11 = [v10 icon];
    if (v11)
    {
      [(SBHTodayViewController *)self scrollIconToVisible:v11 atPosition:1 animated:1 completion:0];
    }
  }
}

- (id)beginOverridingViewControllerAppearanceStateToRemainDisappearedForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __99__SBHTodayViewController_beginOverridingViewControllerAppearanceStateToRemainDisappearedForReason___block_invoke;
  v14 = &unk_1E808A7B8;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithIdentifier:@"OverrideAppearanceStateToRemainDisappeared" forReason:v4 invalidationBlock:&v11];
  viewControllerAppearStateOverrideAssertions = self->_viewControllerAppearStateOverrideAssertions;
  if (!viewControllerAppearStateOverrideAssertions)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_viewControllerAppearStateOverrideAssertions;
    self->_viewControllerAppearStateOverrideAssertions = v8;

    viewControllerAppearStateOverrideAssertions = self->_viewControllerAppearStateOverrideAssertions;
  }

  [(NSHashTable *)viewControllerAppearStateOverrideAssertions addObject:v6, v11, v12, v13, v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v6;
}

void __99__SBHTodayViewController_beginOverridingViewControllerAppearanceStateToRemainDisappearedForReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained viewControllerAppearStateOverrideAssertions];
    [v5 removeObject:v7];

    v6 = [v4 viewControllerAppearStateOverrideAssertions];
    [v6 count];
  }
}

- (void)setListLayoutProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_listLayoutProvider != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_listLayoutProvider, a3);
    [(SBHTodayViewController *)self _updateIconListSpacing];
    v8 = [(SBHTodayViewController *)self iconLocation];
    SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(self->_listLayoutProvider, v9, v8, 1);
    [(SBIconListView *)self->_listView setLayoutProvider:v9 animated:v4];

    v7 = v9;
  }
}

- (id)keepIconImageViewControllersStaticForReason:(id)a3
{
  v4 = a3;
  v5 = [[_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion alloc] initWithTodayViewController:self reason:v4];

  keepStaticAssertions = self->_keepStaticAssertions;
  if (!keepStaticAssertions)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_keepStaticAssertions;
    self->_keepStaticAssertions = v7;

    keepStaticAssertions = self->_keepStaticAssertions;
  }

  [(NSHashTable *)keepStaticAssertions addObject:v5];
  [(SBHTodayViewController *)self _updatePresentationModeContextForIconViews];

  return v5;
}

- (void)_removeIconImageViewControllerKeepStaticAssertion:(id)a3
{
  [(NSHashTable *)self->_keepStaticAssertions removeObject:a3];

  [(SBHTodayViewController *)self _updatePresentationModeContextForIconViews];
}

- (void)_updatePresentationModeContextForIconViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__SBHTodayViewController__updatePresentationModeContextForIconViews__block_invoke;
  v2[3] = &unk_1E8089928;
  v2[4] = self;
  [(SBHTodayViewController *)self enumerateDisplayedIconViewsUsingBlock:v2];
}

void __68__SBHTodayViewController__updatePresentationModeContextForIconViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentationModeFolderContext];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(SBHMutablePresentationModeFolderContext);
  }

  -[SBHMutablePresentationModeFolderContext setHasAssertionForLowResolutionSnapshotPresentationMode:](v5, "setHasAssertionForLowResolutionSnapshotPresentationMode:", [*(a1 + 32) _shouldKeepIconImageViewControllersStatic]);
  [v3 setPresentationModeFolderContext:v5];
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

- (void)setLegibilitySettings:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_legibilitySettings] & 1) == 0)
  {
    v5 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    objc_storeStrong(&self->_legibilitySettings, a3);
    v6 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    if (([v5 isEqual:v6] & 1) == 0)
    {
      [(SBHTodayViewController *)self updateViewsWithLegibilitySettings];
    }
  }
}

- (void)setOverrideLegibilitySettings:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_overrideLegibilitySettings] & 1) == 0)
  {
    v5 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    objc_storeStrong(&self->_overrideLegibilitySettings, a3);
    v6 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
    if (([v5 isEqual:v6] & 1) == 0)
    {
      [(SBHTodayViewController *)self updateViewsWithLegibilitySettings];
    }
  }
}

- (void)updateViewsWithLegibilitySettings
{
  v3 = [(SBHTodayViewController *)self effectiveLegibilitySettings];
  [(SBIconListView *)self->_listView setLegibilitySettings:v3];
}

- (void)setContentVisibility:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  contentVisibility = self->_contentVisibility;
  if (contentVisibility != a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 todayViewController:self contentVisibilityWillChange:a3];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    self->_contentVisibility = a3;
    [(SBIconListView *)self->_listView setContentVisibility:a3];
    if (SBHContentVisibilityIsVisible(a3))
    {
      [(SBHTodayViewController *)self _updateVisibleRowRangeForListViews];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(NSHashTable *)self->_observers copy];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v17 todayViewController:self contentVisibilityDidChange:contentVisibility];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHTodayViewController *)self iconLocation];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v2 = [(SBHTodayViewController *)self iconLocation];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];

  return v3;
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHTodayViewController *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self->_listView displayedIconViewForIcon:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

        v12 = [(SBHTodayViewController *)self iconViewForIcon:v6 location:*(*(&v15 + 1) + 8 * i), v15];
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

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHTodayViewController *)self presentedIconLocations];
  v6 = [v5 allObjects];
  v7 = [(SBHTodayViewController *)self firstIconViewForIcon:v4 inLocations:v6];

  return v7;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHTodayViewController *)self presentedIconLocations];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v6];
  v10 = [v9 allObjects];
  v11 = [(SBHTodayViewController *)self firstIconViewForIcon:v7 inLocations:v10];

  return v11;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHTodayViewController *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self->_listView model];
    v11 = [v10 directlyContainsIcon:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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

        if ([(SBHTodayViewController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
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

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v7 = a4;
  v6 = [(SBIconListView *)self->_listView displayedIconViewForIcon:a3];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  listView = self->_listView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SBHTodayViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8089310;
  v8 = v4;
  v6 = v4;
  [(SBIconListView *)listView enumerateIconViewsUsingBlock:v7];
}

- (BOOL)isDisplayingIcon:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHTodayViewController *)self iconLocation];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  LOBYTE(self) = [(SBHTodayViewController *)self isDisplayingIcon:v4 inLocations:v6];

  return self;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHTodayViewController *)self iconLocation];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(SBIconListView *)self->_listView isDisplayingIconView:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)iconViewWillPresentContextMenu:(id)a3
{
  v4 = [a3 object];
  if ([(SBHTodayViewController *)self isDisplayingIconView:?])
  {
    [(SBHTodayViewController *)self _cancelTouchesForWidgetIconView:v4];
  }
}

- (void)iconViewWillDismissContextMenu:(id)a3
{
  widgetHitTestingDisabledReasons = self->_widgetHitTestingDisabledReasons;
  v5 = a3;
  v6 = [(NSMutableSet *)widgetHitTestingDisabledReasons containsObject:@"SBHTodayViewDisableWidgetHitTestingForScrollingReason"];
  v7 = [v5 object];

  if ([(SBHTodayViewController *)self isDisplayingIconView:v7]&& (v6 & 1) == 0)
  {
    [(SBHTodayViewController *)self invalidateAllCancelTouchesAssertions];
  }
}

- (id)_widgetIconViewAtLocation:(CGPoint)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBHTodayViewController__widgetIconViewAtLocation___block_invoke;
  v5[3] = &unk_1E808A7E0;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __52__SBHTodayViewController__widgetIconViewAtLocation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  [v6 bounds];
  [v6 convertRect:*(*(a1 + 32) + 1136) toView:?];
  if (CGRectContainsPoint(v8, *(a1 + 48)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)cancelTouchesForAllWidgets
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__SBHTodayViewController_cancelTouchesForAllWidgets__block_invoke;
  v2[3] = &unk_1E8089928;
  v2[4] = self;
  [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:v2];
}

- (void)_cancelTouchesForHitTestedWidgetInScrollView:(id)a3
{
  v4 = a3;
  v5 = [v4 panGestureRecognizer];
  [v5 locationInView:v4];
  v7 = v6;
  v9 = v8;

  v10 = [(SBHTodayViewController *)self _widgetIconViewAtLocation:v7, v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v10 = [(SBHTodayViewController *)self _cancelTouchesForWidgetIconView:v10];
    v11 = v12;
  }

  MEMORY[0x1EEE66BB8](v10, v11);
}

- (void)_cancelTouchesForWidgetIconView:(id)a3
{
  v15 = a3;
  v4 = [v15 customIconImageViewController];
  v5 = objc_opt_respondsToSelector();

  v6 = v15;
  if (v5)
  {
    v7 = [v15 customIconImageViewController];
    v8 = [v7 cancelTouchesForCurrentEventInHostedContent];

    v6 = v15;
    if (v8)
    {
      if (!self->_cancelTouchesAssertionsByWidgetID)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
        cancelTouchesAssertionsByWidgetID = self->_cancelTouchesAssertionsByWidgetID;
        self->_cancelTouchesAssertionsByWidgetID = v9;

        v6 = v15;
      }

      v11 = [v6 icon];
      v12 = [v11 uniqueIdentifier];

      v13 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID objectForKey:v12];
      v14 = v13;
      if (v13)
      {
        [v13 invalidate];
      }

      [(NSMutableDictionary *)self->_cancelTouchesAssertionsByWidgetID setObject:v8 forKey:v12];

      v6 = v15;
    }
  }
}

- (void)beginDisablingWidgetHitTestingForReason:(id)a3
{
  v7 = a3;
  widgetHitTestingDisabledReasons = self->_widgetHitTestingDisabledReasons;
  if (!widgetHitTestingDisabledReasons)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = self->_widgetHitTestingDisabledReasons;
    self->_widgetHitTestingDisabledReasons = v5;

    widgetHitTestingDisabledReasons = self->_widgetHitTestingDisabledReasons;
  }

  if (![(NSMutableSet *)widgetHitTestingDisabledReasons count])
  {
    [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:&__block_literal_global_18];
  }

  [(NSMutableSet *)self->_widgetHitTestingDisabledReasons addObject:v7];
}

- (void)endDisablingWidgetHitTestingForReason:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_widgetHitTestingDisabledReasons containsObject:?])
  {
    [(NSMutableSet *)self->_widgetHitTestingDisabledReasons removeObject:v4];
    if (![(NSMutableSet *)self->_widgetHitTestingDisabledReasons count])
    {
      [(SBHTodayViewController *)self enumerateWidgetIconViewsUsingBlock:&__block_literal_global_103];
    }
  }
}

- (void)enumerateWidgetIconViewsUsingBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [MEMORY[0x1E695DF70] array];
  [v5 bs_safeAddObject:self->_listView];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__SBHTodayViewController_enumerateWidgetIconViewsUsingBlock___block_invoke;
      v11[3] = &unk_1E808A808;
      v12 = v4;
      v13 = &v18;
      [v10 enumerateIconViewsUsingBlock:v11];
      LOBYTE(v10) = *(v19 + 24);

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v18, 8);
}

void __61__SBHTodayViewController_enumerateWidgetIconViewsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 icon];
  v7 = [v6 isWidgetIcon];

  if (v7)
  {
    (*(*(a1 + 32) + 16))();
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }
}

- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__SBHTodayViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v4[3] = &unk_1E8088C90;
  v4[4] = self;
  [a4 addAnimations:v4];
}

void __92__SBHTodayViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1096);
  v2 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__SBHTodayViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2;
  v4[3] = &unk_1E8088C90;
  v5 = v1;
  v3 = v1;
  [v2 performWithoutAnimation:v4];
  [v3 pl_performCrossFadeIfNecessary];
}

uint64_t __92__SBHTodayViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v6 = a4;
  [v6 addObserver:self];
  v5 = [v6 customIconImageViewController];
  if (v5 && ([v6 isIconImageViewBorrowed] & 1) == 0)
  {
    [(SBHTodayViewController *)self bs_addChildViewController:v5];
  }

  [v6 setCustomIconImageViewHitTestingDisabled:{-[SBHTodayViewController _isWidgetHitTestingDisabled](self, "_isWidgetHitTestingDisabled")}];
  [v6 setWantsFocusProxyView:{-[SBHTodayIconListLayoutDelegate isCarouselLayout](self->_listLayoutDelegate, "isCarouselLayout")}];
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v5 = a4;
  [v5 removeObserver:self];
  v7 = [v5 customIconImageViewController];

  v6 = v7;
  if (v7)
  {
    [(SBHTodayViewController *)self bs_removeChildViewController:v7];
    v6 = v7;
  }
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 customIconImageViewController];
  if (v6)
  {
    [(SBHTodayViewController *)self bs_removeChildViewController:v6];
  }

  if (v7)
  {
    [v8 setCustomIconImageViewHitTestingDisabled:{-[SBHTodayViewController _isWidgetHitTestingDisabled](self, "_isWidgetHitTestingDisabled")}];
    [(SBHTodayViewController *)self bs_addChildViewController:v7];
  }
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v5 = [(SBHTodayViewController *)self view:a3];
  [v5 setNeedsLayout];

  [(SBHTodayViewController *)self _updateVisibleRowRangeForListViews];
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v5 = [(SBHTodayViewController *)self view:a3];
  [v5 setNeedsLayout];
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v4 = [(SBHTodayViewController *)self view:a3];
  [v4 setNeedsLayout];
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  v4 = [(SBHTodayViewController *)self view:a3];
  [v4 setNeedsLayout];
}

- (BOOL)iconListView:(id)a3 canHandleIconDropSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHTodayViewController *)self listView];

  if (v8 == v6)
  {
    v10 = [(SBHTodayViewController *)self iconManager];
    v11 = [v10 iconDragManager];

    v9 = [v11 canHandleIconDropSession:v7 inIconListView:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)iconListView:(id)a3 iconDropSessionDidEnter:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SBHTodayViewController *)self listView];

  if (v7 == v10)
  {
    v8 = [(SBHTodayViewController *)self iconManager];
    v9 = [v8 iconDragManager];
    [v9 iconDropSessionDidEnter:v6 inIconListView:v10];
  }
}

- (id)iconListView:(id)a3 iconDropSessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHTodayViewController *)self listView];

  if (v8 == v6)
  {
    v10 = [(SBHTodayViewController *)self iconManager];
    v11 = [v10 iconDragManager];
    v9 = [v11 iconDropSessionDidUpdate:v7 inIconListView:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];

  return v4;
}

- (void)iconListView:(id)a3 iconDropSessionDidExit:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SBHTodayViewController *)self listView];

  if (v7 == v10)
  {
    v8 = [(SBHTodayViewController *)self iconManager];
    v9 = [v8 iconDragManager];
    [v9 iconDropSessionDidExit:v6 fromIconListView:v10];
  }
}

- (void)iconListView:(id)a3 performIconDrop:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBHTodayViewController *)self iconManager];
  v8 = [v9 iconDragManager];
  [v8 performIconDrop:v6 inIconListView:v7];
}

- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHTodayViewController *)self iconManager];
  v12 = [v11 iconDragManager];
  v13 = [v12 iconListView:v10 iconViewForDroppingIconDragItem:v9 proposedIconView:v8];

  return v13;
}

- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(SBHTodayViewController *)self iconManager];
  v11 = [v12 iconDragManager];
  [v11 iconListView:v10 willUseIconView:v9 forDroppingIconDragItem:v8];
}

- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHTodayViewController *)self iconManager];
  v12 = [v11 iconDragManager];
  v13 = [v12 iconListView:v10 previewForDroppingIconDragItem:v9 proposedPreview:v8];

  return v13;
}

- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(SBHTodayViewController *)self iconManager];
  v11 = [v12 iconDragManager];
  [v11 iconListView:v10 iconDragItem:v9 willAnimateDropWithAnimator:v8];
}

- (BOOL)iconListView:(id)a3 shouldAllowSpringLoadedInteractionForIconDropSession:(id)a4 onIconView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBHTodayViewController *)self iconManager];
  v10 = [v9 iconDragManager];
  v11 = [v10 shouldAllowSpringLoadedInteractionForIconDropSession:v8 onIconView:v7];

  return v11;
}

- (void)iconListView:(id)a3 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a4
{
  v5 = a4;
  v7 = [(SBHTodayViewController *)self iconManager];
  v6 = [v7 iconDragManager];
  [v6 performSpringLoadedInteractionForIconDragOnIconView:v5];
}

- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHTodayViewController *)self iconManager];
  v9 = [v8 iconDragManager];
  v10 = [v9 iconListView:v7 customSpringAnimationBehaviorForDroppingItem:v6];

  return v10;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [v4 _removeAllRetargetableAnimations:1];
  [(SBHTodayViewController *)self _cancelTouchesForHitTestedWidgetInScrollView:v4];
  [(SBHTodayViewController *)self beginDisablingWidgetHitTestingForReason:@"SBHTodayViewDisableWidgetHitTestingForScrollingReason"];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  [(SBHTodayViewController *)self setScrollingBeginningOffset:v6, v8];
  [(SBHTodayViewController *)self _updateVisiblySettledForIconViews];
  scrollingInteraction = self->_scrollingInteraction;

  [(SBHScrollableIconViewInteraction *)scrollingInteraction updateScrolling:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  if (self->_scrollView == a3)
  {
    v5 = a3;
    [(SBHTodayViewController *)self _updateListViewLayoutAnimated:1];
    [(SBHTodayViewController *)self _updateVisibleRowRangeForListView:self->_listView];
    [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction clippingScrollViewDidScroll:v5];
  }
}

- (void)scrollIconToVisible:(id)a3 atPosition:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  [(SBHTodayViewController *)self _updateScrollViewContentSize];
  v12 = [(SBHTodayViewController *)self listView];
  v13 = [v12 indexOfIcon:v11];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    if (v10)
    {
      scrollViewDidEndScrollingHandlers = self->_scrollViewDidEndScrollingHandlers;
      if (!scrollViewDidEndScrollingHandlers)
      {
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        v16 = self->_scrollViewDidEndScrollingHandlers;
        self->_scrollViewDidEndScrollingHandlers = v15;

        scrollViewDidEndScrollingHandlers = self->_scrollViewDidEndScrollingHandlers;
      }

      v17 = _Block_copy(v10);
      [(NSMutableArray *)scrollViewDidEndScrollingHandlers addObject:v17];
    }

    v18 = [(SBHTodayViewController *)self listLayoutDelegate];
    [(SBHTodayViewController *)self _effectiveLayoutInsets];
    v61 = v19;
    v62 = v20;
    v21 = [v12 coordinateForIconAtIndex:v13];
    v23 = v22;
    [v18 unadjustedOriginYForIconCoordinate:{v21, v22}];
    [(UIScrollView *)self->_scrollView convertPoint:v12 fromView:0.0, v24];
    v26 = v25;
    [(UIScrollView *)self->_scrollView contentOffset];
    v63 = v27;
    [v18 unadjustedBoundsForIconCoordinate:{v21, v23}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(UIScrollView *)self->_scrollView bounds];
    if (a4 == 1)
    {
      v50 = [(SBHTodayViewController *)self iconLocation];
      v51 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:v50];
      [v51 layoutInsetsForOrientation:1];
      v53 = v52;
      [(UIScrollView *)self->_scrollView adjustedContentInset];
      v55 = v53 + v61 + v54;
      [(UIScrollView *)self->_scrollView contentOffset];
      if (v56 >= v26 - v55)
      {
        v26 = v26 - v55;
      }

      else
      {
        v26 = v56;
      }
    }

    else if (!a4)
    {
      v40 = v38;
      v41 = v39;
      v42 = v36;
      v64.origin.x = v29;
      v43 = v37;
      v64.origin.y = v31;
      v64.size.width = v33;
      v64.size.height = v35;
      v44 = CGRectGetHeight(v64) * 0.5;
      v65.origin.x = v42;
      v65.origin.y = v43;
      v45 = v43;
      v65.size.width = v40;
      v65.size.height = v41;
      v46 = v26 + v44 - CGRectGetHeight(v65) * 0.5;
      [(UIScrollView *)self->_scrollView contentSize];
      v48 = v62 + v47;
      v66.origin.x = v42;
      v66.origin.y = v45;
      v66.size.width = v40;
      v66.size.height = v41;
      v49 = v48 - CGRectGetHeight(v66);
      if (v46 >= v49)
      {
        v26 = v49;
      }

      else
      {
        v26 = v46;
      }
    }

    [(UIScrollView *)self->_scrollView adjustedContentInset];
    v58 = -v57;
    if (v26 >= v58)
    {
      v59 = v26;
    }

    else
    {
      v59 = v58;
    }

    v60 = [MEMORY[0x1E69794A8] animation];
    convertDampingRatioAndResponseToTensionAndFriction();
    [v60 setMass:1.0];
    [v60 setStiffness:0.0];
    [v60 setDamping:0.0];
    [v60 durationForEpsilon:1.17549435e-38];
    [v60 setDuration:?];
    [(UIScrollView *)self->_scrollView _setContentOffset:v6 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v60 animation:v63, v59];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isRevealed]|| ![(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isVisuallyRevealed])
  {
    if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isRevealed]&& ![(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isVisuallyRevealed])
    {
      [(SBHTodayViewController *)self setRevealed:0];
    }
  }

  else
  {
    [(SBHTodayViewController *)self setRevealed:1];
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (v9 > v10)
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      v12 = [(SBHTodayViewController *)self _indexForNextWidgetInListViewAfterContentOffset:v11];
      v13 = [(SBHTodayViewController *)self _indexForNextWidgetInListViewAfterContentOffset:a5->y];
      v14 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
      [v14 velocityInView:v7];
      v16 = v15;

      v17 = 0.0;
      v18 = vcvtad_u64_f64(pow(fmin(fmax(v16 / -15000.0, 0.0), 1.0), 3.0) * (v13 - v12) + v12);
      if ([(SBHTodayViewController *)self needsToManageTopInset])
      {
        [(NSLayoutConstraint *)self->_stackViewToScrollViewTopConstraint constant];
        v17 = v19;
      }

      v20 = [(SBHTodayViewController *)self listView];
      v21 = [(SBHTodayViewController *)self listLayoutDelegate];
      v22 = [v20 coordinateForIconAtIndex:v18];
      [v21 unadjustedOriginYForIconCoordinate:{v22, v23}];
      [v7 convertPoint:v20 fromView:{0.0, v24 - v17}];
      v26 = v25;
      v28 = v27;
      v29 = [v20 coordinateForIconAtIndex:0];
      [v21 unadjustedOriginYForIconCoordinate:{v29, v30}];
      [v7 convertPoint:v20 fromView:{0.0, v31 - v17}];
      if (a5->y > v32)
      {
        [v7 contentSize];
        v34 = v33;
        [v7 bounds];
        if (v16 < 0.0 && v28 < v34 - v35)
        {
          [v7 contentOffset];
          a5->x = v36;
          a5->y = v37;
          [v7 contentOffset];
          v39 = fmin(-v16 / (v28 - v38), 15.0);
          v40 = objc_opt_new();
          v41 = 0;
          convertDampingRatioAndResponseToTensionAndFriction();
          [v40 setMass:1.0];
          [v40 setStiffness:0.0];
          [v40 setDamping:0.0];
          [v40 durationForEpsilon:1.17549435e-38];
          [v40 setDuration:?];
          [v40 setInitialVelocity:v39];
          [v7 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v40 animation:{v26, v28}];
        }
      }
    }
  }

  [(SBHTodayViewController *)self invalidateAllCancelTouchesAssertions];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(SBHTodayViewController *)self _scrollViewDidEndScrolling];
  }
}

- (UIEdgeInsets)visibleContainerInsets
{
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v4 = v3;
  [(SBHTodayViewController *)self _effectiveLayoutInsets];
  v6 = v4 + v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)enumerateScrollableIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __65__SBHTodayViewController_enumerateScrollableIconViewsUsingBlock___block_invoke;
  v10 = &unk_1E808A830;
  v5 = v4;
  v11 = v5;
  v12 = &v13;
  [(SBHTodayViewController *)self enumerateDisplayedIconViewsUsingBlock:&v7];
  if ((v14[3] & 1) == 0)
  {
    v6 = [(SBHTodayViewController *)self iconManager:v7];
    [v6 enumerateIconViewsDisplayedInAppPredictionsInLocationGroup:@"SBIconLocationGroupTodayView" withOptions:1 usingBlock:v5];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __65__SBHTodayViewController_enumerateScrollableIconViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_scrollViewDidEndScrolling
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_enableEditingModeWhenScrollEnds)
  {
    self->_enableEditingModeWhenScrollEnds = 0;
    v3 = [(SBHTodayViewController *)self iconManager];
    [v3 setEditing:1];
  }

  v4 = [(NSMutableArray *)self->_scrollViewDidEndScrollingHandlers copy];
  scrollViewDidEndScrollingHandlers = self->_scrollViewDidEndScrollingHandlers;
  self->_scrollViewDidEndScrollingHandlers = 0;

  [(SBHTodayViewController *)self _updateVisiblySettledForIconViews];
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:0];
  [(SBHTodayViewController *)self endDisablingWidgetHitTestingForReason:@"SBHTodayViewDisableWidgetHitTestingForScrollingReason"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))();
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v16 todayViewControllerDidEndScrolling:self];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)_updateListViewLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  [(UIStackView *)self->_stackView layoutIfNeeded];
  [(UIScrollView *)self->_scrollView layoutIfNeeded];
  [(SBHTodayViewController *)self _updateVisibleRowRangeForListViews];
  [(SBHTodayViewController *)self _updateSubviewOrderingForListViews];
  if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isCarouselLayout])
  {
    [(SBIconListView *)self->_listView setIconsNeedLayout];
  }

  listView = self->_listView;
  if (v3)
  {

    [(SBIconListView *)listView layoutIconsIfNeededWithAnimationType:1 options:0];
  }

  else
  {

    [(SBIconListView *)listView layoutIconsIfNeeded];
  }
}

- (unint64_t)_indexForNextWidgetInListViewAfterContentOffset:(double)a3
{
  v5 = [(SBHTodayViewController *)self listView];
  v6 = [(SBHTodayViewController *)self listLayoutDelegate];
  v7 = [v5 model];
  v8 = [v7 numberOfIcons];
  [v5 convertPoint:self->_scrollView fromView:{0.0, a3}];
  v10 = v9;
  v11 = 0;
  while (v8 != v11)
  {
    v12 = [v5 coordinateForIconAtIndex:v11];
    [v6 unadjustedOriginYForIconCoordinate:{v12, v13}];
    ++v11;
    if (v14 > v10)
    {
      v8 = v11 - 1;
      break;
    }
  }

  return v8;
}

- (void)_updateSubviewOrderingForListViews
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SBHTodayViewController *)self listView];
  [v3 bs_safeAddObject:v4];

  v5 = [v3 firstObject];
  v6 = [(SBHTodayViewController *)self view];
  if ([v3 count] != 1)
  {
    v7 = 0;
    do
    {
      v8 = [v3 objectAtIndex:v7];
      v9 = [v3 objectAtIndex:++v7];
      [v8 bounds];
      [v8 convertRect:v6 toView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v9 bounds];
      [v9 convertRect:v6 toView:?];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v60.origin.x = v11;
      v60.origin.y = v13;
      v60.size.width = v15;
      v60.size.height = v17;
      if (CGRectGetMinY(v60) < 0.0)
      {
        v61.origin.x = v19;
        v61.origin.y = v21;
        v61.size.width = v23;
        v61.size.height = v25;
        MinY = CGRectGetMinY(v61);
        [v6 bounds];
        if (MinY < CGRectGetMidY(v62))
        {
          v27 = v9;

          v5 = v27;
        }
      }
    }

    while (v7 < [v3 count] - 1);
  }

  v28 = [MEMORY[0x1E695DFA0] orderedSet];
  v29 = v28;
  if (v5)
  {
    [v28 addObject:v5];
    v30 = [v3 indexOfObject:v5];
    for (i = v30 + 1; i < [v3 count]; ++i)
    {
      v32 = [v3 objectAtIndex:i];
      [v29 insertObject:v32 atIndex:0];
    }

    v33 = v30 - 1;
    if (v33 >= 0)
    {
      do
      {
        v34 = [v3 objectAtIndex:v33];
        [v29 insertObject:v34 atIndex:0];

        --v33;
      }

      while (v33 != -1);
    }
  }

  v48 = v5;
  v35 = [MEMORY[0x1E695DFA0] orderedSet];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v36 = [(UIStackView *)self->_stackView subviews];
  v37 = [v36 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v54;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v53 + 1) + 8 * j);
        if ([v29 containsObject:v41])
        {
          [v35 addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v38);
  }

  if (([v29 isEqualToOrderedSet:v35] & 1) == 0)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = v29;
    v43 = [v42 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v50;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [(UIStackView *)self->_stackView bringSubviewToFront:*(*(&v49 + 1) + 8 * k)];
        }

        v44 = [v42 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v44);
    }
  }
}

- (void)_updateVisiblySettledForIconViewsInListView:(id)a3
{
  v5 = a3;
  if ([(UIScrollView *)self->_scrollView isDragging]|| [(UIScrollView *)self->_scrollView isDecelerating])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(UIScrollView *)self->_scrollView isScrollAnimating]^ 1;
  }

  [v5 setVisiblySettled:v4];
}

- (void)_updateEditingStateForListView:(id)a3
{
  v4 = a3;
  v5 = [v4 isEditing];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SBHTodayViewController__updateEditingStateForListView___block_invoke;
  v6[3] = &unk_1E808A858;
  v6[4] = self;
  v7 = v5;
  [v4 enumerateIconViewsUsingBlock:v6];
}

uint64_t __57__SBHTodayViewController__updateEditingStateForListView___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 icon];
  v4 = [v3 isWidgetIcon];

  v6 = v9;
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 992) containsObject:v9];
    v7 = v5;
    if (*(a1 + 40) == 1 && (v5 = [*(a1 + 32) _shouldIconViewForbidJiggling:v9], v5))
    {
      v6 = v9;
      if (v7)
      {
        goto LABEL_9;
      }

      [v9 startForbiddingEditingModeWithReason:@"kStopJigglingBecauseOffScreen"];
      v5 = [*(*(a1 + 32) + 992) addObject:v9];
    }

    else
    {
      v6 = v9;
      if (!v7)
      {
        goto LABEL_9;
      }

      [v9 endForbiddingEditingModeWithReason:@"kStopJigglingBecauseOffScreen"];
      v5 = [*(*(a1 + 32) + 992) removeObject:v9];
    }

    v6 = v9;
  }

LABEL_9:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_beginSuspendingVisibleRowRangeUpdatesForReason:(id)a3
{
  v4 = a3;
  suspendVisibleRowRangeUpdatesReasons = self->_suspendVisibleRowRangeUpdatesReasons;
  v8 = v4;
  if (!suspendVisibleRowRangeUpdatesReasons)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_suspendVisibleRowRangeUpdatesReasons;
    self->_suspendVisibleRowRangeUpdatesReasons = v6;

    v4 = v8;
    suspendVisibleRowRangeUpdatesReasons = self->_suspendVisibleRowRangeUpdatesReasons;
  }

  [(NSMutableSet *)suspendVisibleRowRangeUpdatesReasons addObject:v4];
}

- (void)_endSuspendingVisibleRowRangeUpdatesForReason:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_suspendVisibleRowRangeUpdatesReasons containsObject:?])
  {
    [(NSMutableSet *)self->_suspendVisibleRowRangeUpdatesReasons removeObject:v4];
    if (![(NSMutableSet *)self->_suspendVisibleRowRangeUpdatesReasons count])
    {
      [(SBHTodayViewController *)self _updateVisibleRowRangeForListViews];
    }
  }
}

- (void)_updateVisibleRowRangeForListView:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_suspendVisibleRowRangeUpdatesReasons count]|| [(SBHTodayViewController *)self contentVisibility])
  {
    goto LABEL_57;
  }

  v5 = [v4 layoutDelegate];
  v6 = [v4 layoutMetrics];
  v57 = [v6 listModel];
  v7 = [v57 numberOfIcons];
  v8 = [v5 isCarouselLayout];
  v9 = [(SBHTodayViewController *)self view];
  [v9 bounds];
  [v9 convertRect:self->_scrollView toView:?];
  [(UIScrollView *)self->_scrollView convertRect:v4 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v8 & 1) == 0)
  {
    v20 = [v9 window];
    [v20 bounds];
    [v20 convertRect:self->_scrollView toView:?];
    [(UIScrollView *)self->_scrollView convertRect:v4 toView:?];
    v13 = v21;
    v17 = v22;
  }

  v56 = v9;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v35 = 1;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = 1;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_36;
  }

  v24 = 0;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v27 = [v4 coordinateForIconAtIndex:v24];
    if (v8)
    {
      if (v5)
      {
        [v5 layoutAttributesForIconCoordinate:v27 metrics:v28 adjustedForRevealProgress:{v6, 0}];
      }

      if ((BSFloatIsZero() & 1) == 0)
      {
LABEL_12:
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = v24;
        }

        else
        {
          v33 = v25;
        }

        v26 = v24;
        goto LABEL_18;
      }
    }

    else
    {
      [v4 rectForIconAtIndex:v24];
      v63.origin.x = v29;
      v63.origin.y = v30;
      v63.size.width = v31;
      v63.size.height = v32;
      v62.origin.x = v11;
      v62.origin.y = v13;
      v62.size.width = v15;
      v62.size.height = v17;
      if (CGRectIntersectsRect(v62, v63))
      {
        goto LABEL_12;
      }
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

LABEL_18:
    ++v24;
    v25 = v33;
  }

  while (v7 != v24);
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v60 = 1;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  v25 = v33;
LABEL_23:
  if (v25 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v25;
  }

  [v4 coordinateForIconAtIndex:v37 - 1];
  v60 = 0;
  v34 = v38 - 1;
LABEL_27:
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    v35 = 1;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v26 + 1 < v7 - 1)
    {
      v39 = v26 + 1;
    }

    else
    {
      v39 = v7 - 1;
    }

    [v4 coordinateForIconAtIndex:v39];
    v58 = v40;
    [v4 gridRangeForIconAtIndex:v39];
    v7 = 0;
    v35 = 0;
    if (v34 != 0x7FFFFFFFFFFFFFFFLL && v58 + v41 - 1 != 0x8000000000000000)
    {
      v35 = 0;
      v7 = v58 + v41 - 1 - v34;
      v23 = v34;
    }
  }

  v36 = v60;
LABEL_36:
  v59 = v6;
  v61 = v5;
  if (v23 != [v4 visibleRowRange] || v7 != v42)
  {
    [v4 setVisibleRowRange:{v23, v7}];
    [v4 layoutIconsIfNeededWithAnimationType:1 options:0];
  }

  v43 = v35 | v36;
  v44 = v26 - v25;
  v45 = [(NSMapTable *)self->_onScreenIconIndexRangeByIconListView objectForKey:v4];
  v46 = [v45 rangeValue];
  v48 = v47;
  if (v43)
  {
    v49 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v49 = v25;
  }

  if (v43)
  {
    v50 = 0;
  }

  else
  {
    v50 = v44 + 1;
  }

  if (v49 != v46 || v50 != v48)
  {
    if (v43)
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v52 = v25;
    }

    if (v43)
    {
      v53 = 0;
    }

    else
    {
      v53 = v44 + 1;
    }

    onScreenIconIndexRangeByIconListView = self->_onScreenIconIndexRangeByIconListView;
    v55 = [MEMORY[0x1E696B098] valueWithRange:{v52, v53}];
    [(NSMapTable *)onScreenIconIndexRangeByIconListView setObject:v55 forKey:v4];
  }

  [(SBHTodayViewController *)self _updateVisiblySettledForIconViewsInListView:v4];
  [(SBHTodayViewController *)self _updateEditingStateForListView:v4];

LABEL_57:
}

- (CGRect)_cellFrameInScrollBoundsForCell:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentOffset];
  v8 = v6 - v7;
  [v4 frame];
  v10 = v9;
  v12 = v11;

  v13 = 0.0;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)_interactiveSpotlightDraggingBeginPoint
{
  v3 = [(SBHTodayViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SBHTodayViewController *)self iconLocation];
  v13 = [(SBHTodayViewController *)self listLayoutProvider];
  v14 = [v13 layoutForIconLocation:v12];

  v15 = SBHIconListLayoutIconImageInfoForGridSizeClass(v14, @"SBHIconGridSizeClassMedium");
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v16 = (CGRectGetWidth(v22) - v15) * 0.5 * 0.5;
  UIRectGetCenter();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_isViewVisibleInScrollViewSpace:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [v4 convertRect:self->_scrollView toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIScrollView *)self->_scrollView bounds];
  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  if (CGRectIntersectsRect(v15, v16))
  {
    [v4 alpha];
    v13 = BSFloatGreaterThanFloat();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)extraViewsContainers
{
  v3 = objc_opt_new();
  if ([(SBHTodayViewController *)self _isViewVisibleInScrollViewSpace:self->_listView])
  {
    [v3 addObject:self->_listView];
  }

  return v3;
}

- (id)extraViews
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SBHTodayViewController_extraViews__block_invoke;
  v8[3] = &unk_1E8089FF0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(SBHTodayViewController *)self enumerateDisplayedIconViewsUsingBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __36__SBHTodayViewController_extraViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isViewVisibleInScrollViewSpace:?])
  {
    [v3 effectiveIconImageAlpha];
    if (BSFloatGreaterThanFloat())
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (void)setRevealed:(BOOL)a3
{
  v3 = a3;
  if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isRevealed]!= a3)
  {
    [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setRevealed:v3];

    [(SBHTodayViewController *)self _updateScrollViewContentSize];
  }
}

- (void)setVisuallyRevealed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isVisuallyRevealed]!= a3)
  {
    [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setVisuallyRevealed:v5 animated:v4];
    [(SBHTodayViewController *)self _updateScrollViewContentSize];
  }

  if (![(UIScrollView *)self->_scrollView isTracking])
  {

    [(SBHTodayViewController *)self setRevealed:v5];
  }
}

- (void)_updateScrollViewContentSize
{
  v6 = self->_scrollView;
  [(UIScrollView *)v6 _setAutomaticContentOffsetAdjustmentEnabled:0];
  v3 = [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isVisuallyRevealed];
  v4 = [(SBHTodayViewController *)self stackViewToScrollViewBottomConstraint];
  v5 = v4;
  if (v3)
  {
    [v4 setActive:1];

    [(UIScrollView *)v6 layoutIfNeeded];
  }

  else
  {
    [v4 setActive:0];
  }
}

- (void)_updateRevealStateAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = self->_scrollView;
  [(UIScrollView *)v15 contentOffset];
  [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setRevealProgress:fmin(fmax(v5 / 60.0, 0.0), 1.0)];
  [(UIScrollView *)v15 contentOffset];
  v7 = fmax(v6 / 60.0, -1.0);
  if (v7 >= 0.0)
  {
    v8 = -0.0;
  }

  else
  {
    v8 = -v7;
  }

  [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate setDismissProgress:v8];
  v9 = [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isRevealed];
  v10 = [(SBHTodayIconListLayoutDelegate *)self->_listLayoutDelegate isVisuallyRevealed];
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = BSFloatIsOne() ^ 1;
  }

  IsOne = BSFloatIsOne();
  v13 = [(UIScrollView *)v15 isDecelerating];
  if (v9 && !IsOne || (v13 || (v9 & IsOne & 1) == 0) && (v9 && v13 || !v13 && (v11 & (!v10 | IsOne)) != 1))
  {
    v14 = 1;
  }

  else
  {
    v14 = [(SBHTodayViewController *)self isEditing];
  }

  [(SBHTodayViewController *)self setVisuallyRevealed:v14 animated:v3];
}

- (CGRect)_suggestedTodayViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SBHTodayViewController *)self traitCollection];
  [v8 displayScale];

  v9 = [(SBHTodayViewController *)self listLayoutProvider];
  v10 = [(SBHTodayViewController *)self iconLocation];
  v11 = [v9 layoutForIconLocation:v10];
  SBHIconListLayoutIconImageInfoForGridSizeClass(v11, @"SBHIconGridSizeClassMedium");
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetHeight(v24);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)succinctDescription
{
  v2 = [(SBHTodayViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHTodayViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHTodayViewController *)self succinctDescriptionBuilder];
  v5 = v4;
  location = self->_location;
  v7 = @"UNKNOWN SBHTodayViewControllerLOCATION";
  if (location == 2)
  {
    v7 = @"SBHTodayViewControllerLocationCoverSheet";
  }

  if (location == 1)
  {
    v8 = @"SBHTodayViewControllerLocationLeftOfHome";
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 appendObject:v8 withName:@"location"];
  v10 = SBHStringFromContentVisibility([(SBIconListView *)self->_listView contentVisibility]);
  [v5 appendString:v10 withName:@"_listView contentVisibility"];

  v11 = SBHStringFromContentVisibility([(SBHTodayViewController *)self contentVisibility]);
  [v5 appendString:v11 withName:@"contentVisibility"];

  v12 = [v5 appendBool:-[SBHTodayViewController bs_isAppearingOrAppeared](self withName:"bs_isAppearingOrAppeared") ifEqualTo:{@"isAppearingOrAppeared", 1}];
  v13 = [v5 appendBool:-[SBHTodayViewController bs_isDisappearingOrDisappeared](self withName:"bs_isDisappearingOrDisappeared") ifEqualTo:{@"isDisappearingOrDisappeared", 1}];
  v14 = [v5 appendBool:-[SBHTodayViewController isSpotlightVisible](self withName:{"isSpotlightVisible"), @"spotlightVisible"}];
  if ([(SBHTodayViewController *)self isOverridingViewControllerAppearanceStateToRemainDisappeared])
  {
    v15 = [v5 appendObject:self->_viewControllerAppearStateOverrideAssertions withName:@"_viewControllerAppearStateOverrideAssertions"];
  }

  if ([(SBHTodayViewController *)self _isWidgetHitTestingDisabled])
  {
    v16 = [v5 appendBool:self->_widgetHitTestingDisabledReasons != 0 withName:@"_widgetHitTestingDisabledReasons"];
  }

  if ([(SBHTodayViewController *)self _shouldKeepIconImageViewControllersStatic])
  {
    v17 = [v5 appendObject:self->_keepStaticAssertions withName:@"_keepStaticAssertions"];
  }

  return v5;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (SBHTodayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFOverlayDismissalDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (CGPoint)scrollingBeginningOffset
{
  x = self->_scrollingBeginningOffset.x;
  y = self->_scrollingBeginningOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end