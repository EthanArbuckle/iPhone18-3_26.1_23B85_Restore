@interface WPTransfer
- (WPTransfer)initWithDelegate:(id)a3 queue:(id)a4 machName:(id)a5 options:(id)a6;
- (WPTransferDelegate)delegate;
- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6;
- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5;
- (void)dealloc;
- (void)deviceDiscovered:(id)a3;
- (void)disconnectedDevice:(id)a3 withError:(id)a4;
- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)ignoreDevice;
- (void)invalidate;
- (void)receivedData:(id)a3;
- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6;
- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7;
- (void)startAdvertising;
- (void)startScan;
- (void)stateDidChange:(int64_t)a3;
- (void)stopAdvertising;
- (void)stopScan;
- (void)transferFailed:(id)a3;
- (void)updatedNotificationState:(BOOL)a3 forCharacteristic:(id)a4 inService:(id)a5 withPeripheral:(id)a6;
@end

@implementation WPTransfer

- (WPTransfer)initWithDelegate:(id)a3 queue:(id)a4 machName:(id)a5 options:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = WPTransfer;
  v13 = [(WPClient *)&v26 initWithQueue:a4 machName:v11];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v10);
    v14->_advertising = 0;
    v14->_scanning = 0;
    v14->_connectedToPeripheral = 0;
    v15 = [MEMORY[0x277CBEB58] set];
    ignoredDevices = v14->_ignoredDevices;
    v14->_ignoredDevices = v15;

    v17 = [MEMORY[0x277CBEB28] data];
    notificationData = v14->_notificationData;
    v14->_notificationData = v17;

    v14->_sentEOM = 0;
    v14->_sendingTransferComplete = 0;
    v19 = [v12 objectForKeyedSubscript:@"WPTimeAfterUnlock"];
    v20 = v19;
    if (v19)
    {
      v19 = [v19 integerValue];
    }

    v14->_lockScanTimer = v19;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer initWithDelegate:queue:machName:options:];
  }

  v21 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [(WPTransfer *)v14 delegate];
    *buf = 134218498;
    v28 = v14;
    v29 = 2114;
    v30 = v11;
    v31 = 2048;
    v32 = v23;
    _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_DEFAULT, "ATVSetup initWithDelegate self: %p with machName: %{public}@, delegate: %p", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup invalidate", buf, 2u);
  }

  [(WPTransfer *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = WPTransfer;
  [(WPClient *)&v4 invalidate];
}

- (void)dealloc
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup dealloc", buf, 2u);
  }

  [(WPTransfer *)self invalidate];
  v4.receiver = self;
  v4.super_class = WPTransfer;
  [(WPClient *)&v4 dealloc];
}

- (void)startScan
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"ATVSetup can't start scanning for ATVSetup because it's already advertising";
  _os_log_error_impl(&dword_274327000, log, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stopScan
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer stopScan];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup stop scanning for ATV Setup", buf, 2u);
  }

  v4 = objc_opt_new();
  [v4 setClientType:4];
  v5.receiver = self;
  v5.super_class = WPTransfer;
  [(WPClient *)&v5 stopScanning:v4];
  [(WPTransfer *)self setScanning:0];
}

- (void)startAdvertising
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"ATVSetup advertising is not supported on this platform";
  _os_log_error_impl(&dword_274327000, log, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising
{
  if (WPLogInitOnce != -1)
  {
    [WPTransfer stopAdvertising];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ATVSetup stop advertising for ATV Setup", buf, 2u);
  }

  v4 = [WPAdvertisingRequest requestForClientType:4];
  v5.receiver = self;
  v5.super_class = WPTransfer;
  [(WPClient *)&v5 stopAdvertising:v4];
  [(WPTransfer *)self setAdvertising:0];
}

- (void)ignoreDevice
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(WPTransfer *)self currentPeripheralUUID];

  if (v3)
  {
    v4 = [(WPTransfer *)self ignoredDevices];
    v5 = [(WPTransfer *)self currentPeripheralUUID];
    [v4 addObject:v5];

    if (WPLogInitOnce != -1)
    {
      [WPTransfer ignoreDevice];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(WPTransfer *)self currentPeripheralUUID];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "ATVSetup Ignoring device %{public}@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v5 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer advertisingFailedToStart:ofType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer advertisingFailedToStart:v6 ofType:?];
  }

  [(WPTransfer *)self setAdvertising:0];
  v7 = [(WPTransfer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WPTransfer *)self delegate];
    [v9 transferDidFailToStartAdvertising:v5];
  }
}

- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v5 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer scanningFailedToStart:ofType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer scanningFailedToStart:v6 ofType:?];
  }

  [(WPTransfer *)self setScanning:0];
  v7 = [(WPTransfer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WPTransfer *)self delegate];
    [v9 transferDidFailToStartScanning:v5];
  }
}

- (void)deviceDiscovered:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kDeviceRSSI"];
  v5 = [v3 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [v3 objectForKeyedSubscript:@"kDeviceName"];
  v7 = [v3 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
  v10 = [v9 objectForKeyedSubscript:@"WIPROX"];

  v11 = [v10 objectForKeyedSubscript:@"ATVCutoff"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    if (WPLogInitOnce != -1)
    {
      [WPTransfer deviceDiscovered:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTransfer startScan];
    }
  }

  else
  {
    v13 = &unk_28835C768;
  }

  v14 = [v4 integerValue];
  if (v14 >= [v13 integerValue] && objc_msgSend(v4, "integerValue") <= 0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer deviceDiscovered:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      v25 = v16;
      v26 = [(WPTransfer *)self clientAsString];
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_debug_impl(&dword_274327000, v25, OS_LOG_TYPE_DEBUG, "ATVSetup %@ evaluating %@ (data: %@)", buf, 0x20u);
    }

    if ([v7 length])
    {
      v17 = v7;
      if (*([v7 bytes] + 4))
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        v18 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v33 = v6;
          v34 = 2112;
          v35 = v4;
          v36 = 2112;
          v37 = v7;
          _os_log_debug_impl(&dword_274327000, v18, OS_LOG_TYPE_DEBUG, "ATVSetup Discovered %@ (%@), but advertising packet (%@) indicates it will use nearby info. Discontinuing legacy setup.", buf, 0x20u);
        }

        goto LABEL_9;
      }
    }

    v19 = [(WPTransfer *)self ignoredDevices];
    v20 = [v19 containsObject:v5];

    if (v20)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer deviceDiscovered:];
      }

      goto LABEL_9;
    }

    obj = [(WPTransfer *)self currentPeripheralUUID];
    objc_sync_enter(obj);
    v21 = [(WPTransfer *)self currentPeripheralUUID];
    v22 = v21 == 0;

    if (v22)
    {
      v23 = [(WPTransfer *)self currentPeripheralUUID];
      v24 = [v23 isEqual:v5];

      if (!v24)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPTransfer deviceDiscovered:];
        }

        [(WPTransfer *)self setCurrentPeripheralUUID:v5, obj];
        objc_sync_exit(obja);

        if (WPLogInitOnce != -1)
        {
          [WPTransfer deviceDiscovered:];
        }

        v27 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v33 = v6;
          v34 = 2114;
          v35 = v4;
          _os_log_impl(&dword_274327000, v27, OS_LOG_TYPE_DEFAULT, "ATVSetup trying to connect to %{public}@ (%{public}@)", buf, 0x16u);
        }

        v31.receiver = self;
        v31.super_class = WPTransfer;
        [(WPClient *)&v31 connectToPeer:v5];
        goto LABEL_9;
      }

      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer deviceDiscovered:];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer deviceDiscovered:];
      }
    }

    objc_sync_exit(obj);
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5
{
  v5 = a5;
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(WPTransfer *)self currentPeripheralUUID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    if (v5)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer connectedDevice:withError:shouldDiscover:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v8;
        _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup connected to device: %{public}@", buf, 0xCu);
      }

      v24 = @"2AE5F669-81BB-435F-961C-EADD8A30AF07";
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"6C251515-F290-4F91-808C-5123A0CD02E9", 0}];
      v25[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      v19.receiver = self;
      v19.super_class = WPTransfer;
      [(WPClient *)&v19 discoverCharacteristicsAndServices:v14 forPeripheral:v8];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer connectedDevice:withError:shouldDiscover:];
      }

      v15 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v9 localizedDescription];
        *buf = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&dword_274327000, v16, OS_LOG_TYPE_DEFAULT, "ATVSetup connected to device: %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer connectedDevice:withError:shouldDiscover:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer connectedDevice:withError:shouldDiscover:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedDevice:(id)a3 withError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer disconnectedDevice:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 localizedDescription];
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_274327000, v9, OS_LOG_TYPE_DEFAULT, "ATVSetup disconnected from device: %{public}@ with error: %{public}@", &v16, 0x16u);
  }

  if (v7)
  {
    v11 = [(WPTransfer *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(WPTransfer *)self delegate];
      [v13 transferDidFailWithError:v7];
    }
  }

  [(WPTransfer *)self setCurrentPeripheralUUID:0];
  [(WPTransfer *)self setConnectedToPeripheral:0];
  v14 = [(WPTransfer *)self notificationData];
  [v14 setLength:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPTransfer *)self currentPeripheralUUID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
    if (v10)
    {
      [(WPTransfer *)self setConnectedToPeripheral:1];
      if (WPLogInitOnce != -1)
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "ATVSetup discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v21 = 0;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240;
      v18[3] = &unk_279ED7548;
      v18[4] = buf;
      [v10 enumerateObjectsUsingBlock:v18];
      if (*(*&buf[8] + 24) == 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup subscribing to ATV setup characteristic", v17, 2u);
        }

        v16.receiver = self;
        v16.super_class = WPTransfer;
        [(WPClient *)&v16 shouldSubscribe:1 toPeer:v7 withCharacteristic:@"6C251515-F290-4F91-808C-5123A0CD02E9" inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
        }

        v15.receiver = self;
        v15.super_class = WPTransfer;
        [(WPClient *)&v15 disconnectFromPeer:v7];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v19.receiver = self;
      v19.super_class = WPTransfer;
      [(WPClient *)&v19 disconnectFromPeer:v7];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTransfer *)v13 discoveredCharacteristicsAndServices:v7 forPeripheral:self];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if (WPLogInitOnce != -1)
    {
      __65__WPTransfer_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_240_cold_1();
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "ATVSetup found our characteristic, subsribe to it.", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 UUIDString];
  v15 = [(WPTransfer *)self currentPeripheralUUID];
  v16 = [v15 UUIDString];
  if ([v14 isEqualToString:v16])
  {
  }

  else
  {
    v17 = [(WPTransfer *)self scanning];

    if (v17)
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:v13 forCharacteristic:v18 inService:self forPeripheral:?];
      }

      goto LABEL_46;
    }
  }

  if ([v11 isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if ([v12 isEqualToString:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"])
    {
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [(WPTransfer *)self notificationData];
        *buf = 138543874;
        v41 = v10;
        v42 = 2114;
        v43 = v13;
        v44 = 2114;
        v45 = v22;
        _os_log_impl(&dword_274327000, v21, OS_LOG_TYPE_DEFAULT, "ATVSetup received data: %{public}@ from device: %{public}@, existing data: %{public}@", buf, 0x20u);
      }

      if ([v19 isEqualToString:@"EOM"])
      {
        v23 = [(WPTransfer *)self notificationData];
        v24 = [v23 length];

        if (v24)
        {
          v25 = [(WPTransfer *)self notificationData];
          [(WPTransfer *)self receivedData:v25];
        }

        v26 = [(WPTransfer *)self notificationData];
        [v26 setLength:0];
      }

      else if ([v19 isEqualToString:@"COMPLETE"])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
        }

        v27 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v27, OS_LOG_TYPE_DEFAULT, "ATVSetup COMPLETE", buf, 2u);
        }

        v28 = [(WPTransfer *)self notificationData];
        [v28 setLength:0];

        if ([(WPTransfer *)self scanning])
        {
          v37.receiver = self;
          v37.super_class = WPTransfer;
          [(WPClient *)&v37 disconnectFromPeer:v13];
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
          }

          v32 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_274327000, v32, OS_LOG_TYPE_DEFAULT, "ATVSetup - We are peripheral, wait for central to get disconnected", buf, 2u);
          }

          [(WPTransfer *)self setUnsubscribeComing:1];
        }
      }

      else
      {
        if ([v19 isEqualToString:@"FAIL"])
        {
          v38 = *MEMORY[0x277CCA450];
          v39 = @"Received transfer fail message from the other side";
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WPErrorDomain" code:23 userInfo:v29];
          [(WPTransfer *)self transferFailed:v30];
          v31 = [(WPTransfer *)self notificationData];
          [v31 setLength:0];
        }

        else
        {
          v33 = [(WPTransfer *)self notificationData];
          [v33 appendData:v10];

          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
          }

          v34 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_45;
          }

          v29 = v34;
          v35 = [(WPTransfer *)self notificationData];
          *buf = 138543618;
          v41 = v10;
          v42 = 2114;
          v43 = v35;
          _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "ATVSetup got new data %{public}@, data is now %{public}@", buf, 0x16u);
        }
      }

LABEL_45:

      goto LABEL_46;
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }

LABEL_46:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WPTransfer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPTransfer *)self delegate];
    v8 = [v7 transferDidReceiveData:v4];

    if (v8)
    {
      if ([v8 length] < 0xEA61)
      {
        if (![v8 length])
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:];
          }

          v33 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [WPTransfer receivedData:v33];
          }

          v12 = MEMORY[0x277CCA9B8];
          v44 = *MEMORY[0x277CCA450];
          v45 = @"Data too short to send";
          v13 = MEMORY[0x277CBEAC0];
          v14 = &v45;
          v15 = &v44;
          goto LABEL_51;
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPTransfer receivedData:v9];
        }

        v10 = [(WPTransfer *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v12 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          v47[0] = @"Data too long to send";
          v13 = MEMORY[0x277CBEAC0];
          v14 = v47;
          v15 = &v46;
LABEL_51:
          v34 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
          v35 = [v12 errorWithDomain:@"WPErrorDomain" code:23 userInfo:v34];

          v36 = [(WPTransfer *)self delegate];
          [v36 transferDidFailWithError:v35];

          goto LABEL_52;
        }
      }

      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer receivedData:];
      }

      [(WPTransfer *)self setSentEOM:0];
      v17 = objc_opt_new();
      v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
      [v17 setUuid:v25];

      [v17 setData:v8];
      v26 = [(WPTransfer *)self currentPeripheralUUID];

      if (v26)
      {
        v24 = [(WPTransfer *)self currentPeripheralUUID];
        [(WPClient *)&v41 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class, self, WPTransfer];
      }

      else
      {
        v24 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)&v40 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, v38.receiver, v38.super_class, v39.receiver, v39.super_class, self, WPTransfer, v41.receiver, v41.super_class];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer receivedData:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:];
      }

      v17 = objc_opt_new();
      v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
      [v17 setUuid:v18];

      v19 = [@"COMPLETE" dataUsingEncoding:4];
      [v17 setData:v19];

      if ([(WPTransfer *)self advertiserConnected]&& ([(WPTransfer *)self currentlySubscribedCentral], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v21 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138543362;
          v43 = v23;
          _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_DEFAULT, "ATVSetup Peripheral sending transfer complete to Central: %{public}@", buf, 0xCu);
        }

        [v17 setProperties:1];
        v24 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)&v39 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, v38.receiver, v38.super_class, self, WPTransfer, v40.receiver, v40.super_class, v41.receiver, v41.super_class];
      }

      else
      {
        if (![(WPTransfer *)self connectedToPeripheral]|| ([(WPTransfer *)self currentPeripheralUUID], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
        {
          if (WPLogInitOnce != -1)
          {
            [WPTransfer receivedData:];
          }

          v32 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [(WPTransfer *)v32 receivedData:?];
          }

          goto LABEL_45;
        }

        if (WPLogInitOnce != -1)
        {
          [WPTransfer receivedData:];
        }

        v28 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = [(WPTransfer *)self currentPeripheralUUID];
          v31 = [v30 UUIDString];
          *buf = 138543362;
          v43 = v31;
          _os_log_impl(&dword_274327000, v29, OS_LOG_TYPE_DEFAULT, "ATVSetup Central sending transfer complete to Peripheral: %{public}@", buf, 0xCu);
        }

        [v17 setProperties:0];
        [(WPTransfer *)self setSendingTransferComplete:1];
        v24 = [(WPTransfer *)self currentPeripheralUUID];
        [(WPClient *)&v38 sendDataToCharacteristic:v17 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, self, WPTransfer, v39.receiver, v39.super_class, v40.receiver, v40.super_class, v41.receiver, v41.super_class];
      }
    }

LABEL_45:
LABEL_52:

    goto LABEL_53;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer receivedData:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer receivedData:v16];
  }

LABEL_53:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if ([a4 isEqualToString:@"6C251515-F290-4F91-808C-5123A0CD02E9"])
  {
    if ([v10 isEqualToString:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"])
    {
      if ([(WPTransfer *)self sendingTransferComplete])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v12 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "ATVSetup transfer is completed, disconnect", buf, 2u);
        }

        [(WPTransfer *)self setSendingTransferComplete:0];
        v29.receiver = self;
        v29.super_class = WPTransfer;
        [(WPClient *)&v29 shouldSubscribe:0 toPeer:v11 withCharacteristic:@"6C251515-F290-4F91-808C-5123A0CD02E9" inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07"];
        v28.receiver = self;
        v28.super_class = WPTransfer;
        [(WPClient *)&v28 disconnectFromPeer:v11];
      }

      else if ([(WPTransfer *)self sentEOM])
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "ATVSetup already sent EOM, return", buf, 2u);
        }
      }

      else
      {
        [(WPTransfer *)self setSentEOM:1];
        v14 = objc_opt_new();
        v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C251515-F290-4F91-808C-5123A0CD02E9"];
        [v14 setUuid:v15];

        v16 = [@"EOM" dataUsingEncoding:4];
        [v14 setData:v16];

        if (WPLogInitOnce != -1)
        {
          [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
        }

        v17 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [v14 data];
          v20 = [(WPTransfer *)self currentPeripheralUUID];
          v21 = [v20 UUIDString];
          v22 = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138544130;
          v31 = v19;
          v32 = 2114;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          v36 = 2048;
          v37 = self;
          _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "ATVSetup send data: %{public}@, peripheral: %{public}@, central: %{public}@, self: %p", buf, 0x2Au);
        }

        v23 = [(WPTransfer *)self currentPeripheralUUID];

        if (v23)
        {
          v24 = [(WPTransfer *)self currentPeripheralUUID];
          [(WPClient *)&v27 sendDataToCharacteristic:v14 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, v26.receiver, v26.super_class, self, WPTransfer];
        }

        else
        {
          v24 = [(WPTransfer *)self currentlySubscribedCentral];
          [(WPClient *)&v26 sendDataToCharacteristic:v14 inService:@"2AE5F669-81BB-435F-961C-EADD8A30AF07" forPeer:v24, self, WPTransfer, v27.receiver, v27.super_class];
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTransfer receivedData:forCharacteristic:inService:forPeripheral:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updatedNotificationState:(BOOL)a3 forCharacteristic:(id)a4 inService:(id)a5 withPeripheral:(id)a6
{
  v8 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTransfer updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "ATVSetup subscribed to characteristic %{public}@ for service %{public}@", &v15, 0x16u);
    }

    [(WPTransfer *)self receivedData:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transferFailed:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPTransfer transferFailed:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTransfer transferFailed:v5];
  }

  v6 = [(WPTransfer *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(WPTransfer *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(WPTransfer *)self delegate];
      [v10 transferDidFailWithError:v4];
    }
  }
}

- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6
{
  v8 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v8)
  {
    v13 = [(WPTransfer *)self currentlySubscribedCentral];
    v14 = v13;
    if (v13 == v10)
    {
    }

    else
    {
      v15 = [(WPTransfer *)self currentlySubscribedCentral];

      if (v15)
      {
        if (WPLogInitOnce != -1)
        {
          [WPTransfer central:subscribed:toCharacteristic:inService:];
        }

        v16 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [(WPTransfer *)self currentlySubscribedCentral];
          *buf = 138543618;
          v44 = v10;
          v45 = 2114;
          v46 = v18;
          _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "ATVSetup central %{public}@ has subscribed, but %{public}@ is already subscribed.  Sending back invalid connection message", buf, 0x16u);
        }

        v19 = objc_alloc_init(WPCharacteristic);
        v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
        [(WPCharacteristic *)v19 setUuid:v20];

        v21 = [@"INV_CONNECTION" dataUsingEncoding:4];
        [(WPCharacteristic *)v19 setData:v21];

        v22 = [(WPTransfer *)self currentlySubscribedCentral];
        [(WPClient *)self sendDataToCharacteristic:v19 inService:v12 forPeer:v22];

        goto LABEL_45;
      }
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v32 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v10;
      _os_log_impl(&dword_274327000, v32, OS_LOG_TYPE_DEFAULT, "ATVSetup Central %{public}@ subscribed to ATVSetup characteristic", buf, 0xCu);
    }

    [(WPTransfer *)self setCurrentlySubscribedCentral:v10];
    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v33 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v33, OS_LOG_TYPE_DEFAULT, "ATVSetup Client subscribed - transfer beginning", buf, 2u);
    }

    v34 = self;
    v35 = 1;
LABEL_44:
    [(WPTransfer *)v34 setAdvertiserConnected:v35];
    goto LABEL_45;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer central:subscribed:toCharacteristic:inService:];
  }

  v23 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v10;
    _os_log_impl(&dword_274327000, v23, OS_LOG_TYPE_DEFAULT, "ATVSetup Central %{public}@ unsubscribed from ATVSetup characteristic", buf, 0xCu);
  }

  v24 = [(WPTransfer *)self currentlySubscribedCentral];
  v25 = [v24 isEqual:v10];

  if (v25)
  {
    [(WPTransfer *)self setCurrentlySubscribedCentral:0];
    v26 = [(WPTransfer *)self notificationData];
    [v26 setLength:0];

    if ([(WPTransfer *)self advertising])
    {
      if (WPLogInitOnce != -1)
      {
        [WPTransfer central:subscribed:toCharacteristic:inService:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPTransfer central:subscribed:toCharacteristic:inService:];
      }

      [(WPTransfer *)self startAdvertising];
    }

    if (WPLogInitOnce != -1)
    {
      [WPTransfer central:subscribed:toCharacteristic:inService:];
    }

    v27 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v27, OS_LOG_TYPE_DEFAULT, "ATVSetup client unsubscribed - we're done with this transaction", buf, 2u);
    }

    if ([(WPTransfer *)self unsubscribeComing])
    {
      v28 = [(WPTransfer *)self delegate];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = [(WPTransfer *)self delegate];
        [v30 transferComplete];
      }

      [(WPTransfer *)self setUnsubscribeComing:0];
    }

    else
    {
      v36 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"Client unsubscribed before the transfer was complete";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v38 = [v36 errorWithDomain:@"WPErrorDomain" code:23 userInfo:v37];

      v39 = [(WPTransfer *)self delegate];
      [v39 transferDidFailWithError:v38];
    }

    v34 = self;
    v35 = 0;
    goto LABEL_44;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTransfer central:subscribed:toCharacteristic:inService:];
  }

  v31 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPTransfer central:v10 subscribed:v31 toCharacteristic:self inService:?];
  }

LABEL_45:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)a3
{
  v5 = [(WPClient *)self state];
  v12.receiver = self;
  v12.super_class = WPTransfer;
  [(WPClient *)&v12 stateDidChange:a3];
  if (v5 != a3)
  {
    v6 = [(WPTransfer *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPTransfer *)self delegate];
      [v8 transferDidUpdateAdvertiserState:self];
    }

    v9 = [(WPTransfer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(WPTransfer *)self delegate];
      [v11 transferDidUpdateScannerState:self];
    }
  }
}

- (WPTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)advertisingFailedToStart:(void *)a1 ofType:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(void *)a1 ofType:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deviceDiscovered:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "ATVSetup redundant code hit. Discovered %@ (%@) but already trying to connect to it", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_274327000, v1, OS_LOG_TYPE_DEBUG, "ATVSetup Discovered %@ (%@) but it's in the list of ignored devices", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:(void *)a3 forPeripheral:.cold.2(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 UUIDString];
  v7 = [a3 currentPeripheralUUID];
  v8 = [v7 UUIDString];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "ATVSetup being told we've connected to a device %@ that we didn't request to connect to, ignoring - current peripheral %@", v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a3 forCharacteristic:inService:forPeripheral:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 currentPeripheralUUID];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_274327000, v4, OS_LOG_TYPE_ERROR, "ATVSetup data updated for a peripheral %@ we're not interested in %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a1 .cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a1 .cold.6(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() length];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a1 .cold.14(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 currentlySubscribedCentral];
  v5 = [a2 currentPeripheralUUID];
  v7 = 138413058;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 1024;
  v12 = [a2 connectedToPeripheral];
  v13 = 1024;
  v14 = [a2 advertiserConnected];
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "ATVSetup Error: Trying to close a transfer on a WPTransfer object that is neither advertising:%@ or scanning:%@ or connected:%d, advconnected: %d", &v7, 0x22u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transferFailed:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)central:(void *)a3 subscribed:toCharacteristic:inService:.cold.3(uint64_t a1, void *a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 currentlySubscribedCentral];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_274327000, v4, OS_LOG_TYPE_DEBUG, "ATVSetup Warning: Central %@ did unsubscribe.  currentlySubscribedCentral is %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end