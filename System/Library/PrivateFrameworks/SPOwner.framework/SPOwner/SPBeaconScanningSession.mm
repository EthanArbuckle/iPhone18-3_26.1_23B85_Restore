@interface SPBeaconScanningSession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPBeaconScanningSession)init;
- (SPBeaconScanningXPCProtocol)proxy;
- (void)discoveredObject:(id)a3;
- (void)discoveryFinished:(id)a3 completion:(id)a4;
- (void)interruptionHandler:(id)a3;
- (void)invalidationHandler:(id)a3;
- (void)startScanningIncludeServiceCharacteristics:(BOOL)a3;
- (void)stopScanning;
@end

@implementation SPBeaconScanningSession

- (SPBeaconScanningSession)init
{
  v23.receiver = self;
  v23.super_class = SPBeaconScanningSession;
  v2 = [(SPBeaconScanningSession *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPBeaconScanningSession", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPBeaconScanningSession.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __31__SPBeaconScanningSession_init__block_invoke;
    aBlock[3] = &unk_279B58C28;
    v9 = v2;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __31__SPBeaconScanningSession_init__block_invoke_2;
    v19[3] = &unk_279B58C28;
    v11 = v9;
    v20 = v11;
    v12 = _Block_copy(v19);
    v13 = objc_alloc(MEMORY[0x277D07BA0]);
    v14 = +[SPBeaconScanningSession exportedInterface];
    v15 = +[SPBeaconScanningSession remoteInterface];
    v16 = [v13 initWithMachServiceName:@"com.apple.searchparty.BeaconScanningSession" options:0 exportedObject:v11 exportedInterface:v14 remoteObjectInterface:v15 interruptionHandler:v10 invalidationHandler:v12];
    serviceDescription = v11->_serviceDescription;
    v11->_serviceDescription = v16;
  }

  return v2;
}

- (void)interruptionHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconScanningSession: interruptionHandler %@", buf, 0xCu);
  }

  v6 = [(SPBeaconScanningSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPBeaconScanningSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SPBeaconScanningSession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __47__SPBeaconScanningSession_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (void)invalidationHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_AccessoryDiscovery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconScanningSession: invalidationHandler %@", buf, 0xCu);
  }

  [(SPBeaconScanningSession *)self setSession:0];
  v6 = [(SPBeaconScanningSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPBeaconScanningSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SPBeaconScanningSession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __47__SPBeaconScanningSession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPBeaconScanningXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPBeaconScanningSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPBeaconScanningSession *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPBeaconScanningSession *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPBeaconScanningSession *)self setSession:v7];

    v8 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPBeaconScanningSession *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPBeaconScanningSession: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPBeaconScanningSession *)self session];
    [v11 resume];
  }

  v12 = [(SPBeaconScanningSession *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_1 != -1)
  {
    +[SPBeaconScanningSession exportedInterface];
  }

  v3 = exportedInterface_interface_1;

  return v3;
}

uint64_t __44__SPBeaconScanningSession_exportedInterface__block_invoke()
{
  exportedInterface_interface_1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875F5AC0];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_1 != -1)
  {
    +[SPBeaconScanningSession remoteInterface];
  }

  v3 = remoteInterface_interface_1;

  return v3;
}

uint64_t __42__SPBeaconScanningSession_remoteInterface__block_invoke()
{
  remoteInterface_interface_1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606AF0];

  return MEMORY[0x2821F96F8]();
}

- (void)startScanningIncludeServiceCharacteristics:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke;
  v3[3] = &unk_279B58CC0;
  v4 = a3;
  v3[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconScanningSession.startScanningIncludeServiceCharacteristics", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

void __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBeaconScanningSession startScanningIncludeServiceCharacteristics:%d]", buf, 8u);
  }

  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke_64;
  v6[3] = &unk_279B58CC0;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_sync(v4, v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke_64(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 startScanningIncludeServiceCharacterstics:*(a1 + 40) completion:&__block_literal_global_67];
}

void __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_BeaconScanning();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke_2_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "[SPAccessoryDiscoverySession startScanningIncludeServiceCharacteristics:] completion.", v5, 2u);
  }
}

- (void)stopScanning
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__SPBeaconScanningSession_stopScanning__block_invoke;
  activity_block[3] = &unk_279B58AE8;
  activity_block[4] = self;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconScanningSession.stopScanning", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __39__SPBeaconScanningSession_stopScanning__block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPBeaconScanningSession stopScanning]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SPBeaconScanningSession_stopScanning__block_invoke_68;
  block[3] = &unk_279B58AE8;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

void __39__SPBeaconScanningSession_stopScanning__block_invoke_68(uint64_t a1)
{
  v1 = [*(a1 + 32) proxy];
  [v1 stopScanningWithCompletion:&__block_literal_global_70];
}

void __39__SPBeaconScanningSession_stopScanning__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_BeaconScanning();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __39__SPBeaconScanningSession_stopScanning__block_invoke_2_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "-[SPAccessoryDiscoverySession] completion.", v5, 2u);
  }
}

- (void)discoveredObject:(id)a3
{
  v6 = a3;
  v4 = [(SPBeaconScanningSession *)self beaconDiscoveredCallback];

  if (v4)
  {
    v5 = [(SPBeaconScanningSession *)self beaconDiscoveredCallback];
    (v5)[2](v5, v6);
  }
}

- (void)discoveryFinished:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SPBeaconScanningSession *)self discoveryFinishedCallback];

  if (v7)
  {
    v8 = [(SPBeaconScanningSession *)self discoveryFinishedCallback];
    (v8)[2](v8, v9);
  }

  v6[2](v6);
}

void __70__SPBeaconScanningSession_startScanningIncludeServiceCharacteristics___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "[SPAccessoryDiscoverySession startScanningIncludeServiceCharacteristics:] completion. Error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __39__SPBeaconScanningSession_stopScanning__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "[SPAccessoryDiscoverySession stopScanning] completion. Error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end