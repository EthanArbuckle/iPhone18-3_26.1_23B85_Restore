@interface SBCaptureApplicationService
+ (SBCaptureApplicationService)sharedInstance;
- (SBCaptureApplicationService)initWithCaptureApplicationProvider:(id)a3;
- (id)_captureApplication;
- (void)addObserver:(id)a3;
- (void)applicationDidCompleteTransition;
- (void)beginDelayingAppearance;
- (void)endDelayingAppearance;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation SBCaptureApplicationService

+ (SBCaptureApplicationService)sharedInstance
{
  if (sharedInstance_onceToken_47 != -1)
  {
    +[SBCaptureApplicationService sharedInstance];
  }

  v3 = sharedInstance___result_2;

  return v3;
}

void __45__SBCaptureApplicationService_sharedInstance__block_invoke()
{
  v0 = [SBCaptureApplicationService alloc];
  v3 = +[SBCaptureApplicationCenter sharedInstance];
  v1 = [(SBCaptureApplicationService *)v0 initWithCaptureApplicationProvider:v3];
  v2 = sharedInstance___result_2;
  sharedInstance___result_2 = v1;
}

- (SBCaptureApplicationService)initWithCaptureApplicationProvider:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SBCaptureApplicationService;
  v6 = [(SBCaptureApplicationService *)&v20 init];
  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: init", buf, 2u);
    }

    objc_storeStrong(&v6->_applicationProvider, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    connections = v6->_connections;
    v6->_connections = v8;

    Serial = BSDispatchQueueCreateSerial();
    queue = v6->_queue;
    v6->_queue = Serial;

    v12 = MEMORY[0x277CF32A0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__SBCaptureApplicationService_initWithCaptureApplicationProvider___block_invoke;
    v17[3] = &unk_2783A9A18;
    v13 = v6;
    v18 = v13;
    v14 = [v12 listenerWithConfigurator:v17];
    v15 = v13[1];
    v13[1] = v14;

    [v13[1] activate];
  }

  return v6;
}

void __66__SBCaptureApplicationService_initWithCaptureApplicationProvider___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66A20] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBCaptureApplicationService: received connection: %{public}@", buf, 0xCu);
  }

  if (LCSFeatureEnabled())
  {
    v8 = [(SBCaptureApplicationService *)self queue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke;
    v16 = &unk_2783A92D8;
    v9 = v6;
    v17 = v9;
    v18 = self;
    dispatch_sync(v8, &v13);

    [v9 activate];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 remoteToken];
      v12 = [v11 pid];
      *buf = 67109120;
      LODWORD(v20) = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: Invalidating connection from pid %i - Feature is not enabled", buf, 8u);
    }

    [v6 invalidate];
  }
}

void __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke(int8x16_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke_2;
  v5[3] = &unk_2783B2168;
  v4 = a1[2];
  v6 = vextq_s8(v4, v4, 8uLL);
  [v4.i64[0] configureConnection:v5];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBCaptureApplicationService: adding connection: %{public}@", buf, 0xCu);
  }

  [*(a1[2].i64[1] + 16) addObject:a1[2].i64[0]];
}

void __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66A20];
  v4 = a2;
  v5 = [v3 interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v4 setServiceQuality:v6];

  v7 = [*(a1 + 32) queue];
  [v4 setTargetQueue:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke_3;
  v10[3] = &unk_2783B2140;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [v4 setInvalidationHandler:v10];
}

void __73__SBCaptureApplicationService_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) remoteProcess];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: connection invalidated: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) removeObject:v3];
  [*(*(a1 + 40) + 16) removeObject:v3];
}

- (id)_captureApplication
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 bundleIdentifier];

  v6 = [(SBFCaptureApplicationProviding *)self->_applicationProvider captureApplicationForBundleIdentifier:v5];

  return v6;
}

- (void)applicationDidCompleteTransition
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SBCaptureApplicationService *)self _captureApplication];
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 bundleIdentifier];
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: handling applicationDidCompleteTransition for capture application: %@", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NSHashTable *)self->_observers copy];
    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 captureApplicationServiceApplicationDidCompleteTransition:v3];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SBCaptureApplicationService *)v5 applicationDidCompleteTransition:v12];
  }
}

- (void)beginDelayingAppearance
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(SBCaptureApplicationService *)self _captureApplication];
  v3 = SBLogCommon();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 bundleIdentifier];
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: handling beginDelayingAppearance for capture application: %@", &v15, 0xCu);
    }

    v4 = +[SBCaptureApplicationLaunchAssertionManager sharedInstance];
    v6 = [v2 bundleIdentifier];
    v7 = [v4 acquireCaptureApplicationLaunchAssertionForBundleIdentifier:v6 reason:@"application request"];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SBCaptureApplicationService *)v4 beginDelayingAppearance:v8];
  }
}

- (void)endDelayingAppearance
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(SBCaptureApplicationService *)self _captureApplication];
  v3 = SBLogCommon();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 bundleIdentifier];
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBCaptureApplicationService: handling endDelayingAppearance for capture application: %@", &v15, 0xCu);
    }

    v6 = +[SBCaptureApplicationLaunchAssertionManager sharedInstance];
    v7 = [v2 bundleIdentifier];
    v4 = [v6 assertionForBundleIdentifier:v7];

    [v4 invalidate];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SBCaptureApplicationService *)v4 endDelayingAppearance:v8];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      v4 = v9;
    }
  }
}

@end