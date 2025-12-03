@interface SBSSKDisplayProfileManager
- (CAContext)rootWindowCAContext;
- (NSSet)fbScenes;
- (SBSSKDisplayProfileManager)initWithStartupOrientation:(int64_t)orientation;
- (int64_t)windowingModeForDisplay:(id)display;
- (void)_configureCommonInitialSceneParametersForScene:(id)scene;
- (void)modifyInitialSceneParametersForScene:(id)scene;
- (void)setSystemRootTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration;
@end

@implementation SBSSKDisplayProfileManager

- (SBSSKDisplayProfileManager)initWithStartupOrientation:(int64_t)orientation
{
  v9.receiver = self;
  v9.super_class = SBSSKDisplayProfileManager;
  v4 = [(SBSSKDisplayProfileManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_startupEmbeddedOrientation = orientation;
    v6 = objc_alloc_init(MEMORY[0x277D65D90]);
    displayProfileManager = v5->_displayProfileManager;
    v5->_displayProfileManager = v6;

    [(SBDDisplayProfileManager *)v5->_displayProfileManager setDelegate:v5];
  }

  return v5;
}

- (NSSet)fbScenes
{
  if (objc_opt_respondsToSelector())
  {
    fbScenes = [(SBDDisplayProfileManager *)self->_displayProfileManager fbScenes];
  }

  else
  {
    fbScenes = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  return fbScenes;
}

- (CAContext)rootWindowCAContext
{
  if (objc_opt_respondsToSelector())
  {
    rootWindowCAContext = [(SBDDisplayProfileManager *)self->_displayProfileManager rootWindowCAContext];
  }

  else
  {
    rootWindowCAContext = 0;
  }

  return rootWindowCAContext;
}

- (int64_t)windowingModeForDisplay:(id)display
{
  v23 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  connectedScenes = [SBApp connectedScenes];
  v5 = [connectedScenes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 1;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(connectedScenes);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        _fbsDisplayIdentity = [v14 _fbsDisplayIdentity];
        v16 = [_fbsDisplayIdentity isEqual:displayCopy];

        if (v16)
        {
          break;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [connectedScenes countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v8 = 0;
  }

  return v8;
}

- (void)setSystemRootTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    displayProfileManager = self->_displayProfileManager;
    v8 = *&transform->c;
    v9[0] = *&transform->a;
    v9[1] = v8;
    v9[2] = *&transform->tx;
    [(SBDDisplayProfileManager *)displayProfileManager updateTransform:v9 forDisplayConfiguration:configurationCopy];
  }
}

- (void)_configureCommonInitialSceneParametersForScene:(id)scene
{
  sceneCopy = scene;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SBSSKDisplayProfileManager__configureCommonInitialSceneParametersForScene___block_invoke;
  v11[3] = &unk_2783B4630;
  v12 = sceneCopy;
  v4 = sceneCopy;
  [v4 configureParameters:v11];
  settings = [v4 settings];
  displayConfiguration = [settings displayConfiguration];

  _keyboardHostComponent = [v4 _keyboardHostComponent];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  [_keyboardHostComponent setHardwareKeyboardExclusivityIdentifier:hardwareIdentifier];

  systemShellHostingEnvironment = [v4 systemShellHostingEnvironment];
  v10 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
  [systemShellHostingEnvironment setSystemShellHostingSpaceIdentifier:v10];
}

void __77__SBSSKDisplayProfileManager__configureCommonInitialSceneParametersForScene___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBSSKDisplayProfileManager__configureCommonInitialSceneParametersForScene___block_invoke_2;
  v4[3] = &unk_2783ACB10;
  v5 = *(a1 + 32);
  v3 = a2;
  [v3 updateSettingsWithBlock:v4];
  [v3 updateClientSettingsWithBlock:&__block_literal_global_128];
}

void __77__SBSSKDisplayProfileManager__configureCommonInitialSceneParametersForScene___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 setForeground:1];
  [v10 setInterfaceOrientation:1];
  if ([v10 isUISubclass])
  {
    v3 = v10;
    [v3 setTargetOfEventDeferringEnvironments:0];
    v4 = SBApp;
    v5 = [*(a1 + 32) settings];
    v6 = [v5 displayIdentity];
    v7 = [v4 userInterfaceStyleProviderForDisplay:v6];
    [v3 setUserInterfaceStyle:{objc_msgSend(v7, "currentStyle")}];

    v8 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [v8 sb_applyDisplayEdgeInfoToSceneSettings:v3];
  }

  v9 = [v10 ignoreOcclusionReasons];
  [v9 addObject:@"SystemApp"];
}

void __77__SBSSKDisplayProfileManager__configureCommonInitialSceneParametersForScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isUISubclass])
  {
    [v2 setStatusBarStyle:0];
  }
}

- (void)modifyInitialSceneParametersForScene:(id)scene
{
  sceneCopy = scene;
  [(SBSSKDisplayProfileManager *)self _configureCommonInitialSceneParametersForScene:sceneCopy];
  settings = [sceneCopy settings];
  displayIdentity = [settings displayIdentity];

  if ([displayIdentity isMainDisplay])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke;
    v8[3] = &unk_2783B4630;
    v8[4] = self;
    v7 = v8;
LABEL_5:
    [sceneCopy configureParameters:v7];
    goto LABEL_6;
  }

  if ([displayIdentity isExternal])
  {
    v7 = &__block_literal_global_17;
    goto LABEL_5;
  }

LABEL_6:
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 updateSettingsWithBlock:&__block_literal_global_14_0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_3;
  v4[3] = &unk_2783B4658;
  v4[4] = *(a1 + 32);
  [v3 updateClientSettingsWithBlock:v4];
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v2 = [v11 isUISubclass];
  v3 = v11;
  if (v2)
  {
    v4 = v11;
    [v4 setInterfaceOrientationMode:100];
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 appSwitcherDefaults];
    v7 = [v6 chamoisWindowingEnabled];

    v8 = +[SBDefaults localDefaults];
    v9 = [v8 appSwitcherDefaults];
    if ([v9 medusaMultitaskingEnabled])
    {
      v10 = SBFIsFlexibleWindowingUIAvailable();
    }

    else
    {
      v10 = 0;
    }

    [v4 setEnhancedWindowingEnabled:(v7 | v10) & 1];
    v3 = v11;
  }
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUISubclass])
  {
    [v3 setInterfaceOrientation:*(*(a1 + 32) + 8)];
  }
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateSettingsWithBlock:&__block_literal_global_19_2];
  [v2 updateClientSettingsWithBlock:&__block_literal_global_21_0];
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUISubclass])
  {
    v2 = v3;
    [v2 setInterfaceOrientationMode:2];
    [v2 setEnhancedWindowingEnabled:1];
  }
}

void __67__SBSSKDisplayProfileManager_modifyInitialSceneParametersForScene___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isUISubclass])
  {
    [v2 setInterfaceOrientation:1];
  }
}

@end