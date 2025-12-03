@interface SPUnknownDiscoverySession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPUnknownDiscoverySession)initWithPreviousState:(id)state;
- (SPUnknownDiscoveryXPCProtocol)proxy;
- (void)discoveredUnknownAccessory:(id)accessory;
- (void)fetchEncryptedPayloadForUnknownBeacon:(id)beacon completion:(id)completion;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)lostUnknownAccessory:(id)accessory;
- (void)startDiscoveryWithCompletion:(id)completion;
- (void)startDiscoveryWithScanRate:(int64_t)rate timeout:(double)timeout completion:(id)completion;
- (void)stop;
- (void)stopDiscoveryWithCompletion:(id)completion;
- (void)unknownAccessoryDiscoveryError:(id)error;
- (void)unknownAccessoryDiscoveryFinished;
@end

@implementation SPUnknownDiscoverySession

- (SPUnknownDiscoverySession)initWithPreviousState:(id)state
{
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = SPUnknownDiscoverySession;
  v5 = [(SPUnknownDiscoverySession *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPUnknownDiscoverySession", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPUnknownDiscoverySession.callback", v9);
    callbackQueue = v5->_callbackQueue;
    v5->_callbackQueue = v10;

    if (stateCopy)
    {
      v12 = stateCopy;
      state = v5->_state;
      v5->_state = v12;
    }

    else
    {
      v14 = [SPUnknownDiscoverySessionState alloc];
      state = objc_alloc_init(MEMORY[0x277CBEB98]);
      v15 = [(SPUnknownDiscoverySessionState *)v14 initWithUnknownAccessories:state];
      v16 = v5->_state;
      v5->_state = v15;
    }
  }

  return v5;
}

- (void)interruptionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPUnknownDiscoverySession: interruptionHandler %@", buf, 0xCu);
  }

  sessionInvalidatedCallback = [(SPUnknownDiscoverySession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPUnknownDiscoverySession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPUnknownDiscoverySession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPUnknownDiscoverySession_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (void)invalidationHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPUnknownDiscoverySession: invalidationHandler %@", buf, 0xCu);
  }

  [(SPUnknownDiscoverySession *)self setSession:0];
  sessionInvalidatedCallback = [(SPUnknownDiscoverySession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPUnknownDiscoverySession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPUnknownDiscoverySession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPUnknownDiscoverySession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPUnknownDiscoveryXPCProtocol)proxy
{
  v28 = *MEMORY[0x277D85DE8];
  queue = [(SPUnknownDiscoverySession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPUnknownDiscoverySession *)self session];

  if (!session)
  {
    serviceDescription = [(SPUnknownDiscoverySession *)self serviceDescription];

    if (!serviceDescription)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__SPUnknownDiscoverySession_proxy__block_invoke;
      aBlock[3] = &unk_279B58C28;
      aBlock[4] = self;
      v6 = _Block_copy(aBlock);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __34__SPUnknownDiscoverySession_proxy__block_invoke_2;
      v24[3] = &unk_279B58C28;
      v24[4] = self;
      v7 = _Block_copy(v24);
      v8 = objc_alloc(MEMORY[0x277D07BA0]);
      v9 = +[SPUnknownDiscoverySession exportedInterface];
      v10 = +[SPUnknownDiscoverySession remoteInterface];
      v11 = [v8 initWithMachServiceName:@"com.apple.icloud.searchpartyd.unknowndiscoverysession" options:0 exportedObject:self exportedInterface:v9 remoteObjectInterface:v10 interruptionHandler:v6 invalidationHandler:v7];
      serviceDescription = self->_serviceDescription;
      self->_serviceDescription = v11;
    }

    v13 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription2 = [(SPUnknownDiscoverySession *)self serviceDescription];
    v15 = [v13 initWithServiceDescription:serviceDescription2];
    [(SPUnknownDiscoverySession *)self setSession:v15];

    v16 = LogCategory_UnknownDiscovery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription3 = [(SPUnknownDiscoverySession *)self serviceDescription];
      machService = [serviceDescription3 machService];
      *buf = 138412290;
      v27 = machService;
      _os_log_impl(&dword_2643D0000, v16, OS_LOG_TYPE_DEFAULT, "SPUnknownDiscoverySession: Establishing XPC connection to %@", buf, 0xCu);
    }

    session2 = [(SPUnknownDiscoverySession *)self session];
    [session2 resume];
  }

  session3 = [(SPUnknownDiscoverySession *)self session];
  proxy = [session3 proxy];

  v22 = *MEMORY[0x277D85DE8];

  return proxy;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_0 != -1)
  {
    +[SPUnknownDiscoverySession exportedInterface];
  }

  v3 = exportedInterface_interface_0;

  return v3;
}

uint64_t __46__SPUnknownDiscoverySession_exportedInterface__block_invoke()
{
  exportedInterface_interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875F5818];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_0 != -1)
  {
    +[SPUnknownDiscoverySession remoteInterface];
  }

  v3 = remoteInterface_interface_0;

  return v3;
}

uint64_t __44__SPUnknownDiscoverySession_remoteInterface__block_invoke()
{
  remoteInterface_interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606A90];

  return MEMORY[0x2821F96F8]();
}

- (void)startDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPUnknownDiscoverySession.startDiscovery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession startDiscoveryWithCompletion]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke_75;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke_75(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 startUnknownDiscoveryWithCompletion:v3];
}

void __58__SPUnknownDiscoverySession_startDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession startDiscoveryWithCompletion] completion. Error %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveryWithScanRate:(int64_t)rate timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke;
  v10[3] = &unk_279B58C50;
  v11 = completionCopy;
  rateCopy = rate;
  timeoutCopy = timeout;
  v10[4] = self;
  v9 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPUnknownDiscoverySession.startDiscoveryWithScanRate:timeout:completion:", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession startDiscoveryWithScanRate:timeout:completion:]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke_77;
  v6[3] = &unk_279B58C50;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 56);
  v7 = v5;
  dispatch_sync(v3, v6);
}

void __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke_77(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke_2;
  v5[3] = &unk_279B58B58;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 startDiscoveryWithScanRate:v4 timeout:v5 completion:v3];
}

void __75__SPUnknownDiscoverySession_startDiscoveryWithScanRate_timeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession startDiscoveryWithScanRate:timeout:completion:] completion. Error %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPUnknownDiscoverySession.stopDiscovery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession stopDiscoveryWithCompletion]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke_78;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke_78(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 stopUnknownDiscoveryWithCompletion:v3];
}

void __57__SPUnknownDiscoverySession_stopDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession stopUnknownDiscoveryWithCompletion] completion. Error %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession stop]", buf, 2u);
  }

  queue = [(SPUnknownDiscoverySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SPUnknownDiscoverySession_stop__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __33__SPUnknownDiscoverySession_stop__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setServiceDescription:0];
  [*(a1 + 32) setAccessoryDiscoveredCallback:0];
  [*(a1 + 32) setSessionInvalidatedCallback:0];
  v2 = [*(a1 + 32) session];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setSession:0];
}

- (void)fetchEncryptedPayloadForUnknownBeacon:(id)beacon completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  beaconCopy = beacon;
  completionCopy = completion;
  v8 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = beaconCopy;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPUnknownDiscoverySession fetchEncryptedPayloadForUnknownBeacon]. Beacon %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = [(SPUnknownDiscoverySession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SPUnknownDiscoverySession_fetchEncryptedPayloadForUnknownBeacon_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = beaconCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = beaconCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __78__SPUnknownDiscoverySession_fetchEncryptedPayloadForUnknownBeacon_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 fetchEncryptedPayloadForUnknownBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)discoveredUnknownAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "discoveredUnknownAccessory() called from daemon", buf, 2u);
  }

  queue = [(SPUnknownDiscoverySession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SPUnknownDiscoverySession_discoveredUnknownAccessory___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_sync(queue, v8);
}

void __56__SPUnknownDiscoverySession_discoveredUnknownAccessory___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 unknownAccessories];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = LogCategory_UnknownDiscovery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring known accessory %@.", buf, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 32) state];
    v8 = [v7 unknownAccessories];

    if (v8)
    {
      v9 = [*(a1 + 32) state];
      v10 = [v9 unknownAccessories];
      v11 = [v10 setByAddingObject:*(a1 + 40)];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    }

    v12 = [*(a1 + 32) callbackQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__SPUnknownDiscoverySession_discoveredUnknownAccessory___block_invoke_79;
    v18 = &unk_279B58C78;
    v19 = *(a1 + 32);
    v20 = v11;
    v5 = v11;
    dispatch_async(v12, &v15);

    v13 = [*(a1 + 32) state];
    [v13 setUnknownAccessories:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__SPUnknownDiscoverySession_discoveredUnknownAccessory___block_invoke_79(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryDiscoveredCallback];
  v2[2](v2, *(a1 + 40));
}

- (void)lostUnknownAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "lostUnknownAccessory() called from daemon", buf, 2u);
  }

  queue = [(SPUnknownDiscoverySession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SPUnknownDiscoverySession_lostUnknownAccessory___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_sync(queue, v8);
}

void __50__SPUnknownDiscoverySession_lostUnknownAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 unknownAccessories];
  v4 = [v3 mutableCopy];

  [v4 removeObject:*(a1 + 40)];
  v5 = [*(a1 + 32) state];
  v6 = [v5 unknownAccessories];
  v7 = [v6 isEqualToSet:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 copy];
    v9 = [*(a1 + 32) state];
    [v9 setUnknownAccessories:v8];

    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SPUnknownDiscoverySession_lostUnknownAccessory___block_invoke_2;
    block[3] = &unk_279B58AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }
}

void __50__SPUnknownDiscoverySession_lostUnknownAccessory___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) accessoryDiscoveredCallback];
  v2 = [*(a1 + 32) state];
  v3 = [v2 unknownAccessories];
  v4[2](v4, v3);
}

- (void)unknownAccessoryDiscoveryError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[unknownAccessoryDiscoveryError called from client]. Error %@", buf, 0xCu);
  }

  callbackQueue = [(SPUnknownDiscoverySession *)self callbackQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SPUnknownDiscoverySession_unknownAccessoryDiscoveryError___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(callbackQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__SPUnknownDiscoverySession_unknownAccessoryDiscoveryError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryDiscoveryErrorCallback];
  v2[2](v2, *(a1 + 40));
}

- (void)unknownAccessoryDiscoveryFinished
{
  v3 = LogCategory_UnknownDiscovery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "[unknownAccessoryDiscoveryFinished called from client].", buf, 2u);
  }

  callbackQueue = [(SPUnknownDiscoverySession *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPUnknownDiscoverySession_unknownAccessoryDiscoveryFinished__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_sync(callbackQueue, block);
}

void __62__SPUnknownDiscoverySession_unknownAccessoryDiscoveryFinished__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) accessoryDiscoveryFinishedCallback];
  v1[2]();
}

@end