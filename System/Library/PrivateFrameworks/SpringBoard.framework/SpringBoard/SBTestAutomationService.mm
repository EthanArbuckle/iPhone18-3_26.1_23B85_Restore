@interface SBTestAutomationService
- (BOOL)_authenticateClient:(id)client;
- (SBTestAutomationService)init;
- (id)_iconGridSizeClassFromClientArgument:(int64_t)argument;
- (id)_iconManager;
- (id)_switcherController;
- (id)_windowScene;
- (id)systemServiceServer:(id)server getAnimationFrameRecordingsForClient:(id)client;
- (id)systemServiceServer:(id)server getAvailableRecordableFlipBookElementIdentifiers:(id)identifiers;
- (id)systemServiceServer:(id)server getSystemApertureModelStateDumpForClient:(id)client;
- (id)systemServiceServer:(id)server getSystemApertureStateDumpForClient:(id)client;
- (id)systemServiceServer:(id)server getWidgetControllerStateDump:(id)dump;
- (void)systemServiceServer:(id)server addWidgetsToEachPageForClient:(id)client;
- (void)systemServiceServer:(id)server clearAllUserNotificationsForClient:(id)client;
- (void)systemServiceServer:(id)server client:(id)client addWidgetStackWithIdentifiers:(id)identifiers toPage:(int64_t)page withSizing:(int64_t)sizing;
- (void)systemServiceServer:(id)server client:(id)client addWidgetWithIdentifier:(id)identifier toPage:(int64_t)page withSizing:(int64_t)sizing;
- (void)systemServiceServer:(id)server client:(id)client countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client getChamoisPrefersDockHiddenWithCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client getChamoisPrefersStripHiddenWithCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client getDeviceSupportsSystemAperture:(id)aperture;
- (void)systemServiceServer:(id)server client:(id)client getIsChamoisWindowingUIEnabledWithCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client initiateSecureFlipBookRecordingForElement:(id)element withCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client loadStashedSwitcherModelFromPath:(id)path;
- (void)systemServiceServer:(id)server client:(id)client port:(id)port acquireAssertionForReachabilityEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client port:(id)port acquireHUDHiddenAssertionForIdentifier:(id)identifier;
- (void)systemServiceServer:(id)server client:(id)client resetToHomeScreenAnimated:(BOOL)animated;
- (void)systemServiceServer:(id)server client:(id)client setAccessoryType:(int64_t)type attached:(BOOL)attached;
- (void)systemServiceServer:(id)server client:(id)client setAlertsEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setAmbientMountState:(int64_t)state;
- (void)systemServiceServer:(id)server client:(id)client setAmbientPresentationState:(int64_t)state;
- (void)systemServiceServer:(id)server client:(id)client setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time;
- (void)systemServiceServer:(id)server client:(id)client setChamoisPrefersDockHidden:(BOOL)hidden;
- (void)systemServiceServer:(id)server client:(id)client setChamoisPrefersStripHidden:(BOOL)hidden;
- (void)systemServiceServer:(id)server client:(id)client setChamoisWindowingUIEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setHiddenFeaturesEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setIdleTimerEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setMallocStackLoggingEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setOrientationLockEnabled:(BOOL)enabled;
- (void)systemServiceServer:(id)server client:(id)client setReachabilityActive:(BOOL)active;
- (void)systemServiceServer:(id)server client:(id)client setSpringBoardAnimationFrameRecordingForUpdateTypes:(unint64_t)types;
- (void)systemServiceServer:(id)server client:(id)client setSystemApertureUnderAutomationTesting:(BOOL)testing;
- (void)systemServiceServer:(id)server client:(id)client setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier;
- (void)systemServiceServer:(id)server client:(id)client stashSwitcherModelToPath:(id)path;
- (void)systemServiceServer:(id)server enterLostModeForClient:(id)client;
- (void)systemServiceServer:(id)server exitLostModeForClient:(id)client;
- (void)systemServiceServer:(id)server setUserPresenceDetectedSinceWakeForClient:(id)client;
- (void)systemServiceServer:(id)server suspendAllDisplaysForClient:(id)client;
@end

@implementation SBTestAutomationService

- (SBTestAutomationService)init
{
  v11.receiver = self;
  v11.super_class = SBTestAutomationService;
  v2 = [(SBTestAutomationService *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.testautomation"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    inFlightAnimationTransactions = v2->_inFlightAnimationTransactions;
    v2->_inFlightAnimationTransactions = v5;

    reachabilityEnabledAssertions = v2->_reachabilityEnabledAssertions;
    v2->_reachabilityEnabledAssertions = 0;

    idleTimerAssertion = v2->_idleTimerAssertion;
    v2->_idleTimerAssertion = 0;

    v9 = +[SBSystemServiceServer sharedInstance];
    [v9 setTestAutomationDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)server suspendAllDisplaysForClient:(id)client
{
  clientCopy = client;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to suspend all displays", v8, 2u);
  }

  v7 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v7)
  {
    BSDispatchMain();
  }
}

- (void)systemServiceServer:(id)server clearAllUserNotificationsForClient:(id)client
{
  clientCopy = client;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to clear all user notifications", v8, 2u);
  }

  v7 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v7)
  {
    BSDispatchMain();
  }
}

void __82__SBTestAutomationService_systemServiceServer_clearAllUserNotificationsForClient___block_invoke()
{
  v0 = +[SBLockScreenManager sharedInstance];
  v1 = [v0 lockScreenEnvironment];
  v2 = [v1 rootViewController];

  v3 = objc_opt_class();
  v8 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 mainPageContentViewController];
    v7 = [v6 combinedListViewController];
    [v7 _testingClearAllNotificationRequests];
  }
}

- (void)systemServiceServer:(id)server setUserPresenceDetectedSinceWakeForClient:(id)client
{
  clientCopy = client;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to inject user presence detected", v8, 2u);
  }

  v7 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v7)
  {
    BSDispatchMain();
  }
}

- (void)systemServiceServer:(id)server client:(id)client setAlertsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disable";
    if (enabledCopy)
    {
      v9 = @"enable";
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ pending alerts", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    BSDispatchMain();
  }
}

void __71__SBTestAutomationService_systemServiceServer_client_setAlertsEnabled___block_invoke(uint64_t a1)
{
  v2 = +[SBAlertItemsController sharedInstance];
  if (*(a1 + 32) == 1)
  {
    v3 = SBLogAlertItems();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Removing all pending alert items and super-modal items from the SBAlertItemsController", v5, 2u);
    }

    [v2 _clearAllQueuedAlertItems];
  }

  [v2 setForceAlertsToPend:(*(a1 + 32) & 1) == 0 forReason:@"SBTestAutomationService client request"];
  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = [v2 visibleAlertItem];
    if (v4)
    {
      [v2 deactivateAlertItem:v4];
    }
  }
}

- (void)systemServiceServer:(id)server client:(id)client setHiddenFeaturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disable";
    if (enabledCopy)
    {
      v9 = @"enable";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ hidden features", &v11, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    BSDispatchMain();
  }
}

- (void)systemServiceServer:(id)server client:(id)client setIdleTimerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disable";
    if (enabledCopy)
    {
      v9 = @"enable";
    }

    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ the idle timer", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    idleTimerAssertion = self->_idleTimerAssertion;
    if (enabledCopy && idleTimerAssertion)
    {
      [(BSInvalidatable *)idleTimerAssertion invalidate];
      v12 = self->_idleTimerAssertion;
      self->_idleTimerAssertion = 0;
    }

    else
    {
      [(BSInvalidatable *)idleTimerAssertion invalidate];
      mEMORY[0x277D1B260] = [MEMORY[0x277D1B260] sharedInstance];
      v17 = 0;
      v14 = [mEMORY[0x277D1B260] newAssertionToDisableIdleTimerForReason:@"SBTestAutomationService client request" error:&v17];
      v12 = v17;
      v15 = self->_idleTimerAssertion;
      self->_idleTimerAssertion = v14;

      if (!self->_idleTimerAssertion)
      {
        v16 = SBLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SBTestAutomationService systemServiceServer:client:setIdleTimerEnabled:];
        }
      }
    }
  }
}

- (void)systemServiceServer:(id)server client:(id)client setOrientationLockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"unlock";
    if (enabledCopy)
    {
      v9 = @"lock";
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ the interface orientation", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    BSDispatchMain();
  }
}

void __80__SBTestAutomationService_systemServiceServer_client_setOrientationLockEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SBOrientationLockManager sharedInstance];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 lock];
  }

  else
  {
    [v2 unlock];
  }
}

- (void)systemServiceServer:(id)server client:(id)client setMallocStackLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disable";
    if (enabledCopy)
    {
      v9 = @"enable";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ Malloc Stack Logging", &v11, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    msl_turn_on_stack_logging();
  }
}

- (void)systemServiceServer:(id)server client:(id)client setReachabilityActive:(BOOL)active
{
  activeCopy = active;
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"deactivate";
    if (activeCopy)
    {
      v9 = @"activate";
    }

    *buf = 138412290;
    v12 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ reachability", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    BSDispatchMain();
  }
}

void __76__SBTestAutomationService_systemServiceServer_client_setReachabilityActive___block_invoke(uint64_t a1)
{
  v2 = +[SBReachabilityManager sharedInstance];
  v3 = v2;
  if (*(a1 + 32) == 1)
  {
    if (([v2 reachabilityModeActive] & 1) == 0)
    {
      if ([v3 canActivateReachability])
      {
        [v3 toggleReachability];
      }

      else
      {
        v4 = SBLogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Unable to activate reachability because the manager rejected the request. Perhaps reachability isn't enabled, the device isn't in portrait, or reachability is temporarily disabled.", v5, 2u);
        }
      }
    }
  }

  else
  {
    [v2 deactivateReachability];
  }
}

- (void)systemServiceServer:(id)server client:(id)client port:(id)port acquireAssertionForReachabilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  portCopy = port;
  processHandle = [clientCopy processHandle];
  bundleIdentifier = [processHandle bundleIdentifier];
  v13 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v14 = bundleIdentifier;
  }

  else
  {
    processHandle2 = [clientCopy processHandle];
    name = [processHandle2 name];
    v17 = name;
    if (name)
    {
      v18 = name;
    }

    else
    {
      v18 = [clientCopy description];
    }

    v14 = v18;
  }

  v19 = SBLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"disable";
    if (enabledCopy)
    {
      v20 = @"enable";
    }

    *buf = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received request from client %@ to acquire an assertion to %@ reachability", buf, 0x16u);
  }

  if ([(SBTestAutomationService *)self _authenticateClient:clientCopy])
  {
    v21 = v14;
    v22 = portCopy;
    BSDispatchMain();
  }
}

void __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBTestAutomationService request from client %@", *(a1 + 32)];
  v3 = *(a1 + 56);
  v4 = +[SBReachabilityManager sharedInstance];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 setReachabilityTemporarilyEnabled:1 forReason:v2];
  }

  else
  {
    [v4 setReachabilityTemporarilyDisabled:1 forReason:v2];
  }

  objc_initWeak(&location, *(a1 + 40));
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v7 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke_2;
  v21[3] = &unk_2783B1410;
  v24 = *(a1 + 56);
  v8 = v2;
  v22 = v8;
  objc_copyWeak(&v23, &location);
  v9 = [v6 initWithIdentifier:v7 forReason:v8 invalidationBlock:v21];
  v10 = *(*(a1 + 40) + 24);
  if (!v10)
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    v12 = *(a1 + 40);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;

    v10 = *(*(a1 + 40) + 24);
  }

  [v10 addObject:v9];
  v14 = MEMORY[0x277CF0CB8];
  v15 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke_3;
  v17[3] = &unk_2783A97D8;
  v18 = *(a1 + 32);
  v20 = *(a1 + 56);
  v16 = v9;
  v19 = v16;
  [v14 monitorSendRight:v15 withHandler:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 48);
  v4 = +[SBReachabilityManager sharedInstance];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v3 == 1)
  {
    [v4 setReachabilityTemporarilyEnabled:0 forReason:v6];
  }

  else
  {
    [v4 setReachabilityTemporarilyDisabled:0 forReason:v6];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:v9];
  }
}

void __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  BSDispatchMain();
}

uint64_t __98__SBTestAutomationService_systemServiceServer_client_port_acquireAssertionForReachabilityEnabled___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"disabling";
    if (*(a1 + 48))
    {
      v4 = @"enabling";
    }

    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] client %@ invalidated; relinquishing reachability %@ assertion.", &v6, 0x16u);
  }

  return [*(a1 + 40) invalidate];
}

- (void)systemServiceServer:(id)server client:(id)client setAmbientPresentationState:(int64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    v6 = SBLogCommon();
    v7 = v6;
    if (state > 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SBTestAutomationService systemServiceServer:client:setAmbientPresentationState:];
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = AMStringForAmbientPresentationState();
        *buf = 138412290;
        v10 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Setting ambient state to '%@'.", buf, 0xCu);
      }

      BSDispatchMain();
    }
  }
}

void __82__SBTestAutomationService_systemServiceServer_client_setAmbientPresentationState___block_invoke(uint64_t a1)
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 ambientPresentationController];

  [v4 test_updateAmbientPresentationState:*(a1 + 32) withReason:@"SBTestAutomationService"];
}

- (void)systemServiceServer:(id)server client:(id)client setAmbientMountState:(int64_t)state
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    if (state > 3 || state == 2)
    {
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBTestAutomationService systemServiceServer:client:setAmbientMountState:];
      }
    }

    else
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = AMStringForAmbientMountState();
        *buf = 138412290;
        v10 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Setting ambient mount state to '%@'.", buf, 0xCu);
      }

      BSDispatchMain();
    }
  }
}

void __75__SBTestAutomationService_systemServiceServer_client_setAmbientMountState___block_invoke(uint64_t a1)
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 ambientPresentationController];

  [v4 test_updateAmbientMountState:*(a1 + 32) withReason:@"SBTestAutomationService"];
}

- (void)systemServiceServer:(id)server client:(id)client resetToHomeScreenAnimated:(BOOL)animated
{
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to reset to home screen", buf, 2u);
  }

  v9 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke;
    v12[3] = &unk_2783A9F58;
    v12[4] = self;
    animatedCopy = animated;
    v11 = MEMORY[0x223D6F7F0](v12);
    v10 = v11;
    BSDispatchMain();
  }
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v2 setSource:24];
  [(SBLockScreenUnlockRequest *)v2 setIntent:1];
  [(SBLockScreenUnlockRequest *)v2 setName:@"[SBTestAutomationService systemServiceServer:client:resetToHomeScreenAnimated:]"];
  v3 = +[SBLockScreenManager sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_2;
  v4[3] = &unk_2783AF318;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 unlockWithRequest:v2 completion:v4];
}

uint64_t __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_3;
  v2[3] = &unk_2783AF318;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return SBWorkspaceForceToSpringBoard(v2);
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    SBWorkspaceSuspendActiveDisplay();
    v3 = [*(a1 + 32) _windowScene];
    v4 = [v3 homeScreenController];

    v5 = [v4 iconManager];
    v6 = [v5 rootFolderController];
    v7 = [v6 firstIconPageIndex];

    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_4;
    v10[3] = &unk_2783B1438;
    v13 = v8;
    v11 = v5;
    v12 = v7;
    v9 = v5;
    [v4 dismissHomeScreenOverlaysAnimated:v8 completion:v10];
  }
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_5;
  v6[3] = &unk_2783ABD10;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v4 dismissSpotlightAnimated:v3 completionHandler:v6];
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) rootFolderController];
  [v2 setCurrentPageIndex:*(a1 + 40) animated:*(a1 + 48) completion:&__block_literal_global_87_0];
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_6()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Successfully reset SpringBoard to the home screen!", v1, 2u);
  }
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_89(uint64_t a1)
{
  v2 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:0 options:-1];
  objc_initWeak(&location, v2);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_2_91;
  v7 = &unk_2783B1460;
  v3 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  objc_copyWeak(&v10, &location);
  [(SBDismissOverlaysAnimationController *)v2 setCompletionBlock:&v4];
  [*(*(a1 + 32) + 32) addObject:{v2, v4, v5, v6, v7, v8}];
  [(SBDismissOverlaysAnimationController *)v2 begin];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __80__SBTestAutomationService_systemServiceServer_client_resetToHomeScreenAnimated___block_invoke_2_91(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 removeObject:WeakRetained];
}

- (void)systemServiceServer:(id)server client:(id)client setAccessoryType:(int64_t)type attached:(BOOL)attached
{
  attachedCopy = attached;
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (attachedCopy)
    {
      v10 = @"attach";
    }

    else
    {
      v10 = @"detach";
    }

    v11 = NSStringFromSBSAccessoryType();
    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ accessory with type '%@'", buf, 0x16u);
  }

  v12 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v12)
  {
    if (CSMagSafeAccessoryTypeForSBSAccessoryType())
    {
      BSDispatchMain();
    }

    else
    {
      v13 = SBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SBTestAutomationService systemServiceServer:client:setAccessoryType:attached:];
      }
    }
  }
}

void __80__SBTestAutomationService_systemServiceServer_client_setAccessoryType_attached___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = +[SBUIController sharedInstance];
  v3 = *(*(a1 + 32) + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v5 = [v3 objectForKey:v4];

  if (*(a1 + 56) == 1)
  {
    if (!v5)
    {
      if (*(a1 + 40) == 3)
      {
        [MEMORY[0x277D75348] systemBrownColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemPinkColor];
      }
      v6 = ;
      v12 = MEMORY[0x277D02C28];
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277D75348] systemTealColor];
      v15 = [v12 accessoryWithType:v13 primaryColor:v6 secondoryColor:v14];

      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [v16 UUIDString];
      [v15 setEndpointUUID:v17];

      v18 = *(*(a1 + 32) + 40);
      if (!v18)
      {
        v19 = [MEMORY[0x277CBEB38] dictionary];
        v20 = *(a1 + 32);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v18 = *(*(a1 + 32) + 40);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [v18 setObject:v15 forKey:v22];

      [v2 _accessoryEndpointAttached:v15];
      goto LABEL_16;
    }

    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSBSAccessoryType();
      v23 = 138412290;
      v24 = v7;
      v8 = "[SBTestAutomationService] Will not attach accessory type '%@' as it is already attached.";
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v8, &v23, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSBSAccessoryType();
      v23 = 138412290;
      v24 = v7;
      v8 = "[SBTestAutomationService] Will not detach accessory type '%@' as it is not currently attached.";
      goto LABEL_11;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v10 removeObjectForKey:v11];

  [v2 _accessoryEndpointDetached:v5];
LABEL_17:
}

- (void)systemServiceServer:(id)server client:(id)client setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time
{
  timeCopy = time;
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"unblock";
    if (timeCopy)
    {
      v12 = @"block";
    }

    *buf = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to %@ application with bundle identifier '%@' for Screen Time", buf, 0x16u);
  }

  v13 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v13)
  {
    v14 = identifierCopy;
    BSDispatchMain();
  }
}

void __106__SBTestAutomationService_systemServiceServer_client_setApplicationBundleIdentifier_blockedForScreenTime___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  [SBScreenTimeTestRecipe _setApplicationBundleIdentifiers:v2 blockedForScreenTimeExpiration:*(a1 + 40)];
}

- (void)systemServiceServer:(id)server client:(id)client port:(id)port acquireHUDHiddenAssertionForIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  portCopy = port;
  identifierCopy = identifier;
  processHandle = [clientCopy processHandle];
  bundleIdentifier = [processHandle bundleIdentifier];
  v14 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v15 = bundleIdentifier;
  }

  else
  {
    processHandle2 = [clientCopy processHandle];
    name = [processHandle2 name];
    v18 = name;
    if (name)
    {
      v19 = name;
    }

    else
    {
      v19 = [clientCopy description];
    }

    v15 = v19;
  }

  v20 = SBLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received request from client %@ to acquire an assertion to hide HUDs with identifier %@", buf, 0x16u);
  }

  if ([(SBTestAutomationService *)self _authenticateClient:clientCopy])
  {
    v21 = v15;
    v22 = identifierCopy;
    v23 = portCopy;
    BSDispatchMain();
  }
}

void __98__SBTestAutomationService_systemServiceServer_client_port_acquireHUDHiddenAssertionForIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBTestAutomationService request from client %@", *(a1 + 32)];
  if ([*(a1 + 40) isEqualToString:*MEMORY[0x277D67040]])
  {
    v3 = [SBApp volumeControl];
    v4 = [v3 acquireVolumeHUDHiddenAssertionForReason:v2];
  }

  else
  {
    if (![*(a1 + 40) isEqualToString:*MEMORY[0x277D67038]])
    {
      goto LABEL_7;
    }

    v3 = [SBApp brightnessControl];
    v4 = [v3 acquireBrightnessHUDHiddenAssertionForReason:v2];
  }

  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x277CF0CB8];
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __98__SBTestAutomationService_systemServiceServer_client_port_acquireHUDHiddenAssertionForIdentifier___block_invoke_112;
    v10[3] = &unk_2783A8ED8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v5;
    v8 = v5;
    [v6 monitorSendRight:v7 withHandler:v10];

    goto LABEL_9;
  }

LABEL_7:
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] No assertion to obtain for HUD with identifier %@", buf, 0xCu);
  }

LABEL_9:
}

void __98__SBTestAutomationService_systemServiceServer_client_port_acquireHUDHiddenAssertionForIdentifier___block_invoke_112(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  BSDispatchMain();
}

uint64_t __98__SBTestAutomationService_systemServiceServer_client_port_acquireHUDHiddenAssertionForIdentifier___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] client %@ invalidated; relinquishing an assertion to hide HUDs with identifier %@", &v6, 0x16u);
  }

  return [*(a1 + 48) invalidate];
}

- (void)systemServiceServer:(id)server client:(id)client setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to set the test application recovery identifier to %@", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    v11 = identifierCopy;
    BSDispatchMain();
  }
}

void __103__SBTestAutomationService_systemServiceServer_client_setTestRunnerRecoveryApplicationBundleIdentifier___block_invoke(uint64_t a1)
{
  v3 = +[SBDefaults localDefaults];
  v2 = [v3 testingDefaults];
  [v2 setTestRunnerRecoveryApplicationBundleIdentifier:*(a1 + 32)];
}

- (void)systemServiceServer:(id)server client:(id)client countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  clientCopy = client;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to set the test application recovery identifier to %@", buf, 0xCu);
  }

  v13 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v13)
  {
    v14 = identifierCopy;
    v15 = completionCopy;
    BSDispatchMain();
  }
}

void __100__SBTestAutomationService_systemServiceServer_client_countScenesForBundleIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AAD8] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __100__SBTestAutomationService_systemServiceServer_client_countScenesForBundleIdentifier_withCompletion___block_invoke_2;
  v4[3] = &unk_2783B1488;
  v5 = *(a1 + 32);
  v3 = [v2 scenesPassingTest:v4];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v3 count]);
}

uint64_t __100__SBTestAutomationService_systemServiceServer_client_countScenesForBundleIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 clientHandle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)systemServiceServer:(id)server client:(id)client stashSwitcherModelToPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  clientCopy = client;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = pathCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to stash switcher model state to %@", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    v11 = pathCopy;
    BSDispatchMain();
  }
}

void __79__SBTestAutomationService_systemServiceServer_client_stashSwitcherModelToPath___block_invoke(uint64_t a1)
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v3 = [v2 _recentAppLayoutsController];

  if ([*(a1 + 32) length])
  {
    [v3 _stashModelToPath:*(a1 + 32)];
  }
}

- (void)systemServiceServer:(id)server client:(id)client loadStashedSwitcherModelFromPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  clientCopy = client;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = pathCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to load switcher model state from %@", buf, 0xCu);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    v11 = pathCopy;
    BSDispatchMain();
  }
}

void __87__SBTestAutomationService_systemServiceServer_client_loadStashedSwitcherModelFromPath___block_invoke(uint64_t a1)
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v3 = [v2 _recentAppLayoutsController];

  if ([*(a1 + 32) length])
  {
    [v3 _loadStashedModelAtPath:*(a1 + 32)];
  }
}

- (void)systemServiceServer:(id)server addWidgetsToEachPageForClient:(id)client
{
  clientCopy = client;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to add a static set of widgets to the home screen.", buf, 2u);
  }

  v7 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v7)
  {
    BSDispatchMain();
  }
}

void __77__SBTestAutomationService_systemServiceServer_addWidgetsToEachPageForClient___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _windowScene];
  v4 = [v1 homeScreenController];

  v2 = [v4 iconManager];
  v3 = [v2 addWidgetsToEachPage];
}

- (void)systemServiceServer:(id)server client:(id)client addWidgetWithIdentifier:(id)identifier toPage:(int64_t)page withSizing:(int64_t)sizing
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = identifierCopy;
    v17 = 2048;
    pageCopy = page;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to add widget with extension identifier '%@' to the Home Screen page '%lu'.", buf, 0x16u);
  }

  v13 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v13)
  {
    v14 = identifierCopy;
    BSDispatchMain();
  }
}

void __96__SBTestAutomationService_systemServiceServer_client_addWidgetWithIdentifier_toPage_withSizing___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _iconManager];
  v2 = [*(a1 + 32) _iconGridSizeClassFromClientArgument:*(a1 + 48)];
  if (*(a1 + 56) >= 0)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = *MEMORY[0x277D66740];
  }

  [v4 addWidgetWithIdentifier:*(a1 + 40) toPage:v3 withSizeClass:v2];
}

- (void)systemServiceServer:(id)server client:(id)client addWidgetStackWithIdentifiers:(id)identifiers toPage:(int64_t)page withSizing:(int64_t)sizing
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  clientCopy = client;
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = identifiersCopy;
    v17 = 2048;
    pageCopy = page;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to add widget stack with extension identifiers '%@' to the Home Screen page '%lu'.", buf, 0x16u);
  }

  v13 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v13)
  {
    v14 = identifiersCopy;
    BSDispatchMain();
  }
}

void __102__SBTestAutomationService_systemServiceServer_client_addWidgetStackWithIdentifiers_toPage_withSizing___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _iconManager];
  v2 = [*(a1 + 32) _iconGridSizeClassFromClientArgument:*(a1 + 48)];
  if (*(a1 + 56) >= 0)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = *MEMORY[0x277D66740];
  }

  [v4 addWidgetStackWithIdentifiers:*(a1 + 40) toPage:v3 withSizeClass:v2];
}

- (void)systemServiceServer:(id)server enterLostModeForClient:(id)client
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {

    BSDispatchMain();
  }
}

void __70__SBTestAutomationService_systemServiceServer_enterLostModeForClient___block_invoke()
{
  v0 = +[SBLockScreenManager sharedInstance];
  [v0 activateLostModeForRemoteLock:0];
}

- (void)systemServiceServer:(id)server exitLostModeForClient:(id)client
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {

    BSDispatchMain();
  }
}

void __69__SBTestAutomationService_systemServiceServer_exitLostModeForClient___block_invoke()
{
  v0 = +[SBLockScreenManager sharedInstance];
  [v0 exitLostModeIfNecessaryFromRemoteRequest:1];
}

- (void)systemServiceServer:(id)server client:(id)client getIsChamoisWindowingUIEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to get Chamois windowing enabled state", buf, 2u);
  }

  v10 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v10)
  {
    v11 = completionCopy;
    BSDispatchMain();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __99__SBTestAutomationService_systemServiceServer_client_getIsChamoisWindowingUIEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _switcherController];
  v3 = [v2 isChamoisWindowingUIEnabled];
  (*(*(a1 + 40) + 16))();
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Returned Chamois windowing enabled state %d", v5, 8u);
  }
}

- (void)systemServiceServer:(id)server client:(id)client setChamoisWindowingUIEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = enabledCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Received client request to set Chamois windowing enabled state to %d", buf, 8u);
  }

  v9 = [(SBTestAutomationService *)self _authenticateClient:clientCopy];
  if (v9)
  {
    BSDispatchMain();
  }
}

void __83__SBTestAutomationService_systemServiceServer_client_setChamoisWindowingUIEnabled___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 appSwitcherDefaults];

  [v3 setChamoisWindowingEnabled:*(a1 + 32)];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBTestAutomationService] Set Chamois windowing enabled state to %d", v6, 8u);
  }
}

- (void)systemServiceServer:(id)server client:(id)client getChamoisPrefersDockHiddenWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    v8 = completionCopy;
    BSDispatchMain();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __96__SBTestAutomationService_systemServiceServer_client_getChamoisPrefersDockHiddenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 appSwitcherDefaults];

  [v3 chamoisHideDock];
  (*(*(a1 + 32) + 16))();
}

- (void)systemServiceServer:(id)server client:(id)client setChamoisPrefersDockHidden:(BOOL)hidden
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    BSDispatchMain();
  }
}

void __82__SBTestAutomationService_systemServiceServer_client_setChamoisPrefersDockHidden___block_invoke(uint64_t a1)
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 appSwitcherDefaults];

  [v3 setChamoisHideDock:*(a1 + 32)];
}

- (void)systemServiceServer:(id)server client:(id)client getChamoisPrefersStripHiddenWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    v8 = completionCopy;
    BSDispatchMain();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __97__SBTestAutomationService_systemServiceServer_client_getChamoisPrefersStripHiddenWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 appSwitcherDefaults];

  [v3 chamoisHideStrips];
  (*(*(a1 + 32) + 16))();
}

- (void)systemServiceServer:(id)server client:(id)client setChamoisPrefersStripHidden:(BOOL)hidden
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    BSDispatchMain();
  }
}

void __83__SBTestAutomationService_systemServiceServer_client_setChamoisPrefersStripHidden___block_invoke(uint64_t a1)
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 appSwitcherDefaults];

  [v3 setChamoisHideStrips:*(a1 + 32)];
}

- (void)systemServiceServer:(id)server client:(id)client getDeviceSupportsSystemAperture:(id)aperture
{
  apertureCopy = aperture;
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    v8 = apertureCopy;
    BSDispatchMain();
  }

  else
  {
    (*(apertureCopy + 2))(apertureCopy, 0);
  }
}

uint64_t __86__SBTestAutomationService_systemServiceServer_client_getDeviceSupportsSystemAperture___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SBSIsSystemApertureAvailable();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)systemServiceServer:(id)server client:(id)client setSpringBoardAnimationFrameRecordingForUpdateTypes:(unint64_t)types
{
  typesCopy = types;
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    [systemApertureControllerForMainDisplay setSystemApertureAnimationFrameRecording:typesCopy & 1];
  }
}

- (id)systemServiceServer:(id)server getAnimationFrameRecordingsForClient:(id)client
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    animationFrameRecordings = [systemApertureControllerForMainDisplay animationFrameRecordings];
  }

  else
  {
    animationFrameRecordings = 0;
  }

  return animationFrameRecordings;
}

- (id)systemServiceServer:(id)server getSystemApertureStateDumpForClient:(id)client
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    stateDump = [systemApertureControllerForMainDisplay stateDump];
  }

  else
  {
    stateDump = 0;
  }

  return stateDump;
}

- (id)systemServiceServer:(id)server getSystemApertureModelStateDumpForClient:(id)client
{
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    systemApertureModelStateDump = [systemApertureControllerForMainDisplay systemApertureModelStateDump];
  }

  else
  {
    systemApertureModelStateDump = 0;
  }

  return systemApertureModelStateDump;
}

- (void)systemServiceServer:(id)server client:(id)client setSystemApertureUnderAutomationTesting:(BOOL)testing
{
  testingCopy = testing;
  if ([(SBTestAutomationService *)self _authenticateClient:client])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    [systemApertureControllerForMainDisplay setSystemApertureUnderAutomationTesting:testingCopy];
  }
}

- (id)systemServiceServer:(id)server getWidgetControllerStateDump:(id)dump
{
  if ([(SBTestAutomationService *)self _authenticateClient:dump])
  {
    v4 = objc_opt_new();
    viewControllers = [MEMORY[0x277CFA558] viewControllers];
    v6 = dispatch_semaphore_create(0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SBTestAutomationService_systemServiceServer_getWidgetControllerStateDump___block_invoke;
    block[3] = &unk_2783A8ED8;
    v17 = viewControllers;
    v7 = v4;
    v18 = v7;
    v8 = v6;
    v19 = v8;
    v9 = viewControllers;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v8, v10);
    v11 = [v7 count];
    v12 = v19;
    if (v11)
    {
      v13 = v7;
      v7 = v8;
      v14 = v13;
    }

    else
    {
      v14 = 0;
      v13 = v9;
      v9 = v8;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

intptr_t __76__SBTestAutomationService_systemServiceServer_getWidgetControllerStateDump___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v17)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v19 + 1) + 8 * i);
        v18 = *(a1 + 40);
        v3 = MEMORY[0x277CCACA8];
        v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "presentationMode")}];
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "visibility")}];
        v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];
        v7 = MEMORY[0x277CCACA8];
        v8 = [v2 widget];
        v9 = [v8 extensionBundleIdentifier];
        v10 = [v2 widget];
        v11 = [v10 kind];
        v12 = [v7 stringWithFormat:@"%@, %@", v9, v11];
        [v18 setValue:v6 forKey:v12];
      }

      v17 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v17);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)systemServiceServer:(id)server client:(id)client initiateSecureFlipBookRecordingForElement:(id)element withCompletion:(id)completion
{
  clientCopy = client;
  elementCopy = element;
  completionCopy = completion;
  if ([(SBTestAutomationService *)self _authenticateClient:clientCopy])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __111__SBTestAutomationService_systemServiceServer_client_initiateSecureFlipBookRecordingForElement_withCompletion___block_invoke;
    v16[3] = &unk_2783B14B0;
    v17 = completionCopy;
    [systemApertureControllerForMainDisplay initiateSecureFlipBookRecordingsForElement:elementCopy withCompletion:v16];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [clientCopy description];
    v15 = [v13 stringWithFormat:@"Client '%@' does not have the required entitlement.", v14];

    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __111__SBTestAutomationService_systemServiceServer_client_initiateSecureFlipBookRecordingForElement_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 absoluteString];
  v6 = [v5 localizedDescription];

  (*(v4 + 16))(v4, v7, v6);
}

- (id)systemServiceServer:(id)server getAvailableRecordableFlipBookElementIdentifiers:(id)identifiers
{
  if ([(SBTestAutomationService *)self _authenticateClient:identifiers])
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    availableRecordableFlipBookElementIdentifiers = [systemApertureControllerForMainDisplay availableRecordableFlipBookElementIdentifiers];
  }

  else
  {
    availableRecordableFlipBookElementIdentifiers = 0;
  }

  return availableRecordableFlipBookElementIdentifiers;
}

- (BOOL)_authenticateClient:(id)client
{
  clientCopy = client;
  v5 = [(FBServiceClientAuthenticator *)self->_clientAuthenticator authenticateClient:clientCopy];
  if ((v5 & 1) == 0)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBTestAutomationService *)clientCopy _authenticateClient:v6];
    }
  }

  return v5;
}

- (id)_iconGridSizeClassFromClientArgument:(int64_t)argument
{
  if ((argument - 1) > 2)
  {
    v3 = MEMORY[0x277D66510];
  }

  else
  {
    v3 = qword_2783B14D0[argument - 1];
  }

  return *v3;
}

- (id)_iconManager
{
  _windowScene = [(SBTestAutomationService *)self _windowScene];
  homeScreenController = [_windowScene homeScreenController];

  iconManager = [homeScreenController iconManager];

  return iconManager;
}

- (id)_switcherController
{
  _windowScene = [(SBTestAutomationService *)self _windowScene];
  switcherController = [_windowScene switcherController];

  return switcherController;
}

- (id)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  return embeddedDisplayWindowScene;
}

- (void)_authenticateClient:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[SBTestAutomationService] Rejecting request because client '%@' does not have the required entitlement.", v4, 0xCu);
}

@end