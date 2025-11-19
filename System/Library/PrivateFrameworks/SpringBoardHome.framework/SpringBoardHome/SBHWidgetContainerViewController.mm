@interface SBHWidgetContainerViewController
+ (id)buildGradientBackgroundViewWithFrame:(CGRect)a3 continuousCornerRadius:(double)a4;
- (BOOL)allowsEdgeAntialiasing;
- (BOOL)allowsGlassGrouping;
- (BOOL)containsInteractiveControls;
- (BOOL)interactionDisabled;
- (BOOL)isBlockedForScreenTimeExpiration;
- (BOOL)isPaused;
- (BOOL)wantsTintedAppearanceBackground;
- (NSString)description;
- (SBHWidgetContainerViewController)initWithWidgetViewController:(id)a3 widgetDataSource:(id)a4 gridSizeClass:(id)a5 iconImageInfo:(SBIconImageInfo *)a6 applicationName:(id)a7 delayConfiguration:(BOOL)a8;
- (SBHWidgetContainerViewControllerDelegate)delegate;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (id)_chsWidget;
- (id)_multiplexedViewController;
- (id)_widgetExtensionBundleIdentifier;
- (id)_widgetHostViewController;
- (id)buildSnapshotResizeCoordinatorForSnapshotSize:(CGSize)a3 expectNewViewController:(BOOL)a4;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)snapshotViewExcludingGlassBackgroundEffects:(BOOL)a3;
- (id)widgetContextMenuController;
- (void)_addDeactivationSnapshotViewIfNecessary;
- (void)_clearDeactivationSnapshotView;
- (void)_monitorForWidgetReadiness;
- (void)_setOriginalSize:(CGSize)a3;
- (void)_updateEffectivePresentationMode;
- (void)_updateWidgetVisibility;
- (void)addObserver:(id)a3;
- (void)enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)loadView;
- (void)multiplexingViewControllerDidActivate:(id)a3;
- (void)multiplexingViewControllerWillDeactivate:(id)a3;
- (void)performBatchedUpdate:(id)a3;
- (void)setAllowsEdgeAntialiasing:(BOOL)a3;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)a3;
- (void)setBlockedForScreenTimeExpiration:(BOOL)a3;
- (void)setInteractionDisabled:(BOOL)a3;
- (void)setOverrideIconImageAppearance:(id)a3;
- (void)setOverrideIconImageStyleConfiguration:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPresentationMode:(int64_t)a3;
- (void)setRequiresClippingToBounds:(BOOL)a3;
- (void)setShowsSnapshotWhenDeactivated:(BOOL)a3;
- (void)setUserVisibilityStatus:(unint64_t)a3;
- (void)updateStyleConfiguration;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)widgetStyleManager:(id)a3 needsToAddBackgroundView:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToAddFilter:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToRemoveBackgroundView:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToRemoveFilter:(id)a4;
- (void)widgetStyleManagerDidUpdateConfiguration:(id)a3;
@end

@implementation SBHWidgetContainerViewController

- (id)_widgetExtensionBundleIdentifier
{
  v2 = [(SBHWidgetContainerViewController *)self _chsWidget];
  v3 = [v2 extensionIdentity];

  v4 = [v3 extensionBundleIdentifier];

  return v4;
}

- (id)_widgetHostViewController
{
  v3 = [(SBHWidgetContainerViewController *)self _multiplexedViewController];
  v4 = objc_opt_class();
  v5 = v3;
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
    v3 = [(UIViewController *)self->_widgetViewController multiplexedViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_chsWidget
{
  v2 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  v3 = [v2 widget];

  return v3;
}

- (void)_updateWidgetVisibility
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SBHWidgetContainerViewController *)self userVisibilityStatus];
  v4 = "not visible";
  if (v3 == 2)
  {
    v4 = "visible not settled";
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 3)
  {
    v6 = "visible settled";
  }

  else
  {
    v6 = v4;
  }

  if (v3 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  v8 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if ([v8 visibility] != v7)
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

    [v8 setVisibility:v7];
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
  v3 = [(UIViewController *)self->_widgetViewController view];
  [(SBHWidgetContainerView *)v4 setWidgetView:v3];
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
  v3 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if (v3)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__SBHWidgetContainerViewController__monitorForWidgetReadiness__block_invoke;
    v4[3] = &unk_1E80909F8;
    objc_copyWeak(&v5, &location);
    [v3 waitForContentReadyWithTimeout:v4 completion:3.0];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (BOOL)containsInteractiveControls
{
  v2 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  v3 = [v2 containsInteractiveControls];

  return v3;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v2 = self->_widgetViewController;
  if ([(UIViewController *)v2 sbh_isMultiplexingViewController])
  {
    v3 = [(UIViewController *)v2 multiplexedViewController];

    v2 = v3;
  }

  if ([(UIViewController *)v2 sbh_isWidgetHostViewController]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(UIViewController *)v2 cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_addDeactivationSnapshotViewIfNecessary
{
  v11 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  v3 = [(SBHWidgetContainerViewController *)self showsSnapshotWhenDeactivated];
  if ([(SBHWidgetContainerViewController *)self isWidgetControllerActive])
  {
    v4 = !self->_allowDeactivationSnapshotViewForActiveWidgetController;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (!v4 && !self->_deactivationSnapshotView && v11 != 0)
  {
    v6 = [(SBHWidgetContainerViewController *)self snapshotView];
    deactivationSnapshotView = self->_deactivationSnapshotView;
    self->_deactivationSnapshotView = v6;

    [(UIView *)self->_deactivationSnapshotView setClipsToBounds:1];
    v8 = self->_deactivationSnapshotView;
    v9 = [(SBHWidgetContainerViewController *)self view];
    [v9 bounds];
    [(UIView *)v8 setFrame:?];

    [(UIView *)self->_deactivationSnapshotView setAutoresizingMask:18];
    v10 = [(SBHWidgetContainerViewController *)self view];
    [v10 addSubview:self->_deactivationSnapshotView];

    if ([(UIViewController *)self->_widgetViewController sbh_isMultiplexingViewController])
    {
      [(UIViewController *)self->_widgetViewController setMultiplexedViewControllerShowsContentWhileDeactivated:1];
    }
  }

LABEL_12:
}

- (SBHWidgetContainerViewController)initWithWidgetViewController:(id)a3 widgetDataSource:(id)a4 gridSizeClass:(id)a5 iconImageInfo:(SBIconImageInfo *)a6 applicationName:(id)a7 delayConfiguration:(BOOL)a8
{
  v12 = a7;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v49.receiver = self;
  v49.super_class = SBHWidgetContainerViewController;
  v26 = [(SBHWidgetContainerViewController *)&v49 initWithNibName:0 bundle:0];
  v27 = v26;
  if (v26)
  {
    v47 = v23;
    v48 = v22;
    p_width = &v26->_iconImageInfo.size.width;
    v26->_iconImageInfo.size.width = v17;
    v26->_iconImageInfo.size.height = v16;
    v26->_iconImageInfo.scale = v15;
    v26->_iconImageInfo.continuousCornerRadius = v14;
    objc_storeStrong(&v26->_widgetViewController, a3);
    v27->_delayInitialConfiguration = v12;
    if ([(UIViewController *)v27->_widgetViewController sbh_isMultiplexingViewController])
    {
      [(UIViewController *)v27->_widgetViewController addObserver:v27];
    }

    objc_storeStrong(&v27->_widgetDataSource, a4);
    v29 = [v24 copy];
    gridSizeClass = v27->_gridSizeClass;
    v27->_gridSizeClass = v29;

    v31 = [(SBIconImageInfo *)v25 copy];
    applicationName = v27->_applicationName;
    v27->_applicationName = v31;

    v27->_requiresClippingToBounds = 0;
    v27->_requestedPresentationMode = 2;
    v27->_effectivePresentationMode = 2;
    v33 = [(SBHWidgetContainerViewController *)v27 _chsWidget];
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    [v33 extensionIdentity];
    v46 = v25;
    v38 = v37 = v24;
    v39 = [v33 kind];
    [v33 family];
    v40 = NSStringFromWidgetFamily();
    v41 = [v34 stringWithFormat:@"%@:%p widget=[%@:%@:%@]", v36, v27, v38, v39, v40];
    logIdentifier = v27->_logIdentifier;
    v27->_logIdentifier = v41;

    v24 = v37;
    v25 = v46;

    v43 = [[SBHWidgetStyleManager alloc] initWithWidgetViewController:v27->_widgetViewController widgetDataSource:v27->_widgetDataSource gridSizeClass:v27->_gridSizeClass iconImageInfo:v27 delegate:*p_width, v27->_iconImageInfo.size.height, v27->_iconImageInfo.scale, v27->_iconImageInfo.continuousCornerRadius];
    widgetStyleManager = v27->_widgetStyleManager;
    v27->_widgetStyleManager = v43;

    v23 = v47;
    v22 = v48;
  }

  return v27;
}

- (void)performBatchedUpdate:(id)a3
{
  ++self->_batchUpdateCount;
  (*(a3 + 2))(a3, a2);
  v4 = self->_batchUpdateCount - 1;
  self->_batchUpdateCount = v4;
  if (!v4 && self->_presentationModeDirty)
  {

    [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewWillAppear:a3];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> viewWillAppear", buf, 0xCu);
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewIsAppearing:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewDidAppear:a3];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewWillDisappear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerViewController;
  [(SBHWidgetContainerViewController *)&v6 viewDidDisappear:a3];
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
  v2 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  v3 = [v2 isInteractionDisabled];

  return v3;
}

- (void)setInteractionDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  [v4 setInteractionDisabled:v3];
}

- (id)snapshotViewExcludingGlassBackgroundEffects:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 rawSnapshotView];
  }

  else
  {
    v6 = [v5 snapshotView];
  }

  v7 = v6;
  if (!v6)
  {
    v8 = [(UIViewController *)self->_widgetViewController view];
    v7 = [v8 snapshotView];
  }

  v9 = [(SBHWidgetContainerViewController *)self widgetContainerView];
  v10 = [v9 screenTimeLockoutView];

  v11 = SBLogWidgets();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v13 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    v19 = 138543618;
    v20 = logIdentifier;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> Snapshot view requested for widget: %{public}@", &v19, 0x16u);
  }

  if (v10)
  {
    v14 = [v10 snapshotView];
    [v7 addSubview:v14];

    v15 = SBLogWidgets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_logIdentifier;
      v17 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@> Snapshot view for screenTimeLockoutView was added to snapshotView's hierarchy: %{public}@", &v19, 0x16u);
    }
  }

  return v7;
}

- (id)widgetContextMenuController
{
  v2 = self->_widgetViewController;
  if ([(UIViewController *)v2 sbh_isMultiplexingViewController])
  {
    v3 = [(UIViewController *)v2 multiplexedViewController];

    v2 = v3;
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

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  [v4 setAnimationsPaused:v3];
}

- (BOOL)isPaused
{
  v2 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
  v3 = [v2 areAnimationsPaused];

  return v3;
}

- (void)setBlockedForScreenTimeExpiration:(BOOL)a3
{
  v3 = a3;
  [(SBHWidgetContainerViewController *)self _updateEffectivePresentationMode];
  v5 = [(SBHWidgetContainerViewController *)self widgetContainerView];
  [v5 setBlockedForScreenTimeExpiration:v3];
}

- (BOOL)isBlockedForScreenTimeExpiration
{
  v2 = [(SBHWidgetContainerViewController *)self widgetContainerView];
  v3 = [v2 isBlockedForScreenTimeExpiration];

  return v3;
}

- (void)setAllowsEdgeAntialiasing:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHWidgetContainerViewController *)self traitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = [(SBHWidgetContainerViewController *)self view];
  v9 = [v8 layer];

  [v9 setAllowsEdgeAntialiasing:v3];
  [v9 setRasterizationScale:v7];
}

- (BOOL)allowsEdgeAntialiasing
{
  v2 = [(SBHWidgetContainerViewController *)self view];
  v3 = [v2 layer];

  LOBYTE(v2) = [v3 allowsEdgeAntialiasing];
  return v2;
}

- (void)setUserVisibilityStatus:(unint64_t)a3
{
  if (self->_userVisibilityStatus != a3)
  {
    self->_userVisibilityStatus = a3;
    [(SBHWidgetContainerViewController *)self _updateWidgetVisibility];
  }
}

- (void)setPresentationMode:(int64_t)a3
{
  if (self->_requestedPresentationMode != a3)
  {
    self->_requestedPresentationMode = a3;
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

    v6 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    [v6 setPresentationMode:v5];
  }
}

- (void)setRequiresClippingToBounds:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetContainerViewController *)self widgetContainerView];
  [v4 setRequiresClippingToBounds:v3];
}

- (void)setShowsSnapshotWhenDeactivated:(BOOL)a3
{
  if (self->_showsSnapshotWhenDeactivated != a3)
  {
    self->_showsSnapshotWhenDeactivated = a3;
    if (a3)
    {
      [(SBHWidgetContainerViewController *)self _addDeactivationSnapshotViewIfNecessary];
    }

    else
    {
      [(SBHWidgetContainerViewController *)self _clearDeactivationSnapshotView];
    }
  }
}

- (id)buildSnapshotResizeCoordinatorForSnapshotSize:(CGSize)a3 expectNewViewController:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
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
    v12 = [(SBHWidgetContainerViewController *)self view];
    [v12 bounds];
    [(SBHWidgetContainerViewController *)self _setOriginalSize:v13, v14];
    v15 = [SBHWidgetContainerViewSnapshotResizeCoordinator alloc];
    v16 = [(SBHWidgetContainerViewController *)self view];
    v17 = [(UIViewController *)v11 view];

    v10 = [(SBHWidgetContainerViewSnapshotResizeCoordinator *)v15 initWithResizableView:v16 multiplexingView:v17 newSize:v4 hideMultiplexingViewInitially:v9 showMultiplexingViewWhenFinished:width, height];
    [(SBHWidgetContainerViewSnapshotResizeCoordinator *)v10 setDelegate:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v7 = self->_widgetViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v7 setApproximateLayoutPosition:horizontal, vertical];
    }
  }
}

- (void)setOverrideIconImageAppearance:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    v6 = [(SBHWidgetContainerViewController *)self widgetStyleManager];
    [v6 setOverrideIconImageAppearance:v7];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    v6 = [(SBHWidgetContainerViewController *)self widgetStyleManager];
    [v6 setOverrideIconImageStyleConfiguration:v7];
  }
}

- (id)effectiveIconImageAppearance
{
  v3 = [(SBHWidgetContainerViewController *)self overrideIconImageAppearance];
  v4 = [(SBHWidgetContainerViewController *)self overrideIconImageStyleConfiguration];
  v5 = [(SBHWidgetContainerViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v5 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];
  v8 = [v7 widgetAppearanceWithUserInterfaceStyle:v6];

  return v8;
}

- (id)effectiveIconImageStyleConfiguration
{
  v3 = [(SBHWidgetContainerViewController *)self overrideIconImageAppearance];
  v4 = [(SBHWidgetContainerViewController *)self overrideIconImageStyleConfiguration];
  v5 = [(SBHWidgetContainerViewController *)self traitCollection];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v5 overrideIconImageAppearance:v3 overrideIconImageStyleConfiguration:v4];

  return v6;
}

- (BOOL)wantsTintedAppearanceBackground
{
  v2 = [(SBHWidgetContainerViewController *)self effectiveIconImageAppearance];
  HasTintColor = SBHIconImageAppearanceTypeHasTintColor([v2 appearanceType]);

  return HasTintColor;
}

- (BOOL)allowsGlassGrouping
{
  v2 = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  v3 = [v2 allowsGlassGrouping];

  return v3;
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  [v4 setAllowsGlassGrouping:v3];
}

- (void)updateStyleConfiguration
{
  self->_delayInitialConfiguration = 0;
  v2 = [(SBHWidgetContainerViewController *)self widgetStyleManager];
  [v2 updateConfiguration];
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

- (void)enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(SBHWidgetContainerViewController *)self delegate];
  if (!a3 || (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6[2](v6, v7);
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
        if (!a3 || (objc_opt_respondsToSelector() & 1) != 0)
        {
          v6[2](v6, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)multiplexingViewControllerDidActivate:(id)a3
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

- (void)multiplexingViewControllerWillDeactivate:(id)a3
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

- (void)widgetStyleManager:(id)a3 needsToAddBackgroundView:(id)a4
{
  v5 = a4;
  v6 = [(SBHWidgetContainerViewController *)self view];
  [v6 setBackgroundView:v5];
}

- (void)widgetStyleManager:(id)a3 needsToRemoveBackgroundView:(id)a4
{
  v4 = [(SBHWidgetContainerViewController *)self view:a3];
  [v4 setBackgroundView:0];
}

- (void)widgetStyleManager:(id)a3 needsToAddFilter:(id)a4
{
  v5 = a4;
  v8 = [(SBHWidgetContainerViewController *)self view];
  v6 = [v8 widgetView];
  v7 = [v6 layer];

  [v7 sbh_addFilter:v5];
}

- (void)widgetStyleManager:(id)a3 needsToRemoveFilter:(id)a4
{
  v5 = a4;
  v9 = [(SBHWidgetContainerViewController *)self view];
  v6 = [v9 widgetView];
  v7 = [v6 layer];

  v8 = [v5 name];

  [v7 sbh_removeFilterWithName:v8];
}

- (void)widgetStyleManagerDidUpdateConfiguration:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__SBHWidgetContainerViewController_widgetStyleManagerDidUpdateConfiguration___block_invoke;
  v3[3] = &unk_1E80909A8;
  v3[4] = self;
  [(SBHWidgetContainerViewController *)self enumerateObserversRespondingToSelector:sel_widgetContainerViewControllerContentViewControllerDidUpdateStyleConfiguration_ usingBlock:v3];
}

- (void)_setOriginalSize:(CGSize)a3
{
  if (self->_originalSize.width == *MEMORY[0x1E695F060] && self->_originalSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    self->_originalSize = a3;
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

+ (id)buildGradientBackgroundViewWithFrame:(CGRect)a3 continuousCornerRadius:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14[2] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.133333333 alpha:1.0];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0784313725 alpha:1.0];
  v11 = [objc_alloc(getPUIGradientViewClass()) initWithFrame:{x, y, width, height}];
  [v11 setAutoresizingMask:18];
  [v11 _setContinuousCornerRadius:a4];
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
  v6 = [(SBHWidgetContainerViewController *)self _chsWidget];

  if (v6)
  {
    v7 = [(SBHWidgetContainerViewController *)self _chsWidget];
    v8 = [v7 intentReference];
    v9 = [v8 intent];
    v10 = [v3 appendUnsignedInteger:objc_msgSend(v9 withName:{"_indexingHash"), @"intentIdentifier"}];

    v11 = [(SBHWidgetContainerViewController *)self _widgetHostViewController];
    v12 = [v3 appendPointer:v11 withName:@"widgetHostViewController"];

    v13 = [(SBHWidgetContainerViewController *)self _chsWidget];
    v14 = [v13 extensionIdentity];
    v15 = [v3 appendObject:v14 withName:@"extensionIdentity"];
  }

  v16 = [(SBHWidgetContainerViewController *)self view];
  v17 = [v16 window];
  v18 = [v3 appendBool:v17 != 0 withName:@"attachedToHierarchy"];

  v19 = [v3 build];

  return v19;
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