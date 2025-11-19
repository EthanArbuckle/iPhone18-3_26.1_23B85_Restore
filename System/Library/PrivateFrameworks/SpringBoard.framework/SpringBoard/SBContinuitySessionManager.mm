@interface SBContinuitySessionManager
+ (BOOL)areContinuitySessionsAllowed;
+ (id)sharedInstance;
- (id)_initWithService:(id)a3 userInterfaceStyleProvider:(id)a4 displayLayoutCoordinator:(id)a5 sessionFactory:(id)a6 externalDependencyProvider:(id)a7;
- (id)_registerSystemApertureScene:(id)a3 sessionConnectionCallout:(id)a4 sessionDisconnectionCallout:(id)a5;
- (id)newContinuitySession;
- (id)registerWindowScene:(id)a3;
- (void)_noteSceneOrSessionIsWaiting;
- (void)activate;
- (void)appendDescriptionToStream:(id)a3;
- (void)continuitySessionDidUpdateState:(id)a3;
- (void)dealloc;
- (void)newContinuitySession;
@end

@implementation SBContinuitySessionManager

+ (id)sharedInstance
{
  if (sharedInstance___once_6 != -1)
  {
    +[SBContinuitySessionManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_17;

  return v3;
}

void __44__SBContinuitySessionManager_sharedInstance__block_invoke()
{
  v9 = objc_alloc_init(SBOverridableUserInterfaceStyleProvider);
  v0 = MEMORY[0x277D0AD28];
  v1 = [MEMORY[0x277D0AD30] configurationForContinuityDisplay];
  v2 = [v0 publisherWithConfiguration:v1];

  v3 = [[SBContinuityDisplayLayoutCoordinator alloc] initWithRootPublisher:v2];
  v4 = objc_alloc_init(_SBContinuitySessionManagerExternalDependencyProvider);
  v5 = [SBContinuitySessionManager alloc];
  v6 = objc_alloc_init(SBContinuitySessionService);
  v7 = [(SBContinuitySessionManager *)v5 _initWithService:v6 userInterfaceStyleProvider:v9 displayLayoutCoordinator:v3 sessionFactory:0 externalDependencyProvider:v4];
  v8 = sharedInstance___sharedInstance_17;
  sharedInstance___sharedInstance_17 = v7;
}

+ (BOOL)areContinuitySessionsAllowed
{
  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = SBLogContinuitySession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(SBContinuitySessionManager *)v5];
    }

    goto LABEL_11;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (SBFIsOnenessAvailable())
  {
    return 1;
  }

  v5 = SBLogContinuitySession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[(SBContinuitySessionManager *)v5];
  }

LABEL_11:

  return 0;
}

- (id)_initWithService:(id)a3 userInterfaceStyleProvider:(id)a4 displayLayoutCoordinator:(id)a5 sessionFactory:(id)a6 externalDependencyProvider:(id)a7
{
  v13 = a3;
  v24 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = SBContinuitySessionManager;
  v17 = [(SBContinuitySessionManager *)&v27 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    waitingWindowScenes = v17->_waitingWindowScenes;
    v17->_waitingWindowScenes = v18;

    objc_storeStrong(&v17->_sessionFactory, a6);
    objc_storeStrong(&v17->_service, a3);
    objc_storeStrong(&v17->_userInterfaceStyleProvider, a4);
    [v13 setSessionFactory:v17];
    objc_storeStrong(&v17->_displayLayoutCoordinator, a5);
    objc_storeStrong(&v17->_externalDependencyProvider, a7);
    objc_initWeak(&location, v17);
    v20 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v25, &location);
    v21 = BSLogAddStateCaptureBlockWithTitle();
    stateDumpHandle = v17->_stateDumpHandle;
    v17->_stateDumpHandle = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v17;
}

id __141__SBContinuitySessionManager__initWithService_userInterfaceStyleProvider_displayLayoutCoordinator_sessionFactory_externalDependencyProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CF0C08];
    v3 = [MEMORY[0x277CF0C10] debugStyle];
    v4 = [v2 descriptionForRootObject:WeakRetained withStyle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  stateDumpHandle = self->_stateDumpHandle;
  self->_stateDumpHandle = 0;

  v4.receiver = self;
  v4.super_class = SBContinuitySessionManager;
  [(SBContinuitySessionManager *)&v4 dealloc];
}

- (void)activate
{
  [(SBContinuityDisplayLayoutCoordinator *)self->_displayLayoutCoordinator start];
  v3 = [(SBContinuityDisplayLayoutCoordinator *)self->_displayLayoutCoordinator rootPublisher];
  [v3 activate];

  service = self->_service;

  [(SBContinuitySessionService *)service activate];
}

- (id)registerWindowScene:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 delegate];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ContinuityScene<%p>-Delegate<%p>", v4, v7];
  v9 = [v4 _FBSScene];
  v10 = [v9 hostHandle];

  v11 = [v10 auditToken];
  v12 = [v11 hasEntitlement:*MEMORY[0x277D67F48]];

  if ((v12 & 1) == 0)
  {
    v18 = SBLogContinuitySession();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager registerWindowScene:v8];
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v18 = SBLogContinuitySession();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(SBContinuitySessionManager *)v8 registerWindowScene:v4];
    }

LABEL_14:

    v16 = 0;
    goto LABEL_15;
  }

  objc_initWeak(&location, self);
  v13 = objc_alloc(MEMORY[0x277CF0CE8]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__SBContinuitySessionManager_registerWindowScene___block_invoke;
  v20[3] = &unk_2783BA4E0;
  objc_copyWeak(&v24, &location);
  v14 = v4;
  v21 = v14;
  v22 = v7;
  v15 = v8;
  v23 = v15;
  v16 = [v13 initWithIdentifier:v15 forReason:@"SBContinuitySessionManager registerWindowScene:" invalidationBlock:v20];
  v17 = SBLogContinuitySession();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v15;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[SessionManager] Added waiting scene: %{public}@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_waitingWindowScenes insertObject:v14 atIndex:0];
  [(SBContinuitySessionManager *)self _noteSceneOrSessionIsWaiting];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_15:

  return v16;
}

void __50__SBContinuitySessionManager_registerWindowScene___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] removeObject:*(a1 + 32)];
    v4 = [*(a1 + 40) connectedSession];
    v5 = v4;
    if (v4)
    {
      [v4 noteSceneDisconnected:*(a1 + 32)];
    }

    else
    {
      v6 = SBLogContinuitySession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ unregistered but has no memory of its session", &v8, 0xCu);
      }
    }
  }
}

void __64__SBContinuitySessionManager_registerSystemApertureWindowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  [v7 noteSystemApertureSceneConnected:a3];
  [v6 didConnectToSession:v7];
}

void __71__SBContinuitySessionManager_registerSystemApertureCurtainWindowScene___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  [v7 noteSystemApertureCurtainSceneConnected:a3];
  [v6 didConnectToSession:v7];
}

- (id)_registerSystemApertureScene:(id)a3 sessionConnectionCallout:(id)a4 sessionDisconnectionCallout:(id)a5
{
  location[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [v8 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [v8 delegate];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SystemApertureScene<%p>-Delegate<%p>", v8, v13];
  v15 = [v8 _FBSScene];
  v16 = [v15 hostHandle];

  v17 = [v16 auditToken];
  v18 = [v17 hasEntitlement:*MEMORY[0x277D67F48]];

  if ((v18 & 1) == 0)
  {
    v25 = SBLogContinuitySession();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager registerWindowScene:v14];
    }

    goto LABEL_11;
  }

  if (!v13)
  {
    v25 = SBLogContinuitySession();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBContinuitySessionManager _registerSystemApertureScene:v14 sessionConnectionCallout:v8 sessionDisconnectionCallout:?];
    }

LABEL_11:

    goto LABEL_21;
  }

  currentSession = self->_currentSession;
  if (currentSession)
  {
    v20 = [(SBContinuitySession *)currentSession mainWindowScene];

    if (v20)
    {
      objc_initWeak(location, self);
      v21 = objc_alloc(MEMORY[0x277CF0CE8]);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __112__SBContinuitySessionManager__registerSystemApertureScene_sessionConnectionCallout_sessionDisconnectionCallout___block_invoke;
      v28[3] = &unk_2783BA528;
      objc_copyWeak(&v33, location);
      v22 = v13;
      v29 = v22;
      v32 = v10;
      v23 = v8;
      v30 = v23;
      v31 = v14;
      v24 = [v21 initWithIdentifier:v31 forReason:@"SBContinuitySessionManager registerSystemApertureWindowScene:" invalidationBlock:v28];
      v9[2](v9, self->_currentSession, v23, v22);

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
      goto LABEL_22;
    }

    v26 = SBLogContinuitySession();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Attempted to register a scene %{public}@ the current session doesn't have a main window scene", location, 0xCu);
    }
  }

  else
  {
    v26 = SBLogContinuitySession();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v14;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Attempted to register a scene %{public}@ but we don't have an active session", location, 0xCu);
    }
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

void __112__SBContinuitySessionManager__registerSystemApertureScene_sessionConnectionCallout_sessionDisconnectionCallout___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) connectedSession];
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v5 = SBLogContinuitySession();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ unregistered but has no memory of its session", &v7, 0xCu);
      }
    }
  }
}

- (void)_noteSceneOrSessionIsWaiting
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuitySessionManager.m" lineNumber:278 description:@"the waiting scene does not have a SBContinuitySessionSceneDelegate"];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBContinuitySessionManager_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

id __56__SBContinuitySessionManager_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"currentSession"];
  result = [*(*(a1 + 40) + 40) count];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"waitingWindowScenes"];
  }

  return result;
}

- (id)newContinuitySession
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = SBLogContinuitySession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SessionManager] Creating new session...", &v16, 2u);
  }

  sessionFactory = self->_sessionFactory;
  if (sessionFactory)
  {
    v5 = [(SBContinuitySessionFactory *)sessionFactory newContinuitySession];
  }

  else
  {
    v5 = objc_alloc_init(SBContinuitySession);
  }

  v6 = v5;
  currentSession = self->_currentSession;
  if (currentSession)
  {
    v8 = SBLogContinuitySession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBContinuitySessionManager *)&self->_currentSession newContinuitySession];
    }

    [(SBContinuitySession *)self->_currentSession removeStateObserver:self];
    v9 = self->_currentSession;
    v10 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.new-session-created"];
    [(SBContinuitySession *)v9 invalidateForReasons:v10];

    v11 = self->_currentSession;
    self->_currentSession = 0;
  }

  v12 = [[SBContinuityDisplayLayoutPublisher alloc] initWithCoordinator:self->_displayLayoutCoordinator];
  [(SBContinuitySession *)v6 setDisplayLayoutPublisher:v12];
  v13 = SBLogContinuitySession();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SBContinuitySession *)v6 succinctDescription];
    v16 = 138543362;
    v17 = v14;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[SessionManager] Created new session: %{public}@", &v16, 0xCu);
  }

  objc_storeStrong(&self->_currentSession, v6);
  [(SBContinuitySession *)v6 addStateObserver:self];
  if (!currentSession)
  {
    [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionNegotiationStarted];
  }

  [(SBContinuitySessionManager *)self _noteSceneOrSessionIsWaiting];

  return v6;
}

- (void)continuitySessionDidUpdateState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_currentSession == v4)
  {
    v6 = [(SBContinuitySession *)v4 state];
    if (v6 == 12)
    {
      v7 = SBLogContinuitySession();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(SBContinuitySession *)v5 succinctDescription];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[SessionManager] current session %{public}@ is invalid - cleaning up", &v10, 0xCu);
      }

      [(SBContinuitySession *)self->_currentSession removeStateObserver:self];
      currentSession = self->_currentSession;
      self->_currentSession = 0;

      [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionEnded];
    }

    else if (v6 == 11)
    {
      [(SBContinuitySessionManagerExternalDependencyProviding *)self->_externalDependencyProvider noteContinuitySessionIsActive];
    }
  }
}

- (void)registerWindowScene:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "Attempted to register a scene %{public}@ from an untrusted host: %{public}@", v3, DWORD2(v3));
}

- (void)registerWindowScene:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 delegate];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v5, v6, "Attempted to register a scene %{public}@ who's delegate doesn't conform to SBContinuitySessionSceneDelegate: %{public}@", v7, v8, v9, v10, v11);
}

- (void)_registerSystemApertureScene:(uint64_t)a1 sessionConnectionCallout:(void *)a2 sessionDisconnectionCallout:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 delegate];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v5, v6, "Attempted to register a scene %{public}@ who's delegate doesn't conform to SBContinuitySessionSceneDelegate: %{public}@", v7, v8, v9, v10, v11);
}

- (void)newContinuitySession
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "[SessionManager] Current session %{public}@ is being replaced by session %{public}@", v3, DWORD2(v3));
}

@end