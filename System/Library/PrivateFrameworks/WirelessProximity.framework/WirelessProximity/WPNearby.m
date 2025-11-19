@interface WPNearby
+ (int64_t)nearbyTypeFromClientType:(unsigned __int8)a3;
+ (unsigned)clientTypeFromNearbyType:(int64_t)a3;
- (WPNearby)init;
- (WPNearby)initWithDelegate:(id)a3 queue:(id)a4;
- (WPNearbyDelegate)delegate;
- (void)bandwidthStateUpdated:(id)a3;
- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6;
- (void)clearDuplicatesForType:(int64_t)a3;
- (void)connectToPeer:(id)a3 withOptions:(id)a4;
- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5;
- (void)connectedDeviceOverLEPipe:(id)a3;
- (void)deviceDiscovered:(id)a3;
- (void)disconnectFromPeer:(id)a3;
- (void)disconnectedDevice:(id)a3 withError:(id)a4;
- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4;
- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)populateClientGATT:(id)a3;
- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6;
- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5;
- (void)sendData:(id)a3 toPeer:(id)a4;
- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7;
- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6;
- (void)startAdvertisingOfType:(int64_t)a3 data:(id)a4 priority:(int64_t)a5 mode:(int64_t)a6 options:(id)a7;
- (void)startScanningForType:(int64_t)a3 data:(id)a4 mask:(id)a5 peers:(id)a6 scanMode:(int64_t)a7 rssi:(id)a8 duplicates:(BOOL)a9 scanCache:(BOOL)a10 useCaseList:(id)a11;
- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)stateDidChange:(int64_t)a3;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4;
- (void)updatedNotificationState:(BOOL)a3 forCharacteristic:(id)a4 inService:(id)a5 withPeripheral:(id)a6;
@end

@implementation WPNearby

- (WPNearbyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WPNearby)initWithDelegate:(id)a3 queue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = WPNearby;
  v7 = [(WPClient *)&v18 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_btBandwidthState = -1;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    transfers = v8->_transfers;
    v8->_transfers = v9;

    leCapablePeers = v8->_leCapablePeers;
    v8->_leCapablePeers = 0;

    [(WPClient *)v8 setConnectionUseCase:8];
    v17.receiver = v8;
    v17.super_class = WPNearby;
    [(WPClient *)&v17 listenToBandwidthNotifications];
    v8->_nearbySignPostID = os_signpost_id_make_with_pointer(WiProxLog, v8);
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby initWithDelegate:queue:];
  }

  v12 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(WPNearby *)v8 delegate];
    *buf = 134218240;
    v20 = v8;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby initWithDelegate self: %p, delegate: %p", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (WPNearby)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer for %@", v5, v7}];

  return 0;
}

+ (unsigned)clientTypeFromNearbyType:(int64_t)a3
{
  if (a3 == 1)
  {
    return 16;
  }

  if (a3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownNearbyType" reason:@"The nearby type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 15;
}

+ (int64_t)nearbyTypeFromClientType:(unsigned __int8)a3
{
  if (a3 == 16)
  {
    return 1;
  }

  if (a3 != 15)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownClientType" reason:@"The client type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 0;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPNearby invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "Nearby invalidate by client", buf, 2u);
  }

  [(WPNearby *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPNearby;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.nearby"];
  v4.receiver = self;
  v4.super_class = WPNearby;
  [(WPClient *)&v4 invalidate];
}

- (void)populateClientGATT:(id)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
  [v6 setUuid:v4];

  [v6 setProperties:24];
  [v6 setPermissions:2];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
  v3[2](v3, v6, v5);
}

- (void)startAdvertisingOfType:(int64_t)a3 data:(id)a4 priority:(int64_t)a5 mode:(int64_t)a6 options:(id)a7
{
  v32[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  if (v12 && [v12 length] < 0x17)
  {
    v14 = [WPAdvertisingRequest requestForClientType:[WPNearby clientTypeFromNearbyType:a3]];
    [v14 setAdvertisingRate:a6];
    [v14 setConnectable:1];
    [v14 setStopOnAdvertisingAddressChange:1];
    [v14 setAdvertisingData:v12];
    if (a3 == 1 && a5 == 1)
    {
      [v14 changePriorityValue:1];
      [v14 setUpdateTime:5.0];
    }

    if (WPLogInitOnce != -1)
    {
      [WPNearby startAdvertisingOfType:data:priority:mode:options:];
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v24 = v14;
      v25 = 2048;
      v26 = a5;
      v27 = 2048;
      v28 = a6;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_274327000, v20, OS_LOG_TYPE_DEFAULT, "Nearby start advertising with data: %{public}@ priority %ld mode %ld options %@", buf, 0x2Au);
    }

    v22.receiver = self;
    v22.super_class = WPNearby;
    [(WPClient *)&v22 startAdvertising:v14];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby can't start advertising of type: %ld because bad data: %@ was provided", a3, v12];
    if (WPLogInitOnce != -1)
    {
      [WPNearby startAdvertisingOfType:data:priority:mode:options:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v17 = [v15 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v16];

    v18 = [(WPNearby *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v19 = [(WPNearby *)self delegate];
      [v19 nearby:self didFailToStartAdvertisingOfType:a3 withError:v17];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 setUpdateTime:0.0];
  if ([v5 advertisingRate] == 432)
  {
    v7 = 432;
  }

  else
  {
    v7 = 290;
  }

  [v5 setAdvertisingRate:v7];
  if ([v5 clientType] == 16)
  {
    [v5 changePriorityValue:0];
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby updateAdvertisingRequest:withUpdate:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby update advertising with data: %{public}@", &v10, 0xCu);
  }

  v6[2](v6, v5);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [WPNearby clientTypeFromNearbyType:a3];
  v5 = [WPAdvertisingRequest requestForClientType:v4];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stopAdvertisingOfType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby stop advertising of type: %d", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = WPNearby;
  [(WPClient *)&v8 stopAdvertising:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startScanningForType:(int64_t)a3 data:(id)a4 mask:(id)a5 peers:(id)a6 scanMode:(int64_t)a7 rssi:(id)a8 duplicates:(BOOL)a9 scanCache:(BOOL)a10 useCaseList:(id)a11
{
  v60[1] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a11;
  if (a7)
  {
    if (a7 == 1)
    {
      v22 = 30;
    }

    else if (a7 == 2)
    {
      v22 = 40;
    }

    else
    {
      v22 = a7;
    }
  }

  else
  {
    v22 = 10;
  }

  v23 = [v17 length];
  v24 = [v18 length];
  if (v23 <= 22 && v24 < 23)
  {
    v25 = objc_opt_new();
    v26 = v25;
    if (a3 != 1)
    {
      if (a3)
      {
        v54 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownNearbyType" reason:@"The nearby type isn't valid" userInfo:0];
        objc_exception_throw(v54);
      }

      v27 = v21;
      v28 = v19;
      switch(v22)
      {
        case 40:
          v29 = 30;
          break;
        case 5:
          v29 = 966;
          break;
        case 30:
          v29 = 40;
          break;
        case 20:
          v29 = 60;
          break;
        default:
          v29 = 300;
          break;
      }

      [v25 setClientType:15];
      [v26 setNearbyScanMode:v22];
      v30 = [(WPClient *)self isBubbleTestClient];
      v31 = 966;
      if (v22 == 40 && v30)
      {
        [v26 setNearbyScanMode:40];
        v31 = 30;
        v29 = 30;
      }

LABEL_46:
      *&buf = v29;
      *(&buf + 1) = v31;
      v58 = 30;
      [v26 setScanningRates:&buf];
      if (v17)
      {
        [v26 setBlobValue:v17];
      }

      v43 = v28;
      if (v18)
      {
        [v26 setMaskValue:v18];
      }

      v44 = v27;
      if (v43)
      {
        [v26 setPeers:v43];
      }

      v46 = self;
      if (v20)
      {
        [v26 setRssiThreshold:v20];
      }

      [v26 setScanCache:a10];
      [v26 setAllowDuplicates:a9];
      if ([v44 count])
      {
        v47 = v20;
        v48 = v43;
        v49 = MEMORY[0x277CBEA60];
        v50 = [v44 allObjects];
        v51 = [v49 arrayWithArray:v50];
        [v26 setUseCaseList:v51];

        v43 = v48;
        v20 = v47;
      }

      if (WPLogInitOnce != -1)
      {
        [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
      }

      v52 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_274327000, v52, OS_LOG_TYPE_DEFAULT, "Nearby start scanning with data: %{public}@", &buf, 0xCu);
      }

      v56.receiver = v46;
      v56.super_class = WPNearby;
      [(WPClient *)&v56 startScanning:v26];
      goto LABEL_61;
    }

    v27 = v21;
    v28 = v19;
    if (v22 > 29)
    {
      if (v22 == 40)
      {
        v29 = 30;
        goto LABEL_38;
      }

      if (v22 == 30)
      {
        v29 = 40;
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 5)
      {
        v29 = 966;
        goto LABEL_38;
      }

      if (v22 == 20)
      {
        v29 = 60;
LABEL_38:
        [v25 setClientType:16];
        [v26 setNearbyScanMode:v22];
        if (([v27 containsObject:&unk_28835C720] & 1) != 0 || objc_msgSend(v27, "containsObject:", &unk_28835C738))
        {
          if (WPLogInitOnce != -1)
          {
            [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
          }

          v45 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v27;
            _os_log_impl(&dword_274327000, v45, OS_LOG_TYPE_DEFAULT, "Nearby is asking for NearbyInfo EDT default camera or stream start scan %@", &buf, 0xCu);
          }

          v31 = 60;
        }

        else
        {
          v31 = 966;
        }

        goto LABEL_46;
      }
    }

    v29 = 300;
    goto LABEL_38;
  }

  v32 = self;
  v55 = v18;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby data (%ld bytes) or mask (%ld bytes) length is larger than the max length (22 bytes) for type: %ld", v23, v24, a3];
  v34 = v17;
  v35 = v20;
  if (WPLogInitOnce != -1)
  {
    [WPNearby startScanningForType:data:mask:peers:scanMode:rssi:duplicates:scanCache:useCaseList:];
  }

  v36 = v21;
  v37 = v19;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  v38 = MEMORY[0x277CCA9B8];
  v59 = *MEMORY[0x277CCA450];
  v60[0] = v33;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  v26 = [v38 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v39];

  v40 = [(WPNearby *)v32 delegate];
  v41 = objc_opt_respondsToSelector();

  if (v41)
  {
    v42 = [(WPNearby *)v32 delegate];
    [v42 nearby:v32 didFailToStartScanningForType:a3 withError:v26];
  }

  v43 = v37;
  v20 = v35;
  v44 = v36;
  v17 = v34;
  v18 = v55;
LABEL_61:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)stopScanningForType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPNearby clientTypeFromNearbyType:](WPNearby, "clientTypeFromNearbyType:", a3)}];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stopScanningForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby stop scanning: %{public}@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = WPNearby;
  [(WPClient *)&v8 stopScanning:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearDuplicatesForType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPNearby clientTypeFromNearbyType:](WPNearby, "clientTypeFromNearbyType:", a3)}];
  if (WPLogInitOnce != -1)
  {
    [WPNearby clearDuplicatesForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Nearby clear duplicate filter cache type %ld", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = WPNearby;
  [(WPClient *)&v8 clearDuplicateFilterCache:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(id)a3
{
  v48[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceType"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  v10 = [WPNearby nearbyTypeFromClientType:v7];
  if (v5)
  {
    v11 = v10;
    v12 = [(WPNearby *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v39 = v9;
      v40 = v11;
      v14 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
      v15 = [v4 objectForKeyedSubscript:@"kDeviceManufacturerData"];
      v16 = [v4 objectForKeyedSubscript:@"kDevicePaired"];
      v47[0] = @"WPNearbyKeyDeviceAddress";
      v17 = v14;
      if (!v14)
      {
        v17 = [MEMORY[0x277CBEA90] data];
      }

      v48[0] = v17;
      v48[1] = v15;
      v38 = v15;
      v47[1] = @"WPNearbyKeyManufacturerData";
      v47[2] = @"WPNearbyKeyPaired";
      v18 = MEMORY[0x277CBEC28];
      if (v16)
      {
        v18 = v16;
      }

      v48[2] = v18;
      v47[3] = @"WPNearbyKeyRSSI";
      v19 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
      v48[3] = v19;
      v47[4] = @"kDeviceChannel";
      v20 = [v4 objectForKeyedSubscript:?];
      v48[4] = v20;
      v47[5] = @"WPNearbyKeyDeviceTime";
      v21 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
      v48[5] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];

      if (!v14)
      {
      }

      if (WPLogInitOnce != -1)
      {
        [WPNearby deviceDiscovered:];
      }

      v23 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v42 = v40;
        v43 = 2112;
        v44 = v5;
        v45 = 2112;
        v46 = v22;
        _os_log_impl(&dword_274327000, v23, OS_LOG_TYPE_INFO, "Nearby didDiscoverType %ld UUID %@ info %@", buf, 0x20u);
      }

      v24 = [(WPNearby *)self delegate];
      v9 = v39;
      [v24 nearby:self didDiscoverType:v40 withData:v39 fromPeer:v5 peerInfo:v22];
    }

    else
    {
      v33 = [(WPNearby *)self delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        if (WPLogInitOnce != -1)
        {
          [WPNearby deviceDiscovered:];
        }

        v35 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v42 = v11;
          v43 = 2112;
          v44 = v5;
          _os_log_impl(&dword_274327000, v35, OS_LOG_TYPE_INFO, "Nearby didDiscoverType %ld UUID %@", buf, 0x16u);
        }

        v36 = [(WPNearby *)self delegate];
        [v36 nearby:self didDiscoverType:v11 withData:v9 fromPeer:v5];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby deviceDiscovered:];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v25 deviceDiscovered:v26, v27, v28, v29, v30, v31, v32];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:(id)a3 withOptions:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby connectToPeer:withOptions:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v9 connectToPeer:v10 withOptions:v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"Nearby no peer was provided!";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v18];

    v20 = [(WPNearby *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = [(WPNearby *)self delegate];
    [v21 nearby:self didConnectToPeer:0 transport:0 error:v19];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if ([(WPClient *)self state]!= 3)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = [v6 UUIDString];
    v24 = [WPClient stateAsString:[(WPClient *)self state]];
    v19 = [v22 stringWithFormat:@"Can't connect to peer %@ when state is %@", v23, v24];

    if (WPLogInitOnce != -1)
    {
      [WPNearby connectToPeer:withOptions:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v25 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = v19;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v21 = [v25 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v26];

    v27 = [(WPNearby *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if (v26)
    {
      v28 = [(WPNearby *)self delegate];
      [v28 nearby:self didConnectToPeer:v6 transport:0 error:v21];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby connectToPeer:withOptions:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby connect to peer  %{public}@ with options %@", buf, 0x16u);
  }

  v30.receiver = self;
  v30.super_class = WPNearby;
  [(WPClient *)&v30 connectToPeer:v6 withOptions:v7];
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5
{
  v5 = a5;
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Nearby connected to device: %{public}@ over GATT", buf, 0xCu);
    }

    v22 = @"9FA480E0-4967-4542-9390-D343DC5D04AE";
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC", 0}];
    v23[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v17.receiver = self;
    v17.super_class = WPNearby;
    [(WPClient *)&v17 discoverCharacteristicsAndServices:v12 forPeripheral:v8];
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby connectedDevice:withError:shouldDiscover:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby sending didConnectToPeer %@ with error %{public}@", buf, 0x16u);
  }

  v14 = [(WPNearby *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v12 = [(WPNearby *)self delegate];
    [v12 nearby:self didConnectToPeer:v8 transport:1 error:v9];
LABEL_13:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)connectedDeviceOverLEPipe:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPNearby connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Nearby sending didConnectToPeer %@ over LEPipe", &v10, 0xCu);
  }

  v6 = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPNearby *)self delegate];
    [v8 nearby:self didConnectToPeer:v4 transport:2 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_274327000, v9, OS_LOG_TYPE_DEFAULT, "Nearby discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__WPNearby_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_321;
    v31[3] = &unk_279ED7548;
    v31[4] = buf;
    [v8 enumerateObjectsUsingBlock:v31];
    if (*(*&buf[8] + 24) == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Nearby subscribing to characteristic", v30, 2u);
      }

      v29.receiver = self;
      v29.super_class = WPNearby;
      [(WPClient *)&v29 shouldSubscribe:1 toPeer:v7 withCharacteristic:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC" inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE"];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPNearby *)v19 discoveredCharacteristicsAndServices:v20 forPeripheral:v21, v22, v23, v24, v25, v26];
      }

      v28.receiver = self;
      v28.super_class = WPNearby;
      [(WPClient *)&v28 disconnectFromPeer:v7];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v11 discoveredCharacteristicsAndServices:v12 forPeripheral:v13, v14, v15, v16, v17, v18];
    }

    v32.receiver = self;
    v32.super_class = WPNearby;
    [(WPClient *)&v32 disconnectFromPeer:v7];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __63__WPNearby_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_321(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)updatedNotificationState:(BOOL)a3 forCharacteristic:(id)a4 inService:(id)a5 withPeripheral:(id)a6
{
  v8 = a3;
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v17 updatedNotificationState:v18 forCharacteristic:v19 inService:v20 withPeripheral:v21, v22, v23, v24];
    }

    v25 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = @"Nearby notification is disabled";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v16 = [v25 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v26];

    v27 = [(WPNearby *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = [(WPNearby *)self delegate];
    [v28 nearby:self didConnectToPeer:v12 transport:1 error:v16];
    goto LABEL_22;
  }

  if (![v10 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] || !objc_msgSend(v11, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby service or characteristic is not found, received notification for characteristic: %@, service: %@", v10, v11];
    if (WPLogInitOnce != -1)
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v29 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = v16;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v28 = [v29 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v30];

    v31 = [(WPNearby *)self delegate];
    LOBYTE(v30) = objc_opt_respondsToSelector();

    if (v30)
    {
      v32 = [(WPNearby *)self delegate];
      [v32 nearby:self didConnectToPeer:v12 transport:1 error:v28];
    }

LABEL_22:

    goto LABEL_23;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby updatedNotificationState:forCharacteristic:inService:withPeripheral:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby notification is enabled, send Central didConnect", buf, 2u);
  }

  v14 = [(WPNearby *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(WPNearby *)self delegate];
    [v16 nearby:self didConnectToPeer:v12 transport:1 error:0];
LABEL_23:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(id)a3 toPeer:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [v7 UUIDString];
    v10 = [v19 stringWithFormat:@"Nearby no data was provided for peer: %@", v20];

    if (WPLogInitOnce != -1)
    {
      [WPNearby sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45[0] = v10;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v13 = [v21 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v22];

    v23 = [(WPNearby *)self delegate];
    LOBYTE(v22) = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    v15 = [(WPNearby *)self delegate];
    v16 = v15;
    v17 = self;
    v18 = 0;
    goto LABEL_16;
  }

  if (v7)
  {
    v9 = [v6 length];
    if ((v9 - 60001) > 0xFFFFFFFFFFFF159FLL)
    {
      v39 = v9;
      v10 = [MEMORY[0x277CBEB28] dataWithBytes:&v39 length:2];
      [v10 appendData:v6];
      v13 = objc_opt_new();
      [v13 setData:v10];
      v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"];
      [v13 setUuid:v35];

      [v13 setWriteType:0];
      if (WPLogInitOnce != -1)
      {
        [WPNearby sendData:toPeer:];
      }

      v36 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [(WPNearby *)v36 sendData:v10 toPeer:v8];
      }

      v38.receiver = self;
      v38.super_class = WPNearby;
      [(WPClient *)&v38 sendDataToCharacteristic:v13 inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE" forPeer:v8];
      goto LABEL_28;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nearby data length is invalid %ld (max: %lu)", v9, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPNearby sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v13 = [v11 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v12];

    v14 = [(WPNearby *)self delegate];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    v15 = [(WPNearby *)self delegate];
    v16 = v15;
    v17 = self;
    v18 = v6;
LABEL_16:
    [v15 nearby:v17 didSendData:v18 toPeer:v8 error:v13];

    goto LABEL_28;
  }

  if (WPLogInitOnce != -1)
  {
    [WPNearby sendData:toPeer:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPNearby *)v24 sendData:v25 toPeer:v26, v27, v28, v29, v30, v31];
  }

  v32 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43 = @"Nearby no peer was provided";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v10 = [v32 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v33];

  v34 = [(WPNearby *)self delegate];
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    v13 = [(WPNearby *)self delegate];
    [v13 nearby:self didSendData:v6 toPeer:0 error:v10];
    goto LABEL_28;
  }

LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && objc_msgSend(v14, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 localizedDescription];
      v29 = 138412290;
      v30 = v19;
      _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "Nearby didSendData over GATT with error %@", &v29, 0xCu);
    }

    v20 = [(WPNearby *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      if ([v12 length] >= 2)
      {
        v22 = [v12 subdataWithRange:{2, objc_msgSend(v12, "length") - 2}];

        v12 = v22;
      }

      v23 = [(WPNearby *)self delegate];
      [v23 nearby:self didSendData:v12 toPeer:v15 error:v16];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v26 = v24;
      v27 = [v15 UUIDString];
      v28 = [v16 localizedDescription];
      v29 = 138413058;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      _os_log_error_impl(&dword_274327000, v26, OS_LOG_TYPE_ERROR, "Nearby Sent data to a characteristic: %@ or service: %@ to peer: %@ with error: %@ that isn't of type Nearby", &v29, 0x2Au);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11 || ([v11 isEqualToString:@"nearby"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"wp.nearby"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v25 = 134217984;
      v26 = [v10 length];
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "WPPM: Nearby didSendData over LE pipe: %lu", &v25, 0xCu);
    }

    v16 = [(WPNearby *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      if ([v10 length] >= 2)
      {
        v18 = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];

        v10 = v18;
      }

      v19 = [(WPNearby *)self delegate];
      [v19 nearby:self didSendData:v10 toPeer:v12 error:v13];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby sentData:toEndpoint:forPeripheral:withError:];
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
      v23 = [v12 UUIDString];
      v24 = [v13 localizedDescription];
      v25 = 138412802;
      v26 = v11;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      _os_log_error_impl(&dword_274327000, v22, OS_LOG_TYPE_ERROR, "Nearby Sent data to a endpoint: %@ to peer: %@ with error: %@ that isn't of type Nearby", &v25, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v11 | v12) || [v11 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && objc_msgSend(v12, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE"))
  {
    v14 = [(WPNearby *)self transfers];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (!v15)
    {
      v16 = [[WPDataTransfer alloc] initDataTransferForPeer:v13];
      v17 = [(WPNearby *)self transfers];
      [v17 setObject:v16 forKeyedSubscript:v13];

      v18 = [(WPNearby *)self transfers];
      v15 = [v18 objectForKeyedSubscript:v13];
    }

    if (WPLogInitOnce != -1)
    {
      [WPNearby receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPNearby receivedData:v10 forCharacteristic:v19 inService:? forPeripheral:?];
    }

    if ([v15 addNewData:v10])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPNearby receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v15 currentReceivedData];
        v29 = 134217984;
        v30 = [v22 length];
        _os_log_impl(&dword_274327000, v21, OS_LOG_TYPE_DEFAULT, "WPPM: Nearby didReceiveData data of length %ld", &v29, 0xCu);
      }

      v23 = [(WPNearby *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [(WPNearby *)self delegate];
        v26 = [v15 currentReceivedData];
        v27 = [v26 copy];
        [v25 nearby:self didReceiveData:v27 fromPeer:v13];
      }

      [v15 resetTransfer];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WiProxLog;
  v12 = v11;
  nearbySignPostID = self->_nearbySignPostID;
  if (nearbySignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_274327000, v12, OS_SIGNPOST_EVENT, nearbySignPostID, "WPNearby receivedData:fromEndpoint:forPeripheral", &unk_2743626BF, v14, 2u);
  }

  if (([v9 isEqualToString:@"wp.nearby"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"nearby"))
  {
    [(WPNearby *)self receivedData:v8 forCharacteristic:0 inService:0 forPeripheral:v10];
  }
}

- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6
{
  v8 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqualToString:@"AF0BADB1-5B99-43CD-917A-A77BC549E3CC"] && (objc_msgSend(v12, "isEqualToString:", @"9FA480E0-4967-4542-9390-D343DC5D04AE") & 1) != 0)
  {
    if (v8)
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby central:subscribed:toCharacteristic:inService:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v10;
        _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "Nearby central connected to our device %{public}@, send Peripheral didConnect", &v19, 0xCu);
      }

      v14 = [(WPNearby *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(WPNearby *)self delegate];
        [v16 nearby:self didConnectToPeer:v10 transport:1 error:0];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPNearby central:subscribed:toCharacteristic:inService:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "Saw unsubscribe...disconnection pending", &v19, 2u);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPNearby central:subscribed:toCharacteristic:inService:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v4;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Nearby disconnect from peer: %{public}@", buf, 0xCu);
    }

    v20.receiver = self;
    v20.super_class = WPNearby;
    [(WPClient *)&v20 disconnectFromPeer:v4];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectFromPeer:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPNearby *)v6 disconnectFromPeer:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Nearby peer is null";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v15];

    v17 = [(WPNearby *)self delegate];
    LOBYTE(v15) = objc_opt_respondsToSelector();

    if (v15)
    {
      v18 = [(WPNearby *)self delegate];
      [v18 nearby:self didDisconnectFromPeer:0 error:v16];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedDevice:(id)a3 withError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 UUIDString];
    v10 = [v7 localizedDescription];
    v11 = [v8 stringWithFormat:@"Nearby peer: %@ is disconnected with error: %@", v9, v10];

    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  v13 = [(WPNearby *)self transfers];
  v14 = [v13 objectForKeyedSubscript:v6];

  if (v14)
  {
    [v14 resetTransfer];
  }

  v15 = [(WPNearby *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPNearby disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "Nearby sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    v18 = [(WPNearby *)self delegate];
    [v18 nearby:self didDisconnectFromPeer:v6 error:v7];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPNearby disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Nearby disconnected %@ over LE pipe with error %@", &v10, 0x16u);
  }

  [(WPNearby *)self disconnectedDevice:v6 withError:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"Nearby peer traking is unsupported";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 errorWithDomain:@"WPErrorDomain" code:17 userInfo:v8];

  v10 = [(WPNearby *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = [(WPNearby *)self delegate];
    [v11 nearby:self didStartTrackingPeer:v6 type:a4 error:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPNearby failedToStartTrackingPeer:error:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPNearby *)v6 failedToStartTrackingPeer:v8 error:v7];
  }

  v9 = [(WPNearby *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = +[WPNearby nearbyTypeFromClientType:](WPNearby, "nearbyTypeFromClientType:", [v6 clientType]);
    v12 = [v6 peerUUID];
    v13 = [(WPNearby *)self delegate];
    [v13 nearby:self didStartTrackingPeer:v12 type:v11 error:v7];
  }
}

- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v9 = a3;
  v6 = [(WPNearby *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPNearby *)self delegate];
    [v8 nearby:self didStopTrackingPeer:v9 type:a4];
  }
}

- (void)bandwidthStateUpdated:(id)a3
{
  v4 = [a3 integerValue] < 2;
  v5 = [(WPNearby *)self btBandwidthState];
  [(WPNearby *)self setBtBandwidthState:v4];
  if ([(WPNearby *)self btBandwidthState]!= v5)
  {
    v6 = [(WPNearby *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPNearby *)self delegate];
      [v8 nearbyDidChangeBluetoothBandwidthState:self];
    }
  }
}

- (void)stateDidChange:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(WPClient *)self state];
  v15.receiver = self;
  v15.super_class = WPNearby;
  [(WPClient *)&v15 stateDidChange:a3];
  if (WPLogInitOnce != -1)
  {
    [WPNearby stateDidChange:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(WPClient *)self state];
    *buf = 134218496;
    v17 = a3;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Nearby stateDidChange: %ld, old %ld, pipe state %ld", buf, 0x20u);
  }

  if ([(WPClient *)self state]!= v5)
  {
    if ([(WPClient *)self state]== 3)
    {
      v14.receiver = self;
      v14.super_class = WPNearby;
      [(WPClient *)&v14 registerEndpoint:@"wp.nearby" requireAck:1 requireEncryption:0];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = WPNearby;
      [(WPClient *)&v13 unregisterEndpoint:@"wp.nearby"];
    }

    v9 = [(WPNearby *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(WPNearby *)self delegate];
      [v11 nearbyDidUpdateState:self];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)advertisingStartedOfType:(unsigned __int8)a1 .cold.2(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Nearby advertising started of type: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Nearby advertising failed to start of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Nearby failed to start scanning of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:(uint64_t)a3 withOptions:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatedNotificationState:(uint64_t)a3 forCharacteristic:(uint64_t)a4 inService:(uint64_t)a5 withPeripheral:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "Nearby send Central didConnect with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatedNotificationState:forCharacteristic:inService:withPeripheral:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_274327000, v0, v1, "Nearby send Central didConnect with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(void *)a3 toPeer:.cold.2(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 length];
  v13 = [a3 UUIDString];
  OUTLINED_FUNCTION_6(&dword_274327000, v6, v7, "Nearby send data size %lu: %@ peer: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(uint64_t)a3 toPeer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(void *)a1 forCharacteristic:(void *)a2 inService:forPeripheral:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [a1 length];
  OUTLINED_FUNCTION_6(&dword_274327000, v4, v5, "Nearby received data %@ of length %ld from peer %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "Nearby received subscription notification of characteristic: %@, service: %@ is not of type Nearby", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)failedToStartTrackingPeer:(void *)a3 error:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "Nearby failed to start tracking peer: %@ with error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end