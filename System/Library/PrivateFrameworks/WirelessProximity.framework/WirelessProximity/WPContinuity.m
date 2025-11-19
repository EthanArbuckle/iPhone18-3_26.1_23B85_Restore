@interface WPContinuity
+ (int64_t)continuityTypeFromClientType:(unsigned __int8)a3;
+ (unsigned)clientTypeFromContinuityType:(int64_t)a3;
- (WPContinuity)init;
- (WPContinuity)initWithDelegate:(id)a3 queue:(id)a4;
- (WPContinuityDelegate)delegate;
- (void)bandwidthStateUpdated:(id)a3;
- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6;
- (void)connectToPeer:(id)a3;
- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5;
- (void)connectedDeviceOverLEPipe:(id)a3;
- (void)deviceDiscovered:(id)a3;
- (void)disconnectFromPeer:(id)a3;
- (void)disconnectedDevice:(id)a3 withError:(id)a4;
- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4;
- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4;
- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)peerTrackingAvailable;
- (void)peerTrackingFull;
- (void)populateClientGATT:(id)a3;
- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6;
- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5;
- (void)sendData:(id)a3 toPeer:(id)a4;
- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7;
- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6;
- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4;
- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)stateDidChange:(int64_t)a3;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4;
- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4;
- (void)updateScanningRequest:(id)a3 withUpdate:(id)a4;
- (void)updatedNotificationState:(BOOL)a3 forCharacteristic:(id)a4 inService:(id)a5 withPeripheral:(id)a6;
@end

@implementation WPContinuity

- (WPContinuity)initWithDelegate:(id)a3 queue:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (+[WPClient isHomePod])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity initWithDelegate:queue:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity initWithDelegate:queue:];
    }

    v8 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = WPContinuity;
    v9 = [(WPClient *)&v19 initWithQueue:v7 machName:0];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_delegate, v6);
      v10->_btBandwidthState = -1;
      v11 = [MEMORY[0x277CBEB38] dictionary];
      transfers = v10->_transfers;
      v10->_transfers = v11;

      [(WPClient *)v10 setConnectionUseCase:6];
      v18.receiver = v10;
      v18.super_class = WPContinuity;
      [(WPClient *)&v18 listenToBandwidthNotifications];
    }

    if (WPLogInitOnce != -1)
    {
      [WPContinuity initWithDelegate:queue:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(WPContinuity *)v10 delegate];
      *buf = 134218240;
      v21 = v10;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "Continuity initWithDelegate self: %p, delegate: %p", buf, 0x16u);
    }

    self = v10;
    v8 = self;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (WPContinuity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer for %@", v5, v7}];

  return 0;
}

- (void)invalidate
{
  if (WPLogInitOnce != -1)
  {
    [WPContinuity invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "Continuity invalidate by client", buf, 2u);
  }

  [(WPContinuity *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPContinuity;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.continuity"];
  v4.receiver = self;
  v4.super_class = WPContinuity;
  [(WPClient *)&v4 invalidate];
}

+ (unsigned)clientTypeFromContinuityType:(int64_t)a3
{
  if (a3 >= 3)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownContinuityType" reason:@"The continuity type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return a3 | 0xC;
}

+ (int64_t)continuityTypeFromClientType:(unsigned __int8)a3
{
  if ((a3 - 12) >= 3)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"The client type %ld isn't valid", a3];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:v5 userInfo:0];

    objc_exception_throw(v6);
  }

  return (a3 - 12);
}

- (void)populateClientGATT:(id)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8667556C-9A37-4C91-84ED-54EE27D90049"];
  [v6 setUuid:v4];

  [v6 setProperties:264];
  [v6 setPermissions:8];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
  v3[2](v3, v6, v5);
}

- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 length] && objc_msgSend(v7, "length") < 0x17)
  {
    v11 = [WPAdvertisingRequest requestForClientType:[WPContinuity clientTypeFromContinuityType:a3]];
    [v11 setAdvertisingRate:48];
    [v11 setConnectable:1];
    [v11 setStopOnAdvertisingAddressChange:1];
    [v11 setAdvertisingData:v7];
    [v11 setUpdateTime:2.0];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity startAdvertisingOfType:withData:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "Continuity start advertising with data: %{public}@", buf, 0xCu);
    }

    v16.receiver = self;
    v16.super_class = WPContinuity;
    [(WPClient *)&v16 startAdvertising:v11];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad data was provided: %@", v7];
    v20[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v8 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v10];

    v12 = [(WPContinuity *)self delegate];
    LOBYTE(v9) = objc_opt_respondsToSelector();

    if (v9)
    {
      v13 = [(WPContinuity *)self delegate];
      [v13 continuity:self didFailToStartAdvertisingOfType:a3 withError:v11];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 setUpdateTime:0.0];
  [v5 setAdvertisingRate:290];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity updateAdvertisingRequest:withUpdate:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity update advertising with data: %{public}@", &v9, 0xCu);
  }

  v6[2](v6, v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [WPContinuity clientTypeFromContinuityType:a3];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stopAdvertisingOfType:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Continuity stop advertising of type: %d", buf, 8u);
  }

  v6 = [WPAdvertisingRequest requestForClientType:v4];
  v8.receiver = self;
  v8.super_class = WPContinuity;
  [(WPClient *)&v8 stopAdvertising:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateScanningRequest:(id)a3 withUpdate:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 setUpdateTime:0.0];
  v9 = xmmword_27435CEA0;
  v10 = 30;
  [v5 setScanningRates:&v9];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity updateScanningRequest:withUpdate:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 138543362;
    *(&v9 + 4) = v5;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity update scanning request with data: %{public}@", &v9, 0xCu);
  }

  v6[2](v6, v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopScanningForType:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setClientType:{+[WPContinuity clientTypeFromContinuityType:](WPContinuity, "clientTypeFromContinuityType:", a3)}];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stopScanningForType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity stop scanning: %{public}@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = WPContinuity;
  [(WPClient *)&v8 stopScanning:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = @"Continuity peer traking is unsupported";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 errorWithDomain:@"WPErrorDomain" code:17 userInfo:v8];

  v10 = [(WPContinuity *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = [(WPContinuity *)self delegate];
    [v11 continuityDidStartTrackingPeer:self peer:v6 type:a4 error:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPContinuity *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = +[WPContinuity continuityTypeFromClientType:](WPContinuity, "continuityTypeFromClientType:", [v6 clientType]);
    v11 = [v6 peerUUID];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity failedToStartTrackingPeer:error:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v15 = v12;
      v16 = [v11 UUIDString];
      v17 = [v6 clientType];
      v18 = [v7 localizedDescription];
      v19 = 138412802;
      v20 = v16;
      v21 = 1024;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_error_impl(&dword_274327000, v15, OS_LOG_TYPE_ERROR, "Continuity failed to start tracking peer: %@ of type: %d with error: %@", &v19, 0x1Cu);
    }

    v13 = [(WPContinuity *)self delegate];
    [v13 continuityDidStartTrackingPeer:self peer:v11 type:v10 error:v7];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingPeer:(id)a3 forType:(int64_t)a4
{
  v9 = a3;
  v6 = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPContinuity *)self delegate];
    [v8 continuityDidStopTrackingPeer:self peer:v9 type:a4];
  }
}

- (void)deviceDiscovered:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceType"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];

  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  v10 = [WPContinuity continuityTypeFromClientType:v7];
  if (v5)
  {
    v11 = v10;
    v12 = [(WPContinuity *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(WPContinuity *)self delegate];
      [v14 continuity:self didDiscoverType:v11 withData:v9 fromPeer:v5];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity deviceDiscovered:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity deviceDiscovered:];
    }
  }
}

- (void)connectToPeer:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectToPeer:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v8 connectToPeer:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Continuity no peer was provided!";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v18 = [v16 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v17];

    v19 = [(WPContinuity *)self delegate];
    LOBYTE(v17) = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }

    v20 = [(WPContinuity *)self delegate];
    [v20 continuity:self didConnectToPeer:0 error:v18];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if ([(WPClient *)self state]!= 3)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [v4 UUIDString];
    v23 = [WPClient stateAsString:[(WPClient *)self state]];
    v18 = [v21 stringWithFormat:@"Can't connect to peer %@ when state is %@", v22, v23];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectToPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = v18;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v20 = [v24 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v25];

    v26 = [(WPContinuity *)self delegate];
    LOBYTE(v25) = objc_opt_respondsToSelector();

    if (v25)
    {
      v27 = [(WPContinuity *)self delegate];
      [v27 continuity:self didConnectToPeer:v4 error:v20];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectToPeer:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 UUIDString];
    *buf = 138543362;
    v31 = v7;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity connect to peer: %{public}@", buf, 0xCu);
  }

  v29.receiver = self;
  v29.super_class = WPContinuity;
  [(WPClient *)&v29 connectToPeer:v4];
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5
{
  v5 = a5;
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v8 UUIDString];
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Continuity connected to device: %{public}@", buf, 0xCu);
    }

    v24 = @"D0611E78-BBB4-4591-A5F8-487910AE4366";
    v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"8667556C-9A37-4C91-84ED-54EE27D90049", 0}];
    v25[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v19.receiver = self;
    v19.super_class = WPContinuity;
    [(WPClient *)&v19 discoverCharacteristicsAndServices:v14 forPeripheral:v8];
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectedDevice:withError:shouldDiscover:];
  }

  v15 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "Continuity sending didConnectToPeer %@ with error %{public}@", buf, 0x16u);
  }

  v16 = [(WPContinuity *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v14 = [(WPContinuity *)self delegate];
    [v14 continuity:self didConnectToPeer:v8 error:v9];
LABEL_13:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)connectedDeviceOverLEPipe:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPContinuity connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "Continuity sending didConnectToPeer %@ over LEPipe", &v10, 0xCu);
  }

  v6 = [(WPContinuity *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPContinuity *)self delegate];
    [v8 continuity:self didConnectToPeer:v4 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:(id)a3 forPeripheral:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v7 UUIDString];
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Continuity discovered characteristics and services: %{public}@ for peripheral: %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295;
    v17[3] = &unk_279ED7548;
    v17[4] = buf;
    [v8 enumerateObjectsUsingBlock:v17];
    if (*(*&buf[8] + 24) == 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "Continuity subscribing to characteristic", v16, 2u);
      }

      v15.receiver = self;
      v15.super_class = WPContinuity;
      [(WPClient *)&v15 shouldSubscribe:1 toPeer:v7 withCharacteristic:@"8667556C-9A37-4C91-84ED-54EE27D90049" inService:@"D0611E78-BBB4-4591-A5F8-487910AE4366"];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
      }

      v14.receiver = self;
      v14.super_class = WPContinuity;
      [(WPClient *)&v14 disconnectFromPeer:v7];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity discoveredCharacteristicsAndServices:forPeripheral:];
    }

    v18.receiver = self;
    v18.super_class = WPContinuity;
    [(WPClient *)&v18 disconnectFromPeer:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"])
  {
    if (WPLogInitOnce != -1)
    {
      __67__WPContinuity_discoveredCharacteristicsAndServices_forPeripheral___block_invoke_295_cold_1();
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_INFO, "Continuity found our characteristic", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
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
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v17 updatedNotificationState:v18 forCharacteristic:v19 inService:v20 withPeripheral:v21, v22, v23, v24];
    }

    v25 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = @"Continuity notification is disabled";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v16 = [v25 errorWithDomain:@"WPErrorDomain" code:22 userInfo:v26];

    v27 = [(WPContinuity *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = [(WPContinuity *)self delegate];
    [v28 continuity:self didConnectToPeer:v12 error:v16];
    goto LABEL_22;
  }

  if (![v10 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] || !objc_msgSend(v11, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuity service or characteristic is not found, received notification for characteristic: %@, service: %@", v10, v11];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v29 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = v16;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v28 = [v29 errorWithDomain:@"WPErrorDomain" code:20 userInfo:v30];

    v31 = [(WPContinuity *)self delegate];
    LOBYTE(v30) = objc_opt_respondsToSelector();

    if (v30)
    {
      v32 = [(WPContinuity *)self delegate];
      [v32 continuity:self didConnectToPeer:v12 error:v28];
    }

LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v13 = [(WPContinuity *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity updatedNotificationState:forCharacteristic:inService:withPeripheral:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "Continuity notification is enabled, send Central didConnect", buf, 2u);
    }

    v16 = [(WPContinuity *)self delegate];
    [v16 continuity:self didConnectToPeer:v12 error:0];
    goto LABEL_23;
  }

LABEL_24:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 UUIDString];
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "Continuity disconnect from peer: %{public}@", buf, 0xCu);
    }

    v22.receiver = self;
    v22.super_class = WPContinuity;
    [(WPClient *)&v22 disconnectFromPeer:v4];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectFromPeer:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPContinuity *)v8 disconnectFromPeer:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Continuity peer is null";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v16 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v17];

    v19 = [(WPContinuity *)self delegate];
    LOBYTE(v17) = objc_opt_respondsToSelector();

    if (v17)
    {
      v20 = [(WPContinuity *)self delegate];
      [v20 continuity:self didDisconnectFromPeer:0 error:v18];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
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
    v11 = [v8 stringWithFormat:@"Continuity peer: %@ is disconnected with error: %@", v9, v10];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  v13 = [(WPContinuity *)self transfers];
  v14 = [v13 objectForKeyedSubscript:v6];

  if (v14)
  {
    [v14 resetTransfer];
  }

  v15 = [(WPContinuity *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "Continuity sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    v18 = [(WPContinuity *)self delegate];
    [v18 continuity:self didDisconnectFromPeer:v6 error:v7];
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
    [WPContinuity disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "Continuity disconnected %@ over LE pipe with error %@", &v10, 0x16u);
  }

  [(WPContinuity *)self disconnectedDevice:v6 withError:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(id)a3 toPeer:(id)a4
{
  v60[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [v7 UUIDString];
    v14 = [v23 stringWithFormat:@"Continuity no data was provided for peer: %@", v24];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v25 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v60[0] = v14;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v17 = [v25 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v26];

    v27 = [(WPContinuity *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }

    v19 = [(WPContinuity *)self delegate];
    v20 = v19;
    v21 = self;
    v22 = 0;
    goto LABEL_20;
  }

  if (v7)
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 length];
      v12 = [v8 UUIDString];
      *buf = 134218498;
      v52 = v11;
      v53 = 2112;
      v54 = v6;
      v55 = 2112;
      v56 = v12;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Continuity send data: (%lu) %@ to peer: %@", buf, 0x20u);
    }

    v13 = [v6 length];
    if ((v13 - 60001) > 0xFFFFFFFFFFFF159FLL)
    {
      v48 = v13;
      v14 = [MEMORY[0x277CBEB28] dataWithBytes:&v48 length:2];
      [v14 appendData:v6];
      v17 = objc_opt_new();
      [v17 setData:v14];
      v39 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8667556C-9A37-4C91-84ED-54EE27D90049"];
      [v17 setUuid:v39];

      [v17 setWriteType:0];
      if (WPLogInitOnce != -1)
      {
        [WPContinuity sendData:toPeer:];
      }

      v40 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [v17 data];
        v43 = [v42 length];
        v44 = [v17 data];
        v45 = [v8 UUIDString];
        *buf = 134218498;
        v52 = v43;
        v53 = 2112;
        v54 = v44;
        v55 = 2112;
        v56 = v45;
        _os_log_impl(&dword_274327000, v41, OS_LOG_TYPE_DEFAULT, "Continuity send data to characteristic: (%lu) %@ to peer: %@", buf, 0x20u);
      }

      v47.receiver = self;
      v47.super_class = WPContinuity;
      [(WPClient *)&v47 sendDataToCharacteristic:v17 inService:@"D0611E78-BBB4-4591-A5F8-487910AE4366" forPeer:v8];
      goto LABEL_32;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Continuity data length is invalid %ld (max: %lu)", v13, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sendData:toPeer:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v17 = [v15 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v16];

    v18 = [(WPContinuity *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
LABEL_32:

      goto LABEL_33;
    }

    v19 = [(WPContinuity *)self delegate];
    v20 = v19;
    v21 = self;
    v22 = v6;
LABEL_20:
    [v19 continuity:v21 didSendData:v22 toPeer:v8 error:v17];

    goto LABEL_32;
  }

  if (WPLogInitOnce != -1)
  {
    [WPContinuity sendData:toPeer:];
  }

  v28 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPContinuity *)v28 sendData:v29 toPeer:v30, v31, v32, v33, v34, v35];
  }

  v36 = MEMORY[0x277CCA9B8];
  v57 = *MEMORY[0x277CCA450];
  v58 = @"Continuity no peer was provided";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v14 = [v36 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v37];

  v38 = [(WPContinuity *)self delegate];
  LOBYTE(v37) = objc_opt_respondsToSelector();

  if (v37)
  {
    v17 = [(WPContinuity *)self delegate];
    [v17 continuity:self didSendData:v6 toPeer:0 error:v14];
    goto LABEL_32;
  }

LABEL_33:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6 withError:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && objc_msgSend(v14, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:forCharacteristic:inService:forPeripheral:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 localizedDescription];
      v29 = 138412290;
      v30 = v19;
      _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, "Continuity didSendData over GATT with error %@", &v29, 0xCu);
    }

    v20 = [(WPContinuity *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      if ([v12 length] >= 2)
      {
        v22 = [v12 subdataWithRange:{2, objc_msgSend(v12, "length") - 2}];

        v12 = v22;
      }

      v23 = [(WPContinuity *)self delegate];
      [v23 continuity:self didSendData:v12 toPeer:v15 error:v16];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:forCharacteristic:inService:forPeripheral:withError:];
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
      _os_log_error_impl(&dword_274327000, v26, OS_LOG_TYPE_ERROR, "Continuity sent data to a characteristic: %@ or service: %@ to peer: %@ with error: %@ that isn't of type Continuity", &v29, 0x2Au);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11 || [v11 isEqualToString:@"wp.continuity"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v10 length];
      v17 = [v13 localizedDescription];
      v23 = 134218242;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_274327000, v15, OS_LOG_TYPE_DEFAULT, "WPPM: Continuity didSendData %lu over LE pipe with error %@", &v23, 0x16u);
    }

    v18 = [(WPContinuity *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      if ([v10 length] >= 2)
      {
        v20 = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];

        v10 = v20;
      }

      v21 = [(WPContinuity *)self delegate];
      [v21 continuity:self didSendData:v10 toPeer:v12 error:v13];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v11 | v12) || [v11 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && objc_msgSend(v12, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366"))
  {
    v14 = [(WPContinuity *)self transfers];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (!v15)
    {
      v16 = [[WPDataTransfer alloc] initDataTransferForPeer:v13];
      v17 = [(WPContinuity *)self transfers];
      [v17 setObject:v16 forKeyedSubscript:v13];

      v18 = [(WPContinuity *)self transfers];
      v15 = [v18 objectForKeyedSubscript:v13];
    }

    if (WPLogInitOnce != -1)
    {
      [WPContinuity receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v10 length];
      v22 = [v13 UUIDString];
      v33 = 134218498;
      v34 = v21;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_274327000, v20, OS_LOG_TYPE_DEFAULT, "Continuity received data (%ld) %@ from peer %@", &v33, 0x20u);
    }

    if ([v15 addNewData:v10])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPContinuity receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v23 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [v15 currentReceivedData];
        v26 = [v25 length];
        v33 = 134217984;
        v34 = v26;
        _os_log_impl(&dword_274327000, v24, OS_LOG_TYPE_DEFAULT, "WPPM: Continuity didReceiveData data of length %ld", &v33, 0xCu);
      }

      v27 = [(WPContinuity *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = [(WPContinuity *)self delegate];
        v30 = [v15 currentReceivedData];
        v31 = [v30 copy];
        [v29 continuity:self didReceiveData:v31 fromPeer:v13];
      }

      [v15 resetTransfer];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:@"wp.continuity"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity receivedData:fromEndpoint:forPeripheral:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v13 = 134217984;
      v14 = [v8 length];
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Continuity received data over LE pipe %ld", &v13, 0xCu);
    }

    [(WPContinuity *)self receivedData:v8 forCharacteristic:0 inService:0 forPeripheral:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6
{
  v8 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqualToString:@"8667556C-9A37-4C91-84ED-54EE27D90049"] && (objc_msgSend(v12, "isEqualToString:", @"D0611E78-BBB4-4591-A5F8-487910AE4366") & 1) != 0)
  {
    if (v8)
    {
      v13 = [(WPContinuity *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [(WPContinuity *)self delegate];
        [v15 continuity:self didConnectToPeer:v10 error:0];

        if (WPLogInitOnce != -1)
        {
          [WPContinuity central:subscribed:toCharacteristic:inService:];
        }

        v16 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138543362;
          v23 = v10;
          v17 = "Continuity central connected to our device %{public}@, send Peripheral didConnect";
          v18 = v16;
          v19 = 12;
LABEL_18:
          _os_log_impl(&dword_274327000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPContinuity central:subscribed:toCharacteristic:inService:];
      }

      v21 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v17 = "Saw unsubscribe...disconnection pending";
        v18 = v21;
        v19 = 2;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPContinuity central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPContinuity central:subscribed:toCharacteristic:inService:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)bandwidthStateUpdated:(id)a3
{
  v4 = [a3 integerValue] < 2;
  v5 = [(WPContinuity *)self btBandwidthState];
  [(WPContinuity *)self setBtBandwidthState:v4];
  if ([(WPContinuity *)self btBandwidthState]!= v5)
  {
    v6 = [(WPContinuity *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPContinuity *)self delegate];
      [v8 continuityDidChangeBluetoothBandwidthState:self];
    }
  }
}

- (void)stateDidChange:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(WPClient *)self state];
  v15.receiver = self;
  v15.super_class = WPContinuity;
  [(WPClient *)&v15 stateDidChange:a3];
  if (WPLogInitOnce != -1)
  {
    [WPContinuity stateDidChange:];
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
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "Continuity stateDidChange: %ld, old %ld, pipe state %ld", buf, 0x20u);
  }

  if ([(WPClient *)self state]!= v5)
  {
    if ([(WPClient *)self state]== 3)
    {
      v14.receiver = self;
      v14.super_class = WPContinuity;
      [(WPClient *)&v14 registerEndpoint:@"wp.continuity" requireAck:1 requireEncryption:1];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = WPContinuity;
      [(WPClient *)&v13 unregisterEndpoint:@"wp.continuity"];
    }

    v9 = [(WPContinuity *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(WPContinuity *)self delegate];
      [v11 continuityDidUpdateState:self];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)peerTrackingFull
{
  v8.receiver = self;
  v8.super_class = WPContinuity;
  [(WPClient *)&v8 peerTrackingFull];
  v3 = [(WPContinuity *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WPContinuity *)self delegate];
    [v5 continuity:self peerTrackingAvailable:0];

    if (WPLogInitOnce != -1)
    {
      [WPContinuity peerTrackingFull];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_INFO, "Continuity peer tracking is full", v7, 2u);
    }
  }
}

- (void)peerTrackingAvailable
{
  v6.receiver = self;
  v6.super_class = WPContinuity;
  [(WPClient *)&v6 peerTrackingAvailable];
  v3 = [(WPContinuity *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WPContinuity *)self delegate];
    [v5 continuity:self peerTrackingAvailable:1];
  }
}

- (WPContinuityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:queue:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Continuity advertising failed to start of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)advertisingStartedOfType:(unsigned __int8)a1 .cold.2(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Continuity advertising started of type: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "Continuity failed to start scanning of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectToPeer:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)discoveredCharacteristicsAndServices:forPeripheral:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)discoveredCharacteristicsAndServices:forPeripheral:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updatedNotificationState:(uint64_t)a3 forCharacteristic:(uint64_t)a4 inService:(uint64_t)a5 withPeripheral:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "Continuity send Central didConnect with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatedNotificationState:forCharacteristic:inService:withPeripheral:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_274327000, v0, v1, "Continuity send Central didConnect with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(uint64_t)a3 toPeer:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "Continuity received subscription notification of characteristic: %@, service: %@ is not of type Continuity", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end