@interface SPLocalFindableConnectionMaterialMonitoringSession
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPLocalFindableConnectionMaterialMonitoringSession)init;
- (SPLocalFindableConnectionMaterialMonitoringXPCProtocol)proxy;
- (void)interruptionHandler:(id)a3;
- (void)invalidationHandler:(id)a3;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4;
- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)a3;
- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)a3;
- (void)updatedConnectionMaterialForAccessory:(id)a3 connectionMaterial:(id)a4;
@end

@implementation SPLocalFindableConnectionMaterialMonitoringSession

- (SPLocalFindableConnectionMaterialMonitoringSession)init
{
  v10.receiver = self;
  v10.super_class = SPLocalFindableConnectionMaterialMonitoringSession;
  v2 = [(SPLocalFindableConnectionMaterialMonitoringSession *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPLocalFindableConnectionMaterialMonitoringSession", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPLocalFindableConnectionMaterialMonitoringSession.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;
  }

  return v2;
}

- (void)interruptionHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPLocalFindableConnectionMaterialMonitoring: interruptionHandler %@", buf, 0xCu);
  }

  v6 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SPLocalFindableConnectionMaterialMonitoringSession_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __74__SPLocalFindableConnectionMaterialMonitoringSession_interruptionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (void)invalidationHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPLocalFindableConnectionMaterialMonitoring: invalidationHandler %@", buf, 0xCu);
  }

  [(SPLocalFindableConnectionMaterialMonitoringSession *)self setSession:0];
  v6 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self sessionInvalidatedCallback];

  if (v6)
  {
    v7 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SPLocalFindableConnectionMaterialMonitoringSession_invalidationHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_sync(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __74__SPLocalFindableConnectionMaterialMonitoringSession_invalidationHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionInvalidatedCallback];
  v1[2]();
}

- (SPLocalFindableConnectionMaterialMonitoringXPCProtocol)proxy
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self session];

  if (!v4)
  {
    v5 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self serviceDescription];

    if (!v5)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __59__SPLocalFindableConnectionMaterialMonitoringSession_proxy__block_invoke;
      aBlock[3] = &unk_279B58B10;
      objc_copyWeak(&v26, location);
      v6 = _Block_copy(aBlock);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __59__SPLocalFindableConnectionMaterialMonitoringSession_proxy__block_invoke_2;
      v23[3] = &unk_279B58B10;
      objc_copyWeak(&v24, location);
      v7 = _Block_copy(v23);
      v8 = objc_alloc(MEMORY[0x277D07BA0]);
      v9 = +[SPLocalFindableConnectionMaterialMonitoringSession exportedInterface];
      v10 = +[SPLocalFindableConnectionMaterialMonitoringSession remoteInterface];
      v11 = [v8 initWithMachServiceName:@"com.apple.icloud.searchpartyd.localFindableConnectionMaterialSession" options:0 exportedObject:self exportedInterface:v9 remoteObjectInterface:v10 interruptionHandler:v6 invalidationHandler:v7];
      [(SPLocalFindableConnectionMaterialMonitoringSession *)self setServiceDescription:v11];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    v12 = objc_alloc(MEMORY[0x277D07BA8]);
    v13 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self serviceDescription];
    v14 = [v12 initWithServiceDescription:v13];
    [(SPLocalFindableConnectionMaterialMonitoringSession *)self setSession:v14];

    v15 = LogCategory_LocalFindableConnectionMaterialMonitoring();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self serviceDescription];
      v17 = [v16 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPLocalFindableConnectionMaterialMonitoring: Establishing XPC connection to %@", location, 0xCu);
    }

    v18 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self session];
    [v18 resume];
  }

  v19 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self session];
  v20 = [v19 proxy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __59__SPLocalFindableConnectionMaterialMonitoringSession_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __59__SPLocalFindableConnectionMaterialMonitoringSession_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken != -1)
  {
    +[SPLocalFindableConnectionMaterialMonitoringSession exportedInterface];
  }

  v3 = exportedInterface_interface;

  return v3;
}

uint64_t __71__SPLocalFindableConnectionMaterialMonitoringSession_exportedInterface__block_invoke()
{
  exportedInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875F5140];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken != -1)
  {
    +[SPLocalFindableConnectionMaterialMonitoringSession remoteInterface];
  }

  v3 = remoteInterface_interface;

  return v3;
}

uint64_t __69__SPLocalFindableConnectionMaterialMonitoringSession_remoteInterface__block_invoke()
{
  remoteInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606A30];

  return MEMORY[0x2821F96F8]();
}

- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPLocalFindableConnectionMaterialMonitoringSession.start", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPLocalFindableConnectionMaterialMonitoringSession start]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_65;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 startLocalFindableConnectionMaterialMonitoringWithCompletion:v3];
}

void __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPLocalFindableConnectionMaterialMonitoringSession start] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPLocalFindableConnectionMaterialMonitoringSession.stop", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "[SPLocalFindableConnectionMaterialMonitoringSession stop]", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_67;
  v5[3] = &unk_279B58B80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_sync(v3, v5);
}

void __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_67(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2;
  v3[3] = &unk_279B58B58;
  v4 = *(a1 + 40);
  [v2 stopLocalFindableConnectionMaterialMonitoringWithCompletion:v3];
}

void __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_LocalFindableConnectionMaterialMonitoring();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "[SPLocalFindableConnectionMaterialMonitoringSession stop] completion", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __116__SPLocalFindableConnectionMaterialMonitoringSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPLocalFindableConnectionMaterialMonitoringSession.peripheralConnectionMaterialForAccessoryIdentifier", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __116__SPLocalFindableConnectionMaterialMonitoringSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] UUIDString];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "peripheralConnectionMaterial for %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1[5]);
  v4 = [a1[5] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__SPLocalFindableConnectionMaterialMonitoringSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke_68;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v9, buf);
  v7 = a1[4];
  v8 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __116__SPLocalFindableConnectionMaterialMonitoringSession_peripheralConnectionMaterialForAccessoryIdentifier_completion___block_invoke_68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 peripheralConnectionMaterialForAccessoryIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)updatedConnectionMaterialForAccessory:(id)a3 connectionMaterial:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPLocalFindableConnectionMaterialMonitoringSession *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__SPLocalFindableConnectionMaterialMonitoringSession_updatedConnectionMaterialForAccessory_connectionMaterial___block_invoke;
  block[3] = &unk_279B58BF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __111__SPLocalFindableConnectionMaterialMonitoringSession_updatedConnectionMaterialForAccessory_connectionMaterial___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) peripheralConnectionMaterialCallback];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void __115__SPLocalFindableConnectionMaterialMonitoringSession_startLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "[SPLocalFindableConnectionMaterialMonitoringSession start] completion. Error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __114__SPLocalFindableConnectionMaterialMonitoringSession_stopLocalFindableConnectionMaterialMonitoringWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "[SPLocalFindableConnectionMaterialMonitoringSession stop] completion. Error - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end