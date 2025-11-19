@interface SPMetadataFetchingSession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPMetadataFetchingSession)init;
- (SPMetadataFetchingXPCProtocol)proxy;
- (void)fetchAccessoryCapabilitiesData:(id)a3 completion:(id)a4;
- (void)fetchAccessoryCategoryData:(id)a3 completion:(id)a4;
- (void)fetchBatteryStatusData:(id)a3 completion:(id)a4;
- (void)fetchBatteryTypeData:(id)a3 completion:(id)a4;
- (void)fetchCurrentPrimaryKey:(id)a3 completion:(id)a4;
- (void)fetchFirmwareVersionData:(id)a3 completion:(id)a4;
- (void)fetchManufacturerNameData:(id)a3 completion:(id)a4;
- (void)fetchModelColorCodeData:(id)a3 completion:(id)a4;
- (void)fetchModelNameData:(id)a3 completion:(id)a4;
- (void)fetchProductData:(id)a3 completion:(id)a4;
- (void)fetchProtocolVersionData:(id)a3 completion:(id)a4;
- (void)fetchiCloudIdentifier:(id)a3 completion:(id)a4;
- (void)interruptionHandler:(id)a3;
- (void)invalidationHandler:(id)a3;
@end

@implementation SPMetadataFetchingSession

- (SPMetadataFetchingSession)init
{
  v23.receiver = self;
  v23.super_class = SPMetadataFetchingSession;
  v2 = [(SPMetadataFetchingSession *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPMetadataFetchingSession", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPMetadataFetchingSession.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __33__SPMetadataFetchingSession_init__block_invoke;
    aBlock[3] = &unk_279B58C28;
    v9 = v2;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__SPMetadataFetchingSession_init__block_invoke_2;
    v19[3] = &unk_279B58C28;
    v11 = v9;
    v20 = v11;
    v12 = _Block_copy(v19);
    v13 = objc_alloc(MEMORY[0x277D07BA0]);
    v14 = +[SPMetadataFetchingSession exportedInterface];
    v15 = +[SPMetadataFetchingSession remoteInterface];
    v16 = [v13 initWithMachServiceName:@"com.apple.icloud.searchpartyd.ownersession" options:0 exportedObject:v11 exportedInterface:v14 remoteObjectInterface:v15 interruptionHandler:v10 invalidationHandler:v12];
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
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPMetadataFetchingSession: interruptionHandler %@", buf, 0xCu);
  }

  v6 = [(SPMetadataFetchingSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPMetadataFetchingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPMetadataFetchingSession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPMetadataFetchingSession_interruptionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPMetadataFetchingSession: invalidationHandler %@", buf, 0xCu);
  }

  [(SPMetadataFetchingSession *)self setSession:0];
  v6 = [(SPMetadataFetchingSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPMetadataFetchingSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPMetadataFetchingSession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SPMetadataFetchingSession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPMetadataFetchingXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPMetadataFetchingSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPMetadataFetchingSession *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPMetadataFetchingSession *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPMetadataFetchingSession *)self setSession:v7];

    v8 = LogCategory_AccessoryDiscovery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPMetadataFetchingSession *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPMetadataFetchingSession: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPMetadataFetchingSession *)self session];
    [v11 resume];
  }

  v12 = [(SPMetadataFetchingSession *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_6 != -1)
  {
    +[SPMetadataFetchingSession exportedInterface];
  }

  v3 = exportedInterface_interface_6;

  return v3;
}

uint64_t __46__SPMetadataFetchingSession_exportedInterface__block_invoke()
{
  exportedInterface_interface_6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287602188];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_9 != -1)
  {
    +[SPMetadataFetchingSession remoteInterface];
  }

  v3 = remoteInterface_interface_8;

  return v3;
}

uint64_t __44__SPMetadataFetchingSession_remoteInterface__block_invoke()
{
  remoteInterface_interface_8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606D90];

  return MEMORY[0x2821F96F8]();
}

- (void)fetchProductData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __57__SPMetadataFetchingSession_fetchProductData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __57__SPMetadataFetchingSession_fetchProductData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SPMetadataFetchingSession_fetchProductData_completion___block_invoke_205;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __57__SPMetadataFetchingSession_fetchProductData_completion___block_invoke_205(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:0 completion:*(a1 + 48)];
}

- (void)fetchManufacturerNameData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __66__SPMetadataFetchingSession_fetchManufacturerNameData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __66__SPMetadataFetchingSession_fetchManufacturerNameData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPMetadataFetchingSession_fetchManufacturerNameData_completion___block_invoke_206;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __66__SPMetadataFetchingSession_fetchManufacturerNameData_completion___block_invoke_206(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:1 completion:*(a1 + 48)];
}

- (void)fetchModelNameData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __59__SPMetadataFetchingSession_fetchModelNameData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __59__SPMetadataFetchingSession_fetchModelNameData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SPMetadataFetchingSession_fetchModelNameData_completion___block_invoke_207;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __59__SPMetadataFetchingSession_fetchModelNameData_completion___block_invoke_207(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:2 completion:*(a1 + 48)];
}

- (void)fetchAccessoryCategoryData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __67__SPMetadataFetchingSession_fetchAccessoryCategoryData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __67__SPMetadataFetchingSession_fetchAccessoryCategoryData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SPMetadataFetchingSession_fetchAccessoryCategoryData_completion___block_invoke_208;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __67__SPMetadataFetchingSession_fetchAccessoryCategoryData_completion___block_invoke_208(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:3 completion:*(a1 + 48)];
}

- (void)fetchProtocolVersionData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __65__SPMetadataFetchingSession_fetchProtocolVersionData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __65__SPMetadataFetchingSession_fetchProtocolVersionData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPMetadataFetchingSession_fetchProtocolVersionData_completion___block_invoke_209;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __65__SPMetadataFetchingSession_fetchProtocolVersionData_completion___block_invoke_209(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:4 completion:*(a1 + 48)];
}

- (void)fetchAccessoryCapabilitiesData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __71__SPMetadataFetchingSession_fetchAccessoryCapabilitiesData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __71__SPMetadataFetchingSession_fetchAccessoryCapabilitiesData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SPMetadataFetchingSession_fetchAccessoryCapabilitiesData_completion___block_invoke_210;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __71__SPMetadataFetchingSession_fetchAccessoryCapabilitiesData_completion___block_invoke_210(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:5 completion:*(a1 + 48)];
}

- (void)fetchFirmwareVersionData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __65__SPMetadataFetchingSession_fetchFirmwareVersionData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __65__SPMetadataFetchingSession_fetchFirmwareVersionData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPMetadataFetchingSession_fetchFirmwareVersionData_completion___block_invoke_211;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __65__SPMetadataFetchingSession_fetchFirmwareVersionData_completion___block_invoke_211(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:6 completion:*(a1 + 48)];
}

- (void)fetchBatteryTypeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__SPMetadataFetchingSession_fetchBatteryTypeData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__SPMetadataFetchingSession_fetchBatteryTypeData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPMetadataFetchingSession_fetchBatteryTypeData_completion___block_invoke_212;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __61__SPMetadataFetchingSession_fetchBatteryTypeData_completion___block_invoke_212(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:7 completion:*(a1 + 48)];
}

- (void)fetchBatteryStatusData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPMetadataFetchingSession_fetchBatteryStatusData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__SPMetadataFetchingSession_fetchBatteryStatusData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPMetadataFetchingSession_fetchBatteryStatusData_completion___block_invoke_213;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __63__SPMetadataFetchingSession_fetchBatteryStatusData_completion___block_invoke_213(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:8 completion:*(a1 + 48)];
}

- (void)fetchModelColorCodeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__SPMetadataFetchingSession_fetchModelColorCodeData_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchHawkeyeAIS", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__SPMetadataFetchingSession_fetchModelColorCodeData_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchHawkeyeAIS]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPMetadataFetchingSession_fetchModelColorCodeData_completion___block_invoke_214;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __64__SPMetadataFetchingSession_fetchModelColorCodeData_completion___block_invoke_214(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchHawkeyeAIS:*(a1 + 40) metadataType:9 completion:*(a1 + 48)];
}

- (void)fetchCurrentPrimaryKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPMetadataFetchingSession_fetchCurrentPrimaryKey_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchCurrentPrimaryKey", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__SPMetadataFetchingSession_fetchCurrentPrimaryKey_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchCurrentPrimaryKey]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPMetadataFetchingSession_fetchCurrentPrimaryKey_completion___block_invoke_215;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __63__SPMetadataFetchingSession_fetchCurrentPrimaryKey_completion___block_invoke_215(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchCurrentPrimaryKey:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)fetchiCloudIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __62__SPMetadataFetchingSession_fetchiCloudIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPMetadataFetchingSession.fetchCurrentPrimaryKey", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __62__SPMetadataFetchingSession_fetchiCloudIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconScanning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPMetadataFetchingSession fetchCurrentPrimaryKey]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPMetadataFetchingSession_fetchiCloudIdentifier_completion___block_invoke_216;
  block[3] = &unk_279B58BD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
}

void __62__SPMetadataFetchingSession_fetchiCloudIdentifier_completion___block_invoke_216(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchiCloudIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

@end