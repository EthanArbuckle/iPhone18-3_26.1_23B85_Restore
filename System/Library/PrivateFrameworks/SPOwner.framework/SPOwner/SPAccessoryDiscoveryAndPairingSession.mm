@interface SPAccessoryDiscoveryAndPairingSession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPAccessoryDiscoveryAndPairingSession)initWithPreviousState:(id)state;
- (SPAccessoryDiscoveryXPCProtocol)proxy;
- (void)accessoryDetectedForPairing;
- (void)accessoryDiscoveryError:(id)error;
- (void)accessoryProximityPairingError:(id)error;
- (void)disableFindMyPairingWithIdentifier:(id)identifier;
- (void)discoveredAccessory:(id)accessory;
- (void)finalizePairingWith:(id)with configuration:(id)configuration completion:(id)completion;
- (void)finalizeProximityPairingForAccessoryIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion;
- (void)initializeProximityPairingForAccessoryIdentifier:(id)identifier completion:(id)completion;
- (void)initiatePairingAndLocateAccessoryWith:(id)with completion:(id)completion;
- (void)initiatePairingForAccessoryWith:(id)with completion:(id)completion;
- (void)initiatePairingWith:(id)with completion:(id)completion;
- (void)interruptionHandler:(id)handler;
- (void)invalidatePairingWith:(id)with completion:(id)completion;
- (void)invalidationHandler:(id)handler;
- (void)lostAccessory:(id)accessory;
- (void)notifyPairingAccessoryChanged:(id)changed;
- (void)pairingStatus:(id)status completion:(id)completion;
- (void)pairingStatusWithRequest:(id)request completion:(id)completion;
- (void)proximityPairingCompleted:(id)completed beacons:(id)beacons;
- (void)startAccessoryDiscoveryWithCompletion:(id)completion;
- (void)startLocalFindableAccessoryDiscoveryWithCompletion:(id)completion;
- (void)startProximityAccessoryDiscoveryWithCompletion:(id)completion;
- (void)stop;
- (void)stopAccessoryDiscoveryWithCompletion:(id)completion;
- (void)stopLocalFindableAccessoryDiscoveryWithCompletion:(id)completion;
- (void)stopProximityAccessoryDiscoveryWithCompletion:(id)completion;
@end

@implementation SPAccessoryDiscoveryAndPairingSession

- (SPAccessoryDiscoveryAndPairingSession)initWithPreviousState:(id)state
{
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = SPAccessoryDiscoveryAndPairingSession;
  v5 = [(SPAccessoryDiscoveryAndPairingSession *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPAccessoryDiscoverySession", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPAccessoryDiscoverySession.callback", v9);
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
      v14 = [SPAccessoryDiscoverySessionState alloc];
      state = objc_alloc_init(MEMORY[0x277CBEB98]);
      v15 = [(SPAccessoryDiscoverySessionState *)v14 initWithAccessories:state];
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
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPAccessoryDiscoverySession: interruptionHandler %@", buf, 0xCu);
  }

  sessionInvalidatedCallback = [(SPAccessoryDiscoveryAndPairingSession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPAccessoryDiscoveryAndPairingSession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61__SPAccessoryDiscoveryAndPairingSession_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (void)invalidationHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPAccessoryDiscoverySession: invalidationHandler %@", buf, 0xCu);
  }

  [(SPAccessoryDiscoveryAndPairingSession *)self setSession:0];
  sessionInvalidatedCallback = [(SPAccessoryDiscoveryAndPairingSession *)self sessionInvalidatedCallback];

  if (sessionInvalidatedCallback)
  {
    callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPAccessoryDiscoveryAndPairingSession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(callbackQueue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __61__SPAccessoryDiscoveryAndPairingSession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPAccessoryDiscoveryXPCProtocol)proxy
{
  location[3] = *MEMORY[0x277D85DE8];
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPAccessoryDiscoveryAndPairingSession *)self session];

  if (!session)
  {
    serviceDescription = [(SPAccessoryDiscoveryAndPairingSession *)self serviceDescription];

    if (!serviceDescription)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__SPAccessoryDiscoveryAndPairingSession_proxy__block_invoke;
      aBlock[3] = &unk_279B58B10;
      objc_copyWeak(&v26, location);
      v6 = _Block_copy(aBlock);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __46__SPAccessoryDiscoveryAndPairingSession_proxy__block_invoke_2;
      v23[3] = &unk_279B58B10;
      objc_copyWeak(&v24, location);
      v7 = _Block_copy(v23);
      v8 = objc_alloc(MEMORY[0x277D07BA0]);
      v9 = +[SPAccessoryDiscoveryAndPairingSession exportedInterface];
      v10 = +[SPAccessoryDiscoveryAndPairingSession remoteInterface];
      v11 = [v8 initWithMachServiceName:@"com.apple.icloud.searchpartyd.accessorydiscoverysession" options:0 exportedObject:self exportedInterface:v9 remoteObjectInterface:v10 interruptionHandler:v6 invalidationHandler:v7];
      [(SPAccessoryDiscoveryAndPairingSession *)self setServiceDescription:v11];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    v12 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription2 = [(SPAccessoryDiscoveryAndPairingSession *)self serviceDescription];
    v14 = [v12 initWithServiceDescription:serviceDescription2];
    [(SPAccessoryDiscoveryAndPairingSession *)self setSession:v14];

    v15 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription3 = [(SPAccessoryDiscoveryAndPairingSession *)self serviceDescription];
      machService = [serviceDescription3 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = machService;
      _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPAccessoryDiscoverySession: Establishing XPC connection to %@", location, 0xCu);
    }

    session2 = [(SPAccessoryDiscoveryAndPairingSession *)self session];
    [session2 resume];
  }

  session3 = [(SPAccessoryDiscoveryAndPairingSession *)self session];
  proxy = [session3 proxy];

  v21 = *MEMORY[0x277D85DE8];

  return proxy;
}

void __46__SPAccessoryDiscoveryAndPairingSession_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __46__SPAccessoryDiscoveryAndPairingSession_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_8 != -1)
  {
    +[SPAccessoryDiscoveryAndPairingSession exportedInterface];
  }

  v3 = exportedInterface_interface_8;

  return v3;
}

void __58__SPAccessoryDiscoveryAndPairingSession_exportedInterface__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287602EA0];
  v1 = exportedInterface_interface_8;
  exportedInterface_interface_8 = v0;

  v2 = exportedInterface_interface_8;
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_proximityPairingCompleted_beacons_ argumentIndex:1 ofReply:0];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_11 != -1)
  {
    +[SPAccessoryDiscoveryAndPairingSession remoteInterface];
  }

  v3 = remoteInterface_interface_10;

  return v3;
}

uint64_t __56__SPAccessoryDiscoveryAndPairingSession_remoteInterface__block_invoke()
{
  remoteInterface_interface_10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606DF0];

  return MEMORY[0x2821F96F8]();
}

- (void)startProximityAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.start", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession startProximityAccessoryDiscovery]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_194;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_194(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) state];
  [v3 setAccessories:v2];

  v4 = [*(a1 + 32) proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_2;
  v5[3] = &unk_279B58B58;
  v6 = *(a1 + 40);
  [v4 startProximityAccessoryDiscoveryWithCompletion:v5];
}

void __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession startProximityAccessoryDiscovery] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.start", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession start]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_196;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_196(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) state];
  [v3 setAccessories:v2];

  v4 = [*(a1 + 32) proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_2;
  v5[3] = &unk_279B58B58;
  v6 = *(a1 + 40);
  [v4 startAccessoryDiscoveryWithCompletion:v5];
}

void __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession start] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stop
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __45__SPAccessoryDiscoveryAndPairingSession_stop__block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.stop", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __45__SPAccessoryDiscoveryAndPairingSession_stop__block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stop]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SPAccessoryDiscoveryAndPairingSession_stop__block_invoke_197;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

uint64_t __45__SPAccessoryDiscoveryAndPairingSession_stop__block_invoke_197(uint64_t a1)
{
  [*(a1 + 32) setServiceDescription:0];
  [*(a1 + 32) setAccessoryDiscoveredCallback:0];
  [*(a1 + 32) setSessionInvalidatedCallback:0];
  v2 = [*(a1 + 32) session];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setSession:0];
}

- (void)stopAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.stopAccessoryDiscovery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopAccessoryDiscovery]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_198;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_198(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 stopAccessoryDiscoveryWithCompletion:v3];
}

void __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopAccessoryDiscovery] completion)", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopProximityAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.stopProximityAccessoryDiscovery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopProximityAccessoryDiscovery]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_199;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_199(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 stopAccessoryProximityDiscoveryWithCompletion:v3];
}

void __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopProximityAccessoryDiscovery] completion)", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)discoveredAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "discoveredAccessory() called from daemon", buf, 2u);
  }

  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SPAccessoryDiscoveryAndPairingSession_discoveredAccessory___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_sync(queue, v8);
}

void __61__SPAccessoryDiscoveryAndPairingSession_discoveredAccessory___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 accessories];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = LogCategory_AccessoryDiscovery();
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
    v8 = [v7 accessories];

    if (v8)
    {
      v9 = [*(a1 + 32) state];
      v10 = [v9 accessories];
      v11 = [v10 setByAddingObject:*(a1 + 40)];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    }

    v12 = [*(a1 + 32) callbackQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __61__SPAccessoryDiscoveryAndPairingSession_discoveredAccessory___block_invoke_200;
    v18 = &unk_279B58C78;
    v19 = *(a1 + 32);
    v20 = v11;
    v5 = v11;
    dispatch_async(v12, &v15);

    v13 = [*(a1 + 32) state];
    [v13 setAccessories:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __61__SPAccessoryDiscoveryAndPairingSession_discoveredAccessory___block_invoke_200(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryDiscoveredCallback];
  v2[2](v2, *(a1 + 40));
}

- (void)lostAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "lostAccessory() called from daemon", buf, 2u);
  }

  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPAccessoryDiscoveryAndPairingSession_lostAccessory___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_sync(queue, v8);
}

void __55__SPAccessoryDiscoveryAndPairingSession_lostAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 accessories];
  v4 = [v3 mutableCopy];

  [v4 removeObject:*(a1 + 40)];
  v5 = [*(a1 + 32) state];
  v6 = [v5 accessories];
  v7 = [v6 isEqualToSet:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 copy];
    v9 = [*(a1 + 32) state];
    [v9 setAccessories:v8];

    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SPAccessoryDiscoveryAndPairingSession_lostAccessory___block_invoke_2;
    block[3] = &unk_279B58AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }
}

void __55__SPAccessoryDiscoveryAndPairingSession_lostAccessory___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) accessoryDiscoveredCallback];
  v2 = [*(a1 + 32) state];
  v3 = [v2 accessories];
  v4[2](v4, v3);
}

- (void)accessoryDiscoveryError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[accessoryDiscoveryError called from client]. Error %@", buf, 0xCu);
  }

  callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SPAccessoryDiscoveryAndPairingSession_accessoryDiscoveryError___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(callbackQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __65__SPAccessoryDiscoveryAndPairingSession_accessoryDiscoveryError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryDiscoveryErrorCallback];

  if (v2)
  {
    v11 = [*(a1 + 32) accessoryDiscoveryErrorCallback];
    v11[2](v11, *(a1 + 40));
  }

  else
  {
    v3 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __65__SPAccessoryDiscoveryAndPairingSession_accessoryDiscoveryError___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)accessoryDetectedForPairing
{
  v3 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "[accessoryDetectedForPairing called from client]", buf, 2u);
  }

  callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPAccessoryDiscoveryAndPairingSession_accessoryDetectedForPairing__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_sync(callbackQueue, block);
}

void __68__SPAccessoryDiscoveryAndPairingSession_accessoryDetectedForPairing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingAccessoryDetectionCallback];

  if (v2)
  {
    v11 = [*(a1 + 32) pairingAccessoryDetectionCallback];
    v11[2]();
  }

  else
  {
    v3 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __68__SPAccessoryDiscoveryAndPairingSession_accessoryDetectedForPairing__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)initiatePairingWith:(id)with completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  withCopy = with;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = withCopy;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession initiatePairingWith]. Accessory %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SPAccessoryDiscoveryAndPairingSession_initiatePairingWith_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v16, buf);
  v14 = withCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = withCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __72__SPAccessoryDiscoveryAndPairingSession_initiatePairingWith_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 initiatePairingWith:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)startLocalFindableAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.start", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession start]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_201;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_201(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) state];
  [v3 setAccessories:v2];

  v4 = [*(a1 + 32) proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2;
  v5[3] = &unk_279B58B58;
  v6 = *(a1 + 40);
  [v4 startLocalFindableAccessoryDiscoveryWithCompletion:v5];
}

void __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession startLocalFindableAccessoryDiscoveryWithCompletion] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopLocalFindableAccessoryDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPAccessoryDiscoverySession.stopAccessoryDiscovery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopAccessoryDiscovery]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_202;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_202(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 stopLocalFindableAccessoryDiscoveryWithCompletion:v3];
}

void __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession stopLocalFindableAccessoryDiscoveryWithCompletion] completion)", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)disableFindMyPairingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession disableFindMyPairingWithCompletion]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SPAccessoryDiscoveryAndPairingSession_disableFindMyPairingWithIdentifier___block_invoke;
  v8[3] = &unk_279B59228;
  objc_copyWeak(&v10, buf);
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __76__SPAccessoryDiscoveryAndPairingSession_disableFindMyPairingWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 disableFindMyPairingWithIdentifier:*(a1 + 32)];
}

- (void)initiatePairingForAccessoryWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession initiatePairingForAccessoryWith:completion:]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = withCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = withCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke_2;
  v5[3] = &unk_279B5A6A0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 initiatePairingAndLocateAccessoryWithIdentifier:v4 completion:v5];
}

void __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_AccessoryDiscovery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession initiatePairingForAccessoryWith] succeeded!", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)initiatePairingAndLocateAccessoryWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession initiatePairingAndLocateAccessoryWith:completion:]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SPAccessoryDiscoveryAndPairingSession_initiatePairingAndLocateAccessoryWith_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = withCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = withCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __90__SPAccessoryDiscoveryAndPairingSession_initiatePairingAndLocateAccessoryWith_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__SPAccessoryDiscoveryAndPairingSession_initiatePairingAndLocateAccessoryWith_completion___block_invoke_2;
  v5[3] = &unk_279B5A6A0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 initiatePairingAndLocateAccessoryWithIdentifier:v4 completion:v5];
}

void __90__SPAccessoryDiscoveryAndPairingSession_initiatePairingAndLocateAccessoryWith_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_AccessoryDiscovery();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession initiatePairingForAccessoryWith] succeeded!", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pairingStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession pairingStatus:completion:]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPAccessoryDiscoveryAndPairingSession_pairingStatus_completion___block_invoke;
  block[3] = &unk_279B59718;
  v13 = statusCopy;
  v10 = statusCopy;
  objc_copyWeak(&v15, buf);
  v14 = completionCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __66__SPAccessoryDiscoveryAndPairingSession_pairingStatus_completion___block_invoke(uint64_t a1)
{
  v2 = [[SPAccessoryDiscoveryPairingStatusRequest alloc] initWithIdentifier:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SPAccessoryDiscoveryAndPairingSession_pairingStatus_completion___block_invoke_2;
  v5[3] = &unk_279B5A6C8;
  v6 = *(a1 + 40);
  [v4 pairingStatusWithRequest:v2 completion:v5];
}

void __66__SPAccessoryDiscoveryAndPairingSession_pairingStatus_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 pairingStatus], v5);
  }
}

- (void)pairingStatusWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryPairingSession pairingStatusWithRequest:completion:]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SPAccessoryDiscoveryAndPairingSession_pairingStatusWithRequest_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = requestCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __77__SPAccessoryDiscoveryAndPairingSession_pairingStatusWithRequest_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 pairingStatusWithRequest:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)finalizePairingWith:(id)with configuration:(id)configuration completion:(id)completion
{
  withCopy = with;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession finalizePairingWith]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SPAccessoryDiscoveryAndPairingSession_finalizePairingWith_configuration_completion___block_invoke;
  v16[3] = &unk_279B59A20;
  objc_copyWeak(&v20, buf);
  v17 = withCopy;
  v18 = configurationCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = configurationCopy;
  v15 = withCopy;
  dispatch_async(queue, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __86__SPAccessoryDiscoveryAndPairingSession_finalizePairingWith_configuration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained proxy];
  [v2 finalizePairingWith:*(a1 + 32) configuration:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)invalidatePairingWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession invalidatePairingWith]", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SPAccessoryDiscoveryAndPairingSession_invalidatePairingWith_completion___block_invoke;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v15, buf);
  v13 = withCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = withCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __74__SPAccessoryDiscoveryAndPairingSession_invalidatePairingWith_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 invalidatePairingWith:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)proximityPairingCompleted:(id)completed beacons:(id)beacons
{
  v20 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  beaconsCopy = beacons;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = beaconsCopy;
    v18 = 2112;
    v19 = completedCopy;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[proximityPairingCompleted called from client]. Beacons %@, Location %@", buf, 0x16u);
  }

  callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SPAccessoryDiscoveryAndPairingSession_proximityPairingCompleted_beacons___block_invoke;
  block[3] = &unk_279B58BF8;
  block[4] = self;
  v14 = completedCopy;
  v15 = beaconsCopy;
  v10 = beaconsCopy;
  v11 = completedCopy;
  dispatch_sync(callbackQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __75__SPAccessoryDiscoveryAndPairingSession_proximityPairingCompleted_beacons___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proximityPairingCompletedCallback];
  v3 = LogCategory_AccessoryDiscovery();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "proximityPairingCompletedCallback is set", buf, 2u);
    }

    v2[2](v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
    }
  }
}

- (void)accessoryProximityPairingError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[accessoryProximityPairingError called from client]. Error %@", buf, 0xCu);
  }

  callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SPAccessoryDiscoveryAndPairingSession_accessoryProximityPairingError___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(callbackQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SPAccessoryDiscoveryAndPairingSession_accessoryProximityPairingError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proximityPairingErrorCallback];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }

  else
  {
    v4 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
    }
  }
}

- (void)notifyPairingAccessoryChanged:(id)changed
{
  changedCopy = changed;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[notifyPairingAccessoryChanged called from client]", buf, 2u);
  }

  callbackQueue = [(SPAccessoryDiscoveryAndPairingSession *)self callbackQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__SPAccessoryDiscoveryAndPairingSession_notifyPairingAccessoryChanged___block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_sync(callbackQueue, v8);
}

void __71__SPAccessoryDiscoveryAndPairingSession_notifyPairingAccessoryChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notifyPairingAccessoryChanged];

  if (v2)
  {
    v11 = [*(a1 + 32) notifyPairingAccessoryChanged];
    v11[2](v11, *(a1 + 40));
  }

  else
  {
    v3 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __71__SPAccessoryDiscoveryAndPairingSession_notifyPairingAccessoryChanged___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)initializeProximityPairingForAccessoryIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession initializeProximityPairingForAccessoryIdentifier]", buf, 2u);
  }

  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SPAccessoryDiscoveryAndPairingSession_initializeProximityPairingForAccessoryIdentifier_completion___block_invoke;
  block[3] = &unk_279B58BD0;
  block[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(queue, block);
}

void __101__SPAccessoryDiscoveryAndPairingSession_initializeProximityPairingForAccessoryIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 initializeProximityPairingForAccessoryIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)finalizeProximityPairingForAccessoryIdentifier:(id)identifier configuration:(id)configuration completion:(id)completion
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession finalizeProximityPairingForAccessoryIdentifier]", buf, 2u);
  }

  queue = [(SPAccessoryDiscoveryAndPairingSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__SPAccessoryDiscoveryAndPairingSession_finalizeProximityPairingForAccessoryIdentifier_configuration_completion___block_invoke;
  v16[3] = &unk_279B593C0;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = configurationCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = configurationCopy;
  v15 = identifierCopy;
  dispatch_async(queue, v16);
}

void __113__SPAccessoryDiscoveryAndPairingSession_finalizeProximityPairingForAccessoryIdentifier_configuration_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 finalizeProximityPairingForAccessoryIdentifier:*(a1 + 40) configuration:*(a1 + 48) completion:*(a1 + 56)];
}

void __88__SPAccessoryDiscoveryAndPairingSession_startProximityAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession startProximityAccessoryDiscovery] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__SPAccessoryDiscoveryAndPairingSession_startAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession start] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SPAccessoryDiscoveryAndPairingSession_stopAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession stopAccessoryDiscovery] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__SPAccessoryDiscoveryAndPairingSession_stopProximityAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession stopProximityAccessoryDiscovery] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__SPAccessoryDiscoveryAndPairingSession_startLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession startLocalFindableAccessoryDiscoveryWithCompletion] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__SPAccessoryDiscoveryAndPairingSession_stopLocalFindableAccessoryDiscoveryWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryDiscoverySession stopLocalFindableAccessoryDiscoveryWithCompletion] completion. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SPAccessoryDiscoveryAndPairingSession_initiatePairingForAccessoryWith_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "[SPAccessoryPairingSession initiatePairingForAccessoryWith] failed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end