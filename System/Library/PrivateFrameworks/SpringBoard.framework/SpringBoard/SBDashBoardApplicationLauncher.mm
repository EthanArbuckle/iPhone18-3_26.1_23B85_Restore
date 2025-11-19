@interface SBDashBoardApplicationLauncher
- (BOOL)_backgroundLaunchWithBundleIdentifier:(id)a3 isCaptureApplicationLaunch:(BOOL)a4;
- (BOOL)_canHandleTransitionRequest:(id)a3 outActivatingSceneEntity:(id *)a4;
- (BOOL)_canPresentApplicationSceneEntity:(id)a3 fromSource:(id)a4 toDestination:(id)a5;
- (BOOL)_isCoverSheetHostingEntity:(id)a3;
- (BOOL)_isCoverSheetHostingHostableEntity:(id)a3;
- (BOOL)_presentApplicationSceneEntity:(id)a3 source:(int64_t)a4 fromRequest:(id)a5 withResult:(id)a6;
- (BOOL)handleEvent:(id)a3;
- (BOOL)handleTransitionRequest:(id)a3;
- (BOOL)launchCaptureApplication:(id)a3;
- (NSString)coverSheetIdentifier;
- (SBDashBoardApplicationLauncher)init;
- (SBSecureAppManager)secureAppManager;
- (id)_captureExtensionBundleIdentifierForContainingApplication:(id)a3;
- (id)captureApplicationForSceneEntity:(id)a3;
- (id)currentActivePrewarmReasons;
- (id)prewarmConfigurationForIdentifier:(id)a3;
- (int64_t)participantState;
- (void)_activateAppSceneBelowDashBoard:(id)a3 hostableEntity:(id)a4 secureAppType:(unint64_t)a5 withActions:(id)a6 interactive:(BOOL)a7 completion:(id)a8;
- (void)_activateCameraEntity:(id)a3 animated:(BOOL)a4 asOverlay:(BOOL)a5 viaSwitcherModal:(BOOL)a6 request:(id)a7 actions:(id)a8 completion:(id)a9;
- (void)_attemptToUnlockToApplication:(id)a3 actions:(id)a4 completion:(id)a5;
- (void)_attemptToUnlockToCameraCompletion:(id)a3;
- (void)_coolCameraIfNecessaryForBundleIdentifier:(id)a3 prewarmReason:(id)a4;
- (void)_prewarmCameraForBundleIdentifier:(id)a3 prewarmReason:(id)a4;
- (void)_prewarmWithConfiguration:(id)a3 prewarmReason:(id)a4;
- (void)_reallyActivateAppSceneWithEntity:(id)a3 interactive:(BOOL)a4 withCompletion:(id)a5;
- (void)_stopTrackingPrewarmReason:(id)a3;
- (void)dealloc;
- (void)launchQuickNote;
- (void)notePrewarmRequestEndedForIdentifier:(id)a3 prewarmReason:(id)a4;
- (void)prewarmCameraForIdentifier:(id)a3 prewarmReason:(id)a4;
- (void)setCoverSheetViewController:(id)a3;
@end

@implementation SBDashBoardApplicationLauncher

- (int64_t)participantState
{
  if (self->_secureAppAction)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBDashBoardApplicationLauncher)init
{
  v9.receiver = self;
  v9.super_class = SBDashBoardApplicationLauncher;
  v2 = [(SBDashBoardApplicationLauncher *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF0C28]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithName:v5 onQueue:MEMORY[0x277D85CD0]];
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v6;
  }

  return v2;
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  v3.receiver = self;
  v3.super_class = SBDashBoardApplicationLauncher;
  [(SBDashBoardApplicationLauncher *)&v3 dealloc];
}

- (void)setCoverSheetViewController:(id)a3
{
  v5 = a3;
  if (self->_coverSheetViewController != v5)
  {
    v6 = v5;
    [(CSCoverSheetViewController *)v5 registerExternalEventHandler:self];
    [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
    objc_storeStrong(&self->_coverSheetViewController, a3);
    v5 = v6;
  }
}

- (BOOL)handleTransitionRequest:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = [(SBDashBoardApplicationLauncher *)self _canHandleTransitionRequest:v4 outActivatingSceneEntity:&v21];
  v6 = v21;
  v7 = v6;
  if (v5)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__SBDashBoardApplicationLauncher_handleTransitionRequest___block_invoke;
    v19[3] = &unk_2783A98C8;
    v8 = v6;
    v20 = v8;
    [v4 modifyApplicationContext:v19];
    [v4 finalize];
    v9 = v8;
    v10 = [v9 application];
    if ([SBSecureAppPolicy shouldAlwaysShowSecureSceneForApp:v10])
    {
      v11 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainSecureDisplay:v10];
      v12 = [v9 copyActivationSettings];
      [(SBWorkspaceEntity *)v11 applyActivationSettings:v12];
    }

    else
    {
      v11 = v9;
    }

    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(SBDashBoardApplicationLauncher *)v11 handleTransitionRequest:v4, v14];
    }

    v15 = [v4 source];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__SBDashBoardApplicationLauncher_handleTransitionRequest___block_invoke_7;
    v17[3] = &unk_2783B1688;
    v18 = v4;
    v13 = [(SBDashBoardApplicationLauncher *)self _presentApplicationSceneEntity:v11 source:v15 fromRequest:v18 withResult:v17];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __58__SBDashBoardApplicationLauncher_handleTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFlag:1 forActivationSetting:40];
  [v4 setEntity:*(a1 + 32) forLayoutRole:1];
  v5 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v4 setEntity:v5 forLayoutRole:2];
}

void __58__SBDashBoardApplicationLauncher_handleTransitionRequest___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) applicationContext];
  if ([v5 needsToSendActivationResult])
  {
    v6 = FBSOpenApplicationErrorCreate();
    [v5 sendActivationResultError:{v6, v9}];
  }

  v7 = [*(a1 + 32) completionBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, a2 == 0);
  }
}

- (void)launchQuickNote
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"mobilenotes-quicknote://quicknote?launchedByPencil=1"];
  v4 = SBWorkspaceApplicationForURLWithError(v3, 0, 0);
  v5 = [v4 info];
  v6 = [v5 applicationIdentity];

  v7 = [(CSCoverSheetViewController *)self->_coverSheetViewController activeBehavior];
  LODWORD(v5) = [v7 areRestrictedCapabilities:0x2000];

  if (v5)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "QuickNote launch restricted";
      v10 = &v14;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    v11 = [SBApp privacyPreflightController];
    v12 = [v11 requiresPreflightForApplication:v6];

    if (!v12)
    {
      [(SBDashBoardApplicationLauncher *)self _activateAppWithURL:v3];
      goto LABEL_10;
    }

    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "QuickNote launch restricted due to privacy";
      v10 = &v13;
      goto LABEL_7;
    }
  }

LABEL_10:
}

- (BOOL)launchCaptureApplication:(id)a3
{
  v3 = a3;
  v4 = +[SBCaptureApplicationCenter sharedInstance];
  v5 = [v4 launchCaptureApplication:v3 launchType:0 source:32];

  return v5;
}

- (void)prewarmCameraForIdentifier:(id)a3 prewarmReason:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBDashBoardApplicationLauncher *)self prewarmConfigurationForIdentifier:v6];
  [(SBDashBoardApplicationLauncher *)self _prewarmWithConfiguration:v8 prewarmReason:v7];
  if (!self->_currentPrewarmIdentifiersToReasons)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currentPrewarmIdentifiersToReasons = self->_currentPrewarmIdentifiersToReasons;
    self->_currentPrewarmIdentifiersToReasons = v9;
  }

  v11 = [v6 applicationBundleIdentifier];
  v12 = [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Identifier: %@ had existing reason: %@", buf, 0x16u);
    }
  }

  [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons setObject:v7 forKeyedSubscript:v11];
  v14 = [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers objectForKeyedSubscript:v11];
  [v14 invalidate];

  v15 = MEMORY[0x277CBEBB8];
  v18 = @"PrewarmIdentifier";
  v19 = v11;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = [v15 scheduledTimerWithTimeInterval:self target:sel__stopTrackingPrewarmReason_ selector:v16 userInfo:0 repeats:3.0];

  [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers setObject:v17 forKeyedSubscript:v11];
}

- (void)_stopTrackingPrewarmReason:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:@"PrewarmIdentifier"];

  v5 = [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers objectForKeyedSubscript:v6];
  [v5 invalidate];

  [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers setObject:0 forKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons setObject:0 forKeyedSubscript:v6];
}

- (id)prewarmConfigurationForIdentifier:(id)a3
{
  captureLaunchPolicy = self->_captureLaunchPolicy;
  v4 = a3;
  v5 = +[SBCaptureApplicationCenter sharedInstance];
  v6 = [(SBDashBoardCaptureLaunchPolicy *)captureLaunchPolicy prewarmingConfigurationForIdentifier:v4 captureApplicationProvider:v5];

  return v6;
}

- (void)notePrewarmRequestEndedForIdentifier:(id)a3 prewarmReason:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBDashBoardApplicationLauncher *)self prewarmConfigurationForIdentifier:v6];
  v9 = [v8 prewarmingBundleIdentifier];
  if (v9)
  {
    v10 = [v6 applicationBundleIdentifier];
    [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons setObject:0 forKeyedSubscript:v10];
    v11 = [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers objectForKeyedSubscript:v10];
    [v11 invalidate];

    [(NSMutableDictionary *)self->_prewarmIdentifiersToCancelTimers setObject:0 forKeyedSubscript:v10];
    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Cooling camera for bundle identifier: %@", &v13, 0xCu);
    }

    [(SBDashBoardApplicationLauncher *)self _coolCameraIfNecessaryForBundleIdentifier:v9 prewarmReason:v7];
  }

  *&self->_cameraIsPrewarming = 0;
}

- (id)currentActivePrewarmReasons
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_currentPrewarmIdentifiersToReasons objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v10;
}

- (void)_prewarmWithConfiguration:(id)a3 prewarmReason:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 prewarmCameraHardware];
  v9 = [v6 prewarmForCaptureLaunch];
  v10 = [v6 backgroundLaunch];
  v11 = [v6 applicationBundleIdentifier];
  v12 = SBLogDashBoard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109890;
    *v18 = v8;
    *&v18[4] = 1024;
    *&v18[6] = v10;
    v19 = 1024;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Prewarming camera hardware: %{BOOL}u, prewarming background launch target: %{BOOL}u, prewarming for capture launch: %{BOOL}u, application bundle identifier: %@", &v17, 0x1Eu);
  }

  v13 = [v6 prewarmingBundleIdentifier];
  if (v13)
  {
    if (v8)
    {
      v14 = SBLogDashBoard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        *v18 = v13;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Prewarming camera for bundle identifier: %@", &v17, 0xCu);
      }

      [(SBDashBoardApplicationLauncher *)self _prewarmCameraForBundleIdentifier:v13 prewarmReason:v7];
    }

    if (v10)
    {
      v15 = SBLogDashBoard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        *v18 = v13;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Background camera launch initiated for bundle identifier: %@", &v17, 0xCu);
      }

      [(SBDashBoardApplicationLauncher *)self _backgroundLaunchWithBundleIdentifier:v13 isCaptureApplicationLaunch:v9];
      *&self->_cameraIsPrewarming = 1;
    }
  }

  else
  {
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBDashBoardApplicationLauncher _prewarmWithConfiguration:v11 prewarmReason:v16];
    }
  }
}

- (id)_captureExtensionBundleIdentifierForContainingApplication:(id)a3
{
  v3 = a3;
  v4 = +[SBCaptureApplicationCenter sharedInstance];
  v5 = [v4 captureApplicationForBundleIdentifier:v3];

  if (v5)
  {
    v6 = [v5 extension];
    v7 = [v6 bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 25)
  {
    [(SBInProcessSecureAppAction *)self->_secureAppAction invalidate];
    secureAppAction = self->_secureAppAction;
    self->_secureAppAction = 0;

    v6 = [v4 isConsumable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)captureApplicationForSceneEntity:(id)a3
{
  v3 = a3;
  if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
  {
    v4 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
  }

  else
  {
    v4 = 0;
  }

  if ((LCSFeatureEnabled() & 1) != 0 || (v5 = 0, v4))
  {
    v6 = [v3 application];
    v7 = +[SBCaptureApplicationCenter sharedInstance];
    v8 = [v6 bundleIdentifier];
    v5 = [v7 captureApplicationForBundleIdentifier:v8];
  }

  return v5;
}

- (BOOL)_canHandleTransitionRequest:(id)a3 outActivatingSceneEntity:(id *)a4
{
  v5 = a3;
  v6 = [v5 displayIdentity];
  v7 = [v6 isMainDisplay];

  if (v7 && ((v8 = [v5 source], v8 <= 0x3D) && ((1 << v8) & 0x20008001004C2134) != 0 || v8 == 70 || v8 == 67))
  {
    v9 = [v5 applicationContext];
    if (([v9 isBackground] & 1) != 0 || (objc_msgSend(v9, "entities"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11 > 1))
    {
      v12 = 0;
    }

    else
    {
      v13 = [v9 resolvedActivatingWorkspaceEntity];
      v14 = [v13 applicationSceneEntity];

      if ([v14 BOOLForActivationSetting:37])
      {
        v12 = 0;
      }

      else
      {
        v15 = [v14 application];
        CanActivateWhilePasscodeLocked = SBWorkspaceApplicationCanActivateWhilePasscodeLocked(v15);

        v17 = [v14 BOOLForActivationSetting:36];
        v12 = 0;
        if (v14 && ((CanActivateWhilePasscodeLocked | v17) & 1) != 0)
        {
          if (a4)
          {
            v18 = v14;
            *a4 = v14;
          }

          v12 = 1;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_canPresentApplicationSceneEntity:(id)a3 fromSource:(id)a4 toDestination:(id)a5
{
  if (!a5)
  {
    return 1;
  }

  v5 = [a5 placement];
  if ([v5 isEqual:SBDashBoardCapturePlacementCameraPage] & 1) != 0 || (objc_msgSend(v5, "isEqual:", SBDashBoardCapturePlacementCameraOverlay) & 1) != 0 || (objc_msgSend(v5, "isEqual:", SBDashBoardCapturePlacementCaptureButtonCameraPage))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqual:SBDashBoardCapturePlacementSecureApp];
  }

  return v6;
}

- (BOOL)_isCoverSheetHostingEntity:(id)a3
{
  v4 = a3;
  if ([(CSCoverSheetViewController *)self->_coverSheetViewController isHostingAnApp])
  {
    v5 = [(CSCoverSheetViewController *)self->_coverSheetViewController hostedAppSceneHandles];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SBDashBoardApplicationLauncher__isCoverSheetHostingEntity___block_invoke;
    v8[3] = &unk_2783A9FA0;
    v9 = v4;
    v6 = [v5 bs_containsObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__SBDashBoardApplicationLauncher__isCoverSheetHostingEntity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sceneHandle];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)_isCoverSheetHostingHostableEntity:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self->_coverSheetViewController visibleHostedEntity];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 displayItemRepresentation];
    v8 = [v4 displayItemRepresentation];
    v9 = [(SBDisplayItem *)v7 isEqualToItem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_presentApplicationSceneEntity:(id)a3 source:(int64_t)a4 fromRequest:(id)a5 withResult:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 actions];
  v14 = [v13 copy];

  [v10 removeActions:v14];
  v32 = SBDashBoardCaptureLaunchSourceFromWorkspaceTransitionSource(a4);
  v15 = [(SBDashBoardCaptureLaunchPolicy *)self->_captureLaunchPolicy resolveCameraDestinationLaunchOf:v10 fromSource:v32];
  v31 = [(SBDashBoardApplicationLauncher *)self _canPresentApplicationSceneEntity:v10 fromSource:v32 toDestination:v15];
  eventQueue = self->_eventQueue;
  v16 = MEMORY[0x277CF0C30];
  v17 = MEMORY[0x277CCACA8];
  v18 = [v10 sceneHandle];
  v19 = [v18 sceneIdentifier];
  v20 = [v17 stringWithFormat:@"CaptureLaunch-%@", v19];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke;
  v33[3] = &unk_2783B16F8;
  v33[4] = self;
  v34 = v15;
  v35 = v10;
  v36 = v11;
  v37 = v14;
  v38 = v12;
  v30 = v14;
  v21 = v11;
  v22 = v10;
  v23 = v15;
  v24 = v12;
  v25 = [v16 eventWithName:v20 handler:v33];
  [(BSEventQueue *)eventQueue executeOrInsertEvent:v25 atPosition:1];

  v26 = [v21 applicationContext];
  LODWORD(v20) = [v26 retainsSiri];

  if (v20)
  {
    v27 = -9;
  }

  else
  {
    v27 = -1;
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController dismissOverlays:v27 animated:1];

  return v31;
}

void __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 1) acquireLockForReason:@"app launch"];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke_2;
  v33[3] = &unk_2783B16B0;
  v3 = v2;
  v34 = v3;
  v35 = a1[9];
  v4 = MEMORY[0x223D6F7F0](v33);
  v5 = a1[5];
  if (v5)
  {
    v6 = [v5 placement];
    v32 = [a1[5] entity];
    v7 = [a1[6] application];
    v8 = [*(a1[4] + 6) activeBehavior];
    v9 = [v8 areRestrictedCapabilities:4];

    v10 = +[SBCaptureApplicationCenter sharedInstance];
    v11 = [v7 bundleIdentifier];
    v12 = [v10 isApplicationLaunchNeededForApplicationBundleIdentifier:v11];

    if ((v12 & 1) != 0 || v9)
    {
      v17 = [a1[7] applicationContext];
      v18 = [v17 preludeAnimationTokenWrapper];
      v19 = [v18 consumeToken];

      [v19 cancel];
      v20 = +[SBCaptureApplicationCenter sharedInstance];
      v21 = [v7 bundleIdentifier];
      v22 = [v20 captureApplicationForBundleIdentifier:v21];

      v23 = [v22 launchActions];
      if ([a1[8] count])
      {
        if ([a1[8] bs_containsObjectPassingTest:&__block_literal_global_98])
        {
          v24 = [v23 bs_filter:&__block_literal_global_37_1];

          v23 = v24;
        }

        v25 = [v23 setByAddingObjectsFromSet:a1[8]];

        v23 = v25;
      }

      [a1[4] _attemptToUnlockToApplication:v7 actions:v23 completion:v4];

      v13 = v32;
      goto LABEL_16;
    }

    v13 = v32;
    if (([a1[4] _isCoverSheetHostingEntity:a1[6]] & 1) != 0 || objc_msgSend(a1[4], "_isCoverSheetHostingHostableEntity:", v32))
    {
      v14 = SBLogDashBoard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v32;
        v38 = 2114;
        v39 = v6;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Not launching hostable entity %@ in placement %{public}@ because it's already hosted", buf, 0x16u);
      }

      v4[2](v4, 0, 0);
    }

    else
    {
      if ([v6 isEqual:SBDashBoardCapturePlacementCameraPage])
      {
        v26 = a1[4];
        v27 = a1[7];
        v28 = a1[8];
        v31 = v4;
        v29 = v32;
        v30 = 0;
      }

      else
      {
        if (![v6 isEqual:SBDashBoardCapturePlacementCameraOverlay])
        {
          if ([v6 isEqual:SBDashBoardCapturePlacementCaptureButtonCameraPage])
          {
            [a1[4] _activateCameraEntity:v32 animated:1 asOverlay:0 viaSwitcherModal:1 request:a1[7] actions:a1[8] completion:v4];
          }

          else if ([v6 isEqual:SBDashBoardCapturePlacementSecureApp])
          {
            [a1[4] _activateAppSceneBelowDashBoard:a1[6] hostableEntity:v32 secureAppType:4 withActions:a1[8] interactive:0 completion:v4];
          }

          goto LABEL_16;
        }

        v26 = a1[4];
        v27 = a1[7];
        v28 = a1[8];
        v31 = v4;
        v29 = v32;
        v30 = 1;
      }

      [v26 _activateCameraEntity:v29 animated:1 asOverlay:v30 viaSwitcherModal:0 request:v27 actions:v28 completion:v31];
    }

LABEL_16:

    goto LABEL_18;
  }

  v15 = secureAppTypeForSBApplicationSceneEntity(a1[6]);
  v16 = a1[6];
  if (v15 == 4)
  {
    [v16 translateActivationSettingsToActions];
    [a1[4] _activateCameraEntity:0 animated:1 actions:a1[8] completion:v4];
  }

  else
  {
    [v16 addActions:a1[8]];
    [a1[4] _reallyActivateAppSceneWithEntity:a1[6] interactive:0 withCompletion:v4];
  }

LABEL_18:
}

void __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) relinquish];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

uint64_t __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __95__SBDashBoardApplicationLauncher__presentApplicationSceneEntity_source_fromRequest_withResult___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_reallyActivateAppSceneWithEntity:(id)a3 interactive:(BOOL)a4 withCompletion:(id)a5
{
  v11 = a3;
  v7 = a5;
  v8 = secureAppTypeForSBApplicationSceneEntity(v11);
  if (v8 == 4 && (-[CSCoverSheetViewController activeBehavior](self->_coverSheetViewController, "activeBehavior"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 areRestrictedCapabilities:4], v9, v10))
  {
    [(SBDashBoardApplicationLauncher *)self _attemptToUnlockToCameraCompletion:v7];
  }

  else
  {
    [(SBDashBoardApplicationLauncher *)self _activateAppSceneBelowDashBoard:v11 hostableEntity:0 secureAppType:v8 withActions:0 interactive:0 completion:v7];
  }
}

- (void)_activateAppSceneBelowDashBoard:(id)a3 hostableEntity:(id)a4 secureAppType:(unint64_t)a5 withActions:(id)a6 interactive:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = +[SBCoverSheetPresentationManager sharedInstance];
  if (v14)
  {
    v18 = +[SBSecureAppManager sharedInstance];
    v19 = [v18 hasSecureAppOfType:a5];

    if ((v19 & 1) == 0)
    {
      secureAppAction = self->_secureAppAction;
      if (secureAppAction)
      {
        [(SBInProcessSecureAppAction *)secureAppAction invalidate];
        v21 = self->_secureAppAction;
        self->_secureAppAction = 0;
      }

      WeakRetained = objc_loadWeakRetained(&self->_secureAppManager);
      v23 = [WeakRetained secureAppAction];

      if (v23)
      {
        [v23 invalidate];
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __130__SBDashBoardApplicationLauncher__activateAppSceneBelowDashBoard_hostableEntity_secureAppType_withActions_interactive_completion___block_invoke;
      v36[3] = &unk_2783B1720;
      v36[4] = self;
      v36[5] = a2;
      v24 = MEMORY[0x223D6F7F0](v36);
      v25 = [SBInProcessSecureAppAction alloc];
      if (v15)
      {
        v26 = [(SBInProcessSecureAppAction *)v25 initWithType:a5 hostableEntity:v15 handler:v24, v24, v23];
      }

      else
      {
        v26 = [(SBInProcessSecureAppAction *)v25 initWithType:a5 applicationSceneEntity:v14 handler:v24, v24, v23];
      }

      v27 = self->_secureAppAction;
      self->_secureAppAction = v26;

      v28 = [v17 secureAppViewController];

      v29 = +[SBActionHandler sharedInstance];
      v30 = [MEMORY[0x277CBEB98] setWithObject:self->_secureAppAction];
      v31 = [MEMORY[0x277CF0B98] tokenForCurrentProcess];
      [v29 handleActions:v30 origin:v31 withResult:0];

      if (!a7 && v28)
      {
        [v17 updateBecauseSecureAppChanged];
      }
    }
  }

  if (!a7)
  {
    [v17 setCoverSheetPresented:0 animated:1 withCompletion:0];
  }

  coverSheetViewController = self->_coverSheetViewController;
  v33 = [MEMORY[0x277D02B80] actionWithType:4];
  [(CSCoverSheetViewController *)coverSheetViewController handleAction:v33 fromSender:self];

  if (v16)
  {
    (*(v16 + 2))(v16, 0, 0);
  }
}

void __130__SBDashBoardApplicationLauncher__activateAppSceneBelowDashBoard_hostableEntity_secureAppType_withActions_interactive_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 error];
  v3 = [v9 domain];
  if ([v3 isEqualToString:*MEMORY[0x277D67178]])
  {
    v4 = [v9 code];

    if (v4 != 1)
    {
      goto LABEL_5;
    }

    v3 = [MEMORY[0x277CCA890] currentHandler];
    v7 = a1 + 32;
    v5 = *(a1 + 32);
    v6 = *(v7 + 8);
    v8 = [v9 localizedDescription];
    [v3 handleFailureInMethod:v6 object:v5 file:@"SBDashBoardApplicationLauncher.m" lineNumber:574 description:{@"SBDashBoardViewController failed to acquire an assertion: %@", v8}];
  }

LABEL_5:
}

- (void)_activateCameraEntity:(id)a3 animated:(BOOL)a4 asOverlay:(BOOL)a5 viaSwitcherModal:(BOOL)a6 request:(id)a7 actions:(id)a8 completion:(id)a9
{
  v12 = a5;
  v13 = a4;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = +[SBCoverSheetPresentationManager sharedInstance];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke;
  v55[3] = &unk_2783AA930;
  v55[4] = self;
  v20 = MEMORY[0x223D6F7F0](v55);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_2;
  v46[3] = &unk_2783B1810;
  v21 = v18;
  v51 = v21;
  v46[4] = self;
  v22 = v15;
  v47 = v22;
  v53 = a6;
  v23 = v16;
  v48 = v23;
  v24 = v19;
  v49 = v24;
  v54 = v12;
  v25 = v20;
  v52 = v25;
  v26 = v17;
  v50 = v26;
  v27 = MEMORY[0x223D6F7F0](v46);
  if ([v24 isCoverSheetHostingAnApp])
  {
    v40 = v13;
    v41 = v22;
    v28 = +[SBApplicationController sharedInstance];
    v29 = [v28 cameraApplication];

    if (([v24 isInSecureApp] & 1) != 0 || (objc_msgSend(v24, "coverSheetHostedAppSceneHandle"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "application"), v39 = v25, v31 = v26, v32 = v21, v33 = v23, v34 = v29, v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqual:", v34), v35, v29 = v34, v23 = v33, v21 = v32, v26 = v31, v25 = v39, v30, v36))
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_5;
      v44[3] = &unk_2783A9348;
      v45 = v27;
      [v24 setCoverSheetPresented:1 animated:v40 withCompletion:v44];
      v37 = v45;
    }

    else
    {
      if (![(CSCoverSheetViewController *)self->_coverSheetViewController isHostingAnApp])
      {
        (*(v21 + 2))(v21, 0, 0);
        goto LABEL_6;
      }

      coverSheetViewController = self->_coverSheetViewController;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_6;
      v42[3] = &unk_2783A9348;
      v43 = v27;
      [(CSCoverSheetViewController *)coverSheetViewController dismissHostedAppsAnimated:1 completion:v42];
      v37 = v43;
    }

LABEL_6:
    v22 = v41;

    goto LABEL_12;
  }

  if (!v12 || (_os_feature_enabled_impl() & 1) == 0)
  {
    if ([v24 isAnyGestureActivelyRecognized])
    {
      [v24 setCoverSheetPresented:1 animated:v13 withCompletion:0];
    }
  }

  v27[2](v27, v13);
LABEL_12:
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_3;
  v51[3] = &unk_2783B1748;
  v4 = *(a1 + 72);
  v51[4] = *(a1 + 32);
  v52 = v4;
  v5 = MEMORY[0x223D6F7F0](v51);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_4;
  v49[3] = &unk_2783A9C70;
  v6 = v5;
  v50 = v6;
  v7 = MEMORY[0x223D6F7F0](v49);
  if (*(a1 + 40))
  {
    if (*(a1 + 88) == 1)
    {
      v8 = SBLogDashBoard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Activating main page to prepare for switcher modal presentation", &buf, 2u);
      }

      [*(*(a1 + 32) + 48) activateMainPageWithCompletion:&__block_literal_global_58];
      v9 = +[SBDashBoardHostableEntityPresentationManager sharedInstance];
      v10 = SBLogDashBoard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Presenting switcher modal", &buf, 2u);
      }

      v11 = [SBDashBoardHostableEntityPresentationRequest alloc];
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 88);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_61;
      v43[3] = &unk_2783B1798;
      v15 = v12;
      v16 = *(a1 + 32);
      v44 = v15;
      v45 = v16;
      v46 = *(a1 + 56);
      v47 = v7;
      v48 = v6;
      v17 = [(SBDashBoardHostableEntityPresentationRequest *)v11 initWithEntity:v15 transitionRequest:v13 animated:0 isEphemeralSwitcher:v14 dismissGestureEnabled:0 presentationCompletion:v43];
      [v9 presentEntityWithRequest:v17];

      v18 = v44;
    }

    else
    {
      if (*(a1 + 89) != 1)
      {
        [*(*(a1 + 32) + 48) activateCameraWithHostableEntity:? animated:? sendingActions:? completion:?];
        goto LABEL_15;
      }

      if (!_os_feature_enabled_impl())
      {
        v28 = objc_alloc_init(SBDashBoardCameraContainerViewController);
        v29 = [(SBDashBoardCameraContainerViewController *)v28 hostedEntityViewController];
        [v29 setActionsToDeliverToHostableEntity:*(a1 + 64)];

        [(SBDashBoardCameraContainerViewController *)v28 setHostedEntity:*(a1 + 40)];
        objc_initWeak(&buf, *(a1 + 32));
        v30 = *(a1 + 80);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_4_72;
        v32[3] = &unk_2783B17E8;
        objc_copyWeak(&v35, &buf);
        v31 = v28;
        v33 = v31;
        v36 = a2;
        v34 = v7;
        (*(v30 + 16))(v30, v32);

        objc_destroyWeak(&v35);
        objc_destroyWeak(&buf);

        goto LABEL_15;
      }

      v19 = +[SBDashBoardHostableEntityPresentationManager sharedInstance];
      v20 = [SBDashBoardHostableEntityPresentationRequest alloc];
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v23 = *(a1 + 88);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_2_69;
      v41[3] = &unk_2783B17C0;
      v42 = v7;
      v24 = [(SBDashBoardHostableEntityPresentationRequest *)v20 initWithEntity:v21 transitionRequest:v22 animated:0 isEphemeralSwitcher:v23 dismissGestureEnabled:1 presentationCompletion:v41];
      v25 = *(a1 + 80);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_3_70;
      v38[3] = &unk_2783A92D8;
      v39 = v19;
      v40 = v24;
      v26 = *(v25 + 16);
      v27 = v24;
      v9 = v19;
      v26(v25, v38);

      v18 = v42;
    }
  }

  else
  {
    [*(*(a1 + 32) + 48) activateCameraViewAnimated:a2 sendingActions:*(a1 + 64) completion:v7];
  }

LABEL_15:
}

uint64_t __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (a2)
    {
      return [*(a1 + 32) _attemptToUnlockToCameraCompletion:*(a1 + 40)];
    }

    v3 = *(*(a1 + 40) + 16);
  }

  return v3();
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_56()
{
  v0 = SBLogDashBoard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "Completed main page activation for switcher modal presentation", v1, 2u);
  }
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_61(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 succinctDescription];
    v8 = *(a1 + 32);
    *buf = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Switcher modal %@ presented. Activating entity %@", buf, 0x16u);
  }

  [v5 setDismissesOnScreenOff:1];
  v9 = *(*(a1 + 40) + 48);
  v10 = [MEMORY[0x277D02B80] actionWithType:4];
  [v9 handleAction:v10 fromSender:*(a1 + 40)];

  v11 = [*(*(a1 + 40) + 48) isInScreenOffMode];
  v12 = [*(a1 + 48) isPresented];
  v13 = [v5 bs_isAppearingOrAppeared];
  v14 = SBLogDashBoard();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 && v12 && !v11 && a2)
  {
    if (v15)
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Completed activation of entity %@. Dismissing any remaining modals.", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(v18 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_62;
    v24[3] = &unk_2783A8EB0;
    v24[4] = v18;
    v25 = v17;
    v26 = v5;
    v27 = *(a1 + 56);
    [v19 _dismissAllModalViewControllersExcept:v26 animated:0 completion:v24];

    v20 = v25;
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "No longer in a good state to complete transition to camera page", buf, 2u);
    }

    v21 = *(*(a1 + 40) + 48);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_65;
    v22[3] = &unk_2783A9348;
    v23 = *(a1 + 64);
    [v21 dismissModalViewController:v5 animated:0 completion:v22];
    v20 = v23;
  }
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_62(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Dismissed remaining modals. Transitioning to camera page.", buf, 2u);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_63;
  v7[3] = &unk_2783AE5A0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  [v4 activateCameraWithHostableEntity:v3 animated:0 sendingActions:0 completion:v7];
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_63(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) succinctDescription];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Completed transition to camera page. Tearing down modal %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_64;
  v8[3] = &unk_2783B1770;
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = a2;
  [v7 dismissModalViewController:v9 animated:0 completion:v8];
}

uint64_t __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_64(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) succinctDescription];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Completed teardown of modal %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_2_69(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 setDismissesOnScreenOff:1];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __119__SBDashBoardApplicationLauncher__activateCameraEntity_animated_asOverlay_viaSwitcherModal_request_actions_completion___block_invoke_4_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[6] activateOverlayWithViewController:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)_attemptToUnlockToCameraCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 cameraApplication];

  [(SBDashBoardApplicationLauncher *)self _attemptToUnlockToApplication:v6 actions:0 completion:v4];
}

- (void)_attemptToUnlockToApplication:(id)a3 actions:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v11 = v10;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBDashBoardApplicationLauncher__attemptToUnlockToApplication_actions_completion___block_invoke;
  v18[3] = &unk_2783AE5A0;
  v19 = v7;
  v20 = v10;
  v21 = v9;
  v12 = v9;
  v13 = v11;
  v14 = v7;
  v15 = MEMORY[0x223D6F7F0](v18);
  v16 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v16 setName:@"Unlock For App Launch From DashBoard"];
  [(SBLockScreenUnlockRequest *)v16 setSource:24];
  [(SBLockScreenUnlockRequest *)v16 setIntent:3];
  [(SBLockScreenUnlockRequest *)v16 setDestinationApplication:v14];
  v17 = +[SBLockScreenManager sharedInstance];
  [v17 unlockWithRequest:v16 completion:v15];
}

void __83__SBDashBoardApplicationLauncher__attemptToUnlockToApplication_actions_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __83__SBDashBoardApplicationLauncher__attemptToUnlockToApplication_actions_completion___block_invoke_2;
    v7[3] = &unk_2783A9FC8;
    v8 = *(a1 + 48);
    SBWorkspaceActivateApplicationWithActionsAndResult(v3, v4, v7);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

void __83__SBDashBoardApplicationLauncher__attemptToUnlockToApplication_actions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v9 = v3;
    if (v3)
    {
      v5 = [v3 domain];
      v6 = [v5 isEqualToString:*MEMORY[0x277D0ABC8]];

      v7 = *(a1 + 32);
      if (v6)
      {
        v8 = [v9 code];
      }

      else
      {
        v8 = 1;
      }

      (*(v7 + 16))(v7, v8, 0);
    }

    else
    {
      (*(v4 + 16))(v4, 0, 0);
    }

    v3 = v9;
  }
}

- (void)_prewarmCameraForBundleIdentifier:(id)a3 prewarmReason:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 numberWithLongLong:mach_absolute_time()];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_continuous_time()];
  v10 = v9;
  v11 = *MEMORY[0x277CE58D8];
  if (v6)
  {
    v11 = v6;
  }

  v12 = *MEMORY[0x277CE5910];
  v16[0] = *MEMORY[0x277CE5908];
  v16[1] = v12;
  v17[0] = v11;
  v17[1] = v8;
  v16[2] = *MEMORY[0x277CE5920];
  v17[2] = v9;
  v13 = MEMORY[0x277CBEAC0];
  v14 = v11;
  v15 = [v13 dictionaryWithObjects:v17 forKeys:v16 count:3];

  AVCapturePrewarmWithOptions();
}

- (void)_coolCameraIfNecessaryForBundleIdentifier:(id)a3 prewarmReason:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_cameraIsPrewarming && !self->_cameraPrewarmSucceeded)
  {
    v8 = [MEMORY[0x277D65DD0] sharedInstance];
    [v8 emitEvent:45];

    v9 = *MEMORY[0x277CE58D8];
    if (v7)
    {
      v9 = v7;
    }

    v13 = *MEMORY[0x277CE5908];
    v14[0] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v9;
    v12 = [v10 dictionaryWithObjects:v14 forKeys:&v13 count:1];

    MEMORY[0x223D6A9B0](v6, v12);
  }
}

- (BOOL)_backgroundLaunchWithBundleIdentifier:(id)a3 isCaptureApplicationLaunch:(BOOL)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:v5];

    v8 = +[SBWorkspace mainWorkspace];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __99__SBDashBoardApplicationLauncher__backgroundLaunchWithBundleIdentifier_isCaptureApplicationLaunch___block_invoke;
    v12[3] = &unk_2783B1860;
    v13 = v7;
    v15 = a4;
    v14 = v5;
    v9 = v7;
    v10 = [v8 requestTransitionWithBuilder:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __99__SBDashBoardApplicationLauncher__backgroundLaunchWithBundleIdentifier_isCaptureApplicationLaunch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __99__SBDashBoardApplicationLauncher__backgroundLaunchWithBundleIdentifier_isCaptureApplicationLaunch___block_invoke_2;
  v4[3] = &unk_2783B1838;
  v5 = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 modifyApplicationContext:v4];
}

void __99__SBDashBoardApplicationLauncher__backgroundLaunchWithBundleIdentifier_isCaptureApplicationLaunch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    [(SBWorkspaceEntity *)v6 setFlag:1 forActivationSetting:36];
    v4 = +[SBCaptureApplicationCenter sharedInstance];
    v5 = [v4 shouldInstallLaunchMonitoringForCaptureApplicationBundleIdentfier:*(a1 + 40)];

    if ((v5 & 1) == 0)
    {
      [(SBWorkspaceEntity *)v6 setFlag:1 forActivationSetting:38];
    }
  }

  [v3 setBackground:1];
  [v3 setEntity:v6 forLayoutRole:1];
}

- (SBSecureAppManager)secureAppManager
{
  WeakRetained = objc_loadWeakRetained(&self->_secureAppManager);

  return WeakRetained;
}

- (void)handleTransitionRequest:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 uniqueIdentifier];
  v6 = SBMainWorkspaceTransitionSourceDescription([a2 source]);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Handling transition request for application scene %@ from %@...", &v7, 0x16u);
}

- (void)_prewarmWithConfiguration:(uint64_t)a1 prewarmReason:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to prewarm: No prewarming bundle identifier found for application: %@", &v2, 0xCu);
}

@end