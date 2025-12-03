@interface SBHWidgetStackViewController
+ (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)widget widgetViewController:(id)controller;
- (BOOL)_alwaysShowStackBorder;
- (BOOL)_alwaysShowStackPageControl;
- (BOOL)_containerRequiresClippingToBoundsForWidget:(id)widget;
- (BOOL)_createViewControllerForWidgetIfNecessary:(id)necessary usingIconImageInfo:(SBIconImageInfo *)info;
- (BOOL)_insetWidgetsForTrackingAppearance;
- (BOOL)_isContentViewExtendingOutsideBounds;
- (BOOL)_isScrollViewTracking;
- (BOOL)_scrollToActiveWidgetAnimated:(BOOL)animated;
- (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)widget;
- (BOOL)_shouldHideWidgetWithUniqueIdentifier:(id)identifier;
- (BOOL)isWidgetHitTestingDisabled;
- (BOOL)wantsCaptureOnlyBackgroundView;
- (CGPoint)_restingContentOffset;
- (CGRect)visibleBounds;
- (CGSize)_scrollViewContentSize;
- (NSArray)applicationShortcutItems;
- (NSArray)widgetViewControllers;
- (SBHWidgetStackViewController)initWithIcon:(id)icon iconListLayoutProvider:(id)provider;
- (SBHWidgetStackViewController)initWithIcon:(id)icon iconListLayoutProvider:(id)provider widgetSettings:(id)settings;
- (SBHWidgetStackViewControllerDataSource)dataSource;
- (SBHWidgetStackViewControllerDelegate)delegate;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (SBIconViewCustomImageViewHosting)host;
- (UIEdgeInsets)minimumPreferredEdgeInsetsForContextMenu;
- (UIView)snapshotView;
- (UIView)springLoadingEffectTargetView;
- (UIViewController)currentWidgetViewController;
- (id)_backgroundColorForWidgetWithDistanceFromRestingContentOffset:(double)offset;
- (id)_createBackgroundView;
- (id)_disableImageUpdatesForReason:(id)reason animateChangesUponInvalidation:(BOOL)invalidation;
- (id)_widgetContainerViewControllersForListLayoutProvider:(id)provider;
- (id)_widgetContextMenuController;
- (id)_widgetWithUniqueIdentifier:(id)identifier;
- (id)backdropGroupNameForActiveDataSource:(id)source;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)effectiveIconImageAppearance;
- (id)sbh_underlyingAvocadoHostViewControllers;
- (id)sourceBackgroundView:(id)view;
- (id)sourceView;
- (int64_t)_newActiveWidgetIndexForContentOffset:(CGPoint)offset;
- (void)_configureBackgroundViewIfNecessary:(id)necessary;
- (void)_createBackgroundViewIfNecessary:(BOOL)necessary;
- (void)_decrementBackgroundAnimationCount;
- (void)_decrementWidgetScaleAnimationCount;
- (void)_decrementWidgetSnapshotAnimationCount;
- (void)_handleInstalledAppsChanged:(id)changed;
- (void)_incrementBackgroundAnimationCount;
- (void)_incrementWidgetScaleAnimationCount;
- (void)_layoutWithAnimationUpdateMode:(int64_t)mode;
- (void)_logAllViewControllers;
- (void)_removeWidget:(id)widget animated:(BOOL)animated;
- (void)_removeWidget:(id)widget widgetContainerViewControllers:(id)controllers animated:(BOOL)animated;
- (void)_removeWidgetContainerViewControllers:(id)controllers animated:(BOOL)animated;
- (void)_removeWidgetWithUniqueIdentifier:(id)identifier widgetContainerViewControllers:(id)controllers animated:(BOOL)animated;
- (void)_requireLayoutUponActivationForWidgetContainerViewController:(id)controller;
- (void)_restartPageControlTimerWithTimeInterval:(double)interval;
- (void)_setPageControlHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_setupStateCapture;
- (void)_teardownBackgroundView:(id)view contactDelegate:(BOOL)delegate;
- (void)_teardownStateCapture;
- (void)_updateAccessibilityValue;
- (void)_updateActiveWidgetIndexAndScrollViewContentOffset;
- (void)_updateApproximateLayoutPositionForWidgetViewControllers;
- (void)_updateBackgroundViewWithAnimationUpdateMode:(int64_t)mode allowingOutsetting:(BOOL)outsetting;
- (void)_updatePageControlWithAnimationUpdateMode:(int64_t)mode;
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
- (void)_updateWidgetViewsWithAnimationUpdateMode:(int64_t)mode;
- (void)addCustomImageViewControllerObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)applyGlassIfDesiredToView:(id)view forIconImageAppearance:(id)appearance sourceView:(id)sourceView;
- (void)customImageViewControllerWantsLabelHiddenDidChange:(id)change;
- (void)dealloc;
- (void)didSelectApplicationShortcutItem:(id)item;
- (void)discardAllWidgetViewControllers;
- (void)enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock:(id)block;
- (void)enumerateWidgetViewControllersUsingBlock:(id)block;
- (void)evaluateBackground;
- (void)flashPageControlAnimated:(BOOL)animated withTimeInterval:(double)interval;
- (void)leafIcon:(id)icon didAddIconDataSource:(id)source;
- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source;
- (void)leafIcon:(id)icon didRemoveIconDataSource:(id)source;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)resizeSnapshotsForWidgetContainerViewControllers:(id)controllers isFakeWidget:(BOOL)widget reason:(id)reason;
- (void)scrollViewDidEndScrolling:(id)scrolling;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginScrolling:(id)scrolling;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setAlwaysShowsAsStack:(BOOL)stack animated:(BOOL)animated;
- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)position;
- (void)setBackgroundViewConfigurator:(id)configurator;
- (void)setBackgroundViewProvider:(id)provider;
- (void)setBrightness:(double)brightness;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFixedPageControlOffset:(id)offset animated:(BOOL)animated;
- (void)setForcesEdgeAntialiasing:(BOOL)antialiasing;
- (void)setHost:(id)host;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setImageViewAlignment:(unint64_t)alignment;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider;
- (void)setOverlapping:(BOOL)overlapping;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverrideIconImageStyleConfiguration:(id)configuration;
- (void)setPauseReasons:(unint64_t)reasons;
- (void)setPresentationMode:(int64_t)mode;
- (void)setShowingContextMenu:(BOOL)menu;
- (void)setShowsSnapshotWhenDeactivated:(BOOL)deactivated;
- (void)setShowsSquareCorners:(BOOL)corners;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUserVisibilityStatus:(unint64_t)status;
- (void)setWidgetIcon:(id)icon;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateImageAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)widgetContainerViewControllerContentViewControllerDidActivate:(id)activate;
- (void)widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration:(id)configuration;
- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)changed widgetContentIsReady:(BOOL)ready;
- (void)willShowContextMenuAtLocation:(CGPoint)location;
@end

@implementation SBHWidgetStackViewController

- (void)_updateAccessibilityValue
{
  v22 = *MEMORY[0x1E69E9840];
  widgetIcon = [(SBHWidgetStackViewController *)self widgetIcon];
  if ([widgetIcon isWidgetStackIcon])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    iconDataSources = [widgetIcon iconDataSources];
    v6 = [iconDataSources countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(iconDataSources);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) icon:widgetIcon displayNameForLocation:@"SBIconLocationRoot"];
          if (v10)
          {
            [array addObject:v10];
          }

          else
          {
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            [array addObject:v12];
          }
        }

        v7 = [iconDataSources countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    containerView = self->_containerView;
    v14 = MEMORY[0x1E696AEC0];
    v15 = [array componentsJoinedByString:{@", "}];
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

  isWidgetHitTestingDisabled = [(SBHWidgetStackViewController *)self isWidgetHitTestingDisabled];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        view = [v11 view];
        [view bs_setHitTestingDisabled:isWidgetHitTestingDisabled];

        [v11 setInteractionDisabled:isWidgetHitTestingDisabled];
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
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
  view = [(SBHWidgetStackViewController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:1];

  view2 = [(SBHWidgetStackViewController *)self view];
  [view2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v9, v11, v13}];
  containerView = self->_containerView;
  self->_containerView = v14;

  [(UIView *)self->_containerView setClipsToBounds:0];
  view3 = [(SBHWidgetStackViewController *)self view];
  [view3 addSubview:self->_containerView];

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
  view4 = [(SBHWidgetStackViewController *)self view];
  [view4 addSubview:self->_pageControl];

  view5 = [(SBHWidgetStackViewController *)self view];
  [view5 addObserver:self forKeyPath:@"alpha" options:0 context:0];

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
  icon = [(SBHWidgetStackViewController *)self icon];
  if ([icon isWidgetStackIcon])
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
  icon = [(SBHWidgetStackViewController *)self icon];
  if ([icon isWidgetStackIcon])
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

    clipsWidgetsToViewBounds = [(SBHWidgetStackViewController *)self clipsWidgetsToViewBounds];
    _showAdjacentWidgets = [(SBHWidgetStackViewController *)self _showAdjacentWidgets];
    _isContentViewExtendingOutsideBounds = [(SBHWidgetStackViewController *)self _isContentViewExtendingOutsideBounds];
    if (clipsWidgetsToViewBounds)
    {
      v10 = _showAdjacentWidgets | (_isContentViewExtendingOutsideBounds && self->_widgetSnapshotAnimationCount == 0);
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
  traitCollection = [(SBHWidgetStackViewController *)self traitCollection];
  [traitCollection displayScale];

  view = [(SBHWidgetStackViewController *)self view];
  [view bounds];

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

  userVisibilityStatus = [(SBHWidgetStackViewController *)self userVisibilityStatus];
  if (userVisibilityStatus == 3)
  {
    if ([(BSUIScrollView *)self->_scrollView isScrolling])
    {
      userVisibilityStatus = 2;
    }

    else
    {
      userVisibilityStatus = 3;
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * i) setUserVisibilityStatus:userVisibilityStatus];
      }

      v8 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
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
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v14 objects:v24 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = SBLogWidgets();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          logIdentifier = self->_logIdentifier;
          v11 = NSStringFromSBIconViewCustomIconImageViewControllerPresentationMode(self->_presentationMode);
          _effectiveWidgetContainerViewControllers2 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
          *buf = 138543874;
          v19 = logIdentifier;
          v20 = 2112;
          v21 = v11;
          v22 = 2112;
          v23 = _effectiveWidgetContainerViewControllers2;
          _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "<%{public}@> Update presentation mode (%@) for widget view controllers: %@", buf, 0x20u);
        }

        [v9 setPresentationMode:self->_presentationMode];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v14 objects:v24 count:16];
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
    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    allValues = [_effectiveWidgetContainerViewControllers allValues];

    v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * v8++) setShowsSnapshotWhenDeactivated:self->_showsSnapshotWhenDeactivated];
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPaused:pauseReasons != 0];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateApproximateLayoutPositionForWidgetViewControllers
{
  v17 = *MEMORY[0x1E69E9840];
  approximateLayoutPosition = [(SBHWidgetStackViewController *)self approximateLayoutPosition];
  v5 = v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v11++) setApproximateLayoutPosition:{approximateLayoutPosition, v5}];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
    v6 = [iconDataSources countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(iconDataSources);
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

        v7 = [iconDataSources countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  traitCollection = [(SBHWidgetStackViewController *)self traitCollection];
  [traitCollection displayScale];
  v16 = v15;

  scrollView = [(SBHWidgetStackViewController *)self scrollView];
  layer = [scrollView layer];

  [layer setAllowsEdgeAntialiasing:v4 & 1];
  [layer setShouldRasterize:v4 & 1];
  [layer setRasterizationScale:v16];
  dimmingView = [(SBHWidgetStackViewController *)self dimmingView];
  layer2 = [dimmingView layer];

  [layer2 setAllowsEdgeAntialiasing:v4 & 1];
  [layer2 setShouldRasterize:v4 & 1];
  [layer2 setRasterizationScale:v16];
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
  iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
  v6 = [iconDataSources count];
  if (v5 < v6)
  {
    v7 = [iconDataSources objectAtIndex:v5];
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
  view = [(SBHWidgetStackViewController *)self view];
  [view setNeedsLayout];

  if (([(SBHWidgetStackScrollView *)self->_scrollView isScrollAnimating]& 1) == 0)
  {
    delegate = [(SBHWidgetStackViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate widgetStackViewController:self didActivateDataSource:self->_activeWidget fromUserInteraction:{-[SBHWidgetStackScrollView isTracking](self->_scrollView, "isTracking")}];
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
  widgetIcon = [(SBHWidgetStackViewController *)self widgetIcon];
  iconDataSources = [widgetIcon iconDataSources];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBHWidgetStackViewController_widgetViewControllers__block_invoke;
  v7[3] = &unk_1E808F678;
  v7[4] = self;
  v5 = [iconDataSources bs_compactMap:v7];

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
  uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

  cancelTouchesForCurrentEventInHostedContent = [v5 cancelTouchesForCurrentEventInHostedContent];

  return cancelTouchesForCurrentEventInHostedContent;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];

  view = [(SBHWidgetStackViewController *)self view];
  [view removeObserver:self forKeyPath:@"alpha"];

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
  widgetViewControllers = [(SBHWidgetStackViewController *)self widgetViewControllers];
  v5 = [widgetViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(widgetViewControllers);
        }

        sbh_underlyingAvocadoHostViewControllers = [*(*(&v12 + 1) + 8 * i) sbh_underlyingAvocadoHostViewControllers];
        allObjects = [sbh_underlyingAvocadoHostViewControllers allObjects];
        [v3 addObjectsFromArray:allObjects];
      }

      v6 = [widgetViewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SBHWidgetStackViewController)initWithIcon:(id)icon iconListLayoutProvider:(id)provider
{
  providerCopy = provider;
  iconCopy = icon;
  v8 = +[SBHHomeScreenDomain rootSettings];
  widgetSettings = [v8 widgetSettings];
  v10 = [(SBHWidgetStackViewController *)self initWithIcon:iconCopy iconListLayoutProvider:providerCopy widgetSettings:widgetSettings];

  return v10;
}

- (SBHWidgetStackViewController)initWithIcon:(id)icon iconListLayoutProvider:(id)provider widgetSettings:(id)settings
{
  v29[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  providerCopy = provider;
  settingsCopy = settings;
  v28.receiver = self;
  v28.super_class = SBHWidgetStackViewController;
  v12 = [(SBHWidgetStackViewController *)&v28 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_icon, icon);
    [iconCopy addObserver:v13];
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@:%p", v16, v13];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v17;

    objc_storeStrong(&v13->_widgetSettings, settings);
    [(PTSettings *)v13->_widgetSettings addKeyObserver:v13];
    v13->_userInteractionEnabled = 1;
    v13->_showStackBorderWhenShowingPageControl = 0;
    v13->_flashPageControlOnNextAppearance = [(SBHWidgetSettings *)v13->_widgetSettings stackFlashesPageControlOnAppearance];
    v13->_clipsWidgetsToViewBounds = 1;
    v13->_preferredDirection = 0;
    v13->_backgroundViewFadeAnimationEnabled = 0;
    v13->_allowsGlassGrouping = 1;
    activeDataSource = [iconCopy activeDataSource];
    activeWidget = v13->_activeWidget;
    v13->_activeWidget = activeDataSource;

    objc_storeStrong(&v13->_listLayoutProvider, provider);
    v13->_imageViewAlignment = 0;
    v13->_presentationMode = 2;
    initWithDefaultValues = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    animationSettings = v13->_animationSettings;
    v13->_animationSettings = initWithDefaultValues;

    [(SBFFluidBehaviorSettings *)v13->_animationSettings setDampingRatio:1.0];
    [(SBFFluidBehaviorSettings *)v13->_animationSettings setResponse:0.35];
    v13->_automaticallyUpdatesVisiblySettled = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__handleInstalledAppsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    [(SBHWidgetStackViewController *)v13 _setupStateCapture];
    v24 = objc_opt_self();
    v29[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v26 = [(SBHWidgetStackViewController *)v13 registerForTraitChanges:v25 withAction:sel__updateWidgetViewEdgeAntialiasing];
  }

  return v13;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(SBHWidgetStackViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
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
  [(SBHWidgetStackViewController *)&v16 viewIsAppearing:appearingCopy];
  [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(SBHWidgetStackViewController *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:1 animated:appearingCopy];
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:2];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(SBHWidgetStackViewController *)&v16 viewDidAppear:appearCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(SBHWidgetStackViewController *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:1];
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(SBHWidgetStackViewController *)&v16 viewWillDisappear:disappearCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(SBHWidgetStackViewController *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v11++) toVisible:0 animated:disappearCopy];
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(SBHWidgetStackViewController *)self automaticallyUpdatesVisiblySettled])
  {
    [(SBHWidgetStackViewController *)self setUserVisibilityStatus:2];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(SBHWidgetStackViewController *)&v17 viewDidDisappear:disappearCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllers = [(SBHWidgetStackViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [(SBHWidgetStackViewController *)self bs_endAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v11++) toVisible:0];
      }

      while (v9 != v11);
      v9 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v14 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (!windowCopy)
    {
      v8 = @"NO";
    }

    *buf = 138543618;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidMoveToWindow (hasWindow=%@)", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = SBHWidgetStackViewController;
  [(SBHWidgetStackViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
}

- (void)setForcesEdgeAntialiasing:(BOOL)antialiasing
{
  if (self->_forcesEdgeAntialiasing != antialiasing)
  {
    self->_forcesEdgeAntialiasing = antialiasing;
    [(SBHWidgetStackViewController *)self _updateWidgetViewEdgeAntialiasing];
  }
}

- (void)setShowsSnapshotWhenDeactivated:(BOOL)deactivated
{
  if (self->_showsSnapshotWhenDeactivated != deactivated)
  {
    self->_showsSnapshotWhenDeactivated = deactivated;
    [(SBHWidgetStackViewController *)self _updateShowsSnapshotWhenDeactivatedForWidgetViewControllers];
  }
}

- (void)setFixedPageControlOffset:(id)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  offsetCopy = offset;
  if (self->_fixedPageControlOffset != offsetCopy)
  {
    v9 = offsetCopy;
    objc_storeStrong(&self->_fixedPageControlOffset, offset);
    if (animatedCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:v8];
    offsetCopy = v9;
  }
}

- (void)setAlwaysShowsAsStack:(BOOL)stack animated:(BOOL)animated
{
  if (self->_alwaysShowsAsStack != stack)
  {
    animatedCopy = animated;
    self->_alwaysShowsAsStack = stack;
    [(SBHWidgetStackViewController *)self _setPageControlHidden:!stack animated:?];
    if (animatedCopy)
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
    uniqueIdentifier = [(SBLeafIconDataSource *)activeWidget uniqueIdentifier];
    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v6 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

    widgetViewController = [v6 widgetViewController];
    if ([widgetViewController sbh_isMultiplexingViewController])
    {
      multiplexedViewController = [widgetViewController multiplexedViewController];

      widgetViewController = multiplexedViewController;
    }
  }

  else
  {
    widgetViewController = 0;
  }

  return widgetViewController;
}

- (void)enumerateWidgetViewControllersUsingBlock:(id)block
{
  blockCopy = block;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__SBHWidgetStackViewController_enumerateWidgetViewControllersUsingBlock___block_invoke;
  v7[3] = &unk_1E808F6A0;
  v8 = blockCopy;
  v6 = blockCopy;
  [_effectiveWidgetContainerViewControllers enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)flashPageControlAnimated:(BOOL)animated withTimeInterval:(double)interval
{
  animatedCopy = animated;
  delegate = [(SBHWidgetStackViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate widgetStackViewControllerCanFlashPageControl:self])
  {
    [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:animatedCopy];
    [(SBHWidgetStackViewController *)self _restartPageControlTimerWithTimeInterval:interval];
    if (objc_opt_respondsToSelector())
    {
      [delegate widgetStackViewControllerDidFlashPageControl:self];
    }
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

- (void)leafIcon:(id)icon didAddIconDataSource:(id)source
{
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:3, source];
  [(SBHWidgetStackViewController *)self _updateAccessibilityValue];
  delegate = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate widgetStackViewControllerWidgetCountDidChange:self];
  }
}

- (void)leafIcon:(id)icon didRemoveIconDataSource:(id)source
{
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:3, source];
  [(SBHWidgetStackViewController *)self _updateAccessibilityValue];
  delegate = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate widgetStackViewControllerWidgetCountDidChange:self];
  }
}

- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source
{
  v23 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  sourceCopy = source;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v19 = 138543618;
    v20 = logIdentifier;
    v21 = 2114;
    v22 = sourceCopy;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@> didChangeActiveDataSource:%{public}@", &v19, 0x16u);
  }

  if ([iconCopy isWidgetIcon])
  {
    v10 = iconCopy;
    iconDataSources = [v10 iconDataSources];
    v12 = [iconDataSources containsObject:self->_activeWidget];
    if (self->_pauseReasons)
    {
      if ((v12 & 1) == 0)
      {
        [(SBHWidgetStackViewController *)self _removeWidget:self->_activeWidget animated:0];
      }

      activeDataSource = [v10 activeDataSource];
      activeWidget = self->_activeWidget;
      self->_activeWidget = activeDataSource;

      pageControl = self->_pageControl;
      iconDataSources2 = [v10 iconDataSources];
      -[UIPageControl setCurrentPage:](pageControl, "setCurrentPage:", [iconDataSources2 indexOfObject:self->_activeWidget]);
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
      activeDataSource2 = [v10 activeDataSource];
      iconDataSources2 = self->_activeWidget;
      self->_activeWidget = activeDataSource2;
    }

    view = [(SBHWidgetStackViewController *)self view];
    [view setNeedsLayout];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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
    view = [(SBHWidgetStackViewController *)self view];
    layer = [view layer];

    [layer setCornerRadius:v7];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    view2 = [(SBHWidgetStackViewController *)self view];
    [view2 setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    animatedCopy = animated;
    self->_editing = editing;
    [(SBHWidgetStackViewController *)self _flashPageControlAnimated:animated];
    if (animatedCopy)
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

- (void)setWidgetIcon:(id)icon
{
  iconCopy = icon;
  icon = self->_icon;
  if (icon != iconCopy)
  {
    v9 = iconCopy;
    [(SBLeafIcon *)icon removeObserver:self];
    objc_storeStrong(&self->_icon, icon);
    [(SBLeafIcon *)v9 addObserver:self];
    activeDataSource = [(SBLeafIcon *)v9 activeDataSource];
    activeWidget = self->_activeWidget;
    self->_activeWidget = activeDataSource;

    if (v9)
    {
      [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
    }

    icon = [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2];
    iconCopy = v9;
  }

  MEMORY[0x1EEE66BB8](icon, iconCopy);
}

- (void)setListLayoutProvider:(id)provider
{
  v29 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (self->_listLayoutProvider != providerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (objc_opt_respondsToSelector())
      {
        uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
      }

      else
      {
        uniqueIdentifier = 0;
      }

      _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
      v8 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

      v9 = [(SBHWidgetStackViewController *)self _widgetContainerViewControllersForListLayoutProvider:providerCopy];
      [v9 bs_setSafeObject:v8 forKey:uniqueIdentifier];
    }

    if (!self->_widgetContainerViewControllersToRemove)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      widgetContainerViewControllersToRemove = self->_widgetContainerViewControllersToRemove;
      self->_widgetContainerViewControllersToRemove = dictionary;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __54__SBHWidgetStackViewController_setListLayoutProvider___block_invoke;
    v22 = &unk_1E8088F18;
    selfCopy = self;
    v24 = providerCopy;
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

    _effectiveWidgetContainerViewControllers2 = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    if (v13)
    {
      v12[2](v12);
      allValues = [(NSMutableDictionary *)self->_widgetContainerViewControllersToRemove allValues];
      [(SBHWidgetStackViewController *)self resizeSnapshotsForWidgetContainerViewControllers:allValues isFakeWidget:isKindOfClass & 1 reason:@"List Layout Provider Change Animation"];

      [(SBHWidgetStackViewController *)self _removeWidgetContainerViewControllers:_effectiveWidgetContainerViewControllers2 animated:0];
      allValues2 = self->_widgetContainerViewControllersToRemove;
      self->_widgetContainerViewControllersToRemove = 0;
    }

    else
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_storeStrong(&self->_widgetContainerViewControllersToRemove, _effectiveWidgetContainerViewControllers2);
      }

      v12[2](v12);
      allValues2 = [_effectiveWidgetContainerViewControllers2 allValues];
      [(SBHWidgetStackViewController *)self resizeSnapshotsForWidgetContainerViewControllers:allValues2 isFakeWidget:isKindOfClass & 1 reason:@"List Layout Provider Change Animation"];
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

- (void)resizeSnapshotsForWidgetContainerViewControllers:(id)controllers isFakeWidget:(BOOL)widget reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  controllersCopy = controllers;
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
  widgetCopy = widget;
  v13[4] = self;
  v14 = reasonCopy;
  v12 = reasonCopy;
  [controllersCopy enumerateObjectsUsingBlock:v13];
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

- (void)setShowingContextMenu:(BOOL)menu
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_showingContextMenu != menu)
  {
    menuCopy = menu;
    self->_showingContextMenu = menu;
    if (menu)
    {
      if (self->_imageUpdatesDisabledForContextMenuAssertion)
      {
LABEL_10:
        [(SBHWidgetStackViewController *)self _flashPageControlAnimated:1];
        [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:3];
        _widgetContextMenuController = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
        [_widgetContextMenuController setShowingContextMenu:menuCopy];

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
    view = [(SBHWidgetStackViewController *)self view];
    [view bounds];
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

- (void)willShowContextMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _widgetContextMenuController = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _widgetContextMenuController2 = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
    [_widgetContextMenuController2 willShowContextMenuAtLocation:{x, y}];
  }
}

- (void)setOverlapping:(BOOL)overlapping
{
  if (self->_overlapping != overlapping)
  {
    self->_overlapping = overlapping;
    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:3];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  if (self->_userInteractionEnabled != enabled)
  {
    self->_userInteractionEnabled = enabled;
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

- (id)backdropGroupNameForActiveDataSource:(id)source
{
  v3 = MEMORY[0x1E696AEC0];
  sourceCopy = source;
  v5 = [v3 alloc];
  uniqueIdentifier = [sourceCopy uniqueIdentifier];

  v7 = [v5 initWithFormat:@"SBWidget-%@", uniqueIdentifier];

  return v7;
}

- (void)setBackgroundViewProvider:(id)provider
{
  if (self->_backgroundViewProvider != provider)
  {
    v4 = [provider copy];
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

- (void)setBackgroundViewConfigurator:(id)configurator
{
  if (self->_backgroundViewConfigurator != configurator)
  {
    v4 = [configurator copy];
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

- (void)setBrightness:(double)brightness
{
  if (self->_brightness != brightness)
  {
    self->_brightness = brightness;
    if (brightness < 1.0 && !self->_dimmingView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)self->_containerView bounds];
      v6 = [v5 initWithFrame:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = v6;

      [(UIView *)self->_dimmingView setAutoresizingMask:18];
      v8 = self->_dimmingView;
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v8 setBackgroundColor:blackColor];

      v10 = self->_dimmingView;
      [(SBHWidgetStackViewController *)self continuousCornerRadius];
      [(UIView *)v10 _setContinuousCornerRadius:?];
      [(UIView *)self->_containerView addSubview:self->_dimmingView];
    }

    icon = [(SBHWidgetStackViewController *)self icon];
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
    v17 = icon;
    brightnessCopy = brightness;
    v15 = icon;
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

- (void)setUserVisibilityStatus:(unint64_t)status
{
  if (self->_userVisibilityStatus != status)
  {
    self->_userVisibilityStatus = status;
    [(SBHWidgetStackViewController *)self _updateVisiblySettledForWidgetViewControllers];
  }
}

- (void)setPresentationMode:(int64_t)mode
{
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    [(SBHWidgetStackViewController *)self _updatePresentationModeForWidgetViewControllers];
  }
}

- (void)setPauseReasons:(unint64_t)reasons
{
  if (self->_pauseReasons != reasons)
  {
    self->_pauseReasons = reasons;
    [(SBHWidgetStackViewController *)self _updatePauseReasonForWidgetViewControllers];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    pageControl = self->_pageControl;
    primaryColor = [settingsCopy primaryColor];
    [(UIPageControl *)pageControl setCurrentPageIndicatorTintColor:primaryColor];

    v7 = self->_pageControl;
    secondaryColor = [settingsCopy secondaryColor];
    [(UIPageControl *)v7 setPageIndicatorTintColor:secondaryColor];
  }
}

- (void)setImageViewAlignment:(unint64_t)alignment
{
  if (self->_imageViewAlignment != alignment)
  {
    self->_imageViewAlignment = alignment;
    view = [(SBHWidgetStackViewController *)self view];
    [view setNeedsLayout];

    view2 = [(SBHWidgetStackViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)position
{
  vertical = position.vertical;
  horizontal = position.horizontal;
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  if (!SBIconApproximateLayoutPositionEqualToApproximateLayoutPosition(self->_approximateLayoutPosition.horizontal, self->_approximateLayoutPosition.vertical, position.horizontal, position.vertical))
  {
    p_approximateLayoutPosition->horizontal = horizontal;
    p_approximateLayoutPosition->vertical = vertical;

    [(SBHWidgetStackViewController *)self _updateApproximateLayoutPositionForWidgetViewControllers];
  }
}

- (NSArray)applicationShortcutItems
{
  _widgetContextMenuController = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  applicationShortcutItems = [_widgetContextMenuController applicationShortcutItems];

  return applicationShortcutItems;
}

- (void)didSelectApplicationShortcutItem:(id)item
{
  itemCopy = item;
  _widgetContextMenuController = [(SBHWidgetStackViewController *)self _widgetContextMenuController];
  [_widgetContextMenuController didSelectApplicationShortcutItem:itemCopy];
}

- (id)_widgetContextMenuController
{
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  v5 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

  widgetContextMenuController = [v5 widgetContextMenuController];

  return widgetContextMenuController;
}

- (void)addCustomImageViewControllerObserver:(id)observer
{
  observerCopy = observer;
  customImageViewObservers = self->_customImageViewObservers;
  v8 = observerCopy;
  if (!customImageViewObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_customImageViewObservers;
    self->_customImageViewObservers = weakObjectsHashTable;

    observerCopy = v8;
    customImageViewObservers = self->_customImageViewObservers;
  }

  [(NSHashTable *)customImageViewObservers addObject:observerCopy];
}

- (void)updateImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(SBHWidgetStackScrollView *)self->_scrollView isTracking]& 1) == 0 && ![(SBHWidgetStackViewController *)self isOverlapping])
  {

    [(SBHWidgetStackViewController *)self _scrollToActiveWidgetAnimated:animatedCopy];
  }
}

- (id)_disableImageUpdatesForReason:(id)reason animateChangesUponInvalidation:(BOOL)invalidation
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!self->_imageUpdateDisableAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    imageUpdateDisableAssertions = self->_imageUpdateDisableAssertions;
    self->_imageUpdateDisableAssertions = weakObjectsHashTable;
  }

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__SBHWidgetStackViewController__disableImageUpdatesForReason_animateChangesUponInvalidation___block_invoke;
  v17 = &unk_1E808F6F0;
  objc_copyWeak(&v19, &location);
  invalidationCopy = invalidation;
  selfCopy = self;
  v10 = [v9 initWithIdentifier:@"widgetStack.disableImageUpdates" forReason:reasonCopy invalidationBlock:&v14];
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
  uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

  snapshotView = [v5 snapshotView];
  if (!snapshotView)
  {
    snapshotView = objc_alloc_init(MEMORY[0x1E69DD250]);
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [snapshotView setBackgroundColor:systemBackgroundColor];
  }

  return snapshotView;
}

- (UIView)springLoadingEffectTargetView
{
  uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v5 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

  view = [v5 view];

  return view;
}

- (BOOL)_scrollToActiveWidgetAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {
    return 0;
  }

  [(SBHWidgetStackScrollView *)self->_scrollView contentOffset];
  v5 = [(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:?];
  iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
  activeDataSource = [(SBLeafIcon *)self->_icon activeDataSource];
  v8 = [iconDataSources indexOfObject:activeDataSource];

  if (v8 == v5)
  {
    return 0;
  }

  self->_showStackBorderWhenShowingPageControl = 1;
  [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:1];
  if (!animatedCopy)
  {
    [(SBHWidgetStackViewController *)self _restartPageControlTimer];
    activeDataSource2 = [(SBLeafIcon *)self->_icon activeDataSource];
    activeWidget = self->_activeWidget;
    self->_activeWidget = activeDataSource2;

    [(UIPageControl *)self->_pageControl setCurrentPage:v8];
    scrollView = self->_scrollView;
    [(SBHWidgetStackViewController *)self _restingContentOffset];
    [(SBHWidgetStackScrollView *)scrollView setContentOffset:?];
    view = [(SBHWidgetStackViewController *)self view];
    [view setNeedsLayout];

    view2 = [(SBHWidgetStackViewController *)self view];
    [view2 layoutIfNeeded];

    return 1;
  }

  iconDataSourceCount = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  v28[0] = MEMORY[0x1E69E9820];
  v11 = v8 - v5;
  if (v8 <= v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = iconDataSourceCount;
  }

  v28[1] = 3221225472;
  v28[2] = __62__SBHWidgetStackViewController__scrollToActiveWidgetAnimated___block_invoke;
  v28[3] = &unk_1E808F718;
  if (v8 <= v5)
  {
    v13 = iconDataSourceCount;
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
  preferredDirection = [(SBHWidgetStackViewController *)self preferredDirection];
  if (!preferredDirection)
  {
    v16 = 5;
    if (v29 < v30)
    {
      v16 = 6;
    }

    goto LABEL_19;
  }

  if (preferredDirection == 1)
  {
    v16 = 5;
    goto LABEL_19;
  }

  v15 = 0.0;
  if (preferredDirection == 2)
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

- (void)_removeWidgetContainerViewControllers:(id)controllers animated:(BOOL)animated
{
  controllersCopy = controllers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__SBHWidgetStackViewController__removeWidgetContainerViewControllers_animated___block_invoke;
  v8[3] = &unk_1E808F740;
  v8[4] = self;
  v9 = controllersCopy;
  animatedCopy = animated;
  v7 = controllersCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_removeWidget:(id)widget animated:(BOOL)animated
{
  animatedCopy = animated;
  widgetCopy = widget;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  [(SBHWidgetStackViewController *)self _removeWidget:widgetCopy widgetContainerViewControllers:_effectiveWidgetContainerViewControllers animated:animatedCopy];
}

- (void)_removeWidget:(id)widget widgetContainerViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  uniqueIdentifier = [widget uniqueIdentifier];
  [(SBHWidgetStackViewController *)self _removeWidgetWithUniqueIdentifier:uniqueIdentifier widgetContainerViewControllers:controllersCopy animated:animatedCopy];
}

- (void)_removeWidgetWithUniqueIdentifier:(id)identifier widgetContainerViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  controllersCopy = controllers;
  v10 = [controllersCopy objectForKey:identifierCopy];
  if (v10)
  {
    [controllersCopy removeObjectForKey:identifierCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__SBHWidgetStackViewController__removeWidgetWithUniqueIdentifier_widgetContainerViewControllers_animated___block_invoke;
    aBlock[3] = &unk_1E8088F88;
    aBlock[4] = self;
    v35 = identifierCopy;
    v11 = v10;
    v36 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      v14 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)self->_containerView bounds];
      v15 = [v14 initWithFrame:?];
      [(UIView *)self->_containerView center];
      [v15 setCenter:?];
      [v15 setClipsToBounds:1];
      [v15 _setContinuousCornerRadius:self->_iconImageInfo.continuousCornerRadius];
      layer = [v15 layer];
      [layer setAllowsGroupOpacity:1];

      view = [(SBHWidgetStackViewController *)self view];
      [view addSubview:v15];

      view2 = [(SBHWidgetStackViewController *)self view];
      [view2 bounds];
      [v15 bounds];
      UIRectCenteredIntegralRect();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      view3 = [v11 view];
      [view3 setFrame:{v20, v22, v24, v26}];
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

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v5;

    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBHWidgetStackViewController_setOverrideIconImageAppearance___block_invoke;
    v8[3] = &unk_1E808F790;
    v9 = appearanceCopy;
    [_effectiveWidgetContainerViewControllers enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [configurationCopy copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v5;

    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__SBHWidgetStackViewController_setOverrideIconImageStyleConfiguration___block_invoke;
    v8[3] = &unk_1E808F790;
    v9 = configurationCopy;
    [_effectiveWidgetContainerViewControllers enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (id)effectiveIconImageAppearance
{
  overrideIconImageAppearance = [(SBHWidgetStackViewController *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBHWidgetStackViewController *)self overrideIconImageStyleConfiguration];
  traitCollection = [(SBHWidgetStackViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];
  v8 = [v7 widgetAppearanceWithUserInterfaceStyle:userInterfaceStyle];

  return v8;
}

- (void)setHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_host, obj);
    if (obj)
    {
      discardAllWidgetViewControllers = [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2];
    }

    else
    {
      discardAllWidgetViewControllers = [(SBHWidgetStackViewController *)self discardAllWidgetViewControllers];
    }

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](discardAllWidgetViewControllers, v6);
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
  uniqueIdentifier = [(SBLeafIconDataSource *)self->_activeWidget uniqueIdentifier];
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

  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v7 = _effectiveWidgetContainerViewControllers;
  if (uniqueIdentifier)
  {
    v8 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];
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
    widgetViewController = [v8 widgetViewController];
    [WeakRetained widgetStackViewController:self didRemoveViewController:widgetViewController];

    [v7 removeObjectForKey:uniqueIdentifier];
  }

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v9 setBackgroundColor:systemBackgroundColor];

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

- (id)sourceBackgroundView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy && (objc_getAssociatedObject(viewCopy, "SBHTransparentWidgetKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLValue], v6, v7))
  {
    v8 = SBLogWidgets();
    if (os_signpost_enabled(v8))
    {
      logIdentifier = self->_logIdentifier;
      v13 = 138543362;
      v14 = logIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", "%{public}@", &v13, 0xCu);
    }

    _createBackgroundView = [(SBHWidgetStackViewController *)self _createBackgroundView];
    [(SBHWidgetStackViewController *)self _configureBackgroundViewIfNecessary:_createBackgroundView];
    v11 = SBLogWidgets();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", " isAnimation=YES ", &v13, 2u);
    }
  }

  else
  {
    _createBackgroundView = 0;
  }

  return _createBackgroundView;
}

- (void)applyGlassIfDesiredToView:(id)view forIconImageAppearance:(id)appearance sourceView:(id)sourceView
{
  viewCopy = view;
  appearanceCopy = appearance;
  activeWidget = [(SBHWidgetStackViewController *)self activeWidget];
  if (([appearanceCopy hasGlass] & 1) != 0 || -[SBHWidgetStackViewController _shouldDrawSystemBackgroundMaterialForWidget:](self, "_shouldDrawSystemBackgroundMaterialForWidget:", activeWidget))
  {
    tintColor = [appearanceCopy tintColor];
    [viewCopy sbh_applyWidgetGlassWithTintColor:tintColor userInterfaceStyle:objc_msgSend(appearanceCopy allowingGrouping:"iconGlassUserInterfaceStyle") boostsWhitePoint:1 meshed:{0, 1}];
  }

  else
  {
    [viewCopy sbh_removeGlass];
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

- (void)setShowsSquareCorners:(BOOL)corners
{
  if (self->_showsSquareCorners != corners)
  {
    self->_showsSquareCorners = corners;
    [(UIView *)self->_backgroundView setClipsToBounds:!corners];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(SBHWidgetStackViewController *)self _pageSize];
  v5 = v4;
  [(SBHWidgetStackViewController *)self _scrollViewContentSize];
  v7 = v6;
  [scrollCopy contentOffset];
  v10 = v9;
  if (v8 >= 0.0 && v8 <= v7 - v5)
  {
    v12 = v8;
    if ([scrollCopy isScrollAnimating])
    {
      [(UIPageControl *)self->_pageControl setCurrentPage:[(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:v10, v12]];
    }

    view = [(SBHWidgetStackViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  }
}

- (void)scrollViewWillBeginScrolling:(id)scrolling
{
  v16 = *MEMORY[0x1E69E9840];
  scrollingCopy = scrolling;
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

  [scrollingCopy sbh_createGlassGroup];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  if (!self->_scrollingTouchCancellationAssertion)
  {
    cancelTouchesForCurrentEventInHostedContent = [(SBHWidgetStackViewController *)self cancelTouchesForCurrentEventInHostedContent];
    scrollingTouchCancellationAssertion = self->_scrollingTouchCancellationAssertion;
    self->_scrollingTouchCancellationAssertion = cancelTouchesForCurrentEventInHostedContent;
  }

  self->_showStackBorderWhenShowingPageControl = 1;

  [(SBHWidgetStackViewController *)self _setPageControlHidden:0 animated:1];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  scrollingTouchCancellationAssertion = self->_scrollingTouchCancellationAssertion;
  if (scrollingTouchCancellationAssertion)
  {
    [(BSInvalidatable *)scrollingTouchCancellationAssertion invalidate];
    v8 = self->_scrollingTouchCancellationAssertion;
    self->_scrollingTouchCancellationAssertion = 0;
  }

  v9 = [(SBHWidgetStackViewController *)self _newActiveWidgetIndexForContentOffset:offset->x, offset->y];
  [(UIPageControl *)self->_pageControl setCurrentPage:v9];
  delegate = [(SBHWidgetStackViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
    v12 = [iconDataSources objectAtIndex:v9];
    [delegate widgetStackViewController:self didActivateDataSource:v12 fromUserInteraction:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  if ([animationCopy isScrollAnimating])
  {
    [animationCopy stopScrollingAndZooming];
  }
}

- (void)scrollViewDidEndScrolling:(id)scrolling
{
  [scrolling sbh_removeGlass];
  [(SBHWidgetStackViewController *)self _updateActiveWidgetIndexAndScrollViewContentOffset];
  [(SBHWidgetStackViewController *)self _restartPageControlTimer];

  [(SBHWidgetStackViewController *)self _updateWidgetViewsWithAnimationUpdateMode:3];
}

- (void)customImageViewControllerWantsLabelHiddenDidChange:(id)change
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

- (void)widgetContainerViewControllerContentViewControllerDidActivate:(id)activate
{
  v14 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
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

  if ([(NSHashTable *)self->_containerViewControllersRequiringLayoutUponActivation containsObject:activateCopy])
  {
    [(NSHashTable *)self->_containerViewControllersRequiringLayoutUponActivation removeObject:activateCopy];
    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
    allValues = [_effectiveWidgetContainerViewControllers allValues];
    v9 = [allValues containsObject:activateCopy];

    if (v9)
    {
      [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:1];
    }
  }
}

- (void)widgetContainerViewControllerInitialWidgetContentReadinessChanged:(id)changed widgetContentIsReady:(BOOL)ready
{
  readyCopy = ready;
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v7 = SBLogWidgets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543874;
    v16 = logIdentifier;
    v17 = 2082;
    v18 = "[SBHWidgetStackViewController widgetContainerViewControllerInitialWidgetContentReadinessChanged:widgetContentIsReady:]";
    v19 = 1026;
    v20 = readyCopy;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> %{public}s. Widget content is ready? %{public}d", buf, 0x1Cu);
  }

  v9 = self->_widgetContainerViewControllersToRemove;
  if ([(NSMutableDictionary *)v9 count])
  {
    if (readyCopy)
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
    v14 = changedCopy;
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

- (void)widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

- (void)_requireLayoutUponActivationForWidgetContainerViewController:(id)controller
{
  controllerCopy = controller;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];
  v6 = [allValues containsObject:controllerCopy];

  if (v6)
  {
    containerViewControllersRequiringLayoutUponActivation = self->_containerViewControllersRequiringLayoutUponActivation;
    if (!containerViewControllersRequiringLayoutUponActivation)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v9 = self->_containerViewControllersRequiringLayoutUponActivation;
      self->_containerViewControllersRequiringLayoutUponActivation = weakObjectsHashTable;

      containerViewControllersRequiringLayoutUponActivation = self->_containerViewControllersRequiringLayoutUponActivation;
    }

    [(NSHashTable *)containerViewControllersRequiringLayoutUponActivation addObject:controllerCopy];
  }
}

- (BOOL)_shouldHideWidgetWithUniqueIdentifier:(id)identifier
{
  widgetContainerViewControllersToRemove = self->_widgetContainerViewControllersToRemove;
  identifierCopy = identifier;
  allKeys = [(NSMutableDictionary *)widgetContainerViewControllersToRemove allKeys];
  v6 = [allKeys containsObject:identifierCopy];

  return v6;
}

- (BOOL)_createViewControllerForWidgetIfNecessary:(id)necessary usingIconImageInfo:(SBIconImageInfo *)info
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  necessaryCopy = necessary;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uniqueIdentifier = [necessaryCopy uniqueIdentifier];
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__19;
  v51 = __Block_byref_object_dispose__19;
  v52 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];
  v17 = v48[5];
  if (!v17)
  {
    v20 = SBLogWidgets();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBHWidgetStackViewController _createViewControllerForWidgetIfNecessary:usingIconImageInfo:];
    }

    v21 = [WeakRetained widgetStackViewController:self viewControllerForDataSource:necessaryCopy];
    if (!v21 || self->_widgetSnapshotAnimationCount)
    {
      v19 = 0;
LABEL_20:

      goto LABEL_21;
    }

    widgetIcon = [(SBHWidgetStackViewController *)self widgetIcon];
    gridSizeClass = [widgetIcon gridSizeClass];

    v24 = [WeakRetained widgetStackViewController:self containerApplicationNameForDataSource:necessaryCopy];
    LOBYTE(widgetIcon) = [WeakRetained widgetStackViewController:self isDataSourceBlockedForScreenTimeExpiration:necessaryCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke;
    aBlock[3] = &unk_1E808F808;
    v41 = &v47;
    v25 = v21;
    v34 = v25;
    v35 = necessaryCopy;
    v26 = gridSizeClass;
    v36 = v26;
    selfCopy = self;
    v27 = v24;
    v38 = v27;
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v39 = uniqueIdentifier;
    v46 = widgetIcon;
    v40 = _effectiveWidgetContainerViewControllers;
    v28 = _Block_copy(aBlock);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      multiplexedViewController = v25;
LABEL_12:
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __93__SBHWidgetStackViewController__createViewControllerForWidgetIfNecessary_usingIconImageInfo___block_invoke_4;
      v31[3] = &unk_1E8089600;
      v32 = v28;
      [multiplexedViewController performBatchUpdate:v31];

LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      multiplexedViewController = [v25 multiplexedViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (multiplexedViewController)
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

  parentViewController = [v17 parentViewController];

  if (!parentViewController)
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

- (void)_createBackgroundViewIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v12 = *MEMORY[0x1E69E9840];
  if ([(SBHWidgetStackViewController *)self _appearState]&& !self->_backgroundView && (!necessaryCopy || self->_overlapping || [(BSUIScrollView *)self->_scrollView isScrolling]|| [(SBHWidgetStackViewController *)self _alwaysShowStackBorder]))
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      logIdentifier = self->_logIdentifier;
      v10 = 138543362;
      v11 = logIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_CREATE_BACKGROUND", "%{public}@", &v10, 0xCu);
    }

    _createBackgroundView = [(SBHWidgetStackViewController *)self _createBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = _createBackgroundView;

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

- (void)_teardownBackgroundView:(id)view contactDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  viewCopy = view;
  if (!viewCopy)
  {
    goto LABEL_12;
  }

  backgroundView = self->_backgroundView;
  v10 = viewCopy;
  if (backgroundView != viewCopy)
  {
    if (!delegateCopy)
    {
      goto LABEL_9;
    }

LABEL_6:
    delegate = [(SBHWidgetStackViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate widgetStackViewController:self didFinishUsingBackgroundView:v10];
    }

    goto LABEL_9;
  }

  self->_backgroundView = 0;

  if (delegateCopy)
  {
    goto LABEL_6;
  }

LABEL_9:
  view = [(SBHWidgetStackViewController *)self view];
  if ([(UIView *)v10 isDescendantOfView:view])
  {
    [(UIView *)v10 removeFromSuperview];
  }

  viewCopy = v10;
LABEL_12:
}

- (BOOL)_containerRequiresClippingToBoundsForWidget:(id)widget
{
  widgetCopy = widget;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_layoutWithAnimationUpdateMode:(int64_t)mode
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
    mode = 1;
  }

  [(SBHWidgetStackViewController *)self _updateBackgroundViewWithAnimationUpdateMode:mode];
  [(SBHWidgetStackViewController *)self _updateWidgetViewsWithAnimationUpdateMode:mode];
  [(SBHWidgetStackViewController *)self _updateWidgetViewClippingAndBackgroundView];
  [(SBHWidgetStackViewController *)self _updateWidgetViewHitTesting];
  [(SBHWidgetStackViewController *)self _updateWidgetViewEdgeAntialiasing];
  [(SBHWidgetStackViewController *)self _updateScrollViewDelaysContentTouches];
  [(SBHWidgetStackViewController *)self _updatePageControlWithAnimationUpdateMode:mode];
  v10 = SBLogWidgets();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK", " isAnimation=YES ", buf, 2u);
  }
}

- (void)_updateWidgetViewsWithAnimationUpdateMode:(int64_t)mode
{
  selfCopy = self;
  v130 = *MEMORY[0x1E69E9840];
  if (![(NSHashTable *)self->_imageUpdateDisableAssertions count])
  {
    v5 = SBLogWidgets();
    if (os_signpost_enabled(v5))
    {
      v6 = MEMORY[0x1E696AEC0];
      logIdentifier = selfCopy->_logIdentifier;
      v8 = SBStringFromAnimationUpdateMode();
      v9 = [v6 stringWithFormat:@"<%@> updateMode: %@>", logIdentifier, v8];
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS", "updateMode=%{public}@", &buf, 0xCu);
    }

    [(SBHWidgetStackViewController *)selfCopy iconImageInfo];
    v97 = v11;
    v98 = v10;
    v99 = v13;
    v100 = v12;
    BSRectWithSize();
    v15 = v14;
    v17 = v16;
    iconDataSources = [(SBLeafIcon *)selfCopy->_icon iconDataSources];
    v111 = [iconDataSources indexOfObject:selfCopy->_activeWidget];

    [(SBHWidgetStackScrollView *)selfCopy->_scrollView contentOffset];
    v101 = v19;
    [(SBHWidgetStackViewController *)selfCopy _restingContentOffset];
    v21 = v20;
    BSRectWithSize();
    v109 = v23;
    v110 = v22;
    v107 = v25;
    v108 = v24;
    continuousCornerRadius = selfCopy->_iconImageInfo.continuousCornerRadius;
    _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)selfCopy _effectiveWidgetContainerViewControllers];
    iconDataSources2 = [(SBLeafIcon *)selfCopy->_icon iconDataSources];
    v26 = [iconDataSources2 count];
    modeCopy = mode;
    if ([(SBHWidgetStackViewController *)selfCopy _appearState])
    {
      v114 = 0;
    }

    else
    {
      v114 = ![(SBHWidgetStackViewController *)selfCopy forcesVisible];
    }

    v27 = SBLogWidgets();
    v28 = _effectiveWidgetContainerViewControllers;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(SBHWidgetStackViewController *)selfCopy _updateWidgetViewsWithAnimationUpdateMode:v111];
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
      v112 = selfCopy;
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

        _showAdjacentWidgets = [(SBHWidgetStackViewController *)selfCopy _showAdjacentWidgets];
        v41 = _showAdjacentWidgets;
        v42 = _showAdjacentWidgets << 63 >> 63;
        v43 = SBLogWidgets();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v79 = selfCopy->_logIdentifier;
          v80 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
          v81 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
          v82 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
          LODWORD(buf.a) = 138544130;
          *(&buf.a + 4) = v79;
          v28 = _effectiveWidgetContainerViewControllers;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v80;
          HIWORD(buf.c) = 2112;
          *&buf.d = v81;
          LOWORD(buf.tx) = 2112;
          *(&buf.tx + 2) = v82;
          _os_log_debug_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_DEBUG, "<%{public}@> _updateWidgetViewsWithAnimationUpdateMode: relativeIndex: %@, minRelativeIndex: %@, maxRelativeIndex: %@", &buf, 0x2Au);

          selfCopy = v112;
          v26 = v102;
        }

        v44 = [iconDataSources2 objectAtIndex:v32];
        uniqueIdentifier = [v44 uniqueIdentifier];
        v46 = uniqueIdentifier;
        v47 = v39 >= v42 && v39 <= v41;
        v48 = !v47;
        v116 = uniqueIdentifier;
        if (((v48 | v114) & 1) == 0)
        {
          break;
        }

        v49 = [v28 objectForKey:uniqueIdentifier];
        if (!v49)
        {
          goto LABEL_80;
        }

        v50 = SBLogWidgets();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v84 = selfCopy->_logIdentifier;
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
        [(SBHWidgetStackViewController *)selfCopy bs_removeChildViewController:v49];
        if ([(BSUIScrollView *)selfCopy->_scrollView isScrolling])
        {
          goto LABEL_80;
        }

        [v28 removeObjectForKey:v116];
        delegate = [(SBHWidgetStackViewController *)selfCopy delegate];
        if (objc_opt_respondsToSelector())
        {
          widgetViewController = [v49 widgetViewController];
          [delegate widgetStackViewController:selfCopy didRemoveViewController:widgetViewController];
LABEL_78:
        }

LABEL_80:
        ++v32;
        if (!--v35)
        {
          goto LABEL_81;
        }
      }

      v53 = [(SBHWidgetStackViewController *)selfCopy _createViewControllerForWidgetIfNecessary:v44 usingIconImageInfo:v100, v99, v98, v97];
      v54 = modeCopy;
      if (v53)
      {
        v54 = 1;
      }

      v105 = v54;
      v49 = [v28 objectForKey:v46];
      delegate = [v49 view];
      v55 = v96 + v17 * v39;
      v56 = [(SBHWidgetStackViewController *)selfCopy _containerRequiresClippingToBoundsForWidget:v44];
      [delegate center];
      v58 = v57;
      v60 = v59;
      [delegate bounds];
      v132.origin.y = v109;
      v132.origin.x = v110;
      v132.size.height = v107;
      v132.size.width = v108;
      v61 = CGRectEqualToRect(v131, v132);
      [delegate _continuousCornerRadius];
      v63 = v62;
      requiresClippingToBounds = [v49 requiresClippingToBounds];
      if (v58 != v31 || v60 != v55)
      {
        [delegate setCenter:{v31, v55}];
      }

      if (!v61)
      {
        [delegate setBounds:{v110, v109, v108, v107}];
      }

      if (vabdd_f64(v63, continuousCornerRadius) >= 2.22044605e-16)
      {
        [delegate _setContinuousCornerRadius:continuousCornerRadius];
      }

      if (v56 != requiresClippingToBounds)
      {
        [v49 setRequiresClippingToBounds:v56];
      }

      v65 = (v29 + -1.0) * vabdd_f64(v55 - v17 * 0.5, v101) / v17 + 1.0;
      if (v29 >= v65)
      {
        v65 = v29;
      }

      v66 = fmin(v65, 1.0);
      if ([(SBHWidgetStackViewController *)selfCopy _insetWidgetsForTrackingAppearance])
      {
        v67 = v90 * v66;
      }

      else if (selfCopy->_overlapping)
      {
        v67 = v91;
      }

      else
      {
        v67 = v66;
      }

      if ([(SBHWidgetStackViewController *)selfCopy isOverlapping])
      {
        v68 = 0.75;
      }

      else
      {
        v68 = 1.0;
      }

      widgetViewController = [(SBHWidgetStackViewController *)selfCopy _backgroundColorForWidgetWithDistanceFromRestingContentOffset:v95];
      [widgetViewController alphaComponent];
      v70 = v69;
      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(&buf, v67, v67);
      if (delegate)
      {
        [delegate transform];
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      t1 = buf;
      v71 = CGAffineTransformEqualToTransform(&t1, &t2);
      v72 = v71;
      v73 = !v71;
      [delegate alpha];
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
        v77 = delegate;
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
      selfCopy = v112;
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

      v28 = _effectiveWidgetContainerViewControllers;
      v26 = v102;
      goto LABEL_78;
    }

LABEL_81:
    v85 = [iconDataSources2 bs_map:&__block_literal_global_63];
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __74__SBHWidgetStackViewController__updateWidgetViewsWithAnimationUpdateMode___block_invoke_2_126;
    v117[3] = &unk_1E808F8C8;
    v118 = v85;
    v86 = v85;
    v87 = [v28 bs_filter:v117];
    v88 = [v87 mutableCopy];

    [(SBHWidgetStackViewController *)selfCopy _removeWidgetContainerViewControllers:v88 animated:modeCopy != 2];
    v89 = SBLogWidgets();
    if (os_signpost_enabled(v89))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v89, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_STACK_WIDGET_VIEWS", " isAnimation=YES ", &buf, 2u);
    }

    [(SBHWidgetStackViewController *)selfCopy _updateVisiblySettledForWidgetViewControllers];
    [(SBHWidgetStackViewController *)selfCopy _updatePresentationModeForWidgetViewControllers];
    [(SBHWidgetStackViewController *)selfCopy _updateShowsSnapshotWhenDeactivatedForWidgetViewControllers];
    [(SBHWidgetStackViewController *)selfCopy _updatePauseReasonForWidgetViewControllers];
    [(SBHWidgetStackViewController *)selfCopy _updateApproximateLayoutPositionForWidgetViewControllers];
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

- (void)_updateBackgroundViewWithAnimationUpdateMode:(int64_t)mode allowingOutsetting:(BOOL)outsetting
{
  outsettingCopy = outsetting;
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
  _alwaysShowStackBorder = [(SBHWidgetStackViewController *)self _alwaysShowStackBorder];
  isOverlapping = [(SBHWidgetStackViewController *)self isOverlapping];
  view = [(SBHWidgetStackViewController *)self view];
  [view bounds];
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
  imageViewAlignment = [(SBHWidgetStackViewController *)self imageViewAlignment];
  v30 = self->_containerView;
  v31 = self->_backgroundView;
  v117 = self->_scrollView;
  v116 = self->_dimmingView;
  v32 = !outsettingCopy;
  if (isOverlapping && outsettingCopy)
  {
    v33 = v20 + 16.0;
    v34 = v22 + 16.0;
    v35 = v28 + 8.0;
  }

  else if ([(SBHWidgetStackViewController *)self _insetWidgetsForTrackingAppearance]&& outsettingCopy)
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

  if (isOverlapping || !_alwaysShowStackBorder || v32)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 3.0;
  }

  if (isOverlapping || !_alwaysShowStackBorder || v32)
  {
    v38 = v34;
  }

  else
  {
    v38 = v34 + 6.0;
  }

  if (isOverlapping || !_alwaysShowStackBorder || v32)
  {
    v39 = v33;
  }

  else
  {
    v39 = v33 + 6.0;
  }

  v115 = 1.0;
  if (outsettingCopy && self->_backgroundViewFadeAnimationEnabled)
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

  modeCopy = mode;
  UIRectGetCenter();
  v114 = v45;
  v110 = v46;
  v47 = -((v22 - v118) * 0.5);
  if (imageViewAlignment)
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
    selfCopy = self;
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
    [v84 sb_animateWithSettings:animationSettings mode:modeCopy animations:v120 completion:v119];
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

  iconDataSourceCount = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  if (iconDataSourceCount > 1 != [(SBHWidgetStackScrollView *)self->_scrollView isScrollEnabled])
  {
    [(SBHWidgetStackScrollView *)self->_scrollView setScrollEnabled:iconDataSourceCount > 1];
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

- (void)_updatePageControlWithAnimationUpdateMode:(int64_t)mode
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

    iconDataSourceCount = [(SBLeafIcon *)self->_icon iconDataSourceCount];
    if (iconDataSourceCount == [(UIPageControl *)self->_pageControl numberOfPages])
    {
      modeCopy = mode;
    }

    else
    {
      modeCopy = 2;
    }

    v12 = self->_pageControl;
    [(SBHWidgetSettings *)self->_widgetSettings stackPageControlScale];
    v14 = v13;
    _pageControlIsHorizontallyConstrained = [(SBHWidgetStackViewController *)self _pageControlIsHorizontallyConstrained];
    _alwaysShowStackBorder = [(SBHWidgetStackViewController *)self _alwaysShowStackBorder];
    view = [(SBHWidgetStackViewController *)self view];
    [view bounds];
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x1E695EFF8];
    [(UIPageControl *)v12 sizeForNumberOfPages:iconDataSourceCount];
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
      if (!_alwaysShowStackBorder)
      {
        v31 = 0.0;
      }

      v32 = v31 + v23 * 0.25;
      if (_pageControlIsHorizontallyConstrained)
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
    numberOfPages = [(UIPageControl *)self->_pageControl numberOfPages];
    v41 = numberOfPages != iconDataSourceCount;
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
    if (v39 || numberOfPages != iconDataSourceCount || v43 || v44)
    {
      v46 = MEMORY[0x1E69DD250];
      animationSettings = self->_animationSettings;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __74__SBHWidgetStackViewController__updatePageControlWithAnimationUpdateMode___block_invoke;
      v49[3] = &unk_1E808F918;
      v59 = v41;
      v50 = v12;
      v51 = iconDataSourceCount;
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
      [v46 sb_animateWithSettings:animationSettings mode:modeCopy animations:v49 completion:0];
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

- (id)_widgetContainerViewControllersForListLayoutProvider:(id)provider
{
  providerCopy = provider;
  if (!self->_widgetContainerViewControllersForLayoutOptions)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    widgetContainerViewControllersForLayoutOptions = self->_widgetContainerViewControllersForLayoutOptions;
    self->_widgetContainerViewControllersForLayoutOptions = dictionary;
  }

  v7 = _SBHLayoutOptionsKeyTypeForListLayoutProvider(providerCopy);
  dictionary2 = [(NSMutableDictionary *)self->_widgetContainerViewControllersForLayoutOptions objectForKey:v7];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_widgetContainerViewControllersForLayoutOptions setObject:dictionary2 forKey:v7];
  }

  return dictionary2;
}

- (void)enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock:(id)block
{
  blockCopy = block;
  widgetContainerViewControllersForLayoutOptions = self->_widgetContainerViewControllersForLayoutOptions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__SBHWidgetStackViewController_enumerateWidgetContainerViewControllersForListLayoutProviderUsingBlock___block_invoke;
  v7[3] = &unk_1E808F940;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)widgetContainerViewControllersForLayoutOptions enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)_backgroundColorForWidgetWithDistanceFromRestingContentOffset:(double)offset
{
  v3 = fmin(fmax(offset / 60.0, 0.0), 0.3);
  if ([(SBHWidgetStackViewController *)self _alwaysShowStackBorder])
  {
    v3 = v3 + 0.2;
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [systemBackgroundColor colorWithAlphaComponent:v3];

  return v5;
}

- (void)_setPageControlHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBHWidgetStackViewController *)self _alwaysShowStackPageControl]|| (v7 = 0.0, !hidden))
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
    if (animatedCopy)
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

- (void)_restartPageControlTimerWithTimeInterval:(double)interval
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
  v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:interval];
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

- (int64_t)_newActiveWidgetIndexForContentOffset:(CGPoint)offset
{
  y = offset.y;
  [(SBHWidgetStackViewController *)self _pageSize];
  v6 = v5;
  [(SBHWidgetStackViewController *)self _restingContentOffset];
  v8 = (y - v7) / v6;
  iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
  v10 = [iconDataSources indexOfObject:self->_activeWidget];

  v11 = (round(v8) + v10);
  iconDataSourceCount = [(SBLeafIcon *)self->_icon iconDataSourceCount];
  if (iconDataSourceCount <= v11)
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
    return iconDataSourceCount - 1;
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

+ (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)widget widgetViewController:(id)controller
{
  widgetCopy = widget;
  controllerCopy = controller;
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
            isTransparent = [controllerCopy isTransparent];
LABEL_11:
            v7 = isTransparent;
            goto LABEL_5;
          }
        }

        else
        {
          v10 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            isTransparent = [controllerCopy usesSystemBackgroundMaterial];
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

- (BOOL)_shouldDrawSystemBackgroundMaterialForWidget:(id)widget
{
  widgetCopy = widget;
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  v7 = [_effectiveWidgetContainerViewControllers objectForKey:uniqueIdentifier];

  widgetViewController = [v7 widgetViewController];
  v9 = objc_opt_class();
  v10 = widgetViewController;
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

  multiplexedViewController = [v12 multiplexedViewController];

  v14 = [objc_opt_class() _shouldDrawSystemBackgroundMaterialForWidget:widgetCopy widgetViewController:multiplexedViewController];
  return v14;
}

- (void)_configureBackgroundViewIfNecessary:(id)necessary
{
  backgroundViewConfigurator = necessary;
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
    activeWidget = [(SBHWidgetStackViewController *)self activeWidget];
    v9 = [(SBHWidgetStackViewController *)self backdropGroupNameForActiveDataSource:activeWidget];
    v10 = [v7 initWithFormat:@"%@-Stack", v9];
    [(UIView *)backgroundView sbh_backdropGroupName:v10];

LABEL_8:
    v5 = v11;
  }

LABEL_9:

  MEMORY[0x1EEE66BB8](backgroundViewConfigurator, v5);
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    self->_allowsGlassGrouping = grouping;
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
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (self->_allowsGlassGrouping != [v9 allowsGlassGrouping])
        {
          [v9 setAllowsGlassGrouping:?];
          [v9 updateStyleConfiguration];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  _effectiveWidgetContainerViewControllers = [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
  allValues = [_effectiveWidgetContainerViewControllers allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) updateStyleConfiguration];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_handleInstalledAppsChanged:(id)changed
{
  v28 = *MEMORY[0x1E69E9840];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
  if ([v5 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = iconDataSources;
    obj = iconDataSources;
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
            uniqueIdentifier = [v12 uniqueIdentifier];
            [(SBHWidgetStackViewController *)self _effectiveWidgetContainerViewControllers];
            v15 = v10;
            v17 = v16 = WeakRetained;
            [v17 objectForKey:uniqueIdentifier];
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

    iconDataSources = v20;
  }
}

- (id)_widgetWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconDataSources = [(SBLeafIcon *)self->_icon iconDataSources];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SBHWidgetStackViewController__widgetWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E808E7A8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [iconDataSources bs_firstObjectPassingTest:v9];

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
  v2 = *(self + 1024);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  pathCopy = path;
  view = [(SBHWidgetStackViewController *)self view];
  v10 = [pathCopy isEqualToString:@"alpha"];

  if (v10 && BSEqualObjects())
  {
    [view alpha];
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

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_widgetSettings == settings)
  {
    [(SBHWidgetStackViewController *)self _layoutWithAnimationUpdateMode:2, key];

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