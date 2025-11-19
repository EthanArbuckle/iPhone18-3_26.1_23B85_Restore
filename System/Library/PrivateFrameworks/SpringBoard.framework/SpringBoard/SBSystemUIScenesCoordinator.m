@interface SBSystemUIScenesCoordinator
+ (BOOL)_isSystemUISceneBoundClient:(id)a3;
+ (BOOL)_isSystemUISceneDynamicClient:(id)a3 withSceneRequestOptions:(id)a4;
+ (BOOL)shouldHandleSceneRequestsForProcess:(id)a3 withOptions:(id)a4;
+ (id)_configurationForSystemUISceneSessionRoles;
+ (id)_sceneControllersConfigurations;
+ (id)_systemUISceneBoundProcessIdentities;
+ (id)_systemUISceneSessionRoles;
- (BOOL)enumerateScenesWithBlock:(id)a3;
- (SBSystemUIScenesCoordinator)init;
- (double)_levelForClientConfiguration:(id)a3;
- (id)_newDefaultPresenterForWindowScene:(id)a3 configuration:(id)a4;
- (id)sceneFromIdentityToken:(id)a3;
- (id)sceneFromIdentityTokenStringRepresentation:(id)a3;
- (id)sceneWorkspaceControllerForProcessIdentity:(id)a3;
- (void)_completeWindowSceneClientsConfiguration;
- (void)_createSceneWorkspaceControllerForProcessIdentity:(id)a3 jobLabel:(id)a4 options:(id)a5;
- (void)_createSystemUISceneControllerForConfiguration:(id)a3 withActiveDisplayWindowScene:(id)a4;
- (void)_didDisableSecureRendering:(id)a3;
- (void)_willEnableSecureRendering:(id)a3;
- (void)activateSceneForProcessIdentity:(id)a3 withHandle:(id)a4 options:(id)a5 completion:(id)a6;
- (void)addSystemUISceneToPresentationBinder:(id)a3 forDisplayIdentity:(id)a4;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)a3 processIdentity:(id)a4 completion:(id)a5;
- (void)removeSystemUISceneFromPresentationBinder:(id)a3 forDisplayIdentity:(id)a4;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBSystemUIScenesCoordinator

+ (id)_systemUISceneBoundProcessIdentities
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SBSystemUIScenesCoordinator__systemUISceneBoundProcessIdentities__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_systemUISceneBoundProcessIdentities_onceToken != -1)
  {
    dispatch_once(&_systemUISceneBoundProcessIdentities_onceToken, block);
  }

  v2 = _systemUISceneBoundProcessIdentities__systemUISceneBoundProcessIdentities;

  return v2;
}

+ (id)_systemUISceneSessionRoles
{
  if (_systemUISceneSessionRoles_onceToken != -1)
  {
    +[SBSystemUIScenesCoordinator _systemUISceneSessionRoles];
  }

  v3 = _systemUISceneSessionRoles_systemUISceneSessionRoles;

  return v3;
}

void __57__SBSystemUIScenesCoordinator__systemUISceneSessionRoles__block_invoke()
{
  v16[7] = *MEMORY[0x277D85DE8];
  v15 = objc_opt_new();
  v14 = [v15 uiSceneSessionRole];
  v16[0] = v14;
  v13 = objc_opt_new();
  v12 = [v13 uiSceneSessionRole];
  v16[1] = v12;
  v0 = objc_opt_new();
  v1 = [v0 uiSceneSessionRole];
  v16[2] = v1;
  v2 = objc_opt_new();
  v3 = [v2 uiSceneSessionRole];
  v16[3] = v3;
  v4 = objc_opt_new();
  v5 = [v4 uiSceneSessionRole];
  v16[4] = v5;
  v6 = objc_opt_new();
  v7 = [v6 uiSceneSessionRole];
  v16[5] = v7;
  v8 = objc_opt_new();
  v9 = [v8 uiSceneSessionRole];
  v16[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:7];
  v11 = _systemUISceneSessionRoles_systemUISceneSessionRoles;
  _systemUISceneSessionRoles_systemUISceneSessionRoles = v10;
}

+ (id)_configurationForSystemUISceneSessionRoles
{
  if (_configurationForSystemUISceneSessionRoles_onceToken != -1)
  {
    +[SBSystemUIScenesCoordinator _configurationForSystemUISceneSessionRoles];
  }

  v3 = _configurationForSystemUISceneSessionRoles_configurationForSystemUISceneSessionRoles;

  return v3;
}

void __73__SBSystemUIScenesCoordinator__configurationForSystemUISceneSessionRoles__block_invoke()
{
  v23[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB38];
  v1 = +[SBProximityReaderUISceneController _setupInfo];
  v2 = [v0 dictionaryWithDictionary:v1];

  v3 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setProximityReaderUISceneController_];
  [v2 setObject:v3 forKey:@"setter"];

  v21 = objc_opt_new();
  v20 = [v21 uiSceneSessionRole];
  v22[0] = v20;
  v19 = +[SBLiquidDetectionUISceneController _setupInfo];
  v23[0] = v19;
  v18 = objc_opt_new();
  v17 = [v18 uiSceneSessionRole];
  v22[1] = v17;
  v23[1] = v2;
  v16 = objc_opt_new();
  v15 = [v16 uiSceneSessionRole];
  v22[2] = v15;
  v23[2] = v2;
  v4 = objc_opt_new();
  v5 = [v4 uiSceneSessionRole];
  v22[3] = v5;
  v6 = +[SBScreenSharingOverlayUISceneController _setupInfo];
  v23[3] = v6;
  v7 = objc_opt_new();
  v8 = [v7 uiSceneSessionRole];
  v22[4] = v8;
  v9 = +[SBMagnifierUISceneController _setupInfo];
  v23[4] = v9;
  v10 = objc_opt_new();
  v11 = [v10 uiSceneSessionRole];
  v22[5] = v11;
  v12 = +[SBDisplayCalibratorUISceneController _setupInfo];
  v23[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v14 = _configurationForSystemUISceneSessionRoles_configurationForSystemUISceneSessionRoles;
  _configurationForSystemUISceneSessionRoles_configurationForSystemUISceneSessionRoles = v13;
}

+ (id)_sceneControllersConfigurations
{
  if (_sceneControllersConfigurations_onceToken != -1)
  {
    +[SBSystemUIScenesCoordinator _sceneControllersConfigurations];
  }

  v3 = _sceneControllersConfigurations__sceneControllersConfigurations;

  return v3;
}

void __62__SBSystemUIScenesCoordinator__sceneControllersConfigurations__block_invoke()
{
  v101[16] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB38];
  v1 = +[SBDruidUISceneController _setupInfo];
  v2 = [v0 dictionaryWithDictionary:v1];

  v3 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setDruidUISceneController_];
  [v2 setObject:v3 forKey:@"setter"];

  v4 = MEMORY[0x277CBEB38];
  v5 = +[SBOverlayUISceneController _setupInfo];
  v6 = [v4 dictionaryWithDictionary:v5];

  v7 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setOverlayUISceneController_];
  v93 = v6;
  [v6 setObject:v7 forKey:@"setter"];

  v8 = MEMORY[0x277CBEB38];
  v9 = +[SBInputUISceneController _setupInfo];
  v10 = [v8 dictionaryWithDictionary:v9];

  v11 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setInputUISceneController_];
  [v10 setObject:v11 forKey:@"setter"];

  v12 = MEMORY[0x277CBEB38];
  v13 = +[SBEnsembleUISceneController _setupInfo];
  v14 = [v12 dictionaryWithDictionary:v13];

  v15 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setEnsembleUISceneController_];
  [v14 setObject:v15 forKey:@"setter"];

  v16 = MEMORY[0x277CBEB38];
  v17 = +[SBEyedropperUISceneController _setupInfo];
  v18 = [v16 dictionaryWithDictionary:v17];

  v19 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setEyedropperUISceneController_];
  v90 = v18;
  [v18 setObject:v19 forKey:@"setter"];

  v20 = MEMORY[0x277CBEB38];
  v21 = +[SBPerfPowerHUDSceneController _setupInfo];
  v22 = [v20 dictionaryWithDictionary:v21];

  v23 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setPerfPowerHUDUISceneController_];
  v89 = v22;
  [v22 setObject:v23 forKey:@"setter"];

  v24 = MEMORY[0x277CBEB38];
  v25 = +[SBInternalPerfPowerHUDSceneController _setupInfo];
  v26 = [v24 dictionaryWithDictionary:v25];

  v27 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setInternalPerfPowerHUDUISceneController_];
  v88 = v26;
  [v26 setObject:v27 forKey:@"setter"];

  v28 = MEMORY[0x277CBEB38];
  v29 = +[SBGlitchHUDSceneController _setupInfo];
  v30 = [v28 dictionaryWithDictionary:v29];

  v31 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setGlitchHUDUISceneController_];
  v87 = v30;
  [v30 setObject:v31 forKey:@"setter"];

  v32 = MEMORY[0x277CBEB38];
  v33 = +[SBAudioHUDSceneController _setupInfo];
  v34 = [v32 dictionaryWithDictionary:v33];

  v35 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setAudioHUDSceneController_];
  v86 = v34;
  [v34 setObject:v35 forKey:@"setter"];

  v36 = MEMORY[0x277CBEB38];
  v37 = +[SBPrototypeToolsSceneController _setupInfo];
  v38 = [v36 dictionaryWithDictionary:v37];

  v39 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setPrototypeToolsSceneController_];
  v85 = v38;
  [v38 setObject:v39 forKey:@"setter"];

  v40 = MEMORY[0x277CBEB38];
  v41 = +[SBMomentsUISceneController _setupInfo];
  v42 = [v40 dictionaryWithDictionary:v41];

  v43 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setMomentsUISceneController_];
  [v42 setObject:v43 forKey:@"setter"];

  v94 = v2;
  v91 = v14;
  v92 = v10;
  if (((+[SBCaptureHardwareButton deviceSupportsCaptureButton]() & 1) != 0 || +[SBCaptureHardwareButton simulateCaptureButtonWithActionButton]()) && +[SBCaptureHardwareButton isCaptureFeatureEnabled])
  {
    v44 = MEMORY[0x277CBEB38];
    v45 = +[SBCameraOverlayUISceneController _setupInfo];
    v46 = [v44 dictionaryWithDictionary:v45];

    v47 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setCameraOverlayUISceneController_];
    [v46 setObject:v47 forKey:@"setter"];
  }

  else
  {
    v46 = 0;
  }

  v48 = MEMORY[0x277CBEB38];
  v49 = +[SBAccessibilityUIServerUISceneController _setupInfo];
  v50 = [v48 dictionaryWithDictionary:v49];

  v51 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setAccessibilityUIServerUISceneController_];
  [v50 setObject:v51 forKey:@"setter"];

  v52 = MEMORY[0x277CBEB38];
  v53 = +[SBAssistiveTouchUISceneController _setupInfo];
  v54 = [v52 dictionaryWithDictionary:v53];

  v55 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setAssistiveTouchUISceneController_];
  [v54 setObject:v55 forKey:@"setter"];

  v56 = MEMORY[0x277CBEB38];
  v57 = +[SBLiveTranscriptionUISceneController _setupInfo];
  v58 = [v56 dictionaryWithDictionary:v57];

  v59 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setLiveTranscriptionUISceneController_];
  [v58 setObject:v59 forKey:@"setter"];

  v60 = MEMORY[0x277CBEB38];
  v61 = +[SBFullKeyboardAccessUISceneController _setupInfo];
  v62 = [v60 dictionaryWithDictionary:v61];

  v63 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setFullKeyboardAccessUISceneController_];
  [v62 setObject:v63 forKey:@"setter"];

  v64 = MEMORY[0x277CBEB38];
  v65 = +[SBVoiceControlUISceneController _setupInfo];
  v66 = [v64 dictionaryWithDictionary:v65];

  v67 = [MEMORY[0x277CCAE60] valueWithPointer:sel_setVoiceControlUISceneController_];
  [v66 setObject:v67 forKey:@"setter"];

  v101[0] = v94;
  v101[1] = v93;
  v101[2] = v92;
  v101[3] = v58;
  v81 = v58;
  v101[4] = v62;
  v101[5] = v66;
  v80 = v66;
  v82 = v54;
  v83 = v50;
  v101[6] = v54;
  v101[7] = v50;
  v101[8] = v91;
  v101[9] = v90;
  v101[10] = v42;
  v101[11] = v89;
  v101[12] = v88;
  v101[13] = v86;
  v101[14] = v85;
  v101[15] = v87;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:16];
  v69 = _sceneControllersConfigurations__sceneControllersConfigurations;
  _sceneControllersConfigurations__sceneControllersConfigurations = v68;

  if (v46)
  {
    v70 = [_sceneControllersConfigurations__sceneControllersConfigurations arrayByAddingObject:v46];
    v71 = _sceneControllersConfigurations__sceneControllersConfigurations;
    _sceneControllersConfigurations__sceneControllersConfigurations = v70;
  }

  v84 = v46;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = _sceneControllersConfigurations__sceneControllersConfigurations;
  v72 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v97;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v97 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v96 + 1) + 8 * i);
        v77 = [v76 objectForKey:@"jobLabel"];
        v78 = [v76 objectForKey:@"isDaemon"];
        if ([v78 BOOLValue])
        {
          [MEMORY[0x277D46F60] identityForDaemonJobLabel:v77];
        }

        else
        {
          [MEMORY[0x277D46F60] identityForAngelJobLabel:v77];
        }
        v79 = ;

        [v76 setObject:v79 forKey:@"processIdentity"];
      }

      v73 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
    }

    while (v73);
  }
}

void __67__SBSystemUIScenesCoordinator__systemUISceneBoundProcessIdentities__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = [*(a1 + 32) _sceneControllersConfigurations];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = _systemUISceneBoundProcessIdentities__systemUISceneBoundProcessIdentities;
  _systemUISceneBoundProcessIdentities__systemUISceneBoundProcessIdentities = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) _sceneControllersConfigurations];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"enabled"];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          v14 = [v11 objectForKey:@"processIdentity"];
          [_systemUISceneBoundProcessIdentities__systemUISceneBoundProcessIdentities addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (BOOL)shouldHandleSceneRequestsForProcess:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    +[SBSystemUIScenesCoordinator shouldHandleSceneRequestsForProcess:withOptions:];
  }

  v8 = objc_opt_class();
  v9 = [v6 identity];
  if ([v8 _isSystemUISceneBoundClient:v9])
  {
    v10 = 1;
  }

  else
  {
    v10 = [a1 _isSystemUISceneDynamicClient:v6 withSceneRequestOptions:v7];
  }

  return v10;
}

+ (BOOL)_isSystemUISceneBoundClient:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[SBSystemUIScenesCoordinator _isSystemUISceneBoundClient:];
  }

  v5 = [a1 _systemUISceneBoundProcessIdentities];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isSystemUISceneDynamicClient:(id)a3 withSceneRequestOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    +[SBSystemUIScenesCoordinator _isSystemUISceneDynamicClient:withSceneRequestOptions:];
  }

  v7 = [MEMORY[0x277D0AAC0] sharedInstance];
  v8 = [v7 processForPID:{objc_msgSend(v5, "pid")}];

  v9 = [v6 specification];
  v10 = [v9 uiSceneSessionRole];

  v11 = [v8 hasEntitlement:@"com.apple.springboard.SystemUIScene"];
  v12 = v11;
  if (v10)
  {
    v13 = [objc_opt_class() _systemUISceneSessionRoles];
    v14 = [v13 containsObject:v10];

    if (v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v6)
  {
    v15 = +[SBSystemUISceneDomain rootSettings];
    v16 = [v15 allowAnySceneSessionRole] | v14;
  }

  else
  {
    v16 = 1;
  }

LABEL_10:

  return v16 & 1;
}

- (void)_createSceneWorkspaceControllerForProcessIdentity:(id)a3 jobLabel:(id)a4 options:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = [a5 specification];
  v10 = [v9 uiSceneSessionRole];

  v11 = [objc_opt_class() _configurationForSystemUISceneSessionRoles];
  v12 = [v11 objectForKey:v10];
  v13 = [v12 mutableCopy];

  if (!v8)
  {
    v8 = [v13 objectForKey:@"jobLabel"];
  }

  if (v18)
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBSystemUIScenesCoordinator _createSceneWorkspaceControllerForProcessIdentity:jobLabel:options:];
    if (v8)
    {
      goto LABEL_5;
    }
  }

  [SBSystemUIScenesCoordinator _createSceneWorkspaceControllerForProcessIdentity:jobLabel:options:];
LABEL_5:
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.SpringBoard.SceneWorkspace", v8];
  if (v13)
  {
    [v13 setObject:v18 forKey:@"processIdentity"];
    [v13 setObject:v8 forKey:@"jobLabel"];
    [v13 setObject:v14 forKey:@"workspaceID"];
    v15 = [SBApp windowSceneManager];
    v16 = [v15 activeDisplayWindowScene];

    [(SBSystemUIScenesCoordinator *)self _createSystemUISceneControllerForConfiguration:v13 withActiveDisplayWindowScene:v16];
  }

  else
  {
    v17 = [SBSystemUISceneController alloc];
    v16 = [(SBSystemUISceneController *)v17 initWithSceneWorkspaceIdentifier:v14 clientProcessIdentity:v18 sceneVendingPolicy:2 traitsRole:@"SBTraitsParticipantRoleSystemUIScene" jobLabel:v8 level:*MEMORY[0x277D76EE8] + 255.0];
    [(SBSystemUISceneController *)v16 setDefaultPresenter:self->_springboardMainBinderPresenter];
    [(NSMutableArray *)self->_sceneControllers addObject:v16];
    [(NSMutableArray *)self->_allKnownProcessIdentities addObject:v18];
  }
}

- (SBSystemUIScenesCoordinator)init
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SBSystemUIScenesCoordinator;
  v2 = [(SBSystemUIScenesCoordinator *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBSystemUISceneDefaultPresenter);
    customBinderPresenter = v2->_customBinderPresenter;
    v2->_customBinderPresenter = v3;

    v5 = [[SBSystemUISceneDefaultPresenter alloc] initWithPresentationBinderProvider:v2];
    springboardMainBinderPresenter = v2->_springboardMainBinderPresenter;
    v2->_springboardMainBinderPresenter = v5;

    v7 = [objc_opt_class() _sceneControllersConfigurations];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    sceneControllers = v2->_sceneControllers;
    v2->_sceneControllers = v8;

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    allKnownProcessIdentities = v2->_allKnownProcessIdentities;
    v2->_allKnownProcessIdentities = v10;

    v12 = [SBApp windowSceneManager];
    v13 = [v12 activeDisplayWindowScene];

    if (!v13)
    {
      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:v2 selector:sel__completeWindowSceneClientsConfiguration name:@"SBBootCompleteNotification" object:0];
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v2 selector:sel__willEnableSecureRendering_ name:*MEMORY[0x277D66028] object:0];
    [v15 addObserver:v2 selector:sel__didDisableSecureRendering_ name:*MEMORY[0x277D66020] object:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = [objc_opt_class() _sceneControllersConfigurations];
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(SBSystemUIScenesCoordinator *)v2 _createSystemUISceneControllerForConfiguration:*(*(&v22 + 1) + 8 * v20++) withActiveDisplayWindowScene:v13];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v18);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBSystemUIScenesCoordinator;
  [(SBSystemUIScenesCoordinator *)&v4 dealloc];
}

- (void)_createSystemUISceneControllerForConfiguration:(id)a3 withActiveDisplayWindowScene:(id)a4
{
  v26 = a3;
  v6 = a4;
  v7 = [v26 objectForKey:@"processIdentity"];
  v8 = [v26 objectForKey:@"enabled"];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    goto LABEL_17;
  }

  v23 = [v26 objectForKey:@"class"];
  v24 = [v26 objectForKey:@"jobLabel"];
  v25 = [v26 objectForKey:@"traitsRole"];
  v10 = [v26 objectForKey:@"workspaceID"];
  v11 = [v26 objectForKey:@"setter"];
  v12 = [v11 pointerValue];

  v13 = [v26 objectForKey:@"presentationStyle"];
  v14 = [v26 objectForKey:@"vendingStrategy"];
  [(SBSystemUIScenesCoordinator *)self _levelForClientConfiguration:v26];
  v16 = v15;
  if (v13)
  {
    v17 = [v13 integerValue];
    if (v14)
    {
LABEL_4:
      v18 = [v14 integerValue];
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    if (v14)
    {
      goto LABEL_4;
    }
  }

  v18 = 2;
LABEL_7:
  v19 = self->_springboardMainBinderPresenter;
  if (v17 == 2)
  {
    if (!v6)
    {
      v21 = 0;
      goto LABEL_13;
    }

    v20 = [(SBSystemUIScenesCoordinator *)self _newDefaultPresenterForWindowScene:v6 configuration:v26];
LABEL_12:
    v21 = v20;
LABEL_13:

    v19 = v21;
    goto LABEL_14;
  }

  if (v17 == 1)
  {
    v20 = self->_customBinderPresenter;
    goto LABEL_12;
  }

LABEL_14:
  v22 = [[v23 alloc] initWithSceneWorkspaceIdentifier:v10 clientProcessIdentity:v7 sceneVendingPolicy:v18 traitsRole:v25 jobLabel:v24 level:v16];
  [v22 setDefaultPresenter:v19];
  if (v12)
  {
    [(SBSystemUIScenesCoordinator *)self performSelector:v12 withObject:v22];
  }

  [(NSMutableArray *)self->_sceneControllers addObject:v22];
  [(NSMutableArray *)self->_allKnownProcessIdentities addObject:v7];

LABEL_17:
}

- (void)_completeWindowSceneClientsConfiguration
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)_newDefaultPresenterForWindowScene:(id)a3 configuration:(id)a4
{
  v6 = a3;
  [(SBSystemUIScenesCoordinator *)self _levelForClientConfiguration:a4];
  v8 = v7;
  v9 = [[SBSystemUISceneDefaultPresenter alloc] initWithWindowHostingPresentationOnWindowScene:v6];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [(SBSystemUISceneDefaultPresenter *)v9 setPreferredWindowLevel:v10];

  return v9;
}

- (double)_levelForClientConfiguration:(id)a3
{
  v3 = [a3 objectForKey:@"hostLevel"];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x277D76EE8] + 255.0;
  }

  return v6;
}

- (void)windowSceneDidConnect:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) windowSceneDidConnect:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) windowSceneDidDisconnect:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_willEnableSecureRendering:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_sceneControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) willEnableSecureRendering:{0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_didDisableSecureRendering:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_sceneControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) didDisableSecureRendering:{0, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)activateSceneForProcessIdentity:(id)a3 withHandle:(id)a4 options:(id)a5 completion:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  BSDispatchQueueAssertMain();
  if (v21)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v19 = 3;
    goto LABEL_12;
  }

  [SBSystemUIScenesCoordinator activateSceneForProcessIdentity:withHandle:options:completion:];
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = [objc_opt_class() _isSystemUISceneBoundClient:v21];
  if (v10)
  {
    if ((v13 & 1) == 0)
    {
      if ([objc_opt_class() _isSystemUISceneDynamicClient:v10 withSceneRequestOptions:v11])
      {
        v14 = [(SBSystemUIScenesCoordinator *)self sceneWorkspaceControllerForProcessIdentity:v21];

        if (!v14)
        {
          v15 = [v10 consistentJobLabel];
          [(SBSystemUIScenesCoordinator *)self _createSceneWorkspaceControllerForProcessIdentity:v21 jobLabel:v15 options:v11];
        }
      }
    }
  }

  v16 = objc_opt_class();
  v17 = [(SBSystemUIScenesCoordinator *)self sceneWorkspaceControllerForProcessIdentity:v21];
  v18 = SBSafeCast(v16, v17);

  if (v18)
  {
    goto LABEL_15;
  }

  v19 = 2;
LABEL_12:
  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:SBSystemUIScenesCoordinatorErrorDomain code:v19 userInfo:0];
  if (!v18)
  {
LABEL_15:
    v20 = [v18 clientProcessIdentity];
    [v18 activateSceneForProcessIdentity:v20 withHandle:v10 options:v11 completion:v12];

    v18 = 0;
    goto LABEL_16;
  }

  if (v12)
  {
    v12[2](v12, 0, v18);
  }

LABEL_16:
}

- (void)destroyScenesWithPersistentIdentifiers:(id)a3 processIdentity:(id)a4 completion:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  BSDispatchQueueAssertMain();
  if (v8)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemUIScenesCoordinator destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [SBSystemUIScenesCoordinator destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
LABEL_3:
  v11 = objc_opt_class();
  v12 = [(SBSystemUIScenesCoordinator *)self sceneWorkspaceControllerForProcessIdentity:v10];

  v13 = SBSafeCast(v11, v12);

  if (v13)
  {
    v14 = [v13 clientProcessIdentity];
    [v13 destroyScenesWithPersistentIdentifiers:v8 processIdentity:v14 completion:v9];
  }

  else if (v9)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = SBSystemUIScenesCoordinatorErrorDomain;
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Unknown process identity";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v18 = [v15 errorWithDomain:v16 code:2 userInfo:v17];
    v9[2](v9, 0, v18);
  }
}

- (id)sceneWorkspaceControllerForProcessIdentity:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBSystemUIScenesCoordinator sceneWorkspaceControllerForProcessIdentity:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 sceneWorkspaceControllerForProcessIdentity:{v4, v12}];

        if (v9 == v10)
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (id)sceneFromIdentityToken:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) sceneFromIdentityToken:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) sceneFromIdentityTokenStringRepresentation:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)enumerateScenesWithBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sceneControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) enumerateScenesWithBlock:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)addSystemUISceneToPresentationBinder:(id)a3 forDisplayIdentity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SBSceneManagerCoordinator sharedInstance];
  v8 = [v7 sceneManagerForDisplayIdentity:v5];

  [v8 addSystemUISceneToPresentationBinder:v6];
}

- (void)removeSystemUISceneFromPresentationBinder:(id)a3 forDisplayIdentity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SBSceneManagerCoordinator sharedInstance];
  v8 = [v7 sceneManagerForDisplayIdentity:v5];

  [v8 removeSystemUISceneFromPresentationBinder:v6];
}

+ (void)shouldHandleSceneRequestsForProcess:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processHandle" object:? file:? lineNumber:? description:?];
}

+ (void)_isSystemUISceneBoundClient:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"clientIdentity" object:? file:? lineNumber:? description:?];
}

+ (void)_isSystemUISceneDynamicClient:withSceneRequestOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processHandle" object:? file:? lineNumber:? description:?];
}

- (void)_createSceneWorkspaceControllerForProcessIdentity:jobLabel:options:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)_createSceneWorkspaceControllerForProcessIdentity:jobLabel:options:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)activateSceneForProcessIdentity:withHandle:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)destroyScenesWithPersistentIdentifiers:processIdentity:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"persistentIdentifiers" object:? file:? lineNumber:? description:?];
}

- (void)destroyScenesWithPersistentIdentifiers:processIdentity:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)sceneWorkspaceControllerForProcessIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

@end