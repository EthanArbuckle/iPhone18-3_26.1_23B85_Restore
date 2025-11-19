@interface SBApplicationSupportServiceRequestContext
+ (BOOL)shouldOverrideClientInitialization:(id)a3;
+ (id)_hostProcessForProcess:(id)a3;
+ (id)hostingApplicationBundleIDForPid:(int)a3;
+ (void)initializationContextForClient:(id)a3 completion:(id)a4;
- (SBApplicationSupportServiceRequestContext)initWithApplication:(id)a3 launchDisplayConfiguration:(id)a4 persistenceIdentifierProvider:(id)a5 sceneIdentityProvider:(id)a6 sceneIdentityTokenProvider:(id)a7;
- (SBApplicationSupportServiceRequestContext)initWithClient:(id)a3 host:(id)a4;
- (id)_main_appPersistenceIDProvider;
- (id)_main_appSceneIdentityProvider;
- (id)_main_applicationInitializationContext;
- (id)_main_deviceContext;
- (id)_main_displayContextForDisplayConfiguration:(id)a3;
- (id)_main_effectiveApplicationForCompatibility;
- (id)_main_embeddedDisplayContext;
- (id)_main_launchDisplayContext;
- (id)_main_persistenceIDs;
- (id)_main_sceneIdentityTokenProvider;
- (int64_t)_main_effectiveClassicMode;
- (unint64_t)_main_effectiveScreenType;
- (void)_main_applyClassicModeLiesIfNecessaryToDisplayContext:(id)a3;
- (void)applicationInitializationContextWithCompletion:(id)a3;
@end

@implementation SBApplicationSupportServiceRequestContext

- (id)_main_persistenceIDs
{
  BSDispatchQueueAssertMain();
  if (self->_app)
  {
    v3 = [(SBApplicationSupportServiceRequestContext *)self _main_appPersistenceIDProvider];
    v4 = [(SBApplication *)self->_app bundleIdentifier];
    v5 = [v3 _persistenceIdentifiersForBundleIdentifier:v4 onlyIncludeLaunchableIdentifiers:0];
    v6 = [v5 set];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_main_embeddedDisplayContext
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277D777A0] sb_embeddedDisplayDefaultContext];
  [(SBApplicationSupportServiceRequestContext *)self _main_applyClassicModeLiesIfNecessaryToDisplayContext:v3];

  return v3;
}

- (id)_main_deviceContext
{
  BSDispatchQueueAssertMain();
  v3 = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveClassicMode];
  if (_SBApplicationClassicModeIsClassic(v3))
  {
    v4 = [MEMORY[0x277D77798] defaultContext];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 && SBApplicationClassicModeRepresentsPhone(v3))
    {
      [v4 setDeviceInfoValue:&unk_283371948 forKey:*MEMORY[0x277D77808]];
    }

    if (SBFEffectiveHomeButtonType() == 2 && !SBApplicationClassicModeExpectsRoundedCorners(v3))
    {
      [v4 setDeviceInfoValue:&unk_283371960 forKey:*MEMORY[0x277D77818]];
      [v4 setDeviceInfoValue:&unk_283371948 forKey:*MEMORY[0x277D77810]];
    }

    else
    {
      v7 = MEMORY[0x277CCABB0];
      [(SBApplicationSupportServiceRequestContext *)self _main_effectiveScreenType];
      SBHDisplayCornerRadiusForScreenType();
      v8 = [v7 numberWithDouble:?];
      [v4 setDeviceInfoValue:v8 forKey:*MEMORY[0x277D77810]];
    }
  }

  else
  {
    v4 = [MEMORY[0x277D77770] sb_defaultContext];
  }

  return v4;
}

- (int64_t)_main_effectiveClassicMode
{
  BSDispatchQueueAssertMain();
  app = self->_app;
  if (app)
  {
    v4 = app;
LABEL_4:
    extensionContainingApp = self->_extensionContainingApp;
    if (extensionContainingApp)
    {
      v6 = [(SBApplication *)v4 _classicModeForHostingExtensionContainedInApplication:?];
    }

    else
    {
      v6 = [(SBApplication *)v4 _classicMode];
    }

    v7 = v6;

    return v7;
  }

  v4 = self->_hostApp;
  if (v4)
  {
    goto LABEL_4;
  }

  result = self->_extensionContainingApp;
  if (result)
  {

    return [(SBApplication *)result _classicModeForHostingExtensionContainedInThisApplicationInUnknownHostingHierarchy];
  }

  return result;
}

- (id)_main_appPersistenceIDProvider
{
  BSDispatchQueueAssertMain();
  v3 = self->_preferredAppPersistenceIDProvider;
  if (!v3)
  {
    v3 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  }

  return v3;
}

- (id)_main_applicationInitializationContext
{
  BSDispatchQueueAssertMain();
  v3 = [(SBApplicationSupportServiceRequestContext *)self _main_embeddedDisplayContext];
  v4 = [(SBApplicationSupportServiceRequestContext *)self _main_launchDisplayContext];
  v5 = [(SBApplicationSupportServiceRequestContext *)self _main_deviceContext];
  v6 = [(SBApplicationSupportServiceRequestContext *)self _main_persistenceIDs];
  v7 = objc_alloc(MEMORY[0x277D77790]);
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = [v7 initWithMainDisplayContext:v3 launchDisplayContext:v4 deviceContext:v5 persistedSceneIdentifiers:v6 supportAppSceneRequests:(v9 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  app = self->_app;
  if (app)
  {
    v12 = [(SBApplication *)app info];
    v13 = [v12 supportsMultiwindow];

    if ((v13 & 1) == 0)
    {
      v14 = [(SBApplicationSupportServiceRequestContext *)self _main_appSceneIdentityProvider];
      v15 = [v14 newSceneIdentityForApplication:self->_app];

      v16 = [(SBApplicationSupportServiceRequestContext *)self _main_sceneIdentityTokenProvider];
      v17 = [v16 newSceneIdentityTokenForIdentity:v15];

      [v10 setDefaultSceneToken:v17];
    }
  }

  return v10;
}

- (id)_main_launchDisplayContext
{
  BSDispatchQueueAssertMain();
  v3 = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveApplicationForCompatibility];
  launchDisplayConfiguration = self->_launchDisplayConfiguration;
  if (launchDisplayConfiguration && (-[FBSDisplayConfiguration isMainRootDisplay](launchDisplayConfiguration, "isMainRootDisplay") & 1) == 0 && [v3 supportsChamoisOnExternalDisplay] && !_SBApplicationClassicModeIsClassic(-[SBApplicationSupportServiceRequestContext _main_effectiveClassicMode](self, "_main_effectiveClassicMode")))
  {
    v5 = [(SBApplicationSupportServiceRequestContext *)self _main_displayContextForDisplayConfiguration:self->_launchDisplayConfiguration];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_main_appSceneIdentityProvider
{
  BSDispatchQueueAssertMain();
  v3 = self->_preferredAppSceneIdentityProvider;
  if (!v3)
  {
    v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  return v3;
}

- (id)_main_sceneIdentityTokenProvider
{
  BSDispatchQueueAssertMain();
  v3 = self->_preferredSceneIdentityTokenProvider;
  if (!v3)
  {
    v3 = [MEMORY[0x277D0AAD8] sharedInstance];
  }

  return v3;
}

- (id)_main_effectiveApplicationForCompatibility
{
  BSDispatchQueueAssertMain();
  extensionContainingApp = self->_extensionContainingApp;
  if (!extensionContainingApp)
  {
    extensionContainingApp = self->_app;
    if (!extensionContainingApp)
    {
      extensionContainingApp = self->_hostApp;
    }
  }

  return extensionContainingApp;
}

+ (id)hostingApplicationBundleIDForPid:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x277D0AAC0] sharedInstance];
  v6 = [v5 processForPID:v3];

  v7 = [a1 _hostProcessForProcess:v6];
  if ([v7 sb_isProbablyUIApplication])
  {
    v8 = [v7 sb_bundleIdentifierWithFallback];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_hostProcessForProcess:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 isExtensionProcess])
  {
    v4 = v3;
    do
    {
      v5 = v4;
      v4 = [v5 hostProcess];
    }

    while (([v4 isExtensionProcess] & 1) != 0);
  }

  return v4;
}

+ (BOOL)shouldOverrideClientInitialization:(id)a3
{
  v3 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(a3, "pid")}];
  v4 = [MEMORY[0x277D46F48] handleForIdentifier:v3 error:0];
  if (v4)
  {
    v5 = [SBSystemUIScenesCoordinator shouldHandleSceneRequestsForProcess:v4 withOptions:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)initializationContextForClient:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  BSDispatchQueueAssertNotMain();
  if (!v7)
  {
    [SBApplicationSupportServiceRequestContext initializationContextForClient:a2 completion:a1];
  }

  v9 = [v7 pid];
  v10 = [MEMORY[0x277D46F50] identifierWithPid:v9];
  v11 = [MEMORY[0x277D46F48] handleForIdentifier:v10 error:0];
  if (!v11 || ![SBSystemUIScenesCoordinator shouldHandleSceneRequestsForProcess:v11 withOptions:0])
  {
    v13 = +[SBApplicationController sharedInstance];
    v14 = [v13 applicationWithPid:v9];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = [v7 bundleIdentifier];
      v16 = [v13 applicationWithBundleIdentifier:v17];
    }

    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 bundleIdentifier];
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Fetching initialization context for: %{public}@", buf, 0xCu);
    }

    if (v16)
    {
      if (([v16 isSpotlight] & 1) != 0 || objc_msgSend(v16, "isPaperBoard"))
      {
        v20 = [MEMORY[0x277D77738] sb_embeddedDisplayDefaultContext];
        v8[2](v8, v20);
LABEL_21:

        goto LABEL_22;
      }

      v20 = [v16 _initializationRequestContext];
      [v20 applicationInitializationContextWithCompletion:v8];
      v25 = SBLogClassicMode();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [(SBApplicationSupportServiceRequestContext *)v9 initializationContextForClient:v16 completion:v25];
      }
    }

    else
    {
      v21 = [MEMORY[0x277D0AAC0] sharedInstance];
      v22 = [v21 processForPID:v9];

      v23 = [objc_opt_class() _hostProcessForProcess:v22];
      v26 = [[a1 alloc] initWithClient:v22 host:v23];
      v28 = v8;
      v27 = v22;
      v24 = v23;
      v25 = v22;
      v20 = v26;
      BSDispatchMain();
    }

    goto LABEL_21;
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v7;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Providing init context for SystemUI Scene client: %{public}@", buf, 0xCu);
  }

  v13 = [MEMORY[0x277D77738] sb_embeddedDisplayDefaultContextForSystemUIScenes];
  v8[2](v8, v13);
LABEL_22:
}

void __87__SBApplicationSupportServiceRequestContext_initializationContextForClient_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) applicationInitializationContextWithCompletion:*(a1 + 56)];
  v3 = SBLogClassicMode();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = SBLogClassicMode();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __87__SBApplicationSupportServiceRequestContext_initializationContextForClient_completion___block_invoke_cold_1(a1, v2, v5);
    }
  }
}

- (SBApplicationSupportServiceRequestContext)initWithApplication:(id)a3 launchDisplayConfiguration:(id)a4 persistenceIdentifierProvider:(id)a5 sceneIdentityProvider:(id)a6 sceneIdentityTokenProvider:(id)a7
{
  v13 = a3;
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    [SBApplicationSupportServiceRequestContext initWithApplication:a2 launchDisplayConfiguration:self persistenceIdentifierProvider:? sceneIdentityProvider:? sceneIdentityTokenProvider:?];
  }

  v22.receiver = self;
  v22.super_class = SBApplicationSupportServiceRequestContext;
  v17 = [(SBApplicationSupportServiceRequestContext *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_app, a3);
    objc_storeStrong(&v18->_launchDisplayConfiguration, a4);
    objc_storeStrong(&v18->_preferredAppPersistenceIDProvider, a5);
    objc_storeStrong(&v18->_preferredAppSceneIdentityProvider, a6);
    objc_storeStrong(&v18->_preferredSceneIdentityTokenProvider, a7);
  }

  return v18;
}

- (SBApplicationSupportServiceRequestContext)initWithClient:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 pid];
  v9 = getpid();
  if (v8 == v9)
  {
    v10 = FBSystemAppBundleID();

    if (v7 == v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = [v7 sb_bundleIdentifierWithFallback];
    v11 = [v7 sb_isProbablyUIApplication];
    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    v13 = 0;
    if (v7 == v6 || (v12 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (![v6 isExtensionProcess])
  {
LABEL_13:
    v13 = 0;
    goto LABEL_16;
  }

  v14 = [v6 sb_bundleIdentifierWithFallback];
  v15 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v14];
  v16 = [v15 containingBundle];

  v17 = [v16 bundleType];
  v18 = [v17 isEqualToString:*MEMORY[0x277CC1E40]];

  if (v18)
  {
    v13 = [v16 bundleIdentifier];
  }

  else
  {
    v13 = 0;
  }

LABEL_16:
  v19 = +[SBApplicationController sharedInstance];
  v20 = [v19 applicationWithBundleIdentifier:v10];
  v21 = [v19 applicationWithBundleIdentifier:v13];
  v22 = v21;
  if (v8 == v9 || v20 || v21)
  {
    v27.receiver = self;
    v27.super_class = SBApplicationSupportServiceRequestContext;
    v24 = [(SBApplicationSupportServiceRequestContext *)&v27 init];
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_hostApp, v20);
      objc_storeStrong(&v25->_extensionContainingApp, v22);
      v25->_hostIsSpringBoard = v8 == v9;
    }

    self = v25;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)applicationInitializationContextWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_selfLock_applicationInitializationContext)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SBApplication *)v5->_app bundleIdentifier];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached initialization context for %{public}@", buf, 0xCu);
    }

    v8 = v5->_selfLock_applicationInitializationContext;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  if (v8)
  {
    v4[2](v4, v8);
  }

  else
  {
    v9 = v4;
    BSDispatchMain();
  }
}

void __92__SBApplicationSupportServiceRequestContext_applicationInitializationContextWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(a1 + 32) + 16) bundleIdentifier];
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Generating initialization context on main thread for: %{public}@", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) _main_applicationInitializationContext];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_sync_exit(v2);
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)_main_effectiveScreenType
{
  BSDispatchQueueAssertMain();
  v3 = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveApplicationForCompatibility];
  if (v3)
  {
    v4 = [(SBApplication *)v3 _screenTypeForClassicMode:?];
  }

  else
  {
    v4 = SBHScreenTypeForCurrentDevice();
  }

  v5 = v4;

  return v5;
}

- (id)_main_displayContextForDisplayConfiguration:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D777A0] sb_defaultContextForDisplayConfiguration:?];
    [(SBApplicationSupportServiceRequestContext *)self _main_applyClassicModeLiesIfNecessaryToDisplayContext:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_main_applyClassicModeLiesIfNecessaryToDisplayContext:(id)a3
{
  v10 = a3;
  v4 = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveClassicMode];
  if (_SBApplicationClassicModeIsClassic(v4))
  {
    v5 = [v10 displayConfiguration];
    v6 = [SBApplication restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v5 classicMode:v4];

    [v10 setDisplayConfiguration:v6];
    v7 = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveScreenType];
    v8 = [MEMORY[0x277D77750] sb_displayEdgeInfoForScreenTypeConsideringCurrentDevice:v7];
    [v10 setDisplayEdgeInfo:v8];

    v9 = [MEMORY[0x277D77780] sb_displayShapeForScreenType:v7];
    [v10 setExclusionArea:v9];
  }
}

+ (void)initializationContextForClient:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSupportServiceRequestContext.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

+ (void)initializationContextForClient:(NSObject *)a3 completion:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a2 bundleIdentifier];
  OUTLINED_FUNCTION_2_3();
  v7 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Using initialization context for client with pid: %ld app: %@", v6, 0x16u);
}

void __87__SBApplicationSupportServiceRequestContext_initializationContextForClient_completion___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = SBApplicationClassicModeDescription([*a2 _main_effectiveClassicMode]);
  OUTLINED_FUNCTION_2_3();
  v10 = v4;
  v11 = v7;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Generated initialization context for client with pid: %ld clientProcess: %@ hostProcess: %@ classicMode: %@", v9, 0x2Au);
}

- (void)initWithApplication:(uint64_t)a1 launchDisplayConfiguration:(uint64_t)a2 persistenceIdentifierProvider:sceneIdentityProvider:sceneIdentityTokenProvider:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSupportServiceRequestContext.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"app"}];
}

@end