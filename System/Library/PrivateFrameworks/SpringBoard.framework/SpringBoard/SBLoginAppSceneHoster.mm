@interface SBLoginAppSceneHoster
- (SBApplication)hostedApp;
- (SBLoginAppSceneHoster)init;
- (SBLoginAppSceneHosterDelegate)delegate;
- (void)_updateHIDEventDeferralsIfNecessary;
- (void)killLoginApp;
- (void)launchLoginAppWithInitialOrientation:(int64_t)orientation completion:(id)completion;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setDeferHIDEvents:(BOOL)events;
@end

@implementation SBLoginAppSceneHoster

- (SBLoginAppSceneHoster)init
{
  v5.receiver = self;
  v5.super_class = SBLoginAppSceneHoster;
  v2 = [(SBLoginAppSceneHoster *)&v5 init];
  if (v2)
  {
    v3 = +[SBSceneManagerCoordinator sharedInstance];
    [v3 registerSceneWorkspaceIdentifierToIgnore:@"LoginWorkspace"];
  }

  return v2;
}

- (void)launchLoginAppWithInitialOrientation:(int64_t)orientation completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_scene)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CC1E70]);
    hostedAppBundleID = [(SBLoginAppSceneHoster *)self hostedAppBundleID];
    v54[0] = 0;
    v10 = [v8 initWithBundleIdentifier:hostedAppBundleID allowPlaceholder:0 error:v54];
    v11 = v54[0];

    if (v10)
    {
      v43 = v11;
      identities = [v10 identities];
      firstObject = [identities firstObject];

      v42 = firstObject;
      v14 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:firstObject LSApplicationRecord:v10];
      v15 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      hostedApp = [(SBLoginAppSceneHoster *)self hostedApp];
      v40 = v15;
      v17 = [v15 newSceneIdentityForApplication:hostedApp];

      windowSceneManager = [SBApp windowSceneManager];
      embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
      _fbsDisplayConfiguration = [embeddedDisplayWindowScene _fbsDisplayConfiguration];

      mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
      definition = [MEMORY[0x277D0AD48] definition];
      v39 = v17;
      [definition setIdentity:v17];
      specification = [MEMORY[0x277D67BE8] specification];
      [definition setSpecification:specification];

      v41 = v14;
      v23 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:v14];
      [definition setClientIdentity:v23];

      mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
      v25 = [mEMORY[0x277D0AAD8] createSceneWithDefinition:definition];
      scene = self->_scene;
      self->_scene = v25;

      v27 = [SBDeviceApplicationSceneHandle alloc];
      hostedApp2 = [(SBLoginAppSceneHoster *)self hostedApp];
      v29 = self->_scene;
      identity = [_fbsDisplayConfiguration identity];
      v31 = [(SBApplicationSceneHandle *)v27 _initWithApplication:hostedApp2 scene:v29 displayIdentity:identity];
      sceneHandle = self->_sceneHandle;
      self->_sceneHandle = v31;

      v33 = self->_scene;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke;
      v49[3] = &unk_2783A8DF8;
      v34 = mainConfiguration;
      v50 = v34;
      v35 = _fbsDisplayConfiguration;
      selfCopy = self;
      orientationCopy = orientation;
      v51 = v35;
      [(FBScene *)v33 configureParameters:v49];
      [(FBScene *)self->_scene addObserver:self];
      objc_initWeak(&location, self);
      v36 = self->_scene;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_5;
      v45[3] = &unk_2783A8E60;
      objc_copyWeak(&v47, &location);
      v46 = v7;
      [(FBScene *)v36 performUpdate:&__block_literal_global_1 withCompletion:v45];
      wallpaperStyle = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle wallpaperStyle];
      v38 = +[SBWallpaperController sharedInstance];
      [v38 setWallpaperStyle:wallpaperStyle forPriority:1 forVariant:1 withAnimationFactory:0];
      [v38 setWallpaperStyle:wallpaperStyle forPriority:1 forVariant:0 withAnimationFactory:0];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);

      v11 = v43;
    }

    else
    {
      (v7)[2](v7, 0, v11);
    }
  }
}

void __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_2;
  v9[3] = &unk_2783A8DA8;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v5;
  v11 = v4;
  v6 = a2;
  [v6 updateSettingsWithBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_3;
  v8[3] = &unk_2783A8DD0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 48);
  v8[5] = v7;
  [v6 updateClientSettingsWithBlock:v8];
}

void __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 ignoreOcclusionReasons];
  [v3 addObject:@"LoginAppContainer"];

  [*(a1 + 32) bounds];
  [v4 setFrame:?];
  [v4 setDisplayConfiguration:*(a1 + 32)];
  [v4 sb_setDisplayConfigurationForSceneManagers:*(a1 + 40)];
  [v4 setInterfaceOrientation:*(a1 + 56)];
  [v4 setForeground:1];
  [*(*(a1 + 48) + 24) _populateSettingsWithDefaultStatusBarHeight:v4];
}

void __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setInterfaceOrientation:v3];
  [v4 setBackgroundStyle:{objc_msgSend(*(*(a1 + 32) + 24), "backgroundStyle")}];
  [v4 setIdleTimerMode:1];
}

void __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D0AAA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setLaunchIntent:4];
  [v4 setExecutionContext:v5];
}

void __73__SBLoginAppSceneHoster_launchLoginAppWithInitialOrientation_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = [WeakRetained[1] uiPresentationManager];
      v8 = [v7 createPresenterWithIdentifier:@"default"];
      v9 = v6[2];
      v6[2] = v8;

      [v6[2] modifyPresentationContext:&__block_literal_global_19];
      [v6[2] activate];
      [v6 _updateHIDEventDeferralsIfNecessary];
      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      v11 = v12;
      if (!v12)
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SpringBoard.LoginAppSceneHoster" code:1 userInfo:0];
      }

      v10 = *(*(a1 + 32) + 16);
      v12 = v11;
    }

    v10();
  }
}

- (void)killLoginApp
{
  scene = self->_scene;
  if (scene)
  {
    [(FBScene *)scene invalidate:0];
  }

  [(SBLoginAppSceneHoster *)self _updateHIDEventDeferralsIfNecessary];
}

- (void)setDeferHIDEvents:(BOOL)events
{
  if (self->_deferHIDEvents != events)
  {
    self->_deferHIDEvents = events;
    [(SBLoginAppSceneHoster *)self _updateHIDEventDeferralsIfNecessary];
  }
}

- (SBApplication)hostedApp
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:@"com.apple.LoginUI"];

  return v3;
}

- (void)_updateHIDEventDeferralsIfNecessary
{
  if (self->_deferHIDEvents != (self->_keyboardFocusRedirectAssertion != 0))
  {
    v4 = +[SBMainWorkspace sharedInstance];
    keyboardFocusController = [v4 keyboardFocusController];

    hostedAppBundleID = [(SBLoginAppSceneHoster *)self hostedAppBundleID];
    mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
    v7 = [mEMORY[0x277D0AAC0] processesForBundleIdentifier:hostedAppBundleID];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      state = [firstObject state];
      v10 = [state pid];
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    if (self->_deferHIDEvents && (scene = self->_scene) != 0 && (v10 & 0x80000000) == 0)
    {
      identityToken = [(FBScene *)scene identityToken];
      v13 = [keyboardFocusController redirectSpringBoardLockFocusForReason:@"LoginWindow" toProcessidentifier:v10 toSceneIdentityToken:identityToken];
      keyboardFocusRedirectAssertion = self->_keyboardFocusRedirectAssertion;
      self->_keyboardFocusRedirectAssertion = v13;
    }

    else
    {
      [(BSInvalidatable *)self->_keyboardFocusRedirectAssertion invalidate];
      identityToken = self->_keyboardFocusRedirectAssertion;
      self->_keyboardFocusRedirectAssertion = 0;
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  if ([settingsDiff containsProperty:sel_backgroundStyle])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__SBLoginAppSceneHoster_scene_didUpdateClientSettings___block_invoke;
    v14[3] = &unk_2783A8C18;
    v14[4] = self;
    [MEMORY[0x277CF0D38] animateWithFactory:0 actions:v14];
    v7 = +[SBWallpaperController sharedInstance];
    wallpaperStyle = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle wallpaperStyle];
    [v7 setWallpaperStyle:wallpaperStyle forPriority:1 forVariant:1 withAnimationFactory:0];
    [v7 setWallpaperStyle:wallpaperStyle forPriority:1 forVariant:0 withAnimationFactory:0];
  }

  settings = [settingsCopy settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    settings2 = [settingsCopy settings];
    delegate = [(SBLoginAppSceneHoster *)self delegate];
    if ([settingsDiff containsProperty:sel_idleTimerMode])
    {
      [delegate sceneUpdatedIdleTimerMode:{objc_msgSend(settings2, "idleTimerMode")}];
    }

    if ([settingsDiff containsProperty:sel_statusBarUserNameOverride])
    {
      statusBarUserNameOverride = [settings2 statusBarUserNameOverride];
      [delegate sceneUpdatedStatusBarUserName:statusBarUserNameOverride];
    }

    if ([settingsDiff containsProperty:sel_rotationMode])
    {
      [delegate sceneUpdatedRotationMode:{objc_msgSend(settings2, "rotationMode")}];
    }

    if ([settingsDiff containsProperty:sel_wallpaperMode])
    {
      [delegate sceneUpdatedWallpaperMode:{objc_msgSend(settings2, "wallpaperMode")}];
    }
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(UIScenePresenter *)self->_scenePresenter invalidate:invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  scene = self->_scene;
  self->_scene = 0;

  sceneHandle = self->_sceneHandle;
  self->_sceneHandle = 0;

  v9 = +[SBWallpaperController sharedInstance];
  [v9 removeWallpaperStyleForPriority:1 forVariant:1 withAnimationFactory:0];
  [v9 removeWallpaperStyleForPriority:1 forVariant:0 withAnimationFactory:0];
  delegate = [(SBLoginAppSceneHoster *)self delegate];
  [delegate sceneInvalidated];
}

- (SBLoginAppSceneHosterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end