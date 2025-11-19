@interface WPHeySiri
- (WPHeySiri)initWithDelegate:(id)a3 queue:(id)a4;
- (WPHeySiriProtocol)delegate;
- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)advertisingPendingOfType:(unsigned __int8)a3;
- (void)advertisingStartedOfType:(unsigned __int8)a3;
- (void)advertisingStartedOfTypeAt:(unsigned __int8)a3;
- (void)advertisingStoppedOfType:(unsigned __int8)a3 withError:(id)a4;
- (void)deviceDiscovered:(id)a3;
- (void)invalidate;
- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)scanningStartedOfType:(unsigned __int8)a3;
- (void)scanningStoppedOfType:(unsigned __int8)a3;
- (void)startAdvertisingWithData:(id)a3;
- (void)startScanning;
- (void)startScanningAndAdvertisingWithData:(id)a3;
- (void)startScanningAndAdvertisingWithOptions:(id)a3;
- (void)stateDidChange:(int64_t)a3;
- (void)stopAdvertising;
- (void)stopScanning;
- (void)stopScanningAndAdvertising;
- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4;
- (void)updateScanningRequest:(id)a3 withUpdate:(id)a4;
@end

@implementation WPHeySiri

- (void)stopScanning
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri stopScanning];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "HeySiri stop scanning", buf, 2u);
  }

  [(WPHeySiri *)self setIsScanning:0];
  v4 = objc_opt_new();
  [v4 setClientType:8];
  v5.receiver = self;
  v5.super_class = WPHeySiri;
  [(WPClient *)&v5 stopScanning:v4];
}

- (void)stopScanningAndAdvertising
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri stopScanningAndAdvertising];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "HeySiri stop advertise and scan", v4, 2u);
  }

  [(WPHeySiri *)self stopAdvertising];
  [(WPHeySiri *)self stopScanning];
}

- (void)stopAdvertising
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri stopAdvertising];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "HeySiri stop advertising", buf, 2u);
  }

  v4 = [WPAdvertisingRequest requestForClientType:8];
  v5.receiver = self;
  v5.super_class = WPHeySiri;
  [(WPClient *)&v5 stopAdvertising:v4];
}

- (WPHeySiriProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startScanning
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri startScanning];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "HeySiri start scanning", buf, 2u);
  }

  if ([(WPHeySiri *)self isScanning])
  {
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri startScanning];
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "HeySiri already scanning, do not restart", buf, 2u);
    }
  }

  else
  {
    [(WPHeySiri *)self setIsScanning:1];
    v5 = objc_opt_new();
    [v5 setUpdateTime:10.0];
    *buf = vdupq_n_s64(0x1EuLL);
    v8 = 30;
    [v5 setScanningRates:buf];
    [v5 setActiveScanning:0];
    [v5 setAllowDuplicates:1];
    if (+[WPClient isHomePod])
    {
      [v5 setAllowDuplicates:0];
    }

    [v5 setRssiThreshold:&unk_28835C888];
    [v5 setClientType:8];
    [v5 setPriorityCritical:1];
    [v5 setRequestedAtNsec:clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
    v6.receiver = self;
    v6.super_class = WPHeySiri;
    [(WPClient *)&v6 startScanning:v5];
  }
}

- (WPHeySiri)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_sync_enter(&unk_28835C870);
  v13.receiver = self;
  v13.super_class = WPHeySiri;
  v8 = [(WPClient *)&v13 initWithQueue:v7 machName:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri initWithDelegate:queue:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "HeySiri _delegate assigned", v12, 2u);
    }

    v9->_isScanning = 0;
  }

  objc_sync_exit(&unk_28835C870);

  return v9;
}

- (void)invalidate
{
  objc_sync_enter(&unk_28835C870);
  [(WPHeySiri *)self setDelegate:0];
  objc_sync_exit(&unk_28835C870);
  v3.receiver = self;
  v3.super_class = WPHeySiri;
  [(WPClient *)&v3 invalidate];
}

- (void)startScanningAndAdvertisingWithData:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri startScanningAndAdvertisingWithData:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "HeySiri start advertise and scan", v6, 2u);
  }

  [(WPHeySiri *)self startAdvertisingWithData:v4];
  [(WPHeySiri *)self startScanning];
}

- (void)startAdvertisingWithData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [WPAdvertisingRequest requestForClientType:8];
  [v5 setUpdateTime:45.0];
  v6 = [v4 objectForKeyedSubscript:@"WPHeySiriAdvertisingData"];

  [v5 setAdvertisingData:v6];
  if (+[WPClient isHomePodOrIOS])
  {
    v7 = startAdvertisingWithData__rates[arc4random_uniform(6u)];
  }

  else
  {
    v7 = 48;
  }

  [v5 setAdvertisingRate:v7];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC) / 0xF4240];
  [v5 setAdvertisementRequestedAt:v8];

  if (WPLogInitOnce != -1)
  {
    [WPHeySiri startAdvertisingWithData:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 advertisingData];
    v12 = [v5 advertisementRequestedAt];
    *buf = 138412546;
    v16 = v11;
    v17 = 2048;
    v18 = [v12 longLongValue];
    _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "HeySiri start advertising data=%@ at %llu", buf, 0x16u);
  }

  v14.receiver = self;
  v14.super_class = WPHeySiri;
  [(WPClient *)&v14 startAdvertising:v5];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(id)a3 withUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 updateTime];
  if (v8 <= 0.0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri updateAdvertisingRequest:withUpdate:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPHeySiri updateAdvertisingRequest:v9 withUpdate:v6];
    }
  }

  else
  {
    [v6 setUpdateTime:0.0];
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri updateAdvertisingRequest:withUpdate:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPHeySiri updateAdvertisingRequest:withUpdate:];
    }

    [(WPHeySiri *)self stopAdvertising];
  }

  v7[2](v7, 0);
}

- (void)updateScanningRequest:(id)a3 withUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 updateTime];
  if (v8 <= 0.0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri updateScanningRequest:withUpdate:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPHeySiri *)v9 updateScanningRequest:v6 withUpdate:self];
    }

    [(WPHeySiri *)self setIsScanning:0];
  }

  else
  {
    [v6 setUpdateTime:0.0];
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri updateScanningRequest:withUpdate:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPHeySiri updateScanningRequest:withUpdate:];
    }

    [(WPHeySiri *)self stopScanning];
  }

  v7[2](v7, 0);
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPHeySiri;
  [(WPClient *)&v7 stateDidChange:a3];
  objc_sync_enter(&unk_28835C870);
  v4 = [(WPHeySiri *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPHeySiri *)self delegate];
    [v6 heySiriDidUpdateState:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)advertisingStartedOfType:(unsigned __int8)a3
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri advertisingStartedOfType:];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "HeySiri started advertising", v8, 2u);
  }

  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPHeySiri *)self delegate];
    [v7 heySiriStartedAdvertising:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)advertisingStartedOfTypeAt:(unsigned __int8)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = mach_absolute_time();
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri advertisingStartedOfTypeAt:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "HeySiri started advertising at %llu", &v10, 0xCu);
  }

  objc_sync_enter(&unk_28835C870);
  v6 = [(WPHeySiri *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WPHeySiri *)self delegate];
    [v8 heySiriStartedAdvertisingAt:self timeStamp:v4];
  }

  objc_sync_exit(&unk_28835C870);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)advertisingStoppedOfType:(unsigned __int8)a3 withError:(id)a4
{
  v5 = a4;
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri advertisingStoppedOfType:withError:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "HeySiri stopped advertising", v10, 2u);
  }

  objc_sync_enter(&unk_28835C870);
  v7 = [(WPHeySiri *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WPHeySiri *)self delegate];
    [v9 heySiriStoppedAdvertising:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPHeySiri *)self delegate];
    [v7 heySiri:self failedToStartAdvertisingWithError:v8];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)advertisingPendingOfType:(unsigned __int8)a3
{
  objc_sync_enter(&unk_28835C870);
  v4 = [(WPHeySiri *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPHeySiri *)self delegate];
    [v6 heySiriAdvertisingPending:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)deviceDiscovered:(id)a3
{
  v18[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
    v8 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
    v9 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
    v10 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
    v11 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
    if (v7 && [v7 length] >= 5)
    {
      v12 = [v7 subdataWithRange:{4, objc_msgSend(v7, "length") - 4}];
      if (WPLogInitOnce != -1)
      {
        [WPHeySiri deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPHeySiri deviceDiscovered:];
      }

      v18[0] = v8;
      v17[0] = @"WPHeySiriKeyDeviceUUID";
      v17[1] = @"WPHeySiriKeyDeviceAddress";
      v13 = v9;
      if (!v9)
      {
        v13 = [MEMORY[0x277CBEA90] data];
      }

      v18[1] = v13;
      v18[2] = v12;
      v17[2] = @"WPHeySiriKeyManufacturerData";
      v17[3] = @"WPHeySiriKeyDeviceTime";
      v17[4] = @"WPHeySiriKeyDeviceRSSI";
      v18[3] = v10;
      v18[4] = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
      if (!v9)
      {
      }

      v15 = [(WPHeySiri *)self delegate];
      [v15 heySiri:self foundDevice:v8 withInfo:v14];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPHeySiri deviceDiscovered:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPHeySiri deviceDiscovered:];
      }
    }
  }

  objc_sync_exit(&unk_28835C870);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)scanningStartedOfType:(unsigned __int8)a3
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri scanningStartedOfType:];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "HeySiri started scanning", v8, 2u);
  }

  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPHeySiri *)self delegate];
    [v7 heySiriStartedScanning:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)scanningStoppedOfType:(unsigned __int8)a3
{
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri scanningStoppedOfType:];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "HeySiri stopped scanning", v8, 2u);
  }

  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPHeySiri *)self delegate];
    [v7 heySiriStoppedScanning:self];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  [(WPHeySiri *)self setIsScanning:0];
  objc_sync_enter(&unk_28835C870);
  v5 = [(WPHeySiri *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPHeySiri *)self delegate];
    [v7 heySiri:self failedToStartScanningWithError:v8];
  }

  objc_sync_exit(&unk_28835C870);
}

- (void)startScanningAndAdvertisingWithOptions:(id)a3
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "HeySiri startScanningAndAdvertisingWithDataAndOptions %@", &buf, 0xCu);
  }

  if (![(WPClient *)self isTestClient])
  {
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPHeySiri(Test) *)v9 startScanningAndAdvertisingWithOptions:v10, v11, v12, v13, v14, v15, v16];
    }

    v17 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47[0] = @"Non-test client calling test API.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v19 = [v17 errorWithDomain:@"WPErrorDomain" code:29 userInfo:v18];

    [(WPHeySiri *)self scanningFailedToStart:v19 ofType:8];
    [(WPHeySiri *)self advertisingFailedToStart:v19 ofType:8];
    goto LABEL_51;
  }

  v6 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScan"];
  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScan"];
    v8 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v20 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestAdvertise"];
  if (v20)
  {
    v21 = v20;
    v22 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestAdvertise"];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      if (WPLogInitOnce != -1)
      {
        [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
      }

      v24 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_274327000, v24, OS_LOG_TYPE_DEFAULT, "HeySiri start advertising", &buf, 2u);
      }

      v25 = [WPAdvertisingRequest requestForClientType:8];
      [v25 setUpdateTime:45.0];
      v26 = [v4 objectForKeyedSubscript:@"WPHeySiriAdvertisingData"];
      if (v26)
      {
        v27 = [v4 objectForKeyedSubscript:@"WPHeySiriAdvertisingData"];
        [v25 setAdvertisingData:v27];
      }

      else
      {
        [v25 setAdvertisingData:0];
      }

      v28 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestAdvertisingRate"];
      if (v28)
      {
        v29 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestAdvertisingRate"];
        [v25 setAdvertisingRate:{objc_msgSend(v29, "integerValue")}];
      }

      else
      {
        [v25 setAdvertisingRate:48];
      }

      v30 = [v25 advertisingData];

      if (v30)
      {
        if (WPLogInitOnce != -1)
        {
          [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
        }

        v31 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [(WPHeySiri(Test) *)v31 startScanningAndAdvertisingWithOptions:v25];
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
        }

        v32 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:v32];
        }
      }

      v43.receiver = self;
      v43.super_class = WPHeySiri;
      [(WPClient *)&v43 startAdvertising:v25];
    }
  }

  if ((v8 & 1) == 0)
  {
    if (WPLogInitOnce != -1)
    {
      [WPHeySiri(Test) startScanningAndAdvertisingWithOptions:];
    }

    v33 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_274327000, v33, OS_LOG_TYPE_DEFAULT, "HeySiri start scanning", &buf, 2u);
    }

    [(WPHeySiri *)self setIsScanning:1];
    v34 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScanDutyCycle"];
    if (v34)
    {
      v35 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScanDutyCycle"];
      v36 = [v35 integerValue];
    }

    else
    {
      v36 = 100;
    }

    v19 = objc_opt_new();
    *&buf = 3000 / v36;
    *(&buf + 1) = 3000 / v36;
    v45 = 30;
    [v19 setScanningRates:&buf];
    v37 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestActiveScan"];
    if (v37)
    {
      v38 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestActiveScan"];
      [v19 setActiveScanning:{objc_msgSend(v38, "BOOLValue")}];
    }

    else
    {
      [v19 setActiveScanning:0];
    }

    v39 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScanWithDups"];
    if (v39)
    {
      v40 = [v4 objectForKeyedSubscript:@"kWPHeySiriTestScanWithDups"];
      [v19 setAllowDuplicates:{objc_msgSend(v40, "BOOLValue")}];
    }

    else
    {
      [v19 setAllowDuplicates:0];
    }

    [v19 setRssiThreshold:&unk_28835C888];
    [v19 setClientType:8];
    [v19 setPriorityCritical:1];
    v42.receiver = self;
    v42.super_class = WPHeySiri;
    [(WPClient *)&v42 startScanning:v19];
LABEL_51:
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(void *)a1 withUpdate:(void *)a2 .cold.2(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 updateTime];
  v6 = 134217984;
  v7 = v4;
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "HeySiri advertising updateTime set to %.2f", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:withUpdate:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_274327000, v0, v1, "HeySiri timed-out advertising request with data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateScanningRequest:(void *)a3 withUpdate:.cold.2(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 updateTime];
  v8 = 134218240;
  v9 = v6;
  v10 = 1024;
  v11 = [a3 isScanning];
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "HeySiri scan updateTime set to %.2f, current scan: %d", &v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateScanningRequest:withUpdate:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_274327000, v0, v1, "HeySiri timed-out scan request with data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_274327000, v1, OS_LOG_TYPE_DEBUG, "HeySiri data=%@ from %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "HeySiri invalid TLD=%@ from %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end