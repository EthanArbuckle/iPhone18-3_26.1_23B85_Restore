@interface SPBTFindingSession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPBTFindingSession)initWithConfig:(id)config;
- (SPBTFindingXPCProtocol)proxy;
- (void)findingSessionError:(id)error;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)startFastAdvertisingForBeacon:(id)beacon completion:(id)completion;
- (void)startFindingBeacon:(id)beacon completion:(id)completion;
- (void)stopFastAdvertisingForBeacon:(id)beacon completion:(id)completion;
- (void)stopFindingBeacon:(id)beacon completion:(id)completion;
- (void)updateConfig:(id)config;
- (void)updatedBTRSSIMeasurement:(id)measurement;
- (void)updatedBTRSSIResult:(id)result;
@end

@implementation SPBTFindingSession

- (SPBTFindingSession)initWithConfig:(id)config
{
  v19 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v6 = LogCategory_BTFinding();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = configCopy;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPBTFindingSession: initWithConfig %@", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = SPBTFindingSession;
  v7 = [(SPBTFindingSession *)&v16 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPBTFindingSession", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPBTFindingSession.callback", v11);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v12;

    objc_storeStrong(&v7->_config, config);
    [(SPBTFindingSession *)v7 updateConfig:configCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)interruptionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_BTFinding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBTFindingSession: interruptionHandler %@", buf, 0xCu);
  }

  sessionInvalidatedCallback = [(SPBTFindingSession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPBTFindingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SPBTFindingSession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SPBTFindingSession_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (void)invalidationHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_BTFinding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBTFindingSession: invalidationHandler %@", buf, 0xCu);
  }

  [(SPBTFindingSession *)self setSession:0];
  sessionInvalidatedCallback = [(SPBTFindingSession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPBTFindingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SPBTFindingSession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SPBTFindingSession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPBTFindingXPCProtocol)proxy
{
  location[3] = *MEMORY[0x277D85DE8];
  queue = [(SPBTFindingSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPBTFindingSession *)self session];

  if (!session)
  {
    serviceDescription = [(SPBTFindingSession *)self serviceDescription];

    if (!serviceDescription)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __27__SPBTFindingSession_proxy__block_invoke;
      aBlock[3] = &unk_279B58B10;
      objc_copyWeak(&v29, location);
      v6 = _Block_copy(aBlock);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __27__SPBTFindingSession_proxy__block_invoke_2;
      v26[3] = &unk_279B58B10;
      objc_copyWeak(&v27, location);
      v7 = _Block_copy(v26);
      v8 = objc_alloc(MEMORY[0x277D07BA0]);
      v9 = +[SPBTFindingSession exportedInterface];
      v10 = +[SPBTFindingSession remoteInterface];
      v11 = [v8 initWithMachServiceName:@"com.apple.searchparty.btfindingsession" options:0 exportedObject:self exportedInterface:v9 remoteObjectInterface:v10 interruptionHandler:v6 invalidationHandler:v7];
      [(SPBTFindingSession *)self setServiceDescription:v11];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }

    v12 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription2 = [(SPBTFindingSession *)self serviceDescription];
    v14 = [v12 initWithServiceDescription:serviceDescription2];
    [(SPBTFindingSession *)self setSession:v14];

    v15 = LogCategory_BTFinding();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription3 = [(SPBTFindingSession *)self serviceDescription];
      machService = [serviceDescription3 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = machService;
      _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPBTFindingSession: Establishing XPC connection to %@", location, 0xCu);
    }

    session2 = [(SPBTFindingSession *)self session];
    [session2 resume];

    v19 = LogCategory_BTFinding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription4 = [(SPBTFindingSession *)self serviceDescription];
      machService2 = [serviceDescription4 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = machService2;
      _os_log_impl(&dword_2643D0000, v19, OS_LOG_TYPE_DEFAULT, "SPBTFindingSession: Established XPC connection to %@", location, 0xCu);
    }
  }

  session3 = [(SPBTFindingSession *)self session];
  proxy = [session3 proxy];

  v24 = *MEMORY[0x277D85DE8];

  return proxy;
}

void __27__SPBTFindingSession_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __27__SPBTFindingSession_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_3 != -1)
  {
    +[SPBTFindingSession exportedInterface];
  }

  v3 = exportedInterface_interface_3;

  return v3;
}

uint64_t __39__SPBTFindingSession_exportedInterface__block_invoke()
{
  exportedInterface_interface_3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875FAFB8];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_5 != -1)
  {
    +[SPBTFindingSession remoteInterface];
  }

  v3 = remoteInterface_interface_4;

  return v3;
}

uint64_t __37__SPBTFindingSession_remoteInterface__block_invoke()
{
  remoteInterface_interface_4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606CD0];

  return MEMORY[0x2821F96F8]();
}

- (void)updateConfig:(id)config
{
  configCopy = config;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SPBTFindingSession_updateConfig___block_invoke;
  v6[3] = &unk_279B58C78;
  v6[4] = self;
  v7 = configCopy;
  v5 = configCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBTFindingSession.updateConfig", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __35__SPBTFindingSession_updateConfig___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BTFinding();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession updateConfig]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SPBTFindingSession_updateConfig___block_invoke_70;
  v5[3] = &unk_279B58C78;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void __35__SPBTFindingSession_updateConfig___block_invoke_70(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 updateConfig:*(a1 + 40) completion:&__block_literal_global_73];
}

void __35__SPBTFindingSession_updateConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_BTFinding();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__SPBTFindingSession_updateConfig___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession updateConfig] completion", v5, 2u);
  }
}

- (void)startFindingBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBTFindingSession.start", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BTFinding();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession start]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_74;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_2;
  v4[3] = &unk_279B58B58;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 start:v3 completion:v4];
}

void __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_BTFinding();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession start] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startFastAdvertisingForBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBTFindingSession.startFastAdvertising", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BTFinding();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession startFastAdvertising]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_75;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_75(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_2;
  v4[3] = &unk_279B58B58;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 startFastAdvertisingForBeacon:v3 completion:v4];
}

void __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_BTFinding();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession startFastAdvertising] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopFastAdvertisingForBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBTFindingSession.stopFastAdvertising", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BTFinding();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession stopFastAdvertising]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_76;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_76(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_2;
  v4[3] = &unk_279B58B58;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 stopFastAdvertisingForBeacon:v3 completion:v4];
}

void __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_BTFinding();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession stopFastAdvertising] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopFindingBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBTFindingSession.stop", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BTFinding();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession stop]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_77;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_77(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_2;
  v4[3] = &unk_279B58B58;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 stop:v3 completion:v4];
}

void __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_BTFinding();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPBTFindingSession stop] completion)", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updatedBTRSSIMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v5 = LogCategory_BTFinding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "updatedBTRSSIMeasurement() called from daemon", buf, 2u);
  }

  callbackQueue = [(SPBTFindingSession *)self callbackQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SPBTFindingSession_updatedBTRSSIMeasurement___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = measurementCopy;
  v7 = measurementCopy;
  dispatch_async(callbackQueue, v8);
}

void __47__SPBTFindingSession_updatedBTRSSIMeasurement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) didUpdateBTRSSIMeasurementCallback];
  v2[2](v2, *(a1 + 40));
}

- (void)updatedBTRSSIResult:(id)result
{
  resultCopy = result;
  v5 = LogCategory_BTFinding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "updatedBTRSSIResult() called from daemon", buf, 2u);
  }

  callbackQueue = [(SPBTFindingSession *)self callbackQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SPBTFindingSession_updatedBTRSSIResult___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(callbackQueue, v8);
}

void __42__SPBTFindingSession_updatedBTRSSIResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) didUpdateBTRSSIResultCallback];
  v2[2](v2, *(a1 + 40));
}

- (void)findingSessionError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = LogCategory_BTFinding();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = errorCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[findingSessionError called from client]. Error %{public}@", buf, 0xCu);
  }

  callbackQueue = [(SPBTFindingSession *)self callbackQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SPBTFindingSession_findingSessionError___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(callbackQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SPBTFindingSession_findingSessionError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findingSessionErrorCallback];
  v2[2](v2, *(a1 + 40));
}

void __35__SPBTFindingSession_updateConfig___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPBTFindingSession updateConfig] completion. Error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__SPBTFindingSession_startFindingBeacon_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPBTFindingSession start] completion. Error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SPBTFindingSession_startFastAdvertisingForBeacon_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPBTFindingSession startFastAdvertising] completion. Error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__SPBTFindingSession_stopFastAdvertisingForBeacon_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPBTFindingSession stopFastAdvertising] completion. Error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__SPBTFindingSession_stopFindingBeacon_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPBTFindingSession stop] completion. Error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end