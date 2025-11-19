@interface SBHWidgetStackViewController
+ (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)a3 widgetViewController:(id)a4;
- (BOOL)_alwaysShowStackBorder;
- (BOOL)_alwaysShowStackPageControl;
- (BOOL)_containerRequiresClippingToBoundsForWidget:(id)a3;
- (BOOL)_createViewControllerForWidgetIfNecessary:(id)a3 usingIconImageInfo:(SBIconImageInfo *)a4;
- (BOOL)_insetWidgetsForTrackingAppearance;
- (BOOL)_isContentViewExtendingOutsideBounds;
- (BOOL)_isScrollViewTracking;
- (BOOL)_scrollToActiveWidgetAnimated:(BOOL)a3;
- (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)a3;
- (BOOL)_shouldHideWidgetWithUniqueIdentifier:(id)a3;
- (BOOL)isWidgetHitTestingDisabled;
- (BOOL)wantsCaptureOnlyBackgroundView;
- (CGPoint)_restingContentOffset;
- (CGRect)visibleBounds;
- (CGSize)_scrollViewContentSize;
- (NSArray)applicationShortcutItems;
- (NSArray)widgetViewControllers;
- (SBHWidgetStackViewController)initWithIcon:(id)a3 iconListLayoutProvider:(id)a4;
- (SBHWidgetStackViewController)initWithIcon:(id)a3 iconListLayoutProvider:(id)a4 widgetSettings:(id)a5;
- (SBHWidgetStackViewControllerDataSource)dataSource;
- (SBHWidgetStackViewControllerDelegate)delegate;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (SBIconViewCustomImageViewHosting)host;
- (UIEdgeInsets)minimumPreferredEdgeInsetsForContextMenu;
- (UIView)snapshotView;
- (UIView)springLoadingEffectTargetView;
- (UIViewController)currentWidgetViewController;
- (id)_backgroundColorForWidgetWithDistanceFromRestingContentOffset:(double)a3;
- (id)_createBackgroundView;
- (id)_disableImageUpdatesForReason:(id)a3 animateChangesUponInvalidation:(BOOL)a4;
- (id)_widgetContainerViewControllersForListLayoutProvider:(id)a3;
- (id)_widgetContextMenuController;
- (id)_widgetWithUniqueIdentifier:(id)a3;
- (id)backdropGroupNameForActiveDataSource:(id)a3;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)effectiveIconImageAppearance;
- (id)sbh_underlyingAvocadoHostViewControllers;
- (id)sourceBackgroundView:(id)a3;
- (id)sourceView;
- (int64_t)_newActiveWidgetIndexForContentOffset:(CGPoint)a3;
- (void)_configureBackgroundViewIfNecessary:(id)a3;
- (void)_createBackgroundViewIfNecessary:(BOOL)a3;
- (void)_decrementBackgroundAnimationCount;
- (void)_decrementWidgetScaleAnimationCount;
- (void)_decrementWidgetSnapshotAnimationCount;
- (void)_handleInstalledAppsChanged:(id)a3;
- (void)_incrementBackgroundAnimationCount;
- (void)_incrementWidgetScaleAnimationCount;
- (void)_layoutWithAnimationUpdateMode:(int64_t)a3;
- (void)_logAllViewControllers;
- (void)_removeWidget:(id)a3 animated:(BOOL)a4;
- (void)_removeWidget:(id)a3 widgetContainerViewControllers:(id)a4 animated:(BOOL)a5;
- (void)_removeWidgetContainerViewControllers:(id)a3 animated:(BOOL)a4;
- (void)_removeWidgetWithUniqueIdentifier:(id)a3 widgetContainerViewControllers:(id)a4 animated:(BOOL)a5;
- (void)_requireLayoutUponActivationForWidgetContainerViewController:(id)a3;
- (void)_restartPageControlTimerWithTimeInterval:(double)a3;
- (void)_setPageControlHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_setupStateCapture;
- (void)_teardownBackgroundView:(id)a3 contactDelegate:(BOOL)a4;
- (void)_teardownStateCapture;
- (void)_updateAccessibilityValue;
- (void)_updateActiveWidgetIndexAndScrollViewContentOffset;
- (void)_updateApproximateLayoutPositionForWidgetViewControllers;
- (void)_updateBackgroundViewWithAnimationUpdateMode:(int64_t)a3 allowingOutsetting:(BOOL)a4;
- (void)_updatePageControlWithAnimationUpdateMode:(int64_t)a3;
- (void)_updatePauseReasonForWidgetViewControllers;
- (void)_updatePresentationModeForWidgetViewControllers;
- (void)_updateScrollViewDelaysContentTouches;
- (void)_updateShowsSnapshotWhenDeactivatedForWidgetViewControllers;
- (void)_updateVisiblySettledForWidgetViewControllers;
- (void)_updateWidgetGlassGrouping;
- (void)_updateWidgetViewClippingAndBackgroundView;
- (void)_updateWidgetViewEdgeAntialiasing;
- (void)_updateWidgetViewHitTesting;
- (void)_updateWidgetViewStyleConfiguration;
- (void)_updateWidgetViewsWithAnimationUpdateMode:(int64_t)a3;
- (void)addCustomImageViewControllerObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)applyGlassIfDesiredToView:(id)a3 forIconImageAppearance:(id)a4 sourceView:(id)a5;
- (void)customImageViewControllerWantsLabelHiddenDidChange:(id)a3;
- (void)dealloc;
- (void)didSelectApplicationShortcutItem:(id)a3;
- (void)discardAllWidgetViewControllers;
- (void)enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock:(id)a3;
- (void)enumerateWidgetViewControllersUsingBlock:(id)a3;
- (void)evaluateBackground;
- (void)flashPageControlAnimated:(BOOL)a3 withTimeInterval:(double)a4;
- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4;
- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4;
- (void)leafIcon:(id)a3 didRemoveIconDataSource:(id)a4;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)resizeSnapshotsForWidgetContainerViewControllers:(id)a3 isFakeWidget:(BOOL)a4 reason:(id)a5;
- (void)scrollViewDidEndScrolling:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginScrolling:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setAlwaysShowsAsStack:(BOOL)a3 animated:(BOOL)a4;
- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)a3;
- (void)setBackgroundViewConfigurator:(id)a3;
- (void)setBackgroundViewProvider:(id)a3;
- (void)setBrightness:(double)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFixedPageControlOffset:(id)a3 animated:(BOOL)a4;
- (void)setForcesEdgeAntialiasing:(BOOL)a3;
- (void)setHost:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setImageViewAlignment:(unint64_t)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3;
- (void)setOverlapping:(BOOL)a3;
- (void)setOverrideIconImageAppearance:(id)a3;
- (void)setOverrideIconImageStyleConfiguration:(id)a3;
- (void)setPauseReasons:(unint64_t)a3;
- (void)setPresentationMode:(int64_t)a3;
- (void)setShowingContextMenu:(BOOL)a3;
- (void)setShowsSnapshotWhenDeactivated:(BOOL)a3;
- (void)setShowsSquareCorners:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setUserVisibilityStatus:(unint64_t)a3;
- (void)setWidgetIcon:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateImageAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)widgetContainerViewControllerContentViewControllerDidActivate:(id)a3;
- (void)widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration:(id)a3;
- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)a3 widgetContentIsReady:(BOOL)a4;
- (void)willShowContextMenuAtLocation:(CGPoint)a3;
@end

@implementation SBHWidgetStackViewController

- (void)_updateAccessibilityValue
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SBHWidgetStackViewController *)self widgetIcon];
  if ([v3 isWidgetStackIcon])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 iconDataSources];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) icon:v3 displayNameForLocation:@"SBIconLocationRoot"];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    containerView = self->_containerView;
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v4 componentsJoinedByString:{@", "}];
    v16 = [v14 stringWithFormat:@"widget-stack:<%@>", v15];
    [(UIView *)containerView setAccessibilityIdentifier:v16];
  }
}

- (void)_updateWidgetViewHitTesting
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_WIDGET_VIEW_HIT_TESTING", " isAnimation=YES ", buf, 2u);
  }

  v4 = [(SBHWidgetStackViewController *)self isWidgetHitTestingDisabled];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 view];
        [v12 bs_setHitTestingDisabled:v4];

        [v11 setInteractionDisabled:v4];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = SBLogWidgets();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_WIDGET_VIEW_HIT_TESTING", " isAnimation=YES ", buf, 2u);
  }
}

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v23 loadView];
  v3 = [(SBHWidgetStackViewController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:1];

  v5 = [(SBHWidgetStackViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v9, v11, v13}];
  containerView = self->_containerView;
  self->_containerView = v14;

  [(UIView *)self->_containerView setClipsToBounds:0];
  v16 = [(SBHWidgetStackViewController *)self view];
  [v16 addSubview:self->_containerView];

  v17 = [(BSUIScrollView *)[SBHWidgetStackScrollView alloc] initWithFrame:v7, v9, v11, v13];
  scrollView = self->_scrollView;
  self->_scrollView = v17;

  [(BSUIScrollView *)self->_scrollView setDelegate:self];
  [(SBHWidgetStackScrollView *)self->_scrollView setPagingEnabled:1];
  [(SBHWidgetStackScrollView *)self->_scrollView setBounces:1];
  [(SBHWidgetStackScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(SBHWidgetStackScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(SBHWidgetStackScrollView *)self->_scrollView setScrollsToTop:0];
  [(SBHWidgetStackScrollView *)self->_scrollView setClipsToBounds:0];
  [(SBHWidgetStackScrollView *)self->_scrollView _setAutoScrollEnabled:0];
  [(SBHWidgetStackScrollView *)self->_scrollView _setForwardsTouchesUpResponderChain:1];
  [(SBHWidgetStackScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIView *)self->_containerView addSubview:self->_scrollView];
  v19 = objc_alloc_init(MEMORY[0x1E69DCD10]);
  pageControl = self->_pageControl;
  self->_pageControl = v19;

  [(UIPageControl *)self->_pageControl setAlpha:0.0];
  [(UIPageControl *)self->_pageControl setDirection:3];
  [(UIPageControl *)self->_pageControl setHidesForSinglePage:1];
  [(UIPageControl *)self->_pageControl _setPreferredNumberOfVisibleIndicators:[(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack]];
  v21 = [(SBHWidgetStackViewController *)self view];
  [v21 addSubview:self->_pageControl];

  v22 = [(SBHWidgetStackViewController *)self view];
  [v22 addObserver:self forKeyPath:@"alpha" options:0 context:0];

  [(SBHWidgetStackViewController *)self _updateAccessibilityValue];
}

- (void)_incrementBackgroundAnimationCount
{
  backgroundAnimationCount = self->_backgroundAnimationCount;
  self->_backgroundAnimationCount = backgroundAnimationCount + 1;
  if (!backgroundAnimationCount)
  {
    [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];

    [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
  }
}

- (void)_updateScrollViewDelaysContentTouches
{
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) == 0 || [(BSUIScrollView *)self->_scrollView isScrolling]|| self->_widgetScaleAnimationCount != 0;
  scrollView = self->_scrollView;

  [(SBHWidgetStackScrollView *)scrollView setDelaysContentTouches:v3];
}

- (void)_setupStateCapture
{
  if (!self->_stateCaptureInvalidatable)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69E96A0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    objc_copyWeak(&v8, &location);
    v6 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
    self->_stateCaptureInvalidatable = v6;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_alwaysShowStackBorder
{
  v3 = [(SBHWidgetStackViewController *)self icon];
  if ([v3 isWidgetStackIcon])
  {
  }

  else
  {
    alwaysShowsAsStack = self->_alwaysShowsAsStack;

    if (!alwaysShowsAsStack)
    {
      return 0;
    }
  }

  if ([(SBHWidgetSettings *)self->_widgetSettings stackAlwaysShowsBorder]|| [(SBHWidgetStackViewController *)self _insetWidgetsForTrackingAppearance]|| self->_editing || self->_showingContextMenu)
  {
    return 1;
  }

  if (!self->_showStackBorderWhenShowingPageControl)
  {
    return 0;
  }

  [(UIPageControl *)self->_pageControl alpha];

  return BSFloatIsOne();
}

- (BOOL)_insetWidgetsForTrackingAppearance
{
  v3 = [(SBHWidgetStackViewController *)self icon];
  if ([v3 isWidgetStackIcon])
  {
  }

  else
  {
    alwaysShowsAsStack = self->_alwaysShowsAsStack;

    if (!alwaysShowsAsStack)
    {
      return 0;
    }
  }

  if ([(SBHWidgetStackScrollView *)self->_scrollView isTracking]&& ([(UIPageControl *)self->_pageControl alpha], v5 > 0.0))
  {
    return 1;
  }

  else
  {
    return self->_alwaysShowsAsStack;
  }
}

- (void)_updateWidgetViewClippingAndBackgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {
    v4 = 1;
  }

  else
  {
    v4 = WeakRetained == 0;
  }

  if (!v4)
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS_CLIPPING_AND_BACKGROUND_VIEW", " isAnimation=YES ", buf, 2u);
    }

    if (self->_widgetScaleAnimationCount || self->_backgroundAnimationCount || [(BSUIScrollView *)self->_scrollView isScrolling]|| self->_overlapping || [(SBHWidgetStackViewController *)self _alwaysShowStackBorder]|| [(SBHWidgetStackViewController *)self _insetWidgetsForTrackingAppearance])
    {
      [(SBHWidgetStackViewController *)self _createBackgroundViewIfNecessary:1];
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = [(SBHWidgetStackViewController *)self clipsWidgetsToViewBounds];
    v8 = [(SBHWidgetStackViewController *)self _showAdjacentWidgets];
    v9 = [(SBHWidgetStackViewController *)self _isContentViewExtendingOutsideBounds];
    if (v7)
    {
      v10 = v8 | (v9 && self->_widgetSnapshotAnimationCount == 0);
    }

    else
    {
      v10 = 0;
    }

    [(UIView *)self->_containerView setClipsToBounds:v10];
    [(UIView *)self->_backgroundView setHidden:v6];
    v11 = SBLogWidgets();
    if (os_signpost_enabled(v11))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS_CLIPPING_AND_BACKGROUND_VIEW", " isAnimation=YES ", v12, 2u);
    }
  }
}

- (BOOL)_isContentViewExtendingOutsideBounds
{
  v3 = [(SBHWidgetStackViewController *)self traitCollection];
  [v3 displayScale];

  v4 = [(SBHWidgetStackViewController *)self view];
  [v4 bounds];

  [(SBHWidgetStackViewController *)self iconImageInfo];
  BSRectWithSize();
  UIRectIntegralWithScale();
  v6 = v5;
  v8 = v7;
  UIRectIntegralWithScale();
  return v10 > v6 || v9 > v8;
}

- (BOOL)isWidgetHitTestingDisabled
{
  if (self->_editing || self->_showingContextMenu || !self->_userInteractionEnabled || [(BSUIScrollView *)self->_scrollView isScrolling]|| self->_widgetScaleAnimationCount)
  {
    return 1;
  }

  widgetSettings = self->_widgetSettings;

  return [(SBHWidgetSettings *)widgetSettings isHitTestingDisabled];
}

- (void)_decrementBackgroundAnimationCount
{
  backgroundAnimationCount = self->_backgroundAnimationCount;
  if (backgroundAnimationCount)
  {
    v4 = backgroundAnimationCount - 1;
    self->_backgroundAnimationCount = v4;
    if (!v4)
    {
      [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];

      [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
    }
  }
}

- (CGSize)_scrollViewContentSize
{
  [(SBHWidgetStackViewController *)self _pageSize];
  v4 = v3 * 3.0;
  result.height = v4;
  result.width = v2;
  return result;
}

- (CGPoint)_restingContentOffset
{
  v27 = *MEMORY[0x1E69E9840];
  [(SBHWidgetStackViewController *)self _pageSize];
  v4 = v3;
  v6 = v5;
  [(SBHWidgetStackViewController *)self _scrollViewContentSize];
  v8 = v7;
  v10 = v9;
  v11 = v6 * round((v9 - v6) * 0.5 / v6);
  v12 = SBLogWidgets();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v28.x = 0.0;
    v28.y = v11;
    v14 = NSStringFromCGPoint(v28);
    v29.width = v4;
    v29.height = v6;
    v15 = NSStringFromCGSize(v29);
    v30.width = v8;
    v30.height = v10;
    v16 = NSStringFromCGSize(v30);
    v19 = 138544130;
    v20 = logIdentifier;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@> Scroll view _restingContentOffset:%@ for pageSize:%@ contentSize:%@", &v19, 0x2Au);
  }

  v17 = 0.0;
  v18 = v11;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_updateVisiblySettledForWidgetViewControllers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_VISIBLY_SETTLED_FOR_WIDGET_VIEW_CONTROLLERS", " isAnimation=YES ", buf, 2u);
  }

  v4 = [(SBHWidgetStackViewController *)self userVisibilityStatus];
  if (v4 == 3)
  {
    if ([(BSUIScrollView *)self->_scrollView isScrolling])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setUserVisibilityStatus:v4];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = SBLogWidgets();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_VISIBLY_SETTLED_FOR_WIDGET_VIEW_CONTROLLERS", " isAnimation=YES ", buf, 2u);
  }
}

- (void)_updatePresentationModeForWidgetViewControllers
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = SBLogWidgets();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          logIdentifier = self->_logIdentifier;
          v11 = NSStringFromSBIconViewCustomIconImageViewControllerPresentationMode(self->_presentationMode);
          v12 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
          *buf = 138543874;
          v19 = logIdentifier;
          v20 = 2112;
          v21 = v11;
          v22 = 2112;
          v23 = v12;
          _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "<%{public}@> Update presentation mode (%@) for widget view controllers: %@", buf, 0x20u);
        }

        [v9 setPresentationMode:self->_presentationMode];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)_updateShowsSnapshotWhenDeactivatedForWidgetViewControllers
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_widgetSnapshotAnimationCount)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setShowsSnapshotWhenDeactivated:self->_showsSnapshotWhenDeactivated];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updatePauseReasonForWidgetViewControllers
{
  v14 = *MEMORY[0x1E69E9840];
  pauseReasons = self->_pauseReasons;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPaused:pauseReasons != 0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateApproximateLayoutPositionForWidgetViewControllers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SBHWidgetStackViewController *)self approximateLayoutPosition];
  v5 = v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setApproximateLayoutPosition:{v3, v5}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (SBIconApproximateLayoutPosition)approximateLayoutPosition
{
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  horizontal = self->_approximateLayoutPosition.horizontal;
  vertical = p_approximateLayoutPosition->vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)_updateWidgetViewEdgeAntialiasing
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = SBLogWidgets();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_WIDGET_VIEW_EDGE_ANTIALIASING", " isAnimation=YES ", buf, 2u);
  }

  v4 = self->_editing || self->_forcesEdgeAntialiasing;
  if (!self->_forcesEdgeAntialiasing)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(SBLeafIcon *)self->_icon iconDataSources];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 iconSupportsRasterization:self->_icon];
          }

          else
          {
            v11 = 1;
          }

          v12 = [(SBHWidgetStackViewController *)self _shouldDrawSystemBackgroundMaterialForWidget:v10];
          if (self->_editing)
          {
            v13 = v11 & !v12;
          }

          else
          {
            v13 = 0;
          }

          v4 &= v13;
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  v14 = [(SBHWidgetStackViewController *)self traitCollection];
  [v14 displayScale];
  v16 = v15;

  v17 = [(SBHWidgetStackViewController *)self scrollView];
  v18 = [v17 layer];

  [v18 setAllowsEdgeAntialiasing:v4 & 1];
  [v18 setShouldRasterize:v4 & 1];
  [v18 setRasterizationScale:v16];
  v19 = [(SBHWidgetStackViewController *)self dimmingView];
  v20 = [v19 layer];

  [v20 setAllowsEdgeAntialiasing:v4 & 1];
  [v20 setShouldRasterize:v4 & 1];
  [v20 setRasterizationScale:v16];
  v21 = SBLogWidgets();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_UPDATE_WIDGET_VIEW_EDGE_ANTIALIASING", " isAnimation=YES ", buf, 2u);
  }
}

- (void)_updateActiveWidgetIndexAndScrollViewContentOffset
{
  [(SBHWidgetStackScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v5 = [(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:?];
  v18 = [(SBLeafIcon *)self->_icon iconDataSources];
  v6 = [v18 count];
  if (v5 < v6)
  {
    v7 = [v18 objectAtIndex:v5];
    activeWidget = self->_activeWidget;
    self->_activeWidget = v7;
  }

  if ([(UIPageControl *)self->_pageControl numberOfPages]!= v6)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:v6];
  }

  if ([(UIPageControl *)self->_pageControl currentPage]!= v5)
  {
    [(UIPageControl *)self->_pageControl setCurrentPage:v5];
  }

  [(SBHWidgetStackViewController *)self _pageSize];
  v10 = v9;
  [(SBHWidgetStackViewController *)self _restingContentOffset];
  v12 = v11;
  v14 = v13;
  v15 = fmod(v4, v10);
  if (v15 > v10 * 0.5)
  {
    v15 = v15 - v10;
  }

  [(SBHWidgetStackScrollView *)self->_scrollView setContentOffset:v12, v14 + v15];
  v16 = [(SBHWidgetStackViewController *)self view];
  [v16 setNeedsLayout];

  if (([(SBHWidgetStackScrollView *)self->_scrollView isScrollAnimating]& 1) == 0)
  {
    v17 = [(SBHWidgetStackViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v17 widgetStackViewController:self didActivateDataSource:self->_activeWidget fromUserInteraction:{-[SBHWidgetStackScrollView isTracking](self->_scrollView, "isTracking")}];
    }
  }
}

- (SBHWidgetStackViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_alwaysShowStackPageControl
{
  if (self->_alwaysShowsAsStack)
  {
    return 1;
  }

  else
  {
    return [(SBHWidgetSettings *)self->_widgetSettings stackAlwaysShowsPageControl]|| self->_editing || self->_showingContextMenu;
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v4 viewWillLayoutSubviews];
  if ([(BSUIScrollView *)self->_scrollView isScrolling])
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:v3];
}

- (NSArray)widgetViewControllers
{
  v3 = [(SBHWidgetStackViewController *)self widgetIcon];
  v4 = [v3 iconDataSources];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBHWidgetStackViewController_widgetViewControllers__block_invoke;
  v7[3] = &unk_1E808F678;
  v7[4] = self;
  v5 = [v4 bs_compactMap:v7];

  return v5;
}

id __53__SBHWidgetStackViewController_widgetViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) _effectiveWidgetContainerViewControllers];
  v5 = [v4 objectForKey:v3];
  v6 = [v5 widgetViewController];

  return v6;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v3 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  v4 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 cancelTouchesForCurrentEventInHostedContent];

  return v6;
}

- (SBIconViewCustomImageViewHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)discardAllWidgetViewControllers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__SBHWidgetStackViewController_discardAllWidgetViewControllers__block_invoke;
  v2[3] = &unk_1E808F830;
  v2[4] = self;
  [(SBHWidgetStackViewController *)self enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock:v2];
}

void __63__SBHWidgetStackViewController_discardAllWidgetViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _removeWidgetContainerViewControllers:v3 animated:0];
  [v3 removeAllObjects];
}

- (void)dealloc
{
  [(SBHWidgetStackViewController *)self _teardownStateCapture];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];

  v4 = [(SBHWidgetStackViewController *)self view];
  [v4 removeObserver:self forKeyPath:@"alpha"];

  [(SBLeafIcon *)self->_icon removeObserver:self];
  [(PTSettings *)self->_widgetSettings removeKeyObserver:self];
  v5.receiver = self;
  v5.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v5 dealloc];
}

- (void)_teardownStateCapture
{
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  if (stateCaptureInvalidatable)
  {
    [(BSInvalidatable *)stateCaptureInvalidatable invalidate];
    v4 = self->_stateCaptureInvalidatable;
    self->_stateCaptureInvalidatable = 0;
  }
}

- (id)sbh_underlyingAvocadoHostViewControllers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SBHWidgetStackViewController *)self widgetViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) sbh_underlyingAvocadoHostViewControllers];
        v10 = [v9 allObjects];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SBHWidgetStackViewController)initWithIcon:(id)a3 iconListLayoutProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBHHomeScreenDomain rootSettings];
  v9 = [v8 widgetSettings];
  v10 = [(SBHWidgetStackViewController *)self initWithIcon:v7 iconListLayoutProvider:v6 widgetSettings:v9];

  return v10;
}

- (SBHWidgetStackViewController)initWithIcon:(id)a3 iconListLayoutProvider:(id)a4 widgetSettings:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = SBHWidgetStackViewController;
  v12 = [(SBHWidgetStackViewController *)&v28 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_icon, a3);
    [v9 addObserver:v13];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@:%p", v16, v13];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v17;

    objc_storeStrong(&v13->_widgetSettings, a5);
    [(PTSettings *)v13->_widgetSettings addKeyObserver:v13];
    v13->_userInteractionEnabled = 1;
    v13->_showStackBorderWhenShowingPageControl = 0;
    v13->_flashPageControlOnNextAppearance = [(SBHWidgetSettings *)v13->_widgetSettings stackFlashesPageControlOnAppearance];
    v13->_clipsWidgetsToViewBounds = 1;
    v13->_preferredDirection = 0;
    v13->_backgroundViewFadeAnimationEnabled = 0;
    v13->_allowsGlassGrouping = 1;
    v19 = [v9 activeDataSource];
    activeWidget = v13->_activeWidget;
    v13->_activeWidget = v19;

    objc_storeStrong(&v13->_listLayoutProvider, a4);
    v13->_imageViewAlignment = 0;
    v13->_presentationMode = 2;
    v21 = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    animationSettings = v13->_animationSettings;
    v13->_animationSettings = v21;

    [(SBFFluidBehaviorSettings *)v13->_animationSettings setDampingRatio:1.0];
    [(SBFFluidBehaviorSettings *)v13->_animationSettings setResponse:0.35];
    v13->_automaticallyUpdatesVisiblySettled = 1;
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v13 selector:sel__handleInstalledAppsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    [(SBHWidgetStackViewController *)v13 _setupStateCapture];
    v24 = objc_opt_self();
    v29[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v26 = [(SBHWidgetStackViewController *)v13 registerForTraitChanges:v25 withAction:sel__updateWidgetViewEdgeAntialiasing];
  }

  return v13;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewWillAppear", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v7 viewWillAppear:v3];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v19 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewIsAppearing", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v16 viewIsAppearing:v3];
  [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SBHWidgetStackViewController *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:1 animated:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:2];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v19 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidAppear", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v16 viewDidAppear:v3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SBHWidgetStackViewController *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:3];
  }

  if (self->_flashPageControlOnNextAppearance)
  {
    [(SBHWidgetStackViewController *)self _flashPageControlAnimated:1];
    self->_flashPageControlOnNextAppearance = 0;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v19 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewWillDisappear", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v16 viewWillDisappear:v3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SBHWidgetStackViewController *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:0 animated:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:2];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v20 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidDisappear", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v17 viewDidDisappear:v3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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

        [(SBHWidgetStackViewController *)self bs_endAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v11++) toVisible:0];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:1];
  }

  [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:1];
  self->_flashPageControlOnNextAppearance = [(SBHWidgetSettings *)self->_widgetSettings stackFlashesPageControlOnAppearance];
  [(SBHWidgetStackViewController *)self _teardownBackgroundView:self->_backgroundView contactDelegate:1];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (!v6)
    {
      v8 = @"NO";
    }

    *buf = 138543618;
    v11 = self;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidMoveToWindow (hasWindow=%@)", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v9 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
}

- (void)setForcesEdgeAntialiasing:(BOOL)a3
{
  if (self->_forcesEdgeAntialiasing != a3)
  {
    self->_forcesEdgeAntialiasing = a3;
    [(SBHWidgetStackViewController *)self _updateWidgetViewEdgeAntialiasing];
  }
}

- (void)setShowsSnapshotWhenDeactivated:(BOOL)a3
{
  if (self->_showsSnapshotWhenDeactivated != a3)
  {
    self->_showsSnapshotWhenDeactivated = a3;
    [(SBHWidgetStackViewController *)self _updateShowsSnapshotWhenDeactivatedForWidgetViewControllers];
  }
}

- (void)setFixedPageControlOffset:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_fixedPageControlOffset != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_fixedPageControlOffset, a3);
    if (v4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:v8];
    v7 = v9;
  }
}

- (void)setAlwaysShowsAsStack:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_alwaysShowsAsStack != a3)
  {
    v5 = a4;
    self->_alwaysShowsAsStack = a3;
    [(SBHWidgetStackViewController *)self _setPageControlHidden:!a3 animated:?];
    if (v5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:v7];
  }
}

- (UIViewController)currentWidgetViewController
{
  activeWidget = self->_activeWidget;
  if (activeWidget)
  {
    v4 = [(SBLeafIconDataSource *)activeWidget uniqueIdentifier];
    v5 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v6 = [v5 objectForKey:v4];

    v7 = [v6 widgetViewController];
    if ([v7 sbh_isMultiplexingViewController])
    {
      v8 = [v7 multiplexedViewController];

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateWidgetViewControllersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__SBHWidgetStackViewController_enumerateWidgetViewControllersUsingBlock___block_invoke;
  v7[3] = &unk_1E808F6A0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __73__SBHWidgetStackViewController_enumerateWidgetViewControllersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 widgetViewController];
  if ([v6 sbh_isMultiplexingViewController])
  {
    v4 = [v6 multiplexedViewController];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)flashPageControlAnimated:(BOOL)a3 withTimeInterval:(double)a4
{
  v5 = a3;
  v7 = [(SBHWidgetStackViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v7 widgetStackViewControllerCanFlashPageControl:self])
  {
    [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:v5];
    [(SBHWidgetStackViewController *)self _restartPageControlTimerWithTimeInterval:a4];
    if (objc_opt_respondsToSelector())
    {
      [v7 widgetStackViewControllerDidFlashPageControl:self];
    }
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

- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4
{
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:3, a4];
  [(SBHWidgetStackViewController *)self _updateAccessibilityValue];
  v5 = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 widgetStackViewControllerWidgetCountDidChange:self];
  }
}

- (void)leafIcon:(id)a3 didRemoveIconDataSource:(id)a4
{
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:3, a4];
  [(SBHWidgetStackViewController *)self _updateAccessibilityValue];
  v5 = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 widgetStackViewControllerWidgetCountDidChange:self];
  }
}

- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v19 = 138543618;
    v20 = logIdentifier;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> didChangeActiveDataSource:%{public}@", &v19, 0x16u);
  }

  if ([v6 isWidgetIcon])
  {
    v10 = v6;
    v11 = [v10 iconDataSources];
    v12 = [v11 containsObject:self->_activeWidget];
    if (self->_pauseReasons)
    {
      if ((v12 & 1) == 0)
      {
        [(SBHWidgetStackViewController *)self _removeWidget:self->_activeWidget animated:0];
      }

      v13 = [v10 activeDataSource];
      activeWidget = self->_activeWidget;
      self->_activeWidget = v13;

      pageControl = self->_pageControl;
      v16 = [v10 iconDataSources];
      -[UIPageControl setCurrentPage:](pageControl, "setCurrentPage:", [v16 indexOfObject:self->_activeWidget]);
    }

    else
    {
      if (v12)
      {
LABEL_11:
        [(SBHWidgetStackViewController *)self updateImageAnimated:1];
        [(SBHWidgetStackViewController *)self _updateAccessibilityValue];

        goto LABEL_12;
      }

      [(SBHWidgetStackViewController *)self _removeWidget:self->_activeWidget animated:1];
      v17 = [v10 activeDataSource];
      v16 = self->_activeWidget;
      self->_activeWidget = v17;
    }

    v18 = [(SBHWidgetStackViewController *)self view];
    [v18 setNeedsLayout];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    v13 = [(SBHWidgetStackViewController *)self view];
    v15 = [v13 layer];

    [v15 setCornerRadius:v7];
    [v15 setCornerCurve:*MEMORY[0x1E69796E8]];
    v14 = [(SBHWidgetStackViewController *)self view];
    [v14 setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v5 = a4;
    self->_editing = a3;
    [(SBHWidgetStackViewController *)self _flashPageControlAnimated:a4];
    if (v5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:v7];
  }
}

- (void)setWidgetIcon:(id)a3
{
  v5 = a3;
  icon = self->_icon;
  if (icon != v5)
  {
    v9 = v5;
    [(SBLeafIcon *)icon removeObserver:self];
    objc_storeStrong(&self->_icon, a3);
    [(SBLeafIcon *)v9 addObserver:self];
    v7 = [(SBLeafIcon *)v9 activeDataSource];
    activeWidget = self->_activeWidget;
    self->_activeWidget = v7;

    if (v9)
    {
      [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
    }

    icon = [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](icon, v5);
}

- (void)setListLayoutProvider:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_listLayoutProvider != v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
      }

      else
      {
        v6 = 0;
      }

      v7 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
      v8 = [v7 objectForKey:v6];

      v9 = [(SBHWidgetStackViewController *)self _widgetContainerViewControllersForListLayoutProvider:v4];
      [v9 bs_setSafeObject:v8 forKey:v6];
    }

    if (!self->_widgetContainerViewControllersToRemove)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      widgetContainerViewControllersToRemove = self->_widgetContainerViewControllersToRemove;
      self->_widgetContainerViewControllersToRemove = v10;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __54__SBHWidgetStackViewController_setListLayoutProvider___block_invoke;
    v22 = &unk_1E8088F18;
    v23 = self;
    v24 = v4;
    v12 = _Block_copy(&v19);
    v13 = [(NSMutableDictionary *)self->_widgetContainerViewControllersToRemove count:v19];
    v14 = SBLogWidgets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v26 = logIdentifier;
      v27 = 1026;
      v28 = v13 != 0;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@> received new iconListLayoutProvider. canReuseViewControllerFromLastFullyRenderedLayoutProvider: %{public}d", buf, 0x12u);
    }

    v16 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    if (v13)
    {
      v12[2](v12);
      v17 = [(NSMutableDictionary *)self->_widgetContainerViewControllersToRemove allValues];
      [(SBHWidgetStackViewController *)self resizeSnapshotsForWidgetContainerViewControllers:v17 isFakeWidget:isKindOfClass & 1 reason:@"List Layout Provider Change Animation"];

      [(SBHWidgetStackViewController *)self _removeWidgetContainerViewControllers:v16 animated:0];
      v18 = self->_widgetContainerViewControllersToRemove;
      self->_widgetContainerViewControllersToRemove = 0;
    }

    else
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_storeStrong(&self->_widgetContainerViewControllersToRemove, v16);
      }

      v12[2](v12);
      v18 = [v16 allValues];
      [(SBHWidgetStackViewController *)self resizeSnapshotsForWidgetContainerViewControllers:v18 isFakeWidget:isKindOfClass & 1 reason:@"List Layout Provider Change Animation"];
    }
  }
}

void __54__SBHWidgetStackViewController_setListLayoutProvider___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SBLogWidgets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 1024);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@> iconListLayoutProvider changed to <%{public}@>", &v5, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 1136), *(a1 + 40));
}

- (void)resizeSnapshotsForWidgetContainerViewControllers:(id)a3 isFakeWidget:(BOOL)a4 reason:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = SBLogWidgets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543618;
    v17 = logIdentifier;
    v18 = 2082;
    v19 = "[SBHWidgetStackViewController resizeSnapshotsForWidgetContainerViewControllers:isFakeWidget:reason:]";
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; acquiring _imageUpdatesDisabledForNewListLayoutProviderAssertion", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke;
  v13[3] = &unk_1E808F6C8;
  v15 = a4;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v9 enumerateObjectsUsingBlock:v13];
}

void __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 buildSnapshotResizeCoordinatorForSnapshotSize:(*(a1 + 48) & 1) == 0 expectNewViewController:{*(*(a1 + 32) + 1352), *(*(a1 + 32) + 1360)}];
  if (v3)
  {
    v4 = [*(a1 + 32) disableImageUpdatesForReason:*(a1 + 40)];
    if (objc_opt_respondsToSelector())
    {
      [v3 setUpResize];
    }

    v5 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke_2;
    v10[3] = &unk_1E8088F18;
    v10[4] = *(a1 + 32);
    v11 = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke_3;
    v7[3] = &unk_1E808EF70;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v9 = v11;
    v6 = v4;
    [v5 animateWithDuration:v10 animations:v7 completion:0.3];
  }
}

uint64_t __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _incrementWidgetSnapshotAnimationCount];
  v2 = *(a1 + 40);

  return [v2 resize];
}

uint64_t __101__SBHWidgetStackViewController_resizeSnapshotsForWidgetContainerViewControllers_isFakeWidget_reason___block_invoke_3(id *a1)
{
  [a1[4] _decrementWidgetSnapshotAnimationCount];
  [a1[5] invalidate];
  v2 = *(a1[4] + 163);
  if ((objc_opt_respondsToSelector() & 1) != 0 && !v2)
  {
    [a1[6] finishResize];
  }

  v3 = a1[4];

  return [v3 _layoutWithAnimationUpdateMode:1];
}

- (void)setShowingContextMenu:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_showingContextMenu != a3)
  {
    v3 = a3;
    self->_showingContextMenu = a3;
    if (a3)
    {
      if (self->_imageUpdatesDisabledForContextMenuAssertion)
      {
LABEL_10:
        [(SBHWidgetStackViewController *)self _flashPageControlAnimated:1];
        [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:3];
        v11 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
        [v11 setShowingContextMenu:v3];

        return;
      }

      v5 = [(SBHWidgetStackViewController *)self _disableImageUpdatesForReason:@"SBHWidgetStackImageUpdatesDisabledForContextMenuReason" animateChangesUponInvalidation:1];
      imageUpdatesDisabledForContextMenuAssertion = self->_imageUpdatesDisabledForContextMenuAssertion;
      self->_imageUpdatesDisabledForContextMenuAssertion = v5;

      v7 = SBLogWidgets();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        logIdentifier = self->_logIdentifier;
        v12 = 138543618;
        v13 = logIdentifier;
        v14 = 2082;
        v15 = "[SBHWidgetStackViewController setShowingContextMenu:]";
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; acquiring _imageUpdatesDisabledForContextMenuAssertion", &v12, 0x16u);
      }
    }

    else
    {
      v9 = SBLogWidgets();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_logIdentifier;
        v12 = 138543618;
        v13 = v10;
        v14 = 2082;
        v15 = "[SBHWidgetStackViewController setShowingContextMenu:]";
        _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; invalidating _imageUpdatesDisabledForContextMenuAssertion", &v12, 0x16u);
      }

      [(BSInvalidatable *)self->_imageUpdatesDisabledForContextMenuAssertion invalidate];
      v7 = self->_imageUpdatesDisabledForContextMenuAssertion;
      self->_imageUpdatesDisabledForContextMenuAssertion = 0;
    }

    goto LABEL_10;
  }
}

- (UIEdgeInsets)minimumPreferredEdgeInsetsForContextMenu
{
  if ([(SBWidgetIcon *)self->_icon isWidgetStackIcon]|| self->_alwaysShowsAsStack || [(SBHWidgetSettings *)self->_widgetSettings stackAlwaysShowsPageControl])
  {
    [(UIPageControl *)self->_pageControl frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(SBHWidgetStackViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    if (CGRectGetMinX(v24) >= 0.0)
    {
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      CGRectGetMaxX(v26);
      v27.origin.x = v13;
      v27.origin.y = v15;
      v27.size.width = v17;
      v27.size.height = v19;
      CGRectGetWidth(v27);
    }

    else
    {
      v25.origin.x = v4;
      v25.origin.y = v6;
      v25.size.width = v8;
      v25.size.height = v10;
      CGRectGetMinX(v25);
    }

    UIEdgeInsetsMakeWithEdges();
  }

  else
  {
    v20 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)willShowContextMenuAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
    [v8 willShowContextMenuAtLocation:{x, y}];
  }
}

- (void)setOverlapping:(BOOL)a3
{
  if (self->_overlapping != a3)
  {
    self->_overlapping = a3;
    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:3];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  if (self->_userInteractionEnabled != a3)
  {
    self->_userInteractionEnabled = a3;
    [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
  }
}

- (void)evaluateBackground
{
  [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];
  [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
  [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary];

  [(SBHWidgetStackViewController *)self _updateWidgetViewStyleConfiguration];
}

- (BOOL)wantsCaptureOnlyBackgroundView
{
  if ([(SBWidgetIcon *)self->_icon isWidgetStackIcon])
  {
    return 1;
  }

  activeWidget = self->_activeWidget;

  return [(SBHWidgetStackViewController *)self _shouldDrawSystemBackgroundMaterialForWidget:activeWidget];
}

- (id)backdropGroupNameForActiveDataSource:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 initWithFormat:@"SBWidget-%@", v6];

  return v7;
}

- (void)setBackgroundViewProvider:(id)a3
{
  if (self->_backgroundViewProvider != a3)
  {
    v4 = [a3 copy];
    backgroundViewProvider = self->_backgroundViewProvider;
    self->_backgroundViewProvider = v4;

    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(SBHWidgetStackViewController *)self _teardownBackgroundView:backgroundView contactDelegate:1];
    }

    [(SBHWidgetStackViewController *)self _createBackgroundViewIfNecessary:1];
  }
}

- (void)setBackgroundViewConfigurator:(id)a3
{
  if (self->_backgroundViewConfigurator != a3)
  {
    v4 = [a3 copy];
    backgroundViewConfigurator = self->_backgroundViewConfigurator;
    self->_backgroundViewConfigurator = v4;

    if (!self->_backgroundViewConfigurator)
    {
      v6 = _Block_copy(self->_backgroundViewProvider);
      [(SBHWidgetStackViewController *)self setBackgroundViewProvider:0];
      [(SBHWidgetStackViewController *)self setBackgroundViewProvider:v6];
    }

    [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary];
  }
}

- (void)setBrightness:(double)a3
{
  if (self->_brightness != a3)
  {
    self->_brightness = a3;
    if (a3 < 1.0 && !self->_dimmingView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)self->_containerView bounds];
      v6 = [v5 initWithFrame:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = v6;

      [(UIView *)self->_dimmingView setAutoresizingMask:18];
      v8 = self->_dimmingView;
      v9 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v8 setBackgroundColor:v9];

      v10 = self->_dimmingView;
      [(SBHWidgetStackViewController *)self continuousCornerRadius];
      [(UIView *)v10 _setContinuousCornerRadius:?];
      [(UIView *)self->_containerView addSubview:self->_dimmingView];
    }

    v11 = [(SBHWidgetStackViewController *)self icon];
    IsOne = BSFloatIsOne();
    v13 = MEMORY[0x1E69DD250];
    v16[1] = 3221225472;
    v16[0] = MEMORY[0x1E69E9820];
    v16[2] = __46__SBHWidgetStackViewController_setBrightness___block_invoke;
    v16[3] = &unk_1E808A090;
    if (IsOne)
    {
      v14 = 0.3;
    }

    else
    {
      v14 = 0.0;
    }

    v16[4] = self;
    v17 = v11;
    v18 = a3;
    v15 = v11;
    [v13 animateWithDuration:v16 animations:v14];
  }
}

void __46__SBHWidgetStackViewController_setBrightness___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetSettings];
  v3 = 0.0;
  if ([v2 isHitTestingDisabled])
  {
    goto LABEL_12;
  }

  v4 = [*(a1 + 40) isLaunchEnabled];

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [*(a1 + 32) activeWidget];
  v2 = [v5 uniqueIdentifier];

  v6 = [*(a1 + 32) _effectiveWidgetContainerViewControllers];
  v7 = [v6 objectForKey:v2];

  if (([v7 containsInteractiveControls] & 1) == 0)
  {
    v8 = [*(a1 + 40) gridSizeClass];
    if (v8 != @"SBHIconGridSizeClassSmall")
    {
      v9 = [*(a1 + 40) gridSizeClass];
      if (([v9 isEqualToString:@"SBHIconGridSizeClassSmall"] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isWidgetHitTestingDisabled") & 1) == 0 && !objc_msgSend(*(a1 + 32), "alwaysShowsAsStack"))
      {
        v10 = [*(a1 + 32) highlightsAtAnySize];

        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
    v3 = (1.0 - *(a1 + 48)) * 0.5;
  }

LABEL_11:

LABEL_12:
LABEL_13:
  v11 = [*(a1 + 32) dimmingView];
  [v11 setAlpha:v3];
}

- (void)setUserVisibilityStatus:(unint64_t)a3
{
  if (self->_userVisibilityStatus != a3)
  {
    self->_userVisibilityStatus = a3;
    [(SBHWidgetStackViewController *)self _updateVisiblySettledForWidgetViewControllers];
  }
}

- (void)setPresentationMode:(int64_t)a3
{
  if (self->_presentationMode != a3)
  {
    self->_presentationMode = a3;
    [(SBHWidgetStackViewController *)self _updatePresentationModeForWidgetViewControllers];
  }
}

- (void)setPauseReasons:(unint64_t)a3
{
  if (self->_pauseReasons != a3)
  {
    self->_pauseReasons = a3;
    [(SBHWidgetStackViewController *)self _updatePauseReasonForWidgetViewControllers];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v9 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    pageControl = self->_pageControl;
    v6 = [v9 primaryColor];
    [(UIPageControl *)pageControl setCurrentPageIndicatorTintColor:v6];

    v7 = self->_pageControl;
    v8 = [v9 secondaryColor];
    [(UIPageControl *)v7 setPageIndicatorTintColor:v8];
  }
}

- (void)setImageViewAlignment:(unint64_t)a3
{
  if (self->_imageViewAlignment != a3)
  {
    self->_imageViewAlignment = a3;
    v5 = [(SBHWidgetStackViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(SBHWidgetStackViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  if (!SBIconApproximateLayoutPositionEqualToApproximateLayoutPosition(self->_approximateLayoutPosition.horizontal, self->_approximateLayoutPosition.vertical, a3.horizontal, a3.vertical))
  {
    p_approximateLayoutPosition->horizontal = horizontal;
    p_approximateLayoutPosition->vertical = vertical;

    [(SBHWidgetStackViewController *)self _updateApproximateLayoutPositionForWidgetViewControllers];
  }
}

- (NSArray)applicationShortcutItems
{
  v2 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  v3 = [v2 applicationShortcutItems];

  return v3;
}

- (void)didSelectApplicationShortcutItem:(id)a3
{
  v4 = a3;
  v5 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  [v5 didSelectApplicationShortcutItem:v4];
}

- (id)_widgetContextMenuController
{
  v3 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v4 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  v5 = [v3 objectForKey:v4];

  v6 = [v5 widgetContextMenuController];

  return v6;
}

- (void)addCustomImageViewControllerObserver:(id)a3
{
  v4 = a3;
  customImageViewObservers = self->_customImageViewObservers;
  v8 = v4;
  if (!customImageViewObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_customImageViewObservers;
    self->_customImageViewObservers = v6;

    v4 = v8;
    customImageViewObservers = self->_customImageViewObservers;
  }

  [(NSHashTable *)customImageViewObservers addObject:v4];
}

- (void)updateImageAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(SBHWidgetStackScrollView *)self->_scrollView isTracking]& 1) == 0 && ![(SBHWidgetStackViewController *)self isOverlapping])
  {

    [(SBHWidgetStackViewController *)self _scrollToActiveWidgetAnimated:v3];
  }
}

- (id)_disableImageUpdatesForReason:(id)a3 animateChangesUponInvalidation:(BOOL)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_imageUpdateDisableAssertions)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    imageUpdateDisableAssertions = self->_imageUpdateDisableAssertions;
    self->_imageUpdateDisableAssertions = v7;
  }

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__SBHWidgetStackViewController__disableImageUpdatesForReason_animateChangesUponInvalidation___block_invoke;
  v17 = &unk_1E808F6F0;
  objc_copyWeak(&v19, &location);
  v20 = a4;
  v18 = self;
  v10 = [v9 initWithIdentifier:@"widgetStack.disableImageUpdates" forReason:v6 invalidationBlock:&v14];
  v11 = SBLogWidgets();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543874;
    v23 = logIdentifier;
    v24 = 2082;
    v25 = "[SBHWidgetStackViewController _disableImageUpdatesForReason:animateChangesUponInvalidation:]";
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; acquiring 'widgetStack.disableImageUpdates' assertion %{public}@", buf, 0x20u);
  }

  [(NSHashTable *)self->_imageUpdateDisableAssertions addObject:v10, v14, v15, v16, v17];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v10;
}

void __93__SBHWidgetStackViewController__disableImageUpdatesForReason_animateChangesUponInvalidation___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained imageUpdateDisableAssertions];
    [v6 removeObject:v3];

    [v5 updateImageAnimated:*(a1 + 48)];
    [v5 _updateWidgetViewsWithAnimationUpdateMode:2];
    [v5 _updateWidgetViewClippingAndBackgroundView];
  }

  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1024);
    v9 = 138543874;
    v10 = v8;
    v11 = 2082;
    v12 = "[SBHWidgetStackViewController _disableImageUpdatesForReason:animateChangesUponInvalidation:]_block_invoke";
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; invalidating 'widgetStack.disableImageUpdates' assertion %{public}@", &v9, 0x20u);
  }
}

- (UIView)snapshotView
{
  [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2];
  v3 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  v4 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 snapshotView];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  return v6;
}

- (UIView)springLoadingEffectTargetView
{
  v3 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  v4 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 view];

  return v6;
}

- (BOOL)_scrollToActiveWidgetAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {
    return 0;
  }

  [(SBHWidgetStackScrollView *)self->_scrollView contentOffset];
  v5 = [(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:?];
  v6 = [(SBLeafIcon *)self->_icon iconDataSources];
  v7 = [(SBLeafIcon *)self->_icon activeDataSource];
  v8 = [v6 indexOfObject:v7];

  if (v8 == v5)
  {
    return 0;
  }

  self->_showStackBorderWhenShowingPageControl = 1;
  [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:1];
  if (!v3)
  {
    [(SBHWidgetStackViewController *)self _restartPageControlTimer];
    v17 = [(SBLeafIcon *)self->_icon activeDataSource];
    activeWidget = self->_activeWidget;
    self->_activeWidget = v17;

    [(UIPageControl *)self->_pageControl setCurrentPage:v8];
    scrollView = self->_scrollView;
    [(SBHWidgetStackViewController *)self _restingContentOffset];
    [(SBHWidgetStackScrollView *)scrollView setContentOffset:?];
    v20 = [(SBHWidgetStackViewController *)self view];
    [v20 setNeedsLayout];

    v21 = [(SBHWidgetStackViewController *)self view];
    [v21 layoutIfNeeded];

    return 1;
  }

  v10 = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  v28[0] = MEMORY[0x1E69E9820];
  v11 = v8 - v5;
  if (v8 <= v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v28[1] = 3221225472;
  v28[2] = __62__SBHWidgetStackViewController__scrollToActiveWidgetAnimated___block_invoke;
  v28[3] = &unk_1E808F718;
  if (v8 <= v5)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v28[4] = self;
  v28[5] = v13 + v11;
  v28[6] = v11 - v12;
  v29 = v8;
  v30 = v5;
  v14 = [(SBHWidgetStackViewController *)self preferredDirection];
  if (!v14)
  {
    v16 = 5;
    if (v29 < v30)
    {
      v16 = 6;
    }

    goto LABEL_19;
  }

  if (v14 == 1)
  {
    v16 = 5;
    goto LABEL_19;
  }

  v15 = 0.0;
  if (v14 == 2)
  {
    v16 = 6;
LABEL_19:
    v15 = v28[v16];
  }

  [(SBHWidgetStackScrollView *)self->_scrollView contentOffset];
  v23 = v22;
  v25 = v24;
  [(SBHWidgetStackViewController *)self _pageSize];
  v27 = v26 * round(v25 / v26) + v15 * v26;
  [(SBHWidgetStackScrollView *)self->_scrollView contentOffset];
  if (BSPointEqualToPoint())
  {
    return 0;
  }

  [(SBHWidgetStackScrollView *)self->_scrollView _setContentOffsetWithDecelerationAnimation:v23, v27];
  return 1;
}

uint64_t __62__SBHWidgetStackViewController__scrollToActiveWidgetAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredDirection];
  switch(v2)
  {
    case 0:
      v4 = 40;
      if (*(a1 + 56) < *(a1 + 64))
      {
        v4 = 48;
      }

      return *(a1 + v4);
    case 1:
      v4 = 40;
      return *(a1 + v4);
    case 2:
      v4 = 48;
      return *(a1 + v4);
  }

  return v3;
}

- (void)_removeWidgetContainerViewControllers:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__SBHWidgetStackViewController__removeWidgetContainerViewControllers_animated___block_invoke;
  v8[3] = &unk_1E808F740;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_removeWidget:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  [(SBHWidgetStackViewController *)self _removeWidget:v6 widgetContainerViewControllers:v7 animated:v4];
}

- (void)_removeWidget:(id)a3 widgetContainerViewControllers:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 uniqueIdentifier];
  [(SBHWidgetStackViewController *)self _removeWidgetWithUniqueIdentifier:v9 widgetContainerViewControllers:v8 animated:v5];
}

- (void)_removeWidgetWithUniqueIdentifier:(id)a3 widgetContainerViewControllers:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectForKey:v8];
  if (v10)
  {
    [v9 removeObjectForKey:v8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke;
    aBlock[3] = &unk_1E8088F88;
    aBlock[4] = self;
    v35 = v8;
    v11 = v10;
    v36 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v5)
    {
      v14 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)self->_containerView bounds];
      v15 = [v14 initWithFrame:?];
      [(UIView *)self->_containerView center];
      [v15 setCenter:?];
      [v15 setClipsToBounds:1];
      [v15 _setContinuousCornerRadius:self->_iconImageInfo.continuousCornerRadius];
      v16 = [v15 layer];
      [v16 setAllowsGroupOpacity:1];

      v17 = [(SBHWidgetStackViewController *)self view];
      [v17 addSubview:v15];

      v18 = [(SBHWidgetStackViewController *)self view];
      [v18 bounds];
      [v15 bounds];
      UIRectCenteredIntegralRect();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [v11 view];
      [v27 setFrame:{v20, v22, v24, v26}];
      v28 = MEMORY[0x1E69DD250];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke_101;
      v33[3] = &unk_1E8088C90;
      v33[4] = self;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke_2;
      v30[3] = &unk_1E808F768;
      v31 = v15;
      v32 = v13;
      v29 = v15;
      [v28 animateWithDuration:v33 animations:v30 completion:0.4];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

void __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SBLogWidgets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 1024);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@> Removing widget with unique identifier %{public}@", &v8, 0x16u);
  }

  [*(a1 + 48) setUserVisibilityStatus:1];
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 48)];
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) widgetViewController];
    [v5 widgetStackViewController:v6 didRemoveViewController:v7];
  }
}

uint64_t __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)setOverrideIconImageAppearance:(id)a3
{
  v4 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [v4 copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v5;

    v7 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBHWidgetStackViewController_setOverrideIconImageAppearance___block_invoke;
    v8[3] = &unk_1E808F790;
    v9 = v4;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)a3
{
  v4 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [v4 copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v5;

    v7 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__SBHWidgetStackViewController_setOverrideIconImageStyleConfiguration___block_invoke;
    v8[3] = &unk_1E808F790;
    v9 = v4;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (id)effectiveIconImageAppearance
{
  v3 = [(SBHWidgetStackViewController *)self overrideIconImageAppearance];
  v4 = [(SBHWidgetStackViewController *)self overrideIconImageStyleConfiguration];
  v5 = [(SBHWidgetStackViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v5 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];
  v8 = [v7 widgetAppearanceWithUserInterfaceStyle:v6];

  return v8;
}

- (void)setHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_host, obj);
    if (obj)
    {
      v5 = [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2];
    }

    else
    {
      v5 = [(SBHWidgetStackViewController *)self discardAllWidgetViewControllers];
    }

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)prepareForReuse
{
  [(SBHWidgetStackViewController *)self _teardownBackgroundView:self->_backgroundView contactDelegate:1];
  [(SBHWidgetStackViewController *)self setDataSource:0];
  [(SBHWidgetStackViewController *)self setDelegate:0];
  [(SBHWidgetStackViewController *)self setAlwaysShowsAsStack:0];
  [(SBHWidgetStackViewController *)self setHighlightsAtAnySize:0];
  [(SBHWidgetStackViewController *)self setClipsWidgetsToViewBounds:1];
  [(SBHWidgetStackViewController *)self setPreferredDirection:0];
  [(SBHWidgetStackViewController *)self setForcesVisible:0];
  [(SBHWidgetStackViewController *)self setOverrideIconImageAppearance:0];
  [(SBHWidgetStackViewController *)self setOverrideIconImageStyleConfiguration:0];
  [(SBHWidgetStackViewController *)self setUserInteractionEnabled:1];
  [(SBHWidgetStackViewController *)self setOverlapping:0];
  [(SBHWidgetStackViewController *)self setBackgroundViewProvider:0];
  [(SBHWidgetStackViewController *)self setBackgroundViewConfigurator:0];
  [(SBHWidgetStackViewController *)self setAutomaticallyUpdatesVisiblySettled:1];
  [(SBHWidgetStackViewController *)self setBrightness:1.0];
  [(SBHWidgetStackViewController *)self setUserVisibilityStatus:1];
  [(SBHWidgetStackViewController *)self setPresentationMode:2];
  [(SBHWidgetStackViewController *)self setPauseReasons:0];
  [(SBHWidgetStackViewController *)self setApproximateLayoutPosition:0, 0];
  [(SBHWidgetStackViewController *)self setWidgetIcon:0];
  [(SBHWidgetStackViewController *)self setListLayoutProvider:0];
  [(SBHWidgetStackViewController *)self discardAllWidgetViewControllers];
  observers = self->_observers;

  [(NSHashTable *)observers removeAllObjects];
}

- (id)sourceView
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  activeWidget = self->_activeWidget;
  if (activeWidget)
  {
    [(SBHWidgetStackViewController *)self iconImageInfo];
    v5 = ![(SBHWidgetStackViewController *)self _createViewControllerForWidgetIfNecessary:activeWidget usingIconImageInfo:?];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 objectForKey:v3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 snapshotViewExcludingGlassBackgroundEffects:1];
  if (v9 && [(SBHWidgetStackViewController *)self _shouldDrawSystemBackgroundMaterialForWidget:self->_activeWidget])
  {
    objc_setAssociatedObject(v9, "SBHTransparentWidgetKey", MEMORY[0x1E695E118], 3);
  }

  if ((v5 & 1) == 0)
  {
    v10 = SBLogWidgets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v18 = 138543874;
      v19 = logIdentifier;
      v20 = 2082;
      v21 = "[SBHWidgetStackViewController sourceView]";
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; view controller '%{public}@' didn't exist; we need to remove it now.", &v18, 0x20u);
    }

    [(SBHWidgetStackViewController *)self bs_removeChildViewController:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [v8 widgetViewController];
    [WeakRetained widgetStackViewController:self didRemoveViewController:v13];

    [v7 removeObjectForKey:v3];
  }

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v14 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v9 setBackgroundColor:v14];

    v15 = SBLogWidgets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_logIdentifier;
      v18 = 138543618;
      v19 = v16;
      v20 = 2082;
      v21 = "[SBHWidgetStackViewController sourceView]";
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s; returning blank source view", &v18, 0x16u);
    }
  }

  return v9;
}

- (id)sourceBackgroundView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && (objc_getAssociatedObject(v4, "SBHTransparentWidgetKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLValue], v6, v7))
  {
    v8 = SBLogWidgets();
    if (os_signpost_enabled(v8))
    {
      logIdentifier = self->_logIdentifier;
      v13 = 138543362;
      v14 = logIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", "%{public}@", &v13, 0xCu);
    }

    v10 = [(SBHWidgetStackViewController *)self _createBackgroundView];
    [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary:v10];
    v11 = SBLogWidgets();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", " isAnimation=YES ", &v13, 2u);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyGlassIfDesiredToView:(id)a3 forIconImageAppearance:(id)a4 sourceView:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = [(SBHWidgetStackViewController *)self activeWidget];
  if (([v7 hasGlass] & 1) != 0 || -[SBHWidgetStackViewController _shouldDrawSystemBackgroundMaterialForWidget:](self, "_shouldDrawSystemBackgroundMaterialForWidget:", v8))
  {
    v9 = [v7 tintColor];
    [v10 sbh_applyWidgetGlassWithTintColor:v9 userInterfaceStyle:objc_msgSend(v7 allowingGrouping:"iconGlassUserInterfaceStyle") boostsWhitePoint:1 meshed:{0, 1}];
  }

  else
  {
    [v10 sbh_removeGlass];
  }
}

- (CGRect)visibleBounds
{
  [(SBHWidgetStackViewController *)self iconImageInfo];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)setShowsSquareCorners:(BOOL)a3
{
  if (self->_showsSquareCorners != a3)
  {
    self->_showsSquareCorners = a3;
    [(UIView *)self->_backgroundView setClipsToBounds:!a3];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v14 = a3;
  [(SBHWidgetStackViewController *)self _pageSize];
  v5 = v4;
  [(SBHWidgetStackViewController *)self _scrollViewContentSize];
  v7 = v6;
  [v14 contentOffset];
  v10 = v9;
  if (v8 >= 0.0 && v8 <= v7 - v5)
  {
    v12 = v8;
    if ([v14 isScrollAnimating])
    {
      [(UIPageControl *)self->_pageControl setCurrentPage:[(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:v10, v12]];
    }

    v13 = [(SBHWidgetStackViewController *)self view];
    [v13 setNeedsLayout];
  }

  else
  {
    [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  }
}

- (void)scrollViewWillBeginScrolling:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
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

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 widgetStackViewControllerWillBeginScrolling:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v4 sbh_createGlassGroup];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  if (!self->_scrollingTouchCancellationAssertion)
  {
    v4 = [(SBHWidgetStackViewController *)self cancelTouchesForCurrentEventInHostedContent];
    scrollingTouchCancellationAssertion = self->_scrollingTouchCancellationAssertion;
    self->_scrollingTouchCancellationAssertion = v4;
  }

  self->_showStackBorderWhenShowingPageControl = 1;

  [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:1];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v13 = a3;
  scrollingTouchCancellationAssertion = self->_scrollingTouchCancellationAssertion;
  if (scrollingTouchCancellationAssertion)
  {
    [(BSInvalidatable *)scrollingTouchCancellationAssertion invalidate];
    v8 = self->_scrollingTouchCancellationAssertion;
    self->_scrollingTouchCancellationAssertion = 0;
  }

  v9 = [(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:a5->x, a5->y];
  [(UIPageControl *)self->_pageControl setCurrentPage:v9];
  v10 = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(SBLeafIcon *)self->_icon iconDataSources];
    v12 = [v11 objectAtIndex:v9];
    [v10 widgetStackViewController:self didActivateDataSource:v12 fromUserInteraction:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v3 = a3;
  if ([v3 isScrollAnimating])
  {
    [v3 stopScrollingAndZooming];
  }
}

- (void)scrollViewDidEndScrolling:(id)a3
{
  [a3 sbh_removeGlass];
  [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  [(SBHWidgetStackViewController *)self _restartPageControlTimer];

  [(SBHWidgetStackViewController *)self _updateWidgetViewsWithAnimationUpdateMode:3];
}

- (void)customImageViewControllerWantsLabelHiddenDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543618;
    v18 = logIdentifier;
    v19 = 2082;
    v20 = "[SBHWidgetStackViewController customImageViewControllerWantsLabelHiddenDidChange:]";
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_customImageViewObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 customImageViewControllerWantsLabelHiddenDidChange:{self, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)widgetContainerViewControllerContentViewControllerDidActivate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v10 = 138543618;
    v11 = logIdentifier;
    v12 = 2082;
    v13 = "[SBHWidgetStackViewController widgetContainerViewControllerContentViewControllerDidActivate:]";
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s", &v10, 0x16u);
  }

  if ([(NSHashTable *)self->_containerViewControllersRequiringLayoutUponActivation containsObject:v4])
  {
    [(NSHashTable *)self->_containerViewControllersRequiringLayoutUponActivation removeObject:v4];
    v7 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v8 = [v7 allValues];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:1];
    }
  }
}

- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)a3 widgetContentIsReady:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543874;
    v16 = logIdentifier;
    v17 = 2082;
    v18 = "[SBHWidgetStackViewController widgetContainerViewControllerInitialWidgetContentReadinessChanged:widgetContentIsReady:]";
    v19 = 1026;
    v20 = v4;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s. Widget content is ready? %{public}d", buf, 0x1Cu);
  }

  v9 = self->_widgetContainerViewControllersToRemove;
  if ([(NSMutableDictionary *)v9 count])
  {
    if (v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3000000000;
    }

    v11 = dispatch_time(0, v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__SBHWidgetStackViewController_widgetContainerViewControllerInitialWidgetContentReadinessChanged_widgetContentIsReady___block_invoke;
    block[3] = &unk_1E8088F88;
    block[4] = self;
    v13 = v9;
    v14 = v6;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }
}

void __119__SBHWidgetStackViewController_widgetContainerViewControllerInitialWidgetContentReadinessChanged_widgetContentIsReady___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeWidgetContainerViewControllers:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1264);
  *(v2 + 1264) = 0;

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [v4 view];
    [v5 setHidden:0];
  }
}

- (void)widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration:(id)a3
{
  v5 = a3;
  if (self->_overlapping || [(BSUIScrollView *)self->_scrollView isScrolling]|| [(SBHWidgetStackViewController *)self _alwaysShowStackBorder])
  {
    if (!self->_backgroundView)
    {
      [(SBHWidgetStackViewController *)self _createBackgroundViewIfNecessary:0];
    }
  }

  else
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(SBHWidgetStackViewController *)self _teardownBackgroundView:backgroundView contactDelegate:1];
    }
  }
}

- (void)_requireLayoutUponActivationForWidgetContainerViewController:(id)a3
{
  v10 = a3;
  v4 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [v4 allValues];
  v6 = [v5 containsObject:v10];

  if (v6)
  {
    containerViewControllersRequiringLayoutUponActivation = self->_containerViewControllersRequiringLayoutUponActivation;
    if (!containerViewControllersRequiringLayoutUponActivation)
    {
      v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v9 = self->_containerViewControllersRequiringLayoutUponActivation;
      self->_containerViewControllersRequiringLayoutUponActivation = v8;

      containerViewControllersRequiringLayoutUponActivation = self->_containerViewControllersRequiringLayoutUponActivation;
    }

    [(NSHashTable *)containerViewControllersRequiringLayoutUponActivation addObject:v10];
  }
}

- (BOOL)_shouldHideWidgetWithUniqueIdentifier:(id)a3
{
  widgetContainerViewControllersToRemove = self->_widgetContainerViewControllersToRemove;
  v4 = a3;
  v5 = [(NSMutableDictionary *)widgetContainerViewControllersToRemove allKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)_createViewControllerForWidgetIfNecessary:(id)a3 usingIconImageInfo:(SBIconImageInfo *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v15 = [v13 uniqueIdentifier];
  v16 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__19;
  v51 = __Block_byref_object_dispose__19;
  v52 = [v16 objectForKey:v15];
  v17 = v48[5];
  if (!v17)
  {
    v20 = SBLogWidgets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBHWidgetStackViewController _createViewControllerForWidgetIfNecessary:usingIconImageInfo:];
    }

    v21 = [WeakRetained widgetStackViewController:self viewControllerForDataSource:v13];
    if (!v21 || self->_widgetSnapshotAnimationCount)
    {
      v19 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v22 = [(SBHWidgetStackViewController *)self widgetIcon];
    v23 = [v22 gridSizeClass];

    v24 = [WeakRetained widgetStackViewController:self containerApplicationNameForDataSource:v13];
    LOBYTE(v22) = [WeakRetained widgetStackViewController:self isDataSourceBlockedForScreenTimeExpiration:v13];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke;
    aBlock[3] = &unk_1E808F808;
    v41 = &v47;
    v25 = v21;
    v34 = v25;
    v35 = v13;
    v26 = v23;
    v36 = v26;
    v37 = self;
    v27 = v24;
    v38 = v27;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v39 = v15;
    v46 = v22;
    v40 = v16;
    v28 = _Block_copy(aBlock);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v25;
LABEL_12:
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_4;
      v31[3] = &unk_1E8089600;
      v32 = v28;
      [v29 performBatchUpdate:v31];

LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v25 multiplexedViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v29)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v28[2](v28);
    goto LABEL_19;
  }

  v18 = [v17 parentViewController];

  if (!v18)
  {
    [(SBHWidgetStackViewController *)self bs_addChildViewController:v48[5] withSuperview:self->_scrollView];
  }

  v19 = 0;
LABEL_21:
  _Block_object_dispose(&v47, 8);

  return v19;
}

void __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke(uint64_t a1)
{
  v2 = [[SBHWidgetContainerViewController alloc] initWithWidgetViewController:*(a1 + 32) widgetDataSource:*(a1 + 40) gridSizeClass:*(a1 + 48) iconImageInfo:*(a1 + 64) applicationName:1 delayConfiguration:*(*(a1 + 56) + 1352), *(*(a1 + 56) + 1360), *(*(a1 + 56) + 1368), *(*(a1 + 56) + 1376)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 88);
  v6 = *(*(v5 + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_2;
  v9[3] = &unk_1E808F7E0;
  v7 = *(a1 + 56);
  v14 = v5;
  v9[4] = v7;
  v8 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v17 = *(a1 + 128);
  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  [v6 performBatchedUpdate:v9];
}

void __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 72) + 8) + 40) parentViewController];

  if (!v2)
  {
    [*(a1 + 32) bs_addChildViewController:*(*(*(a1 + 72) + 8) + 40) withSuperview:*(*(a1 + 32) + 1224)];
  }

  [*(*(*(a1 + 72) + 8) + 40) setDelegate:*(a1 + 32)];
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v4 = [*(a1 + 32) overrideIconImageAppearance];
  [v3 setOverrideIconImageAppearance:v4];

  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = [*(a1 + 32) overrideIconImageStyleConfiguration];
  [v5 setOverrideIconImageStyleConfiguration:v6];

  v7 = [*(*(*(a1 + 72) + 8) + 40) view];
  v8 = *(*(a1 + 32) + 1224);
  v28 = *(a1 + 80);
  v9 = *(a1 + 104);
  v10 = [*(a1 + 32) _containerRequiresClippingToBoundsForWidget:*(a1 + 40)];
  v11 = MEMORY[0x1E69DD250];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_3;
  v21[3] = &unk_1E808F7B8;
  v12 = v7;
  v22 = v12;
  v25 = v28;
  v13 = v8;
  v26 = v9;
  v14 = *(a1 + 72);
  v23 = v13;
  v24 = v14;
  v27 = v10;
  [v11 performWithoutAnimation:v21];
  [v12 setHidden:{objc_msgSend(*(a1 + 32), "_shouldHideWidgetWithUniqueIdentifier:", *(a1 + 48))}];
  [*(*(*(a1 + 72) + 8) + 40) setBlockedForScreenTimeExpiration:*(a1 + 112)];
  [*(a1 + 56) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 48)];
  [*(*(a1 + 32) + 1224) addSubview:v12];
  [*(*(*(a1 + 72) + 8) + 40) updateStyleConfiguration];
  v15 = *(a1 + 64);
  v16 = objc_opt_class();
  v17 = v15;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v19 multiplexedViewController];

  if (!v20)
  {
    [*(a1 + 32) _requireLayoutUponActivationForWidgetContainerViewController:*(*(*(a1 + 72) + 8) + 40)];
  }

  [*(*(*(a1 + 72) + 8) + 40) setPresentationMode:*(*(a1 + 32) + 1088)];
}

uint64_t __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  BSRectWithSize();
  [v2 setBounds:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) bounds];
  UIRectGetCenter();
  [v3 setCenter:?];
  [*(a1 + 32) _setContinuousCornerRadius:*(a1 + 72)];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(a1 + 80);

  return [v4 setRequiresClippingToBounds:v5];
}

- (void)_createBackgroundViewIfNecessary:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if ([(SBHWidgetStackViewController *)self _appearState]&& !self->_backgroundView && (!v3 || self->_overlapping || [(BSUIScrollView *)self->_scrollView isScrolling]|| [(SBHWidgetStackViewController *)self _alwaysShowStackBorder]))
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      logIdentifier = self->_logIdentifier;
      v10 = 138543362;
      v11 = logIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", "%{public}@", &v10, 0xCu);
    }

    v7 = [(SBHWidgetStackViewController *)self _createBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v7;

    if (self->_backgroundView)
    {
      [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary];
      [(UIView *)self->_containerView insertSubview:self->_backgroundView atIndex:0];
      [(SBHWidgetStackViewController *)self _updateBackgroundViewWithAnimationUpdateMode:1 allowingOutsetting:0];
    }

    v9 = SBLogWidgets();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", " isAnimation=YES ", &v10, 2u);
    }
  }
}

- (id)_createBackgroundView
{
  backgroundViewProvider = self->_backgroundViewProvider;
  if (backgroundViewProvider)
  {
    v4 = backgroundViewProvider[2](backgroundViewProvider, a2);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  v5 = v4;
  [v4 setClipsToBounds:!self->_showsSquareCorners];
  [v5 setAutoresizingMask:18];

  return v5;
}

- (void)_teardownBackgroundView:(id)a3 contactDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_12;
  }

  backgroundView = self->_backgroundView;
  v10 = v6;
  if (backgroundView != v6)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    v8 = [(SBHWidgetStackViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 widgetStackViewController:self didFinishUsingBackgroundView:v10];
    }

    goto LABEL_9;
  }

  self->_backgroundView = 0;

  if (v4)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = [(SBHWidgetStackViewController *)self view];
  if ([(UIView *)v10 isDescendantOfView:v9])
  {
    [(UIView *)v10 removeFromSuperview];
  }

  v6 = v10;
LABEL_12:
}

- (BOOL)_containerRequiresClippingToBoundsForWidget:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_layoutWithAnimationUpdateMode:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = SBLogWidgets();
  if (os_signpost_enabled(v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    logIdentifier = self->_logIdentifier;
    v8 = SBStringFromAnimationUpdateMode();
    v9 = [v6 stringWithFormat:@"<%@> updateMode=%@", logIdentifier, v8];
    *buf = 138543362;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK", "updateMode=%{public}@", buf, 0xCu);
  }

  if ([MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock])
  {
    a3 = 1;
  }

  [(SBHWidgetStackViewController *)self _updateBackgroundViewWithAnimationUpdateMode:a3];
  [(SBHWidgetStackViewController *)self _updateWidgetViewsWithAnimationUpdateMode:a3];
  [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];
  [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
  [(SBHWidgetStackViewController *)self _updateWidgetViewEdgeAntialiasing];
  [(SBHWidgetStackViewController *)self _updateScrollViewDelaysContentTouches];
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:a3];
  v10 = SBLogWidgets();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK", " isAnimation=YES ", buf, 2u);
  }
}

- (void)_updateWidgetViewsWithAnimationUpdateMode:(int64_t)a3
{
  v4 = self;
  v130 = *MEMORY[0x1E69E9840];
  if (![(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      v6 = MEMORY[0x1E696AEC0];
      logIdentifier = v4->_logIdentifier;
      v8 = SBStringFromAnimationUpdateMode();
      v9 = [v6 stringWithFormat:@"<%@> updateMode: %@>", logIdentifier, v8];
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS", "updateMode=%{public}@", &buf, 0xCu);
    }

    [(SBHWidgetStackViewController *)v4 iconImageInfo];
    v97 = v11;
    v98 = v10;
    v99 = v13;
    v100 = v12;
    BSRectWithSize();
    v15 = v14;
    v17 = v16;
    v18 = [(SBLeafIcon *)v4->_icon iconDataSources];
    v111 = [v18 indexOfObject:v4->_activeWidget];

    [(SBHWidgetStackScrollView *)v4->_scrollView contentOffset];
    v101 = v19;
    [(SBHWidgetStackViewController *)v4 _restingContentOffset];
    v21 = v20;
    BSRectWithSize();
    v109 = v23;
    v110 = v22;
    v107 = v25;
    v108 = v24;
    continuousCornerRadius = v4->_iconImageInfo.continuousCornerRadius;
    v104 = [(SBHWidgetStackViewController *)v4 _effectiveWidgetContainerViewControllers];
    v115 = [(SBLeafIcon *)v4->_icon iconDataSources];
    v26 = [v115 count];
    v103 = a3;
    if ([(SBHWidgetStackViewController *)v4 _appearState])
    {
      v114 = 0;
    }

    else
    {
      v114 = ![(SBHWidgetStackViewController *)v4 forcesVisible];
    }

    v27 = SBLogWidgets();
    v28 = v104;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(SBHWidgetStackViewController *)v4 _updateWidgetViewsWithAnimationUpdateMode:v111];
    }

    if (v26)
    {
      v29 = -46.0 / v15 + 1.0;
      v92 = v26 - 1;
      v30 = -1;
      if (v101 > v21)
      {
        v30 = 1;
      }

      v113 = v30;
      v31 = v15 * 0.5;
      v96 = v17 * 0.5 + v21;
      v90 = -6.0 / v15 + 1.0;
      v91 = (v15 + -1.0) / v15;
      v32 = 0;
      v33 = fabs(fmod(v101, v21));
      v34 = vabdd_f64(v33, v21);
      if (v33 > v21 * 0.5)
      {
        v33 = v34;
      }

      v95 = v33;
      v35 = v26;
      v112 = v4;
      v102 = v26;
      while (1)
      {
        v36 = v32 - v111;
        if (v26 != 1)
        {
          if (v111 || v35 != 1)
          {
            if (v32)
            {
              v37 = 0;
            }

            else
            {
              v37 = v111 == v92;
            }

            if (v37)
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = -1;
          }
        }

        if (v36)
        {
          v38 = v26 == 2;
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
          v39 = v113;
        }

        else
        {
          v39 = v36;
        }

        v40 = [(SBHWidgetStackViewController *)v4 _showAdjacentWidgets];
        v41 = v40;
        v42 = v40 << 63 >> 63;
        v43 = SBLogWidgets();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v79 = v4->_logIdentifier;
          v80 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
          v81 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
          v82 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
          LODWORD(buf.a) = 138544130;
          *(&buf.a + 4) = v79;
          v28 = v104;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v80;
          HIWORD(buf.c) = 2112;
          *&buf.d = v81;
          LOWORD(buf.tx) = 2112;
          *(&buf.tx + 2) = v82;
          _os_log_debug_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_DEBUG, "<%{public}@> _updateWidgetViewsWithAnimationUpdateMode: relativeIndex: %@, minRelativeIndex: %@, maxRelativeIndex: %@", &buf, 0x2Au);

          v4 = v112;
          v26 = v102;
        }

        v44 = [v115 objectAtIndex:v32];
        v45 = [v44 uniqueIdentifier];
        v46 = v45;
        v47 = v39 >= v42 && v39 <= v41;
        v48 = !v47;
        v116 = v45;
        if (((v48 | v114) & 1) == 0)
        {
          break;
        }

        v49 = [v28 objectForKey:v45];
        if (!v49)
        {
          goto LABEL_80;
        }

        v50 = SBLogWidgets();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v84 = v4->_logIdentifier;
          LODWORD(buf.a) = 138543874;
          *(&buf.a + 4) = v84;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v49;
          HIWORD(buf.c) = 2112;
          *&buf.d = v44;
          _os_log_debug_impl(&dword_1BEB18000, v50, OS_LOG_TYPE_DEBUG, "<%{public}@> _updateWidgetViewsWithAnimationUpdateMode: REMOVE container VC: %@, widget=%@", &buf, 0x20u);
        }

        [v49 setUserVisibilityStatus:1];
        [v49 setPresentationMode:2];
        [(SBHWidgetStackViewController *)v4 bs_removeChildViewController:v49];
        if ([(BSUIScrollView *)v4->_scrollView isScrolling])
        {
          goto LABEL_80;
        }

        [v28 removeObjectForKey:v116];
        v51 = [(SBHWidgetStackViewController *)v4 delegate];
        if (objc_opt_respondsToSelector())
        {
          v52 = [v49 widgetViewController];
          [v51 widgetStackViewController:v4 didRemoveViewController:v52];
LABEL_78:
        }

LABEL_80:
        ++v32;
        if (!--v35)
        {
          goto LABEL_81;
        }
      }

      v53 = [(SBHWidgetStackViewController *)v4 _createViewControllerForWidgetIfNecessary:v44 usingIconImageInfo:v100, v99, v98, v97];
      v54 = v103;
      if (v53)
      {
        v54 = 1;
      }

      v105 = v54;
      v49 = [v28 objectForKey:v46];
      v51 = [v49 view];
      v55 = v96 + v17 * v39;
      v56 = [(SBHWidgetStackViewController *)v4 _containerRequiresClippingToBoundsForWidget:v44];
      [v51 center];
      v58 = v57;
      v60 = v59;
      [v51 bounds];
      v132.origin.y = v109;
      v132.origin.x = v110;
      v132.size.height = v107;
      v132.size.width = v108;
      v61 = CGRectEqualToRect(v131, v132);
      [v51 _continuousCornerRadius];
      v63 = v62;
      v64 = [v49 requiresClippingToBounds];
      if (v58 != v31 || v60 != v55)
      {
        [v51 setCenter:{v31, v55}];
      }

      if (!v61)
      {
        [v51 setBounds:{v110, v109, v108, v107}];
      }

      if (vabdd_f64(v63, continuousCornerRadius) >= 2.22044605e-16)
      {
        [v51 _setContinuousCornerRadius:continuousCornerRadius];
      }

      if (v56 != v64)
      {
        [v49 setRequiresClippingToBounds:v56];
      }

      v65 = (v29 + -1.0) * vabdd_f64(v55 - v17 * 0.5, v101) / v17 + 1.0;
      if (v29 >= v65)
      {
        v65 = v29;
      }

      v66 = fmin(v65, 1.0);
      if ([(SBHWidgetStackViewController *)v4 _insetWidgetsForTrackingAppearance])
      {
        v67 = v90 * v66;
      }

      else if (v4->_overlapping)
      {
        v67 = v91;
      }

      else
      {
        v67 = v66;
      }

      if ([(SBHWidgetStackViewController *)v4 isOverlapping])
      {
        v68 = 0.75;
      }

      else
      {
        v68 = 1.0;
      }

      v52 = [(SBHWidgetStackViewController *)v4 _backgroundColorForWidgetWithDistanceFromRestingContentOffset:v95];
      [v52 alphaComponent];
      v70 = v69;
      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(&buf, v67, v67);
      if (v51)
      {
        [v51 transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      t1 = buf;
      v71 = CGAffineTransformEqualToTransform(&t1, &t2);
      v72 = v71;
      v73 = !v71;
      [v51 alpha];
      v75 = vabdd_f64(v74, v70);
      v76 = v75 >= 2.22044605e-16;
      if (v75 >= 2.22044605e-16 || v73)
      {
        if (!v72)
        {
          [(SBHWidgetStackViewController *)v112 _incrementWidgetScaleAnimationCount];
        }

        animationSettings = v112->_animationSettings;
        v94 = MEMORY[0x1E69DD250];
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke;
        v121[3] = &unk_1E808F858;
        v125 = v73;
        v77 = v51;
        v123 = buf;
        v122 = v77;
        v126 = v76;
        v124 = v68;
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke_2;
        v119[3] = &unk_1E808F880;
        v120 = v73;
        v119[4] = v112;
        [v94 sb_animateWithSettings:animationSettings mode:v105 animations:v121 completion:v119];
      }

      v78 = SBLogWidgets();
      v4 = v112;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        v83 = v112->_logIdentifier;
        LODWORD(t2.a) = 138543874;
        *(&t2.a + 4) = v83;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v44;
        HIWORD(t2.c) = 2112;
        *&t2.d = v49;
        _os_log_debug_impl(&dword_1BEB18000, v78, OS_LOG_TYPE_DEBUG, "<%{public}@> _updateWidgetViewsWithAnimationUpdateMode: CREATED widget VC in stack: widget=%@, %@", &t2, 0x20u);
      }

      v28 = v104;
      v26 = v102;
      goto LABEL_78;
    }

LABEL_81:
    v85 = [v115 bs_map:&__block_literal_global_63];
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke_2_126;
    v117[3] = &unk_1E808F8C8;
    v118 = v85;
    v86 = v85;
    v87 = [v28 bs_filter:v117];
    v88 = [v87 mutableCopy];

    [(SBHWidgetStackViewController *)v4 _removeWidgetContainerViewControllers:v88 animated:v103 != 2];
    v89 = SBLogWidgets();
    if (os_signpost_enabled(v89))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v89, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS", " isAnimation=YES ", &buf, 2u);
    }

    [(SBHWidgetStackViewController *)v4 _updateVisiblySettledForWidgetViewControllers];
    [(SBHWidgetStackViewController *)v4 _updatePresentationModeForWidgetViewControllers];
    [(SBHWidgetStackViewController *)v4 _updateShowsSnapshotWhenDeactivatedForWidgetViewControllers];
    [(SBHWidgetStackViewController *)v4 _updatePauseReasonForWidgetViewControllers];
    [(SBHWidgetStackViewController *)v4 _updateApproximateLayoutPositionForWidgetViewControllers];
  }
}

uint64_t __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 96) == 1)
  {
    v2 = *(result + 32);
    v3 = *(v1 + 56);
    v4[0] = *(v1 + 40);
    v4[1] = v3;
    v4[2] = *(v1 + 72);
    result = [v2 setTransform:v4];
  }

  if (*(v1 + 97) == 1)
  {
    return [*(v1 + 32) setAlpha:*(v1 + 88)];
  }

  return result;
}

uint64_t __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _decrementWidgetScaleAnimationCount];
  }

  return result;
}

- (void)_updateBackgroundViewWithAnimationUpdateMode:(int64_t)a3 allowingOutsetting:(BOOL)a4
{
  v4 = a4;
  v153 = *MEMORY[0x1E69E9840];
  v7 = SBLogWidgets();
  if (os_signpost_enabled(v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    logIdentifier = self->_logIdentifier;
    v10 = SBStringFromAnimationUpdateMode();
    v11 = [v8 stringWithFormat:@"<%@> updateMode: %@", logIdentifier, v10];
    *buf = 138543362;
    v148 = v11;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_BACKGROUND", "updateMode=%{public}@", buf, 0xCu);
  }

  [(SBHWidgetStackViewController *)self _createBackgroundViewIfNecessary:1];
  v12 = [(SBHWidgetStackViewController *)self _alwaysShowStackBorder];
  v13 = [(SBHWidgetStackViewController *)self isOverlapping];
  v14 = [(SBHWidgetStackViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(SBHWidgetStackViewController *)self iconImageInfo];
  BSRectWithSize();
  v101 = v24;
  v102 = v23;
  v111 = v25;
  v118 = v26;
  [(SBHWidgetStackViewController *)self iconImageInfo];
  v28 = v27;
  v29 = [(SBHWidgetStackViewController *)self imageViewAlignment];
  v30 = self->_containerView;
  v31 = self->_backgroundView;
  v117 = self->_scrollView;
  v116 = self->_dimmingView;
  v32 = !v4;
  if (v13 && v4)
  {
    v33 = v20 + 16.0;
    v34 = v22 + 16.0;
    v35 = v28 + 8.0;
  }

  else if ([(SBHWidgetStackViewController *)self _insetWidgetsForTrackingAppearance]&& v4)
  {
    v35 = v28;
    v34 = v22;
    v33 = v20;
    if (v20 > 0.0)
    {
      v36 = 1.0 - 6.0 / v20;
      v33 = v20 * v36 + 6.0;
      v34 = v22 * v36 + 6.0;
      v35 = v28 * v36 + 3.0;
    }
  }

  else
  {
    v35 = v28;
    v34 = v22;
    v33 = v20;
  }

  if (v13 || !v12 || v32)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 3.0;
  }

  if (v13 || !v12 || v32)
  {
    v38 = v34;
  }

  else
  {
    v38 = v34 + 6.0;
  }

  if (v13 || !v12 || v32)
  {
    v39 = v33;
  }

  else
  {
    v39 = v33 + 6.0;
  }

  v115 = 1.0;
  if (v4 && self->_backgroundViewFadeAnimationEnabled)
  {
    v155.origin.x = v16;
    v155.origin.y = v18;
    v155.size.width = v39;
    v155.size.height = v38;
    v160.origin.x = v16;
    v160.origin.y = v18;
    v160.size.width = v20;
    v160.size.height = v22;
    v115 = 0.0;
    if (CGRectContainsRect(v155, v160))
    {
      v156.origin.x = v16;
      v156.origin.y = v18;
      v156.size.width = v39;
      v156.size.height = v38;
      v161.origin.x = v16;
      v161.origin.y = v18;
      v161.size.width = v20;
      v161.size.height = v22;
      v40 = CGRectEqualToRect(v156, v161);
      v41 = 1.0;
      if (v40)
      {
        v41 = 0.0;
      }

      v115 = v41;
    }
  }

  fixedBackgroundViewBoundsOutset = self->_fixedBackgroundViewBoundsOutset;
  if (fixedBackgroundViewBoundsOutset)
  {
    [(NSNumber *)fixedBackgroundViewBoundsOutset floatValue];
    v44 = v43;
    v39 = v20 + v44 * 2.0;
    v38 = v22 + v44 * 2.0;
    v37 = v28 + v44;
  }

  v107 = a3;
  UIRectGetCenter();
  v114 = v45;
  v110 = v46;
  v47 = -((v22 - v118) * 0.5);
  if (v29)
  {
    v47 = (v22 - v118) * 0.5;
  }

  v109 = v47;
  if ([(SBHWidgetStackViewController *)self showsSquareCorners])
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v37;
  }

  UIRectGetCenter();
  v50 = v49;
  v51 = v18;
  v52 = v16;
  v54 = v53;
  UIRectGetCenter();
  v56 = v55;
  v108 = v57;
  [(UIView *)v30 center];
  v105 = v50;
  v59 = v58 != v50;
  if (v60 != v54)
  {
    v59 = 1;
  }

  v113 = v59;
  [(UIView *)v30 bounds];
  v162.origin.x = v52;
  v162.origin.y = v51;
  v162.size.width = v39;
  v162.size.height = v38;
  v112 = !CGRectEqualToRect(v157, v162);
  v61 = v30;
  [(UIView *)v30 _continuousCornerRadius];
  v63 = vabdd_f64(v62, v48);
  v106 = v56;
  if (v31)
  {
    [(UIView *)v31 center];
    v65 = v64 != v56;
    v66 = v108;
    v68 = v67 != v108 || v65;
    [(UIView *)v31 bounds];
    v163.origin.x = v52;
    v163.origin.y = v51;
    v163.size.width = v39;
    v163.size.height = v38;
    v69 = CGRectEqualToRect(v158, v163);
    v70 = v31;
    LOBYTE(v31) = !v69;
    v71 = v70;
    [v70 _continuousCornerRadius];
    v73 = vabdd_f64(v72, v48) > 2.22044605e-16;
    [(UIView *)self->_backgroundView alpha];
    v74 = BSFloatEqualToFloat() ^ 1;
    BYTE4(v103) = v73;
    v104 = v68;
    LOBYTE(v103) = v31;
    v75 = v116;
  }

  else
  {
    v71 = 0;
    v103 = 0;
    v73 = 0;
    v104 = 0;
    v68 = 0;
    v74 = 0;
    v75 = v116;
    v66 = v108;
  }

  if (v75)
  {
    [(UIView *)v75 _continuousCornerRadius];
    v77 = vabdd_f64(v76, v48) > 2.22044605e-16;
  }

  else
  {
    v77 = 0;
  }

  [(SBHWidgetStackScrollView *)v117 center];
  v80 = v79 != v110 + v109 || v78 != v114;
  v81 = v73 | (v113 || v112) | v68 | v31 | (v63 > 2.22044605e-16);
  v82 = v71;
  v83 = v116;
  if ((v81 & 1) != 0 || (v74 & 1) != 0 || v77 || v80)
  {
    [(SBHWidgetStackViewController *)self _incrementBackgroundAnimationCount];
    v84 = MEMORY[0x1E69DD250];
    animationSettings = self->_animationSettings;
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __96__SBHWidgetStackViewController__updateBackgroundViewWithAnimationUpdateMode_allowingOutsetting___block_invoke;
    v120[3] = &unk_1E808F8F0;
    v138 = v113;
    v126 = v105;
    v127 = v54;
    v139 = v112;
    v128 = v52;
    v129 = v51;
    v130 = v39;
    v131 = v38;
    v121 = v61;
    v122 = self;
    v140 = v63 > 2.22044605e-16;
    v132 = v48;
    v141 = v104;
    v123 = v82;
    v133 = v106;
    v134 = v66;
    v142 = v103;
    v143 = BYTE4(v103);
    v144 = v74;
    v135 = v115;
    v145 = v77;
    v124 = v116;
    v146 = v80;
    v125 = v117;
    v136 = v114;
    v137 = v110 + v109;
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __96__SBHWidgetStackViewController__updateBackgroundViewWithAnimationUpdateMode_allowingOutsetting___block_invoke_131;
    v119[3] = &unk_1E808BF28;
    v119[4] = self;
    [v84 sb_animateWithSettings:animationSettings mode:v107 animations:v120 completion:v119];
  }

  [(SBHWidgetStackScrollView *)self->_scrollView bounds];
  if (v87 != v111 || v86 != v118)
  {
    [(SBHWidgetStackScrollView *)self->_scrollView bounds];
    if ((*&v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v118 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v111 <= 0.0 || v118 <= 0.0 || v111 > 10000.0 || v118 > 10000.0)
    {
      v88 = SBLogWidgets();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v98 = self->_logIdentifier;
        v154.width = v111;
        v154.height = v118;
        v99 = NSStringFromCGSize(v154);
        v159.origin.y = v101;
        v159.origin.x = v102;
        v159.size.width = v111;
        v159.size.height = v118;
        v100 = NSStringFromCGRect(v159);
        *buf = 138543874;
        v148 = v98;
        v149 = 2112;
        v150 = v99;
        v151 = 2112;
        v152 = v100;
        _os_log_error_impl(&dword_1BEB18000, v88, OS_LOG_TYPE_ERROR, "<%{public}@> Invalid SBHWidgetStackScrollView bounds size: %@, widget bounds: %@", buf, 0x20u);

        v83 = v116;
      }
    }

    else
    {
      [(SBHWidgetStackScrollView *)self->_scrollView setBounds:?];
    }
  }

  [(SBHWidgetStackViewController *)self _scrollViewContentSize];
  v90 = v89;
  v92 = v91;
  [(SBHWidgetStackScrollView *)self->_scrollView contentSize];
  if (v94 != v90 || v93 != v92)
  {
    [(SBHWidgetStackScrollView *)self->_scrollView setContentSize:v90, v92];
    scrollView = self->_scrollView;
    [(SBHWidgetStackViewController *)self _restingContentOffset];
    [(SBHWidgetStackScrollView *)scrollView setContentOffset:?];
  }

  v96 = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  if (v96 > 1 != [(SBHWidgetStackScrollView *)self->_scrollView isScrollEnabled])
  {
    [(SBHWidgetStackScrollView *)self->_scrollView setScrollEnabled:v96 > 1];
  }

  [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary];
  [(SBHWidgetStackViewController *)self _updateWidgetGlassGrouping];
  v97 = SBLogWidgets();
  if (os_signpost_enabled(v97))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v97, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_BACKGROUND", " isAnimation=YES ", buf, 2u);
  }
}

void __96__SBHWidgetStackViewController__updateBackgroundViewWithAnimationUpdateMode_allowingOutsetting___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) == 1)
  {
    [*(a1 + 32) setCenter:{*(a1 + 72), *(a1 + 80)}];
  }

  if (*(a1 + 169) == 1)
  {
    v3 = *(a1 + 88);
    v2 = *(a1 + 96);
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v4 > 10000.0 || (v4 > 0.0 ? (v7 = (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v7 = 1), v7 || v5 <= 0.0 || v5 > 10000.0))
    {
      v6 = SBLogWidgets();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*(a1 + 40) + 1024);
        v44.origin.x = v3;
        v44.origin.y = v2;
        v44.size.width = v4;
        v44.size.height = v5;
        v37 = NSStringFromCGRect(v44);
        v38 = 138543618;
        v39 = v36;
        v40 = 2112;
        v41 = v37;
        _os_log_error_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_ERROR, "<%{public}@> Skipping invalid container view bounds: %@", &v38, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) setBounds:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
    }
  }

  if (*(a1 + 170) == 1)
  {
    v8 = *(a1 + 120);
    v9 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v11 = v8 < 0;
    v12 = v8 < 0 && ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (!v11)
    {
      v10 = 0;
    }

    v13 = v9 <= 0x7FF0000000000000;
    v14 = v9 == 0x7FF0000000000000 || v10;
    if (!v13)
    {
      v14 = 1;
    }

    if (((v14 | v12) & 1) == 0)
    {
      [*(a1 + 32) _setContinuousCornerRadius:?];
    }
  }

  if (*(a1 + 171) == 1)
  {
    [*(a1 + 48) setCenter:{*(a1 + 128), *(a1 + 136)}];
  }

  if (*(a1 + 172) == 1)
  {
    v16 = *(a1 + 88);
    v15 = *(a1 + 96);
    v17 = *(a1 + 104);
    v18 = *(a1 + 112);
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v17 > 10000.0 || v17 <= 0.0 || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || v18 <= 0.0 || v18 > 10000.0)
    {
      v19 = SBLogWidgets();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v34 = *(*(a1 + 40) + 1024);
        v43.origin.x = v16;
        v43.origin.y = v15;
        v43.size.width = v17;
        v43.size.height = v18;
        v35 = NSStringFromCGRect(v43);
        v38 = 138543618;
        v39 = v34;
        v40 = 2112;
        v41 = v35;
        _os_log_error_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_ERROR, "<%{public}@> Skipping invalid background view bounds: %@", &v38, 0x16u);
      }
    }

    else
    {
      [*(a1 + 48) setBounds:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
    }
  }

  if (*(a1 + 173) == 1)
  {
    v20 = *(a1 + 120);
    v21 = v20 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = (v20 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v23 = v20 < 0;
    v24 = v20 < 0 && ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (!v23)
    {
      v22 = 0;
    }

    v25 = v21 <= 0x7FF0000000000000;
    v26 = v21 == 0x7FF0000000000000 || v22;
    if (!v25)
    {
      v26 = 1;
    }

    if (((v26 | v24) & 1) == 0)
    {
      [*(a1 + 48) _setContinuousCornerRadius:?];
    }
  }

  if (*(a1 + 174) == 1)
  {
    [*(a1 + 48) setAlpha:*(a1 + 144)];
  }

  if (*(a1 + 175) == 1)
  {
    v27 = *(a1 + 120);
    v28 = v27 & 0x7FFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v30 = v27 < 0;
    v31 = v27 < 0 && ((v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (!v30)
    {
      v29 = 0;
    }

    v32 = v28 <= 0x7FF0000000000000;
    v33 = v28 == 0x7FF0000000000000 || v29;
    if (!v32)
    {
      v33 = 1;
    }

    if (((v33 | v31) & 1) == 0)
    {
      [*(a1 + 56) _setContinuousCornerRadius:?];
    }
  }

  if (*(a1 + 176) == 1)
  {
    [*(a1 + 64) setCenter:{*(a1 + 152), *(a1 + 160)}];
  }
}

- (void)_updatePageControlWithAnimationUpdateMode:(int64_t)a3
{
  v66 = *MEMORY[0x1E69E9840];
  if ([(SBHWidgetStackViewController *)self _appearState])
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      v6 = MEMORY[0x1E696AEC0];
      logIdentifier = self->_logIdentifier;
      v8 = SBStringFromAnimationUpdateMode();
      v9 = [v6 stringWithFormat:@"<%@> updateMode: %@", logIdentifier, v8];
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_PAGE_CONTROL", "updateMode=%{public}@", &buf, 0xCu);
    }

    v10 = [(SBLeafIcon *)self->_icon iconDataSourceCount];
    if (v10 == [(UIPageControl *)self->_pageControl numberOfPages])
    {
      v11 = a3;
    }

    else
    {
      v11 = 2;
    }

    v12 = self->_pageControl;
    [(SBHWidgetSettings *)self->_widgetSettings stackPageControlScale];
    v14 = v13;
    v15 = [(SBHWidgetStackViewController *)self _pageControlIsHorizontallyConstrained];
    v16 = [(SBHWidgetStackViewController *)self _alwaysShowStackBorder];
    v17 = [(SBHWidgetStackViewController *)self view];
    [v17 bounds];
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x1E695EFF8];
    [(UIPageControl *)v12 sizeForNumberOfPages:v10];
    v24 = v23;
    v26 = v25;
    fixedPageControlOffset = self->_fixedPageControlOffset;
    if (fixedPageControlOffset)
    {
      [(NSNumber *)fixedPageControlOffset floatValue];
      v29 = v28;
    }

    else
    {
      v30 = 0.0;
      v31 = 3.0;
      if (!v16)
      {
        v31 = 0.0;
      }

      v32 = v31 + v23 * 0.25;
      if (v15)
      {
        v30 = 2.0;
      }

      v29 = v32 - v30;
    }

    v33 = *v22;
    v34 = v22[1];
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v35 = -v29;
    }

    else
    {
      v35 = v19 + v29;
    }

    v36 = v21 * 0.5;
    memset(&buf, 0, sizeof(buf));
    CGAffineTransformMakeScale(&buf, v14, v14);
    [(UIPageControl *)self->_pageControl center];
    v39 = v36 != v38 || v35 != v37;
    v40 = [(UIPageControl *)self->_pageControl numberOfPages];
    v41 = v40 != v10;
    pageControl = self->_pageControl;
    if (pageControl)
    {
      [(UIPageControl *)pageControl transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = buf;
    v43 = !CGAffineTransformEqualToTransform(&t1, &t2);
    [(UIPageControl *)v12 bounds];
    v68.origin.x = v33;
    v68.origin.y = v34;
    v68.size.width = v24;
    v68.size.height = v26;
    v44 = !CGRectEqualToRect(v67, v68);
    if (v39 || v40 != v10 || v43 || v44)
    {
      v46 = MEMORY[0x1E69DD250];
      animationSettings = self->_animationSettings;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __74__SBHWidgetStackViewController__updatePageControlWithAnimationUpdateMode___block_invoke;
      v49[3] = &unk_1E808F918;
      v59 = v41;
      v50 = v12;
      v51 = v10;
      v60 = v44;
      v52 = v33;
      v53 = v34;
      v54 = v24;
      v55 = v26;
      v61 = v43;
      v56 = buf;
      v62 = v39;
      v57 = v35;
      v58 = v36;
      [v46 sb_animateWithSettings:animationSettings mode:v11 animations:v49 completion:0];
      v48 = SBLogWidgets();
      if (os_signpost_enabled(v48))
      {
        LOWORD(t2.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_PAGE_CONTROL", " isAnimation=YES ", &t2, 2u);
      }

      p_super = &v50->super.super.super.super;
    }

    else
    {
      p_super = SBLogWidgets();
      if (os_signpost_enabled(p_super))
      {
        LOWORD(t2.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, p_super, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_PAGE_CONTROL", " isAnimation=YES ", &t2, 2u);
      }
    }
  }
}

uint64_t __74__SBHWidgetStackViewController__updatePageControlWithAnimationUpdateMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    [*(a1 + 32) setNumberOfPages:*(a1 + 40)];
  }

  if (*(a1 + 145) == 1)
  {
    [*(a1 + 32) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  if (*(a1 + 146) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 96);
    v5[0] = *(a1 + 80);
    v5[1] = v3;
    v5[2] = *(a1 + 112);
    [v2 setTransform:v5];
  }

  if (*(a1 + 147) == 1)
  {
    [*(a1 + 32) setCenter:{*(a1 + 128), *(a1 + 136)}];
  }

  return [*(a1 + 32) layoutIfNeeded];
}

- (id)_widgetContainerViewControllersForListLayoutProvider:(id)a3
{
  v4 = a3;
  if (!self->_widgetContainerViewControllersForLayoutOptions)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    widgetContainerViewControllersForLayoutOptions = self->_widgetContainerViewControllersForLayoutOptions;
    self->_widgetContainerViewControllersForLayoutOptions = v5;
  }

  v7 = _SBHLayoutOptionsKeyTypeForListLayoutProvider(v4);
  v8 = [(NSMutableDictionary *)self->_widgetContainerViewControllersForLayoutOptions objectForKey:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_widgetContainerViewControllersForLayoutOptions setObject:v8 forKey:v7];
  }

  return v8;
}

- (void)enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock:(id)a3
{
  v4 = a3;
  widgetContainerViewControllersForLayoutOptions = self->_widgetContainerViewControllersForLayoutOptions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__SBHWidgetStackViewController_enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock___block_invoke;
  v7[3] = &unk_1E808F940;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)widgetContainerViewControllersForLayoutOptions enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)_backgroundColorForWidgetWithDistanceFromRestingContentOffset:(double)a3
{
  v3 = fmin(fmax(a3 / 60.0, 0.0), 0.3);
  if ([(SBHWidgetStackViewController *)self _alwaysShowStackBorder])
  {
    v3 = v3 + 0.2;
  }

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [v4 colorWithAlphaComponent:v3];

  return v5;
}

- (void)_setPageControlHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(SBHWidgetStackViewController *)self _alwaysShowStackPageControl]|| (v7 = 0.0, !a3))
  {
    pageControlHidingTimer = self->_pageControlHidingTimer;
    v7 = 1.0;
    if (pageControlHidingTimer)
    {
      [(NSTimer *)pageControlHidingTimer invalidate];
      v9 = self->_pageControlHidingTimer;
      self->_pageControlHidingTimer = 0;
    }
  }

  v10 = self->_pageControl;
  [(UIPageControl *)v10 alpha];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (v4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v12 = MEMORY[0x1E69DD250];
    animationSettings = self->_animationSettings;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__SBHWidgetStackViewController__setPageControlHidden_animated___block_invoke;
    v17 = &unk_1E8088CB8;
    v18 = v10;
    v19 = v7;
    [v12 sb_animateWithSettings:animationSettings mode:v11 animations:&v14 completion:0];
    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:v11, v14, v15, v16, v17];
  }
}

- (void)_restartPageControlTimerWithTimeInterval:(double)a3
{
  pageControlHidingTimer = self->_pageControlHidingTimer;
  if (pageControlHidingTimer)
  {
    [(NSTimer *)pageControlHidingTimer invalidate];
    v6 = self->_pageControlHidingTimer;
    self->_pageControlHidingTimer = 0;
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__SBHWidgetStackViewController__restartPageControlTimerWithTimeInterval___block_invoke;
  v10[3] = &unk_1E808BC98;
  objc_copyWeak(&v11, &location);
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];
  v9 = self->_pageControlHidingTimer;
  self->_pageControlHidingTimer = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __73__SBHWidgetStackViewController__restartPageControlTimerWithTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setShowStackBorderWhenShowingPageControl:0];
    [v3 _setPageControlHidden:1 animated:1];
    v2 = [v3 pageControlHidingTimer];
    [v2 invalidate];

    [v3 setPageControlHidingTimer:0];
    WeakRetained = v3;
  }
}

- (int64_t)_newActiveWidgetIndexForContentOffset:(CGPoint)a3
{
  y = a3.y;
  [(SBHWidgetStackViewController *)self _pageSize];
  v6 = v5;
  [(SBHWidgetStackViewController *)self _restingContentOffset];
  v8 = (y - v7) / v6;
  v9 = [(SBLeafIcon *)self->_icon iconDataSources];
  v10 = [v9 indexOfObject:self->_activeWidget];

  v11 = (round(v8) + v10);
  v12 = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  if (v12 <= v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v11 >= 0)
  {
    return v13;
  }

  else
  {
    return v12 - 1;
  }
}

- (void)_incrementWidgetScaleAnimationCount
{
  widgetScaleAnimationCount = self->_widgetScaleAnimationCount;
  self->_widgetScaleAnimationCount = widgetScaleAnimationCount + 1;
  if (!widgetScaleAnimationCount)
  {
    [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];
    [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];

    [(SBHWidgetStackViewController *)self _updateScrollViewDelaysContentTouches];
  }
}

- (void)_decrementWidgetScaleAnimationCount
{
  widgetScaleAnimationCount = self->_widgetScaleAnimationCount;
  if (widgetScaleAnimationCount)
  {
    v4 = widgetScaleAnimationCount - 1;
    self->_widgetScaleAnimationCount = v4;
    if (!v4)
    {
      [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];
      [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];

      [(SBHWidgetStackViewController *)self _updateScrollViewDelaysContentTouches];
    }
  }
}

- (void)_decrementWidgetSnapshotAnimationCount
{
  widgetSnapshotAnimationCount = self->_widgetSnapshotAnimationCount;
  if (widgetSnapshotAnimationCount)
  {
    self->_widgetSnapshotAnimationCount = widgetSnapshotAnimationCount - 1;
  }
}

+ (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)a3 widgetViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_opt_respondsToSelector())
          {
            v9 = [v6 isTransparent];
LABEL_11:
            v7 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v10 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v9 = [v6 usesSystemBackgroundMaterial];
            goto LABEL_11;
          }
        }

        v7 = 0;
        goto LABEL_5;
      }
    }
  }

  v7 = 1;
LABEL_5:

  return v7;
}

- (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)a3
{
  v4 = a3;
  v5 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];

  v8 = [v7 widgetViewController];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 multiplexedViewController];

  v14 = [objc_opt_class() _shouldDrawSystemBackgroundMaterialForWidget:v4 widgetViewController:v13];
  return v14;
}

- (void)_configureBackgroundViewIfNecessary:(id)a3
{
  backgroundViewConfigurator = a3;
  v5 = backgroundViewConfigurator;
  if (backgroundViewConfigurator)
  {
    backgroundViewConfigurator = self->_backgroundViewConfigurator;
    if (backgroundViewConfigurator)
    {
      if (!self->_activeWidget)
      {
        goto LABEL_9;
      }

      v11 = v5;
      backgroundViewConfigurator = backgroundViewConfigurator[2]();
      goto LABEL_8;
    }
  }

  if (v5 && self->_activeWidget)
  {
    v11 = v5;
    [(UIView *)self->_backgroundView sbh_applyClearGlassWithGrouping:1];
    backgroundView = self->_backgroundView;
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [(SBHWidgetStackViewController *)self activeWidget];
    v9 = [(SBHWidgetStackViewController *)self backdropGroupNameForActiveDataSource:v8];
    v10 = [v7 initWithFormat:@"%@-Stack", v9];
    [(UIView *)backgroundView sbh_backdropGroupName:v10];

LABEL_8:
    v5 = v11;
  }

LABEL_9:

  MEMORY[0x1EEE66BB8](backgroundViewConfigurator, v5);
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    self->_allowsGlassGrouping = a3;
    [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary];

    [(SBHWidgetStackViewController *)self _updateWidgetGlassGrouping];
  }
}

- (void)_updateWidgetGlassGrouping
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (self->_allowsGlassGrouping != [v9 allowsGlassGrouping])
        {
          [v9 setAllowsGlassGrouping:?];
          [v9 updateStyleConfiguration];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_updateWidgetViewStyleConfiguration
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) updateStyleConfiguration];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)_isScrollViewTracking
{
  if (self->_alwaysShowsAsStack)
  {
    return 1;
  }

  else
  {
    return [(SBHWidgetStackScrollView *)self->_scrollView isTracking];
  }
}

- (void)_handleInstalledAppsChanged:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [(SBLeafIcon *)self->_icon iconDataSources];
  if ([v5 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        v21 = v9;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = [WeakRetained widgetStackViewController:self containerBundleIdentifierForDataSource:v12];
          if (v13 && [v5 containsObject:v13])
          {
            v14 = [v12 uniqueIdentifier];
            [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
            v15 = v10;
            v17 = v16 = WeakRetained;
            [v17 objectForKey:v14];
            v19 = v18 = v5;

            WeakRetained = v16;
            v10 = v15;
            [v19 setBlockedForScreenTimeExpiration:{objc_msgSend(WeakRetained, "widgetStackViewController:isDataSourceBlockedForScreenTimeExpiration:", self, v12)}];

            v5 = v18;
            v9 = v21;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v7 = v20;
  }
}

- (id)_widgetWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBLeafIcon *)self->_icon iconDataSources];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SBHWidgetStackViewController__widgetWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E808E7A8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__SBHWidgetStackViewController__widgetWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_logAllViewControllers
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1024);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "<%{public}@> [ViewControllerDebug] Beginning view controller enumeration ------------------------------------------", &v3, 0xCu);
}

void __54__SBHWidgetStackViewController__logAllViewControllers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __54__SBHWidgetStackViewController__logAllViewControllers__block_invoke_cold_1(a1, v5);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SBHWidgetStackViewController__logAllViewControllers__block_invoke_155;
  v8[3] = &unk_1E808F790;
  v8[4] = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __54__SBHWidgetStackViewController__logAllViewControllers__block_invoke_155(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __54__SBHWidgetStackViewController__logAllViewControllers__block_invoke_155_cold_1();
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a4;
  v8 = a3;
  v9 = [(SBHWidgetStackViewController *)self view];
  v10 = [v8 isEqualToString:@"alpha"];

  if (v10 && BSEqualObjects())
  {
    [v9 alpha];
    if (BSFloatIsZero())
    {
      self->_flashPageControlOnNextAlphaChange = 1;
    }

    else if (self->_flashPageControlOnNextAlphaChange)
    {
      [(SBHWidgetStackViewController *)self _flashPageControlAnimated:1];
    }
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_widgetSettings == a3)
  {
    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2, a4];

    [(SBHWidgetStackViewController *)self _flashPageControlAnimated:1];
  }
}

__CFString *__50__SBHWidgetStackViewController__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E698E680] builderWithObject:WeakRetained];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __50__SBHWidgetStackViewController__setupStateCapture__block_invoke_2;
    v9 = &unk_1E8088F18;
    v10 = v2;
    v11 = WeakRetained;
    v3 = v2;
    [v3 appendBodySectionWithName:0 multilinePrefix:0 block:&v6];
    v4 = [v3 build];
  }

  else
  {
    v4 = &stru_1F3D472A8;
  }

  return v4;
}

void __50__SBHWidgetStackViewController__setupStateCapture__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) widgetIcon];
  v4 = [v2 appendObject:v3 withName:@"widgetIcon"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) viewIfLoaded];
  v7 = [v5 appendBool:objc_msgSend(v6 withName:{"isHidden"), @"viewIsHidden"}];

  v8 = *(a1 + 32);
  v10 = [*(a1 + 40) widgetViewControllers];
  v9 = [v8 sbh_appendDescriptionsForViewControllers:v10];
}

- (SBHWidgetStackViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_updateWidgetViewsWithAnimationUpdateMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  OUTLINED_FUNCTION_3_3(&dword_1BEB18000, v2, v3, "<%{public}@> _updateWidgetViewsWithAnimationUpdateMode: activeWidgetIndex: %@", v4, v5, v6, v7, 2u);
}

@end