@interface SPCBLeechScanner
+ (id)remoteInterface;
- (BOOL)containsOnlyNSSecureCodable:(id)codable;
- (SPCBLeechScanner)init;
- (SPCBPeripheralManagementXPCProtocol)proxy;
- (id)fixupDictionary:(id)dictionary;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)handleStateChange:(unint64_t)change;
- (void)init;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)startScanning;
- (void)stopScanning;
@end

@implementation SPCBLeechScanner

- (SPCBLeechScanner)init
{
  v28.receiver = self;
  v28.super_class = SPCBLeechScanner;
  v2 = [(SPCBLeechScanner *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SPOwner.SPCBLeechScanner", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D07B78]) initWithQueue:v2->_serialQueue];
    queueSynchronizer = v2->_queueSynchronizer;
    v2->_queueSynchronizer = v6;

    v8 = v2->_serialQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__SPCBLeechScanner_init__block_invoke;
    handler[3] = &unk_279B59498;
    v9 = v2;
    v27 = v9;
    if (notify_register_dispatch("com.apple.SPOwner.SPCBLeechScanner", &v2->_notifyToken, v8, handler))
    {
      v10 = LogCategory_CBPeripheralManagement();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SPCBLeechScanner init];
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__SPCBLeechScanner_init__block_invoke_2;
    aBlock[3] = &unk_279B58C28;
    v11 = v9;
    v25 = v11;
    v12 = _Block_copy(aBlock);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __24__SPCBLeechScanner_init__block_invoke_2;
    v22[3] = &unk_279B58C28;
    v13 = v11;
    v23 = v13;
    v14 = _Block_copy(v22);
    v15 = objc_alloc(MEMORY[0x277D07BA0]);
    v16 = +[SPCBLeechScanner remoteInterface];
    v17 = [v15 initWithMachServiceName:@"com.apple.searchparty.managedperipheral" options:0 remoteObjectInterface:v16 interruptionHandler:v12 invalidationHandler:v14];
    serviceDescription = v13->_serviceDescription;
    v13->_serviceDescription = v17;

    v19 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:v13 queue:v2->_serialQueue];
    centralManager = v13->_centralManager;
    v13->_centralManager = v19;
  }

  return v2;
}

uint64_t __24__SPCBLeechScanner_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) handleStateChange:state64];
}

uint64_t __24__SPCBLeechScanner_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  return [*(a1 + 32) interruptionHandler:a2];
}

- (void)handleStateChange:(unint64_t)change
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  v5 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    *v16 = change;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: handleStateChange: %llu", &v15, 0xCu);
  }

  centralManager = [(SPCBLeechScanner *)self centralManager];
  state = [centralManager state];

  [(SPCBLeechScanner *)self setEnabled:change != 0];
  v8 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    enabled = [(SPCBLeechScanner *)self enabled];
    isScanning = [(SPCBLeechScanner *)self isScanning];
    v15 = 67109376;
    v16[0] = enabled;
    LOWORD(v16[1]) = 1024;
    *(&v16[1] + 2) = isScanning;
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: enabled: %u isScanning: %u", &v15, 0xEu);
  }

  if (![(SPCBLeechScanner *)self enabled]&& ![(SPCBLeechScanner *)self isScanning]&& state != 5)
  {
    v11 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v12 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (000)";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (![(SPCBLeechScanner *)self enabled]&& ![(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    v11 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v12 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (001)";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (![(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state != 5 || ![(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    goto LABEL_37;
  }

  if ([(SPCBLeechScanner *)self enabled]&& ![(SPCBLeechScanner *)self isScanning]&& state != 5)
  {
    v11 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v12 = "SPCBLeechScanner: Do nothing -- scanner is already stopped (100)";
LABEL_22:
      _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, 2u);
    }

LABEL_23:

    goto LABEL_46;
  }

  if ([(SPCBLeechScanner *)self enabled]&& ![(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    [(SPCBLeechScanner *)self startScanning];
    goto LABEL_46;
  }

  if ([(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state != 5)
  {
LABEL_37:
    [(SPCBLeechScanner *)self stopScanning];
    goto LABEL_46;
  }

  if ([(SPCBLeechScanner *)self enabled]&& [(SPCBLeechScanner *)self isScanning]&& state == 5)
  {
    v11 = LogCategory_CBPeripheralManagement();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LOWORD(v15) = 0;
    v12 = "SPCBLeechScanner: Do nothing -- scanner is already running (111)";
    goto LABEL_22;
  }

  v13 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [SPCBLeechScanner handleStateChange:?];
  }

LABEL_46:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)startScanning
{
  v10[1] = *MEMORY[0x277D85DE8];
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: startScanning", v8, 2u);
  }

  v9 = *MEMORY[0x277CBDE68];
  v10[0] = &unk_2875F2B38;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  centralManager = [(SPCBLeechScanner *)self centralManager];
  [centralManager scanForPeripheralsWithServices:0 options:v5 completion:&__block_literal_global_9];

  [(SPCBLeechScanner *)self setIsScanning:1];
  v7 = *MEMORY[0x277D85DE8];
}

void __33__SPCBLeechScanner_startScanning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __33__SPCBLeechScanner_startScanning__block_invoke_cold_1();
    }
  }
}

- (void)stopScanning
{
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: stopScanning", v6, 2u);
  }

  centralManager = [(SPCBLeechScanner *)self centralManager];
  [centralManager stopScan];

  [(SPCBLeechScanner *)self setIsScanning:0];
}

- (void)interruptionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: interruptionHandler %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidationHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: invalidationHandler %{public}@", &v7, 0xCu);
  }

  [(SPCBLeechScanner *)self setSession:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (SPCBPeripheralManagementXPCProtocol)proxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queueSynchronizer = [(SPCBLeechScanner *)self queueSynchronizer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__SPCBLeechScanner_proxy__block_invoke;
  v6[3] = &unk_279B594E0;
  v6[4] = self;
  v6[5] = &v7;
  [queueSynchronizer conditionalSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __25__SPCBLeechScanner_proxy__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];

  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277D07BA8]);
    v4 = [*(a1 + 32) serviceDescription];
    v5 = [v3 initWithServiceDescription:v4];
    [*(a1 + 32) setSession:v5];

    v6 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) serviceDescription];
      v8 = [v7 machService];
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: Establishing XPC connection to %{public}@", &v15, 0xCu);
    }

    v9 = [*(a1 + 32) session];
    [v9 resume];
  }

  v10 = [*(a1 + 32) session];
  v11 = [v10 proxy];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_4 != -1)
  {
    +[SPCBLeechScanner remoteInterface];
  }

  v3 = remoteInterface_interface_3;

  return v3;
}

uint64_t __35__SPCBLeechScanner_remoteInterface__block_invoke()
{
  remoteInterface_interface_3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606C10];

  return MEMORY[0x2821F96F8]();
}

- (void)centralManagerDidUpdateState:(id)state
{
  [state state];
  enabled = [(SPCBLeechScanner *)self enabled];

  [(SPCBLeechScanner *)self handleStateChange:enabled];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  iCopy = i;
  serialQueue = [(SPCBLeechScanner *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v11 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = dataCopy;
    v17 = 2114;
    v18 = iCopy;
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPCBLeechScanner: didDiscoverPeripheral: %{public}@  RSSI: %{public}@", &v15, 0x16u);
  }

  v12 = [(SPCBLeechScanner *)self fixupDictionary:dataCopy];
  if ([(SPCBLeechScanner *)self containsOnlyNSSecureCodable:v12])
  {
    proxy = [(SPCBLeechScanner *)self proxy];
    -[NSObject leechScannerDiscoveredAdvertisementData:rssi:completion:](proxy, "leechScannerDiscoveredAdvertisementData:rssi:completion:", v12, [iCopy intValue], &__block_literal_global_71_0);
  }

  else
  {
    proxy = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(proxy, OS_LOG_TYPE_ERROR))
    {
      [SPCBLeechScanner centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__SPCBLeechScanner_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __80__SPCBLeechScanner_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_cold_1();
    }
  }
}

- (id)fixupDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy mutableCopy];
  v5 = *MEMORY[0x277CBDD28];
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  if (v6)
  {
    v18 = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [v6 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          data = [v13 data];
          [v7 setObject:v14 forKeyedSubscript:data];
        }

        v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v4 = v18;
    [v18 setObject:v7 forKeyedSubscript:v5];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)containsOnlyNSSecureCodable:(id)codable
{
  v41 = *MEMORY[0x277D85DE8];
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = codableCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if (([v11 conformsToProtocol:&unk_2875F3818] & 1) == 0)
          {
            v23 = LogCategory_CBPeripheralManagement();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [SPCBLeechScanner containsOnlyNSSecureCodable:];
            }

LABEL_38:
            v14 = 0;
            goto LABEL_39;
          }

          v12 = [v5 objectForKey:v11];
          v13 = [(SPCBLeechScanner *)self containsOnlyNSSecureCodable:v12];

          if (!v13)
          {
            goto LABEL_38;
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
        v14 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 1;
    }

LABEL_39:

    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = codableCopy;
    v15 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
LABEL_15:
      v18 = 0;
      while (1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v5);
        }

        if (![(SPCBLeechScanner *)self containsOnlyNSSecureCodable:*(*(&v30 + 1) + 8 * v18)])
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v16)
          {
            goto LABEL_15;
          }

          goto LABEL_31;
        }
      }

LABEL_32:
      v14 = 0;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = codableCopy;
    v19 = [v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
LABEL_25:
      v22 = 0;
      while (1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v5);
        }

        if (![(SPCBLeechScanner *)self containsOnlyNSSecureCodable:*(*(&v26 + 1) + 8 * v22), v26])
        {
          goto LABEL_32;
        }

        if (v20 == ++v22)
        {
          v20 = [v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v20)
          {
            goto LABEL_25;
          }

          break;
        }
      }
    }

LABEL_31:
    v14 = 1;
LABEL_33:

    goto LABEL_40;
  }

  if ([codableCopy conformsToProtocol:&unk_2875F3818])
  {
    v14 = 1;
    goto LABEL_41;
  }

  v5 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SPCBLeechScanner containsOnlyNSSecureCodable:];
  }

  v14 = 0;
LABEL_40:

LABEL_41:
  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleStateChange:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 centralManager];
  [v1 state];
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v2, v3, "SPCBLeechScanner: Unexpected state: enabled: %llu centralState: %lu", v4, v5, v6, v7, 0);

  v8 = *MEMORY[0x277D85DE8];
}

void __33__SPCBLeechScanner_startScanning__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__SPCBLeechScanner_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)containsOnlyNSSecureCodable:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v2, v3, "SPCBLeechScanner: not NSSecureCodable: %@: %@!", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)containsOnlyNSSecureCodable:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  OUTLINED_FUNCTION_0_4(&dword_2643D0000, v2, v3, "SPCBLeechScanner: NSDictionary key not NSSecureCodable: %@: %@!", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end