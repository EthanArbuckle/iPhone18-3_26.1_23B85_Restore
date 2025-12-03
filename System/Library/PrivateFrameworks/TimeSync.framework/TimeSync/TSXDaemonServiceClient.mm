@interface TSXDaemonServiceClient
+ (id)sharedDaemonServiceClient;
- (BOOL)isMSGServiceAvailable;
- (TSXDaemonServiceClient)init;
- (id)exportedObject;
- (id)propertiesForRegistryEntryID:(unint64_t)d;
- (id)propertyForRegistryEntryID:(unint64_t)d key:(id)key;
- (unsigned)startMSGExternalSync:(id *)sync;
- (void)dealloc;
- (void)interruptedConnection;
- (void)invalidatedConnection;
@end

@implementation TSXDaemonServiceClient

+ (id)sharedDaemonServiceClient
{
  if (sharedDaemonServiceClient_onceToken != -1)
  {
    +[TSXDaemonServiceClient sharedDaemonServiceClient];
  }

  os_unfair_lock_lock(&_sharedInstanceLock);
  v2 = _sharedInstance;
  if (!_sharedInstance)
  {
    v3 = objc_alloc_init(TSXDaemonServiceClient);
    v4 = _sharedInstance;
    _sharedInstance = v3;

    v2 = _sharedInstance;
  }

  v5 = v2;
  os_unfair_lock_unlock(&_sharedInstanceLock);

  return v5;
}

uint64_t __51__TSXDaemonServiceClient_sharedDaemonServiceClient__block_invoke()
{
  _sharedInstanceLock = 0;
  _gIORegSignpostLog = os_log_create("TimeSync", "iokit_get_property_proxy_client");

  return MEMORY[0x2821F96F8]();
}

- (TSXDaemonServiceClient)init
{
  v27.receiver = self;
  v27.super_class = TSXDaemonServiceClient;
  v2 = [(TSXDaemonServiceClient *)&v27 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.TimeSync.%@", v5];

    v7 = dispatch_queue_create([v6 UTF8String], 0);
    v8 = _dispatchQueue_0;
    _dispatchQueue_0 = v7;

    v9 = objc_alloc(MEMORY[0x277CCAE80]);
    serviceName = [objc_opt_class() serviceName];
    v11 = [v9 initWithMachServiceName:serviceName options:4096];
    serverConnection = v2->_serverConnection;
    v2->_serverConnection = v11;

    v13 = MEMORY[0x277CCAE90];
    serverProtocol = [objc_opt_class() serverProtocol];
    v15 = [v13 interfaceWithProtocol:serverProtocol];
    [(NSXPCConnection *)v2->_serverConnection setRemoteObjectInterface:v15];

    v16 = MEMORY[0x277CCAE90];
    clientProtocol = [objc_opt_class() clientProtocol];
    v18 = [v16 interfaceWithProtocol:clientProtocol];
    [(NSXPCConnection *)v2->_serverConnection setExportedInterface:v18];

    exportedObject = [(TSXDaemonServiceClient *)v2 exportedObject];
    [(NSXPCConnection *)v2->_serverConnection setExportedObject:exportedObject];

    objc_initWeak(&location, v2);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__TSXDaemonServiceClient_init__block_invoke;
    v24[3] = &unk_279DBD6F0;
    objc_copyWeak(&v25, &location);
    [(NSXPCConnection *)v2->_serverConnection setInterruptionHandler:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __30__TSXDaemonServiceClient_init__block_invoke_92;
    v22[3] = &unk_279DBD6F0;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v2->_serverConnection setInvalidationHandler:v22];
    [(NSXPCConnection *)v2->_serverConnection resume];
    remoteObjectProxy = [(NSXPCConnection *)v2->_serverConnection remoteObjectProxy];
    [remoteObjectProxy openXPCConnection];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__TSXDaemonServiceClient_init__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): Interruption Handler", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    [WeakRetained interruptedConnection];
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__TSXDaemonServiceClient_init__block_invoke_92(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): Invalidation Handler", &v7, 0xCu);
  }

  if (WeakRetained)
  {
    WeakRetained[9] = 1;
    [WeakRetained invalidatedConnection];
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)interruptedConnection
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSXDaemonServiceClient_interruptedConnection__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__TSXDaemonServiceClient_interruptedConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) serverConnection];
  v4 = [v3 remoteObjectProxy];
  [v4 openXPCConnection];

  objc_autoreleasePoolPop(v2);
}

- (void)invalidatedConnection
{
  os_unfair_lock_lock(&_sharedInstanceLock);
  v3 = _sharedInstance;
  if (_sharedInstance == self)
  {
    _sharedInstance = 0;
  }

  os_unfair_lock_unlock(&_sharedInstanceLock);
}

- (id)exportedObject
{
  v3 = objc_alloc_init(TSXDaemonServiceClientExported);
  [(TSXDaemonServiceClientExported *)v3 setObject:self];

  return v3;
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_95(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  objc_autoreleasePoolPop(v6);
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_98(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  objc_autoreleasePoolPop(v6);
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_cold_1(v4);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v5);
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_101(void *a1, char a2, unsigned int *a3, void *a4)
{
  v13 = a4;
  v8 = objc_autoreleasePoolPush();
  *(*(a1[4] + 8) + 24) = a2;
  if (v13)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }

  else if (a3)
  {
    v9 = a1[6];
    if (v9)
    {
      v10 = a1[7];
      if (v10)
      {
        v11 = *v10;
        v12 = a3[32];
        if (v11 >= v12)
        {
          memmove(v9, a3, 8 * v12);
          *a1[7] = a3[32];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (id)propertiesForRegistryEntryID:(unint64_t)d
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v7 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_104];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_105;
  v10[3] = &unk_279DBE140;
  v10[4] = &v11;
  [v7 propertiesForRegistryEntryID:d signpostID:self reply:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_105(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (id)propertyForRegistryEntryID:(unint64_t)d key:(id)key
{
  keyCopy = key;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v9 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_108];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_109;
  v12[3] = &unk_279DBE140;
  v12[4] = &v13;
  [v9 propertyForRegistryEntryID:d signpostID:self key:keyCopy reply:v12];
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_109(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClient(%{public}@): dealloc", buf, 0xCu);
  }

  self->_invalidated = 1;
  [(NSXPCConnection *)self->_serverConnection invalidate];
  v6.receiver = self;
  v6.super_class = TSXDaemonServiceClient;
  [(TSXDaemonServiceClient *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMSGServiceAvailable
{
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v4 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_113];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_114;
  v6[3] = &unk_279DBE168;
  v6[4] = &v7;
  [v4 isMSGServiceAvailable:v6];
  LOBYTE(serverConnection) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return serverConnection;
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_114(uint64_t a1, char a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

- (unsigned)startMSGExternalSync:(id *)sync
{
  serverConnection = [(TSXDaemonServiceClient *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  v6 = [remoteObjectProxy synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_117];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -536870212;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_118;
  v8[3] = &unk_279DBE190;
  v8[4] = &v9;
  [v6 startMSGExternalSync:sync reply:v8];
  LODWORD(sync) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);

  return sync;
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_118(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_cold_1(v2);
  }

  objc_autoreleasePoolPop(v3);
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_122(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;

  objc_autoreleasePoolPop(v4);
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870209 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_123(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870209 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_125(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870209 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870209 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_127(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_cold_1(v3);
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870209 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v4);
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_autoreleasePoolPop(v6);
}

void __79__TSXDaemonServiceClient_openDaemonClientWithRegistryEntryID_clientType_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __50__TSXDaemonServiceClient_closeDaemonClient_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __169__TSXDaemonServiceClient_callMethodForDaemonClient_clientMethodSelector_scalarInputs_scalarInputCount_structInput_structInputSize_scalarOutputs_scalarOutputCount_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__TSXDaemonServiceClient_propertiesForRegistryEntryID___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__TSXDaemonServiceClient_propertyForRegistryEntryID_key___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__TSXDaemonServiceClient_isMSGServiceAvailable__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__TSXDaemonServiceClient_startMSGExternalSync___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__TSXDaemonServiceClient_stopMSGExternalSync___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __44__TSXDaemonServiceClient_getMSGClock_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__TSXDaemonServiceClient_addMSGClock_withNominalSyncDuration_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__TSXDaemonServiceClient_addMSGClockRef_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__TSXDaemonServiceClient_removeMSGClock_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

void __86__TSXDaemonServiceClient_restoreMSGClockSession_withNominalSyncDuration_refCnt_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_26F080000, MEMORY[0x277D86220], v2, "TSXDaemonServiceClient %s error during call %s", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end