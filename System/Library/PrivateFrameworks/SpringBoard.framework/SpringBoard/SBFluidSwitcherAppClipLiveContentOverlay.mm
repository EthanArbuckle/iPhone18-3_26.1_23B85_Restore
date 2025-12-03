@interface SBFluidSwitcherAppClipLiveContentOverlay
- (SBFluidSwitcherAppClipLiveContentOverlay)initWithPlaceholderEntity:(id)entity windowScene:(id)scene;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (SBWindowScene)_sbWindowScene;
- (UIRectCornerRadii)cornerRadii;
- (id)_statusBarReusePool;
- (id)currentStatusBarStyleAttributes;
- (id)liveSceneIdentityToken;
- (void)_beginPollingUpdateStillAvailable;
- (void)_createAndConfigureStatusBar;
- (void)_installedApplicationsDidChange:(id)change;
- (void)_launchApplication:(id)application;
- (void)dealloc;
- (void)invalidate;
- (void)setContentReferenceSize:(CGSize)size interfaceOrientation:(int64_t)orientation;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setStatusBarHidden:(BOOL)hidden nubViewHidden:(BOOL)viewHidden animator:(id)animator;
- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
@end

@implementation SBFluidSwitcherAppClipLiveContentOverlay

- (SBFluidSwitcherAppClipLiveContentOverlay)initWithPlaceholderEntity:(id)entity windowScene:(id)scene
{
  v49 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  sceneCopy = scene;
  v42.receiver = self;
  v42.super_class = SBFluidSwitcherAppClipLiveContentOverlay;
  v8 = [(SBFluidSwitcherAppClipLiveContentOverlay *)&v42 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sbWindowScene, sceneCopy);
    bundleIdentifier = [entityCopy bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    futureSceneIdentifier = [entityCopy futureSceneIdentifier];
    sceneIdentifier = v9->_sceneIdentifier;
    v9->_sceneIdentifier = futureSceneIdentifier;

    v9->_isPendingUpdate = [entityCopy needsUpdate];
    v14 = objc_alloc(MEMORY[0x277D67DB0]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    containerView = v9->_containerView;
    v9->_containerView = v15;

    [(SBUISizeObservingView *)v9->_containerView setDelegate:v9];
    v17 = [SBAppClipOverlayViewController alloc];
    appClipOverlayCoordinator = [SBApp appClipOverlayCoordinator];
    v19 = [(SBAppClipOverlayViewController *)v17 initWithCoordinator:appClipOverlayCoordinator bundleIdentifier:v9->_bundleIdentifier sceneIdentifier:v9->_sceneIdentifier];
    placeholderViewController = v9->_placeholderViewController;
    v9->_placeholderViewController = v19;

    v21 = v9->_containerView;
    view = [(SBAppClipOverlayViewController *)v9->_placeholderViewController view];
    [(SBUISizeObservingView *)v21 addSubview:view];

    [(SBAppClipOverlayViewController *)v9->_placeholderViewController setDisplayedOverPlaceholder:1 animated:0];
    [(SBAppClipOverlayViewController *)v9->_placeholderViewController setSceneActivationState:-1 animated:0];
    if (v9->_isPendingUpdate)
    {
      [(SBAppClipOverlayViewController *)v9->_placeholderViewController setNeedsUpdate];
    }

    [(SBFluidSwitcherAppClipLiveContentOverlay *)v9 _createAndConfigureStatusBar];
    v23 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:v9->_sceneIdentifier];
    displayLayoutElement = v9->_displayLayoutElement;
    v9->_displayLayoutElement = v23;

    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setBundleIdentifier:v9->_bundleIdentifier];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLayoutRole:1];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setLevel:1];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setUIApplicationElement:1];
    [(SBSDisplayLayoutElement *)v9->_displayLayoutElement setHasKeyboardFocus:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v26 = +[SBApplicationController sharedInstance];
    [defaultCenter addObserver:v9 selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v26];

    v27 = +[SBApplicationPlaceholderController sharedInstance];
    v28 = [v27 placeholderForDisplayID:v9->_bundleIdentifier];

    if (v28 || v9->_isPendingUpdate)
    {
      v29 = SBLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = v9->_bundleIdentifier;
        v33 = v9->_sceneIdentifier;
        *buf = 138543874;
        v44 = v31;
        v45 = 2114;
        v46 = v32;
        v47 = 2114;
        v48 = v33;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Placeholder present or update available, will observe installation for app clip: %{public}@:%{public}@", buf, 0x20u);
      }

      if (v9->_isPendingUpdate)
      {
        [(SBFluidSwitcherAppClipLiveContentOverlay *)v9 _beginPollingUpdateStillAvailable];
      }
    }

    else
    {
      v34 = +[SBApplicationController sharedInstance];
      v35 = [v34 applicationWithBundleIdentifier:v9->_bundleIdentifier];

      if (!v35)
      {
        [SBFluidSwitcherAppClipLiveContentOverlay initWithPlaceholderEntity:windowScene:];
      }

      v36 = SBLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = v9->_bundleIdentifier;
        v40 = v9->_sceneIdentifier;
        *buf = 138543874;
        v44 = v38;
        v45 = 2114;
        v46 = v39;
        v47 = 2114;
        v48 = v40;
        _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ Application already present, will launch app clip: %{public}@:%{public}@", buf, 0x20u);
      }

      [(SBFluidSwitcherAppClipLiveContentOverlay *)v9 _launchApplication:v35];
    }
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = +[SBApplicationController sharedInstance];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:v4];

  _statusBarReusePool = [(SBFluidSwitcherAppClipLiveContentOverlay *)self _statusBarReusePool];
  [_statusBarReusePool recycleStatusBar:self->_statusBar];

  v6.receiver = self;
  v6.super_class = SBFluidSwitcherAppClipLiveContentOverlay;
  [(SBFluidSwitcherAppClipLiveContentOverlay *)&v6 dealloc];
}

- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size
{
  if (self->_containerView == view)
  {
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    view = [(SBAppClipOverlayViewController *)self->_placeholderViewController view];
    [view setFrame:{v7, v9, v11, v13}];

    statusBar = self->_statusBar;

    [(UIStatusBar *)statusBar setFrame:v7, v9, v11, v13];
  }
}

- (void)setContentReferenceSize:(CGSize)size interfaceOrientation:(int64_t)orientation
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__SBFluidSwitcherAppClipLiveContentOverlay_setContentReferenceSize_interfaceOrientation___block_invoke;
  v4[3] = &__block_descriptor_48_e33_v16__0__SBSDisplayLayoutElement_8l;
  sizeCopy = size;
  [(SBFluidSwitcherAppClipLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v4];
}

void __89__SBFluidSwitcherAppClipLiveContentOverlay_setContentReferenceSize_interfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  SBRectWithSize();
  [v2 setReferenceFrame:?];
}

- (void)setStatusBarHidden:(BOOL)hidden nubViewHidden:(BOOL)viewHidden animator:(id)animator
{
  animatorCopy = animator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBFluidSwitcherAppClipLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke;
  v10[3] = &unk_2783A9F58;
  v10[4] = self;
  hiddenCopy = hidden;
  v8 = MEMORY[0x223D6F7F0](v10);
  v9 = v8;
  if (animatorCopy)
  {
    animatorCopy[2](animatorCopy, v8, 0);
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

uint64_t __86__SBFluidSwitcherAppClipLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 32) setAlpha:v1];
}

- (id)currentStatusBarStyleAttributes
{
  statusBar = [(UIStatusBar *)self->_statusBar statusBar];
  if (objc_opt_respondsToSelector())
  {
    styleAttributes = [statusBar styleAttributes];
  }

  else
  {
    styleAttributes = 0;
  }

  return styleAttributes;
}

- (id)liveSceneIdentityToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__42;
  v11 = __Block_byref_object_dispose__42;
  v12 = 0;
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SBFluidSwitcherAppClipLiveContentOverlay_liveSceneIdentityToken__block_invoke;
  v6[3] = &unk_2783B0A20;
  v6[4] = self;
  v6[5] = &v7;
  [mEMORY[0x277D0AAD8] enumerateScenesWithBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__SBFluidSwitcherAppClipLiveContentOverlay_liveSceneIdentityToken__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ([v11 isActive])
  {
    v5 = [v11 settings];
    if ([v5 isForeground])
    {
      v6 = [v11 identifier];
      v7 = [v6 isEqual:*(*(a1 + 32) + 16)];

      if (v7)
      {
        v8 = [v11 identityToken];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

- (void)_createAndConfigureStatusBar
{
  _statusBarReusePool = [(SBFluidSwitcherAppClipLiveContentOverlay *)self _statusBarReusePool];
  v4 = [_statusBarReusePool getReusableStatusBarWithReason:@"app clip live content overlay"];
  statusBar = self->_statusBar;
  self->_statusBar = v4;

  v13 = +[SBMedusaDomain rootSettings];
  if ([v13 statusBarDebugBackgroundColorsEnabled])
  {
    v6 = self->_statusBar;
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    v8 = [yellowColor colorWithAlphaComponent:0.4];
    [(UIStatusBar *)v6 setBackgroundColor:v8];
  }

  v9 = [MEMORY[0x277D75A78] defaultStyleForRequestedStyle:1 styleOverrides:0];
  v10 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:_SBStatusBarStyleFromLegacyStyle(v9) foregroundColor:0];
  [(UIStatusBar *)self->_statusBar setStyleRequest:v10];
  [(UIStatusBar *)self->_statusBar setHidden:0];
  [(SBUISizeObservingView *)self->_containerView addSubview:self->_statusBar];
  v11 = self->_statusBar;
  view = [(SBAppClipOverlayViewController *)self->_placeholderViewController view];
  [view bounds];
  [(UIStatusBar *)v11 setFrame:?];

  [(UIStatusBar *)self->_statusBar setAutoresizingMask:18];
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
      v5[2] = __77__SBFluidSwitcherAppClipLiveContentOverlay__beginPollingUpdateStillAvailable__block_invoke;
      v5[3] = &unk_2783A8C68;
      objc_copyWeak(&v6, v7);
      dispatch_after(v4, MEMORY[0x277D85CD0], v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(v7);
    }
  }
}

void __77__SBFluidSwitcherAppClipLiveContentOverlay__beginPollingUpdateStillAvailable__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
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
          v2[48] = 0;
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
    v19 = __76__SBFluidSwitcherAppClipLiveContentOverlay__installedApplicationsDidChange___block_invoke;
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
  v35 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  if (!applicationCopy)
  {
    [(SBFluidSwitcherAppClipLiveContentOverlay *)self _launchApplication:a2];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v7 = [SBDeviceApplicationSceneEntity alloc];
  sceneIdentifier = self->_sceneIdentifier;
  sceneManager = [WeakRetained sceneManager];
  _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
  v11 = [(SBDeviceApplicationSceneEntity *)v7 initWithApplication:applicationCopy uniqueIdentifier:sceneIdentifier sceneHandleProvider:sceneManager displayIdentity:_fbsDisplayIdentity];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = SBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v13;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Will launch app clip from placeholder with workspace entity: %{public}@", buf, 0x16u);
  }

  v15 = MEMORY[0x277D0AC98];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v17 = [v15 storeForApplication:bundleIdentifier];

  sceneHandle = [(SBApplicationSceneEntity *)v11 sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v20 = [v17 sceneStoreForIdentifier:sceneIdentifier creatingIfNecessary:0];

  v21 = [v20 objectForKey:@"appClipIdentifier"];
  webClipService = [SBApp webClipService];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke;
  v26[3] = &unk_2783B3D18;
  v27 = v11;
  v28 = WeakRetained;
  v29 = v13;
  selfCopy = self;
  v23 = v13;
  v24 = WeakRetained;
  v25 = v11;
  [webClipService buildLaunchActionsForAppClipWithWebClipIdentifier:v21 completion:v26];
}

void __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addActions:a2];
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [*(a1 + 40) _fbsDisplayConfiguration];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_2;
  v10[3] = &unk_2783AAA48;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_47;
  v7[3] = &unk_2783B3CF0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v3 requestTransitionWithOptions:0 displayConfiguration:v4 builder:v10 validator:v7];
}

void __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabel:@"ActivateAppClipFromPlaceholder"];
  [v3 setSource:44];
  [v3 setTransactionProvider:&__block_literal_global_123];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_4;
  v8[3] = &unk_2783A98C8;
  v9 = *(a1 + 32);
  [v3 modifyApplicationContext:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_5;
  v5[3] = &unk_2783A8BF0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

SBActivateAppClipFromPlaceholderWorkspaceTransaction *__63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(SBAppToAppWorkspaceTransaction *)[SBActivateAppClipFromPlaceholderWorkspaceTransaction alloc] initWithTransitionRequest:v2];

  return v3;
}

void __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setActivatingEntity:v2];
  [v3 setWaitsForSceneUpdates:0];
}

void __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_5(uint64_t a1, int a2)
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

BOOL __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) switcherController];
  v5 = [v4 unlockedEnvironmentMode];

  if (v5 == 2)
  {
    [v3 modifyApplicationContext:&__block_literal_global_50_1];
  }

  v6 = *(a1 + 40);
  if (*(v6 + 8))
  {
    v7 = *(v6 + 16) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_statusBarReusePool
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  statusBarManager = [WeakRetained statusBarManager];
  reusePool = [statusBarManager reusePool];

  return reusePool;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [(SBFluidSwitcherAppClipLiveContentOverlay *)a2 updateDisplayLayoutElementWithBuilder:?];
    }

    builderCopy2 = [WeakRetained displayLayoutPublisher];
    if (!builderCopy2)
    {
      [SBFluidSwitcherAppClipLiveContentOverlay updateDisplayLayoutElementWithBuilder:];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [builderCopy2 transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v11 = [builderCopy2 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    [v9 invalidate];
  }

  else
  {
    v13 = *(builder + 2);
    builderCopy2 = builder;
    v13();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (active)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [(SBFluidSwitcherAppClipLiveContentOverlay *)a2 setDisplayLayoutElementActive:?];
    }

    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    if (!displayLayoutPublisher)
    {
      [SBFluidSwitcherAppClipLiveContentOverlay setDisplayLayoutElementActive:];
    }

    v7 = [displayLayoutPublisher addElement:self->_displayLayoutElement];
    v8 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v7;

    v9 = displayLayoutPublisher;
  }

  else
  {
    if (!displayLayoutElementAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    v9 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = 0;
}

- (SBSwitcherLiveContentOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (void)initWithPlaceholderEntity:windowScene:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v1 object:v0 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:124 description:{@"If we don't have a placeholder, we expect to have an installed application for %@", *v2}];
}

- (void)_launchApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:347 description:{@"We expect to have an application at this point for %@:%@", *(a1 + 8), *(a1 + 16)}];
}

void __63__SBFluidSwitcherAppClipLiveContentOverlay__launchApplication___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Failed to launch app clip from placeholder with workspace entity: %{public}@", &v4, 0x16u);
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:403 description:{@"No window scene to get a publisher: %@", a2}];
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:403 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

- (void)setDisplayLayoutElementActive:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:421 description:{@"No window scene to get a publisher: %@", a2}];
}

- (void)setDisplayLayoutElementActive:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBFluidSwitcherAppClipLiveContentOverlay.m" lineNumber:421 description:{@"No publisher for window scene: %@; self: %@", v0, v1}];
}

@end