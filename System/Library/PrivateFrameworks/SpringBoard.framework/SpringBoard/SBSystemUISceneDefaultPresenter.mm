@interface SBSystemUISceneDefaultPresenter
- (FBSDisplayConfiguration)targetDisplayConfiguration;
- (SBSystemUISceneBindingProviding)bindingProvider;
- (SBSystemUISceneDefaultPresenter)init;
- (SBSystemUISceneDefaultPresenter)initWithWindowHostingPresentationOnWindowScene:(id)scene;
- (UIWindowScene)targetWindowScene;
- (id)_initWithPresentationBinderProvider:(id)provider targetDisplayConfiguration:(id)configuration;
- (id)_presentationBinderForDisplayConfiguration:(id)configuration;
- (id)_serviceBundleIdentifierForScene:(id)scene;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dismissScene:(id)scene;
- (id)hostingBinderForScene:(id)scene;
- (id)hostingWindowForScene:(id)scene;
- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block;
- (id)statusBarForDisplayConfiguration:(id)configuration statusBarSceneHostComponent:(id)component;
- (id)succinctDescription;
- (void)_addSceneToPresentationBinder:(id)binder;
- (void)_disableIdleTimer:(BOOL)timer sceneIdentityToken:(id)token;
- (void)_invalidatePresentationBinderForDisplayConfiguration:(id)configuration;
- (void)_removeSceneFromPresentationBinder:(id)binder;
- (void)_setDisplayLayoutElementActive:(BOOL)active scene:(id)scene;
- (void)_updateDisplayLayoutElementWindowLevelForScene:(id)scene;
- (void)dealloc;
- (void)dismissAllScenes;
- (void)featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:(id)dismissal;
- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)reachability;
- (void)idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:(id)timer;
- (void)scene:(id)scene didChangeTraitsParticipantDelegate:(id)delegate;
- (void)scene:(id)scene hasVisibleContent:(BOOL)content;
- (void)sceneDidChangeDisplayIdentity:(id)identity;
- (void)setPreferredWindowLevel:(id)level;
- (void)statusBarSceneHostComponent:(id)component didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)settings;
@end

@implementation SBSystemUISceneDefaultPresenter

- (void)dismissAllScenes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableArray *)self->_presentedScenes copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v8 = [(SBSystemUISceneDefaultPresenter *)self dismissScene:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBSystemUISceneDefaultPresenter)init
{
  v14.receiver = self;
  v14.super_class = SBSystemUISceneDefaultPresenter;
  v2 = [(SBSystemUISceneDefaultPresenter *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    presentedScenes = v2->_presentedScenes;
    v2->_presentedScenes = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sceneToWindowMap = v2->_sceneToWindowMap;
    v2->_sceneToWindowMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sceneToDisplayLayoutAssertionMap = v2->_sceneToDisplayLayoutAssertionMap;
    v2->_sceneToDisplayLayoutAssertionMap = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sceneToPresentationBinderMap = v2->_sceneToPresentationBinderMap;
    v2->_sceneToPresentationBinderMap = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    displayConfigurationToPresentationBinderMap = v2->_displayConfigurationToPresentationBinderMap;
    v2->_displayConfigurationToPresentationBinderMap = dictionary4;
  }

  return v2;
}

- (SBSystemUISceneDefaultPresenter)initWithWindowHostingPresentationOnWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(SBSystemUISceneDefaultPresenter *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetWindowScene, sceneCopy);
  }

  return v6;
}

- (id)_initWithPresentationBinderProvider:(id)provider targetDisplayConfiguration:(id)configuration
{
  providerCopy = provider;
  configurationCopy = configuration;
  v8 = [(SBSystemUISceneDefaultPresenter *)self init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeWeak(&v8->_bindingProvider, providerCopy);
    objc_storeWeak(p_isa + 13, configurationCopy);
  }

  return p_isa;
}

- (id)hostingWindowForScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter hostingWindowForScene:];
  }

  sceneToWindowMap = self->_sceneToWindowMap;
  identityToken = [sceneCopy identityToken];
  v7 = [(NSMutableDictionary *)sceneToWindowMap objectForKey:identityToken];

  return v7;
}

- (id)hostingBinderForScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter hostingBinderForScene:];
  }

  sceneToPresentationBinderMap = self->_sceneToPresentationBinderMap;
  identityToken = [sceneCopy identityToken];
  v7 = [(NSMutableDictionary *)sceneToPresentationBinderMap objectForKey:identityToken];

  return v7;
}

- (void)setPreferredWindowLevel:(id)level
{
  levelCopy = level;
  if (![(NSNumber *)self->_preferredWindowLevel isEqualToNumber:?])
  {
    v4 = [levelCopy copy];
    preferredWindowLevel = self->_preferredWindowLevel;
    self->_preferredWindowLevel = v4;

    WeakRetained = objc_loadWeakRetained(&self->_currentParticipantDelegate);
    [WeakRetained setPreferredSceneLevel:levelCopy];
    participant = [WeakRetained participant];
    [participant setNeedsUpdatePreferencesWithReason:@"level changed"];
  }
}

- (void)_addSceneToPresentationBinder:(id)binder
{
  v17 = *MEMORY[0x277D85DE8];
  binderCopy = binder;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [binderCopy identifier];
    v15 = 138543362;
    v16 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] was added to the presentation binder.", &v15, 0xCu);
  }

  identityToken = [binderCopy identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    sb_displayConfigurationForSceneManagers = WeakRetained;
  }

  else
  {
    settings = [binderCopy settings];
    sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
  }

  v12 = [(SBSystemUISceneDefaultPresenter *)self _presentationBinderForDisplayConfiguration:sb_displayConfigurationForSceneManagers];
  [v12 addScene:binderCopy];
  sceneToWindowMap = self->_sceneToWindowMap;
  rootWindow = [v12 rootWindow];
  [(NSMutableDictionary *)sceneToWindowMap setObject:rootWindow forKey:identityToken];

  [(NSMutableDictionary *)self->_sceneToPresentationBinderMap setObject:v12 forKey:identityToken];
}

- (void)_removeSceneFromPresentationBinder:(id)binder
{
  v17 = *MEMORY[0x277D85DE8];
  binderCopy = binder;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [binderCopy identifier];
    v15 = 138543362;
    v16 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] was removed from the presentation binder.", &v15, 0xCu);
  }

  identityToken = [binderCopy identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    sb_displayConfigurationForSceneManagers = WeakRetained;
  }

  else
  {
    settings = [binderCopy settings];
    sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
  }

  v12 = [(SBSystemUISceneDefaultPresenter *)self _presentationBinderForDisplayConfiguration:sb_displayConfigurationForSceneManagers];
  [(NSMutableDictionary *)self->_sceneToPresentationBinderMap removeObjectForKey:identityToken];
  [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:identityToken];
  [v12 removeScene:binderCopy];
  scenes = [v12 scenes];
  v14 = [scenes count];

  if (!v14)
  {
    [(SBSystemUISceneDefaultPresenter *)self _invalidatePresentationBinderForDisplayConfiguration:sb_displayConfigurationForSceneManagers];
  }
}

- (id)_presentationBinderForDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap objectForKey:configurationCopy];
  if (!v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"UIRootSceneWindow-%@-%p", v8, self];

    v10 = [objc_alloc(MEMORY[0x277D75928]) initWithDisplayConfiguration:configurationCopy];
    [v10 setBackgroundColor:0];
    v5 = [[SBRootWindowScenePresentationBinder alloc] initWithIdentifier:v9 priority:0 appearanceStyle:0 rootWindow:v10];
    [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap setObject:v5 forKey:configurationCopy];
  }

  return v5;
}

- (void)_invalidatePresentationBinderForDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap removeObjectForKey:configurationCopy];
  }
}

- (void)_disableIdleTimer:(BOOL)timer sceneIdentityToken:(id)token
{
  timerCopy = timer;
  v23 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  scenesDisablingIdleTimer = self->_scenesDisablingIdleTimer;
  if (timerCopy)
  {
    if (!scenesDisablingIdleTimer)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_scenesDisablingIdleTimer;
      self->_scenesDisablingIdleTimer = v8;

      scenesDisablingIdleTimer = self->_scenesDisablingIdleTimer;
    }

    [(NSMutableSet *)scenesDisablingIdleTimer addObject:tokenCopy];
  }

  else if ([(NSMutableSet *)scenesDisablingIdleTimer containsObject:tokenCopy])
  {
    [(NSMutableSet *)self->_scenesDisablingIdleTimer removeObject:tokenCopy];
  }

  v10 = [(NSMutableSet *)self->_scenesDisablingIdleTimer count];
  idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
  if (v10)
  {
    if (!idleTimerDisableAssertion)
    {
      v12 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      v13 = [v12 acquireIdleTimerDisableAssertionForReason:@"SystemUI Scene Presentation"];
      v14 = self->_idleTimerDisableAssertion;
      self->_idleTimerDisableAssertion = v13;
    }

    v15 = SBLogSystemUIScene();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_scenesDisablingIdleTimer;
      v21 = 138543362;
      v22 = v16;
      v17 = "Idle timer is disabled for scenes:%{public}@";
      v18 = v15;
      v19 = 12;
LABEL_14:
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

  else
  {
    [(BSInvalidatable *)idleTimerDisableAssertion invalidate];
    v20 = self->_idleTimerDisableAssertion;
    self->_idleTimerDisableAssertion = 0;

    v15 = SBLogSystemUIScene();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v17 = "Reenable idle timer";
      v18 = v15;
      v19 = 2;
      goto LABEL_14;
    }
  }
}

- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  blockCopy = block;
  v9 = blockCopy;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter presentScene:viewControllerBuilderBlock:];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_39:
    [SBSystemUISceneDefaultPresenter presentScene:viewControllerBuilderBlock:];
    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_39;
  }

LABEL_3:
  identityToken = [sceneCopy identityToken];
  presentedScenes = self->_presentedScenes;
  if (presentedScenes && [(NSMutableArray *)presentedScenes containsObject:identityToken])
  {
    [(SBSystemUISceneDefaultPresenter *)a2 presentScene:sceneCopy viewControllerBuilderBlock:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (!WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
    identity = [v17 identity];
    if (identity)
    {
      identity2 = identity;
    }

    else
    {
      settings = [sceneCopy settings];
      sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
      identity2 = [sb_displayConfigurationForSceneManagers identity];

      if (identity2)
      {
        goto LABEL_23;
      }

      [SBSystemUISceneDefaultPresenter presentScene:viewControllerBuilderBlock:];
      v17 = *buf;
    }

LABEL_23:
    v30 = objc_loadWeakRetained(&self->_bindingProvider);
    v31 = v30;
    if (v30)
    {
      [v30 addSystemUISceneToPresentationBinder:sceneCopy forDisplayIdentity:identity2];
    }

    else
    {
      [(SBSystemUISceneDefaultPresenter *)self _addSceneToPresentationBinder:sceneCopy];
    }

    v32 = +[SBSceneManagerCoordinator sharedInstance];
    v33 = [v32 sceneManagerForDisplayIdentity:identity2];

    [v33 startTrackingSystemUISceneForInterfaceStyleUpdatePurposes:sceneCopy];
    goto LABEL_35;
  }

  v13 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = v16;

  if (!v20)
  {
    v20 = [[SBTraitsSingleSceneWindow alloc] initWithWindowScene:WeakRetained];
    [(NSMutableDictionary *)self->_sceneToWindowMap setObject:v20 forKey:identityToken];
  }

  rootViewController = [(SBTraitsSingleSceneWindow *)v20 rootViewController];

  if (!rootViewController)
  {
    v22 = v9[2](v9);
    traitsOrientedViewController = [v22 traitsOrientedViewController];

    clientSettings = [sceneCopy clientSettings];
    v25 = objc_opt_class();
    v26 = clientSettings;
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v34 = v27;

    if (v34)
    {
      [v34 backgroundStyle];
      v35 = _WallpaperStyleForBackgroundStyle();
      if (v35 != 1)
      {
        v36 = v35;
        v37 = +[SBLockScreenManager sharedInstance];
        v45 = [v37 isUILocked] ^ 1;

        v38 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:v45];
        [(PBUIWallpaperEffectViewBase *)v38 setWallpaperStyle:v36];
        view = [traitsOrientedViewController view];
        [view setBackgroundView:v38];
      }
    }

    [(SBTraitsSingleSceneWindow *)v20 setRootViewController:traitsOrientedViewController];
    view2 = [traitsOrientedViewController view];
    [(SBTraitsSingleSceneWindow *)v20 bounds];
    [view2 setFrame:?];

    [(SBTraitsSingleSceneWindow *)v20 _legacySetRotatableViewOrientation:1 updateStatusBar:1 duration:0 force:0.0];
  }

  [(SBFWindow *)v20 setHidden:0];
  [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:1 scene:sceneCopy];
  v41 = SBLogCommon();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    *buf = 138543618;
    *&buf[4] = identifier;
    v47 = 2112;
    v48 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] window was shown on windowScene: %@.", buf, 0x16u);
  }

LABEL_35:
  [(NSMutableArray *)self->_presentedScenes addObject:identityToken];
  v43 = objc_loadWeakRetained(&self->_presentingDelegate);
  if (objc_opt_respondsToSelector())
  {
    [v43 scenePresenter:self didPresentScene:sceneCopy];
  }

  return 0;
}

- (id)dismissScene:(id)scene
{
  v30 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter dismissScene:];
  }

  identityToken = [sceneCopy identityToken];
  if ([(NSMutableArray *)self->_presentedScenes containsObject:identityToken])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained scenePresenter:self willDismissScene:sceneCopy];
    }

    v7 = objc_loadWeakRetained(&self->_targetWindowScene);
    if (v7)
    {
      [(SBSystemUISceneDefaultPresenter *)self _disableIdleTimer:0 sceneIdentityToken:identityToken];
      v8 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
      [v8 setHidden:1];
      [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:0 scene:sceneCopy];
      rootViewController = [v8 rootViewController];
      v10 = objc_opt_class();
      v11 = rootViewController;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = v12;

      if (v16)
      {
        view = [v16 view];
        [view setBackgroundView:0];

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained scenePresenter:self updateHomeAffordance:0 forScene:sceneCopy];
        }
      }

      [v8 setRootViewController:0];
      [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:identityToken];
      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [sceneCopy identifier];
        *v27 = 138543618;
        *&v27[4] = identifier;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] window was hidden on windowScene: %@.", v27, 0x16u);
      }

      goto LABEL_26;
    }

    v13 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
    identity = [v13 identity];
    if (identity)
    {
      identity2 = identity;
    }

    else
    {
      settings = [sceneCopy settings];
      sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
      identity2 = [sb_displayConfigurationForSceneManagers identity];

      if (identity2)
      {
        goto LABEL_22;
      }

      [SBSystemUISceneDefaultPresenter dismissScene:];
      v13 = *v27;
    }

LABEL_22:
    v22 = objc_loadWeakRetained(&self->_bindingProvider);
    v23 = v22;
    if (v22)
    {
      [v22 removeSystemUISceneFromPresentationBinder:sceneCopy forDisplayIdentity:identity2];
    }

    else
    {
      [(SBSystemUISceneDefaultPresenter *)self _removeSceneFromPresentationBinder:sceneCopy];
    }

    v24 = +[SBSceneManagerCoordinator sharedInstance];
    v25 = [v24 sceneManagerForDisplayIdentity:identity2];

    [v25 stopTrackingSystemUISceneForInterfaceStyleUpdatePurposes:sceneCopy];
LABEL_26:
    [(NSMutableArray *)self->_presentedScenes removeObject:identityToken];
  }

  return 0;
}

- (void)sceneDidChangeDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v15 = identityCopy;
  if (!identityCopy)
  {
    [SBSystemUISceneDefaultPresenter sceneDidChangeDisplayIdentity:];
    identityCopy = 0;
  }

  identityToken = [identityCopy identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    goto LABEL_4;
  }

  v7 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  if (!v7 && [(NSMutableArray *)self->_presentedScenes containsObject:identityToken])
  {
    WeakRetained = [(NSMutableDictionary *)self->_sceneToPresentationBinderMap objectForKey:identityToken];
    displayConfiguration = [WeakRetained displayConfiguration];
    settings = [v15 settings];
    sb_displayConfigurationForSceneManagers = [settings sb_displayConfigurationForSceneManagers];
    v11 = [displayConfiguration isEqual:sb_displayConfigurationForSceneManagers];

    if ((v11 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_sceneToPresentationBinderMap removeObjectForKey:identityToken];
      [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:identityToken];
      [WeakRetained removeScene:v15];
      scenes = [WeakRetained scenes];
      v13 = [scenes count];

      if (!v13)
      {
        displayConfiguration2 = [WeakRetained displayConfiguration];
        [(SBSystemUISceneDefaultPresenter *)self _invalidatePresentationBinderForDisplayConfiguration:displayConfiguration2];
      }

      [(SBSystemUISceneDefaultPresenter *)self _addSceneToPresentationBinder:v15];
    }

LABEL_4:
  }
}

- (void)scene:(id)scene hasVisibleContent:(BOOL)content
{
  contentCopy = content;
  sceneCopy = scene;
  v16 = sceneCopy;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter scene:hasVisibleContent:];
    sceneCopy = 0;
  }

  identityToken = [sceneCopy identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [(NSMutableArray *)self->_presentedScenes containsObject:identityToken];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
      v12 = objc_opt_class();
      v13 = v11;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      [v15 setSceneContentVisible:contentCopy];
    }
  }
}

- (void)scene:(id)scene didChangeTraitsParticipantDelegate:(id)delegate
{
  sceneCopy = scene;
  delegateCopy = delegate;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter scene:didChangeTraitsParticipantDelegate:];
  }

  identityToken = [sceneCopy identityToken];
  objc_storeWeak(&self->_currentParticipantDelegate, delegateCopy);
  participant = [delegateCopy participant];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableArray *)self->_presentedScenes containsObject:identityToken];

      if (v14)
      {
        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __76__SBSystemUISceneDefaultPresenter_scene_didChangeTraitsParticipantDelegate___block_invoke;
        v23[3] = &unk_2783B2118;
        objc_copyWeak(&v25, &location);
        v15 = identityToken;
        v24 = v15;
        [delegateCopy setActuateZOrderAlongsideBlock:v23];
        v16 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v15];
        [participant currentZOrderLevel];
        [v16 setWindowLevel:?];
        [(SBSystemUISceneDefaultPresenter *)self _updateDisplayLayoutElementWindowLevelForScene:sceneCopy];
        v17 = objc_opt_class();
        v18 = v16;
        if (v17)
        {
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        rootViewController = [v20 rootViewController];
        [rootViewController setContainerParticipant:0];

        rootViewController2 = [v20 rootViewController];
        [rootViewController2 updateOrientationIfNeeded];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }

  if (self->_preferredWindowLevel)
  {
    [delegateCopy setPreferredSceneLevel:?];
    [participant setNeedsUpdatePreferencesWithReason:@"level"];
    [participant updatePreferencesIfNeeded];
  }
}

void __76__SBSystemUISceneDefaultPresenter_scene_didChangeTraitsParticipantDelegate___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained[4] objectForKey:*(a1 + 32)];
    [v5 setWindowLevel:a2];

    WeakRetained = v6;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSystemUISceneDefaultPresenter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemUISceneDefaultPresenter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSystemUISceneDefaultPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBSystemUISceneDefaultPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __73__SBSystemUISceneDefaultPresenter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 96));
  v4 = [WeakRetained _FBSScene];
  v5 = [v4 identifier];
  [v2 appendString:v5 withName:@"targetWindowScene scene identifier"];

  v6 = *(a1 + 32);
  v7 = objc_loadWeakRetained((*(a1 + 40) + 104));
  v8 = [v6 appendObject:v7 withName:@"targetDisplayConfiguration"];

  v9 = *(a1 + 32);
  v10 = objc_loadWeakRetained((*(a1 + 40) + 112));
  v11 = [v9 appendObject:v10 withName:@"bindingProvider"];

  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"presentedScenes"];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"sceneToWindowMap"];
  v45 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = a1;
  v15 = [*(*(a1 + 40) + 48) allKeys];
  v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        v21 = [*(*(v14 + 40) + 48) objectForKey:v20];
        v22 = MEMORY[0x277CCACA8];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v22 stringWithFormat:@"<%@: %p>", v24, v21];
        [v45 setObject:v25 forKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v17);
  }

  v26 = [*(v14 + 32) appendObject:v45 withName:@"sceneToPresentationBinderMap"];
  v44 = [MEMORY[0x277CBEB38] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [*(*(v14 + 40) + 56) allKeys];
  v27 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = [*(*(v14 + 40) + 56) objectForKey:v31];
        v33 = MEMORY[0x277CCACA8];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v33 stringWithFormat:@"<%@: %p>", v35, v32];

        v37 = MEMORY[0x277CCACA8];
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = [v31 identity];
        v41 = [v37 stringWithFormat:@"<%@: %p %@>", v39, v31, v40];;

        [v44 setObject:v36 forKey:v41];
      }

      v28 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  v42 = [*(v14 + 32) appendObject:v44 withName:@"displayConfigurationToPresentationBinderMap"];
}

- (id)statusBarForDisplayConfiguration:(id)configuration statusBarSceneHostComponent:(id)component
{
  v4 = SBApp;
  configurationCopy = configuration;
  windowSceneManager = [v4 windowSceneManager];
  identity = [configurationCopy identity];

  v8 = [windowSceneManager windowSceneForDisplayIdentity:identity];

  statusBarManager = [v8 statusBarManager];
  statusBar = [statusBarManager statusBar];

  return statusBar;
}

- (void)statusBarSceneHostComponent:(id)component didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)settings
{
  componentCopy = component;
  hostScene = [componentCopy hostScene];
  identityToken = [hostScene identityToken];

  hostScene2 = [componentCopy hostScene];

  clientSettings = [hostScene2 clientSettings];

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (v11)
    {
      v12 = v11;
      v13 = [(NSMutableArray *)self->_presentedScenes containsObject:identityToken];

      if (!v13)
      {
        goto LABEL_27;
      }

      v14 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
      v15 = objc_opt_class();
      v10 = v14;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v10;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      _sbWindowScene = [v17 _sbWindowScene];
      v19 = objc_opt_class();
      v20 = _sbWindowScene;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      statusBarManager = [v22 statusBarManager];

      reusePool = [statusBarManager reusePool];

      rootViewController = [v17 rootViewController];
      v26 = objc_opt_class();
      v27 = rootViewController;
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      statusBarHidden = [clientSettings statusBarHidden];
      statusBar = self->_statusBar;
      if (statusBarHidden)
      {
        if (statusBar)
        {
          [(UIStatusBar *)statusBar removeFromSuperview];
          [reusePool recycleStatusBar:self->_statusBar];
        }
      }

      else
      {
        if (!statusBar)
        {
          v32 = [reusePool getReusableStatusBarWithReason:@"SystemUI Scene Presentation"];
          v33 = self->_statusBar;
          self->_statusBar = v32;
        }

        view = [v29 view];
        [view addOverlayView:self->_statusBar];
      }
    }
  }

LABEL_27:
}

- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)reachability
{
  reachabilityCopy = reachability;
  hostScene = [reachabilityCopy hostScene];
  identityToken = [hostScene identityToken];
  v6 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
  if (v6 && [reachabilityCopy shouldDisableReachability])
  {
    v7 = +[SBReachabilityManager sharedInstance];
    [v7 ignoreWindowForReachability:v6];
  }
}

- (void)featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:(id)dismissal
{
  hostScene = [dismissal hostScene];
  identityToken = [hostScene identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    clientSettings = WeakRetained;
    v7 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (v7)
    {
      v8 = v7;
      v9 = [(NSMutableArray *)self->_presentedScenes containsObject:identityToken];

      if (!v9)
      {
        goto LABEL_11;
      }

      clientSettings = [hostScene clientSettings];
      if ([clientSettings allowsMenuButtonDismissal])
      {
        v10 = SBHomeGestureEnabled();
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_loadWeakRetained(&self->_presentingDelegate);
      if (objc_opt_respondsToSelector())
      {
        [v11 scenePresenter:self updateHomeAffordance:v10 forScene:hostScene];
      }
    }
  }

LABEL_11:
}

- (void)idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:(id)timer
{
  timerCopy = timer;
  hostScene = [timerCopy hostScene];
  identityToken = [hostScene identityToken];

  hostScene2 = [timerCopy hostScene];

  clientSettings = [hostScene2 clientSettings];

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableArray *)self->_presentedScenes containsObject:identityToken];

      if (v12)
      {
        -[SBSystemUISceneDefaultPresenter _disableIdleTimer:sceneIdentityToken:](self, "_disableIdleTimer:sceneIdentityToken:", [clientSettings idleTimerDisabled], identityToken);
      }
    }

    else
    {
    }
  }
}

- (id)_serviceBundleIdentifierForScene:(id)scene
{
  clientHandle = [scene clientHandle];
  processHandle = [clientHandle processHandle];

  if ([processHandle hasConsistentLaunchdJob])
  {
    consistentJobLabel = [processHandle consistentJobLabel];
LABEL_5:
    identifier = consistentJobLabel;
    goto LABEL_6;
  }

  if ([processHandle isDaemon])
  {
    consistentJobLabel = [processHandle daemonJobLabel];
    goto LABEL_5;
  }

  if ([processHandle isApplication])
  {
    bundle = [processHandle bundle];
    identifier = [bundle identifier];
  }

  else
  {
    identifier = 0;
  }

LABEL_6:

  return identifier;
}

- (void)_setDisplayLayoutElementActive:(BOOL)active scene:(id)scene
{
  activeCopy = active;
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter _setDisplayLayoutElementActive:scene:];
    sceneCopy = 0;
  }

  if (self->_shouldPublishAsDisplayLayoutElement)
  {
    v18 = sceneCopy;
    identityToken = [sceneCopy identityToken];
    v8 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (!v8)
    {
LABEL_14:

      sceneCopy = v18;
      goto LABEL_15;
    }

    v9 = [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap objectForKey:identityToken];
    v10 = v9;
    v11 = !activeCopy;
    if (!activeCopy || v9)
    {
      if (!v9)
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap removeObjectForKey:identityToken];
      [v10 invalidate];
      v17 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277D66A50]);
      identifier = [v18 identifier];
      v10 = [v12 initWithIdentifier:identifier];

      [v8 level];
      [v10 setLevel:v14];
      [v10 setFillsDisplayBounds:1];
      [v10 setLayoutRole:3];
      _sbWindowScene = [v8 _sbWindowScene];
      displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
      v17 = [displayLayoutPublisher addElement:v10];

      [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap setObject:v17 forKey:identityToken];
    }

    v10 = v17;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_updateDisplayLayoutElementWindowLevelForScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [SBSystemUISceneDefaultPresenter _updateDisplayLayoutElementWindowLevelForScene:];
    sceneCopy = 0;
  }

  if (self->_shouldPublishAsDisplayLayoutElement)
  {
    v11 = sceneCopy;
    identityToken = [sceneCopy identityToken];
    v6 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:identityToken];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap objectForKey:identityToken];
      if (v7)
      {
        _sbWindowScene = [v6 _sbWindowScene];
        displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
        v10 = [displayLayoutPublisher transitionAssertionWithReason:0];

        [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:0 scene:v11];
        [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:1 scene:v11];
        [v10 invalidate];
      }
    }

    sceneCopy = v11;
  }
}

- (UIWindowScene)targetWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);

  return WeakRetained;
}

- (FBSDisplayConfiguration)targetDisplayConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  return WeakRetained;
}

- (SBSystemUISceneBindingProviding)bindingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_bindingProvider);

  return WeakRetained;
}

- (void)hostingWindowForScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)hostingBinderForScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)presentScene:viewControllerBuilderBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)presentScene:viewControllerBuilderBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"viewControllerBuilderBlock" object:? file:? lineNumber:? description:?];
}

- (void)presentScene:(uint64_t)a3 viewControllerBuilderBlock:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemUISceneDefaultPresenter.m" lineNumber:212 description:{@"Scene[%@] already presented by[%p].", a3, a2}];
}

- (uint64_t)presentScene:viewControllerBuilderBlock:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"SBSystemUISceneDefaultPresenter.m" lineNumber:244 description:{@"targetDisplayIdentity not found for scene[%@]", v1}];
}

- (void)dismissScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (uint64_t)dismissScene:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"SBSystemUISceneDefaultPresenter.m" lineNumber:294 description:{@"targetDisplayIdentity not found for scene[%@]", v1}];
}

- (void)sceneDidChangeDisplayIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)scene:hasVisibleContent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)scene:didChangeTraitsParticipantDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_setDisplayLayoutElementActive:scene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_updateDisplayLayoutElementWindowLevelForScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

@end