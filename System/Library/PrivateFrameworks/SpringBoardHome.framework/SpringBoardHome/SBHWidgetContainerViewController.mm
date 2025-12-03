@interface SBHWidgetContainerViewController
+ (id)buildGradientBackgroundViewWithFrame:(CGRect)frame continuousCornerRadius:(double)radius;
- (BOOL)allowsEdgeAntialiasing;
- (BOOL)allowsGlassGrouping;
- (BOOL)containsInteractiveControls;
- (BOOL)interactionDisabled;
- (BOOL)isBlockedForScreenTimeExpiration;
- (BOOL)isPaused;
- (BOOL)wantsTintedAppearanceBackground;
- (NSString)description;
- (SBHWidgetContainerViewController)initWithWidgetViewController:(id)controller widgetDataSource:(id)source gridSizeClass:(id)class iconImageInfo:(SBIconImageInfo *)info applicationName:(id)name delayConfiguration:(BOOL)configuration;
- (SBHWidgetContainerViewControllerDelegate)delegate;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (id)_chsWidget;
- (id)_multiplexedViewController;
- (id)_widgetExtensionBundleIdentifier;
- (id)_widgetHostViewController;
- (id)buildSnapshotResizeCoordinatorForSnapshotSize:(CGSize)size expectNewViewController:(BOOL)controller;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)snapshotViewExcludingGlassBackgroundEffects:(BOOL)effects;
- (id)widgetContextMenuController;
- (void)_addDeactivationSnapshotViewIfNecessary;
- (void)_clearDeactivationSnapshotView;
- (void)_monitorForWidgetReadiness;
- (void)_setOriginalSize:(CGSize)size;
- (void)_updateEffectivePresentationMode;
- (void)_updateWidgetVisibility;
- (void)addObserver:(id)observer;
- (void)enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)loadView;
- (void)multiplexingViewControllerDidActivate:(id)activate;
- (void)multiplexingViewControllerWillDeactivate:(id)deactivate;
- (void)performBatchedUpdate:(id)update;
- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)position;
- (void)setBlockedForScreenTimeExpiration:(BOOL)expiration;
- (void)setInteractionDisabled:(BOOL)disabled;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverrideIconImageStyleConfiguration:(id)configuration;
- (void)setPaused:(BOOL)paused;
- (void)setPresentationMode:(int64_t)mode;
- (void)setRequiresClippingToBounds:(BOOL)bounds;
- (void)setShowsSnapshotWhenDeactivated:(BOOL)deactivated;
- (void)setUserVisibilityStatus:(unint64_t)status;
- (void)updateStyleConfiguration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)widgetStyleManager:(id)manager needsToAddBackgroundView:(id)view;
- (void)widgetStyleManager:(id)manager needsToAddFilter:(id)filter;
- (void)widgetStyleManager:(id)manager needsToRemoveBackgroundView:(id)view;
- (void)widgetStyleManager:(id)manager needsToRemoveFilter:(id)filter;
- (void)widgetStyleManagerDidUpdateConfiguration:(id)configuration;
@end

@implementation SBHWidgetContainerViewController

- (id)_widgetExtensionBundleIdentifier
{
  _chsWidget = [(SBHWidgetContainerViewController *)self _chsWidget];
  extensionIdentity = [_chsWidget extensionIdentity];

  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

  return extensionBundleIdentifier;
}

- (id)_widgetHostViewController
{
  _multiplexedViewController = [(SBHWidgetContainerViewController *)self _multiplexedViewController];
  v4 = objc_opt_class();
  v5 = _multiplexedViewController;
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

  if (!v7)
  {
    widgetViewController = self->_widgetViewController;
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

    v7 = v11;
  }

  return v7;
}

- (id)_multiplexedViewController
{
  if ([(UIViewController *)self->_widgetViewController sbh_isMultiplexingViewController])
  {
    multiplexedViewController = [(UIViewController *)self->_widgetViewController multiplexedViewController];
  }

  else
  {
    multiplexedViewController = 0;
  }

  return multiplexedViewController;
}

- (id)_chsWidget
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  widget = [_widgetHostViewController widget];

  return widget;
}

- (void)_updateWidgetVisibility
{
  v15 = *MEMORY[0x1E69E9840];
  userVisibilityStatus = [(SBHWidgetContainerViewController *)self userVisibilityStatus];
  v4 = "not visible";
  if (userVisibilityStatus == 2)
  {
    v4 = "visible not settled";
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (userVisibilityStatus == 3)
  {
    v6 = "visible settled";
  }

  else
  {
    v6 = v4;
  }

  if (userVisibilityStatus == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if ([_widgetHostViewController visibility] != v7)
  {
    v9 = SBLogWidgets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v11 = 138543618;
      v12 = logIdentifier;
      v13 = 2082;
      v14 = v6;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> Setting visibility to %{public}s", &v11, 0x16u);
    }

    [_widgetHostViewController setVisibility:v7];
  }
}

- (SBHWidgetContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadView
{
  v4 = [[SBHWidgetContainerView alloc] initWithGridSizeClass:self->_gridSizeClass iconImageInfo:self->_applicationName applicationName:self->_logIdentifier logIdentifier:self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius];
  [(SBHWidgetContainerViewController *)self setView:v4];
  [(SBHWidgetContainerViewController *)self bs_addChildViewController:self->_widgetViewController withSuperview:v4];
  view = [(UIViewController *)self->_widgetViewController view];
  [(SBHWidgetContainerView *)v4 setWidgetView:view];
}

- (void)_clearDeactivationSnapshotView
{
  deactivationSnapshotView = self->_deactivationSnapshotView;
  if (deactivationSnapshotView)
  {
    [(UIView *)deactivationSnapshotView removeFromSuperview];
    v4 = self->_deactivationSnapshotView;
    self->_deactivationSnapshotView = 0;
  }
}

- (void)_monitorForWidgetReadiness
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if (_widgetHostViewController)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__SBHWidgetContainerViewController__monitorForWidgetReadiness__block_invoke;
    v4[3] = &unk_1E80909F8;
    objc_copyWeak(&v5, &location);
    [_widgetHostViewController waitForContentReadyWithTimeout:v4 completion:3.0];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (BOOL)containsInteractiveControls
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  containsInteractiveControls = [_widgetHostViewController containsInteractiveControls];

  return containsInteractiveControls;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v2 = self->_widgetViewController;
  if ([(UIViewController *)v2 sbh_isMultiplexingViewController])
  {
    multiplexedViewController = [(UIViewController *)v2 multiplexedViewController];

    v2 = multiplexedViewController;
  }

  if ([(UIViewController *)v2 sbh_isWidgetHostViewController]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    cancelTouchesForCurrentEventInHostedContent = [(UIViewController *)v2 cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    cancelTouchesForCurrentEventInHostedContent = 0;
  }

  return cancelTouchesForCurrentEventInHostedContent;
}

- (void)_addDeactivationSnapshotViewIfNecessary
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  showsSnapshotWhenDeactivated = [(SBHWidgetContainerViewController *)self showsSnapshotWhenDeactivated];
  if ([(SBHWidgetContainerViewController *)self isWidgetControllerActive])
  {
    v4 = !self->_allowDeactivationSnapshotViewForActiveWidgetController;
    if (!showsSnapshotWhenDeactivated)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if (!showsSnapshotWhenDeactivated)
    {
      goto LABEL_12;
    }
  }

  if (!v4 && !self->_deactivationSnapshotView && _widgetHostViewController != 0)
  {
    snapshotView = [(SBHWidgetContainerViewController *)self snapshotView];
    deactivationSnapshotView = self->_deactivationSnapshotView;
    self->_deactivationSnapshotView = snapshotView;

    [(UIView *)self->_deactivationSnapshotView setClipsToBounds:1];
    v8 = self->_deactivationSnapshotView;
    view = [(SBHWidgetContainerViewController *)self view];
    [view bounds];
    [(UIView *)v8 setFrame:?];

    [(UIView *)self->_deactivationSnapshotView setAutoresizingMask:18];
    view2 = [(SBHWidgetContainerViewController *)self view];
    [view2 addSubview:self->_deactivationSnapshotView];

    if ([(UIViewController *)self->_widgetViewController sbh_isMultiplexingViewController])
    {
      [(UIViewController *)self->_widgetViewController setMultiplexedViewControllerShowsContentWhileDeactivated:1];
    }
  }

LABEL_12:
}

- (SBHWidgetContainerViewController)initWithWidgetViewController:(id)controller widgetDataSource:(id)source gridSizeClass:(id)class iconImageInfo:(SBIconImageInfo *)info applicationName:(id)name delayConfiguration:(BOOL)configuration
{
  nameCopy = name;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  controllerCopy = controller;
  sourceCopy = source;
  classCopy = class;
  infoCopy = info;
  v49.receiver = self;
  v49.super_class = SBHWidgetContainerViewController;
  v26 = [(SBHWidgetContainerViewController *)&v49 initWithNibName:0 bundle:0];
  v27 = v26;
  if (v26)
  {
    v47 = sourceCopy;
    v48 = controllerCopy;
    p_width = &v26->_iconImageInfo.size.width;
    v26->_iconImageInfo.size.width = v17;
    v26->_iconImageInfo.size.height = v16;
    v26->_iconImageInfo.scale = v15;
    v26->_iconImageInfo.continuousCornerRadius = v14;
    objc_storeStrong(&v26->_widgetViewController, controller);
    v27->_delayInitialConfiguration = nameCopy;
    if ([(UIViewController *)v27->_widgetViewController sbh_isMultiplexingViewController])
    {
      [(UIViewController *)v27->_widgetViewController addObserver:v27];
    }

    objc_storeStrong(&v27->_widgetDataSource, source);
    v29 = [classCopy copy];
    gridSizeClass = v27->_gridSizeClass;
    v27->_gridSizeClass = v29;

    v31 = [(SBIconImageInfo *)infoCopy copy];
    applicationName = v27->_applicationName;
    v27->_applicationName = v31;

    v27->_requiresClippingToBounds = 0;
    v27->_requestedPresentationMode = 2;
    v27->_effectivePresentationMode = 2;
    _chsWidget = [(SBHWidgetContainerViewController *)v27 _chsWidget];
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    [_chsWidget extensionIdentity];
    v46 = infoCopy;
    v38 = v37 = classCopy;
    kind = [_chsWidget kind];
    [_chsWidget family];
    v40 = NSStringFromWidgetFamily();
    v41 = [v34 stringWithFormat:@"%@:%p widget=[%@:%@:%@]", v36, v27, v38, kind, v40];
    logIdentifier = v27->_logIdentifier;
    v27->_logIdentifier = v41;

    classCopy = v37;
    infoCopy = v46;

    v43 = [[SBHWidgetStyleManager alloc] initWithWidgetViewController:v27->_widgetViewController widgetDataSource:v27->_widgetDataSource gridSizeClass:v27->_gridSizeClass iconImageInfo:v27 delegate:*p_width, v27->_iconImageInfo.size.height, v27->_iconImageInfo.scale, v27->_iconImageInfo.continuousCornerRadius];
    widgetStyleManager = v27->_widgetStyleManager;
    v27->_widgetStyleManager = v43;

    sourceCopy = v47;
    controllerCopy = v48;
  }

  return v27;
}

- (void)performBatchedUpdate:(id)update
{
  ++self->_batchUpdateCount;
  (*(update + 2))(update, a2);
  v4 = self->_batchUpdateCount - 1;
  self->_batchUpdateCount = v4;
  if (!v4 && self->_presentationModeDirty)
  {

    [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewWillAppear:appear];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewWillAppear", buf, 0xCu);
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewIsAppearing:appearing];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewIsAppearing", buf, 0xCu);
  }

  [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
  if (![(UIViewController *)self->_widgetViewController sbh_isMultiplexingViewController])
  {
    [(SBHWidgetContainerViewController *)self setWidgetControllerActive:1];
    [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
    [(SBHWidgetContainerViewController *)self _monitorForWidgetReadiness];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewDidAppear:appear];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidAppear", buf, 0xCu);
  }

  [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewWillDisappear:disappear];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewWillDisappear", buf, 0xCu);
  }

  [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
  if (![(UIViewController *)self->_widgetViewController sbh_isMultiplexingViewController])
  {
    [(SBHWidgetContainerViewController *)self setWidgetControllerActive:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewDidDisappear:disappear];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewDidDisappear", buf, 0xCu);
  }

  [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
}

- (BOOL)interactionDisabled
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  isInteractionDisabled = [_widgetHostViewController isInteractionDisabled];

  return isInteractionDisabled;
}

- (void)setInteractionDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  [_widgetHostViewController setInteractionDisabled:disabledCopy];
}

- (id)snapshotViewExcludingGlassBackgroundEffects:(BOOL)effects
{
  effectsCopy = effects;
  v23 = *MEMORY[0x1E69E9840];
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if (effectsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    rawSnapshotView = [_widgetHostViewController rawSnapshotView];
  }

  else
  {
    rawSnapshotView = [_widgetHostViewController snapshotView];
  }

  snapshotView = rawSnapshotView;
  if (!rawSnapshotView)
  {
    view = [(UIViewController *)self->_widgetViewController view];
    snapshotView = [view snapshotView];
  }

  widgetContainerView = [(SBHWidgetContainerViewController *)self widgetContainerView];
  screenTimeLockoutView = [widgetContainerView screenTimeLockoutView];

  v11 = SBLogWidgets();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    _widgetHostViewController2 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    v19 = 138543618;
    v20 = logIdentifier;
    v21 = 2114;
    v22 = _widgetHostViewController2;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> Snapshot view requested for widget: %{public}@", &v19, 0x16u);
  }

  if (screenTimeLockoutView)
  {
    snapshotView2 = [screenTimeLockoutView snapshotView];
    [snapshotView addSubview:snapshotView2];

    v15 = SBLogWidgets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_logIdentifier;
      _widgetHostViewController3 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = _widgetHostViewController3;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@> Snapshot view for screenTimeLockoutView was added to snapshotView's hierarchy: %{public}@", &v19, 0x16u);
    }
  }

  return snapshotView;
}

- (id)widgetContextMenuController
{
  v2 = self->_widgetViewController;
  if ([(UIViewController *)v2 sbh_isMultiplexingViewController])
  {
    multiplexedViewController = [(UIViewController *)v2 multiplexedViewController];

    v2 = multiplexedViewController;
  }

  v4 = v2;
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  [_widgetHostViewController setAnimationsPaused:pausedCopy];
}

- (BOOL)isPaused
{
  _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  areAnimationsPaused = [_widgetHostViewController areAnimationsPaused];

  return areAnimationsPaused;
}

- (void)setBlockedForScreenTimeExpiration:(BOOL)expiration
{
  expirationCopy = expiration;
  [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  widgetContainerView = [(SBHWidgetContainerViewController *)self widgetContainerView];
  [widgetContainerView setBlockedForScreenTimeExpiration:expirationCopy];
}

- (BOOL)isBlockedForScreenTimeExpiration
{
  widgetContainerView = [(SBHWidgetContainerViewController *)self widgetContainerView];
  isBlockedForScreenTimeExpiration = [widgetContainerView isBlockedForScreenTimeExpiration];

  return isBlockedForScreenTimeExpiration;
}

- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  traitCollection = [(SBHWidgetContainerViewController *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  view = [(SBHWidgetContainerViewController *)self view];
  layer = [view layer];

  [layer setAllowsEdgeAntialiasing:antialiasingCopy];
  [layer setRasterizationScale:v7];
}

- (BOOL)allowsEdgeAntialiasing
{
  view = [(SBHWidgetContainerViewController *)self view];
  layer = [view layer];

  LOBYTE(view) = [layer allowsEdgeAntialiasing];
  return view;
}

- (void)setUserVisibilityStatus:(unint64_t)status
{
  if (self->_userVisibilityStatus != status)
  {
    self->_userVisibilityStatus = status;
    [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
  }
}

- (void)setPresentationMode:(int64_t)mode
{
  if (self->_requestedPresentationMode != mode)
  {
    self->_requestedPresentationMode = mode;
    [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  }
}

- (void)_updateEffectivePresentationMode
{
  if (self->_batchUpdateCount)
  {
    self->_presentationModeDirty = 1;
  }

  else
  {
    self->_presentationModeDirty = 0;
    requestedPresentationMode = self->_requestedPresentationMode;
    v4 = 3;
    if (requestedPresentationMode != 1)
    {
      v4 = 1;
    }

    if (requestedPresentationMode)
    {
      v5 = v4;
    }

    else
    {
      v5 = 2;
    }

    if ([(SBHWidgetContainerViewController *)self isBlockedForScreenTimeExpiration])
    {
      v5 = 1;
    }

    _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    [_widgetHostViewController setPresentationMode:v5];
  }
}

- (void)setRequiresClippingToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  widgetContainerView = [(SBHWidgetContainerViewController *)self widgetContainerView];
  [widgetContainerView setRequiresClippingToBounds:boundsCopy];
}

- (void)setShowsSnapshotWhenDeactivated:(BOOL)deactivated
{
  if (self->_showsSnapshotWhenDeactivated != deactivated)
  {
    self->_showsSnapshotWhenDeactivated = deactivated;
    if (deactivated)
    {
      [(SBHWidgetContainerViewController *)self _addDeactivationSnapshotViewIfNecessary];
    }

    else
    {
      [(SBHWidgetContainerViewController *)self _clearDeactivationSnapshotView];
    }
  }
}

- (id)buildSnapshotResizeCoordinatorForSnapshotSize:(CGSize)size expectNewViewController:(BOOL)controller
{
  controllerCopy = controller;
  height = size.height;
  width = size.width;
  v8 = self->_widgetViewController;
  if ([(UIViewController *)v8 sbh_isMultiplexingViewController])
  {
    if (self->_deactivationSnapshotView)
    {
      v9 = height == self->_originalSize.height && width == self->_originalSize.width;
    }

    else
    {
      v9 = 0;
    }

    self->_allowDeactivationSnapshotViewForActiveWidgetController = 1;
    v11 = v8;
    [(SBHWidgetContainerViewController *)self setShowsSnapshotWhenDeactivated:1];
    [(SBHWidgetContainerViewController *)self _addDeactivationSnapshotViewIfNecessary];
    view = [(SBHWidgetContainerViewController *)self view];
    [view bounds];
    [(SBHWidgetContainerViewController *)self _setOriginalSize:v13, v14];
    v15 = [SBHWidgetContainerViewSnapshotResizeCoordinator alloc];
    view2 = [(SBHWidgetContainerViewController *)self view];
    view3 = [(UIViewController *)v11 view];

    height = [(SBHWidgetContainerViewSnapshotResizeCoordinator *)v15 initWithResizableView:view2 multiplexingView:view3 newSize:controllerCopy hideMultiplexingViewInitially:v9 showMultiplexingViewWhenFinished:width, height];
    [(SBHWidgetContainerViewSnapshotResizeCoordinator *)height setDelegate:self];
  }

  else
  {
    height = 0;
  }

  return height;
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
    v7 = self->_widgetViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v7 setApproximateLayoutPosition:horizontal, vertical];
    }
  }
}

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    widgetStyleManager = [(SBHWidgetContainerViewController *)self widgetStyleManager];
    [widgetStyleManager setOverrideIconImageAppearance:appearanceCopy];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    widgetStyleManager = [(SBHWidgetContainerViewController *)self widgetStyleManager];
    [widgetStyleManager setOverrideIconImageStyleConfiguration:configurationCopy];
  }
}

- (id)effectiveIconImageAppearance
{
  overrideIconImageAppearance = [(SBHWidgetContainerViewController *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBHWidgetContainerViewController *)self overrideIconImageStyleConfiguration];
  traitCollection = [(SBHWidgetContainerViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];
  v8 = [v7 widgetAppearanceWithUserInterfaceStyle:userInterfaceStyle];

  return v8;
}

- (id)effectiveIconImageStyleConfiguration
{
  overrideIconImageAppearance = [(SBHWidgetContainerViewController *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBHWidgetContainerViewController *)self overrideIconImageStyleConfiguration];
  traitCollection = [(SBHWidgetContainerViewController *)self traitCollection];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollection overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v6;
}

- (BOOL)wantsTintedAppearanceBackground
{
  effectiveIconImageAppearance = [(SBHWidgetContainerViewController *)self effectiveIconImageAppearance];
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor([effectiveIconImageAppearance appearanceType]);

  return HasTintColor;
}

- (BOOL)allowsGlassGrouping
{
  widgetStyleManager = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  allowsGlassGrouping = [widgetStyleManager allowsGlassGrouping];

  return allowsGlassGrouping;
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  groupingCopy = grouping;
  widgetStyleManager = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  [widgetStyleManager setAllowsGlassGrouping:groupingCopy];
}

- (void)updateStyleConfiguration
{
  self->_delayInitialConfiguration = 0;
  widgetStyleManager = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  [widgetStyleManager updateConfiguration];
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

- (void)enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  delegate = [(SBHWidgetContainerViewController *)self delegate];
  if (!selector || (objc_opt_respondsToSelector() & 1) != 0)
  {
    blockCopy[2](blockCopy, delegate);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
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

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (!selector || (objc_opt_respondsToSelector() & 1) != 0)
        {
          blockCopy[2](blockCopy, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)multiplexingViewControllerDidActivate:(id)activate
{
  [(SBHWidgetContainerViewController *)self setWidgetControllerActive:1];
  [(SBHWidgetContainerViewController *)self _clearDeactivationSnapshotView];
  [(SBHWidgetStyleManager *)self->_widgetStyleManager updateConfiguration];
  [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
  [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__SBHWidgetContainerViewController_multiplexingViewControllerDidActivate___block_invoke;
  v4[3] = &unk_1E80909A8;
  v4[4] = self;
  [(SBHWidgetContainerViewController *)self enumerateObserversRespondingToSelector:sel_widgetContainerViewControllerContentViewControllerDidActivate_ usingBlock:v4];
  [(SBHWidgetContainerViewController *)self _monitorForWidgetReadiness];
}

- (void)multiplexingViewControllerWillDeactivate:(id)deactivate
{
  [(SBHWidgetContainerViewController *)self setWidgetControllerActive:0];
  [(SBHWidgetContainerViewController *)self _addDeactivationSnapshotViewIfNecessary];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__SBHWidgetContainerViewController_multiplexingViewControllerWillDeactivate___block_invoke;
  v4[3] = &unk_1E80909A8;
  v4[4] = self;
  [(SBHWidgetContainerViewController *)self enumerateObserversRespondingToSelector:sel_widgetContainerViewControllerContentViewControllerWillDeactivate_ usingBlock:v4];
}

- (void)widgetStyleManager:(id)manager needsToAddBackgroundView:(id)view
{
  viewCopy = view;
  view = [(SBHWidgetContainerViewController *)self view];
  [view setBackgroundView:viewCopy];
}

- (void)widgetStyleManager:(id)manager needsToRemoveBackgroundView:(id)view
{
  v4 = [(SBHWidgetContainerViewController *)self view:manager];
  [v4 setBackgroundView:0];
}

- (void)widgetStyleManager:(id)manager needsToAddFilter:(id)filter
{
  filterCopy = filter;
  view = [(SBHWidgetContainerViewController *)self view];
  widgetView = [view widgetView];
  layer = [widgetView layer];

  [layer sbh_addFilter:filterCopy];
}

- (void)widgetStyleManager:(id)manager needsToRemoveFilter:(id)filter
{
  filterCopy = filter;
  view = [(SBHWidgetContainerViewController *)self view];
  widgetView = [view widgetView];
  layer = [widgetView layer];

  name = [filterCopy name];

  [layer sbh_removeFilterWithName:name];
}

- (void)widgetStyleManagerDidUpdateConfiguration:(id)configuration
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__SBHWidgetContainerViewController_widgetStyleManagerDidUpdateConfiguration___block_invoke;
  v3[3] = &unk_1E80909A8;
  v3[4] = self;
  [(SBHWidgetContainerViewController *)self enumerateObserversRespondingToSelector:sel_widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration_ usingBlock:v3];
}

- (void)_setOriginalSize:(CGSize)size
{
  if (self->_originalSize.width == *MEMORY[0x1E695F060] && self->_originalSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    self->_originalSize = size;
  }
}

void __62__SBHWidgetContainerViewController__monitorForWidgetReadiness__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setContentReady:a2];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__SBHWidgetContainerViewController__monitorForWidgetReadiness__block_invoke_2;
    v5[3] = &unk_1E80909D0;
    v5[4] = v4;
    v6 = a2;
    [v4 enumerateObserversRespondingToSelector:sel_widgetContainerViewControllerInitialWidgetContentReadinessChanged_widgetContentIsReady_ usingBlock:v5];
  }
}

+ (id)buildGradientBackgroundViewWithFrame:(CGRect)frame continuousCornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14[2] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.133333333 alpha:1.0];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0784313725 alpha:1.0];
  v11 = [objc_alloc(getPUIGradientViewClass()) initWithFrame:{x, y, width, height}];
  [v11 setAutoresizingMask:18];
  [v11 _setContinuousCornerRadius:radius];
  v14[0] = [v9 CGColor];
  v14[1] = [v10 CGColor];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v11 setColors:v12 locations:0 type:*MEMORY[0x1E6979DA0]];

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_widgetViewController withName:@"widgetViewController"];
  v5 = [v3 appendUnsignedInteger:self->_userVisibilityStatus withName:@"userVisibilityStatus"];
  _chsWidget = [(SBHWidgetContainerViewController *)self _chsWidget];

  if (_chsWidget)
  {
    _chsWidget2 = [(SBHWidgetContainerViewController *)self _chsWidget];
    intentReference = [_chsWidget2 intentReference];
    intent = [intentReference intent];
    v10 = [v3 appendUnsignedInteger:objc_msgSend(intent withName:{"_indexingHash"), @"intentIdentifier"}];

    _widgetHostViewController = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    v12 = [v3 appendPointer:_widgetHostViewController withName:@"widgetHostViewController"];

    _chsWidget3 = [(SBHWidgetContainerViewController *)self _chsWidget];
    extensionIdentity = [_chsWidget3 extensionIdentity];
    v15 = [v3 appendObject:extensionIdentity withName:@"extensionIdentity"];
  }

  view = [(SBHWidgetContainerViewController *)self view];
  window = [view window];
  v18 = [v3 appendBool:window != 0 withName:@"attachedToHierarchy"];

  build = [v3 build];

  return build;
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

@end