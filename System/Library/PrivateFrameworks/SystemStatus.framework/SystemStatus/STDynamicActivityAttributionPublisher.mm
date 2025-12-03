@interface STDynamicActivityAttributionPublisher
+ (id)sharedInstance;
+ (void)setCurrentAttributionKey:(id)key andApp:(id)app;
+ (void)setCurrentAttributionLocalizableKey:(id)key auditToken:(id *)token;
+ (void)setCurrentAttributionStringWithFormat:(id)format auditToken:(id *)token;
+ (void)setCurrentAttributionWebsiteString:(id)string auditToken:(id *)token;
- (STDynamicActivityAttributionPublisher)init;
- (void)_internalQueue_sendAttributionKey:(void *)key andApp:;
- (void)_internalQueue_setupXPCConnectionIfNecessary;
- (void)dealloc;
- (void)didObserveServerLaunch:(id)launch;
@end

@implementation STDynamicActivityAttributionPublisher

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED7F5D18 != -1)
  {
    dispatch_once(&qword_1ED7F5D18, &__block_literal_global_11);
  }

  v0 = _MergedGlobals_11;

  return v0;
}

uint64_t __55__STDynamicActivityAttributionPublisher_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(STDynamicActivityAttributionPublisher);
  v1 = _MergedGlobals_11;
  _MergedGlobals_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)setCurrentAttributionKey:(id)key andApp:(id)app
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  appCopy = app;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v7 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138543618;
      *&v13[4] = keyCopy;
      *&v13[12] = 2114;
      *&v13[14] = appCopy;
      _os_log_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_DEFAULT, "setCurrentAttributionKey: %{public}@, andApp: %{public}@", v13, 0x16u);
    }
  }

  v8 = +[STDynamicActivityAttributionPublisher sharedInstance];
  v9 = keyCopy;
  v10 = appCopy;
  if (v8)
  {
    v11 = v8[1];
    *v13 = MEMORY[0x1E69E9820];
    *&v13[8] = 3221225472;
    *&v13[16] = __78__STDynamicActivityAttributionPublisher_setCurrentAttributionKey_application___block_invoke;
    v14 = &unk_1E85DE268;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_sync(v11, v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)setCurrentAttributionLocalizableKey:(id)key auditToken:(id *)token
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v6 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = keyCopy;
      *&buf[12] = 1026;
      *&buf[14] = BSPIDForAuditToken();
      _os_log_impl(&dword_1DA9C2000, v6, OS_LOG_TYPE_DEFAULT, "setCurrentAttributionLocalizableKey: %{public}@, auditToken(pid): %{public}d", buf, 0x12u);
    }
  }

  v7 = +[STDynamicActivityAttributionPublisher sharedInstance];
  v12 = *token->var0;
  v13 = *&token->var0[4];
  v8 = keyCopy;
  v9 = v8;
  if (v7)
  {
    v10 = v7[1];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __101__STDynamicActivityAttributionPublisher_setCurrentAttributionLocalizableKey_maskingClientAuditToken___block_invoke;
    v15 = &unk_1E85DE8E8;
    v16 = v7;
    v17 = v8;
    v18 = v12;
    v19 = v13;
    dispatch_sync(v10, buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)setCurrentAttributionStringWithFormat:(id)format auditToken:(id *)token
{
  v20 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v6 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = formatCopy;
      *&buf[12] = 1026;
      *&buf[14] = BSPIDForAuditToken();
      _os_log_impl(&dword_1DA9C2000, v6, OS_LOG_TYPE_DEFAULT, "setCurrentAttributionStringWithFormat: %{public}@, auditToken(pid): %{public}d", buf, 0x12u);
    }
  }

  v7 = +[STDynamicActivityAttributionPublisher sharedInstance];
  v12 = *token->var0;
  v13 = *&token->var0[4];
  v8 = formatCopy;
  v9 = v8;
  if (v7)
  {
    v10 = v7[1];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __103__STDynamicActivityAttributionPublisher_setCurrentAttributionStringWithFormat_maskingClientAuditToken___block_invoke;
    v15 = &unk_1E85DE8E8;
    v16 = v7;
    v17 = v8;
    v18 = v12;
    v19 = v13;
    dispatch_sync(v10, buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)setCurrentAttributionWebsiteString:(id)string auditToken:(id *)token
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v6 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (stringCopy)
      {
        v7 = @"non-nil";
      }

      else
      {
        v7 = @"nil";
      }

      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 1026;
      *&buf[14] = BSPIDForAuditToken();
      _os_log_impl(&dword_1DA9C2000, v6, OS_LOG_TYPE_DEFAULT, "setCurrentAttributionWebsiteString: %{public}@, auditToken(pid): %{public}d", buf, 0x12u);
    }
  }

  v8 = +[STDynamicActivityAttributionPublisher sharedInstance];
  v13 = *token->var0;
  v14 = *&token->var0[4];
  v9 = stringCopy;
  v10 = v9;
  if (v8)
  {
    v11 = v8[1];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __100__STDynamicActivityAttributionPublisher_setCurrentAttributionWebsiteString_maskingClientAuditToken___block_invoke;
    v16 = &unk_1E85DE8E8;
    v17 = v8;
    v18 = v9;
    v19 = v13;
    v20 = v14;
    dispatch_sync(v11, buf);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (STDynamicActivityAttributionPublisher)init
{
  v8.receiver = self;
  v8.super_class = STDynamicActivityAttributionPublisher;
  v2 = [(STDynamicActivityAttributionPublisher *)&v8 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    v5 = +[STServerLaunchMonitor sharedInstance];
    serverLaunchObservable = v2->_serverLaunchObservable;
    v2->_serverLaunchObservable = v5;

    [(STServerLaunchObservable *)v2->_serverLaunchObservable addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_serverLaunchObservable;
  }

  [(STDynamicActivityAttributionPublisher *)self removeObserver:selfCopy];
  v3.receiver = selfCopy;
  v3.super_class = STDynamicActivityAttributionPublisher;
  [(STDynamicActivityAttributionPublisher *)&v3 dealloc];
}

- (void)didObserveServerLaunch:(id)launch
{
  v4 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_DEFAULT, "Server launched, attempting to re-send cached attribution values if necessary", v6, 2u);
  }

  if (self)
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__STDynamicActivityAttributionPublisher__resendAttributionData__block_invoke;
    v6[3] = &unk_1E85DE068;
    v6[4] = self;
    dispatch_async(internalQueue, v6);
  }
}

void __78__STDynamicActivityAttributionPublisher_setCurrentAttributionKey_application___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (objc_storeStrong((v2 + 24), *(a1 + 40)), (v3 = *(a1 + 32)) != 0))
  {
    objc_storeStrong((v3 + 32), *(a1 + 48));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  [(STDynamicActivityAttributionPublisher *)v4 _internalQueue_sendAttributionKey:v5 andApp:v6];
}

- (void)_internalQueue_sendAttributionKey:(void *)key andApp:
{
  if (self)
  {
    keyCopy = key;
    v6 = a2;
    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v7 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_DEFAULT, "_internalQueue_sendAttributionKey:andApp:", v9, 2u);
      }
    }

    [(STDynamicActivityAttributionPublisher *)self _internalQueue_setupXPCConnectionIfNecessary];
    v8 = [*(self + 16) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_17_0];
    [v8 setCurrentAttributionKey:v6 application:keyCopy reply:&__block_literal_global_21];
  }
}

void __101__STDynamicActivityAttributionPublisher_setCurrentAttributionLocalizableKey_maskingClientAuditToken___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  if (v2)
  {
    v4 = v1;
    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v5 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "_internalQueue_sendAttributionLocalizableKey:maskingClientAuditToken:", v8, 2u);
      }
    }

    [(STDynamicActivityAttributionPublisher *)v2 _internalQueue_setupXPCConnectionIfNecessary];
    v6 = [*(v2 + 16) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_23];
    v8[0] = v9;
    v8[1] = v10;
    [v6 setCurrentAttributionLocalizableKey:v4 maskingClientAuditToken:v8 reply:&__block_literal_global_26];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __103__STDynamicActivityAttributionPublisher_setCurrentAttributionStringWithFormat_maskingClientAuditToken___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  if (v2)
  {
    v4 = v1;
    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v5 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "_internalQueue_sendAttributionStringWithFormat:maskingClientAuditToken:", v8, 2u);
      }
    }

    [(STDynamicActivityAttributionPublisher *)v2 _internalQueue_setupXPCConnectionIfNecessary];
    v6 = [*(v2 + 16) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28];
    v8[0] = v9;
    v8[1] = v10;
    [v6 setCurrentAttributionStringWithFormat:v4 maskingClientAuditToken:v8 reply:&__block_literal_global_31];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __100__STDynamicActivityAttributionPublisher_setCurrentAttributionWebsiteString_maskingClientAuditToken___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  if (v2)
  {
    v4 = v1;
    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v5 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "_internalQueue_sendAttributionWebsiteString:maskingClientAuditToken:", v8, 2u);
      }
    }

    [(STDynamicActivityAttributionPublisher *)v2 _internalQueue_setupXPCConnectionIfNecessary];
    v6 = [*(v2 + 16) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_33];
    v8[0] = v9;
    v8[1] = v10;
    [v6 setCurrentAttributionWebsiteString:v4 maskingClientAuditToken:v8 reply:&__block_literal_global_36];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_setupXPCConnectionIfNecessary
{
  dispatch_assert_queue_V2(*(self + 8));
  if (!*(self + 16))
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.systemstatus.activityattribution" options:0];
    v3 = STDynamicAttributionXPCServerInterface();
    [v2 setRemoteObjectInterface:v3];

    objc_storeStrong((self + 16), v2);
    objc_initWeak(&location, self);
    [v2 setInterruptionHandler:&__block_literal_global_13];
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __85__STDynamicActivityAttributionPublisher__internalQueue_setupXPCConnectionIfNecessary__block_invoke_14;
    v7 = &unk_1E85DDD78;
    objc_copyWeak(&v8, &location);
    [v2 setInvalidationHandler:&v4];
    [v2 resume];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __85__STDynamicActivityAttributionPublisher__internalQueue_setupXPCConnectionIfNecessary__block_invoke()
{
  v0 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DA9C2000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

void __85__STDynamicActivityAttributionPublisher__internalQueue_setupXPCConnectionIfNecessary__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__STDynamicActivityAttributionPublisher__tearDownXPCConnection__block_invoke;
    v5[3] = &unk_1E85DE068;
    v5[4] = v2;
    dispatch_async(v3, v5);
  }

  v4 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_DEFAULT, "InvalidationHandler called, tearing down xpc connection", v5, 2u);
  }
}

void __63__STDynamicActivityAttributionPublisher__resendAttributionData__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 24);
    [(STDynamicActivityAttributionPublisher *)v1 _internalQueue_sendAttributionKey:v3 andApp:v2];
  }
}

void __63__STDynamicActivityAttributionPublisher__tearDownXPCConnection__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void __82__STDynamicActivityAttributionPublisher__internalQueue_sendAttributionKey_andApp___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_ERROR, "Failed to setCurrentAttributionKey with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __110__STDynamicActivityAttributionPublisher__internalQueue_sendAttributionLocalizableKey_maskingClientAuditToken___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_ERROR, "Failed to setCurrentAttributionLocalizableKey with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __112__STDynamicActivityAttributionPublisher__internalQueue_sendAttributionStringWithFormat_maskingClientAuditToken___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_ERROR, "Failed to setCurrentAttributionStringWithFormat with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __109__STDynamicActivityAttributionPublisher__internalQueue_sendAttributionWebsiteString_maskingClientAuditToken___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = STSystemStatusLogDynamicAttribution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_ERROR, "Failed to setCurrentAttributionWebsiteString with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end