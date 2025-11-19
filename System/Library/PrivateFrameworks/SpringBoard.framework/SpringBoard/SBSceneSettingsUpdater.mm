@interface SBSceneSettingsUpdater
+ (void)__updateSceneInsetSettings:(id)a3 forDisplayConfiguration:(id)a4;
+ (void)__updateSceneSettings:(id)a3 forDisplayConfiguration:(id)a4 updateGeometry:(BOOL)a5;
+ (void)safeUpdateScene:(id)a3 withBlock:(id)a4;
+ (void)safeUpdateScene:(id)a3 withDisplayConfiguration:(id)a4 updateGeometry:(BOOL)a5;
+ (void)safeUpdateScene:(id)a3 withSceneLevel:(double)a4;
+ (void)safeUpdateScene:(id)a3 withUserInterfaceStyle:(int64_t)a4;
- (BOOL)isActive;
- (BOOL)isEnhancedWindowingModeEnabled;
- (BOOL)isForeground;
- (FBScene)scene;
- (SBSceneSettingsUpdater)initWithScene:(id)a3 persistentIdentifier:(id)a4 level:(double)a5 updatesGeometry:(BOOL)a6;
- (double)level;
- (id)addObserver:(id)a3;
- (void)__setupTraitsParticipantWithRole:(id)a3 displayIdentity:(id)a4;
- (void)_createTraitsParticipantIfNeededWithRole:(id)a3;
- (void)_setPersistenceIdentifier:(id)a3;
- (void)dealloc;
- (void)setActive:(BOOL)a3 withTransitionContext:(id)a4;
- (void)setCornerRadiusConfiguration:(id)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setEnhancedWindowingModeEnabled:(BOOL)a3;
- (void)setForeground:(BOOL)a3;
- (void)setLevel:(double)a3;
- (void)setTraitsRole:(id)a3;
@end

@implementation SBSceneSettingsUpdater

- (SBSceneSettingsUpdater)initWithScene:(id)a3 persistentIdentifier:(id)a4 level:(double)a5 updatesGeometry:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [SBSceneSettingsUpdater initWithScene:persistentIdentifier:level:updatesGeometry:];
  }

  v15.receiver = self;
  v15.super_class = SBSceneSettingsUpdater;
  v12 = [(SBSceneSettingsUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_scene, v10);
    objc_storeStrong(&v13->_scenePersistentIdentifier, a4);
    v13->_updatesGeometry = a6;
    [(SBSceneSettingsUpdater *)v13 setLevel:a5];
    [(SBSceneSettingsUpdater *)v13 _setPersistenceIdentifier:v11];
  }

  return v13;
}

- (void)dealloc
{
  [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate invalidate];
  sceneTraitsDelegate = self->_sceneTraitsDelegate;
  self->_sceneTraitsDelegate = 0;

  [(TRAParticipant *)self->_traitsParticipant invalidate];
  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;

  v5.receiver = self;
  v5.super_class = SBSceneSettingsUpdater;
  [(SBSceneSettingsUpdater *)&v5 dealloc];
}

- (void)setTraitsRole:(id)a3
{
  objc_storeStrong(&self->_traitsRole, a3);
  v5 = a3;
  [(SBSceneSettingsUpdater *)self _createTraitsParticipantIfNeededWithRole:v5];
}

- (double)level
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained settings];
  [v3 level];
  v5 = v4;

  return v5;
}

- (void)setLevel:(double)a3
{
  [(SBSceneSettingsUpdater *)self level];
  if (v5 != a3)
  {
    v6 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    [v6 safeUpdateScene:WeakRetained withSceneLevel:a3];
  }
}

- (void)setDisplayConfiguration:(id)a3
{
  v10 = a3;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [v10 copy];
    displayConfiguration = self->_displayConfiguration;
    self->_displayConfiguration = v4;

    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate invalidate];
    [(TRAParticipant *)self->_traitsParticipant invalidate];
    sceneTraitsDelegate = self->_sceneTraitsDelegate;
    self->_sceneTraitsDelegate = 0;

    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = 0;

    v8 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    [v8 safeUpdateScene:WeakRetained withDisplayConfiguration:v10 updateGeometry:self->_updatesGeometry];

    [(SBSceneSettingsUpdater *)self _createTraitsParticipantIfNeededWithRole:self->_traitsRole];
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setOrientationActuationAnimatable:v10 != 0];
  }
}

- (void)setCornerRadiusConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneSettingsUpdater *)self cornerRadiusConfiguration];

  if (v5 != v4)
  {
    v6 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SBSceneSettingsUpdater_setCornerRadiusConfiguration___block_invoke;
    v8[3] = &unk_2783ACC50;
    v9 = v4;
    [v6 safeUpdateScene:WeakRetained withBlock:v8];
  }
}

- (BOOL)isForeground
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained settings];
  v4 = [v3 isForeground];

  return v4;
}

- (void)setForeground:(BOOL)a3
{
  if ([(SBSceneSettingsUpdater *)self isForeground]!= a3)
  {
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SBSceneSettingsUpdater_setForeground___block_invoke;
    v7[3] = &__block_descriptor_33_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    v8 = a3;
    [v5 safeUpdateScene:WeakRetained withBlock:v7];
  }
}

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained isActive];

  return v3;
}

- (void)setActive:(BOOL)a3 withTransitionContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8 = WeakRetained;
  if (v4)
  {
    [WeakRetained activateWithTransitionContext:v6];
  }

  else
  {
    [WeakRetained deactivateWithTransitionContext:v6];
  }
}

- (BOOL)isEnhancedWindowingModeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained uiSettings];
  v4 = [v3 enhancedWindowingEnabled];

  return v4;
}

- (void)setEnhancedWindowingModeEnabled:(BOOL)a3
{
  if ([(SBSceneSettingsUpdater *)self isEnhancedWindowingModeEnabled]!= a3)
  {
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SBSceneSettingsUpdater_setEnhancedWindowingModeEnabled___block_invoke;
    v7[3] = &__block_descriptor_33_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    v8 = a3;
    [v5 safeUpdateScene:WeakRetained withBlock:v7];
  }
}

- (id)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBSceneSettingsUpdater addObserver:];
  }

  if ([(NSHashTable *)self->_observers containsObject:v5])
  {
    [(SBSceneSettingsUpdater *)a2 addObserver:v5];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SBSceneSettingsUpdater_addObserver___block_invoke;
  v13[3] = &unk_2783AEA48;
  objc_copyWeak(&v15, &location);
  v7 = v5;
  v14 = v7;
  v8 = [v6 initWithIdentifier:@"SBSceneSettingsUpdater" forReason:@"observer" invalidationBlock:v13];
  observers = self->_observers;
  if (!observers)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = self->_observers;
    self->_observers = v10;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

void __38__SBSceneSettingsUpdater_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

+ (void)safeUpdateScene:(id)a3 withSceneLevel:(double)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBSceneSettingsUpdater_safeUpdateScene_withSceneLevel___block_invoke;
  v4[3] = &__block_descriptor_40_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
  *&v4[4] = a4;
  [a1 safeUpdateScene:a3 withBlock:v4];
}

+ (void)safeUpdateScene:(id)a3 withDisplayConfiguration:(id)a4 updateGeometry:(BOOL)a5
{
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__SBSceneSettingsUpdater_safeUpdateScene_withDisplayConfiguration_updateGeometry___block_invoke;
    v11[3] = &unk_2783B0FD8;
    v13 = a2;
    v14 = a1;
    v12 = v9;
    v15 = a5;
    [a1 safeUpdateScene:a3 withBlock:v11];
  }
}

void __82__SBSceneSettingsUpdater_safeUpdateScene_withDisplayConfiguration_updateGeometry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    __82__SBSceneSettingsUpdater_safeUpdateScene_withDisplayConfiguration_updateGeometry___block_invoke_cold_1(a1);
  }

  [*(a1 + 48) __updateSceneSettings:v3 forDisplayConfiguration:*(a1 + 32) updateGeometry:*(a1 + 56)];
}

+ (void)safeUpdateScene:(id)a3 withUserInterfaceStyle:(int64_t)a4
{
  if (a4)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__SBSceneSettingsUpdater_safeUpdateScene_withUserInterfaceStyle___block_invoke;
    v4[3] = &__block_descriptor_56_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    v4[4] = a2;
    v4[5] = a1;
    v4[6] = a4;
    [a1 safeUpdateScene:a3 withBlock:v4];
  }
}

void __65__SBSceneSettingsUpdater_safeUpdateScene_withUserInterfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    __65__SBSceneSettingsUpdater_safeUpdateScene_withUserInterfaceStyle___block_invoke_cold_1(a1);
  }

  [v3 setUserInterfaceStyle:*(a1 + 48)];
}

+ (void)safeUpdateScene:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    +[SBSceneSettingsUpdater safeUpdateScene:withBlock:];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if ([v5 isValid])
  {
    if ([v5 isActive])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke;
      v10[3] = &unk_2783B1020;
      v11 = v6;
      [v5 performUpdate:v10];
      v7 = v11;
    }

    else if ([v5 isLegacy])
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SBSceneSettingsUpdater safeUpdateScene:v5 withBlock:v7];
      }
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke_30;
      v8[3] = &unk_2783B1070;
      v9 = v6;
      [v5 configureParameters:v8];
      v7 = v9;
    }
  }

LABEL_11:
}

void __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke_30(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke_2;
  v3[3] = &unk_2783B1048;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

- (void)_setPersistenceIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SBSceneSettingsUpdater__setPersistenceIdentifier___block_invoke;
  v8[3] = &unk_2783ACC50;
  v9 = v4;
  v7 = v4;
  [v5 safeUpdateScene:WeakRetained withBlock:v8];
}

- (void)_createTraitsParticipantIfNeededWithRole:(id)a3
{
  v11 = a3;
  v4 = [(TRAParticipant *)self->_traitsParticipant role];
  v5 = [v11 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate invalidate];
    [(TRAParticipant *)self->_traitsParticipant invalidate];
    sceneTraitsDelegate = self->_sceneTraitsDelegate;
    self->_sceneTraitsDelegate = 0;

    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = 0;
  }

  v8 = v11;
  if (v11)
  {
    if (!self->_traitsParticipant)
    {
      displayConfiguration = self->_displayConfiguration;
      if (displayConfiguration)
      {
        v10 = [(FBSDisplayConfiguration *)displayConfiguration identity];
        [(SBSceneSettingsUpdater *)self __setupTraitsParticipantWithRole:v11 displayIdentity:v10];

        v8 = v11;
      }
    }
  }
}

- (void)__setupTraitsParticipantWithRole:(id)a3 displayIdentity:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [SBSceneSettingsUpdater __setupTraitsParticipantWithRole:displayIdentity:];
  }

  if (!self->_traitsParticipant && SBTraitsArbiterOrientationActuationEnabledForRole(v6))
  {
    v8 = [SBApp windowSceneManager];
    v9 = [v8 embeddedDisplayWindowScene];
    v10 = [v9 _fbsDisplayIdentity];

    v27 = v10;
    if ([v7 expectsSecureRendering])
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    v13 = [SBApp windowSceneManager];
    v14 = [v13 windowSceneForDisplayIdentity:v12];

    v15 = [v14 traitsArbiter];
    v16 = [SBTraitsSceneParticipantDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v18 = [(SBTraitsSceneParticipantDelegate *)v16 initWithScene:WeakRetained];
    sceneTraitsDelegate = self->_sceneTraitsDelegate;
    self->_sceneTraitsDelegate = v18;

    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setOrientationActuationAnimatable:self->_displayConfiguration != 0];
    v20 = [v15 acquireParticipantWithRole:v6 delegate:self->_sceneTraitsDelegate];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = v20;

    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setArbiter:v15];
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setParticipant:self->_traitsParticipant];
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setInitialSupportedOrientationsOverride:[(SBSceneSettingsUpdater *)self initialSupportedInterfaceOrientations]];
    [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"Setup"];
    [(TRAParticipant *)self->_traitsParticipant updatePreferencesIfNeeded];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = self->_observers;
    v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      do
      {
        v26 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v28 + 1) + 8 * v26++) didUpdateSceneTraitsDelegate:self->_sceneTraitsDelegate];
        }

        while (v24 != v26);
        v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v24);
    }
  }
}

+ (void)__updateSceneSettings:(id)a3 forDisplayConfiguration:(id)a4 updateGeometry:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  if (([v13 isUISubclass] & 1) == 0)
  {
    +[SBSceneSettingsUpdater __updateSceneSettings:forDisplayConfiguration:updateGeometry:];
  }

  if (__updateSceneSettings_forDisplayConfiguration_updateGeometry__onceToken != -1)
  {
    +[SBSceneSettingsUpdater __updateSceneSettings:forDisplayConfiguration:updateGeometry:];
  }

  [v13 setScreenReferenceDisplayModeStatus:{objc_msgSend(__updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor, "referenceModeStatusForDisplayWithConfiguration:", v8)}];
  v9 = [v8 identity];
  v10 = [v9 isMainDisplay];

  if (v10)
  {
    v11 = [MEMORY[0x277D0AA90] mainConfiguration];
    [v13 setDisplayConfiguration:v11];

    v12 = v8;
  }

  else
  {
    [v13 setDisplayConfiguration:v8];
    v12 = 0;
  }

  [v13 sb_setDisplayConfigurationForSceneManagers:v12];
  if (v5)
  {
    [v8 bounds];
    [v13 setFrame:?];
    [a1 __updateSceneInsetSettings:v13 forDisplayConfiguration:v8];
  }
}

void __87__SBSceneSettingsUpdater___updateSceneSettings_forDisplayConfiguration_updateGeometry___block_invoke()
{
  v0 = objc_alloc_init(SBDisplayReferenceModeMonitor);
  v1 = __updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor;
  __updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor = v0;
}

+ (void)__updateSceneInsetSettings:(id)a3 forDisplayConfiguration:(id)a4
{
  v13 = a3;
  v5 = a4;
  if (([v13 isUISubclass] & 1) == 0)
  {
    +[SBSceneSettingsUpdater __updateSceneInsetSettings:forDisplayConfiguration:];
  }

  if (([v5 isMainRootDisplay] & 1) != 0 || (objc_msgSend(v5, "identity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContinuityDisplay"), v6, v7))
  {
    v8 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [v8 sb_applyDisplayEdgeInfoToSceneSettings:v13];
  }

  else
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    [v13 setSafeAreaInsetsPortrait:{*MEMORY[0x277D768C8], v10, v11, v12}];
    [v13 setPeripheryInsets:{v9, v10, v11, v12}];
    [v13 setHomeAffordanceOverlayAllowance:0.0];
  }
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)initWithScene:persistentIdentifier:level:updatesGeometry:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)addObserver:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSceneSettingsUpdater.m" lineNumber:136 description:{@"observer was already added: %@", a3}];
}

void __82__SBSceneSettingsUpdater_safeUpdateScene_withDisplayConfiguration_updateGeometry___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"SBSceneSettingsUpdater.m" lineNumber:169 description:@"Settings must be an UI subclass"];
}

void __65__SBSceneSettingsUpdater_safeUpdateScene_withUserInterfaceStyle___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SBSceneSettingsUpdater.m" lineNumber:178 description:@"Settings must be an UI subclass"];
}

+ (void)safeUpdateScene:withBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updateBlock" object:? file:? lineNumber:? description:?];
}

+ (void)safeUpdateScene:(uint64_t)a1 withBlock:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBSceneSettingsUpdater was asked to update settings on an invalidated scene: %{public}@.", &v2, 0xCu);
}

- (void)__setupTraitsParticipantWithRole:displayIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"role" object:? file:? lineNumber:? description:?];
}

+ (void)__updateSceneSettings:forDisplayConfiguration:updateGeometry:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)__updateSceneInsetSettings:forDisplayConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end