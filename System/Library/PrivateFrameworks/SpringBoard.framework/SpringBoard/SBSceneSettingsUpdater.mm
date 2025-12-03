@interface SBSceneSettingsUpdater
+ (void)__updateSceneInsetSettings:(id)settings forDisplayConfiguration:(id)configuration;
+ (void)__updateSceneSettings:(id)settings forDisplayConfiguration:(id)configuration updateGeometry:(BOOL)geometry;
+ (void)safeUpdateScene:(id)scene withBlock:(id)block;
+ (void)safeUpdateScene:(id)scene withDisplayConfiguration:(id)configuration updateGeometry:(BOOL)geometry;
+ (void)safeUpdateScene:(id)scene withSceneLevel:(double)level;
+ (void)safeUpdateScene:(id)scene withUserInterfaceStyle:(int64_t)style;
- (BOOL)isActive;
- (BOOL)isEnhancedWindowingModeEnabled;
- (BOOL)isForeground;
- (FBScene)scene;
- (SBSceneSettingsUpdater)initWithScene:(id)scene persistentIdentifier:(id)identifier level:(double)level updatesGeometry:(BOOL)geometry;
- (double)level;
- (id)addObserver:(id)observer;
- (void)__setupTraitsParticipantWithRole:(id)role displayIdentity:(id)identity;
- (void)_createTraitsParticipantIfNeededWithRole:(id)role;
- (void)_setPersistenceIdentifier:(id)identifier;
- (void)dealloc;
- (void)setActive:(BOOL)active withTransitionContext:(id)context;
- (void)setCornerRadiusConfiguration:(id)configuration;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setEnhancedWindowingModeEnabled:(BOOL)enabled;
- (void)setForeground:(BOOL)foreground;
- (void)setLevel:(double)level;
- (void)setTraitsRole:(id)role;
@end

@implementation SBSceneSettingsUpdater

- (SBSceneSettingsUpdater)initWithScene:(id)scene persistentIdentifier:(id)identifier level:(double)level updatesGeometry:(BOOL)geometry
{
  sceneCopy = scene;
  identifierCopy = identifier;
  if (!sceneCopy)
  {
    [SBSceneSettingsUpdater initWithScene:persistentIdentifier:level:updatesGeometry:];
  }

  v15.receiver = self;
  v15.super_class = SBSceneSettingsUpdater;
  v12 = [(SBSceneSettingsUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_scene, sceneCopy);
    objc_storeStrong(&v13->_scenePersistentIdentifier, identifier);
    v13->_updatesGeometry = geometry;
    [(SBSceneSettingsUpdater *)v13 setLevel:level];
    [(SBSceneSettingsUpdater *)v13 _setPersistenceIdentifier:identifierCopy];
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

- (void)setTraitsRole:(id)role
{
  objc_storeStrong(&self->_traitsRole, role);
  roleCopy = role;
  [(SBSceneSettingsUpdater *)self _createTraitsParticipantIfNeededWithRole:roleCopy];
}

- (double)level
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  settings = [WeakRetained settings];
  [settings level];
  v5 = v4;

  return v5;
}

- (void)setLevel:(double)level
{
  [(SBSceneSettingsUpdater *)self level];
  if (v5 != level)
  {
    v6 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    [v6 safeUpdateScene:WeakRetained withSceneLevel:level];
  }
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    v4 = [configurationCopy copy];
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
    [v8 safeUpdateScene:WeakRetained withDisplayConfiguration:configurationCopy updateGeometry:self->_updatesGeometry];

    [(SBSceneSettingsUpdater *)self _createTraitsParticipantIfNeededWithRole:self->_traitsRole];
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setOrientationActuationAnimatable:configurationCopy != 0];
  }
}

- (void)setCornerRadiusConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cornerRadiusConfiguration = [(SBSceneSettingsUpdater *)self cornerRadiusConfiguration];

  if (cornerRadiusConfiguration != configurationCopy)
  {
    v6 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SBSceneSettingsUpdater_setCornerRadiusConfiguration___block_invoke;
    v8[3] = &unk_2783ACC50;
    v9 = configurationCopy;
    [v6 safeUpdateScene:WeakRetained withBlock:v8];
  }
}

- (BOOL)isForeground
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  settings = [WeakRetained settings];
  isForeground = [settings isForeground];

  return isForeground;
}

- (void)setForeground:(BOOL)foreground
{
  if ([(SBSceneSettingsUpdater *)self isForeground]!= foreground)
  {
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SBSceneSettingsUpdater_setForeground___block_invoke;
    v7[3] = &__block_descriptor_33_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    foregroundCopy = foreground;
    [v5 safeUpdateScene:WeakRetained withBlock:v7];
  }
}

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  isActive = [WeakRetained isActive];

  return isActive;
}

- (void)setActive:(BOOL)active withTransitionContext:(id)context
{
  activeCopy = active;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8 = WeakRetained;
  if (activeCopy)
  {
    [WeakRetained activateWithTransitionContext:contextCopy];
  }

  else
  {
    [WeakRetained deactivateWithTransitionContext:contextCopy];
  }
}

- (BOOL)isEnhancedWindowingModeEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  uiSettings = [WeakRetained uiSettings];
  enhancedWindowingEnabled = [uiSettings enhancedWindowingEnabled];

  return enhancedWindowingEnabled;
}

- (void)setEnhancedWindowingModeEnabled:(BOOL)enabled
{
  if ([(SBSceneSettingsUpdater *)self isEnhancedWindowingModeEnabled]!= enabled)
  {
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SBSceneSettingsUpdater_setEnhancedWindowingModeEnabled___block_invoke;
    v7[3] = &__block_descriptor_33_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    enabledCopy = enabled;
    [v5 safeUpdateScene:WeakRetained withBlock:v7];
  }
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [SBSceneSettingsUpdater addObserver:];
  }

  if ([(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(SBSceneSettingsUpdater *)a2 addObserver:observerCopy];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SBSceneSettingsUpdater_addObserver___block_invoke;
  v13[3] = &unk_2783AEA48;
  objc_copyWeak(&v15, &location);
  v7 = observerCopy;
  v14 = v7;
  v8 = [v6 initWithIdentifier:@"SBSceneSettingsUpdater" forReason:@"observer" invalidationBlock:v13];
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = self->_observers;
    self->_observers = weakObjectsHashTable;

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

+ (void)safeUpdateScene:(id)scene withSceneLevel:(double)level
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBSceneSettingsUpdater_safeUpdateScene_withSceneLevel___block_invoke;
  v4[3] = &__block_descriptor_40_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
  *&v4[4] = level;
  [self safeUpdateScene:scene withBlock:v4];
}

+ (void)safeUpdateScene:(id)scene withDisplayConfiguration:(id)configuration updateGeometry:(BOOL)geometry
{
  configurationCopy = configuration;
  v10 = configurationCopy;
  if (configurationCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__SBSceneSettingsUpdater_safeUpdateScene_withDisplayConfiguration_updateGeometry___block_invoke;
    v11[3] = &unk_2783B0FD8;
    v13 = a2;
    selfCopy = self;
    v12 = configurationCopy;
    geometryCopy = geometry;
    [self safeUpdateScene:scene withBlock:v11];
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

+ (void)safeUpdateScene:(id)scene withUserInterfaceStyle:(int64_t)style
{
  if (style)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__SBSceneSettingsUpdater_safeUpdateScene_withUserInterfaceStyle___block_invoke;
    v4[3] = &__block_descriptor_56_e73_v24__0__UIMutableApplicationSceneSettings_8__FBSSceneTransitionContext_16l;
    v4[4] = a2;
    v4[5] = self;
    v4[6] = style;
    [self safeUpdateScene:scene withBlock:v4];
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

+ (void)safeUpdateScene:(id)scene withBlock:(id)block
{
  sceneCopy = scene;
  blockCopy = block;
  if (blockCopy)
  {
    if (!sceneCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    +[SBSceneSettingsUpdater safeUpdateScene:withBlock:];
    if (!sceneCopy)
    {
      goto LABEL_11;
    }
  }

  if ([sceneCopy isValid])
  {
    if ([sceneCopy isActive])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke;
      v10[3] = &unk_2783B1020;
      v11 = blockCopy;
      [sceneCopy performUpdate:v10];
      v7 = v11;
    }

    else if ([sceneCopy isLegacy])
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SBSceneSettingsUpdater safeUpdateScene:sceneCopy withBlock:v7];
      }
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__SBSceneSettingsUpdater_safeUpdateScene_withBlock___block_invoke_30;
      v8[3] = &unk_2783B1070;
      v9 = blockCopy;
      [sceneCopy configureParameters:v8];
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

- (void)_setPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SBSceneSettingsUpdater__setPersistenceIdentifier___block_invoke;
  v8[3] = &unk_2783ACC50;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [v5 safeUpdateScene:WeakRetained withBlock:v8];
}

- (void)_createTraitsParticipantIfNeededWithRole:(id)role
{
  roleCopy = role;
  role = [(TRAParticipant *)self->_traitsParticipant role];
  v5 = [roleCopy isEqualToString:role];

  if ((v5 & 1) == 0)
  {
    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate invalidate];
    [(TRAParticipant *)self->_traitsParticipant invalidate];
    sceneTraitsDelegate = self->_sceneTraitsDelegate;
    self->_sceneTraitsDelegate = 0;

    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = 0;
  }

  v8 = roleCopy;
  if (roleCopy)
  {
    if (!self->_traitsParticipant)
    {
      displayConfiguration = self->_displayConfiguration;
      if (displayConfiguration)
      {
        identity = [(FBSDisplayConfiguration *)displayConfiguration identity];
        [(SBSceneSettingsUpdater *)self __setupTraitsParticipantWithRole:roleCopy displayIdentity:identity];

        v8 = roleCopy;
      }
    }
  }
}

- (void)__setupTraitsParticipantWithRole:(id)role displayIdentity:(id)identity
{
  v33 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  identityCopy = identity;
  if (!roleCopy)
  {
    [SBSceneSettingsUpdater __setupTraitsParticipantWithRole:displayIdentity:];
  }

  if (!self->_traitsParticipant && SBTraitsArbiterOrientationActuationEnabledForRole(roleCopy))
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    _fbsDisplayIdentity = [embeddedDisplayWindowScene _fbsDisplayIdentity];

    v27 = _fbsDisplayIdentity;
    if ([identityCopy expectsSecureRendering])
    {
      v11 = _fbsDisplayIdentity;
    }

    else
    {
      v11 = identityCopy;
    }

    v12 = v11;
    windowSceneManager2 = [SBApp windowSceneManager];
    v14 = [windowSceneManager2 windowSceneForDisplayIdentity:v12];

    traitsArbiter = [v14 traitsArbiter];
    v16 = [SBTraitsSceneParticipantDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v18 = [(SBTraitsSceneParticipantDelegate *)v16 initWithScene:WeakRetained];
    sceneTraitsDelegate = self->_sceneTraitsDelegate;
    self->_sceneTraitsDelegate = v18;

    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setOrientationActuationAnimatable:self->_displayConfiguration != 0];
    v20 = [traitsArbiter acquireParticipantWithRole:roleCopy delegate:self->_sceneTraitsDelegate];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = v20;

    [(SBTraitsSceneParticipantDelegate *)self->_sceneTraitsDelegate setArbiter:traitsArbiter];
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

+ (void)__updateSceneSettings:(id)settings forDisplayConfiguration:(id)configuration updateGeometry:(BOOL)geometry
{
  geometryCopy = geometry;
  settingsCopy = settings;
  configurationCopy = configuration;
  if (([settingsCopy isUISubclass] & 1) == 0)
  {
    +[SBSceneSettingsUpdater __updateSceneSettings:forDisplayConfiguration:updateGeometry:];
  }

  if (__updateSceneSettings_forDisplayConfiguration_updateGeometry__onceToken != -1)
  {
    +[SBSceneSettingsUpdater __updateSceneSettings:forDisplayConfiguration:updateGeometry:];
  }

  [settingsCopy setScreenReferenceDisplayModeStatus:{objc_msgSend(__updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor, "referenceModeStatusForDisplayWithConfiguration:", configurationCopy)}];
  identity = [configurationCopy identity];
  isMainDisplay = [identity isMainDisplay];

  if (isMainDisplay)
  {
    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
    [settingsCopy setDisplayConfiguration:mainConfiguration];

    v12 = configurationCopy;
  }

  else
  {
    [settingsCopy setDisplayConfiguration:configurationCopy];
    v12 = 0;
  }

  [settingsCopy sb_setDisplayConfigurationForSceneManagers:v12];
  if (geometryCopy)
  {
    [configurationCopy bounds];
    [settingsCopy setFrame:?];
    [self __updateSceneInsetSettings:settingsCopy forDisplayConfiguration:configurationCopy];
  }
}

void __87__SBSceneSettingsUpdater___updateSceneSettings_forDisplayConfiguration_updateGeometry___block_invoke()
{
  v0 = objc_alloc_init(SBDisplayReferenceModeMonitor);
  v1 = __updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor;
  __updateSceneSettings_forDisplayConfiguration_updateGeometry____displayReferenceModeMonitor = v0;
}

+ (void)__updateSceneInsetSettings:(id)settings forDisplayConfiguration:(id)configuration
{
  settingsCopy = settings;
  configurationCopy = configuration;
  if (([settingsCopy isUISubclass] & 1) == 0)
  {
    +[SBSceneSettingsUpdater __updateSceneInsetSettings:forDisplayConfiguration:];
  }

  if (([configurationCopy isMainRootDisplay] & 1) != 0 || (objc_msgSend(configurationCopy, "identity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContinuityDisplay"), v6, v7))
  {
    sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [sb_thisDeviceDisplayEdgeInfo sb_applyDisplayEdgeInfoToSceneSettings:settingsCopy];
  }

  else
  {
    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    [settingsCopy setSafeAreaInsetsPortrait:{*MEMORY[0x277D768C8], v10, v11, v12}];
    [settingsCopy setPeripheryInsets:{v9, v10, v11, v12}];
    [settingsCopy setHomeAffordanceOverlayAllowance:0.0];
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