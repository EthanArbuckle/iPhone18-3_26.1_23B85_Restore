@interface SBSystemUISceneDefaultPresenter
- (FBSDisplayConfiguration)targetDisplayConfiguration;
- (SBSystemUISceneBindingProviding)bindingProvider;
- (SBSystemUISceneDefaultPresenter)init;
- (SBSystemUISceneDefaultPresenter)initWithWindowHostingPresentationOnWindowScene:(id)a3;
- (UIWindowScene)targetWindowScene;
- (id)_initWithPresentationBinderProvider:(id)a3 targetDisplayConfiguration:(id)a4;
- (id)_presentationBinderForDisplayConfiguration:(id)a3;
- (id)_serviceBundleIdentifierForScene:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dismissScene:(id)a3;
- (id)hostingBinderForScene:(id)a3;
- (id)hostingWindowForScene:(id)a3;
- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4;
- (id)statusBarForDisplayConfiguration:(id)a3 statusBarSceneHostComponent:(id)a4;
- (id)succinctDescription;
- (void)_addSceneToPresentationBinder:(id)a3;
- (void)_disableIdleTimer:(BOOL)a3 sceneIdentityToken:(id)a4;
- (void)_invalidatePresentationBinderForDisplayConfiguration:(id)a3;
- (void)_removeSceneFromPresentationBinder:(id)a3;
- (void)_setDisplayLayoutElementActive:(BOOL)a3 scene:(id)a4;
- (void)_updateDisplayLayoutElementWindowLevelForScene:(id)a3;
- (void)dealloc;
- (void)dismissAllScenes;
- (void)featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)a3;
- (void)idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:(id)a3;
- (void)scene:(id)a3 didChangeTraitsParticipantDelegate:(id)a4;
- (void)scene:(id)a3 hasVisibleContent:(BOOL)a4;
- (void)sceneDidChangeDisplayIdentity:(id)a3;
- (void)setPreferredWindowLevel:(id)a3;
- (void)statusBarSceneHostComponent:(id)a3 didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)a4;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
    v3 = [MEMORY[0x277CBEB18] array];
    presentedScenes = v2->_presentedScenes;
    v2->_presentedScenes = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    sceneToWindowMap = v2->_sceneToWindowMap;
    v2->_sceneToWindowMap = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    sceneToDisplayLayoutAssertionMap = v2->_sceneToDisplayLayoutAssertionMap;
    v2->_sceneToDisplayLayoutAssertionMap = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    sceneToPresentationBinderMap = v2->_sceneToPresentationBinderMap;
    v2->_sceneToPresentationBinderMap = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    displayConfigurationToPresentationBinderMap = v2->_displayConfigurationToPresentationBinderMap;
    v2->_displayConfigurationToPresentationBinderMap = v11;
  }

  return v2;
}

- (SBSystemUISceneDefaultPresenter)initWithWindowHostingPresentationOnWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemUISceneDefaultPresenter *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetWindowScene, v4);
  }

  return v6;
}

- (id)_initWithPresentationBinderProvider:(id)a3 targetDisplayConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSystemUISceneDefaultPresenter *)self init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeWeak(&v8->_bindingProvider, v6);
    objc_storeWeak(p_isa + 13, v7);
  }

  return p_isa;
}

- (id)hostingWindowForScene:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSystemUISceneDefaultPresenter hostingWindowForScene:];
  }

  sceneToWindowMap = self->_sceneToWindowMap;
  v6 = [v4 identityToken];
  v7 = [(NSMutableDictionary *)sceneToWindowMap objectForKey:v6];

  return v7;
}

- (id)hostingBinderForScene:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSystemUISceneDefaultPresenter hostingBinderForScene:];
  }

  sceneToPresentationBinderMap = self->_sceneToPresentationBinderMap;
  v6 = [v4 identityToken];
  v7 = [(NSMutableDictionary *)sceneToPresentationBinderMap objectForKey:v6];

  return v7;
}

- (void)setPreferredWindowLevel:(id)a3
{
  v8 = a3;
  if (![(NSNumber *)self->_preferredWindowLevel isEqualToNumber:?])
  {
    v4 = [v8 copy];
    preferredWindowLevel = self->_preferredWindowLevel;
    self->_preferredWindowLevel = v4;

    WeakRetained = objc_loadWeakRetained(&self->_currentParticipantDelegate);
    [WeakRetained setPreferredSceneLevel:v8];
    v7 = [WeakRetained participant];
    [v7 setNeedsUpdatePreferencesWithReason:@"level changed"];
  }
}

- (void)_addSceneToPresentationBinder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] was added to the presentation binder.", &v15, 0xCu);
  }

  v7 = [v4 identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
  }

  else
  {
    v11 = [v4 settings];
    v10 = [v11 sb_displayConfigurationForSceneManagers];
  }

  v12 = [(SBSystemUISceneDefaultPresenter *)self _presentationBinderForDisplayConfiguration:v10];
  [v12 addScene:v4];
  sceneToWindowMap = self->_sceneToWindowMap;
  v14 = [v12 rootWindow];
  [(NSMutableDictionary *)sceneToWindowMap setObject:v14 forKey:v7];

  [(NSMutableDictionary *)self->_sceneToPresentationBinderMap setObject:v12 forKey:v7];
}

- (void)_removeSceneFromPresentationBinder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] was removed from the presentation binder.", &v15, 0xCu);
  }

  v7 = [v4 identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
  }

  else
  {
    v11 = [v4 settings];
    v10 = [v11 sb_displayConfigurationForSceneManagers];
  }

  v12 = [(SBSystemUISceneDefaultPresenter *)self _presentationBinderForDisplayConfiguration:v10];
  [(NSMutableDictionary *)self->_sceneToPresentationBinderMap removeObjectForKey:v7];
  [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:v7];
  [v12 removeScene:v4];
  v13 = [v12 scenes];
  v14 = [v13 count];

  if (!v14)
  {
    [(SBSystemUISceneDefaultPresenter *)self _invalidatePresentationBinderForDisplayConfiguration:v10];
  }
}

- (id)_presentationBinderForDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap objectForKey:v4];
  if (!v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"UIRootSceneWindow-%@-%p", v8, self];

    v10 = [objc_alloc(MEMORY[0x277D75928]) initWithDisplayConfiguration:v4];
    [v10 setBackgroundColor:0];
    v5 = [[SBRootWindowScenePresentationBinder alloc] initWithIdentifier:v9 priority:0 appearanceStyle:0 rootWindow:v10];
    [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_invalidatePresentationBinderForDisplayConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_displayConfigurationToPresentationBinderMap removeObjectForKey:v6];
  }
}

- (void)_disableIdleTimer:(BOOL)a3 sceneIdentityToken:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  scenesDisablingIdleTimer = self->_scenesDisablingIdleTimer;
  if (v4)
  {
    if (!scenesDisablingIdleTimer)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_scenesDisablingIdleTimer;
      self->_scenesDisablingIdleTimer = v8;

      scenesDisablingIdleTimer = self->_scenesDisablingIdleTimer;
    }

    [(NSMutableSet *)scenesDisablingIdleTimer addObject:v6];
  }

  else if ([(NSMutableSet *)scenesDisablingIdleTimer containsObject:v6])
  {
    [(NSMutableSet *)self->_scenesDisablingIdleTimer removeObject:v6];
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

- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
  {
    goto LABEL_39;
  }

LABEL_3:
  v10 = [v7 identityToken];
  presentedScenes = self->_presentedScenes;
  if (presentedScenes && [(NSMutableArray *)presentedScenes containsObject:v10])
  {
    [(SBSystemUISceneDefaultPresenter *)a2 presentScene:v7 viewControllerBuilderBlock:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (!WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
    v18 = [v17 identity];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v28 = [v7 settings];
      v29 = [v28 sb_displayConfigurationForSceneManagers];
      v19 = [v29 identity];

      if (v19)
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
      [v30 addSystemUISceneToPresentationBinder:v7 forDisplayIdentity:v19];
    }

    else
    {
      [(SBSystemUISceneDefaultPresenter *)self _addSceneToPresentationBinder:v7];
    }

    v32 = +[SBSceneManagerCoordinator sharedInstance];
    v33 = [v32 sceneManagerForDisplayIdentity:v19];

    [v33 startTrackingSystemUISceneForInterfaceStyleUpdatePurposes:v7];
    goto LABEL_35;
  }

  v13 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v10];
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
    [(NSMutableDictionary *)self->_sceneToWindowMap setObject:v20 forKey:v10];
  }

  v21 = [(SBTraitsSingleSceneWindow *)v20 rootViewController];

  if (!v21)
  {
    v22 = v9[2](v9);
    v23 = [v22 traitsOrientedViewController];

    v24 = [v7 clientSettings];
    v25 = objc_opt_class();
    v26 = v24;
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
        v39 = [v23 view];
        [v39 setBackgroundView:v38];
      }
    }

    [(SBTraitsSingleSceneWindow *)v20 setRootViewController:v23];
    v40 = [v23 view];
    [(SBTraitsSingleSceneWindow *)v20 bounds];
    [v40 setFrame:?];

    [(SBTraitsSingleSceneWindow *)v20 _legacySetRotatableViewOrientation:1 updateStatusBar:1 duration:0 force:0.0];
  }

  [(SBFWindow *)v20 setHidden:0];
  [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:1 scene:v7];
  v41 = SBLogCommon();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v7 identifier];
    *buf = 138543618;
    *&buf[4] = v42;
    v47 = 2112;
    v48 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] window was shown on windowScene: %@.", buf, 0x16u);
  }

LABEL_35:
  [(NSMutableArray *)self->_presentedScenes addObject:v10];
  v43 = objc_loadWeakRetained(&self->_presentingDelegate);
  if (objc_opt_respondsToSelector())
  {
    [v43 scenePresenter:self didPresentScene:v7];
  }

  return 0;
}

- (id)dismissScene:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [SBSystemUISceneDefaultPresenter dismissScene:];
  }

  v5 = [v4 identityToken];
  if ([(NSMutableArray *)self->_presentedScenes containsObject:v5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained scenePresenter:self willDismissScene:v4];
    }

    v7 = objc_loadWeakRetained(&self->_targetWindowScene);
    if (v7)
    {
      [(SBSystemUISceneDefaultPresenter *)self _disableIdleTimer:0 sceneIdentityToken:v5];
      v8 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v5];
      [v8 setHidden:1];
      [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:0 scene:v4];
      v9 = [v8 rootViewController];
      v10 = objc_opt_class();
      v11 = v9;
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
        v17 = [v16 view];
        [v17 setBackgroundView:0];

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained scenePresenter:self updateHomeAffordance:0 forScene:v4];
        }
      }

      [v8 setRootViewController:0];
      [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:v5];
      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v4 identifier];
        *v27 = 138543618;
        *&v27[4] = v19;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Scene[%{public}@] window was hidden on windowScene: %@.", v27, 0x16u);
      }

      goto LABEL_26;
    }

    v13 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
    v14 = [v13 identity];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v20 = [v4 settings];
      v21 = [v20 sb_displayConfigurationForSceneManagers];
      v15 = [v21 identity];

      if (v15)
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
      [v22 removeSystemUISceneFromPresentationBinder:v4 forDisplayIdentity:v15];
    }

    else
    {
      [(SBSystemUISceneDefaultPresenter *)self _removeSceneFromPresentationBinder:v4];
    }

    v24 = +[SBSceneManagerCoordinator sharedInstance];
    v25 = [v24 sceneManagerForDisplayIdentity:v15];

    [v25 stopTrackingSystemUISceneForInterfaceStyleUpdatePurposes:v4];
LABEL_26:
    [(NSMutableArray *)self->_presentedScenes removeObject:v5];
  }

  return 0;
}

- (void)sceneDidChangeDisplayIdentity:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (!v4)
  {
    [SBSystemUISceneDefaultPresenter sceneDidChangeDisplayIdentity:];
    v4 = 0;
  }

  v5 = [v4 identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    goto LABEL_4;
  }

  v7 = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  if (!v7 && [(NSMutableArray *)self->_presentedScenes containsObject:v5])
  {
    WeakRetained = [(NSMutableDictionary *)self->_sceneToPresentationBinderMap objectForKey:v5];
    v8 = [WeakRetained displayConfiguration];
    v9 = [v15 settings];
    v10 = [v9 sb_displayConfigurationForSceneManagers];
    v11 = [v8 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_sceneToPresentationBinderMap removeObjectForKey:v5];
      [(NSMutableDictionary *)self->_sceneToWindowMap removeObjectForKey:v5];
      [WeakRetained removeScene:v15];
      v12 = [WeakRetained scenes];
      v13 = [v12 count];

      if (!v13)
      {
        v14 = [WeakRetained displayConfiguration];
        [(SBSystemUISceneDefaultPresenter *)self _invalidatePresentationBinderForDisplayConfiguration:v14];
      }

      [(SBSystemUISceneDefaultPresenter *)self _addSceneToPresentationBinder:v15];
    }

LABEL_4:
  }
}

- (void)scene:(id)a3 hasVisibleContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16 = v6;
  if (!v6)
  {
    [SBSystemUISceneDefaultPresenter scene:hasVisibleContent:];
    v6 = 0;
  }

  v7 = [v6 identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [(NSMutableArray *)self->_presentedScenes containsObject:v7];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v7];
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

      [v15 setSceneContentVisible:v4];
    }
  }
}

- (void)scene:(id)a3 didChangeTraitsParticipantDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [SBSystemUISceneDefaultPresenter scene:didChangeTraitsParticipantDelegate:];
  }

  v8 = [v6 identityToken];
  objc_storeWeak(&self->_currentParticipantDelegate, v7);
  v9 = [v7 participant];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v8];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableArray *)self->_presentedScenes containsObject:v8];

      if (v14)
      {
        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __76__SBSystemUISceneDefaultPresenter_scene_didChangeTraitsParticipantDelegate___block_invoke;
        v23[3] = &unk_2783B2118;
        objc_copyWeak(&v25, &location);
        v15 = v8;
        v24 = v15;
        [v7 setActuateZOrderAlongsideBlock:v23];
        v16 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v15];
        [v9 currentZOrderLevel];
        [v16 setWindowLevel:?];
        [(SBSystemUISceneDefaultPresenter *)self _updateDisplayLayoutElementWindowLevelForScene:v6];
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

        v21 = [v20 rootViewController];
        [v21 setContainerParticipant:0];

        v22 = [v20 rootViewController];
        [v22 updateOrientationIfNeeded];

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
    [v7 setPreferredSceneLevel:?];
    [v9 setNeedsUpdatePreferencesWithReason:@"level"];
    [v9 updatePreferencesIfNeeded];
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
  v2 = [(SBSystemUISceneDefaultPresenter *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSystemUISceneDefaultPresenter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemUISceneDefaultPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBSystemUISceneDefaultPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (id)statusBarForDisplayConfiguration:(id)a3 statusBarSceneHostComponent:(id)a4
{
  v4 = SBApp;
  v5 = a3;
  v6 = [v4 windowSceneManager];
  v7 = [v5 identity];

  v8 = [v6 windowSceneForDisplayIdentity:v7];

  v9 = [v8 statusBarManager];
  v10 = [v9 statusBar];

  return v10;
}

- (void)statusBarSceneHostComponent:(id)a3 didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)a4
{
  v5 = a3;
  v6 = [v5 hostScene];
  v35 = [v6 identityToken];

  v7 = [v5 hostScene];

  v8 = [v7 clientSettings];

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v35];
    if (v11)
    {
      v12 = v11;
      v13 = [(NSMutableArray *)self->_presentedScenes containsObject:v35];

      if (!v13)
      {
        goto LABEL_27;
      }

      v14 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v35];
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

      v18 = [v17 _sbWindowScene];
      v19 = objc_opt_class();
      v20 = v18;
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

      v23 = [v22 statusBarManager];

      v24 = [v23 reusePool];

      v25 = [v17 rootViewController];
      v26 = objc_opt_class();
      v27 = v25;
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

      v30 = [v8 statusBarHidden];
      statusBar = self->_statusBar;
      if (v30)
      {
        if (statusBar)
        {
          [(UIStatusBar *)statusBar removeFromSuperview];
          [v24 recycleStatusBar:self->_statusBar];
        }
      }

      else
      {
        if (!statusBar)
        {
          v32 = [v24 getReusableStatusBarWithReason:@"SystemUI Scene Presentation"];
          v33 = self->_statusBar;
          self->_statusBar = v32;
        }

        v34 = [v29 view];
        [v34 addOverlayView:self->_statusBar];
      }
    }
  }

LABEL_27:
}

- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)a3
{
  v8 = a3;
  v4 = [v8 hostScene];
  v5 = [v4 identityToken];
  v6 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v5];
  if (v6 && [v8 shouldDisableReachability])
  {
    v7 = +[SBReachabilityManager sharedInstance];
    [v7 ignoreWindowForReachability:v6];
  }
}

- (void)featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:(id)a3
{
  v12 = [a3 hostScene];
  v4 = [v12 identityToken];
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [(NSMutableArray *)self->_presentedScenes containsObject:v4];

      if (!v9)
      {
        goto LABEL_11;
      }

      v6 = [v12 clientSettings];
      if ([v6 allowsMenuButtonDismissal])
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
        [v11 scenePresenter:self updateHomeAffordance:v10 forScene:v12];
      }
    }
  }

LABEL_11:
}

- (void)idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:(id)a3
{
  v4 = a3;
  v5 = [v4 hostScene];
  v13 = [v5 identityToken];

  v6 = [v4 hostScene];

  v7 = [v6 clientSettings];

  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v13];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableArray *)self->_presentedScenes containsObject:v13];

      if (v12)
      {
        -[SBSystemUISceneDefaultPresenter _disableIdleTimer:sceneIdentityToken:](self, "_disableIdleTimer:sceneIdentityToken:", [v7 idleTimerDisabled], v13);
      }
    }

    else
    {
    }
  }
}

- (id)_serviceBundleIdentifierForScene:(id)a3
{
  v3 = [a3 clientHandle];
  v4 = [v3 processHandle];

  if ([v4 hasConsistentLaunchdJob])
  {
    v5 = [v4 consistentJobLabel];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([v4 isDaemon])
  {
    v5 = [v4 daemonJobLabel];
    goto LABEL_5;
  }

  if ([v4 isApplication])
  {
    v8 = [v4 bundle];
    v6 = [v8 identifier];
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3 scene:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    [SBSystemUISceneDefaultPresenter _setDisplayLayoutElementActive:scene:];
    v6 = 0;
  }

  if (self->_shouldPublishAsDisplayLayoutElement)
  {
    v18 = v6;
    v7 = [v6 identityToken];
    v8 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v7];
    if (!v8)
    {
LABEL_14:

      v6 = v18;
      goto LABEL_15;
    }

    v9 = [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap objectForKey:v7];
    v10 = v9;
    v11 = !v4;
    if (!v4 || v9)
    {
      if (!v9)
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap removeObjectForKey:v7];
      [v10 invalidate];
      v17 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277D66A50]);
      v13 = [v18 identifier];
      v10 = [v12 initWithIdentifier:v13];

      [v8 level];
      [v10 setLevel:v14];
      [v10 setFillsDisplayBounds:1];
      [v10 setLayoutRole:3];
      v15 = [v8 _sbWindowScene];
      v16 = [v15 displayLayoutPublisher];
      v17 = [v16 addElement:v10];

      [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap setObject:v17 forKey:v7];
    }

    v10 = v17;
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_updateDisplayLayoutElementWindowLevelForScene:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSystemUISceneDefaultPresenter _updateDisplayLayoutElementWindowLevelForScene:];
    v4 = 0;
  }

  if (self->_shouldPublishAsDisplayLayoutElement)
  {
    v11 = v4;
    v5 = [v4 identityToken];
    v6 = [(NSMutableDictionary *)self->_sceneToWindowMap objectForKey:v5];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_sceneToDisplayLayoutAssertionMap objectForKey:v5];
      if (v7)
      {
        v8 = [v6 _sbWindowScene];
        v9 = [v8 displayLayoutPublisher];
        v10 = [v9 transitionAssertionWithReason:0];

        [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:0 scene:v11];
        [(SBSystemUISceneDefaultPresenter *)self _setDisplayLayoutElementActive:1 scene:v11];
        [v10 invalidate];
      }
    }

    v4 = v11;
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