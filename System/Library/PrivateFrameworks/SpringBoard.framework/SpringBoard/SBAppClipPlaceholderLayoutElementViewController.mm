@interface SBAppClipPlaceholderLayoutElementViewController
- (CGRect)statusBarAvoidanceFrame;
- (SBDeviceApplicationSceneStatusBarStateObserver)statusBarDelegate;
- (double)statusBarAlpha;
- (id)_aggregateStatusBarOverrideSettings;
- (id)_newDisplayLayoutElementForEntity:(id)entity;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level;
- (void)_beginObservingApplicationInstalls;
- (void)_beginPollingUpdateStillAvailable;
- (void)_cleanup;
- (void)_installedApplicationsDidChange:(id)change;
- (void)_launchApplication:(id)application;
- (void)_statusBarAssertionDidUpdate;
- (void)_stopObservingApplicationInstalls;
- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame;
- (void)invalidate;
- (void)prepareForReuse;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setMaskDisplayCorners:(BOOL)corners forReason:(id)reason;
- (void)statusBarAssertionDidInvalidate:(id)invalidate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBAppClipPlaceholderLayoutElementViewController

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBLayoutElementViewController *)&v3 invalidate];
  [(SBAppClipPlaceholderLayoutElementViewController *)self _cleanup];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBLayoutElementViewController *)&v3 prepareForReuse];
  [(SBAppClipPlaceholderLayoutElementViewController *)self _cleanup];
}

- (void)_cleanup
{
  placeholderViewController = self->_placeholderViewController;
  if (placeholderViewController)
  {
    [(SBAppClipOverlayViewController *)placeholderViewController invalidate];
    [(SBAppClipPlaceholderLayoutElementViewController *)self bs_removeChildViewController:self->_placeholderViewController];
    v4 = self->_placeholderViewController;
    self->_placeholderViewController = 0;
  }

  [(SBAppClipPlaceholderLayoutElementViewController *)self _stopObservingApplicationInstalls];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = 0;

  sceneIdentifier = self->_sceneIdentifier;
  self->_sceneIdentifier = 0;

  [(NSMutableArray *)self->_statusBarAssertions removeAllObjects];
  statusBarAssertions = self->_statusBarAssertions;
  self->_statusBarAssertions = 0;

  maskDisplayCornersReasons = self->_maskDisplayCornersReasons;
  self->_maskDisplayCornersReasons = 0;

  view = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  layer = [view layer];
  [layer setMaskedCorners:0];

  view2 = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  [view2 setClipsToBounds:0];
}

- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28.receiver = self;
  v28.super_class = SBAppClipPlaceholderLayoutElementViewController;
  entityCopy = entity;
  [(SBLayoutElementViewController *)&v28 configureWithWorkspaceEntity:entityCopy forLayoutElement:element layoutState:state referenceFrame:x, y, width, height];
  appClipPlaceholderEntity = [entityCopy appClipPlaceholderEntity];

  if (!appClipPlaceholderEntity)
  {
    [SBAppClipPlaceholderLayoutElementViewController configureWithWorkspaceEntity:a2 forLayoutElement:self layoutState:? referenceFrame:?];
  }

  [(SBAppClipPlaceholderLayoutElementViewController *)self loadViewIfNeeded];
  placeholderViewController = self->_placeholderViewController;
  if ((placeholderViewController == 0) == (self->_bundleIdentifier == 0))
  {
    if (placeholderViewController)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [SBAppClipPlaceholderLayoutElementViewController configureWithWorkspaceEntity:a2 forLayoutElement:self layoutState:&self->_placeholderViewController referenceFrame:&v29];
    if (v29)
    {
      goto LABEL_8;
    }
  }

  bundleIdentifier = [appClipPlaceholderEntity bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = bundleIdentifier;

  futureSceneIdentifier = [appClipPlaceholderEntity futureSceneIdentifier];
  sceneIdentifier = self->_sceneIdentifier;
  self->_sceneIdentifier = futureSceneIdentifier;

  self->_isPendingUpdate = [appClipPlaceholderEntity needsUpdate];
  v21 = [SBAppClipOverlayViewController alloc];
  appClipOverlayCoordinator = [SBApp appClipOverlayCoordinator];
  v23 = [(SBAppClipOverlayViewController *)v21 initWithCoordinator:appClipOverlayCoordinator bundleIdentifier:self->_bundleIdentifier sceneIdentifier:self->_sceneIdentifier];
  v24 = self->_placeholderViewController;
  self->_placeholderViewController = v23;

  v25 = self->_placeholderViewController;
  _contentContainerView = [(SBLayoutElementViewController *)self _contentContainerView];
  [(SBAppClipPlaceholderLayoutElementViewController *)self bs_addChildViewController:v25 withSuperview:_contentContainerView];

  [(SBAppClipOverlayViewController *)self->_placeholderViewController setDisplayedOverPlaceholder:1 animated:0];
  [(SBAppClipOverlayViewController *)self->_placeholderViewController setSceneActivationState:-1 animated:0];
  if (self->_isPendingUpdate)
  {
    [(SBAppClipOverlayViewController *)self->_placeholderViewController setNeedsUpdate];
  }

  view = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  [view setNeedsLayout];

LABEL_8:
}

- (id)_newDisplayLayoutElementForEntity:(id)entity
{
  appClipPlaceholderEntity = [entity appClipPlaceholderEntity];
  v4 = objc_alloc(MEMORY[0x277D66A50]);
  futureSceneIdentifier = [appClipPlaceholderEntity futureSceneIdentifier];
  v6 = [v4 initWithIdentifier:futureSceneIdentifier];

  bundleIdentifier = [appClipPlaceholderEntity bundleIdentifier];
  [v6 setBundleIdentifier:bundleIdentifier];

  [v6 setUIApplicationElement:1];
  return v6;
}

- (void)setCornerRadiusConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  [configurationCopy topLeft];
  v5 = v4;
  [configurationCopy bottomLeft];
  v13 = v6;
  [configurationCopy bottomRight];
  v14 = v7;
  [configurationCopy topRight];
  v15 = v8;
  for (i = 8; i != 32; i += 8)
  {
    if (v5 < *&v12[i])
    {
      v5 = *&v12[i];
    }
  }

  view = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  [view _setContinuousCornerRadius:v5];
}

- (void)setMaskDisplayCorners:(BOOL)corners forReason:(id)reason
{
  cornersCopy = corners;
  reasonCopy = reason;
  maskDisplayCornersReasons = self->_maskDisplayCornersReasons;
  v16 = reasonCopy;
  if (cornersCopy)
  {
    if (!maskDisplayCornersReasons)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_maskDisplayCornersReasons;
      self->_maskDisplayCornersReasons = v8;

      reasonCopy = v16;
      maskDisplayCornersReasons = self->_maskDisplayCornersReasons;
    }

    [(NSMutableSet *)maskDisplayCornersReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)maskDisplayCornersReasons removeObject:reasonCopy];
  }

  layoutElement = [(SBLayoutElementViewController *)self layoutElement];
  layoutState = [(SBLayoutElementViewController *)self layoutState];
  v12 = SBCornerMaskForElementInLayoutState(layoutElement, layoutState, [(NSMutableSet *)self->_maskDisplayCornersReasons count]!= 0);

  view = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  layer = [view layer];
  [layer setMaskedCorners:v12];

  view2 = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  [view2 setClipsToBounds:v12 != 0];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBAppClipPlaceholderLayoutElementViewController *)&v13 viewDidLayoutSubviews];
  _contentContainerView = [(SBLayoutElementViewController *)self _contentContainerView];
  [_contentContainerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(SBAppClipOverlayViewController *)self->_placeholderViewController view];
  [view setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBAppClipPlaceholderLayoutElementViewController *)&v5 viewDidLoad];
  view = [(SBAppClipPlaceholderLayoutElementViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v26 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBAppClipPlaceholderLayoutElementViewController *)&v19 viewWillAppear:appear];
  v5 = +[SBApplicationPlaceholderController sharedInstance];
  v6 = [v5 placeholderForDisplayID:self->_bundleIdentifier];

  if (v6 || self->_isPendingUpdate)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      bundleIdentifier = self->_bundleIdentifier;
      sceneIdentifier = self->_sceneIdentifier;
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = bundleIdentifier;
      v24 = 2114;
      v25 = sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Placeholder present or update available, will observe installation for app clip: %{public}@:%{public}@", buf, 0x20u);
    }

    [(SBAppClipPlaceholderLayoutElementViewController *)self _beginObservingApplicationInstalls];
    if (self->_isPendingUpdate)
    {
      [(SBAppClipPlaceholderLayoutElementViewController *)self _beginPollingUpdateStillAvailable];
    }
  }

  else
  {
    v12 = +[SBApplicationController sharedInstance];
    v13 = [v12 applicationWithBundleIdentifier:self->_bundleIdentifier];

    if (!v13)
    {
      [(SBAppClipPlaceholderLayoutElementViewController *)&self->_bundleIdentifier viewWillAppear:a2, self];
    }

    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = self->_bundleIdentifier;
      v18 = self->_sceneIdentifier;
      *buf = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Application already present, will launch app clip: %{public}@:%{public}@", buf, 0x20u);
    }

    [(SBAppClipPlaceholderLayoutElementViewController *)self _launchApplication:v13];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBAppClipPlaceholderLayoutElementViewController;
  [(SBAppClipPlaceholderLayoutElementViewController *)&v4 viewWillDisappear:disappear];
  [(SBAppClipPlaceholderLayoutElementViewController *)self _stopObservingApplicationInstalls];
}

- (void)statusBarAssertionDidInvalidate:(id)invalidate
{
  [(NSMutableArray *)self->_statusBarAssertions removeObject:invalidate];

  [(SBAppClipPlaceholderLayoutElementViewController *)self _statusBarAssertionDidUpdate];
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level
{
  hiddenCopy = hidden;
  v7 = objc_alloc_init(SBMutableStatusBarSettings);
  v8 = 1.0;
  if (hiddenCopy)
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [(SBMutableStatusBarSettings *)v7 setAlpha:v9];

  v10 = [[SBSceneViewStatusBarAssertion alloc] initWithStatusBarSettings:v7 nubViewHidden:0x7FFFFFFFFFFFFFFFLL atLevel:level];
  [(SBSceneViewStatusBarAssertion *)v10 addObserver:self];
  statusBarAssertions = self->_statusBarAssertions;
  if (!statusBarAssertions)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = self->_statusBarAssertions;
    self->_statusBarAssertions = v12;

    statusBarAssertions = self->_statusBarAssertions;
  }

  [(NSMutableArray *)statusBarAssertions addObject:v10];
  [(SBAppClipPlaceholderLayoutElementViewController *)self _statusBarAssertionDidUpdate];

  return v10;
}

- (void)_statusBarAssertionDidUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);
  sceneIdentifier = self->_sceneIdentifier;
  [(SBAppClipPlaceholderLayoutElementViewController *)self statusBarAlpha];
  [WeakRetained sceneWithIdentifier:sceneIdentifier didChangeStatusBarAlphaTo:?];
}

- (double)statusBarAlpha
{
  if (![(NSMutableArray *)self->_statusBarAssertions count])
  {
    return 1.0;
  }

  _aggregateStatusBarOverrideSettings = [(SBAppClipPlaceholderLayoutElementViewController *)self _aggregateStatusBarOverrideSettings];
  alpha = [_aggregateStatusBarOverrideSettings alpha];
  [alpha floatValue];
  v6 = v5;

  return v6;
}

- (CGRect)statusBarAvoidanceFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_aggregateStatusBarOverrideSettings
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableArray *)self->_statusBarAssertions sortedArrayUsingComparator:&__block_literal_global_208];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        settings = [v8 settings];

        if (settings)
        {
          settings2 = [v8 settings];
          v11 = settings2;
          if (v5)
          {
            [v5 applySettings:settings2];
          }

          else
          {
            v5 = [settings2 mutableCopy];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __86__SBAppClipPlaceholderLayoutElementViewController__aggregateStatusBarOverrideSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "level")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 level];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_beginObservingApplicationInstalls
{
  if (!self->_isObservingApplicationInstalls)
  {
    self->_isObservingApplicationInstalls = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = +[SBApplicationController sharedInstance];
    [defaultCenter addObserver:self selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v4];
  }
}

- (void)_stopObservingApplicationInstalls
{
  if (self->_isObservingApplicationInstalls)
  {
    self->_isObservingApplicationInstalls = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = +[SBApplicationController sharedInstance];
    [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:v4];
  }
}

- (void)_beginPollingUpdateStillAvailable
{
  if (self->_isPendingUpdate)
  {
    if (self->_bundleIdentifier)
    {
      v7[3] = v2;
      v7[4] = v3;
      objc_initWeak(v7, self);
      v4 = dispatch_time(0, 8000000000);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __84__SBAppClipPlaceholderLayoutElementViewController__beginPollingUpdateStillAvailable__block_invoke;
      v5[3] = &unk_2783A8C68;
      objc_copyWeak(&v6, v7);
      dispatch_after(v4, MEMORY[0x277D85CD0], v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(v7);
    }
  }
}

void __84__SBAppClipPlaceholderLayoutElementViewController__beginPollingUpdateStillAvailable__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 138);
    if (v3)
    {
      v4 = v3;
      v5 = [SBAppClipPlaceholderWorkspaceEntity isAppClipUpdateAvailableForBundleIdentifier:v4];
      v6 = SBLogCommon();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v14 = 138543618;
          v15 = v9;
          v16 = 2114;
          v17 = v4;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ The update for %{public}@ is still available. Polling.", &v14, 0x16u);
        }

        [v2 _beginPollingUpdateStillAvailable];
      }

      else
      {
        if (v7)
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v14 = 138543618;
          v15 = v11;
          v16 = 2114;
          v17 = v4;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ The update for %{public}@ is no longer available. Launching previous version.", &v14, 0x16u);
        }

        v12 = +[SBApplicationController sharedInstance];
        v13 = [v12 applicationWithBundleIdentifier:v4];

        if (v13)
        {
          v2[1128] = 0;
          [v2 _launchApplication:v13];
        }
      }
    }
  }
}

- (void)_installedApplicationsDidChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:self->_bundleIdentifier];

  v6 = SBLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      bundleIdentifier = self->_bundleIdentifier;
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Application did finish installing: %{public}@", buf, 0x16u);
    }

    v11 = MEMORY[0x277D0AB18];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __83__SBAppClipPlaceholderLayoutElementViewController__installedApplicationsDidChange___block_invoke;
    v20 = &unk_2783A92D8;
    selfCopy = self;
    v22 = v5;
    v12 = [v11 eventWithName:@"LaunchAppClipApplication" handler:&v17];
    mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
    [mEMORY[0x277D0AB20] executeOrAppendEvent:v12];
  }

  else
  {
    if (v7)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = self->_bundleIdentifier;
      *buf = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Installed applications did change, but we still don't have an application for: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_launchApplication:(id)application
{
  v28 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if (!applicationCopy)
  {
    [(SBAppClipPlaceholderLayoutElementViewController *)self _launchApplication:a2];
  }

  v6 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:applicationCopy uniqueIdentifier:self->_sceneIdentifier];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Will launch app clip from placeholder with workspace entity: %{public}@", buf, 0x16u);
  }

  v10 = MEMORY[0x277D0AC98];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v12 = [v10 storeForApplication:bundleIdentifier];

  sceneHandle = [(SBApplicationSceneEntity *)v6 sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v15 = [v12 sceneStoreForIdentifier:sceneIdentifier creatingIfNecessary:0];

  v16 = [v15 objectForKey:@"appClipIdentifier"];
  webClipService = [SBApp webClipService];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke;
  v20[3] = &unk_2783B9248;
  v21 = v6;
  v22 = v8;
  selfCopy = self;
  v18 = v8;
  v19 = v6;
  [webClipService buildLaunchActionsForAppClipWithWebClipIdentifier:v16 completion:v20];
}

void __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addActions:a2];
  v3 = +[SBWorkspace mainWorkspace];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_2;
  v5[3] = &unk_2783AAA48;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_75;
  v4[3] = &unk_2783B0350;
  v4[4] = *(a1 + 48);
  [v3 requestTransitionWithOptions:0 builder:v5 validator:v4];
}

void __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabel:@"ActivateAppClipFromPlaceholder"];
  [v3 setSource:44];
  [v3 setTransactionProvider:&__block_literal_global_70_0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_4;
  v8[3] = &unk_2783A98C8;
  v9 = *(a1 + 32);
  [v3 modifyApplicationContext:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_5;
  v5[3] = &unk_2783A8BF0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

SBActivateAppClipFromPlaceholderWorkspaceTransaction *__70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(SBAppToAppWorkspaceTransaction *)[SBActivateAppClipFromPlaceholderWorkspaceTransaction alloc] initWithTransitionRequest:v2];

  return v3;
}

void __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setActivatingEntity:v2];
  [v3 setWaitsForSceneUpdates:0];
}

void __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_5(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = SBLogCommon();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Did launch app clip from placeholder with workspace entity: %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_5_cold_1(a1, v5);
  }
}

BOOL __70__SBAppClipPlaceholderLayoutElementViewController__launchApplication___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _sbWindowScene];
  v5 = [v4 switcherController];

  if (!v5)
  {
    v6 = SBLogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      NSLog(&cfstr_ExpectedASwitc.isa);
    }
  }

  if ([v5 unlockedEnvironmentMode] == 2)
  {
    [v3 modifyApplicationContext:&__block_literal_global_81_0];
  }

  v8 = *(a1 + 32);
  if (*(v8 + 1104))
  {
    v9 = *(v8 + 1112) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SBDeviceApplicationSceneStatusBarStateObserver)statusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);

  return WeakRetained;
}

- (void)configureWithWorkspaceEntity:(uint64_t)a1 forLayoutElement:(uint64_t)a2 layoutState:referenceFrame:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppClipPlaceholderLayoutElementViewController.m" lineNumber:92 description:@"Can only configure app clip placeholder entities."];
}

- (void)configureWithWorkspaceEntity:(uint64_t)a1 forLayoutElement:(uint64_t)a2 layoutState:(void *)a3 referenceFrame:(void *)a4 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBAppClipPlaceholderLayoutElementViewController.m" lineNumber:96 description:@"Unexpected state. Are we trying to reuse this VC without going through -prepareForReuse?"];

  *a4 = *a3;
}

- (void)viewWillAppear:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"SBAppClipPlaceholderLayoutElementViewController.m" lineNumber:190 description:{@"If we don't have a placeholder, we expect to have an installed application for %@", *a1}];
}

- (void)_launchApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBAppClipPlaceholderLayoutElementViewController.m" lineNumber:396 description:{@"We expect to have an application at this point for %@:%@", *(a1 + 1104), *(a1 + 1112)}];
}

@end