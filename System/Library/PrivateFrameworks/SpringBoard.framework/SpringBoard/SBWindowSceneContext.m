@interface SBWindowSceneContext
- (BNBannerController)bannerController;
- (BOOL)_isWindowSceneInvalidatingOrInvalidated;
- (CSCoverSheetViewController)coverSheetViewController;
- (SBDisplayAppInteractionEventSource)appInteractionEventSource;
- (SBFAuthenticationStatusProvider)authenticationStatusProvider;
- (SBFSecureDisplayStateProviding)secureDisplayStateProvider;
- (SBLockStateProviding)uiLockStateProvider;
- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController;
- (SBMenuBarManager)menuBarManager;
- (SBSceneManager)sceneManager;
- (SBTransientOverlayPresenting)transientOverlayPresenter;
- (SBWindowSceneContext)initWithScene:(id)a3;
- (UIScene)_scene;
- (void)_setScene:(id)a3;
- (void)sceneManager;
@end

@implementation SBWindowSceneContext

- (SBSceneManager)sceneManager
{
  p_sceneManager = &self->_sceneManager;
  sceneManager = self->_sceneManager;
  if (sceneManager)
  {
  }

  else
  {
    v8[1] = v2;
    v9 = v3;
    [(SBWindowSceneContext *)a2 sceneManager:p_sceneManager];
    sceneManager = v8[0];
  }

  return sceneManager;
}

- (SBTransientOverlayPresenting)transientOverlayPresenter
{
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [v3 transientOverlayPresentationManager];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v6 = [v4 transientOverlayPresenterForWindowScene:WeakRetained];

  return v6;
}

- (SBLockStateProviding)uiLockStateProvider
{
  uiLockStateProvider = self->_uiLockStateProvider;
  if (!uiLockStateProvider)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    v5 = self->_uiLockStateProvider;
    self->_uiLockStateProvider = v4;

    uiLockStateProvider = self->_uiLockStateProvider;
  }

  return uiLockStateProvider;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  authenticationStatusProvider = self->_authenticationStatusProvider;
  if (!authenticationStatusProvider)
  {
    v4 = [SBApp authenticationController];
    v5 = self->_authenticationStatusProvider;
    self->_authenticationStatusProvider = v4;

    authenticationStatusProvider = self->_authenticationStatusProvider;
  }

  return authenticationStatusProvider;
}

- (SBFSecureDisplayStateProviding)secureDisplayStateProvider
{
  secureDisplayStateProvider = self->_secureDisplayStateProvider;
  if (!secureDisplayStateProvider)
  {
    v4 = [SBApp authenticationController];
    v5 = self->_secureDisplayStateProvider;
    self->_secureDisplayStateProvider = v4;

    secureDisplayStateProvider = self->_secureDisplayStateProvider;
  }

  return secureDisplayStateProvider;
}

- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController
{
  medusaHostedKeyboardWindowController = self->_medusaHostedKeyboardWindowController;
  if (!medusaHostedKeyboardWindowController)
  {
    v4 = [SBMedusaHostedKeyboardWindowController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v6 = [(SBMedusaHostedKeyboardWindowController *)v4 initWithWindowScene:WeakRetained];
    v7 = self->_medusaHostedKeyboardWindowController;
    self->_medusaHostedKeyboardWindowController = v6;

    medusaHostedKeyboardWindowController = self->_medusaHostedKeyboardWindowController;
  }

  return medusaHostedKeyboardWindowController;
}

- (BNBannerController)bannerController
{
  if (!self->_bannerController && ![(SBWindowSceneContext *)self _isWindowSceneInvalidatingOrInvalidated])
  {
    v3 = [SBApp bannerManager];
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v5 = [v3 newBannerControllerForWindowScene:WeakRetained];
    bannerController = self->_bannerController;
    self->_bannerController = v5;
  }

  v7 = self->_bannerController;

  return v7;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 coverSheetViewController];

  return v3;
}

- (SBWindowSceneContext)initWithScene:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBWindowSceneContext *)a2 initWithScene:?];
  }

  v10.receiver = self;
  v10.super_class = SBWindowSceneContext;
  v6 = [(SBWindowSceneContext *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = SBSafeCast(v7, v5);
    objc_storeWeak(&v6->_sbWindowScene, v8);
  }

  return v6;
}

- (void)_setScene:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  if (WeakRetained != v7)
  {
    v5 = objc_opt_class();
    v6 = SBSafeCast(v5, v7);
    objc_storeWeak(&self->_sbWindowScene, v6);
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (SBDisplayAppInteractionEventSource)appInteractionEventSource
{
  v3 = +[SBAppInteractionEventSourceManager sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v5 = [v3 eventSourceForWindowScene:WeakRetained];

  return v5;
}

- (SBMenuBarManager)menuBarManager
{
  if (!__sb__runningInSpringBoard())
  {
    WeakRetained = [MEMORY[0x277D75418] currentDevice];
    if ([WeakRetained userInterfaceIdiom] != 1 || self->_menuBarManager)
    {
      goto LABEL_10;
    }

    v4 = [(SBWindowSceneContext *)self _isWindowSceneInvalidatingOrInvalidated];

    if (v4)
    {
      goto LABEL_11;
    }

LABEL_9:
    v5 = [SBMenuBarManager alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v6 = [(SBMenuBarManager *)v5 initWithWindowScene:WeakRetained];
    menuBarManager = self->_menuBarManager;
    self->_menuBarManager = v6;

LABEL_10:
    goto LABEL_11;
  }

  if (SBFEffectiveDeviceClass() == 2 && !self->_menuBarManager && ![(SBWindowSceneContext *)self _isWindowSceneInvalidatingOrInvalidated])
  {
    goto LABEL_9;
  }

LABEL_11:
  v8 = self->_menuBarManager;

  return v8;
}

- (BOOL)_isWindowSceneInvalidatingOrInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if ([WeakRetained isInvalidating])
  {
    v3 = 1;
  }

  else
  {
    v3 = [WeakRetained isInvalidated];
  }

  return v3;
}

- (void)initWithScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneContext.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"[scene isKindOfClass:[SBWindowScene class]]"}];
}

- (void)sceneManager
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneContext.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"_sceneManager"}];

  *a4 = *a3;
}

@end