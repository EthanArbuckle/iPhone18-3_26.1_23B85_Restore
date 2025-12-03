@interface SBCaptureApplicationCenter
+ (id)captureApplicationSettings;
+ (id)sharedInstance;
- (BOOL)_bundleHasCameraEntitlement:(id)entitlement;
- (BOOL)_isTCCGrantedForKey:(__CFString *)key applicationBundleIdentifier:(id)identifier;
- (BOOL)_shouldPromptLaunchTerminationAlertForTerminationInfo:(id)info;
- (BOOL)isApplicationLaunchNeededForApplicationBundleIdentifier:(id)identifier;
- (BOOL)launchCaptureApplication:(id)application launchType:(unint64_t)type source:(int64_t)source;
- (BOOL)launchForExtensionToApplicationTransition:(id)transition launchActions:(id)actions completionHandler:(id)handler;
- (BOOL)shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:(id)identfier;
- (SBCaptureApplicationCenter)init;
- (id)_terminationInfoList;
- (id)captureApplicationForBundleIdentifier:(id)identifier;
- (id)captureApplicationForExtensionIdentifier:(id)identifier;
- (id)knownCaptureApplications;
- (id)launchActionsForCaptureApplication:(id)application launchTarget:(unint64_t)target launchType:(unint64_t)type;
- (id)predictedPrewarmBundleIdentifierForApplicationBundleIdentifier:(id)identifier;
- (void)_storeTerminationInfoWithProcessName:(id)name reason:(id)reason;
- (void)addObserver:(id)observer;
- (void)captureApplicationProvider:(id)provider didUpdateKnownApplications:(id)applications;
- (void)promptLaunchTerminationAlertIfNecessaryForProcess:(id)process afterDelay:(double)delay reason:(id)reason;
- (void)removeObserver:(id)observer;
- (void)suspendCaptureApplication:(id)application;
@end

@implementation SBCaptureApplicationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBCaptureApplicationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_16 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_16, block);
  }

  v2 = sharedInstance___result_0;

  return v2;
}

void __44__SBCaptureApplicationCenter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___result_0;
  sharedInstance___result_0 = v1;
}

+ (id)captureApplicationSettings
{
  if (captureApplicationSettings_onceToken != -1)
  {
    +[SBCaptureApplicationCenter captureApplicationSettings];
  }

  v3 = captureApplicationSettings_settings;

  return v3;
}

void __56__SBCaptureApplicationCenter_captureApplicationSettings__block_invoke()
{
  v0 = +[SBCaptureApplicationDomain rootSettings];
  v1 = captureApplicationSettings_settings;
  captureApplicationSettings_settings = v0;
}

- (SBCaptureApplicationCenter)init
{
  v9.receiver = self;
  v9.super_class = SBCaptureApplicationCenter;
  v2 = [(SBCaptureApplicationCenter *)&v9 init];
  if (v2)
  {
    mEMORY[0x277D243D0] = [MEMORY[0x277D243D0] sharedInstance];
    captureApplicationMonitor = v2->_captureApplicationMonitor;
    v2->_captureApplicationMonitor = mEMORY[0x277D243D0];

    [(LCSCaptureApplicationMonitor *)v2->_captureApplicationMonitor addObserver:v2];
    v5 = dispatch_queue_create("com.apple.SpringBoardFramework.SBCaptureApplicationCenter", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    captureApplicationSettings = [objc_opt_class() captureApplicationSettings];
  }

  return v2;
}

- (id)captureApplicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SBCaptureApplicationCenter_captureApplicationForBundleIdentifier___block_invoke;
  block[3] = &unk_2783AB258;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __68__SBCaptureApplicationCenter_captureApplicationForBundleIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) knownCameraCaptureApplicationsByBundleIdentifier];
  v2 = [v5 objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)captureApplicationForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SBCaptureApplicationCenter_captureApplicationForExtensionIdentifier___block_invoke;
  block[3] = &unk_2783AB258;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__SBCaptureApplicationCenter_captureApplicationForExtensionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) knownCameraCaptureApplicationsByBundleIdentifier];
  v3 = [v2 allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBCaptureApplicationCenter_captureApplicationForExtensionIdentifier___block_invoke_2;
  v7[3] = &unk_2783B44E8;
  v8 = *(a1 + 40);
  v4 = [v3 bs_firstObjectPassingTest:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __71__SBCaptureApplicationCenter_captureApplicationForExtensionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 extension];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)knownCaptureApplications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__46;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SBCaptureApplicationCenter_knownCaptureApplications__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__SBCaptureApplicationCenter_knownCaptureApplications__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 16) knownCameraCaptureApplicationsByBundleIdentifier];
  v2 = [v6 allValues];
  v3 = [v2 bs_set];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)launchActionsForCaptureApplication:(id)application launchTarget:(unint64_t)target launchType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v8 = objc_opt_new();
  if (!type)
  {
    v9 = +[SBCaptureApplicationCenter sharedInstance];
    v10 = [v9 captureApplicationForBundleIdentifier:applicationCopy];

    v11 = SBLogCaptureApplication();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v16 = 138412290;
        v17 = applicationCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Adding launch actions for the capture application (%@)", &v16, 0xCu);
      }

      if (target == 1)
      {
        v13 = v10;
        v14 = 1;
      }

      else
      {
        if (target)
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = v10;
        v14 = 0;
      }

      [v13 launchActionsForTarget:v14 launchType:0];
      v8 = v11 = v8;
    }

    else if (v12)
    {
      v16 = 138412290;
      v17 = applicationCopy;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "No capture application found for %@", &v16, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (BOOL)launchCaptureApplication:(id)application launchType:(unint64_t)type source:(int64_t)source
{
  applicationCopy = application;
  v9 = [(SBCaptureApplicationCenter *)self captureApplicationForBundleIdentifier:applicationCopy];

  if (v9)
  {
    v10 = +[(SBWorkspace *)SBMainWorkspace];
    v11 = +[SBApplicationController sharedInstance];
    v12 = [v11 applicationWithBundleIdentifier:applicationCopy];

    v13 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v12];
    v14 = [v10 createRequestForApplicationActivation:v13 options:0];
    [v14 setEventLabel:@"CaptureApplicationLaunch"];
    processHandle = [MEMORY[0x277CF0CD0] processHandle];
    [v14 setOriginatingProcess:processHandle];

    [v14 setSource:source];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__SBCaptureApplicationCenter_launchCaptureApplication_launchType_source___block_invoke;
    v18[3] = &unk_2783B4538;
    typeCopy = type;
    v18[4] = self;
    v19 = applicationCopy;
    [v14 modifyApplicationContext:v18];
    v16 = [v10 executeTransitionRequest:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __73__SBCaptureApplicationCenter_launchCaptureApplication_launchType_source___block_invoke(void *a1, void *a2)
{
  v3 = [a2 applicationSceneEntities];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBCaptureApplicationCenter_launchCaptureApplication_launchType_source___block_invoke_2;
  v6[3] = &unk_2783B4510;
  v4 = a1[5];
  v5 = a1[4];
  v8 = a1[6];
  v6[4] = v5;
  v7 = v4;
  [v3 bs_each:v6];
}

void __73__SBCaptureApplicationCenter_launchCaptureApplication_launchType_source___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFlag:1 forActivationSetting:35];
  if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
  {
    v3 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
  }

  else
  {
    v3 = 0;
  }

  if ((LCSFeatureEnabled() & 1) != 0 || v3)
  {
    if (!*(a1 + 48))
    {
      [v4 setFlag:1 forActivationSetting:36];
    }

    if (([*(a1 + 32) shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:*(a1 + 40)] & 1) == 0)
    {
      [v4 setFlag:1 forActivationSetting:38];
    }
  }
}

- (id)predictedPrewarmBundleIdentifierForApplicationBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _os_feature_enabled_impl();
  v6 = identifierCopy;
  if ([v6 isEqualToString:@"com.apple.camera"])
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  bundleIdentifier = v6;
  if (!v7)
  {
    v9 = [(SBCaptureApplicationCenter *)self captureApplicationForBundleIdentifier:v6];
    bundleIdentifier = v6;
    if (v9)
    {
      v10 = +[SBLockScreenManager sharedInstanceIfExists];
      wouldAttemptToHandleATransitionRequest = [v10 wouldAttemptToHandleATransitionRequest];

      bundleIdentifier = v6;
      if (wouldAttemptToHandleATransitionRequest)
      {
        extension = [v9 extension];
        bundleIdentifier = [extension bundleIdentifier];
      }
    }
  }

  v13 = SBLogCaptureApplication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Possible prewarm bundle identifier %@", &v15, 0xCu);
  }

  return bundleIdentifier;
}

- (BOOL)launchForExtensionToApplicationTransition:(id)transition launchActions:(id)actions completionHandler:(id)handler
{
  transitionCopy = transition;
  actionsCopy = actions;
  handlerCopy = handler;
  if (transitionCopy)
  {
    v10 = +[SBApplicationController sharedInstance];
    v11 = [v10 applicationWithBundleIdentifier:transitionCopy];

    v12 = +[SBWorkspace mainWorkspace];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke;
    v16[3] = &unk_2783AA1A0;
    v17 = v11;
    v18 = actionsCopy;
    v19 = transitionCopy;
    v20 = handlerCopy;
    v13 = v11;
    v14 = [v12 requestTransitionWithBuilder:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabel:@"CaptureApplicationExtensionToApplicationLaunch"];
  [v3 setSource:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke_2;
  v7[3] = &unk_2783B3D40;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  [v3 modifyApplicationContext:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke_3;
  v5[3] = &unk_2783A9C70;
  v6 = a1[7];
  v4 = [v3 addCompletionHandler:v5];
}

void __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v5 = a2;
  v3 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:a1[4]];
  [(SBApplicationSceneEntity *)v3 addActions:a1[5]];
  [(SBWorkspaceEntity *)v3 setFlag:1 forActivationSetting:60];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"CaptureExtensionToAppTransition for %@", a1[6]];
  [(SBWorkspaceEntity *)v3 setObject:v4 forActivationSetting:61];

  if (LCSFeatureEnabled())
  {
    [(SBWorkspaceEntity *)v3 setFlag:1 forActivationSetting:37];
  }

  [v5 setEntity:v3 forLayoutRole:1];
}

uint64_t __104__SBCaptureApplicationCenter_launchForExtensionToApplicationTransition_launchActions_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)suspendCaptureApplication:(id)application
{
  if (application)
  {
    applicationCopy = application;
    v4 = +[SBApplicationController sharedInstance];
    v8 = [v4 applicationWithBundleIdentifier:applicationCopy];

    v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8];
    sceneHandle = [(SBApplicationSceneEntity *)v5 sceneHandle];
    v7 = sceneHandle;
    if (sceneHandle)
    {
      SBWorkspaceSuspendApplicationScene(sceneHandle);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v9 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      observerCopy = v9;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (BOOL)_bundleHasCameraEntitlement:(id)entitlement
{
  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:entitlement allowPlaceholder:1 error:0];
  entitlements = [v3 entitlements];
  v5 = objc_opt_self();
  v6 = [entitlements objectForKey:@"com.apple.private.tcc.allow" ofClass:v5];

  LOBYTE(v5) = [v6 containsObject:*MEMORY[0x277D6C120]];
  return v5;
}

- (BOOL)isApplicationLaunchNeededForApplicationBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  privacyPreflightController = [SBApp privacyPreflightController];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:identifierCopy];

  info = [v7 info];
  applicationIdentity = [info applicationIdentity];
  v10 = [privacyPreflightController requiresPreflightForApplication:applicationIdentity];

  if (v10)
  {
    v11 = SBLogCaptureApplication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Preflight is required for this capture application, application launch is required for %@", &v17, 0xCu);
    }

    v12 = 1;
  }

  else if ([(SBCaptureApplicationCenter *)self _bundleHasCameraEntitlement:identifierCopy])
  {
    v13 = SBLogCaptureApplication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Application is entitled to have camera access %@", &v17, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v14 = [(SBCaptureApplicationCenter *)self _isTCCGrantedForKey:*MEMORY[0x277D6C120] applicationBundleIdentifier:identifierCopy];
    v15 = SBLogCaptureApplication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = v14;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "TCC state for application %@: %{BOOL}u", &v17, 0x12u);
    }

    v12 = !v14;
  }

  return v12;
}

- (BOOL)shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:(id)identfier
{
  v23 = *MEMORY[0x277D85DE8];
  identfierCopy = identfier;
  privacyPreflightController = [SBApp privacyPreflightController];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:identfierCopy];

  info = [v7 info];
  applicationIdentity = [info applicationIdentity];
  v10 = [privacyPreflightController requiresPreflightForApplication:applicationIdentity];

  if (!v10)
  {
    if ([(SBCaptureApplicationCenter *)self _bundleHasCameraEntitlement:identfierCopy])
    {
      v11 = SBLogCaptureApplication();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = identfierCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Application is entitled to have camera access %@", &v21, 0xCu);
      }
    }

    else
    {
      v11 = [(SBCaptureApplicationCenter *)self captureApplicationForBundleIdentifier:identfierCopy];
      attributes = [v11 attributes];
      cameraTCCStatus = [attributes cameraTCCStatus];

      if (cameraTCCStatus != 4)
      {
        attributes2 = [v11 attributes];
        cameraTCCStatus2 = [attributes2 cameraTCCStatus];

        if (!cameraTCCStatus2)
        {
          v20 = SBLogCaptureApplication();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [SBCaptureApplicationCenter shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:];
          }
        }

        v11 = SBLogCaptureApplication();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v21 = 138412290;
        v22 = identfierCopy;
        v12 = "Camera cannot be used yet for this capture application %@, we will not install launch monitoring";
        goto LABEL_4;
      }

      v16 = SBLogCaptureApplication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = identfierCopy;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Camera TCC is allowed for this capture application %@", &v21, 0xCu);
      }
    }

    v13 = 1;
    goto LABEL_14;
  }

  v11 = SBLogCaptureApplication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = identfierCopy;
    v12 = "Preflight is required for this capture application %@, we will not install launch monitoring";
LABEL_4:
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v12, &v21, 0xCu);
  }

LABEL_5:
  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)_isTCCGrantedForKey:(__CFString *)key applicationBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = TCCAccessCopyInformation();
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      v8 = MEMORY[0x277D6C0C8];
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{*v8, v14}];

          if (v11)
          {
            v12 = CFBundleGetIdentifier(v11);
            if ([v12 isEqualToString:identifierCopy])
            {
              v6 = [v10 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

              if (v6)
              {
                LOBYTE(v6) = CFBooleanGetValue(v6) != 0;
              }

              goto LABEL_17;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)captureApplicationProvider:(id)provider didUpdateKnownApplications:(id)applications
{
  v17 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 captureApplicationCenter:self didUpdateKnownApplications:applicationsCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)promptLaunchTerminationAlertIfNecessaryForProcess:(id)process afterDelay:(double)delay reason:(id)reason
{
  processCopy = process;
  reasonCopy = reason;
  v10 = [[SBCaptureApplicationTerminationInfo alloc] initWithProcessName:processCopy terminationReason:reasonCopy];
  if ([(SBCaptureApplicationCenter *)self _shouldPromptLaunchTerminationAlertForTerminationInfo:v10])
  {
    objc_initWeak(&location, self);
    v11 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__SBCaptureApplicationCenter_promptLaunchTerminationAlertIfNecessaryForProcess_afterDelay_reason___block_invoke;
    block[3] = &unk_2783B4560;
    objc_copyWeak(&v17, &location);
    v14 = processCopy;
    v15 = reasonCopy;
    v16 = v10;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = SBLogCaptureApplication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureApplicationCenter promptLaunchTerminationAlertIfNecessaryForProcess:afterDelay:reason:];
    }
  }
}

void __98__SBCaptureApplicationCenter_promptLaunchTerminationAlertIfNecessaryForProcess_afterDelay_reason___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = SBLogCaptureApplication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Presenting launch termination alert for process: %{public}@, termination reason: %{public}@", &v8, 0x16u);
  }

  v6 = [[SBCaptureApplicationTerminationAlertItem alloc] initWithTerminationInfo:*(a1 + 48)];
  v7 = +[SBAlertItemsController sharedInstance];
  [v7 activateAlertItem:v6];

  [WeakRetained _storeTerminationInfoWithProcessName:*(a1 + 32) reason:*(a1 + 40)];
}

- (id)_terminationInfoList
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"SBCaptureApplicationTerminationInfoList"];

  if (!v6)
  {
LABEL_6:
    v7 = objc_opt_new();
    goto LABEL_10;
  }

  v13 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v4 fromData:v6 error:&v13];
  v8 = v13;
  v9 = SBLogCaptureApplication();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureApplicationCenter _terminationInfoList];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Successfully unarchived terminationInfoList", buf, 2u);
  }

LABEL_10:

  return v7;
}

- (void)_storeTerminationInfoWithProcessName:(id)name reason:(id)reason
{
  reasonCopy = reason;
  nameCopy = name;
  v8 = [[SBCaptureApplicationTerminationInfo alloc] initWithProcessName:nameCopy terminationReason:reasonCopy];

  _terminationInfoList = [(SBCaptureApplicationCenter *)self _terminationInfoList];
  v10 = [_terminationInfoList mutableCopy];

  [v10 addObject:v8];
  v11 = MEMORY[0x277CCAAB0];
  v12 = [v10 copy];
  v19 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v19];
  v14 = v19;

  if (v13)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:v13 forKey:@"SBCaptureApplicationTerminationInfoList"];
  }

  v16 = SBLogCaptureApplication();
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureApplicationCenter _storeTerminationInfoWithProcessName:reason:];
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Successfully archived terminationInfoList", v18, 2u);
  }
}

- (BOOL)_shouldPromptLaunchTerminationAlertForTerminationInfo:(id)info
{
  infoCopy = info;
  v5 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  _terminationInfoList = [(SBCaptureApplicationCenter *)self _terminationInfoList];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SBCaptureApplicationCenter__shouldPromptLaunchTerminationAlertForTerminationInfo___block_invoke;
  v10[3] = &unk_2783B4588;
  v11 = infoCopy;
  v8 = infoCopy;
  LOBYTE(v5) = [_terminationInfoList bs_containsObjectPassingTest:v10];

  return isInternalInstall & (v5 ^ 1);
}

- (void)promptLaunchTerminationAlertIfNecessaryForProcess:afterDelay:reason:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Launch termination alert is ignored for process: %{public}@, termination reason: %{public}@", v2, 0x16u);
}

@end