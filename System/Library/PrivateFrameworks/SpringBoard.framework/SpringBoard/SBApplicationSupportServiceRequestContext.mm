@interface SBApplicationSupportServiceRequestContext
+ (BOOL)shouldOverrideClientInitialization:(id)initialization;
+ (id)_hostProcessForProcess:(id)process;
+ (id)hostingApplicationBundleIDForPid:(int)pid;
+ (void)initializationContextForClient:(id)client completion:(id)completion;
- (SBApplicationSupportServiceRequestContext)initWithApplication:(id)application launchDisplayConfiguration:(id)configuration persistenceIdentifierProvider:(id)provider sceneIdentityProvider:(id)identityProvider sceneIdentityTokenProvider:(id)tokenProvider;
- (SBApplicationSupportServiceRequestContext)initWithClient:(id)client host:(id)host;
- (id)_main_appPersistenceIDProvider;
- (id)_main_appSceneIdentityProvider;
- (id)_main_applicationInitializationContext;
- (id)_main_deviceContext;
- (id)_main_displayContextForDisplayConfiguration:(id)configuration;
- (id)_main_effectiveApplicationForCompatibility;
- (id)_main_embeddedDisplayContext;
- (id)_main_launchDisplayContext;
- (id)_main_persistenceIDs;
- (id)_main_sceneIdentityTokenProvider;
- (int64_t)_main_effectiveClassicMode;
- (unint64_t)_main_effectiveScreenType;
- (void)_main_applyClassicModeLiesIfNecessaryToDisplayContext:(id)context;
- (void)applicationInitializationContextWithCompletion:(id)completion;
@end

@implementation SBApplicationSupportServiceRequestContext

- (id)_main_persistenceIDs
{
  BSDispatchQueueAssertMain();
  if (self->_app)
  {
    _main_appPersistenceIDProvider = [(SBApplicationSupportServiceRequestContext *)self _main_appPersistenceIDProvider];
    bundleIdentifier = [(SBApplication *)self->_app bundleIdentifier];
    v5 = [_main_appPersistenceIDProvider _persistenceIdentifiersForBundleIdentifier:bundleIdentifier onlyIncludeLaunchableIdentifiers:0];
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
  sb_embeddedDisplayDefaultContext = [MEMORY[0x277D777A0] sb_embeddedDisplayDefaultContext];
  [(SBApplicationSupportServiceRequestContext *)self _main_applyClassicModeLiesIfNecessaryToDisplayContext:sb_embeddedDisplayDefaultContext];

  return sb_embeddedDisplayDefaultContext;
}

- (id)_main_deviceContext
{
  BSDispatchQueueAssertMain();
  _main_effectiveClassicMode = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveClassicMode];
  if (_SBApplicationClassicModeIsClassic(_main_effectiveClassicMode))
  {
    defaultContext = [MEMORY[0x277D77798] defaultContext];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && SBApplicationClassicModeRepresentsPhone(_main_effectiveClassicMode))
    {
      [defaultContext setDeviceInfoValue:&unk_283371948 forKey:*MEMORY[0x277D77808]];
    }

    if (SBFEffectiveHomeButtonType() == 2 && !SBApplicationClassicModeExpectsRoundedCorners(_main_effectiveClassicMode))
    {
      [defaultContext setDeviceInfoValue:&unk_283371960 forKey:*MEMORY[0x277D77818]];
      [defaultContext setDeviceInfoValue:&unk_283371948 forKey:*MEMORY[0x277D77810]];
    }

    else
    {
      v7 = MEMORY[0x277CCABB0];
      [(SBApplicationSupportServiceRequestContext *)self _main_effectiveScreenType];
      SBHDisplayCornerRadiusForScreenType();
      v8 = [v7 numberWithDouble:?];
      [defaultContext setDeviceInfoValue:v8 forKey:*MEMORY[0x277D77810]];
    }
  }

  else
  {
    defaultContext = [MEMORY[0x277D77770] sb_defaultContext];
  }

  return defaultContext;
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
      _classicMode = [(SBApplication *)v4 _classicModeForHostingExtensionContainedInApplication:?];
    }

    else
    {
      _classicMode = [(SBApplication *)v4 _classicMode];
    }

    v7 = _classicMode;

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
  _main_embeddedDisplayContext = [(SBApplicationSupportServiceRequestContext *)self _main_embeddedDisplayContext];
  _main_launchDisplayContext = [(SBApplicationSupportServiceRequestContext *)self _main_launchDisplayContext];
  _main_deviceContext = [(SBApplicationSupportServiceRequestContext *)self _main_deviceContext];
  _main_persistenceIDs = [(SBApplicationSupportServiceRequestContext *)self _main_persistenceIDs];
  v7 = objc_alloc(MEMORY[0x277D77790]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v10 = [v7 initWithMainDisplayContext:_main_embeddedDisplayContext launchDisplayContext:_main_launchDisplayContext deviceContext:_main_deviceContext persistedSceneIdentifiers:_main_persistenceIDs supportAppSceneRequests:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  app = self->_app;
  if (app)
  {
    info = [(SBApplication *)app info];
    supportsMultiwindow = [info supportsMultiwindow];

    if ((supportsMultiwindow & 1) == 0)
    {
      _main_appSceneIdentityProvider = [(SBApplicationSupportServiceRequestContext *)self _main_appSceneIdentityProvider];
      v15 = [_main_appSceneIdentityProvider newSceneIdentityForApplication:self->_app];

      _main_sceneIdentityTokenProvider = [(SBApplicationSupportServiceRequestContext *)self _main_sceneIdentityTokenProvider];
      v17 = [_main_sceneIdentityTokenProvider newSceneIdentityTokenForIdentity:v15];

      [v10 setDefaultSceneToken:v17];
    }
  }

  return v10;
}

- (id)_main_launchDisplayContext
{
  BSDispatchQueueAssertMain();
  _main_effectiveApplicationForCompatibility = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveApplicationForCompatibility];
  launchDisplayConfiguration = self->_launchDisplayConfiguration;
  if (launchDisplayConfiguration && (-[FBSDisplayConfiguration isMainRootDisplay](launchDisplayConfiguration, "isMainRootDisplay") & 1) == 0 && [_main_effectiveApplicationForCompatibility supportsChamoisOnExternalDisplay] && !_SBApplicationClassicModeIsClassic(-[SBApplicationSupportServiceRequestContext _main_effectiveClassicMode](self, "_main_effectiveClassicMode")))
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
  mEMORY[0x277D0AAD8] = self->_preferredSceneIdentityTokenProvider;
  if (!mEMORY[0x277D0AAD8])
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  }

  return mEMORY[0x277D0AAD8];
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

+ (id)hostingApplicationBundleIDForPid:(int)pid
{
  v3 = *&pid;
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v6 = [mEMORY[0x277D0AAC0] processForPID:v3];

  v7 = [self _hostProcessForProcess:v6];
  if ([v7 sb_isProbablyUIApplication])
  {
    sb_bundleIdentifierWithFallback = [v7 sb_bundleIdentifierWithFallback];
  }

  else
  {
    sb_bundleIdentifierWithFallback = 0;
  }

  return sb_bundleIdentifierWithFallback;
}

+ (id)_hostProcessForProcess:(id)process
{
  processCopy = process;
  hostProcess = processCopy;
  if ([processCopy isExtensionProcess])
  {
    hostProcess = processCopy;
    do
    {
      v5 = hostProcess;
      hostProcess = [v5 hostProcess];
    }

    while (([hostProcess isExtensionProcess] & 1) != 0);
  }

  return hostProcess;
}

+ (BOOL)shouldOverrideClientInitialization:(id)initialization
{
  v3 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(initialization, "pid")}];
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

+ (void)initializationContextForClient:(id)client completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  completionCopy = completion;
  BSDispatchQueueAssertNotMain();
  if (!clientCopy)
  {
    [SBApplicationSupportServiceRequestContext initializationContextForClient:a2 completion:self];
  }

  v9 = [clientCopy pid];
  v10 = [MEMORY[0x277D46F50] identifierWithPid:v9];
  v11 = [MEMORY[0x277D46F48] handleForIdentifier:v10 error:0];
  if (!v11 || ![SBSystemUIScenesCoordinator shouldHandleSceneRequestsForProcess:v11 withOptions:0])
  {
    sb_embeddedDisplayDefaultContextForSystemUIScenes = +[SBApplicationController sharedInstance];
    v14 = [sb_embeddedDisplayDefaultContextForSystemUIScenes applicationWithPid:v9];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      bundleIdentifier = [clientCopy bundleIdentifier];
      v16 = [sb_embeddedDisplayDefaultContextForSystemUIScenes applicationWithBundleIdentifier:bundleIdentifier];
    }

    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [v16 bundleIdentifier];
      *buf = 138543362;
      v30 = bundleIdentifier2;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Fetching initialization context for: %{public}@", buf, 0xCu);
    }

    if (v16)
    {
      if (([v16 isSpotlight] & 1) != 0 || objc_msgSend(v16, "isPaperBoard"))
      {
        sb_embeddedDisplayDefaultContext = [MEMORY[0x277D77738] sb_embeddedDisplayDefaultContext];
        completionCopy[2](completionCopy, sb_embeddedDisplayDefaultContext);
LABEL_21:

        goto LABEL_22;
      }

      sb_embeddedDisplayDefaultContext = [v16 _initializationRequestContext];
      [sb_embeddedDisplayDefaultContext applicationInitializationContextWithCompletion:completionCopy];
      v25 = SBLogClassicMode();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [(SBApplicationSupportServiceRequestContext *)v9 initializationContextForClient:v16 completion:v25];
      }
    }

    else
    {
      mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
      v22 = [mEMORY[0x277D0AAC0] processForPID:v9];

      v23 = [objc_opt_class() _hostProcessForProcess:v22];
      v26 = [[self alloc] initWithClient:v22 host:v23];
      v28 = completionCopy;
      v27 = v22;
      v24 = v23;
      v25 = v22;
      sb_embeddedDisplayDefaultContext = v26;
      BSDispatchMain();
    }

    goto LABEL_21;
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = clientCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Providing init context for SystemUI Scene client: %{public}@", buf, 0xCu);
  }

  sb_embeddedDisplayDefaultContextForSystemUIScenes = [MEMORY[0x277D77738] sb_embeddedDisplayDefaultContextForSystemUIScenes];
  completionCopy[2](completionCopy, sb_embeddedDisplayDefaultContextForSystemUIScenes);
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

- (SBApplicationSupportServiceRequestContext)initWithApplication:(id)application launchDisplayConfiguration:(id)configuration persistenceIdentifierProvider:(id)provider sceneIdentityProvider:(id)identityProvider sceneIdentityTokenProvider:(id)tokenProvider
{
  applicationCopy = application;
  configurationCopy = configuration;
  providerCopy = provider;
  identityProviderCopy = identityProvider;
  tokenProviderCopy = tokenProvider;
  if (!applicationCopy)
  {
    [SBApplicationSupportServiceRequestContext initWithApplication:a2 launchDisplayConfiguration:self persistenceIdentifierProvider:? sceneIdentityProvider:? sceneIdentityTokenProvider:?];
  }

  v22.receiver = self;
  v22.super_class = SBApplicationSupportServiceRequestContext;
  v17 = [(SBApplicationSupportServiceRequestContext *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_app, application);
    objc_storeStrong(&v18->_launchDisplayConfiguration, configuration);
    objc_storeStrong(&v18->_preferredAppPersistenceIDProvider, provider);
    objc_storeStrong(&v18->_preferredAppSceneIdentityProvider, identityProvider);
    objc_storeStrong(&v18->_preferredSceneIdentityTokenProvider, tokenProvider);
  }

  return v18;
}

- (SBApplicationSupportServiceRequestContext)initWithClient:(id)client host:(id)host
{
  clientCopy = client;
  hostCopy = host;
  v8 = [hostCopy pid];
  v9 = getpid();
  if (v8 == v9)
  {
    sb_bundleIdentifierWithFallback = FBSystemAppBundleID();

    if (hostCopy == clientCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sb_bundleIdentifierWithFallback = [hostCopy sb_bundleIdentifierWithFallback];
    sb_isProbablyUIApplication = [hostCopy sb_isProbablyUIApplication];
    if (hostCopy)
    {
      v12 = sb_isProbablyUIApplication;
    }

    else
    {
      v12 = 1;
    }

    bundleIdentifier = 0;
    if (hostCopy == clientCopy || (v12 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (![clientCopy isExtensionProcess])
  {
LABEL_13:
    bundleIdentifier = 0;
    goto LABEL_16;
  }

  sb_bundleIdentifierWithFallback2 = [clientCopy sb_bundleIdentifierWithFallback];
  v15 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:sb_bundleIdentifierWithFallback2];
  containingBundle = [v15 containingBundle];

  bundleType = [containingBundle bundleType];
  v18 = [bundleType isEqualToString:*MEMORY[0x277CC1E40]];

  if (v18)
  {
    bundleIdentifier = [containingBundle bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

LABEL_16:
  v19 = +[SBApplicationController sharedInstance];
  v20 = [v19 applicationWithBundleIdentifier:sb_bundleIdentifierWithFallback];
  v21 = [v19 applicationWithBundleIdentifier:bundleIdentifier];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)applicationInitializationContextWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_selfLock_applicationInitializationContext)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(SBApplication *)selfCopy->_app bundleIdentifier];
      *buf = 138543362;
      v11 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached initialization context for %{public}@", buf, 0xCu);
    }

    v8 = selfCopy->_selfLock_applicationInitializationContext;
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v8)
  {
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v9 = completionCopy;
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
  _main_effectiveApplicationForCompatibility = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveApplicationForCompatibility];
  if (_main_effectiveApplicationForCompatibility)
  {
    v4 = [(SBApplication *)_main_effectiveApplicationForCompatibility _screenTypeForClassicMode:?];
  }

  else
  {
    v4 = SBHScreenTypeForCurrentDevice();
  }

  v5 = v4;

  return v5;
}

- (id)_main_displayContextForDisplayConfiguration:(id)configuration
{
  if (configuration)
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

- (void)_main_applyClassicModeLiesIfNecessaryToDisplayContext:(id)context
{
  contextCopy = context;
  _main_effectiveClassicMode = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveClassicMode];
  if (_SBApplicationClassicModeIsClassic(_main_effectiveClassicMode))
  {
    displayConfiguration = [contextCopy displayConfiguration];
    v6 = [SBApplication restrictedClassicModeDisplayConfigurationForDisplayConfiguration:displayConfiguration classicMode:_main_effectiveClassicMode];

    [contextCopy setDisplayConfiguration:v6];
    _main_effectiveScreenType = [(SBApplicationSupportServiceRequestContext *)self _main_effectiveScreenType];
    v8 = [MEMORY[0x277D77750] sb_displayEdgeInfoForScreenTypeConsideringCurrentDevice:_main_effectiveScreenType];
    [contextCopy setDisplayEdgeInfo:v8];

    v9 = [MEMORY[0x277D77780] sb_displayShapeForScreenType:_main_effectiveScreenType];
    [contextCopy setExclusionArea:v9];
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