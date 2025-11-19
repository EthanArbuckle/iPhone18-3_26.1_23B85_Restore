@interface SBApplicationSceneHandle
+ (id)lookupOrCreatePersistenceIDFromApplication:(id)a3 sceneID:(id)a4;
- (id)_createApplicationSceneClientSettingsFromContext:(id)a3 entity:(id)a4 initialSceneSettings:(id)a5;
- (id)_createApplicationSceneSettingsFromContext:(id)a3 entity:(id)a4;
- (id)_createApplicationSceneTransitionContextFromContext:(id)a3 entity:(id)a4;
- (id)_createParametersFromTransitionContext:(id)a3 entity:(id)a4;
- (id)_createProcessExecutionContextFromContext:(id)a3 entity:(id)a4;
- (id)_initWithApplication:(id)a3 scene:(id)a4 displayIdentity:(id)a5;
- (id)_initWithApplication:(id)a3 sceneDefinition:(id)a4 displayIdentity:(id)a5;
- (id)_initWithDefinition:(id)a3;
- (id)_initWithScene:(id)a3;
- (id)displayItemRepresentation;
- (id)newSceneViewController;
- (id)newSceneViewWithReferenceSize:(CGSize)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 hostRequester:(id)a6;
- (void)_applicationsDidChange:(id)a3;
- (void)_commonInit;
- (void)_commonInitWithApplication:(id)a3 sceneIdentifier:(id)a4 displayIdentity:(id)a5;
- (void)_noteDidMoveFromSceneManager:(id)a3;
- (void)_stopObserving;
- (void)addSceneUpdateContributer:(id)a3;
- (void)dealloc;
- (void)removeSceneUpdateContributer:(id)a3;
- (void)setSceneUpdateInProgress:(BOOL)a3;
@end

@implementation SBApplicationSceneHandle

- (id)displayItemRepresentation
{
  v3 = [(SBApplicationSceneHandle *)self application];
  v4 = [(SBApplicationSceneHandle *)self sceneIdentifier];
  if ([v3 isWebApplication])
  {
    v5 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v4];
  }

  else
  {
    v6 = [v3 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.PrintKit.Print-Center"];

    v8 = [v3 bundleIdentifier];
    if (v7)
    {
      [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:v8];
    }

    else
    {
      [SBDisplayItem displayItemWithType:0 bundleIdentifier:v8 uniqueIdentifier:v4];
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
  v3 = [(SBApplicationSceneHandle *)self _definition];
  v4 = [v3 identity];
  v5 = [v4 identifier];

  application = self->_application;
  v7 = [(SBApplicationSceneHandle *)self displayIdentity];
  [(SBApplicationSceneHandle *)self _commonInitWithApplication:application sceneIdentifier:v5 displayIdentity:v7];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

+ (id)lookupOrCreatePersistenceIDFromApplication:(id)a3 sceneID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _dataStore];
  v8 = [v7 sceneStoreForIdentifier:v6 creatingIfNecessary:1];

  v9 = [v8 safeObjectForKey:@"persistenceIdentifier" ofType:objc_opt_class()];
  if (!v9)
  {
    v10 = [v5 bundleIdentifier];
    v11 = v6;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"sceneID:%@-", v10];
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
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];

      v9 = v16;
    }

    [v8 setObject:v9 forKey:@"persistenceIdentifier"];
  }

  return v9;
}

- (id)_initWithScene:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:101 description:@"This initializer is unavailable."];

  return 0;
}

- (id)_initWithDefinition:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:106 description:@"This initializer is unavailable."];

  return 0;
}

- (id)_initWithApplication:(id)a3 scene:(id)a4 displayIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [SBApplicationSceneHandle _initWithApplication:scene:displayIdentity:];
  }

  v13 = [v9 clientSettings];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    [SBApplicationSceneHandle _initWithApplication:scene:displayIdentity:];
  }

  application = self->_application;
  self->_application = v8;
  v16 = v8;

  v19.receiver = self;
  v19.super_class = SBApplicationSceneHandle;
  v17 = [(SBApplicationSceneHandle *)&v19 _initWithScene:v9 displayIdentity:v10];

  return v17;
}

- (id)_initWithApplication:(id)a3 sceneDefinition:(id)a4 displayIdentity:(id)a5
{
  objc_storeStrong(&self->_application, a3);
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v14.receiver = self;
  v14.super_class = SBApplicationSceneHandle;
  v12 = [(SBApplicationSceneHandle *)&v14 _initWithDefinition:v11 displayIdentity:v10];

  return v12;
}

- (void)_commonInitWithApplication:(id)a3 sceneIdentifier:(id)a4 displayIdentity:(id)a5
{
  v8 = a4;
  v9 = a3;
  self->_isSecure = [a5 expectsSecureRendering];
  v10 = [objc_opt_class() lookupOrCreatePersistenceIDFromApplication:v9 sceneID:v8];

  persistenceIdentifier = self->_persistenceIdentifier;
  self->_persistenceIdentifier = v10;

  self->_layoutRole = 0;
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__applicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
}

- (void)_noteDidMoveFromSceneManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v6 _noteDidMoveFromSceneManager:a3];
  v4 = [(SBApplicationSceneHandle *)self sceneManager];
  v5 = [v4 displayIdentity];
  self->_isSecure = [v5 expectsSecureRendering];
}

- (id)_createParametersFromTransitionContext:(id)a3 entity:(id)a4
{
  v6 = MEMORY[0x277D0AD50];
  v7 = a4;
  v8 = a3;
  v9 = [(SBApplicationSceneHandle *)self _definition];
  v10 = [v9 specification];
  v11 = [v6 parametersForSpecification:v10];

  v12 = [(SBApplicationSceneHandle *)self _createApplicationSceneSettingsFromContext:v8 entity:v7];
  [v11 setSettings:v12];

  v13 = [v11 settings];
  v14 = [(SBApplicationSceneHandle *)self _createApplicationSceneClientSettingsFromContext:v8 entity:v7 initialSceneSettings:v13];

  [v11 setClientSettings:v14];

  return v11;
}

- (id)_createProcessExecutionContextFromContext:(id)a3 entity:(id)a4
{
  v84[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [v7 objectForProcessSetting:2];
  v74 = v8;
  [v8 addEntriesFromDictionary:v9];

  v10 = [v6 request];
  v69 = v10;
  if ([v10 isMainWorkspaceTransitionRequest])
  {
    v11 = [v10 source];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 objectForActivationSetting:19];
  v13 = [v12 unsignedIntegerValue];

  if (!v13)
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
    }

    mach_continuous_time();
  }

  v15 = [(SBApplicationSceneHandle *)self application];
  v16 = SBMainWorkspaceTransitionSourceDescription(v11);
  [v16 cStringUsingEncoding:4];

  v17 = [v15 info];
  v18 = [v17 bundleVersion];
  [v18 cStringUsingEncoding:4];

  v19 = [v15 info];
  v20 = [v19 shortVersionString];
  [v20 cStringUsingEncoding:4];

  obj = 0;
  v21 = [v15 bundleIdentifier];
  [v21 cStringUsingEncoding:4];

  [v6 isBackground];
  alm_app_will_launch_with_details_and_metrics_payload();
  objc_storeStrong(&self->_launchMetricsPayload, 0);
  v22 = [v7 objectForActivationSetting:18];
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
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isBackground")}];
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

  v70 = v6;
  v31 = [v7 objectForProcessSetting:1];
  v71 = [v7 objectForProcessSetting:3];
  v73 = [v7 objectForProcessSetting:4];
  v32 = [v7 BOOLForProcessSetting:5];
  v33 = [v7 BOOLForProcessSetting:6];
  v68 = [v7 BOOLForProcessSetting:7];
  v34 = [v7 BOOLForProcessSetting:8];
  v35 = [v7 objectForActivationSetting:33];
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
    v45 = [v15 bundleIdentifier];
    v75 = 0;
    v46 = [v44 initWithBundleIdentifier:v45 allowPlaceholder:0 personaUniqueString:v72 error:&v75];
    v47 = v75;

    if (v46)
    {
      v48 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v46];

      v31 = v43;
      v34 = v42;
      v32 = v41;
      v33 = v67;
      if (v48)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v49 = SBLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v66 = [v15 bundleIdentifier];
        v64 = [v47 descriptionWithMultilinePrefix:0];
        *buf = 138543874;
        v78 = v66;
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

  v50 = [v15 info];
  v48 = [v50 processIdentity];

LABEL_30:
  v51 = objc_alloc_init(MEMORY[0x277D0AAA8]);
  [v51 setIdentity:v48];
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
  v54 = [v7 objectForActivationSetting:30];
  v55 = v54;
  if (v54)
  {
    v56 = [v54 integerValue];
    v57 = v70;
  }

  else
  {
    v58 = v31;
    v57 = v70;
    if ([v7 BOOLForActivationSetting:3])
    {
      v59 = [v15 info];
      v60 = [v59 hasViewServicesEntitlement];

      if (v60)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }
    }

    else
    {
      v56 = 4;
    }

    v61 = [MEMORY[0x277CCABB0] numberWithInteger:v56];
    [v7 setObject:v61 forActivationSetting:30];

    v31 = v58;
    v40 = v71;
  }

  [v51 setLaunchIntent:v56];
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

  [(SBApplicationSceneHandle *)self _modifyProcessExecutionContext:v51 fromRequestContext:v57 entity:v7];

  return v51;
}

- (id)_createApplicationSceneTransitionContextFromContext:(id)a3 entity:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v9 = [(SBApplicationSceneHandle *)self application];
  v10 = [(SBApplicationSceneHandle *)self _definition];
  v11 = [v10 specification];
  v12 = objc_alloc_init([v11 transitionContextClass]);

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75188]);
  }

  v13 = [MEMORY[0x277CBEB38] dictionary];
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

  if ([v18 length] && objc_msgSend(v9, "shouldReceiveSourceApplicationContextFromOriginatingApplication:", v18))
  {
    [v13 setObject:v18 forKey:*MEMORY[0x277D76690]];
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
  v24 = [v23 relativeString];
  if ([v24 length])
  {
    [v13 setObject:v24 forKey:*MEMORY[0x277D76698]];
  }

  v100 = v24;
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
    [v13 setObject:v29 forKey:@"__PasteSharingToken"];
  }

  v99 = v29;
  v30 = [v6 request];
  v101 = v18;
  v105 = v30;
  if ([v30 isMainWorkspaceTransitionRequest])
  {
    v31 = v30;
    v32 = [v31 source];
  }

  else
  {
    v32 = 0;
  }

  v106 = v13;
  v33 = [v8 objectForActivationSetting:19];
  v34 = [v33 unsignedIntegerValue];

  if (!v34)
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationSceneHandle _createProcessExecutionContextFromContext:entity:];
    }

    mach_continuous_time();
  }

  v36 = [v6 isBackground];
  v37 = SBMainWorkspaceTransitionSourceDescription(v32);
  [v37 cStringUsingEncoding:4];

  v38 = [v9 info];
  v39 = [v38 bundleVersion];
  [v39 cStringUsingEncoding:4];

  v40 = [v9 info];
  v41 = [v40 shortVersionString];
  [v41 cStringUsingEncoding:4];

  v104 = v9;
  v102 = v36;
  if (self->_userLaunchSignpostID)
  {
    alm_app_will_activate_with_signpost_id();
  }

  else
  {
    v42 = [(SBApplicationSceneHandle *)self sceneIfExists];
    v43 = [v103 scheme];
    v94 = [v43 isEqualToString:@"test"];

    if (v42)
    {
      v44 = [v42 isActive] ^ 1;
    }

    else
    {
      v44 = 1;
    }

    v45 = [v42 settings];
    v46 = [v45 isForeground];

    v47 = [v8 BOOLForActivationSetting:52];
    if (((v94 | v44) & 1) != 0 || ((v46 | v102) & 1) == 0 || v47)
    {
      alm_app_will_activate_with_details();
    }

    v9 = v104;
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
    [v13 setObject:v52 forKey:*MEMORY[0x277D76678]];
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
    [v13 addEntriesFromDictionary:v57];
  }

  v97 = v57;
  if ([v13 count])
  {
    [v12 setPayload:v13];
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
    v60 = v9;
    v61 = [v8 application];
    v62 = [v61 bundleIdentifier];

    v63 = +[SBCaptureApplicationCenter sharedInstance];
    v64 = [v63 captureApplicationForBundleIdentifier:v62];

    v65 = [v8 activationSettings];
    v66 = [v65 BOOLForActivationSetting:36];

    if (v66 && v64)
    {
      v67 = +[SBCaptureApplicationCenter sharedInstance];
      v68 = [v67 launchActionsForCaptureApplication:v62 launchTarget:0 launchType:0];
      [v8 addActions:v68];
    }

    else
    {
      v67 = SBLogCommon();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v113 = v62;
        v114 = 1024;
        v115 = v66;
        v116 = 1024;
        v117 = v64 != 0;
        _os_log_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEFAULT, "No capture application found for the %@, launchCameraCapture: %{BOOL}u, isCaptureApplication: %{BOOL}u", buf, 0x18u);
      }
    }

    v9 = v60;
  }

  v69 = [v8 actions];
  if ([v69 count])
  {
    [v12 setActions:v69];
  }

  [v8 removeAllActions];
  v70 = [v6 animationSettings];
  if (v70)
  {
    [v12 setAnimationSettings:v70];
  }

  v95 = v70;
  v96 = v69;
  if ((v102 & 1) == 0)
  {
    v71 = v9;
    v72 = [v6 animationFence];
    if (([v6 fencesAnimations] & 1) != 0 || v72)
    {
      v73 = [v12 animationFence];
      if (v73)
      {
      }

      else
      {
        v74 = [(SBApplicationSceneHandle *)self sceneIfExists];
        v75 = [v74 clientProcess];
        v76 = [v75 isForeground];

        if (v76)
        {
          if (v72)
          {
            [v12 setAnimationFence:v72];
          }

          else
          {
            v77 = [*MEMORY[0x277D76620] _systemAnimationFenceCreatingIfNecessary:1];
            [v12 setAnimationFence:v77];
          }
        }
      }
    }

    v9 = v71;
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

  v80 = [v9 info];
  v81 = [v80 isAppleApplication];

  if (v81)
  {
    v82 = [v105 originatingProcess];
    [v12 setOriginatingProcess:v82];
  }

  [v6 watchdogScaleFactor];
  [v12 setWatchdogScaleFactor:?];
  if ([v6 alwaysRunsWatchdog])
  {
    v83 = [v12 watchdogTransitionContext];
    [v83 setWatchdogBehavior:1];
  }

  v84 = [v8 objectForActivationSetting:30];
  v85 = [v84 integerValue];

  if (v85 == 1)
  {
    [v12 setAllowCPUThrottling:1];
  }

  [(SBApplicationSceneHandle *)self _modifyApplicationTransitionContext:v12 fromRequestContext:v6 entity:v8];
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
          [v91 applicationSceneHandle:self appendToTransitionContext:v12 fromRequestContext:v6 entity:v8];
        }
      }

      v88 = [v86 countByEnumeratingWithState:&v107 objects:v111 count:16];
    }

    while (v88);
  }

  v92 = v12;
  return v12;
}

- (void)setSceneUpdateInProgress:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_sceneUpdateInProgress != a3)
  {
    self->_sceneUpdateInProgress = a3;
    v7 = @"SceneIdentifierKey";
    v4 = [(SBApplicationSceneHandle *)self sceneIdentifier];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SBApplicationSceneHandleProgressNotification" object:self userInfo:v5];
  }
}

- (void)_applicationsDidChange:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [v14 userInfo];
  v6 = [v5 objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];

  if ([v6 count])
  {
    [v4 unionSet:v6];
  }

  v7 = [v14 userInfo];
  v8 = [v7 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];

  if ([v8 count])
  {
    [v4 unionSet:v8];
  }

  if ([v4 count])
  {
    v9 = [(SBApplicationSceneHandle *)self application];
    v10 = [v9 bundleIdentifier];

    if ([v4 containsObject:v10])
    {
      v11 = +[SBApplicationController sharedInstance];
      v12 = [v11 applicationWithBundleIdentifier:v10];

      if (!v12)
      {
        [SBApplicationSceneHandle _applicationsDidChange:];
      }

      application = self->_application;
      self->_application = v12;
    }
  }
}

- (id)_createApplicationSceneSettingsFromContext:(id)a3 entity:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
  v70 = [v7 request];
  v10 = [v70 displayConfiguration];
  v11 = [(SBApplicationSceneHandle *)self sceneIfExists];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 settings];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v13 = [(SBApplicationSceneHandle *)self _definition];
    [v13 specification];
    v16 = v15 = v10;
    v17 = [objc_msgSend(v16 "settingsClass")];
    v14 = [v17 mutableCopy];

    v10 = v15;
  }

  v71 = v10;
  [v14 setDisplayConfiguration:v10];
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
  v19 = [v7 isBackground];
  v20 = v19;
  v69 = v12;
  if (!v12 || (v19 & 1) == 0)
  {
    v21 = [(SBApplicationSceneHandle *)self application];
    v22 = v20 ^ 1u;
    [v14 setForeground:v22];
    [v14 setLevel:1.0];
    if ((v22 & 1) != 0 || ([v21 info], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "hasHiddenTag"), v23, !v24))
    {
      [v7 frameForApplicationSceneEntity:v9];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = v31;
      if (v36 == *MEMORY[0x277CBF3A8] && v31 == *(MEMORY[0x277CBF3A8] + 8))
      {
        v39 = SBLogAppSwitcher();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v66 = SBMainWorkspaceTransitionSourceDescription([v70 source]);
          v67 = [v71 identity];
          v68 = [v7 layoutState];
          *buf = 138544386;
          v78 = v69;
          v79 = 2114;
          v80 = v66;
          v81 = 2114;
          v82 = v67;
          v83 = 2114;
          v84 = v9;
          v85 = 2114;
          v86 = v68;
          _os_log_error_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_ERROR, "-_cASSFC:E: produced {0,0} with scene %{public}@, source %{public}@, display configuration %{public}@, entity %{public}@, request context %{public}@", buf, 0x34u);
        }

        v40 = [MEMORY[0x277CCA890] currentHandler];
        v89.origin.x = v33;
        v89.origin.y = v35;
        v89.size.width = v37;
        v89.size.height = v38;
        v41 = NSStringFromCGRect(v89);
        [v40 handleFailureInMethod:a2 object:self file:@"SBApplicationSceneHandle.m" lineNumber:602 description:{@"frame (%@) isn't valid", v41}];
      }

      v25 = v21;
      v30 = v14;
      v26 = v33;
      v27 = v35;
      v28 = v37;
      v29 = v38;
    }

    else
    {
      v25 = v21;
      [v71 bounds];
      v30 = v14;
    }

    [v30 setFrame:{v26, v27, v28, v29}];
    v42 = [v7 layoutState];
    v43 = [(SBApplicationSceneHandle *)self sceneIdentifier];
    v44 = [v42 elementWithIdentifier:v43];

    v45 = [v14 interfaceOrientation];
    if (v45 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v7 interfaceOrientation];
    v48 = v47;
    if (v44)
    {
      v49 = [v7 layoutState];
      v50 = [v49 interfaceOrientationForLayoutElement:v44 unknownAllowed:1];

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
      if (v47)
      {
        v50 = v47;
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
    [v14 setInLiveResize:{objc_msgSend(v7, "isInLiveResize")}];
    v54 = [v9 objectForActivationSetting:61];
    if (v54)
    {
      v55 = [v14 ignoreOcclusionReasons];
      [v55 addObject:v54];
    }

    [(SBApplicationSceneHandle *)self _modifyApplicationSceneSettings:v14 fromRequestContext:v7 entity:v9];
  }

  v56 = [(NSHashTable *)self->_sceneUpdateContributers allObjects];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v57 = [v56 countByEnumeratingWithState:&v72 objects:v76 count:16];
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
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v72 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v61 applicationSceneHandle:self appendToSceneSettings:v14 fromRequestContext:v7 entity:v9];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v72 objects:v76 count:16];
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

- (id)_createApplicationSceneClientSettingsFromContext:(id)a3 entity:(id)a4 initialSceneSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
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
  v12 = [(SBApplicationSceneHandle *)self _definition];
  v13 = [v12 specification];
  v14 = [objc_msgSend(v13 "clientSettingsClass")];
  v15 = [v14 mutableCopy];

  [(SBApplicationSceneHandle *)self _modifyApplicationSceneClientSettings:v15 fromRequestContext:v8 entity:v9 initialSceneSettings:v11];

  return v15;
}

- (id)newSceneViewWithReferenceSize:(CGSize)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 hostRequester:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  v12 = [[SBApplicationSceneView alloc] initWithSceneHandle:self referenceSize:a4 contentOrientation:a5 containerOrientation:v11 hostRequester:width, height];

  return v12;
}

- (id)newSceneViewController
{
  v3 = [SBApplicationSceneViewController alloc];

  return [(SBApplicationSceneViewController *)v3 initWithSceneHandle:self];
}

- (void)addSceneUpdateContributer:(id)a3
{
  v4 = a3;
  sceneUpdateContributers = self->_sceneUpdateContributers;
  v8 = v4;
  if (!sceneUpdateContributers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_sceneUpdateContributers;
    self->_sceneUpdateContributers = v6;

    v4 = v8;
    sceneUpdateContributers = self->_sceneUpdateContributers;
  }

  [(NSHashTable *)sceneUpdateContributers addObject:v4];
}

- (void)removeSceneUpdateContributer:(id)a3
{
  [(NSHashTable *)self->_sceneUpdateContributers removeObject:a3];
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