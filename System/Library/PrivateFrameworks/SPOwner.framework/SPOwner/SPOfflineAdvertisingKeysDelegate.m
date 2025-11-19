@interface SPOfflineAdvertisingKeysDelegate
- (SPOfflineAdvertisingKeysDelegate)initWithBeaconManager:(id)a3;
- (id)proxy;
- (id)remoteInterface;
- (id)syncProxy;
- (int64_t)transformReason:(int64_t)a3;
- (void)enterLowPowerMode;
- (void)peripheralManager:(id)a3 offlineAdvPayloadRequestedWithReason:(int64_t)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)processKeyResponse:(id)a3;
@end

@implementation SPOfflineAdvertisingKeysDelegate

- (SPOfflineAdvertisingKeysDelegate)initWithBeaconManager:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = SPOfflineAdvertisingKeysDelegate;
  v6 = [(SPOfflineAdvertisingKeysDelegate *)&v24 init];
  if (v6)
  {
    v7 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: SPOfflineAdvertisingKeysDelegate created.", v23, 2u);
    }

    objc_storeStrong(&v6->_beaconManager, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("SPOfflineAdvertisingKeysDelegate", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = objc_alloc(MEMORY[0x277D07BA0]);
    v12 = [(SPOfflineAdvertisingKeysDelegate *)v6 remoteInterface];
    v13 = [v11 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:v12 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v6->_serviceDescription;
    v6->_serviceDescription = v13;

    v15 = objc_alloc(MEMORY[0x277CBE068]);
    v16 = v6->_queue;
    v17 = *MEMORY[0x277CBDF38];
    v25[0] = *MEMORY[0x277CBDF08];
    v25[1] = v17;
    v26[0] = MEMORY[0x277CBEC38];
    v26[1] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v19 = [v15 initWithDelegate:v6 queue:v16 options:v18];
    peripheralManager = v6->_peripheralManager;
    v6->_peripheralManager = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)remoteInterface
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
  v3 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:3];
  v5 = [v3 setWithArray:{v4, v8, v9}];
  [v2 setClasses:v5 forSelector:sel_offlineAdvertisingKeysForReason_completion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPOfflineAdvertisingKeysDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPOfflineAdvertisingKeysDelegate *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPOfflineAdvertisingKeysDelegate *)self setSession:v7];

    v8 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPOfflineAdvertisingKeysDelegate *)self session];
    [v11 resume];
  }

  v12 = [(SPOfflineAdvertisingKeysDelegate *)self session];
  v13 = [v12 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)syncProxy
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SPOfflineAdvertisingKeysDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPOfflineAdvertisingKeysDelegate *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPOfflineAdvertisingKeysDelegate *)self setSession:v7];

    v8 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SPOfflineAdvertisingKeysDelegate *)self serviceDescription];
      v10 = [v9 machService];
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Establishing XPC connection to %@", &v16, 0xCu);
    }

    v11 = [(SPOfflineAdvertisingKeysDelegate *)self session];
    [v11 resume];
  }

  v12 = [(SPOfflineAdvertisingKeysDelegate *)self session];
  v13 = [v12 syncProxyWithErrorHandler:&__block_literal_global_172];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  if ([(SPOfflineAdvertisingKeysDelegate *)self inLowPowerMode])
  {
    v5 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = 2;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateLowPowerMode)", buf, 2u);
    }

    else
    {
      v6 = 2;
    }

LABEL_13:

    v8 = [(SPOfflineAdvertisingKeysDelegate *)self userAgentSyncProxy];
    [v8 bluetoothPowerStateUpdated:v6];

    goto LABEL_14;
  }

  v7 = [v4 state];
  if (v7 == 5)
  {
    v5 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateOn)", v9, 2u);
    }

    v6 = 1;
    goto LABEL_13;
  }

  if (v7 == 4)
  {
    v5 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateOff)", v10, 2u);
    }

    v6 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)enterLowPowerMode
{
  v3 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: Entering low power mode", buf, 2u);
  }

  [(SPOfflineAdvertisingKeysDelegate *)self setInLowPowerMode:1];
  v4 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Sending bluetoothPowerStateUpdated(SPBluetoothPowerStateLowPowerMode)", v6, 2u);
  }

  v5 = [(SPOfflineAdvertisingKeysDelegate *)self userAgentSyncProxy];
  [v5 bluetoothPowerStateUpdated:2];
}

- (int64_t)transformReason:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 3)
  {
    v4 = LogCategory_OfflineAdvertising();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SPOfflineAdvertisingKeysDelegate *)v3 transformReason:v4, v5, v6, v7, v8, v9, v10];
    }

    return 0;
  }

  return v3;
}

- (void)processKeyResponse:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has_internal_content = os_variant_has_internal_content();
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"__qa__log_offline_keys"];

  v8 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v4;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: processKeyResponse: %@", buf, 0xCu);
  }

  if ((has_internal_content & v7) == 1)
  {
    v30 = self;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [v4 objectAtIndexedSubscript:0];
    v10 = [v9 keys];

    v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = LogCategory_OfflineAdvertising();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 fm_hexString];
            *buf = 138412290;
            v42 = v17;
            _os_log_impl(&dword_2643D0000, v16, OS_LOG_TYPE_DEFAULT, "OFFLINE_KEYS: First : %@", buf, 0xCu);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [v4 objectAtIndexedSubscript:1];
    v19 = [v18 keys];

    v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * j);
          v25 = LogCategory_OfflineAdvertising();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v24 fm_hexString];
            *buf = 138412290;
            v42 = v26;
            _os_log_impl(&dword_2643D0000, v25, OS_LOG_TYPE_DEFAULT, "OFFLINE_KEYS: Second: %@", buf, 0xCu);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v21);
    }

    self = v30;
  }

  v27 = [v4 fm_map:&__block_literal_global_180];
  v28 = [(SPOfflineAdvertisingKeysDelegate *)self peripheralManager];
  [v28 setOfflineAdvertisingParamsAndData:v27];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)peripheralManager:(id)a3 offlineAdvPayloadRequestedWithReason:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__SPOfflineAdvertisingKeysDelegate_peripheralManager_offlineAdvPayloadRequestedWithReason___block_invoke;
  v4[3] = &unk_279B59000;
  v4[4] = self;
  v4[5] = a4;
  _os_activity_initiate(&dword_2643D0000, "offlineAdvertisingKeysForReason", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

void __91__SPOfflineAdvertisingKeysDelegate_peripheralManager_offlineAdvPayloadRequestedWithReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OfflineAdvertising();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOfflineAdvertisingKeysDelegate: offlineAdvPayloadRequestedWithReason: %ld", &v9, 0xCu);
  }

  [*(a1 + 32) enterLowPowerMode];
  v4 = [*(a1 + 32) beaconManager];
  v5 = [*(a1 + 32) transformReason:*(a1 + 40)];
  v6 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v7 = [v4 generateOfflineAdvertisingKeysForReason:v5 now:v6];

  [*(a1 + 32) processKeyResponse:v7];
  v8 = *MEMORY[0x277D85DE8];
}

void __45__SPOfflineAdvertisingKeysDelegate_syncProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2643D0000, a2, a3, "sync proxy error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)transformReason:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2643D0000, a2, a3, "SPOfflineAdvertisingKeysDelegate: Unexpected CBPeripheralManagerShutdownReason value: %ld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end