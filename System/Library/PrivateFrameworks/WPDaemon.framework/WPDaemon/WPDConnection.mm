@interface WPDConnection
- (NSString)description;
- (WPDClient)client;
- (WPDConnection)init;
- (WPDConnection)initWithCentral:(id)central characteristic:(id)characteristic;
- (WPDConnection)initWithPeripheral:(id)peripheral;
- (id)getCentral;
- (id)getCharacteristicWithUUID:(id)d inService:(id)service forPeripheral:(id)peripheral;
- (id)getPeripheral;
- (id)getPeripheralUUID;
- (id)sendDataToCharacteristic:(id)characteristic inService:(id)service forPeer:(id)peer;
- (int64_t)connectionType;
- (int64_t)fetchConnectionType;
- (void)dealloc;
- (void)discoverCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral;
- (void)holdVoucher;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)readyForDataTransfer;
- (void)resetData;
- (void)sendDataToCentral;
- (void)sendDataToPeripheral;
- (void)updateWithCentral:(id)central characteristic:(id)characteristic;
- (void)updateWithPeripheral:(id)peripheral;
@end

@implementation WPDConnection

- (WPDConnection)init
{
  v15.receiver = self;
  v15.super_class = WPDConnection;
  v2 = [(WPDConnection *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataLeftToSend = 0;
    characteristicToSend = v2->_characteristicToSend;
    v2->_characteristicToSend = 0;

    v3->_didConnectSent = 0;
    peripheral = v3->_peripheral;
    v3->_recentRole = 3;
    v3->_peripheral = 0;

    [(CBPeripheral *)v3->_peripheral setDelegate:v3];
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    charsAndServicesToDiscover = v3->_charsAndServicesToDiscover;
    v3->_charsAndServicesToDiscover = dictionary;

    v8 = [MEMORY[0x277CBEB58] set];
    subscribedCharacteristics = v3->_subscribedCharacteristics;
    v3->_subscribedCharacteristics = v8;

    central = v3->_central;
    v3->_central = 0;

    centralCharacteristic = v3->_centralCharacteristic;
    v3->_centralCharacteristic = 0;

    centralService = v3->_centralService;
    v3->_centralService = 0;

    v13 = v3;
  }

  return v3;
}

- (WPDConnection)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = [(WPDConnection *)self init];
  v6 = v5;
  if (v5)
  {
    [(WPDConnection *)v5 updateWithPeripheral:peripheralCopy];
  }

  return v6;
}

- (WPDConnection)initWithCentral:(id)central characteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  v8 = [(WPDConnection *)self init];
  v9 = v8;
  if (v8)
  {
    [(WPDConnection *)v8 updateWithCentral:centralCopy characteristic:characteristicCopy];
  }

  return v9;
}

- (void)updateWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  [(WPDConnection *)self setRecentRole:1];
  [(WPDConnection *)self setPeripheral:peripheralCopy];

  peripheral = [(WPDConnection *)self peripheral];
  [peripheral setDelegate:self];

  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  [(WPDConnection *)self setCharsAndServicesToDiscover:dictionary];

  v7 = [MEMORY[0x277CBEB58] set];
  [(WPDConnection *)self setSubscribedCharacteristics:v7];
}

- (void)updateWithCentral:(id)central characteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  centralCopy = central;
  [(WPDConnection *)self setRecentRole:0];
  [(WPDConnection *)self setCentral:centralCopy];

  [(WPDConnection *)self setCentralCharacteristic:characteristicCopy];
  service = [characteristicCopy service];

  [(WPDConnection *)self setCentralService:service];
}

- (id)getPeripheral
{
  peripheral = [(WPDConnection *)self peripheral];

  if (peripheral)
  {
    peripheral2 = [(WPDConnection *)self peripheral];
  }

  else
  {
    peripheral2 = 0;
  }

  return peripheral2;
}

- (id)getCentral
{
  central = [(WPDConnection *)self central];

  if (central)
  {
    central2 = [(WPDConnection *)self central];
  }

  else
  {
    central2 = 0;
  }

  return central2;
}

- (void)holdVoucher
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = voucher_copy();
  [(WPDConnection *)self setVoucher:v3];

  if (WPLogInitOnce != -1)
  {
    [WPDConnection holdVoucher];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    voucher = [(WPDConnection *)self voucher];
    getPeripheralUUID = [(WPDConnection *)self getPeripheralUUID];
    v9 = 138543618;
    v10 = voucher;
    v11 = 2114;
    v12 = getPeripheralUUID;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "Holding voucher %{public}@ for connection to peer %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDConnection dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPDConnection deallocating", buf, 2u);
  }

  peripheral = [(WPDConnection *)self peripheral];

  if (peripheral)
  {
    peripheral2 = [(WPDConnection *)self peripheral];
    [peripheral2 setDelegate:0];

    if (WPLogInitOnce != -1)
    {
      [WPDConnection dealloc];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "WPDConnection set peripheral delegate to nil", buf, 2u);
    }
  }

  voucher = [(WPDConnection *)self voucher];

  if (voucher)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection dealloc];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      getPeripheralUUID = [(WPDConnection *)self getPeripheralUUID];
      *buf = 138543362;
      v14 = getPeripheralUUID;
      _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Removing voucher for connection to peer %{public}@", buf, 0xCu);
    }

    [(WPDConnection *)self setVoucher:0];
  }

  v12.receiver = self;
  v12.super_class = WPDConnection;
  [(WPDConnection *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  peripheral = [(WPDConnection *)self peripheral];
  identifier = [peripheral identifier];
  central = [(WPDConnection *)self central];
  identifier2 = [central identifier];
  v8 = [v3 stringWithFormat:@"WPDConnection - Peripheral UUID: %@, Central UUID: %@", identifier, identifier2];

  return v8;
}

- (int64_t)connectionType
{
  peripheral = [(WPDConnection *)self peripheral];
  if (peripheral)
  {
    v4 = peripheral;
    central = [(WPDConnection *)self central];

    if (central)
    {
      return 2;
    }
  }

  peripheral2 = [(WPDConnection *)self peripheral];

  if (peripheral2)
  {
    return 1;
  }

  central2 = [(WPDConnection *)self central];

  if (!central2)
  {
    objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"No connection type" reason:@"No peripheral or central connection type" userInfo:0]);
  }

  return 0;
}

- (void)discoverCharacteristicsAndServices:(id)services forPeripheral:(id)peripheral
{
  v34 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  peripheralCopy = peripheral;
  peripheral = [(WPDConnection *)self peripheral];
  identifier = [peripheral identifier];
  v10 = [peripheralCopy isEqual:identifier];

  if (v10)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [servicesCopy allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = [MEMORY[0x277CBE0A0] UUIDWithString:*(*(&v25 + 1) + 8 * i)];
          [array addObject:v17];
        }

        v14 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(WPDConnection *)self setCharsAndServicesToDiscover:servicesCopy];
    peripheral2 = [(WPDConnection *)self peripheral];
    [peripheral2 discoverServices:array];

    goto LABEL_14;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDConnection discoverCharacteristicsAndServices:forPeripheral:];
  }

  v19 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    array = v19;
    uUIDString = [peripheralCopy UUIDString];
    peripheral3 = [(WPDConnection *)self peripheral];
    identifier2 = [peripheral3 identifier];
    uUIDString2 = [identifier2 UUIDString];
    *buf = 138412546;
    v31 = uUIDString;
    v32 = 2112;
    v33 = uUIDString2;
    _os_log_impl(&dword_272965000, array, OS_LOG_TYPE_INFO, "Being asked to discover characteristics and services on a peripheral %@ that isn't this one %@", buf, 0x16u);

LABEL_14:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)getPeripheralUUID
{
  peripheral = [(WPDConnection *)self peripheral];

  if (peripheral)
  {
    [(WPDConnection *)self peripheral];
  }

  else
  {
    [(WPDConnection *)self central];
  }
  v4 = ;
  identifier = [v4 identifier];

  return identifier;
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v37 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  services = [peripheralCopy services];
  identifier = [peripheralCopy identifier];
  if (servicesCopy || ![services count])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverServices:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v23 = v10;
      localizedDescription = [servicesCopy localizedDescription];
      *buf = 138412802;
      v32 = localizedDescription;
      v33 = 2112;
      v34 = services;
      v35 = 2112;
      v36 = identifier;
      _os_log_error_impl(&dword_272965000, v23, OS_LOG_TYPE_ERROR, "Error %@ retrieving services %@ on peripheral %@. Disconnecting...", buf, 0x20u);
    }

    localizedDescription2 = [servicesCopy localizedDescription];
    if (localizedDescription2)
    {
      localizedDescription3 = [servicesCopy localizedDescription];
    }

    else
    {
      localizedDescription3 = @"No services were found";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't discover services on peripheral %@ with error %@", identifier, localizedDescription3];
    v18 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v18 errorWithDomain:@"WPErrorDomain" code:19 userInfo:v19];

    client = [(WPDConnection *)self client];
    [client connectedDevice:identifier withError:v20 shouldDiscover:0];
  }

  else
  {
    string = [MEMORY[0x277CCAB68] string];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_152;
    v27[3] = &unk_279E59928;
    localizedDescription3 = string;
    v28 = localizedDescription3;
    [services enumerateObjectsUsingBlock:v27];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverServices:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      identifier2 = [peripheralCopy identifier];
      *buf = 138543618;
      v32 = localizedDescription3;
      v33 = 2114;
      v34 = identifier2;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Discovered services %{public}@ on peripheral %{public}@", buf, 0x16u);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159;
    v25[3] = &unk_279E59950;
    v25[4] = self;
    v26 = peripheralCopy;
    [services enumerateObjectsUsingBlock:v25];

    v17 = v28;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_152(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  [v2 appendFormat:@"%@, ", v3];
}

void __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) charsAndServicesToDiscover];
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKeyedSubscript:v6];

  if ([v7 count])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v7 allObjects];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CBE0A0] UUIDWithString:*(*(&v16 + 1) + 8 * i)];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    if (WPLogInitOnce != -1)
    {
      __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159_cold_2();
    }

    [*(a1 + 40) discoverCharacteristics:v8 forService:v3];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDConnection peripheral:didDiscoverCharacteristicsForService:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDConnection peripheral:v11 didDiscoverCharacteristicsForService:serviceCopy error:?];
  }

  v12 = [MEMORY[0x277CBEB58] set];
  characteristics = [serviceCopy characteristics];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__WPDConnection_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_165;
  v31[3] = &unk_279E59978;
  v14 = v12;
  v32 = v14;
  [characteristics enumerateObjectsUsingBlock:v31];

  identifier = [peripheralCopy identifier];
  if (errorCopy || ![v14 count])
  {
    selfCopy = self;
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverCharacteristicsForService:error:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v28 = v16;
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138412802;
      v38 = localizedDescription;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = identifier;
      _os_log_error_impl(&dword_272965000, v28, OS_LOG_TYPE_ERROR, "Error %@ retrieving characteristics %@ on peripheral %@. Disconnecting...", buf, 0x20u);
    }

    v17 = serviceCopy;
    localizedDescription2 = [errorCopy localizedDescription];
    v19 = peripheralCopy;
    if (localizedDescription2)
    {
      localizedDescription3 = [errorCopy localizedDescription];
    }

    else
    {
      localizedDescription3 = @"No characteristics were found";
    }

    uUID = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't discover characteristics on peripheral %@ with error %@", identifier, localizedDescription3];
    v25 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = uUID;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    uUIDString = [v25 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v26];

    client = [(WPDConnection *)selfCopy client];
    [client connectedDevice:identifier withError:uUIDString shouldDiscover:0];
  }

  else
  {
    localizedDescription3 = [(WPDConnection *)self client];
    v17 = serviceCopy;
    uUID = [serviceCopy UUID];
    uUIDString = [uUID UUIDString];
    v33 = uUIDString;
    v34 = v14;
    client = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v19 = peripheralCopy;
    identifier2 = [peripheralCopy identifier];
    [(__CFString *)localizedDescription3 discoveredCharacteristicsAndServices:client forPeripheral:identifier2];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __71__WPDConnection_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_165(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 UUID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = MEMORY[0x277CCACA8];
    uUID = [characteristicCopy UUID];
    uUIDString = [uUID UUIDString];
    identifier = [peripheralCopy identifier];
    localizedDescription = [errorCopy localizedDescription];
    uUIDString2 = [v11 stringWithFormat:@"Couldn't update notification state for characteristic %@ on peripheral %@ with error %@", uUIDString, identifier, localizedDescription];

    v17 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = uUIDString2;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    uUIDString3 = [v17 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v18];

    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    client = [(WPDConnection *)self client];
    identifier2 = [peripheralCopy identifier];
    [client connectedDevice:identifier2 withError:uUIDString3 shouldDiscover:0];
  }

  else
  {
    uUID2 = [characteristicCopy UUID];
    uUIDString2 = [uUID2 UUIDString];

    service = [characteristicCopy service];
    uUID3 = [service UUID];
    uUIDString3 = [uUID3 UUIDString];

    client = [peripheralCopy identifier];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      isNotifying = [characteristicCopy isNotifying];
      uUID4 = [characteristicCopy UUID];
      [characteristicCopy service];
      v28 = v32 = self;
      uUID5 = [v28 UUID];
      *buf = 67109634;
      v34 = isNotifying;
      v35 = 2114;
      v36 = uUID4;
      v37 = 2114;
      v38 = uUID5;
      _os_log_impl(&dword_272965000, log, OS_LOG_TYPE_DEFAULT, "Changed notification state %d for characteristic %{public}@ in service %{public}@", buf, 0x1Cu);

      self = v32;
    }

    identifier2 = [(WPDConnection *)self client];
    [identifier2 updatedNotificationState:objc_msgSend(characteristicCopy forCharacteristic:"isNotifying") inService:uUIDString2 withPeripheral:{uUIDString3, client}];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateValueForCharacteristic:error:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDConnection peripheral:v11 didUpdateValueForCharacteristic:errorCopy error:peripheralCopy];
    }

    [peripheralCopy setNotifyValue:0 forCharacteristic:characteristicCopy];
    client = [(WPDConnection *)self client];
    identifier = [peripheralCopy identifier];
    [client disconnectFromPeer:identifier];
  }

  else
  {
    uUID = [characteristicCopy UUID];
    client = [uUID UUIDString];

    service = [characteristicCopy service];
    uUID2 = [service UUID];
    identifier = [uUID2 UUIDString];

    identifier2 = [peripheralCopy identifier];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateValueForCharacteristic:error:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection peripheral:v18 didUpdateValueForCharacteristic:characteristicCopy error:peripheralCopy];
    }

    client2 = [(WPDConnection *)self client];
    value = [characteristicCopy value];
    [client2 receivedData:value fromCharacteristic:client inService:identifier forPeripheral:identifier2];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  v26 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (WPLogInitOnce != -1)
  {
    [WPDConnection peripheral:didModifyServices:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = servicesCopy;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Services have been modified. %@ have been invalidated", &v22, 0xCu);
  }

  identifier = [peripheralCopy identifier];
  peripheral = [(WPDConnection *)self peripheral];
  identifier2 = [peripheral identifier];
  v12 = [identifier isEqual:identifier2];

  if (v12)
  {
    if (servicesCopy && [servicesCopy count])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDConnection peripheral:didModifyServices:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        charsAndServicesToDiscover = [(WPDConnection *)self charsAndServicesToDiscover];
        identifier3 = [peripheralCopy identifier];
        uUIDString = [identifier3 UUIDString];
        v22 = 138412546;
        v23 = charsAndServicesToDiscover;
        v24 = 2112;
        v25 = uUIDString;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Re-discovering services and characteristics %@ on peripheral %@", &v22, 0x16u);
      }

      charsAndServicesToDiscover2 = [(WPDConnection *)self charsAndServicesToDiscover];
      peripheral2 = [(WPDConnection *)self peripheral];
      identifier4 = [peripheral2 identifier];
      [(WPDConnection *)self discoverCharacteristicsAndServices:charsAndServicesToDiscover2 forPeripheral:identifier4];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDConnection peripheral:didModifyServices:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDConnection peripheral:didModifyServices:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didModifyServices:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection peripheral:didModifyServices:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)sendDataToCharacteristic:(id)characteristic inService:(id)service forPeer:(id)peer
{
  v49[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  serviceCopy = service;
  peerCopy = peer;
  characteristicToSend = [(WPDConnection *)self characteristicToSend];

  if (characteristicToSend)
  {
    peripheral = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending in progress, wait for didSend callback to send next chunk of data"];
    v13 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = peripheral;
    central = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v15 = [v13 errorWithDomain:@"WPErrorDomain" code:21 userInfo:central];
    goto LABEL_34;
  }

  peripheral = [(WPDConnection *)self peripheral];
  central = [(WPDConnection *)self central];
  if (WPLogInitOnce != -1)
  {
    [WPDConnection sendDataToCharacteristic:inService:forPeer:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v43 = peerCopy;
    v44 = 2112;
    v45 = peripheral;
    v46 = 2112;
    v47 = central;
    _os_log_debug_impl(&dword_272965000, v16, OS_LOG_TYPE_DEBUG, "Sending data to %@. Current peripheral: %@, current central: %@", buf, 0x20u);
  }

  identifier = [peripheral identifier];
  if ([identifier isEqual:peerCopy])
  {
  }

  else
  {
    identifier2 = [central identifier];
    v19 = [identifier2 isEqual:peerCopy];

    if ((v19 & 1) == 0)
    {
      v22 = MEMORY[0x277CCACA8];
      identifier3 = [peripheral identifier];
      uUIDString = [identifier3 UUIDString];
      identifier4 = [central identifier];
      uUIDString2 = [identifier4 UUIDString];
      uUIDString3 = [peerCopy UUIDString];
      v27 = [v22 stringWithFormat:@"CoreBluetooth couldn't find the peripheral %@ or central %@ to send data with requested peer %@", uUIDString, uUIDString2, uUIDString3];

      v28 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v15 = [v28 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v29];

      if (WPLogInitOnce != -1)
      {
        [WPDConnection sendDataToCharacteristic:inService:forPeer:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
      }

      goto LABEL_34;
    }
  }

  data = [characteristicCopy data];
  -[WPDConnection setDataLeftToSend:](self, "setDataLeftToSend:", [data length]);

  [(WPDConnection *)self setCharacteristicToSend:characteristicCopy];
  [(WPDConnection *)self setCharacteristicService:serviceCopy];
  if (central)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection sendDataToCharacteristic:inService:forPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection sendDataToCharacteristic:inService:forPeer:];
    }

    [(WPDConnection *)self sendDataToCentral];
LABEL_16:
    v15 = 0;
    goto LABEL_34;
  }

  if (peripheral)
  {
    services = [peripheral services];

    if (services)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDConnection sendDataToCharacteristic:inService:forPeer:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDConnection sendDataToCharacteristic:inService:forPeer:];
      }

      [(WPDConnection *)self sendDataToPeripheral];
      goto LABEL_16;
    }
  }

  [(WPDConnection *)self setCharacteristicToSend:0];
  v30 = MEMORY[0x277CCACA8];
  uUIDString4 = [peerCopy UUIDString];
  v32 = [v30 stringWithFormat:@"No peripheral or central to send data with requested peer %@", uUIDString4];

  v33 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA450];
  v39 = v32;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v15 = [v33 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v34];

  if (WPLogInitOnce != -1)
  {
    [WPDConnection sendDataToCharacteristic:inService:forPeer:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

LABEL_34:
  v35 = *MEMORY[0x277D85DE8];

  return v15;
}

- (int64_t)fetchConnectionType
{
  peripheral = [(WPDConnection *)self peripheral];
  if (peripheral)
  {
    v4 = peripheral;
    central = [(WPDConnection *)self central];

    if (central)
    {
      return 2;
    }
  }

  peripheral2 = [(WPDConnection *)self peripheral];

  if (peripheral2)
  {
    return 1;
  }

  central2 = [(WPDConnection *)self central];

  if (central2)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (void)sendDataToCentral
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "Sent all the data succesfully", buf, 2u);
}

- (void)sendDataToPeripheral
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  characteristicToSend = [a3 characteristicToSend];
  [characteristicToSend writeType];
  OUTLINED_FUNCTION_8_0(&dword_272965000, v6, v7, "Sending data %@ with method %ld", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];

  service = [characteristicCopy service];
  uUID2 = [service UUID];
  uUIDString2 = [uUID2 UUIDString];

  characteristicToSend = [(WPDConnection *)self characteristicToSend];
  data = [characteristicToSend data];

  identifier = [peripheralCopy identifier];
  if (errorCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didWriteValueForCharacteristic:error:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      uUID3 = [characteristicCopy UUID];
      identifier2 = [peripheralCopy identifier];
      uUIDString3 = [identifier2 UUIDString];
      [errorCopy localizedDescription];
      *buf = 138412802;
      v32 = uUID3;
      v33 = 2112;
      v34 = uUIDString3;
      v36 = v35 = 2112;
      v26 = v36;
      _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Failed writing to characteristic %@ of peer %@ with error: %@. Forcing disconnection", buf, 0x20u);
    }

    client = [(WPDConnection *)self client];
    [client sentData:data forCharacteristic:uUIDString inService:uUIDString2 forPeripheral:identifier withError:errorCopy];

    [peripheralCopy setNotifyValue:0 forCharacteristic:characteristicCopy];
    client2 = [(WPDConnection *)self client];
    identifier3 = [peripheralCopy identifier];
    [client2 disconnectFromPeer:identifier3];
  }

  else if ([(WPDConnection *)self dataLeftToSend])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didWriteValueForCharacteristic:error:];
    }

    v23 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection peripheral:v23 didWriteValueForCharacteristic:? error:?];
    }

    [(WPDConnection *)self sendDataToPeripheral];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didWriteValueForCharacteristic:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection peripheral:didWriteValueForCharacteristic:error:];
    }

    client3 = [(WPDConnection *)self client];
    [client3 sentData:data forCharacteristic:uUIDString inService:uUIDString2 forPeripheral:identifier withError:0];

    [(WPDConnection *)self resetData];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getCharacteristicWithUUID:(id)d inService:(id)service forPeripheral:(id)peripheral
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  serviceCopy = service;
  peripheralCopy = peripheral;
  peripheral = [(WPDConnection *)self peripheral];

  if (peripheral)
  {
    peripheral2 = [(WPDConnection *)self peripheral];
    services = [peripheral2 services];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__WPDConnection_getCharacteristicWithUUID_inService_forPeripheral___block_invoke_275;
    v26[3] = &unk_279E599A0;
    v14 = serviceCopy;
    v27 = v14;
    v28 = &v29;
    [services enumerateObjectsUsingBlock:v26];
    v15 = v30[5];
    if (v15)
    {
      characteristics = [v15 characteristics];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v36 = __Block_byref_object_copy__3;
      v37 = __Block_byref_object_dispose__3;
      v38 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __67__WPDConnection_getCharacteristicWithUUID_inService_forPeripheral___block_invoke_278;
      v23[3] = &unk_279E599C8;
      v24 = dCopy;
      v25 = buf;
      [characteristics enumerateObjectsUsingBlock:v23];
      v17 = *(*&buf[8] + 40);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDConnection getCharacteristicWithUUID:inService:forPeripheral:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDConnection getCharacteristicWithUUID:inService:forPeripheral:];
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDConnection getCharacteristicWithUUID:inService:forPeripheral:];
      }

      characteristics = WiProxLog;
      if (os_log_type_enabled(characteristics, OS_LOG_TYPE_ERROR))
      {
        peripheral3 = [(WPDConnection *)self peripheral];
        *buf = 138412802;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = peripheral3;
        *&buf[22] = 2112;
        v36 = services;
        _os_log_error_impl(&dword_272965000, characteristics, OS_LOG_TYPE_ERROR, "Wireless Proximity can't retrieve the service %@ for peripheral %@. Services found = %@", buf, 0x20u);
      }

      v17 = 0;
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection getCharacteristicWithUUID:inService:forPeripheral:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDConnection getCharacteristicWithUUID:peripheralCopy inService:v19 forPeripheral:self];
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

void __67__WPDConnection_getCharacteristicWithUUID_inService_forPeripheral___block_invoke_275(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 UUID];
  v8 = [v7 UUIDString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __67__WPDConnection_getCharacteristicWithUUID_inService_forPeripheral___block_invoke_278(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 UUID];
  v8 = [v7 UUIDString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)readyForDataTransfer
{
  characteristicToSend = [(WPDConnection *)self characteristicToSend];
  if (characteristicToSend)
  {
    v4 = characteristicToSend;
    central = [(WPDConnection *)self central];

    if (central)
    {

      [(WPDConnection *)self sendDataToCentral];
    }
  }
}

- (void)resetData
{
  if (WPLogInitOnce != -1)
  {
    [WPDConnection resetData];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDConnection resetData];
  }

  [(WPDConnection *)self setDataLeftToSend:0];
  [(WPDConnection *)self setCharacteristicToSend:0];
  [(WPDConnection *)self setCharacteristicService:0];
}

- (WPDClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

void __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_272965000, v0, OS_LOG_TYPE_DEBUG, "Discovering characteristics %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 UUID];
  objc_claimAutoreleasedReturnValue();
  v11 = [OUTLINED_FUNCTION_9() identifier];
  OUTLINED_FUNCTION_8_0(&dword_272965000, v4, v5, "Discovered characteristics for service %@ on peripheral for %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:didUpdateNotificationStateForCharacteristic:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "%@. Disconnecting...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:(void *)a2 error:(void *)a3 .cold.2(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 localizedDescription];
  v7 = [a3 identifier];
  v8 = [v7 UUIDString];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_1(&dword_272965000, v9, v10, "Error updating characteristic value %@ on peripheral %@, disconnecting", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:(void *)a2 error:(void *)a3 .cold.4(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 UUID];
  v7 = [a3 identifier];
  v8 = [v7 UUIDString];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_272965000, v5, OS_LOG_TYPE_DEBUG, "Received Value Update for characteristic %{public}@ for peripheral %@. Notifying daemon client.", v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(void *)a1 didWriteValueForCharacteristic:error:.cold.3(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_9() dataLeftToSend];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Still have %ld bytes to send", v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)getCharacteristicWithUUID:inService:forPeripheral:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_272965000, v0, v1, "Wireless Proximity can't retrieve the characteristic %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getCharacteristicWithUUID:(uint64_t)a1 inService:(void *)a2 forPeripheral:(void *)a3 .cold.5(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 peripheral];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_1(&dword_272965000, v6, v7, "Wireless Proximity can't retrieve the peripheral %@. Connected peripheral: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end