@interface WPDConnection
- (NSString)description;
- (WPDClient)client;
- (WPDConnection)init;
- (WPDConnection)initWithCentral:(id)a3 characteristic:(id)a4;
- (WPDConnection)initWithPeripheral:(id)a3;
- (id)getCentral;
- (id)getCharacteristicWithUUID:(id)a3 inService:(id)a4 forPeripheral:(id)a5;
- (id)getPeripheral;
- (id)getPeripheralUUID;
- (id)sendDataToCharacteristic:(id)a3 inService:(id)a4 forPeer:(id)a5;
- (int64_t)connectionType;
- (int64_t)fetchConnectionType;
- (void)dealloc;
- (void)discoverCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)holdVoucher;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)readyForDataTransfer;
- (void)resetData;
- (void)sendDataToCentral;
- (void)sendDataToPeripheral;
- (void)updateWithCentral:(id)a3 characteristic:(id)a4;
- (void)updateWithPeripheral:(id)a3;
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
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    charsAndServicesToDiscover = v3->_charsAndServicesToDiscover;
    v3->_charsAndServicesToDiscover = v6;

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

- (WPDConnection)initWithPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(WPDConnection *)self init];
  v6 = v5;
  if (v5)
  {
    [(WPDConnection *)v5 updateWithPeripheral:v4];
  }

  return v6;
}

- (WPDConnection)initWithCentral:(id)a3 characteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WPDConnection *)self init];
  v9 = v8;
  if (v8)
  {
    [(WPDConnection *)v8 updateWithCentral:v6 characteristic:v7];
  }

  return v9;
}

- (void)updateWithPeripheral:(id)a3
{
  v4 = a3;
  [(WPDConnection *)self setRecentRole:1];
  [(WPDConnection *)self setPeripheral:v4];

  v5 = [(WPDConnection *)self peripheral];
  [v5 setDelegate:self];

  v6 = [MEMORY[0x277CBEAC0] dictionary];
  [(WPDConnection *)self setCharsAndServicesToDiscover:v6];

  v7 = [MEMORY[0x277CBEB58] set];
  [(WPDConnection *)self setSubscribedCharacteristics:v7];
}

- (void)updateWithCentral:(id)a3 characteristic:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WPDConnection *)self setRecentRole:0];
  [(WPDConnection *)self setCentral:v7];

  [(WPDConnection *)self setCentralCharacteristic:v6];
  v8 = [v6 service];

  [(WPDConnection *)self setCentralService:v8];
}

- (id)getPeripheral
{
  v3 = [(WPDConnection *)self peripheral];

  if (v3)
  {
    v4 = [(WPDConnection *)self peripheral];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getCentral
{
  v3 = [(WPDConnection *)self central];

  if (v3)
  {
    v4 = [(WPDConnection *)self central];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v6 = [(WPDConnection *)self voucher];
    v7 = [(WPDConnection *)self getPeripheralUUID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
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

  v4 = [(WPDConnection *)self peripheral];

  if (v4)
  {
    v5 = [(WPDConnection *)self peripheral];
    [v5 setDelegate:0];

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

  v7 = [(WPDConnection *)self voucher];

  if (v7)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection dealloc];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(WPDConnection *)self getPeripheralUUID];
      *buf = 138543362;
      v14 = v10;
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
  v4 = [(WPDConnection *)self peripheral];
  v5 = [v4 identifier];
  v6 = [(WPDConnection *)self central];
  v7 = [v6 identifier];
  v8 = [v3 stringWithFormat:@"WPDConnection - Peripheral UUID: %@, Central UUID: %@", v5, v7];

  return v8;
}

- (int64_t)connectionType
{
  v3 = [(WPDConnection *)self peripheral];
  if (v3)
  {
    v4 = v3;
    v5 = [(WPDConnection *)self central];

    if (v5)
    {
      return 2;
    }
  }

  v7 = [(WPDConnection *)self peripheral];

  if (v7)
  {
    return 1;
  }

  v8 = [(WPDConnection *)self central];

  if (!v8)
  {
    objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"No connection type" reason:@"No peripheral or central connection type" userInfo:0]);
  }

  return 0;
}

- (void)discoverCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPDConnection *)self peripheral];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v6 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CBE0A0] UUIDWithString:*(*(&v25 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [(WPDConnection *)self setCharsAndServicesToDiscover:v6];
    v18 = [(WPDConnection *)self peripheral];
    [v18 discoverServices:v11];

    goto LABEL_14;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDConnection discoverCharacteristicsAndServices:forPeripheral:];
  }

  v19 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v11 = v19;
    v20 = [v7 UUIDString];
    v21 = [(WPDConnection *)self peripheral];
    v22 = [v21 identifier];
    v23 = [v22 UUIDString];
    *buf = 138412546;
    v31 = v20;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_INFO, "Being asked to discover characteristics and services on a peripheral %@ that isn't this one %@", buf, 0x16u);

LABEL_14:
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)getPeripheralUUID
{
  v3 = [(WPDConnection *)self peripheral];

  if (v3)
  {
    [(WPDConnection *)self peripheral];
  }

  else
  {
    [(WPDConnection *)self central];
  }
  v4 = ;
  v5 = [v4 identifier];

  return v5;
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 services];
  v9 = [v6 identifier];
  if (v7 || ![v8 count])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverServices:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v23 = v10;
      v24 = [v7 localizedDescription];
      *buf = 138412802;
      v32 = v24;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      _os_log_error_impl(&dword_272965000, v23, OS_LOG_TYPE_ERROR, "Error %@ retrieving services %@ on peripheral %@. Disconnecting...", buf, 0x20u);
    }

    v11 = [v7 localizedDescription];
    if (v11)
    {
      v12 = [v7 localizedDescription];
    }

    else
    {
      v12 = @"No services were found";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't discover services on peripheral %@ with error %@", v9, v12];
    v18 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v18 errorWithDomain:@"WPErrorDomain" code:19 userInfo:v19];

    v21 = [(WPDConnection *)self client];
    [v21 connectedDevice:v9 withError:v20 shouldDiscover:0];
  }

  else
  {
    v13 = [MEMORY[0x277CCAB68] string];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_152;
    v27[3] = &unk_279E59928;
    v12 = v13;
    v28 = v12;
    [v8 enumerateObjectsUsingBlock:v27];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverServices:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v6 identifier];
      *buf = 138543618;
      v32 = v12;
      v33 = 2114;
      v34 = v16;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Discovered services %{public}@ on peripheral %{public}@", buf, 0x16u);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__WPDConnection_peripheral_didDiscoverServices___block_invoke_159;
    v25[3] = &unk_279E59950;
    v25[4] = self;
    v26 = v6;
    [v8 enumerateObjectsUsingBlock:v25];

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

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (WPLogInitOnce != -1)
  {
    [WPDConnection peripheral:didDiscoverCharacteristicsForService:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDConnection peripheral:v11 didDiscoverCharacteristicsForService:v9 error:?];
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [v9 characteristics];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__WPDConnection_peripheral_didDiscoverCharacteristicsForService_error___block_invoke_165;
  v31[3] = &unk_279E59978;
  v14 = v12;
  v32 = v14;
  [v13 enumerateObjectsUsingBlock:v31];

  v15 = [v8 identifier];
  if (v10 || ![v14 count])
  {
    v30 = self;
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didDiscoverCharacteristicsForService:error:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v28 = v16;
      v29 = [v10 localizedDescription];
      *buf = 138412802;
      v38 = v29;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      _os_log_error_impl(&dword_272965000, v28, OS_LOG_TYPE_ERROR, "Error %@ retrieving characteristics %@ on peripheral %@. Disconnecting...", buf, 0x20u);
    }

    v17 = v9;
    v18 = [v10 localizedDescription];
    v19 = v8;
    if (v18)
    {
      v20 = [v10 localizedDescription];
    }

    else
    {
      v20 = @"No characteristics were found";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't discover characteristics on peripheral %@ with error %@", v15, v20];
    v25 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = v21;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v22 = [v25 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v26];

    v23 = [(WPDConnection *)v30 client];
    [v23 connectedDevice:v15 withError:v22 shouldDiscover:0];
  }

  else
  {
    v20 = [(WPDConnection *)self client];
    v17 = v9;
    v21 = [v9 UUID];
    v22 = [v21 UUIDString];
    v33 = v22;
    v34 = v14;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v19 = v8;
    v24 = [v8 identifier];
    [(__CFString *)v20 discoveredCharacteristicsAndServices:v23 forPeripheral:v24];
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

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 UUID];
    v13 = [v12 UUIDString];
    v14 = [v8 identifier];
    v15 = [v10 localizedDescription];
    v16 = [v11 stringWithFormat:@"Couldn't update notification state for characteristic %@ on peripheral %@ with error %@", v13, v14, v15];

    v17 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v18];

    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    v20 = [(WPDConnection *)self client];
    v21 = [v8 identifier];
    [v20 connectedDevice:v21 withError:v19 shouldDiscover:0];
  }

  else
  {
    v22 = [v9 UUID];
    v16 = [v22 UUIDString];

    v23 = [v9 service];
    v24 = [v23 UUID];
    v19 = [v24 UUIDString];

    v20 = [v8 identifier];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateNotificationStateForCharacteristic:error:];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      v26 = [v9 isNotifying];
      v27 = [v9 UUID];
      [v9 service];
      v28 = v32 = self;
      v29 = [v28 UUID];
      *buf = 67109634;
      v34 = v26;
      v35 = 2114;
      v36 = v27;
      v37 = 2114;
      v38 = v29;
      _os_log_impl(&dword_272965000, log, OS_LOG_TYPE_DEFAULT, "Changed notification state %d for characteristic %{public}@ in service %{public}@", buf, 0x1Cu);

      self = v32;
    }

    v21 = [(WPDConnection *)self client];
    [v21 updatedNotificationState:objc_msgSend(v9 forCharacteristic:"isNotifying") inService:v16 withPeripheral:{v19, v20}];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateValueForCharacteristic:error:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDConnection peripheral:v11 didUpdateValueForCharacteristic:v10 error:v8];
    }

    [v8 setNotifyValue:0 forCharacteristic:v9];
    v12 = [(WPDConnection *)self client];
    v13 = [v8 identifier];
    [v12 disconnectFromPeer:v13];
  }

  else
  {
    v14 = [v9 UUID];
    v12 = [v14 UUIDString];

    v15 = [v9 service];
    v16 = [v15 UUID];
    v13 = [v16 UUIDString];

    v17 = [v8 identifier];
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didUpdateValueForCharacteristic:error:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDConnection peripheral:v18 didUpdateValueForCharacteristic:v9 error:v8];
    }

    v19 = [(WPDConnection *)self client];
    v20 = [v9 value];
    [v19 receivedData:v20 fromCharacteristic:v12 inService:v13 forPeripheral:v17];
  }
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPDConnection peripheral:didModifyServices:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v7;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Services have been modified. %@ have been invalidated", &v22, 0xCu);
  }

  v9 = [v6 identifier];
  v10 = [(WPDConnection *)self peripheral];
  v11 = [v10 identifier];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    if (v7 && [v7 count])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDConnection peripheral:didModifyServices:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [(WPDConnection *)self charsAndServicesToDiscover];
        v16 = [v6 identifier];
        v17 = [v16 UUIDString];
        v22 = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Re-discovering services and characteristics %@ on peripheral %@", &v22, 0x16u);
      }

      v18 = [(WPDConnection *)self charsAndServicesToDiscover];
      v19 = [(WPDConnection *)self peripheral];
      v20 = [v19 identifier];
      [(WPDConnection *)self discoverCharacteristicsAndServices:v18 forPeripheral:v20];
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

- (id)sendDataToCharacteristic:(id)a3 inService:(id)a4 forPeer:(id)a5
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WPDConnection *)self characteristicToSend];

  if (v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending in progress, wait for didSend callback to send next chunk of data"];
    v13 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v15 = [v13 errorWithDomain:@"WPErrorDomain" code:21 userInfo:v14];
    goto LABEL_34;
  }

  v12 = [(WPDConnection *)self peripheral];
  v14 = [(WPDConnection *)self central];
  if (WPLogInitOnce != -1)
  {
    [WPDConnection sendDataToCharacteristic:inService:forPeer:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v43 = v10;
    v44 = 2112;
    v45 = v12;
    v46 = 2112;
    v47 = v14;
    _os_log_debug_impl(&dword_272965000, v16, OS_LOG_TYPE_DEBUG, "Sending data to %@. Current peripheral: %@, current central: %@", buf, 0x20u);
  }

  v17 = [v12 identifier];
  if ([v17 isEqual:v10])
  {
  }

  else
  {
    v18 = [v14 identifier];
    v19 = [v18 isEqual:v10];

    if ((v19 & 1) == 0)
    {
      v22 = MEMORY[0x277CCACA8];
      v37 = [v12 identifier];
      v23 = [v37 UUIDString];
      v24 = [v14 identifier];
      v25 = [v24 UUIDString];
      v26 = [v10 UUIDString];
      v27 = [v22 stringWithFormat:@"CoreBluetooth couldn't find the peripheral %@ or central %@ to send data with requested peer %@", v23, v25, v26];

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

  v20 = [v8 data];
  -[WPDConnection setDataLeftToSend:](self, "setDataLeftToSend:", [v20 length]);

  [(WPDConnection *)self setCharacteristicToSend:v8];
  [(WPDConnection *)self setCharacteristicService:v9];
  if (v14)
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

  if (v12)
  {
    v21 = [v12 services];

    if (v21)
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
  v31 = [v10 UUIDString];
  v32 = [v30 stringWithFormat:@"No peripheral or central to send data with requested peer %@", v31];

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
  v3 = [(WPDConnection *)self peripheral];
  if (v3)
  {
    v4 = v3;
    v5 = [(WPDConnection *)self central];

    if (v5)
    {
      return 2;
    }
  }

  v7 = [(WPDConnection *)self peripheral];

  if (v7)
  {
    return 1;
  }

  v8 = [(WPDConnection *)self central];

  if (v8)
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
  v5 = [a3 characteristicToSend];
  [v5 writeType];
  OUTLINED_FUNCTION_8_0(&dword_272965000, v6, v7, "Sending data %@ with method %ld", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 UUID];
  v12 = [v11 UUIDString];

  v13 = [v9 service];
  v14 = [v13 UUID];
  v15 = [v14 UUIDString];

  v16 = [(WPDConnection *)self characteristicToSend];
  v17 = [v16 data];

  v18 = [v8 identifier];
  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDConnection peripheral:didWriteValueForCharacteristic:error:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      v28 = [v9 UUID];
      v30 = [v8 identifier];
      v27 = [v30 UUIDString];
      [v10 localizedDescription];
      *buf = 138412802;
      v32 = v28;
      v33 = 2112;
      v34 = v27;
      v36 = v35 = 2112;
      v26 = v36;
      _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Failed writing to characteristic %@ of peer %@ with error: %@. Forcing disconnection", buf, 0x20u);
    }

    v20 = [(WPDConnection *)self client];
    [v20 sentData:v17 forCharacteristic:v12 inService:v15 forPeripheral:v18 withError:v10];

    [v8 setNotifyValue:0 forCharacteristic:v9];
    v21 = [(WPDConnection *)self client];
    v22 = [v8 identifier];
    [v21 disconnectFromPeer:v22];
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

    v24 = [(WPDConnection *)self client];
    [v24 sentData:v17 forCharacteristic:v12 inService:v15 forPeripheral:v18 withError:0];

    [(WPDConnection *)self resetData];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getCharacteristicWithUUID:(id)a3 inService:(id)a4 forPeripheral:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WPDConnection *)self peripheral];

  if (v11)
  {
    v12 = [(WPDConnection *)self peripheral];
    v13 = [v12 services];

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
    v14 = v9;
    v27 = v14;
    v28 = &v29;
    [v13 enumerateObjectsUsingBlock:v26];
    v15 = v30[5];
    if (v15)
    {
      v16 = [v15 characteristics];
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
      v24 = v8;
      v25 = buf;
      [v16 enumerateObjectsUsingBlock:v23];
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

      v16 = WiProxLog;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = [(WPDConnection *)self peripheral];
        *buf = 138412802;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2112;
        v36 = v13;
        _os_log_error_impl(&dword_272965000, v16, OS_LOG_TYPE_ERROR, "Wireless Proximity can't retrieve the service %@ for peripheral %@. Services found = %@", buf, 0x20u);
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
      [WPDConnection getCharacteristicWithUUID:v10 inService:v19 forPeripheral:self];
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
  v3 = [(WPDConnection *)self characteristicToSend];
  if (v3)
  {
    v4 = v3;
    v5 = [(WPDConnection *)self central];

    if (v5)
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