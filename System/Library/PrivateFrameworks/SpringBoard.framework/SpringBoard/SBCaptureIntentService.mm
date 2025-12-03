@interface SBCaptureIntentService
- (SBCaptureIntentService)init;
- (id)_captureApplication;
- (id)captureIntentContext;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setCaptureIntentContext:(id)context;
@end

@implementation SBCaptureIntentService

- (SBCaptureIntentService)init
{
  v16.receiver = self;
  v16.super_class = SBCaptureIntentService;
  v2 = [(SBCaptureIntentService *)&v16 init];
  if (v2)
  {
    v3 = +[SBCaptureApplicationCenter sharedInstance];
    applicationProvider = v2->_applicationProvider;
    v2->_applicationProvider = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    connections = v2->_connections;
    v2->_connections = v5;

    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    v9 = MEMORY[0x277CF32A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __30__SBCaptureIntentService_init__block_invoke;
    v14[3] = &unk_2783A9A18;
    v10 = v2;
    v15 = v10;
    v11 = [v9 listenerWithConfigurator:v14];
    v12 = v10[1];
    v10[1] = v11;

    [v10[1] activate];
  }

  return v2;
}

void __30__SBCaptureIntentService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66A40] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBCaptureIntentService: received connection: %{public}@", buf, 0xCu);
  }

  if (+[SBCaptureHardwareButton deviceSupportsCaptureButton])
  {
    v8 = +[SBCaptureHardwareButton isCaptureFeatureEnabled];
  }

  else
  {
    v8 = 0;
  }

  if (LCSFeatureEnabled() & 1) != 0 || (v8)
  {
    queue = [(SBCaptureIntentService *)self queue];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke;
    v15 = &unk_2783A92D8;
    v11 = connectionCopy;
    v16 = v11;
    selfCopy = self;
    dispatch_sync(queue, &v12);

    [v11 activate];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureIntentService listener:connectionCopy didReceiveConnection:v9 withContext:?];
    }

    [connectionCopy invalidate];
  }
}

void __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke(int8x16_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke_2;
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
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBCaptureIntentService: adding connection: %{public}@", buf, 0xCu);
  }

  [*(a1[2].i64[1] + 16) addObject:a1[2].i64[0]];
}

void __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66A40];
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
  v10[2] = __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke_3;
  v10[3] = &unk_2783B2140;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [v4 setInvalidationHandler:v10];
}

void __68__SBCaptureIntentService_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) remoteProcess];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBCaptureIntentService: connection invalidated: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) removeObject:v3];
  [*(*(a1 + 40) + 16) removeObject:v3];
}

- (id)_captureApplication
{
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];

  v6 = [(SBFCaptureApplicationProviding *)self->_applicationProvider captureApplicationForBundleIdentifier:bundleIdentifier];
  if (!v6)
  {
    v6 = [(SBFCaptureApplicationProviding *)self->_applicationProvider captureApplicationForExtensionIdentifier:bundleIdentifier];
  }

  return v6;
}

- (id)captureIntentContext
{
  _captureApplication = [(SBCaptureIntentService *)self _captureApplication];
  v3 = _captureApplication;
  if (_captureApplication)
  {
    captureIntentContext = [_captureApplication captureIntentContext];
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureIntentService *)v5 captureIntentContext];
    }

    captureIntentContext = 0;
  }

  return captureIntentContext;
}

- (void)setCaptureIntentContext:(id)context
{
  contextCopy = context;
  v5 = [contextCopy length];
  if (v5 <= 0x1000)
  {
    _captureApplication = [(SBCaptureIntentService *)self _captureApplication];
    v7 = _captureApplication;
    if (_captureApplication)
    {
      [_captureApplication setCaptureIntentContext:contextCopy];
    }

    else
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBCaptureIntentService setCaptureIntentContext:v9];
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureIntentService *)v6 setCaptureIntentContext:v7];
    }
  }
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteToken];
  v4[0] = 67109120;
  v4[1] = [v3 pid];
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBCaptureIntentService: Invalidating connection from pid %i - Feature is not enabled", v4, 8u);
}

- (void)setCaptureIntentContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBCaptureIntentService: Capture intent size (%lu) is larger than expected. Not setting it.", &v2, 0xCu);
}

@end