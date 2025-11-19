@interface WPTest
- (WPTest)init;
- (WPTest)initWithDelegate:(id)a3 queue:(id)a4;
- (WPTestDelegate)delegate;
- (void)central:(id)a3 subscribed:(BOOL)a4 toCharacteristic:(id)a5 inService:(id)a6;
- (void)connectToPeer:(id)a3 withOptions:(id)a4;
- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5;
- (void)connectedDeviceOverLEPipe:(id)a3;
- (void)deviceDiscovered:(id)a3;
- (void)disconnectFromPeer:(id)a3;
- (void)disconnectedDevice:(id)a3 withError:(id)a4;
- (void)disconnectedDeviceOverLEPipe:(id)a3 withError:(id)a4;
- (void)invalidate;
- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6;
- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5;
- (void)sendData:(id)a3 toPeer:(id)a4;
- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6;
- (void)stateDidChange:(int64_t)a3;
- (void)stopAdvertisingOfType:(unsigned __int8)a3;
@end

@implementation WPTest

- (WPTest)initWithDelegate:(id)a3 queue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = WPTest;
  v7 = [(WPClient *)&v16 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [MEMORY[0x277CBEB38] dictionary];
    transfers = v8->_transfers;
    v8->_transfers = v9;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest initWithDelegate:queue:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(WPTest *)v8 delegate];
    *buf = 134218240;
    v18 = v8;
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "test initWithDelegate self: %p, delegate: %p", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (WPTest)init
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
    [WPTest invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "test invalidate by client", buf, 2u);
  }

  [(WPTest *)self setDelegate:0];
  v5.receiver = self;
  v5.super_class = WPTest;
  [(WPClient *)&v5 unregisterEndpoint:@"wp.test"];
  v4.receiver = self;
  v4.super_class = WPTest;
  [(WPClient *)&v4 invalidate];
}

- (void)stopAdvertisingOfType:(unsigned __int8)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = [WPAdvertisingRequest requestForClientType:?];
  if (WPLogInitOnce != -1)
  {
    [WPTest stopAdvertisingOfType:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "test stop advertising of type: %d", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = WPTest;
  [(WPClient *)&v8 stopAdvertising:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(id)a3
{
  v28[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceType"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

  if (v5)
  {
    v10 = [(WPTest *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v26 = v7;
      v12 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
      v13 = [v4 objectForKeyedSubscript:@"kDeviceManufacturerData"];
      v14 = [v4 objectForKeyedSubscript:@"kDevicePaired"];
      v27[0] = @"address";
      v15 = v12;
      if (!v12)
      {
        v15 = [MEMORY[0x277CBEA90] data];
      }

      v28[0] = v15;
      v28[1] = v13;
      v27[1] = @"data";
      v27[2] = @"paired";
      v16 = MEMORY[0x277CBEC28];
      if (v14)
      {
        v16 = v14;
      }

      v28[2] = v16;
      v27[3] = @"rssi";
      v17 = [v4 objectForKeyedSubscript:{@"kDeviceRSSI", v15}];
      v28[3] = v17;
      v27[4] = @"channel";
      [v4 objectForKeyedSubscript:@"kDeviceChannel"];
      v18 = v25 = v13;
      v28[4] = v18;
      v27[5] = @"time";
      v19 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
      v28[5] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];

      if (!v12)
      {
      }

      v21 = [(WPTest *)self delegate];
      [v21 test:self didDiscoverType:v26 withData:v9 fromPeer:v5 peerInfo:v20];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest deviceDiscovered:];
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest deviceDiscovered:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
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
      [WPTest connectToPeer:withOptions:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)v9 connectToPeer:v10 withOptions:v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"test no peer was provided!";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v18];

    v20 = [(WPTest *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = [(WPTest *)self delegate];
    [v21 test:self didConnectToPeer:0 transport:0 error:v19];
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
      [WPTest connectToPeer:withOptions:];
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

    v27 = [(WPTest *)self delegate];
    LOBYTE(v26) = objc_opt_respondsToSelector();

    if (v26)
    {
      v28 = [(WPTest *)self delegate];
      [v28 test:self didConnectToPeer:v6 transport:0 error:v21];
    }

    goto LABEL_20;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest connectToPeer:withOptions:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "test connect to peer  %{public}@ with options %@", buf, 0x16u);
  }

  v30.receiver = self;
  v30.super_class = WPTest;
  [(WPClient *)&v30 connectToPeer:v6 withOptions:v7];
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)connectedDevice:(id)a3 withError:(id)a4 shouldDiscover:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest connectedDevice:withError:shouldDiscover:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "Test connected to device: %{public}@ over GATT", &v16, 0xCu);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest connectedDevice:withError:shouldDiscover:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_274327000, v11, OS_LOG_TYPE_DEFAULT, "Test sending didConnectToPeer %@ with error %{public}@", &v16, 0x16u);
    }

    v12 = [(WPTest *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(WPTest *)self delegate];
      [v14 test:self didConnectToPeer:v8 transport:1 error:v9];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)connectedDeviceOverLEPipe:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPTest connectedDeviceOverLEPipe:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "test sending didConnectToPeer %@ over LEPipe", &v10, 0xCu);
  }

  v6 = [(WPTest *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPTest *)self delegate];
    [v8 test:self didConnectToPeer:v4 transport:2 error:0];
  }

  v9 = *MEMORY[0x277D85DE8];
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
    v10 = [v19 stringWithFormat:@"test no data was provided for peer: %@", v20];

    if (WPLogInitOnce != -1)
    {
      [WPTest sendData:toPeer:];
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

    v23 = [(WPTest *)self delegate];
    LOBYTE(v22) = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    v15 = [(WPTest *)self delegate];
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
        [WPTest sendData:toPeer:];
      }

      v36 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [(WPTest *)v36 sendData:v10 toPeer:v8];
      }

      v38.receiver = self;
      v38.super_class = WPTest;
      [(WPClient *)&v38 sendDataToCharacteristic:v13 inService:@"9FA480E0-4967-4542-9390-D343DC5D04AE" forPeer:v8];
      goto LABEL_28;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"test data length is invalid %ld (max: %lu)", v9, 60000];
    if (WPLogInitOnce != -1)
    {
      [WPTest sendData:toPeer:];
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

    v14 = [(WPTest *)self delegate];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    v15 = [(WPTest *)self delegate];
    v16 = v15;
    v17 = self;
    v18 = v6;
LABEL_16:
    [v15 test:v17 didSendData:v18 toPeer:v8 error:v13];

    goto LABEL_28;
  }

  if (WPLogInitOnce != -1)
  {
    [WPTest sendData:toPeer:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPTest *)v24 sendData:v25 toPeer:v26, v27, v28, v29, v30, v31];
  }

  v32 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43 = @"test no peer was provided";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v10 = [v32 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v33];

  v34 = [(WPTest *)self delegate];
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    v13 = [(WPTest *)self delegate];
    [v13 test:self didSendData:v6 toPeer:0 error:v10];
    goto LABEL_28;
  }

LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)sentData:(id)a3 toEndpoint:(id)a4 forPeripheral:(id)a5 withError:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && ![v11 isEqualToString:@"wp.test"])
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest sentData:toEndpoint:forPeripheral:withError:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v21 = v19;
      v22 = [v12 UUIDString];
      v23 = [v13 localizedDescription];
      v24 = 138412802;
      v25 = v11;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_error_impl(&dword_274327000, v21, OS_LOG_TYPE_ERROR, "test Sent data to a endpoint: %@ to peer: %@ with error: %@ that isn't of type test", &v24, 0x20u);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest sentData:toEndpoint:forPeripheral:withError:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "test didSendData over LE pipe", &v24, 2u);
    }

    v15 = [(WPTest *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if ([v10 length] >= 2)
      {
        v17 = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];

        v10 = v17;
      }

      v18 = [(WPTest *)self delegate];
      [v18 test:self didSendData:v10 toPeer:v12 error:v13];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 forCharacteristic:(id)a4 inService:(id)a5 forPeripheral:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (!(a4 | a5))
  {
    v12 = [(WPTest *)self transfers];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (!v13)
    {
      v14 = [[WPDataTransfer alloc] initDataTransferForPeer:v11];
      v15 = [(WPTest *)self transfers];
      [v15 setObject:v14 forKeyedSubscript:v11];

      v16 = [(WPTest *)self transfers];
      v13 = [v16 objectForKeyedSubscript:v11];
    }

    if (WPLogInitOnce != -1)
    {
      [WPTest receivedData:forCharacteristic:inService:forPeripheral:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPTest receivedData:v10 forCharacteristic:v17 inService:? forPeripheral:?];
    }

    if ([v13 addNewData:v10])
    {
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPTest receivedData:forCharacteristic:inService:forPeripheral:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [v13 currentReceivedData];
        v27 = 134217984;
        v28 = [v20 length];
        _os_log_impl(&dword_274327000, v19, OS_LOG_TYPE_INFO, "Test END receiving data of length %ld", &v27, 0xCu);
      }

      v21 = [(WPTest *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [(WPTest *)self delegate];
        v24 = [v13 currentReceivedData];
        v25 = [v24 copy];
        [v23 test:self didReceiveData:v25 fromPeer:v11];
      }

      [v13 resetTransfer];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromEndpoint:(id)a4 forPeripheral:(id)a5
{
  v9 = a3;
  v8 = a5;
  if ([a4 isEqualToString:@"wp.test"])
  {
    [(WPTest *)self receivedData:v9 forCharacteristic:0 inService:0 forPeripheral:v8];
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
        [WPTest central:subscribed:toCharacteristic:inService:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v10;
        _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "test central connected to our device %{public}@, send Peripheral didConnect", &v19, 0xCu);
      }

      v14 = [(WPTest *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(WPTest *)self delegate];
        [v16 test:self didConnectToPeer:v10 transport:1 error:0];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPTest central:subscribed:toCharacteristic:inService:];
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
      [WPTest central:subscribed:toCharacteristic:inService:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest central:subscribed:toCharacteristic:inService:];
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
      [WPTest disconnectFromPeer:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v4;
      _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "test disconnect from peer: %{public}@", buf, 0xCu);
    }

    v20.receiver = self;
    v20.super_class = WPTest;
    [(WPClient *)&v20 disconnectFromPeer:v4];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectFromPeer:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPTest *)v6 disconnectFromPeer:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"test peer is null";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v15];

    v17 = [(WPTest *)self delegate];
    LOBYTE(v15) = objc_opt_respondsToSelector();

    if (v15)
    {
      v18 = [(WPTest *)self delegate];
      [v18 test:self didDisconnectFromPeer:0 error:v16];
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
    v11 = [v8 stringWithFormat:@"test peer: %@ is disconnected with error: %@", v9, v10];

    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectedDevice:withError:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_274327000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - send didDisconnect", buf, 0xCu);
    }
  }

  v13 = [(WPTest *)self transfers];
  v14 = [v13 objectForKeyedSubscript:v6];

  if (v14)
  {
    [v14 resetTransfer];
  }

  v15 = [(WPTest *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    if (WPLogInitOnce != -1)
    {
      [WPTest disconnectedDevice:withError:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_274327000, v17, OS_LOG_TYPE_DEFAULT, "test sending didDisconnectFromPeer %@ with error %@", buf, 0x16u);
    }

    v18 = [(WPTest *)self delegate];
    [v18 test:self didDisconnectFromPeer:v6 error:v7];
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
    [WPTest disconnectedDeviceOverLEPipe:withError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "test disconnected %@ over LE pipe with error %@", &v10, 0x16u);
  }

  [(WPTest *)self disconnectedDevice:v6 withError:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)a3
{
  v5 = [(WPClient *)self state];
  v11.receiver = self;
  v11.super_class = WPTest;
  [(WPClient *)&v11 stateDidChange:a3];
  if ([(WPClient *)self state]!= v5)
  {
    if ([(WPClient *)self state]== 3)
    {
      v10.receiver = self;
      v10.super_class = WPTest;
      [(WPClient *)&v10 registerEndpoint:@"wp.test" requireAck:1 requireEncryption:0];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = WPTest;
      [(WPClient *)&v9 unregisterEndpoint:@"wp.test"];
    }

    v6 = [(WPTest *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPTest *)self delegate];
      [v8 testDidUpdateState:self];
    }
  }
}

- (WPTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startAdvertisingOfType:data:priority:mode:options:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_274327000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)advertisingStartedOfType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_274327000, v0, v1, "test advertising started of type: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)advertisingFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "test advertising failed to start of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)advertisingStoppedOfType:(unsigned __int8)a1 withError:(NSObject *)a2 .cold.4(unsigned __int8 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "test advertising stopped of type: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)scanningStartedOfType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_274327000, v0, v1, "test started scanning of type: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(void *)a3 ofType:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_274327000, v6, v7, "test failed to start scanning of type: %d with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scanningStoppedOfType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_274327000, v0, v1, "test scanning stopped of type: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)connectToPeer:(uint64_t)a3 withOptions:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - send didConnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(void *)a3 toPeer:.cold.2(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 length];
  v13 = [a3 UUIDString];
  OUTLINED_FUNCTION_6(&dword_274327000, v6, v7, "test send data size %lu: %@ peer: %@", v8, v9, v10, v11, 2u);

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
  OUTLINED_FUNCTION_6(&dword_274327000, v4, v5, "Test received data %@ of length %ld from peer %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)central:subscribed:toCharacteristic:inService:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "test received subscription notification of characteristic: %@, service: %@ is not of type test", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromPeer:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "%@ - sending didDisconnect", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end