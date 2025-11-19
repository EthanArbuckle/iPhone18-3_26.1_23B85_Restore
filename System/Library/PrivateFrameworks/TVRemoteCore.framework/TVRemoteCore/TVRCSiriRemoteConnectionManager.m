@interface TVRCSiriRemoteConnectionManager
+ (id)sharedInstance;
- (TVRCSiriRemoteConnectionManager)init;
- (void)_removePeripheral:(id)a3;
- (void)_sendEnableMessage:(BOOL)a3 forRemote:(id)a4;
- (void)_startCBScanIfNeeded;
- (void)_startDiscoveryForRemoteWithInfo:(id)a3 didConnectHandler:(id)a4;
- (void)_stopDiscoveryForRemoteWithInfo:(id)a3;
- (void)_stopScanning;
- (void)_updateFindingSessionState:(int64_t)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)enableFastFindMy:(BOOL)a3 forRemoteWithInfo:(id)a4;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)teardown;
@end

@implementation TVRCSiriRemoteConnectionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVRCSiriRemoteConnectionManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __49__TVRCSiriRemoteConnectionManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(TVRCSiriRemoteConnectionManager);

  return MEMORY[0x2821F96F8]();
}

- (TVRCSiriRemoteConnectionManager)init
{
  v19[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TVRCSiriRemoteConnectionManager;
  v2 = [(TVRCSiriRemoteConnectionManager *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    connectedSiriRemotes = v2->_connectedSiriRemotes;
    v2->_connectedSiriRemotes = v3;

    v5 = objc_alloc(MEMORY[0x277CBDFF8]);
    v18 = *MEMORY[0x277CBDF08];
    v19[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v7 = [v5 initWithDelegate:v2 queue:0 options:v6];
    centralManager = v2->_centralManager;
    v2->_centralManager = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    remoteInfoSet = v2->_remoteInfoSet;
    v2->_remoteInfoSet = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    didConnectHandlerBlockMap = v2->_didConnectHandlerBlockMap;
    v2->_didConnectHandlerBlockMap = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    discoveredPeripherals = v2->_discoveredPeripherals;
    v2->_discoveredPeripherals = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)enableFastFindMy:(BOOL)a3 forRemoteWithInfo:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Disable";
    if (v4)
    {
      v8 = @"Enable";
    }

    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "%@ fast finding for remote with info: %@", buf, 0x16u);
  }

  if (v4)
  {
    v9 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
    v10 = [v6 name];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = _TVRCBLEDiscoveryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Valid BLE connection found. Skip starting BLE discovery.", buf, 2u);
      }

      [(TVRCSiriRemoteConnectionManager *)self _sendEnableMessage:1 forRemote:v11];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__TVRCSiriRemoteConnectionManager_enableFastFindMy_forRemoteWithInfo___block_invoke;
      v14[3] = &unk_279D82670;
      v14[4] = self;
      [(TVRCSiriRemoteConnectionManager *)self _startDiscoveryForRemoteWithInfo:v6 didConnectHandler:v14];
    }
  }

  else
  {
    [(TVRCSiriRemoteConnectionManager *)self _stopDiscoveryForRemoteWithInfo:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __70__TVRCSiriRemoteConnectionManager_enableFastFindMy_forRemoteWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "didConnectHandler called", v6, 2u);
  }

  [*(a1 + 32) _updateFindingSessionState:4];
  [*(a1 + 32) _sendEnableMessage:1 forRemote:v3];

  return [*(a1 + 32) _stopScanning];
}

- (void)_updateFindingSessionState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(TVRCSiriRemoteConnectionManager *)self findingSessionStateChangedHandler];

    if (v5)
    {
      v6 = [(TVRCSiriRemoteConnectionManager *)self findingSessionStateChangedHandler];
      v6[2](v6, a3);
    }
  }
}

- (void)_startDiscoveryForRemoteWithInfo:(id)a3 didConnectHandler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Start scanning for remote with info: %@", buf, 0xCu);
  }

  v9 = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [v9 addObject:v6];

  [(TVRCSiriRemoteConnectionManager *)self _startCBScanIfNeeded];
  if (!self->_cbDiscovery)
  {
    objc_initWeak(buf, self);
    v10 = objc_alloc_init(MEMORY[0x277CBE030]);
    cbDiscovery = self->_cbDiscovery;
    self->_cbDiscovery = v10;

    [(CBDiscovery *)self->_cbDiscovery setUseCase:589824];
    [(CBDiscovery *)self->_cbDiscovery setDiscoveryFlags:0x200000000];
    [(CBDiscovery *)self->_cbDiscovery addDiscoveryType:14];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke;
    v28[3] = &unk_279D82698;
    objc_copyWeak(&v30, buf);
    v29 = v7;
    [(CBDiscovery *)self->_cbDiscovery setDeviceFoundHandler:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_37;
    v26[3] = &unk_279D826C0;
    objc_copyWeak(&v27, buf);
    [(CBDiscovery *)self->_cbDiscovery setDeviceLostHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_38;
    v24[3] = &unk_279D826E8;
    objc_copyWeak(&v25, buf);
    [(CBDiscovery *)self->_cbDiscovery setInvalidationHandler:v24];
    [(CBDiscovery *)self->_cbDiscovery setInterruptionHandler:&__block_literal_global_41];
    [(CBDiscovery *)self->_cbDiscovery activateWithCompletion:&__block_literal_global_45];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v31 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) cbKeyInfo];
        [v12 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v31 count:16];
    }

    while (v14);
  }

  v18 = [(TVRCSiriRemoteConnectionManager *)self cbDiscovery];
  [v18 setOobKeys:v12];

  v19 = *MEMORY[0x277D85DE8];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Device found: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [WeakRetained remoteInfoSet];
    v43 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (!v43)
    {
      goto LABEL_36;
    }

    v6 = *v52;
    v45 = *MEMORY[0x277CBDE98];
    v39 = *v52;
    v40 = v2;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v7;
        v8 = *(*(&v51 + 1) + 8 * v7);
        v9 = [v2 btAddressData:v39];
        v10 = [v8 btAddressData];
        v11 = [v9 isEqualToData:v10];

        v12 = _TVRCBLEDiscoveryLog();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (!v11)
        {
          if (v13)
          {
            *buf = 138412546;
            v60 = v2;
            v61 = 2112;
            v62 = v8;
            _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Device not matched: %@ to info: %@", buf, 0x16u);
          }

LABEL_33:
          v37 = v44;
          goto LABEL_34;
        }

        if (v13)
        {
          *buf = 138412546;
          v60 = v2;
          v61 = 2112;
          v62 = v8;
          _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Matched device: %@ to info: %@", buf, 0x16u);
        }

        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v15 = [v2 identifier];
        v16 = [v14 initWithUUIDString:v15];

        v12 = v16;
        if (!v16)
        {
          goto LABEL_33;
        }

        v17 = [v5 centralManager];
        v42 = v16;
        v58 = v16;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        v19 = [v17 retrievePeripheralsWithIdentifiers:v18];

        if (![v19 count])
        {
          v20 = _TVRCBLEDiscoveryLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v42;
            _os_log_error_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_ERROR, "Failed to find any peripherals with UUID: %@", buf, 0xCu);
          }
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v48;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v47 + 1) + 8 * i);
              v27 = [v5 discoveredPeripherals];
              v28 = [v27 containsObject:v26];

              if (v28)
              {
                v29 = _TVRCBLEDiscoveryLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v60 = v26;
                  _os_log_impl(&dword_26CF7F000, v29, OS_LOG_TYPE_DEFAULT, "Skipping since we previously discovered this peripheral: %@", buf, 0xCu);
                }
              }

              else
              {
                v30 = [v5 discoveredPeripherals];
                [v30 addObject:v26];

                v31 = _TVRCBLEDiscoveryLog();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v60 = v26;
                  _os_log_impl(&dword_26CF7F000, v31, OS_LOG_TYPE_DEFAULT, "Attemping to connect to :%@", buf, 0xCu);
                }

                v55 = v45;
                v56 = &unk_287E66A18;
                v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v32 = [v5 centralManager];
                [v32 connectPeripheral:v26 options:v29];

                [v26 setDelegate:v5];
                v33 = [*(a1 + 32) copy];
                v34 = MEMORY[0x26D6B0B70]();
                v35 = [v5 didConnectHandlerBlockMap];
                v36 = [v26 identifier];
                [v35 setObject:v34 forKeyedSubscript:v36];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v23);
        }

        v6 = v39;
        v2 = v40;
        v37 = v44;
        v12 = v42;
LABEL_34:

        v7 = v37 + 1;
      }

      while (v7 != v43);
      v43 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (!v43)
      {
LABEL_36:

        break;
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v3;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Device lost: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [v3 identifier];
    v8 = [v6 initWithUUIDString:v7];

    if (v8)
    {
      v9 = [WeakRetained centralManager];
      v25 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v11 = [v9 retrievePeripheralsWithIdentifiers:v10];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            if ([v17 state] == 1 || objc_msgSend(v17, "state") == 2)
            {
              v18 = [WeakRetained centralManager];
              [v18 cancelPeripheralConnection:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_38(uint64_t a1)
{
  v2 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "CBDiscovery invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained centralManager];
  [v4 stopScan];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_39()
{
  v0 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26CF7F000, v0, OS_LOG_TYPE_DEFAULT, "CBDiscovery interrupted", v1, 2u);
  }
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_42_cold_1();
    }
  }

  v4 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Activated CBDiscovery", v5, 2u);
  }
}

- (void)_stopDiscoveryForRemoteWithInfo:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Stop scanning for remote with info :%@", buf, 0xCu);
  }

  v6 = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [v6 removeObject:v4];

  v7 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  v8 = [v4 name];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [(TVRCSiriRemoteConnectionManager *)self _sendEnableMessage:0 forRemote:v9];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TVRCSiriRemoteConnectionManager__stopDiscoveryForRemoteWithInfo___block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopScanning
{
  v3 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stop Discovery", v6, 2u);
  }

  v4 = [(TVRCSiriRemoteConnectionManager *)self centralManager];
  [v4 stopScan];

  v5 = [(TVRCSiriRemoteConnectionManager *)self cbDiscovery];
  [v5 invalidate];

  [(TVRCSiriRemoteConnectionManager *)self setCbDiscovery:0];
}

- (void)teardown
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down ConnectionManager", buf, 2u);
  }

  [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:2];
  v4 = [(TVRCSiriRemoteConnectionManager *)self remoteInfoSet];
  [v4 removeAllObjects];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(TVRCSiriRemoteConnectionManager *)self centralManager];
        v13 = [v11 peripheral];
        [v12 cancelPeripheralConnection:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  [v14 removeAllObjects];

  v15 = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
  [v15 removeAllObjects];

  v16 = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
  [v16 removeAllObjects];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_sendEnableMessage:(BOOL)a3 forRemote:(id)a4
{
  v4 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
  v8 = [v6 peripheral];
  v9 = [v8 name];
  v10 = [v7 objectForKeyedSubscript:v9];

  v11 = _TVRCBLEDiscoveryLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v13 = @"enable";
      }

      else
      {
        v13 = @"disable";
      }

      v14 = [v6 peripheral];
      v23 = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Sending message to %@ fast finding for remote: %@", &v23, 0x16u);
    }

    if (v4)
    {
      v15 = &enableFastFindMy;
    }

    else
    {
      v15 = &disableFastFindMy;
    }

    v12 = [MEMORY[0x277CBEB28] dataWithBytes:v15 length:6];
    v16 = malloc_type_malloc(0xAuLL, 0x7E827ABDuLL);
    Bytes = CCRandomGenerateBytes(v16, 0xAuLL);
    if (Bytes)
    {
      v18 = Bytes;
      v19 = _TVRCBLEDiscoveryLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TVRCSiriRemoteConnectionManager _sendEnableMessage:v18 forRemote:v19];
      }
    }

    else
    {
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:10];
      free(v16);
      [v12 appendData:v19];
      v20 = [v6 peripheral];
      v21 = [v6 findMyCharacteristic];
      [v20 writeValue:v12 forCharacteristic:v21 type:1];

      if (v4)
      {
        [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:1];
      }
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [TVRCSiriRemoteConnectionManager _sendEnableMessage:v6 forRemote:v12];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_removePeripheral:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Remove peripheral: %@", &v13, 0xCu);
  }

  v6 = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Removing tracked peripheral: %@", &v13, 0xCu);
    }

    v9 = [(TVRCSiriRemoteConnectionManager *)self discoveredPeripherals];
    [v9 removeObject:v4];

    v10 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
    v11 = [v4 name];
    [v10 removeObjectForKey:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 state];
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "centralManagerDidUpdateState :%ld", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Did discover peripheral: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startCBScanIfNeeded
{
  v3 = [(TVRCSiriRemoteConnectionManager *)self centralManager];
  v4 = [v3 isScanning];

  if ((v4 & 1) == 0)
  {
    v5 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Started Scanning for Siri Remotes...", v7, 2u);
    }

    v6 = [(TVRCSiriRemoteConnectionManager *)self centralManager];
    [v6 scanForPeripheralsWithServices:0 options:0];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully connected to Remote: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873412-D314-B885-A5AA-EFA546123981"];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v4 discoverServices:v7];

  v8 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Discovering find my service for peripheral: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
    v14 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Disconnected peripheral: %@", &v17, 0xCu);
    }

    goto LABEL_10;
  }

  v12 = [v10 code];
  v13 = _TVRCBLEDiscoveryLog();
  v14 = v13;
  if (v12 != 7)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager centralManager:didDisconnectPeripheral:error:];
    }

LABEL_10:
    v15 = 5;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Remote button was pressed: %@", &v17, 0xCu);
  }

  v15 = 6;
LABEL_11:

  [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:v15];
  [(TVRCSiriRemoteConnectionManager *)self _removePeripheral:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRCBLEDiscoveryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 services];
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Discovered services %@", buf, 0xCu);
  }

  if (v7)
  {
    v10 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverServices:];
    }

LABEL_6:

    [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
    goto LABEL_16;
  }

  v11 = [v6 services];
  v12 = [v11 count];

  if (!v12)
  {
    v10 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverServices:];
    }

    goto LABEL_6;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v6;
  obj = [v6 services];
  v14 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873413-D314-B885-A5AA-EFA546123982"];
        v27 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        [v13 discoverCharacteristics:v20 forService:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }

  v6 = v13;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = _TVRCBLEDiscoveryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteConnectionManager peripheral:didDiscoverCharacteristicsForService:error:];
    }

    [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [a4 characteristics];
    v11 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [v15 UUID];
          v17 = [MEMORY[0x277CBE0A0] UUIDWithString:@"F5873413-D314-B885-A5AA-EFA546123982"];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v19 = _TVRCBLEDiscoveryLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v8;
              _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Found Siri Remote with find my characteristic: %@", buf, 0xCu);
            }

            v20 = [v8 name];

            if (!v20)
            {
              v29 = _TVRCBLEDiscoveryLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                [TVRCSiriRemoteConnectionManager peripheral:v29 didDiscoverCharacteristicsForService:? error:?];
              }

              [(TVRCSiriRemoteConnectionManager *)self _updateFindingSessionState:3];
              goto LABEL_23;
            }

            v21 = objc_alloc_init(TVRCSiriRemote);
            [(TVRCSiriRemote *)v21 setPeripheral:v8];
            [(TVRCSiriRemote *)v21 setFindMyCharacteristic:v15];
            v22 = [(TVRCSiriRemoteConnectionManager *)self connectedSiriRemotes];
            v23 = [v8 name];
            [v22 setObject:v21 forKeyedSubscript:v23];

            v24 = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
            v25 = [v8 identifier];
            v26 = [v24 objectForKeyedSubscript:v25];

            if (v26)
            {
              (v26)[2](v26, v21);
              v27 = [(TVRCSiriRemoteConnectionManager *)self didConnectHandlerBlockMap];
              v28 = [v8 identifier];
              [v27 setObject:0 forKeyedSubscript:v28];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v9 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __86__TVRCSiriRemoteConnectionManager__startDiscoveryForRemoteWithInfo_didConnectHandler___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26CF7F000, v0, v1, "CBDiscovery failed to activate: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendEnableMessage:(int)a1 forRemote:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to generate random bytes Error: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendEnableMessage:(void *)a1 forRemote:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 peripheral];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Attemping to send message to remote that is not connected: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26CF7F000, v0, v1, "didDisconnectPeripheral:error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverServices:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26CF7F000, v0, v1, "didDiscoverServices: error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverServices:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26CF7F000, v0, v1, "No services available for peripheral: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26CF7F000, v0, v1, "didDiscoverCharacteristicsForService:error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end