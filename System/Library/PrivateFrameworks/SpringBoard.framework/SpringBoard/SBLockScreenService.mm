@interface SBLockScreenService
- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode;
- (SBLockScreenService)initWithLockScreenManager:(id)manager workspace:(id)workspace authenticationAssertionProvider:(id)provider remoteTransientOverlaySessionManager:(id)sessionManager;
- (void)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated;
- (void)launchEmergencyDialerWithCompletion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)lockDeviceAnimated:(id)animated withCompletion:(id)completion;
- (void)migrateIncomingNotificationsToHistory;
- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal;
- (void)requestPasscodeCheckUIForClient:(id)client options:(id)options description:(id)description withCompletion:(id)completion;
- (void)requestPasscodeCheckUIWithOptions:(id)options withCompletion:(id)completion;
- (void)requestPasscodeUnlockUIForClient:(id)client options:(id)options description:(id)description withCompletion:(id)completion;
- (void)requestPasscodeUnlockUIWithOptions:(id)options withCompletion:(id)completion;
- (void)setPreventPasscodeLock:(id)lock;
- (void)setPreventSpuriousScreenUndim:(id)undim;
@end

@implementation SBLockScreenService

- (SBLockScreenService)initWithLockScreenManager:(id)manager workspace:(id)workspace authenticationAssertionProvider:(id)provider remoteTransientOverlaySessionManager:(id)sessionManager
{
  managerCopy = manager;
  workspaceCopy = workspace;
  providerCopy = provider;
  sessionManagerCopy = sessionManager;
  v32.receiver = self;
  v32.super_class = SBLockScreenService;
  v15 = [(SBLockScreenService *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_lockScreenManager, manager);
    objc_storeStrong(&v16->_mainWorkspace, workspace);
    objc_storeStrong(&v16->_authenticationAssertionProvider, provider);
    objc_storeStrong(&v16->_remoteTransientOverlaySessionManager, sessionManager);
    v17 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.requestDeviceUnlock" additionalCredentials:3];
    requestDeviceUnlockAuthenticator = v16->_requestDeviceUnlockAuthenticator;
    v16->_requestDeviceUnlockAuthenticator = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    connections = v16->_connections;
    v16->_connections = v19;

    v21 = [MEMORY[0x277CBEB58] set];
    connectionsPreventingPasscodeLock = v16->_connectionsPreventingPasscodeLock;
    v16->_connectionsPreventingPasscodeLock = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    connectionsPreventingSpuriousScreenUndim = v16->_connectionsPreventingSpuriousScreenUndim;
    v16->_connectionsPreventingSpuriousScreenUndim = v23;

    v25 = MEMORY[0x277CF32A0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __128__SBLockScreenService_initWithLockScreenManager_workspace_authenticationAssertionProvider_remoteTransientOverlaySessionManager___block_invoke;
    v30[3] = &unk_2783A9A18;
    v26 = v16;
    v31 = v26;
    v27 = [v25 listenerWithConfigurator:v30];
    v28 = v26[6];
    v26[6] = v27;

    [v26[6] activate];
  }

  return v16;
}

void __128__SBLockScreenService_initWithLockScreenManager_workspace_authenticationAssertionProvider_remoteTransientOverlaySessionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.frontboard"];
  [v3 setService:@"com.apple.springboard.lockscreen"];
  [v3 setDelegate:*(a1 + 32)];
}

- (void)requestPasscodeUnlockUIForClient:(id)client options:(id)options description:(id)description withCompletion:(id)completion
{
  clientCopy = client;
  optionsCopy = options;
  descriptionCopy = description;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (clientCopy)
  {
    if (descriptionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockScreenService requestPasscodeUnlockUIForClient:options:description:withCompletion:];
    if (descriptionCopy)
    {
      goto LABEL_3;
    }
  }

  [SBLockScreenService requestPasscodeUnlockUIForClient:options:description:withCompletion:];
LABEL_3:
  requestDeviceUnlockAuthenticator = self->_requestDeviceUnlockAuthenticator;
  v24 = 0;
  v15 = [(FBServiceClientAuthenticator *)requestDeviceUnlockAuthenticator authenticateAuditToken:clientCopy error:&v24];
  v16 = v24;
  if (v15)
  {
    v17 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v17 setSource:19];
    [(SBLockScreenUnlockRequest *)v17 setIntent:2];
    [(SBLockScreenUnlockRequest *)v17 setName:descriptionCopy];
    v18 = [MEMORY[0x277CF0CD0] processHandleForAuditToken:clientCopy];
    [(SBLockScreenUnlockRequest *)v17 setProcess:v18];
    [(SBLockScreenUnlockRequest *)v17 setWantsBiometricPresentation:1];
    if ([optionsCopy _aboveOtherContexts])
    {
      [(SBLockScreenUnlockRequest *)v17 setForceAlertAuthenticationUI:1];
    }

    if (-[SBRemoteTransientOverlaySessionManager hasSessionWithServiceProcessIdentifier:options:](self->_remoteTransientOverlaySessionManager, "hasSessionWithServiceProcessIdentifier:options:", [clientCopy pid], 0))
    {
      [(SBLockScreenUnlockRequest *)v17 setSource:9];
    }

    lockScreenManager = self->_lockScreenManager;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __91__SBLockScreenService_requestPasscodeUnlockUIForClient_options_description_withCompletion___block_invoke;
    v22[3] = &unk_2783A9C70;
    v23 = completionCopy;
    [(SBLockScreenManager *)lockScreenManager unlockWithRequest:v17 completion:v22];
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenService requestPasscodeUnlockUIForClient:options:description:withCompletion:];
    }

    if (completionCopy)
    {
      if (v16)
      {
        (*(completionCopy + 2))(completionCopy, v16);
      }

      else
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
        (*(completionCopy + 2))(completionCopy, v21);
      }
    }
  }
}

void __91__SBLockScreenService_requestPasscodeUnlockUIForClient_options_description_withCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 32);

      v3(v4, 0);
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:16 userInfo:0];
      (*(v2 + 16))(v2, v5);
    }
  }
}

- (void)requestPasscodeCheckUIForClient:(id)client options:(id)options description:(id)description withCompletion:(id)completion
{
  clientCopy = client;
  optionsCopy = options;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (clientCopy)
  {
    if (description)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockScreenService requestPasscodeCheckUIForClient:options:description:withCompletion:];
    if (description)
    {
      goto LABEL_3;
    }
  }

  [SBLockScreenService requestPasscodeCheckUIForClient:options:description:withCompletion:];
LABEL_3:
  requestDeviceUnlockAuthenticator = self->_requestDeviceUnlockAuthenticator;
  v37 = 0;
  v14 = [(FBServiceClientAuthenticator *)requestDeviceUnlockAuthenticator authenticateAuditToken:clientCopy error:&v37];
  v15 = v37;
  if (v14)
  {
    authenticationController = [SBApp authenticationController];
    hasPasscodeSet = [authenticationController hasPasscodeSet];

    if (hasPasscodeSet)
    {
      title = [optionsCopy title];

      if (title)
      {
        title2 = [optionsCopy title];
        passcodeTitle = self->_passcodeTitle;
        self->_passcodeTitle = title2;
      }

      subtitle = [optionsCopy subtitle];

      if (subtitle)
      {
        subtitle2 = [optionsCopy subtitle];
        passcodeSubtitle = self->_passcodeSubtitle;
        self->_passcodeSubtitle = subtitle2;
      }

      v24 = MEMORY[0x223D6F7F0](completionCopy);
      passcodeCheckCompletion = self->_passcodeCheckCompletion;
      self->_passcodeCheckCompletion = v24;

      userAuthController = [(SBLockScreenService *)self userAuthController];

      if (!userAuthController)
      {
        authenticationController2 = [SBApp authenticationController];
        userAuthController = self->_userAuthController;
        self->_userAuthController = authenticationController2;

        lockOutController = [SBApp lockOutController];
        lockOutController = self->_lockOutController;
        self->_lockOutController = lockOutController;
      }

      v31 = [SBPasscodeEntryTransientOverlayViewController alloc];
      authenticationController3 = [SBApp authenticationController];
      v33 = [(SBPasscodeEntryTransientOverlayViewController *)v31 initWithAuthenticationController:authenticationController3];

      [(SBLockScreenService *)self setPasscodeEntryTransientOverlayViewController:v33];
      [(SBPasscodeEntryTransientOverlayViewController *)self->_passcodeEntryTransientOverlayViewController setDelegate:self];
      v34 = +[SBWorkspace mainWorkspace];
      [v34 presentTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:1 completion:0];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v35 = SBLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenService requestPasscodeUnlockUIForClient:options:description:withCompletion:];
    }

    if (completionCopy)
    {
      if (v15)
      {
        (completionCopy)[2](completionCopy, v15);
      }

      else
      {
        v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
        (completionCopy)[2](completionCopy, v36);
      }
    }
  }
}

- (void)_setPasscodeVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = +[SBWorkspace mainWorkspace];
  [v6 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:animatedCopy completion:0];

  passcodeEntryTransientOverlayViewController = self->_passcodeEntryTransientOverlayViewController;
  self->_passcodeEntryTransientOverlayViewController = 0;
}

- (BOOL)passcodeEntryTransientOverlayViewController:(id)controller authenticatePasscode:(id)passcode
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__SBLockScreenService_passcodeEntryTransientOverlayViewController_authenticatePasscode___block_invoke;
  v10[3] = &unk_2783A9398;
  v10[4] = self;
  passcodeCopy = passcode;
  v6 = MEMORY[0x223D6F7F0](v10);
  v7 = [objc_alloc(MEMORY[0x277D65DF0]) initForPasscode:passcodeCopy source:0 handler:v6];

  userAuthController = [(SBLockScreenService *)self userAuthController];
  [userAuthController processAuthenticationRequest:v7];

  return 1;
}

void __88__SBLockScreenService_passcodeEntryTransientOverlayViewController_authenticatePasscode___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no";
    if (a2)
    {
      v5 = @"yes";
    }

    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBLockScreenService auth attempt succeeded: %@", &v18, 0xCu);
  }

  if ((a2 & 1) != 0 || [*(*(a1 + 32) + 144) isBlocked])
  {
    [*(a1 + 32) _setPasscodeVisible:0 animated:1];
    v6 = *(*(a1 + 32) + 120);
    if (a2)
    {
      (*(v6 + 16))(v6, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:16 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 120);
    *(v8 + 120) = 0;

    v10 = *(a1 + 32);
    v11 = *(v10 + 104);
    *(v10 + 104) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 112);
    *(v12 + 112) = 0;

    v14 = *(a1 + 32);
    v15 = *(v14 + 144);
    *(v14 + 144) = 0;

    v16 = *(a1 + 32);
    v17 = *(v16 + 136);
    *(v16 + 136) = 0;
  }
}

- (void)passcodeEntryTransientOverlayViewControllerRequestsDismissal:(id)dismissal
{
  v4 = +[SBWorkspace mainWorkspace];
  [v4 dismissTransientOverlayViewController:self->_passcodeEntryTransientOverlayViewController animated:1 completion:0];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__SBLockScreenService_listener_didReceiveConnection_withContext___block_invoke;
  v11 = &unk_2783B2168;
  selfCopy = self;
  v13 = connectionCopy;
  v7 = connectionCopy;
  [v7 configureConnection:&v8];
  [(NSMutableSet *)self->_connections addObject:v7, v8, v9, v10, v11, selfCopy];
  [v7 activate];
}

void __65__SBLockScreenService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66B38];
  v4 = a2;
  v5 = [v3 interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v4 setServiceQuality:v6];

  [v4 setTargetQueue:MEMORY[0x277D85CD0]];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBLockScreenService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_2783B2140;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v4 setInvalidationHandler:v8];
}

void __65__SBLockScreenService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "SBLockScreenService: invalidated remotely", &v19, 2u);
  }

  if ([*(*(a1 + 32) + 64) containsObject:v3])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v6 remoteProcess];
      v19 = 134218242;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client went away and therefore stopped requesting preventPasscodeLock : %{public}@", &v19, 0x16u);
    }

    [*(*(a1 + 32) + 64) removeObject:v3];
    if (![*(*(a1 + 32) + 64) count])
    {
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: all clients have stopped requesting preventPasscodeLock - invalidating global assertion", &v19, 2u);
      }

      [*(*(a1 + 32) + 72) invalidate];
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = 0;
    }
  }

  if ([*(*(a1 + 32) + 80) containsObject:v3])
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [v12 remoteProcess];
      v19 = 134218242;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client went away and therefore stopped requesting preventSpuriousScreenUndim : %{public}@", &v19, 0x16u);
    }

    [*(*(a1 + 32) + 80) removeObject:v3];
    if (![*(*(a1 + 32) + 80) count])
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: all clients have stopped requesting preventSpuriousScreenUndim - invalidating global assertion", &v19, 2u);
      }

      [*(*(a1 + 32) + 88) invalidate];
      v15 = *(a1 + 32);
      v16 = *(v15 + 88);
      *(v15 + 88) = 0;

      [*(*(a1 + 32) + 96) invalidate];
      v17 = *(a1 + 32);
      v18 = *(v17 + 96);
      *(v17 + 96) = 0;
    }
  }

  [*(*(a1 + 32) + 56) removeObject:v3];
}

- (void)launchEmergencyDialerWithCompletion:(id)completion
{
  v23[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  mEMORY[0x277D0AAF8] = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  auditToken = [remoteProcess auditToken];
  v21 = 0;
  v9 = [mEMORY[0x277D0AAF8] authenticateAuditToken:auditToken error:&v21];
  v10 = v21;

  if (v9)
  {
    lockScreenManager = self->_lockScreenManager;
    v22[0] = @"SBUILockOptionsUseScreenOffModeKey";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v23[0] = v12;
    v22[1] = @"SBUILockOptionsLockAutomaticallyKey";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v23[1] = v13;
    v22[2] = @"SBUILockOptionsForceLockKey";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v23[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [(SBLockScreenManager *)lockScreenManager lockUIFromSource:9 withOptions:v15];

    v16 = dispatch_walltime(0, 250000000);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__SBLockScreenService_launchEmergencyDialerWithCompletion___block_invoke;
    v19[3] = &unk_2783A98A0;
    v19[4] = self;
    v20 = completionCopy;
    dispatch_after(v16, MEMORY[0x277D85CD0], v19);
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenService launchEmergencyDialerWithCompletion:];
    }

    if (completionCopy)
    {
      if (v10)
      {
        (*(completionCopy + 2))(completionCopy, v10);
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
        (*(completionCopy + 2))(completionCopy, v18);
      }
    }
  }
}

uint64_t __59__SBLockScreenService_launchEmergencyDialerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) lockScreenEnvironment];
  v3 = [v2 callController];
  [v3 launchEmergencyDialer];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)requestPasscodeUnlockUIWithOptions:(id)options withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CF3280];
  optionsCopy = options;
  currentContext = [v7 currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SBLockScreenService_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke;
  v13[3] = &unk_2783A9FC8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SBLockScreenService *)self requestPasscodeUnlockUIForClient:auditToken options:optionsCopy description:@"SBSRequestPasscodeUnlockUI" withCompletion:v13];
}

uint64_t __73__SBLockScreenService_requestPasscodeUnlockUIWithOptions_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestPasscodeCheckUIWithOptions:(id)options withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CF3280];
  optionsCopy = options;
  currentContext = [v7 currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SBLockScreenService_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke;
  v13[3] = &unk_2783A9FC8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SBLockScreenService *)self requestPasscodeCheckUIForClient:auditToken options:optionsCopy description:@"SBSRequestPasscodeCheckUI" withCompletion:v13];
}

uint64_t __72__SBLockScreenService_requestPasscodeCheckUIWithOptions_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPreventPasscodeLock:(id)lock
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CF3280];
  lockCopy = lock;
  currentContext = [v4 currentContext];
  bOOLValue = [lockCopy BOOLValue];

  if (bOOLValue)
  {
    remoteProcess = [currentContext remoteProcess];
    if ([remoteProcess hasEntitlement:@"com.apple.springboard.preventDeviceLock"])
    {
      if (([(NSMutableSet *)self->_connectionsPreventingPasscodeLock containsObject:currentContext]& 1) == 0)
      {
        v9 = SBLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 134218242;
          v24 = currentContext;
          v25 = 2114;
          v26 = remoteProcess;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client started requesting preventPasscodeLock : %{public}@", &v23, 0x16u);
        }

        [(NSMutableSet *)self->_connectionsPreventingPasscodeLock addObject:currentContext];
        if (!self->_preventPasscodeLockAssertion)
        {
          v10 = SBLogCommon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: a client has started requesting preventPasscodeLock - creating global assertion", &v23, 2u);
          }

          v11 = [(SBFAuthenticationAssertionProviding *)self->_authenticationAssertionProvider createKeybagUnlockAssertionWithReason:@"LockScreenService"];
          preventPasscodeLockAssertion = self->_preventPasscodeLockAssertion;
          self->_preventPasscodeLockAssertion = v11;

          [(SBFAuthenticationAssertion *)self->_preventPasscodeLockAssertion activate];
        }
      }
    }

    else
    {
      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SBLockScreenService *)remoteProcess setPreventPasscodeLock:v16, v17, v18, v19, v20, v21, v22];
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([(NSMutableSet *)self->_connectionsPreventingPasscodeLock containsObject:currentContext])
  {
    [(NSMutableSet *)self->_connectionsPreventingPasscodeLock removeObject:currentContext];
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      remoteProcess2 = [currentContext remoteProcess];
      v23 = 134218242;
      v24 = currentContext;
      v25 = 2114;
      v26 = remoteProcess2;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client stopped requesting preventPasscodeLock : %{public}@", &v23, 0x16u);
    }

    if (![(NSMutableSet *)self->_connectionsPreventingPasscodeLock count])
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: all clients have stopped requesting preventPasscodeLock - invalidating global assertion", &v23, 2u);
      }

      [(SBFAuthenticationAssertion *)self->_preventPasscodeLockAssertion invalidate];
      remoteProcess = self->_preventPasscodeLockAssertion;
      self->_preventPasscodeLockAssertion = 0;
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)setPreventSpuriousScreenUndim:(id)undim
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CF3280];
  undimCopy = undim;
  currentContext = [v4 currentContext];
  bOOLValue = [undimCopy BOOLValue];

  if (bOOLValue)
  {
    remoteProcess = [currentContext remoteProcess];
    if ([remoteProcess hasEntitlement:@"com.apple.springboard.preventSpuriousScreenUndim"])
    {
      if (([(NSMutableSet *)self->_connectionsPreventingSpuriousScreenUndim containsObject:currentContext]& 1) != 0)
      {
        goto LABEL_20;
      }

      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v31 = currentContext;
        v32 = 2114;
        v33 = remoteProcess;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client started requesting preventSpuriousScreenUndim : %{public}@", buf, 0x16u);
      }

      [(NSMutableSet *)self->_connectionsPreventingSpuriousScreenUndim addObject:currentContext];
      if (self->_preventSpuriousScreenUndimAssertion)
      {
        goto LABEL_20;
      }

      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: a client has started requesting preventSpuriousScreenUndim - creating global assertion", buf, 2u);
      }

      v11 = [[SBSpuriousScreenUndimmingAssertion alloc] initWithIdentifier:@"SBLockScreenService"];
      preventSpuriousScreenUndimAssertion = self->_preventSpuriousScreenUndimAssertion;
      self->_preventSpuriousScreenUndimAssertion = v11;

      v13 = MEMORY[0x277CF0868];
      allowAmbientIdleTimer = [MEMORY[0x277CEA5C8] allowAmbientIdleTimer];
      disableAlwaysOn = [MEMORY[0x277CF08F8] disableAlwaysOn];
      v29[1] = disableAlwaysOn;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v17 = [v13 acquireWithExplanation:@"SBLockScreenService-PreventSpuriousScreenUndimming" observer:0 attributes:v16];
      preventSpuriousScreenUndimDisableAlwaysOnAssertion = self->_preventSpuriousScreenUndimDisableAlwaysOnAssertion;
      self->_preventSpuriousScreenUndimDisableAlwaysOnAssertion = v17;
    }

    else
    {
      allowAmbientIdleTimer = SBLogCommon();
      if (os_log_type_enabled(allowAmbientIdleTimer, OS_LOG_TYPE_ERROR))
      {
        [(SBLockScreenService *)remoteProcess setPreventSpuriousScreenUndim:allowAmbientIdleTimer, v23, v24, v25, v26, v27, v28];
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  if ([(NSMutableSet *)self->_connectionsPreventingSpuriousScreenUndim containsObject:currentContext])
  {
    [(NSMutableSet *)self->_connectionsPreventingSpuriousScreenUndim removeObject:currentContext];
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      remoteProcess2 = [currentContext remoteProcess];
      *buf = 134218242;
      v31 = currentContext;
      v32 = 2114;
      v33 = remoteProcess2;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "SBLockScreenService-%p: client stopped requesting preventSpuriousScreenUndim : %{public}@", buf, 0x16u);
    }

    if (![(NSMutableSet *)self->_connectionsPreventingSpuriousScreenUndim count])
    {
      v21 = SBLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "SBLockScreenService: all clients have stopped requesting preventSpuriousScreenUndim - invalidating global assertion", buf, 2u);
      }

      [(SBSpuriousScreenUndimmingAssertion *)self->_preventSpuriousScreenUndimAssertion invalidate];
      v22 = self->_preventSpuriousScreenUndimAssertion;
      self->_preventSpuriousScreenUndimAssertion = 0;

      [(BLSAssertion *)self->_preventSpuriousScreenUndimDisableAlwaysOnAssertion invalidate];
      remoteProcess = self->_preventSpuriousScreenUndimDisableAlwaysOnAssertion;
      self->_preventSpuriousScreenUndimDisableAlwaysOnAssertion = 0;
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)lockDeviceAnimated:(id)animated withCompletion:(id)completion
{
  v18[4] = *MEMORY[0x277D85DE8];
  animatedCopy = animated;
  completionCopy = completion;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if ([remoteProcess hasEntitlement:@"com.apple.springboard.lockDevice"])
  {
    lockScreenManager = self->_lockScreenManager;
    v17[0] = @"SBUILockOptionsUseScreenOffModeKey";
    v17[1] = @"SBUILockOptionsLockAutomaticallyKey";
    v18[0] = MEMORY[0x277CBEC28];
    v18[1] = MEMORY[0x277CBEC38];
    v18[2] = MEMORY[0x277CBEC38];
    v17[2] = @"SBUILockOptionsForceLockKey";
    v17[3] = @"SBUILockOptionsAnimateLockScreenActivationKey";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(animatedCopy, "BOOLValue")}];
    v18[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SBLockScreenService_lockDeviceAnimated_withCompletion___block_invoke;
    v15[3] = &unk_2783A9C70;
    v16 = completionCopy;
    [(SBLockScreenManager *)lockScreenManager lockUIFromSource:21 withOptions:v12 completion:v15];

    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenService lockDeviceAnimated:withCompletion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13);
    }
  }
}

uint64_t __57__SBLockScreenService_lockDeviceAnimated_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)migrateIncomingNotificationsToHistory
{
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if ([remoteProcess hasEntitlement:@"com.apple.springboard.notificationList"])
  {
    [(SBLockScreenManager *)self->_lockScreenManager migrateNotificationsToHistory];
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBLockScreenService *)remoteProcess migrateIncomingNotificationsToHistory:v5];
    }
  }
}

- (void)requestPasscodeUnlockUIForClient:options:description:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"auditToken" object:? file:? lineNumber:? description:?];
}

- (void)requestPasscodeUnlockUIForClient:options:description:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"description" object:? file:? lineNumber:? description:?];
}

- (void)requestPasscodeCheckUIForClient:options:description:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"auditToken" object:? file:? lineNumber:? description:?];
}

- (void)requestPasscodeCheckUIForClient:options:description:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"description" object:? file:? lineNumber:? description:?];
}

@end