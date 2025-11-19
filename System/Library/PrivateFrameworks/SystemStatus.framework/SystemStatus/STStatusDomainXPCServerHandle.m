@interface STStatusDomainXPCServerHandle
+ (id)sharedMachServiceServerHandle;
- (STStatusDomainXPCServerHandle)init;
- (STStatusDomainXPCServerHandle)initWithXPCConnectionProvider:(id)a3 serverLaunchObservable:(id)a4;
- (dispatch_queue_t)_internalQueue_dataForDomain:(dispatch_queue_t *)a1;
- (id)dataForDomain:(unint64_t)a3 client:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)serverDataForDomains:(id)a3 preferredLocalizations:(id)a4;
- (id)succinctDescription;
- (void)_internalQueue_sendClientsData:(unint64_t)a3 forDomain:(void *)a4 withChangeContext:;
- (void)_internalQueue_setupXPCConnectionIfNecessary;
- (void)_reregisterForDomainsIfNecessary;
- (void)_tearDownXPCConnection;
- (void)dealloc;
- (void)didObserveServerLaunch:(id)a3;
- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5;
- (void)observeDiff:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5;
- (void)registerClient:(id)a3 forDomain:(unint64_t)a4;
- (void)removeClient:(id)a3 forDomain:(unint64_t)a4;
- (void)reportUserInteraction:(id)a3 forClient:(id)a4 domain:(unint64_t)a5;
@end

@implementation STStatusDomainXPCServerHandle

+ (id)sharedMachServiceServerHandle
{
  if (qword_1ED7F5CA8 != -1)
  {
    dispatch_once(&qword_1ED7F5CA8, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_5;

  return v3;
}

uint64_t __62__STStatusDomainXPCServerHandle_sharedMachServiceServerHandle__block_invoke()
{
  v0 = objc_alloc_init(STStatusDomainXPCServerHandle);
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (STStatusDomainXPCServerHandle)init
{
  v3 = +[STServerLaunchMonitor sharedInstance];
  v4 = [(STStatusDomainXPCServerHandle *)self initWithXPCConnectionProvider:&__block_literal_global_3 serverLaunchObservable:v3];

  return v4;
}

id __37__STStatusDomainXPCServerHandle_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.systemstatus" options:0];

  return v0;
}

- (STStatusDomainXPCServerHandle)initWithXPCConnectionProvider:(id)a3 serverLaunchObservable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = STStatusDomainXPCServerHandle;
  v8 = [(STStatusDomainXPCServerHandle *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    dataByDomain = v8->_dataByDomain;
    v8->_dataByDomain = v9;

    v11 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    clientsByDomain = v8->_clientsByDomain;
    v8->_clientsByDomain = v11;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = Serial;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = SerialWithQoS;

    v17 = [v6 copy];
    xpcConnectionProvider = v8->_xpcConnectionProvider;
    v8->_xpcConnectionProvider = v17;

    objc_storeStrong(&v8->_serverLaunchObservable, a4);
    [(STServerLaunchObservable *)v8->_serverLaunchObservable addObserver:v8];
    v21 = v8;
    v19 = BSLogAddStateCaptureBlockWithTitle();
  }

  return v8;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_serverLaunchObservable;
  }

  [(STStatusDomainXPCServerHandle *)self removeObserver:v2];
  v3.receiver = v2;
  v3.super_class = STStatusDomainXPCServerHandle;
  [(STStatusDomainXPCServerHandle *)&v3 dealloc];
}

- (id)dataForDomain:(unint64_t)a3 client:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__STStatusDomainXPCServerHandle_dataForDomain_client___block_invoke;
  block[3] = &unk_1E85DE0D8;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(internalQueue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __54__STStatusDomainXPCServerHandle_dataForDomain_client___block_invoke(uint64_t a1)
{
  v5 = [(STStatusDomainXPCServerHandle *)*(a1 + 32) _internalQueue_dataForDomain:?];
  v2 = [v5 copyWithZone:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (dispatch_queue_t)_internalQueue_dataForDomain:(dispatch_queue_t *)a1
{
  if (a1)
  {
    v4 = a1;
    dispatch_assert_queue_V2(a1[3]);
    a1 = [v4[1] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)registerClient:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__STStatusDomainXPCServerHandle_registerClient_forDomain___block_invoke;
  block[3] = &unk_1E85DE100;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

void __58__STStatusDomainXPCServerHandle_registerClient_forDomain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v10 = v2;
  v3 = [v10 objectForKey:*(a1 + 48)];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [v10 setObject:v3 forKey:*(a1 + 48)];
  }

  [v3 addObject:*(a1 + 40)];
  if ([v3 count] == 1)
  {
    [(STStatusDomainXPCServerHandle *)*(a1 + 32) _internalQueue_setupXPCConnectionIfNecessary];
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[6];
    }

    v5 = MEMORY[0x1E696AD98];
    v6 = *(a1 + 48);
    v7 = v4;
    v8 = [v5 numberWithUnsignedInteger:v6];
    v9 = [*(a1 + 40) preferredLocalizations];
    [v7 observeDomain:v8 withPreferredLocalizations:v9];
  }
}

- (void)_internalQueue_setupXPCConnectionIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    if (!*(a1 + 40))
    {
      v2 = *(*(a1 + 56) + 16);
      v3 = *(a1 + 56);
      v4 = v2();

      v5 = STStatusDomainXPCServerInterface();
      [v4 setRemoteObjectInterface:v5];

      v6 = STStatusDomainXPCClientInterface();
      [v4 setExportedInterface:v6];

      [v4 setExportedObject:a1];
      objc_storeStrong((a1 + 40), v4);
      objc_initWeak(&location, a1);
      [v4 setInterruptionHandler:&__block_literal_global_30];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __77__STStatusDomainXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_31;
      v11[3] = &unk_1E85DDD78;
      objc_copyWeak(&v12, &location);
      [v4 setInvalidationHandler:v11];
      [v4 resume];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __77__STStatusDomainXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_32;
      v9[3] = &unk_1E85DE178;
      objc_copyWeak(&v10, &location);
      v7 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v9];
      v8 = *(a1 + 48);
      *(a1 + 48) = v7;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)removeClient:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__STStatusDomainXPCServerHandle_removeClient_forDomain___block_invoke;
  block[3] = &unk_1E85DE100;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(internalQueue, block);
}

uint64_t __56__STStatusDomainXPCServerHandle_removeClient_forDomain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v12 = [v3 objectForKey:a1[6]];
  [v12 removeObject:a1[5]];
  v4 = [v12 count];
  v5 = v12;
  if (!v4)
  {
    v6 = a1[4];
    if (v6)
    {
      v6 = v6[6];
    }

    v7 = MEMORY[0x1E696AD98];
    v8 = a1[6];
    v9 = v6;
    v10 = [v7 numberWithUnsignedInteger:v8];
    [v9 stopObservingDomain:v10];

    v5 = v12;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)reportUserInteraction:(id)a3 forClient:(id)a4 domain:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (STIsValidUserInteractionForStatusDomain(v8))
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__STStatusDomainXPCServerHandle_reportUserInteraction_forClient_domain___block_invoke;
    v11[3] = &unk_1E85DE128;
    v11[4] = self;
    v14 = a5;
    v12 = v9;
    v13 = v8;
    dispatch_sync(internalQueue, v11);
  }
}

void __72__STStatusDomainXPCServerHandle_reportUserInteraction_forClient_domain___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = a1[7];
  v4 = v2;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 containsObject:a1[5]];

  if (v6)
  {
    v7 = a1[4];
    if (v7)
    {
      v8 = *(v7 + 48);
    }

    else
    {
      v8 = 0;
    }

    v9 = a1[6];
    v10 = a1[7];

    [v8 reportUserInteraction:v9 forDomain:v10];
  }
}

- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8 || STIsValidDataForStatusDomain(v8))
  {
    if (v9)
    {
      if (STIsValidDataChangeContextForStatusDomain(v9))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__STStatusDomainXPCServerHandle_observeData_forDomain_withChangeContext___block_invoke;
    block[3] = &unk_1E85DE150;
    v17 = a4;
    v14 = v8;
    v9 = v11;
    v15 = v9;
    v16 = self;
    v18 = v8 == 0;
    dispatch_sync(internalQueue, block);
  }
}

void __73__STStatusDomainXPCServerHandle_observeData_forDomain_withChangeContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v2 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = STSystemStatusDescriptionForDomain(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v13 = 138543874;
      v14 = v3;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_DEFAULT, "Received data for %{public}@ domain: %{public}@ -- context: %{public}@", &v13, 0x20u);
    }
  }

  v6 = [(STStatusDomainXPCServerHandle *)*(a1 + 48) _internalQueue_dataForDomain:?];
  v7 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    if (v7)
    {
      v8 = v7[1];
    }

    else
    {
      v8 = 0;
    }

    [v8 removeObjectForKey:*(a1 + 56)];
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v7)
    {
      v7 = v7[1];
    }

    v9 = *(a1 + 32);
    v10 = v7;
    v11 = [v9 mutableCopyWithZone:0];
    [v10 setObject:v11 forKey:*(a1 + 56)];

    if (!v6)
    {
LABEL_15:
      if (*(a1 + 64))
      {
        goto LABEL_18;
      }
    }
  }

  if (([v6 isEqual:*(a1 + 32)] & 1) == 0)
  {
    [(STStatusDomainXPCServerHandle *)*(a1 + 48) _internalQueue_sendClientsData:*(a1 + 56) forDomain:*(a1 + 40) withChangeContext:?];
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_internalQueue_sendClientsData:(unint64_t)a3 forDomain:(void *)a4 withChangeContext:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
    {
      dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
    }

    if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
    {
      v9 = STSystemStatusLogObservation();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = STSystemStatusDescriptionForDomain(a3);
        *buf = 138543874;
        v22 = v10;
        v23 = 2114;
        v24 = v7;
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_DEFAULT, "Sending data to observers for %{public}@ domain: %{public}@ -- context: %{public}@", buf, 0x20u);
      }
    }

    v11 = [*(a1 + 16) objectForKey:a3];
    v12 = [v11 copy];

    v13 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__STStatusDomainXPCServerHandle__internalQueue_sendClientsData_forDomain_withChangeContext___block_invoke;
    v16[3] = &unk_1E85DE128;
    v17 = v12;
    v18 = v7;
    v20 = a3;
    v19 = v8;
    v14 = v12;
    dispatch_async(v13, v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)observeDiff:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (STIsValidDiffForStatusDomain(v8) && ([v8 isEmpty] & 1) == 0)
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__STStatusDomainXPCServerHandle_observeDiff_forDomain_withChangeContext___block_invoke;
    v11[3] = &unk_1E85DE128;
    v15 = a4;
    v12 = v8;
    v13 = v9;
    v14 = self;
    dispatch_sync(internalQueue, v11);
  }
}

void __73__STStatusDomainXPCServerHandle_observeDiff_forDomain_withChangeContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
  {
    v2 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = STSystemStatusDescriptionForDomain(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v10 = 138543874;
      v11 = v3;
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_DEFAULT, "Received diff for %{public}@ domain: %{public}@ -- context: %{public}@", &v10, 0x20u);
    }
  }

  v6 = [(STStatusDomainXPCServerHandle *)*(a1 + 48) _internalQueue_dataForDomain:?];
  v7 = v6;
  if (v6)
  {
    [v6 applyDiff:*(a1 + 32)];
    v8 = [v7 copyWithZone:0];
    [(STStatusDomainXPCServerHandle *)*(a1 + 48) _internalQueue_sendClientsData:v8 forDomain:*(a1 + 56) withChangeContext:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didObserveServerLaunch:(id)a3
{
  v4 = STSystemStatusLogObservation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_DEFAULT, "Server launched, re-registering to observe domains if necessary", v5, 2u);
  }

  [(STStatusDomainXPCServerHandle *)self _reregisterForDomainsIfNecessary];
}

- (void)_reregisterForDomainsIfNecessary
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__STStatusDomainXPCServerHandle__reregisterForDomainsIfNecessary__block_invoke;
    block[3] = &unk_1E85DE068;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

- (id)serverDataForDomains:(id)a3 preferredLocalizations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke;
  v13[3] = &unk_1E85DE218;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke(uint64_t a1)
{
  [(STStatusDomainXPCServerHandle *)*(a1 + 32) _internalQueue_setupXPCConnectionIfNecessary];
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = v2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_2;
  v14[3] = &unk_1E85DE178;
  objc_copyWeak(&v15, &location);
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_20;
  v12[3] = &unk_1E85DE1C8;
  v13 = *(a1 + 40);
  v5 = MEMORY[0x1E1274600](v12);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_25;
  v9[3] = &unk_1E85DE1F0;
  v11 = *(a1 + 56);
  v8 = v5;
  v10 = v8;
  [v4 serverDataForDomains:v6 preferredLocalizations:v7 reply:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = STSystemStatusLogObservation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 localizedDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get server proxy in serverDataForDomains: -- error: %{public}@", &v8, 0xCu);
  }

  [(STStatusDomainXPCServerHandle *)WeakRetained _tearDownXPCConnection];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownXPCConnection
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__STStatusDomainXPCServerHandle__tearDownXPCConnection__block_invoke;
    block[3] = &unk_1E85DE068;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

id __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_20(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v4 = STValidStatusDomainDataTypes();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_2_22;
    v11[3] = &unk_1E85DE1A0;
    v5 = v4;
    v12 = v5;
    v13 = &v14;
    [v3 enumerateKeysAndObjectsUsingBlock:v11];
    if (*(v15 + 24) == 1)
    {
      v6 = v3;
    }

    else
    {
      v7 = STSystemStatusLogDataIntegrity();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v19 = v10;
        _os_log_error_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_ERROR, "decoded invalid server data for domains: %{public}@", buf, 0xCu);
      }

      v6 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

void __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_2_22(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || ([*(a1 + 32) containsObject:objc_opt_class()] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __77__STStatusDomainXPCServerHandle_serverDataForDomains_preferredLocalizations___block_invoke_25(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)succinctDescription
{
  v2 = [(STStatusDomainXPCServerHandle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusDomainXPCServerHandle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STStatusDomainXPCServerHandle *)self succinctDescriptionBuilder];
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke;
  block[3] = &unk_1E85DE268;
  v7 = v5;
  v12 = v7;
  v13 = v4;
  v14 = self;
  v8 = v4;
  dispatch_sync(internalQueue, block);
  v9 = v7;

  return v7;
}

void __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v3[3] = &unk_1E85DDD00;
  v3[4] = a1[6];
  v4 = v1;
  [v4 appendBodySectionWithName:0 multilinePrefix:v2 block:v3];
}

void __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v4[3] = &unk_1E85DE240;
  v5 = *(a1 + 40);
  v3 = v2;
  [v3 enumerateWithBlock:v4];
}

void __71__STStatusDomainXPCServerHandle_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = STSystemStatusDescriptionForDomain(a2);
  v7 = [v5 appendObject:v8 withName:v6];
}

void __92__STStatusDomainXPCServerHandle__internalQueue_sendClientsData_forDomain_withChangeContext___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) observeData:*(a1 + 40) forDomain:*(a1 + 56) withChangeContext:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __77__STStatusDomainXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke()
{
  v0 = STSystemStatusLogObservation();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DA9C2000, v0, OS_LOG_TYPE_DEFAULT, "Server connection interrupted", v1, 2u);
  }
}

void __77__STStatusDomainXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = STSystemStatusLogObservation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1DA9C2000, v2, OS_LOG_TYPE_DEFAULT, "Server connection invalidated", v3, 2u);
  }

  [(STStatusDomainXPCServerHandle *)WeakRetained _tearDownXPCConnection];
}

void __77__STStatusDomainXPCServerHandle__internalQueue_setupXPCConnectionIfNecessary__block_invoke_32(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = STSystemStatusLogObservation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 localizedDescription];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "Server proxy error, re-registering if necessary: %{public}@", &v8, 0xCu);
  }

  [(STStatusDomainXPCServerHandle *)WeakRetained _reregisterForDomainsIfNecessary];
  v7 = *MEMORY[0x1E69E9840];
}

void __65__STStatusDomainXPCServerHandle__reregisterForDomainsIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 24));
    v2 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
    v3 = [v2 valueForEntitlement:@"com.apple.systemstatus.domains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 count];

      if (v4)
      {
LABEL_6:
        [(STStatusDomainXPCServerHandle *)v1 _internalQueue_setupXPCConnectionIfNecessary];
        v5 = *(v1 + 16);
        if ([v5 count])
        {
          v6 = *(v1 + 48);
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __79__STStatusDomainXPCServerHandle__internalQueue_reregisterForDomainsIfNecessary__block_invoke;
          v8[3] = &unk_1E85DE290;
          v9 = v6;
          v7 = v6;
          [v5 enumerateWithBlock:v8];
        }

LABEL_11:

        return;
      }
    }

    else
    {
    }

    v5 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_fault_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_FAULT, "Server connection rejected due to missing entitlement", v8, 2u);
    }

    goto LABEL_11;
  }
}

void __79__STStatusDomainXPCServerHandle__internalQueue_reregisterForDomainsIfNecessary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 anyObject];
  if (v5)
  {
    v6 = *(a1 + 32);
    v9 = v5;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v8 = [v9 preferredLocalizations];
    [v6 observeDomain:v7 withPreferredLocalizations:v8];

    v5 = v9;
  }
}

void __55__STStatusDomainXPCServerHandle__tearDownXPCConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((v1 + 40), 0);
  }
}

@end