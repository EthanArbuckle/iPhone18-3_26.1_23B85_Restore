@interface SBApplicationSceneHandle
+ (id)lookupOrCreatePersistenceIDFromApplication:(id)application sceneID:(id)d;
- (id)_createApplicationSceneClientSettingsFromContext:(id)context entity:(id)entity initialSceneSettings:(id)settings;
- (id)_createApplicationSceneSettingsFromContext:(id)context entity:(id)entity;
- (id)_createApplicationSceneTransitionContextFromContext:(id)context entity:(id)entity;
- (id)_createParametersFromTransitionContext:(id)context entity:(id)entity;
- (id)_createProcessExecutionContextFromContext:(id)context entity:(id)entity;
- (id)_initWithApplication:(id)application scene:(id)scene displayIdentity:(id)identity;
- (id)_initWithApplication:(id)application sceneDefinition:(id)definition displayIdentity:(id)identity;
- (id)_initWithDefinition:(id)definition;
- (id)_initWithScene:(id)scene;
- (id)displayItemRepresentation;
- (id)newSceneViewController;
- (id)newSceneViewWithReferenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester;
- (void)_applicationsDidChange:(id)change;
- (void)_commonInit;
- (void)_commonInitWithApplication:(id)application sceneIdentifier:(id)identifier displayIdentity:(id)identity;
- (void)_noteDidMoveFromSceneManager:(id)manager;
- (void)_stopObserving;
- (void)addSceneUpdateContributer:(id)contributer;
- (void)dealloc;
- (void)removeSceneUpdateContributer:(id)contributer;
- (void)setSceneUpdateInProgress:(BOOL)progress;
@end

@implementation SBApplicationSceneHandle

- (id)displayItemRepresentation
{
  application = [(SBApplicationSceneHandle *)self application];
  sceneIdentifier = [(SBApplicationSceneHandle *)self sceneIdentifier];
  if ([application isWebApplication])
  {
    v5 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:sceneIdentifier];
  }

  else
  {
    bundleIdentifier = [application bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.PrintKit.Print-Center"];

    bundleIdentifier2 = [application bundleIdentifier];
    if (v7)
    {
      [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:bundleIdentifier2];
    }

    else
    {
      [SBDisplayItem displayItemWithType:0 bundleIdentifier:bundleIdentifier2 uniqueIdentifier:sceneIdentifier];
    }
    v5 = ;
  }

  return v5;
}

- (void)_commonInit
{
  v8.receiver = self;
  v8.super_class = SBApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v8 _commonInit];
  _definition = [(SBApplicationSceneHandle *)self _definition];
  identity = [_definition identity];
  identifier = [identity identifier];

  application = self->_application;
  displayIdentity = [(SBApplicationSceneHandle *)self displayIdentity];
  [(SBApplicationSceneHandle *)self _commonInitWithApplication:application sceneIdentifier:identifier displayIdentity:displayIdentity];
}

- (void)dealloc
{
  [(SBApplicationSceneHandle *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = SBApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v3 dealloc];
}

- (void)_stopObserving
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

+ (id)lookupOrCreatePersistenceIDFromApplication:(id)application sceneID:(id)d
{
  applicationCopy = application;
  dCopy = d;
  _dataStore = [applicationCopy _dataStore];
  v8 = [_dataStore sceneStoreForIdentifier:dCopy creatingIfNecessary:1];

  v9 = [v8 safeObjectForKey:@"persistenceIdentifier" ofType:objc_opt_class()];
  if (!v9)
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v11 = dCopy;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"sceneID:%@-", bundleIdentifier];
    v13 = [v11 length];
    if (v13 >= [v12 length] && objc_msgSend(v11, "hasPrefix:", v12))
    {
      v14 = [v11 substringFromIndex:{objc_msgSend(v12, "length")}];
    }

    else
    {
      v14 = v11;
    }

    v9 = v14;

    if ([v9 isEqualToString:@"default"])
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v9 = uUIDString;
    }

    [v8 setObject:v9 forKey:@"persistenceIdentifier"];
  }

  return v9;
}

- (id)_initWithScene:(id)scene
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:101 description:@"This initializer is unavailable."];

  return 0;
}

- (id)_initWithDefinition:(id)definition
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:106 description:@"This initializer is unavailable."];

  return 0;
}

- (id)_initWithApplication:(id)application scene:(id)scene displayIdentity:(id)identity
{
  applicationCopy = application;
  sceneCopy = scene;
  identityCopy = identity;
  settings = [sceneCopy settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [SBApplicationSceneHandle _initWithApplication:scene:displayIdentity:];
  }

  clientSettings = [sceneCopy clientSettings];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    [SBApplicationSceneHandle _initWithApplication:scene:displayIdentity:];
  }

  application = self->_application;
  self->_application = applicationCopy;
  v16 = applicationCopy;

  v19.receiver = self;
  v19.super_class = SBApplicationSceneHandle;
  v17 = [(SBApplicationSceneHandle *)&v19 _initWithScene:sceneCopy displayIdentity:identityCopy];

  return v17;
}

- (id)_initWithApplication:(id)application sceneDefinition:(id)definition displayIdentity:(id)identity
{
  objc_storeStrong(&self->_application, application);
  applicationCopy = application;
  identityCopy = identity;
  definitionCopy = definition;
  v14.receiver = self;
  v14.super_class = SBApplicationSceneHandle;
  v12 = [(SBApplicationSceneHandle *)&v14 _initWithDefinition:definitionCopy displayIdentity:identityCopy];

  return v12;
}

- (void)_commonInitWithApplication:(id)application sceneIdentifier:(id)identifier displayIdentity:(id)identity
{
  identifierCopy = identifier;
  applicationCopy = application;
  self->_isSecure = [identity expectsSecureRendering];
  v10 = [objc_opt_class() lookupOrCreatePersistenceIDFromApplication:applicationCopy sceneID:identifierCopy];

  persistenceIdentifier = self->_persistenceIdentifier;
  self->_persistenceIdentifier = v10;

  self->_layoutRole = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

- (void)_noteDidMoveFromSceneManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = SBApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v6 _noteDidMoveFromSceneManager:manager];
  sceneManager = [(SBApplicationSceneHandle *)self sceneManager];
  displayIdentity = [sceneManager displayIdentity];
  self->_isSecure = [displayIdentity expectsSecureRendering];
}

- (id)_createParametersFromTransitionContext:(id)context entity:(id)entity
{
  v6 = MEMORY[0x277D0AD50];
  entityCopy = entity;
  contextCopy = context;
  _definition = [(SBApplicationSceneHandle *)self _definition];
  specification = [_definition specification];
  v11 = [v6 parametersForSpecification:specification];

  v12 = [(SBApplicationSceneHandle *)self _createApplicationSceneSettingsFromContext:contextCopy entity:entityCopy];
  [v11 setSettings:v12];

  settings = [v11 settings];
  v14 = [(SBApplicationSceneHandle *)self _createApplicationSceneClientSettingsFromContext:contextCopy entity:entityCopy initialSceneSettings:settings];

  [v11 setClientSettings:v14];

  return v11;
}

- (id)_createProcessExecutionContextFromContext:(id)context entity:(id)entity
{
  v84[4] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entityCopy = entity;
  if (!entityCopy)
  {
    [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [entityCopy objectForProcessSetting:2];
  v74 = dictionary;
  [dictionary addEntriesFromDictionary:v9];

  request = [contextCopy request];
  v69 = request;
  if ([request isMainWorkspaceTransitionRequest])
  {
    source = [request source];
  }

  else
  {
    source = 0;
  }

  v12 = [entityCopy objectForActivationSetting:19];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
    }

    mach_continuous_time();
  }

  application = [(SBApplicationSceneHandle *)self application];
  v16 = SBMainWorkspaceTransitionSourceDescription(source);
  [v16 cStringUsingEncoding:4];

  info = [application info];
  bundleVersion = [info bundleVersion];
  [bundleVersion cStringUsingEncoding:4];

  info2 = [application info];
  shortVersionString = [info2 shortVersionString];
  [shortVersionString cStringUsingEncoding:4];

  obj = 0;
  bundleIdentifier = [application bundleIdentifier];
  [bundleIdentifier cStringUsingEncoding:4];

  [contextCopy isBackground];
  alm_app_will_launch_with_details_and_metrics_payload();
  objc_storeStrong(&self->_launchMetricsPayload, 0);
  v22 = [entityCopy objectForActivationSetting:18];
  [v22 doubleValue];
  self->_userLaunchEventTime = v23;

  if (BSFloatIsZero())
  {
    v24 = SBLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_userLaunchEventTime = v25;
  }

  if (__PPTTestInProgress == 1)
  {
    v84[0] = MEMORY[0x277CBEC38];
    v83[0] = @"__PPT_ForTesting";
    v83[1] = @"__PPT_SignpostID";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_userLaunchSignpostID];
    v84[1] = v26;
    v83[2] = @"__PPT_LaunchTime";
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_userLaunchEventTime];
    v84[2] = v27;
    v83[3] = @"__PPT_BackgroundLaunch";
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "isBackground")}];
    v84[3] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:4];
    [v74 addEntriesFromDictionary:v29];

    if (__PPTUserSpecifiedEnvironment)
    {
      [v74 addEntriesFromDictionary:?];
      v30 = __PPTUserSpecifiedEnvironment;
      __PPTUserSpecifiedEnvironment = 0;
    }
  }

  v70 = contextCopy;
  v31 = [entityCopy objectForProcessSetting:1];
  v71 = [entityCopy objectForProcessSetting:3];
  v73 = [entityCopy objectForProcessSetting:4];
  v32 = [entityCopy BOOLForProcessSetting:5];
  v33 = [entityCopy BOOLForProcessSetting:6];
  v68 = [entityCopy BOOLForProcessSetting:7];
  v34 = [entityCopy BOOLForProcessSetting:8];
  v35 = [entityCopy objectForActivationSetting:33];
  v36 = objc_opt_class();
  v37 = v35;
  if (v36)
  {
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  v40 = v71;
  v72 = v39;
  if (v39)
  {
    v67 = v33;
    v41 = v32;
    v42 = v34;
    v43 = v31;
    v44 = objc_alloc(MEMORY[0x277CC1E58]);
    bundleIdentifier2 = [application bundleIdentifier];
    v75 = 0;
    v46 = [v44 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 personaUniqueString:v72 error:&v75];
    v47 = v75;

    if (v46)
    {
      processIdentity = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v46];

      v31 = v43;
      v34 = v42;
      v32 = v41;
      v33 = v67;
      if (processIdentity)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v49 = SBLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        bundleIdentifier3 = [application bundleIdentifier];
        v64 = [v47 descriptionWithMultilinePrefix:0];
        *buf = 138543874;
        v78 = bundleIdentifier3;
        v79 = 2114;
        v80 = v72;
        v81 = 2114;
        v82 = v64;
        v65 = v64;
        _os_log_error_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_ERROR, "could not create LSApplicationIdentity for bundleID %{public}@ and persona %{public}@: %{public}@", buf, 0x20u);
      }

      v31 = v43;
      v34 = v42;
      v32 = v41;
      v33 = v67;
    }
  }

  info3 = [application info];
  processIdentity = [info3 processIdentity];

LABEL_30:
  v51 = objc_alloc_init(MEMORY[0x277D0AAA8]);
  [v51 setIdentity:processIdentity];
  [v51 setEnvironment:v74];
  [v51 setWaitForDebugger:v32];
  [v51 setDisableASLR:v33];
  [v51 setCheckForLeaks:__CheckForLeaks];
  [v51 setArguments:v31];
  v52 = [MEMORY[0x277CBEBC0] URLWithString:v71];
  [v51 setStandardOutputURL:v52];

  v53 = [MEMORY[0x277CBEBC0] URLWithString:v73];
  [v51 setStandardErrorURL:v53];

  [v51 setEnableMTE:v34];
  v54 = [entityCopy objectForActivationSetting:30];
  v55 = v54;
  if (v54)
  {
    integerValue = [v54 integerValue];
    v57 = v70;
  }

  else
  {
    v58 = v31;
    v57 = v70;
    if ([entityCopy BOOLForActivationSetting:3])
    {
      info4 = [application info];
      hasViewServicesEntitlement = [info4 hasViewServicesEntitlement];

      if (hasViewServicesEntitlement)
      {
        integerValue = 3;
      }

      else
      {
        integerValue = 2;
      }
    }

    else
    {
      integerValue = 4;
    }

    v61 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
    [entityCopy setObject:v61 forActivationSetting:30];

    v31 = v58;
    v40 = v71;
  }

  [v51 setLaunchIntent:integerValue];
  if (v68)
  {
    +[SBSceneWatchdogProvider disabledSceneWatchdogProvider];
  }

  else
  {
    +[SBSceneWatchdogProvider defaultSceneWatchdogProvider];
  }
  v62 = ;
  [v51 setWatchdogProvider:v62];

  [(SBApplicationSceneHandle *)self _modifyProcessExecutionContext:v51 fromRequestContext:v57 entity:entityCopy];

  return v51;
}

- (id)_createApplicationSceneTransitionContextFromContext:(id)context entity:(id)entity
{
  v118 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entityCopy = entity;
  v8 = entityCopy;
  if (contextCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationSceneHandle _createApplicationSceneTransitionContextFromContext:entity:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationSceneHandle _createApplicationSceneTransitionContextFromContext:entity:];
LABEL_3:
  application = [(SBApplicationSceneHandle *)self application];
  _definition = [(SBApplicationSceneHandle *)self _definition];
  specification = [_definition specification];
  v12 = objc_alloc_init([specification transitionContextClass]);

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75188]);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = [v8 objectForActivationSetting:14];
  v15 = objc_opt_class();
  v16 = v14;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if ([v18 length] && objc_msgSend(application, "shouldReceiveSourceApplicationContextFromOriginatingApplication:", v18))
  {
    [dictionary setObject:v18 forKey:*MEMORY[0x277D76690]];
  }

  v19 = [v8 objectForActivationSetting:5];
  v20 = objc_opt_class();
  v21 = v19;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v103 = v23;
  relativeString = [v23 relativeString];
  if ([relativeString length])
  {
    [dictionary setObject:relativeString forKey:*MEMORY[0x277D76698]];
  }

  v100 = relativeString;
  v25 = [v8 objectForActivationSetting:34];
  v26 = NSClassFromString(&cfstr_Uispastesharin.isa);
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

  if (v29)
  {
    [dictionary setObject:v29 forKey:@"__PasteSharingToken"];
  }

  v99 = v29;
  request = [contextCopy request];
  v101 = v18;
  v105 = request;
  if ([request isMainWorkspaceTransitionRequest])
  {
    v31 = request;
    source = [v31 source];
  }

  else
  {
    source = 0;
  }

  v106 = dictionary;
  v33 = [v8 objectForActivationSetting:19];
  unsignedIntegerValue = [v33 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
    }

    mach_continuous_time();
  }

  isBackground = [contextCopy isBackground];
  v37 = SBMainWorkspaceTransitionSourceDescription(source);
  [v37 cStringUsingEncoding:4];

  info = [application info];
  bundleVersion = [info bundleVersion];
  [bundleVersion cStringUsingEncoding:4];

  info2 = [application info];
  shortVersionString = [info2 shortVersionString];
  [shortVersionString cStringUsingEncoding:4];

  v104 = application;
  v102 = isBackground;
  if (self->_userLaunchSignpostID)
  {
    alm_app_will_activate_with_signpost_id();
  }

  else
  {
    sceneIfExists = [(SBApplicationSceneHandle *)self sceneIfExists];
    scheme = [v103 scheme];
    v94 = [scheme isEqualToString:@"test"];

    if (sceneIfExists)
    {
      v44 = [sceneIfExists isActive] ^ 1;
    }

    else
    {
      v44 = 1;
    }

    settings = [sceneIfExists settings];
    isForeground = [settings isForeground];

    v47 = [v8 BOOLForActivationSetting:52];
    if (((v94 | v44) & 1) != 0 || ((isForeground | v102) & 1) == 0 || v47)
    {
      alm_app_will_activate_with_details();
    }

    application = v104;
  }

  v48 = [v8 objectForActivationSetting:15];
  v49 = objc_opt_class();
  v50 = v48;
  if (v49)
  {
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;

  if ([v52 count])
  {
    [dictionary setObject:v52 forKey:*MEMORY[0x277D76678]];
  }

  v98 = v52;
  v53 = [v8 objectForActivationSetting:16];
  v54 = objc_opt_class();
  v55 = v53;
  if (v54)
  {
    if (objc_opt_isKindOfClass())
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  if ([v57 count])
  {
    [dictionary addEntriesFromDictionary:v57];
  }

  v97 = v57;
  if ([dictionary count])
  {
    [v12 setPayload:dictionary];
  }

  v58 = [v8 objectForActivationSetting:32];
  [v12 setClickAttribution:v58];

  [v8 translateActivationSettingsToActions];
  if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
  {
    v59 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
  }

  else
  {
    v59 = 0;
  }

  if ((LCSFeatureEnabled() & 1) != 0 || v59)
  {
    v60 = application;
    application2 = [v8 application];
    bundleIdentifier = [application2 bundleIdentifier];

    v63 = +[SBCaptureApplicationCenter sharedInstance];
    v64 = [v63 captureApplicationForBundleIdentifier:bundleIdentifier];

    activationSettings = [v8 activationSettings];
    v66 = [activationSettings BOOLForActivationSetting:36];

    if (v66 && v64)
    {
      v67 = +[SBCaptureApplicationCenter sharedInstance];
      v68 = [v67 launchActionsForCaptureApplication:bundleIdentifier launchTarget:0 launchType:0];
      [v8 addActions:v68];
    }

    else
    {
      v67 = SBLogCommon();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v113 = bundleIdentifier;
        v114 = 1024;
        v115 = v66;
        v116 = 1024;
        v117 = v64 != 0;
        _os_log_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEFAULT, "No capture application found for the %@, launchCameraCapture: %{BOOL}u, isCaptureApplication: %{BOOL}u", buf, 0x18u);
      }
    }

    application = v60;
  }

  actions = [v8 actions];
  if ([actions count])
  {
    [v12 setActions:actions];
  }

  [v8 removeAllActions];
  animationSettings = [contextCopy animationSettings];
  if (animationSettings)
  {
    [v12 setAnimationSettings:animationSettings];
  }

  v95 = animationSettings;
  v96 = actions;
  if ((v102 & 1) == 0)
  {
    v71 = application;
    animationFence = [contextCopy animationFence];
    if (([contextCopy fencesAnimations] & 1) != 0 || animationFence)
    {
      animationFence2 = [v12 animationFence];
      if (animationFence2)
      {
      }

      else
      {
        sceneIfExists2 = [(SBApplicationSceneHandle *)self sceneIfExists];
        clientProcess = [sceneIfExists2 clientProcess];
        isForeground2 = [clientProcess isForeground];

        if (isForeground2)
        {
          if (animationFence)
          {
            [v12 setAnimationFence:animationFence];
          }

          else
          {
            v77 = [*MEMORY[0x277D76620] _systemAnimationFenceCreatingIfNecessary:1];
            [v12 setAnimationFence:v77];
          }
        }
      }
    }

    application = v71;
  }

  if (([v8 BOOLForActivationSetting:49] & 1) != 0 || objc_msgSend(v8, "BOOLForActivationSetting:", 62))
  {
    [v12 setShouldTakeKeyboardFocus:1];
  }

  if (__PPTTestInProgress == 1)
  {
    [v12 setForTesting:1];
    [v12 setUserLaunchEventTime:self->_userLaunchEventTime];
    __PPTTestInProgress = 0;
    if (BSFloatIsZero())
    {
      v78 = SBLogCommon();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        [SBApplicationSceneHandle _createApplicationSceneTransitionContextFromContext:entity:];
      }
    }
  }

  if (self->_userLaunchSignpostID)
  {
    [v12 setUserLaunchEventTime:self->_userLaunchEventTime];
    [v12 setSignpostID:self->_userLaunchSignpostID];
    self->_userLaunchSignpostID = 0;
    [v12 setLaunchMetricsPayload:self->_launchMetricsPayload];
    launchMetricsPayload = self->_launchMetricsPayload;
    self->_launchMetricsPayload = 0;
  }

  info3 = [application info];
  isAppleApplication = [info3 isAppleApplication];

  if (isAppleApplication)
  {
    originatingProcess = [v105 originatingProcess];
    [v12 setOriginatingProcess:originatingProcess];
  }

  [contextCopy watchdogScaleFactor];
  [v12 setWatchdogScaleFactor:?];
  if ([contextCopy alwaysRunsWatchdog])
  {
    watchdogTransitionContext = [v12 watchdogTransitionContext];
    [watchdogTransitionContext setWatchdogBehavior:1];
  }

  v84 = [v8 objectForActivationSetting:30];
  integerValue = [v84 integerValue];

  if (integerValue == 1)
  {
    [v12 setAllowCPUThrottling:1];
  }

  [(SBApplicationSceneHandle *)self _modifyApplicationTransitionContext:v12 fromRequestContext:contextCopy entity:v8];
  [(NSHashTable *)self->_sceneUpdateContributers allObjects];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v86 = v110 = 0u;
  v87 = [v86 countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v108;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v108 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v107 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v91 applicationSceneHandle:self appendToTransitionContext:v12 fromRequestContext:contextCopy entity:v8];
        }
      }

      v88 = [v86 countByEnumeratingWithState:&v107 objects:v111 count:16];
    }

    while (v88);
  }

  v92 = v12;
  return v12;
}

- (void)setSceneUpdateInProgress:(BOOL)progress
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_sceneUpdateInProgress != progress)
  {
    self->_sceneUpdateInProgress = progress;
    v7 = @"SceneIdentifierKey";
    sceneIdentifier = [(SBApplicationSceneHandle *)self sceneIdentifier];
    v8[0] = sceneIdentifier;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBApplicationSceneHandleProgressNotification" object:self userInfo:v5];
  }
}

- (void)_applicationsDidChange:(id)change
{
  changeCopy = change;
  v4 = [MEMORY[0x277CBEB58] set];
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];

  if ([v6 count])
  {
    [v4 unionSet:v6];
  }

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];

  if ([v8 count])
  {
    [v4 unionSet:v8];
  }

  if ([v4 count])
  {
    application = [(SBApplicationSceneHandle *)self application];
    bundleIdentifier = [application bundleIdentifier];

    if ([v4 containsObject:bundleIdentifier])
    {
      v11 = +[SBApplicationController sharedInstance];
      v12 = [v11 applicationWithBundleIdentifier:bundleIdentifier];

      if (!v12)
      {
        [SBApplicationSceneHandle _applicationsDidChange:];
      }

      application = self->_application;
      self->_application = v12;
    }
  }
}

- (id)_createApplicationSceneSettingsFromContext:(id)context entity:(id)entity
{
  v87 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entityCopy = entity;
  v9 = entityCopy;
  if (contextCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationSceneHandle _createApplicationSceneSettingsFromContext:entity:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationSceneHandle _createApplicationSceneSettingsFromContext:entity:];
LABEL_3:
  request = [contextCopy request];
  displayConfiguration = [request displayConfiguration];
  sceneIfExists = [(SBApplicationSceneHandle *)self sceneIfExists];
  v12 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    v14 = [settings mutableCopy];
  }

  else
  {
    settings = [(SBApplicationSceneHandle *)self _definition];
    [settings specification];
    v16 = v15 = displayConfiguration;
    v17 = [objc_msgSend(v16 "settingsClass")];
    v14 = [v17 mutableCopy];

    displayConfiguration = v15;
  }

  v71 = displayConfiguration;
  [v14 setDisplayConfiguration:displayConfiguration];
  [v14 setPersistenceIdentifier:self->_persistenceIdentifier];
  if (_os_feature_enabled_impl())
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  [v14 setInterruptionPolicy:v18];
  isBackground = [contextCopy isBackground];
  v20 = isBackground;
  v69 = v12;
  if (!v12 || (isBackground & 1) == 0)
  {
    application = [(SBApplicationSceneHandle *)self application];
    v22 = v20 ^ 1u;
    [v14 setForeground:v22];
    [v14 setLevel:1.0];
    if ((v22 & 1) != 0 || ([application info], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasHiddenTag"), v23, !v24))
    {
      [contextCopy frameForApplicationSceneEntity:v9];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = v31;
      if (v36 == *MEMORY[0x277CBF3A8] && v31 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v39 = SBLogAppSwitcher();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v66 = SBMainWorkspaceTransitionSourceDescription([request source]);
          identity = [v71 identity];
          layoutState = [contextCopy layoutState];
          *buf = 138544386;
          v78 = v69;
          v79 = 2114;
          v80 = v66;
          v81 = 2114;
          v82 = identity;
          v83 = 2114;
          v84 = v9;
          v85 = 2114;
          v86 = layoutState;
          _os_log_error_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_ERROR, "-_cASSFC:E: produced {0,0} with scene %{public}@, source %{public}@, display configuration %{public}@, entity %{public}@, request context %{public}@", buf, 0x34u);
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v89.origin.x = v33;
        v89.origin.y = v35;
        v89.size.width = v37;
        v89.size.height = v38;
        v41 = NSStringFromCGRect(v89);
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:602 description:{@"frame (%@) isn't valid", v41}];
      }

      v25 = application;
      v30 = v14;
      v26 = v33;
      v27 = v35;
      v28 = v37;
      v29 = v38;
    }

    else
    {
      v25 = application;
      [v71 bounds];
      v30 = v14;
    }

    [v30 setFrame:{v26, v27, v28, v29}];
    layoutState2 = [contextCopy layoutState];
    sceneIdentifier = [(SBApplicationSceneHandle *)self sceneIdentifier];
    v44 = [layoutState2 elementWithIdentifier:sceneIdentifier];

    interfaceOrientation = [v14 interfaceOrientation];
    if (interfaceOrientation <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = interfaceOrientation;
    }

    interfaceOrientation2 = [contextCopy interfaceOrientation];
    v48 = interfaceOrientation2;
    if (v44)
    {
      layoutState3 = [contextCopy layoutState];
      v50 = [layoutState3 interfaceOrientationForLayoutElement:v44 unknownAllowed:1];

      if (v48)
      {
        v51 = v48;
      }

      else
      {
        v51 = v46;
      }

      v52 = v25;
      if (!v50)
      {
        v50 = v51;
      }
    }

    else
    {
      if (interfaceOrientation2)
      {
        v50 = interfaceOrientation2;
      }

      else
      {
        v50 = v46;
      }

      v52 = v25;
    }

    [v14 setInterfaceOrientation:v50];
    if ([v52 isMedusaCapable])
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    [v14 setInterfaceOrientationMode:v53];
    [v14 setInLiveResize:{objc_msgSend(contextCopy, "isInLiveResize")}];
    v54 = [v9 objectForActivationSetting:61];
    if (v54)
    {
      ignoreOcclusionReasons = [v14 ignoreOcclusionReasons];
      [ignoreOcclusionReasons addObject:v54];
    }

    [(SBApplicationSceneHandle *)self _modifyApplicationSceneSettings:v14 fromRequestContext:contextCopy entity:v9];
  }

  allObjects = [(NSHashTable *)self->_sceneUpdateContributers allObjects];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v57 = [allObjects countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v73;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v73 != v59)
        {
          objc_enumerationMutation(allObjects);
        }

        v61 = *(*(&v72 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v61 applicationSceneHandle:self appendToSceneSettings:v14 fromRequestContext:contextCopy entity:v9];
        }
      }

      v58 = [allObjects countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v58);
  }

  [v14 frame];
  if (v63 == *MEMORY[0x277CBF3A8] && v62 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [SBApplicationSceneHandle _createApplicationSceneSettingsFromContext:entity:];
  }

  return v14;
}

- (id)_createApplicationSceneClientSettingsFromContext:(id)context entity:(id)entity initialSceneSettings:(id)settings
{
  contextCopy = context;
  entityCopy = entity;
  settingsCopy = settings;
  v11 = settingsCopy;
  if (contextCopy)
  {
    if (settingsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationSceneHandle _createApplicationSceneClientSettingsFromContext:entity:initialSceneSettings:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [SBApplicationSceneHandle _createApplicationSceneClientSettingsFromContext:entity:initialSceneSettings:];
LABEL_3:
  _definition = [(SBApplicationSceneHandle *)self _definition];
  specification = [_definition specification];
  v14 = [objc_msgSend(specification "clientSettingsClass")];
  v15 = [v14 mutableCopy];

  [(SBApplicationSceneHandle *)self _modifyApplicationSceneClientSettings:v15 fromRequestContext:contextCopy entity:entityCopy initialSceneSettings:v11];

  return v15;
}

- (id)newSceneViewWithReferenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester
{
  height = size.height;
  width = size.width;
  requesterCopy = requester;
  height = [[SBApplicationSceneView alloc] initWithSceneHandle:self referenceSize:orientation contentOrientation:containerOrientation containerOrientation:requesterCopy hostRequester:width, height];

  return height;
}

- (id)newSceneViewController
{
  v3 = [SBApplicationSceneViewController alloc];

  return [(SBApplicationSceneViewController *)v3 initWithSceneHandle:self];
}

- (void)addSceneUpdateContributer:(id)contributer
{
  contributerCopy = contributer;
  sceneUpdateContributers = self->_sceneUpdateContributers;
  v8 = contributerCopy;
  if (!sceneUpdateContributers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_sceneUpdateContributers;
    self->_sceneUpdateContributers = weakObjectsHashTable;

    contributerCopy = v8;
    sceneUpdateContributers = self->_sceneUpdateContributers;
  }

  [(NSHashTable *)sceneUpdateContributers addObject:contributerCopy];
}

- (void)removeSceneUpdateContributer:(id)contributer
{
  [(NSHashTable *)self->_sceneUpdateContributers removeObject:contributer];
  if (![(NSHashTable *)self->_sceneUpdateContributers count])
  {
    sceneUpdateContributers = self->_sceneUpdateContributers;
    self->_sceneUpdateContributers = 0;
  }
}

- (void)_initWithApplication:scene:displayIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_initWithApplication:scene:displayIdentity:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createProcessExecutionContextFromContext:entity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"entity != nil" object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneTransitionContextFromContext:entity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"requestContext" object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneTransitionContextFromContext:entity:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"entity" object:? file:? lineNumber:? description:?];
}

- (void)_applicationsDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneSettingsFromContext:entity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"requestContext" object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneSettingsFromContext:entity:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"entity" object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneSettingsFromContext:entity:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneClientSettingsFromContext:entity:initialSceneSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"requestContext" object:? file:? lineNumber:? description:?];
}

- (void)_createApplicationSceneClientSettingsFromContext:entity:initialSceneSettings:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"settings" object:? file:? lineNumber:? description:?];
}

@end