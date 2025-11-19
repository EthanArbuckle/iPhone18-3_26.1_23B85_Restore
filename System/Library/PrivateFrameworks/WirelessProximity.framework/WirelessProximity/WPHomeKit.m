@interface WPHomeKit
- ($2825F4736939C4A6D3AD43837233062D)homeKitScanTypeToCBDiscoveryScanRates:(int64_t)a3;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)dutyCycleToScanningRates:(SEL)a3;
- (WPHomeKit)initWithDelegate:(id)a3 queue:(id)a4;
- (WPHomeKitDelegate)delegate;
- (id)startCBDiscoveryScan:(id)a3 forType:(int64_t)a4;
- (int64_t)homeKitTypeFromCBDiscoveryFlag:(unint64_t)a3;
- (int64_t)homeKitTypeFromClientType:(unsigned __int8)a3;
- (unint64_t)homeKitTypeToCBDiscoveryFlag:(int64_t)a3;
- (unsigned)clientTypeFromHomeKitType:(int64_t)a3;
- (void)checkAllowDuplicate;
- (void)deviceDiscovered:(id)a3;
- (void)deviceLostHandler:(id)a3;
- (void)invalidate;
- (void)invalidateWHBScanSession;
- (void)setStartScanParametersfor:(id)a3 withValues:(id)a4 forType:(int64_t)a5;
- (void)setStopScanParametersforType:(int64_t)a3;
- (void)startScanningWithData:(id)a3 forType:(int64_t)a4;
- (void)stateDidChange:(int64_t)a3;
- (void)stopCBDiscoveryScan:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)tearDownCBDiscovery;
@end

@implementation WPHomeKit

- (WPHomeKit)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WPHomeKit;
  v7 = [(WPClient *)&v10 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)dutyCycleToScanningRates:(SEL)a3
{
  retstr->var2 = 30;
  *&retstr->var0 = xmmword_27435CE60;
  switch(a4)
  {
    case 2:
LABEL_7:
      v5 = 60;
      goto LABEL_8;
    case 1:
      self = _os_feature_enabled_impl();
      if (self)
      {
        *&retstr->var0 = vdupq_n_s64(0x1EuLL);
        return self;
      }

      goto LABEL_7;
    case 0:
      v5 = 300;
LABEL_8:
      retstr->var0 = v5;
      return self;
  }

  v7 = self;
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:v7 file:@"WPHomeKit.m" lineNumber:86 description:@"Unknown duty cycle type"];

  return self;
}

- (unsigned)clientTypeFromHomeKitType:(int64_t)a3
{
  if (!a3)
  {
    return 6;
  }

  if (a3 != 1)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownHomeKitType" reason:@"The HomeKit type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 17;
}

- (int64_t)homeKitTypeFromClientType:(unsigned __int8)a3
{
  if (a3 == 6)
  {
    return 0;
  }

  if (a3 != 17)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"The client type %ld isn't valid", a3];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:v5 userInfo:0];

    objc_exception_throw(v6);
  }

  return 1;
}

- (void)invalidate
{
  [(WPHomeKit *)self setDelegate:0];
  if (self->_homeKitCBDiscovery)
  {
    [(WPHomeKit *)self tearDownCBDiscovery];
  }

  v3.receiver = self;
  v3.super_class = WPHomeKit;
  [(WPClient *)&v3 invalidate];
}

- (void)startScanningWithData:(id)a3 forType:(int64_t)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startScanningWithData:forType:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit startScanningWithData %@, type %ld", buf, 0x16u);
  }

  v39 = a4;
  v9 = [v7 objectForKeyedSubscript:@"WPHomeKitScanBlobData"];
  v10 = [v7 objectForKeyedSubscript:@"WPHomeKitScanMaskData"];
  v11 = [v7 objectForKeyedSubscript:@"WPHomeKitScanDutyCycle"];
  v12 = [v7 objectForKeyedSubscript:@"WPHomeKitScanOptionRange"];
  v13 = [v7 objectForKeyedSubscript:@"WPHomeKitScanOptionWHB"];
  if (v13)
  {
    v14 = [v7 objectForKeyedSubscript:@"WPHomeKitScanOptionWHB"];
    v15 = [v14 BOOLValue] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  [v7 objectForKeyedSubscript:@"WPHomeKitScanOptionRetainDuplicates"];
  v41 = v40 = v12;
  if (!v9 && v10)
  {
    v16 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid blob data provided, Blob Data: %@ is null but Mask data: %@ is not null", 0, v10];
    v53[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v19 = [v16 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v18];

    goto LABEL_22;
  }

  if (v9 && v10)
  {
    v20 = [v10 length];
    if (v20 > [v9 length])
    {
      v21 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid mask data provided, Mask data length: %lu > Blob data length: %lu", objc_msgSend(v10, "length"), objc_msgSend(v9, "length")];
      v51 = v17;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v19 = [v21 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v22];

      goto LABEL_22;
    }
  }

  else if (!v9)
  {
    goto LABEL_17;
  }

  if ([v9 length] > 0x16)
  {
LABEL_21:
    v23 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, Blob data: %@, Mask data: %@, Duty Cycle: %@", v9, v10, v11];
    v49 = v17;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v19 = [v23 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v24];

    goto LABEL_22;
  }

LABEL_17:
  if (v10 && [v10 length] > 0x16 || objc_msgSend(v11, "integerValue") < 0 || objc_msgSend(v11, "integerValue") >= 3)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    goto LABEL_27;
  }

  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startScanningWithData:forType:];
  }

  v34 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v34, OS_LOG_TYPE_DEFAULT, "HomeKit WHB scan requested", buf, 2u);
  }

  if (![(WPHomeKit *)self isWHBSupported])
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"WPHomeKit.m" lineNumber:185 description:@"WHB Scan is only allowed on tvOS"];
  }

  v28 = v40;
  if (_os_feature_enabled_impl())
  {
    v36 = [(WPHomeKit *)self startCBDiscoveryScan:v7 forType:v39];
LABEL_42:
    v19 = 0;
    goto LABEL_43;
  }

  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startScanningWithData:forType:];
  }

  v37 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPHomeKit startScanningWithData:v37 forType:?];
  }

  v38 = MEMORY[0x277CCA9B8];
  v46 = *MEMORY[0x277CCA450];
  v47 = @"WHB scan is not enabled.";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v19 = [v38 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v17];
LABEL_22:

  if (!v19)
  {
LABEL_27:
    v29 = objc_opt_new();
    -[WPHomeKit dutyCycleToScanningRates:](self, "dutyCycleToScanningRates:", [v11 integerValue]);
    *buf = v43;
    *&buf[16] = v44;
    [v29 setScanningRates:buf];
    [v29 setAllowDuplicates:0];
    [v29 setClientType:{-[WPHomeKit clientTypeFromHomeKitType:](self, "clientTypeFromHomeKitType:", v39)}];
    [v29 setActiveScanning:{objc_msgSend(v11, "integerValue") == 2}];
    [v29 setBlobValue:v9];
    [v29 setMaskValue:v10];
    v28 = v40;
    if (v40)
    {
      v30 = [v40 BOOLValue];
    }

    else
    {
      v30 = 0;
    }

    [v29 setRange:v30];
    if (v41)
    {
      if (_os_feature_enabled_impl())
      {
        [v29 setRetainDuplicates:{objc_msgSend(v41, "BOOLValue")}];
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPHomeKit startScanningWithData:forType:];
        }

        v31 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_274327000, v31, OS_LOG_TYPE_DEFAULT, "HomeKit scan option retain duplicates is not enabled.", buf, 2u);
        }
      }
    }

    if (WPLogInitOnce != -1)
    {
      [WPHomeKit startScanningWithData:forType:];
    }

    v32 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&dword_274327000, v32, OS_LOG_TYPE_DEFAULT, "HomeKit start scan with %@", buf, 0xCu);
    }

    v42.receiver = self;
    v42.super_class = WPHomeKit;
    [(WPClient *)&v42 startScanning:v29];

    goto LABEL_42;
  }

  v25 = [(WPHomeKit *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [(WPHomeKit *)self delegate];
    [v27 homeKit:self failedToStartScanningWithError:v19 forType:v39];
  }

  v28 = v40;
LABEL_43:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)stopScanningForType:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit stopScanningForType:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = a3;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit stopScanning type %ld", buf, 0xCu);
  }

  if (self->_homeKitCBDiscovery && [(WPHomeKit *)self discoveryFlagsContains:a3])
  {
    if (WPLogInitOnce != -1)
    {
      [WPHomeKit stopScanningForType:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = a3;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "HomeKit CBDiscovery stopScanning type %ld", buf, 0xCu);
    }

    [(WPHomeKit *)self stopCBDiscoveryScan:a3];
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setClientType:{-[WPHomeKit clientTypeFromHomeKitType:](self, "clientTypeFromHomeKitType:", a3)}];
    if (WPLogInitOnce != -1)
    {
      [WPHomeKit stopScanningForType:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit stop scan with %@", buf, 0xCu);
    }

    v10.receiver = self;
    v10.super_class = WPHomeKit;
    [(WPClient *)&v10 stopScanning:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)a3
{
  v5 = [(WPClient *)self state];
  v9.receiver = self;
  v9.super_class = WPHomeKit;
  [(WPClient *)&v9 stateDidChange:a3];
  if ([(WPClient *)self state]!= v5)
  {
    v6 = [(WPHomeKit *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPHomeKit *)self delegate];
      [v8 homeKitDidUpdateState:self];
    }
  }
}

- (void)checkAllowDuplicate
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__WPHomeKit_checkAllowDuplicate__block_invoke;
  v3[3] = &unk_279ED7330;
  v3[4] = self;
  v2.receiver = self;
  v2.super_class = WPHomeKit;
  [(WPClient *)&v2 checkAllowDuplicates:v3];
}

void __32__WPHomeKit_checkAllowDuplicate__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 homeKit:*(a1 + 32) allowDuplicate:a2];
  }
}

- (void)deviceDiscovered:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v5 = [v12 objectForKeyedSubscript:@"kDeviceAdvertisingPacket"];
  v6 = [v12 objectForKeyedSubscript:@"kDeviceType"];
  v7 = [v6 integerValue];

  v8 = [(WPHomeKit *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v12 objectForKeyedSubscript:@"kDeviceRSSI"];
    v11 = [(WPHomeKit *)self delegate];
    [v11 homeKit:self foundDevice:v4 withData:v5 RSSI:v10 type:{-[WPHomeKit homeKitTypeFromClientType:](self, "homeKitTypeFromClientType:", v7)}];
  }
}

- (void)setStartScanParametersfor:(id)a3 withValues:(id)a4 forType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v17 = [v8 objectForKeyedSubscript:@"WPHomeKitScanDutyCycle"];
  v10 = [v8 objectForKeyedSubscript:@"WPHomeKitScanOptionRange"];

  v11 = -[WPHomeKit homeKitScanTypeToCBDiscoveryScanRates:](self, "homeKitScanTypeToCBDiscoveryScanRates:", [v17 integerValue]);
  v12 = [v9 discoveryFlags];
  v13 = [(WPHomeKit *)self homeKitTypeToCBDiscoveryFlag:a5]| v12;
  v14 = 0x400002000000;
  if (!HIDWORD(*&v11))
  {
    v14 = 0x400000000000;
  }

  v15 = v13 | v14;
  if ([v10 BOOLValue])
  {
    v16 = v15 | 0x10000000000;
  }

  else
  {
    v16 = v15;
  }

  [v9 setDiscoveryFlags:v16];
  [v9 setBleScanRate:v11];
  [v9 setBleScanRateScreenOff:HIDWORD(*&v11)];
  [v9 setBleRSSIThresholdHint:4294967206];
}

- (void)setStopScanParametersforType:(int64_t)a3
{
  v5 = [self->_homeKitCBDiscovery discoveryFlags];
  v6 = v5 & ~[(WPHomeKit *)self homeKitTypeToCBDiscoveryFlag:a3];
  if ([(WPHomeKit *)self isHomeKitScanActive:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  homeKitCBDiscovery = self->_homeKitCBDiscovery;

  [homeKitCBDiscovery setDiscoveryFlags:v7];
}

- (void)deviceLostHandler:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit deviceLostHandler:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPHomeKit *)v4 deviceLostHandler:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [v4 identifier];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [v4 btAddressData];
  v19[0] = @"kDeviceStableIdentifier";
  v10 = [v4 stableIdentifier];
  v11 = v10;
  v12 = &stru_2883572B8;
  if (v10)
  {
    v12 = v10;
  }

  v20[0] = v12;
  v19[1] = *MEMORY[0x277CBDCE0];
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x277CBEA90] data];
  }

  v20[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  if (!v9)
  {
  }

  v15 = [(WPHomeKit *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(WPHomeKit *)self delegate];
    [v17 homeKit:self lostDevice:v8 withData:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)startCBDiscoveryScan:(id)a3 forType:(int64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startCBDiscoveryScan:forType:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v6;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit CBDiscovery startCBDiscoveryScan %@, type %ld", buf, 0x16u);
  }

  homeKitCBDiscovery = self->_homeKitCBDiscovery;
  if (homeKitCBDiscovery)
  {
    [(WPHomeKit *)self setStartScanParametersfor:homeKitCBDiscovery withValues:v6 forType:a4];
    v9 = [self->_homeKitCBDiscovery dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_250;
    block[3] = &unk_279ED73A8;
    block[4] = self;
    block[5] = a4;
    dispatch_async(v9, block);

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE030]);
    v12 = [(WPClient *)self clientQueue];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
    }

    [v11 setDispatchQueue:v14];
    [(WPHomeKit *)self setStartScanParametersfor:v11 withValues:v6 forType:a4];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_239;
    v25[3] = &unk_279ED7358;
    v25[4] = self;
    [v11 setDeviceFoundHandler:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_2;
    v24[3] = &unk_279ED7358;
    v24[4] = self;
    [v11 setDeviceLostHandler:v24];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_3;
    v20[3] = &unk_279ED7380;
    v10 = v11;
    v21 = v10;
    v22 = self;
    v23 = a4;
    [v10 activateWithCompletion:v20];
    objc_storeStrong(&self->_homeKitCBDiscovery, v11);
  }

  [(WPHomeKit *)self scanningStartedOfType:[(WPHomeKit *)self clientTypeFromHomeKitType:a4]];
  v15 = self->_homeKitCBDiscovery;
  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

void __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (WPLogInitOnce != -1)
    {
      __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_3_cold_1();
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "### HomeKit CBDiscovery activation failed : %@", buf, 0xCu);
    }

    [*(a1 + 32) invalidate];
    [*(a1 + 40) setHomeKitCBDiscovery:0];
    v5 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12 = @"HomeKit WHB scan via CBDiscovery failed";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v7 = [v5 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v6];

    [*(a1 + 40) scanningFailedToStart:v7 ofType:{objc_msgSend(*(a1 + 40), "clientTypeFromHomeKitType:", *(a1 + 48))}];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_3_cold_2();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit CBDiscovery activatied: %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_250(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeKitCBDiscovery];
  v3 = [v2 discoveredDevices];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 138412290;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [v10 discoveryFlags];
        if (([*(a1 + 32) homeKitTypeToCBDiscoveryFlag:*(a1 + 40)] & v11) != 0)
        {
          if (WPLogInitOnce != -1)
          {
            __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_250_cold_1();
          }

          v12 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = v14;
            v20 = v10;
            _os_log_debug_impl(&dword_274327000, v12, OS_LOG_TYPE_DEBUG, "HomeKit CBDiscovery reporting cached device: %@", buf, 0xCu);
          }

          [*(a1 + 32) deviceFoundHandler:v10 cached:1];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopCBDiscoveryScan:(int64_t)a3
{
  [(WPHomeKit *)self setStopScanParametersforType:?];
  v5 = [(WPHomeKit *)self clientTypeFromHomeKitType:a3];

  [(WPHomeKit *)self scanningStoppedOfType:v5];
}

- (void)tearDownCBDiscovery
{
  homeKitCBDiscovery = self->_homeKitCBDiscovery;
  if (homeKitCBDiscovery)
  {
    [homeKitCBDiscovery invalidate];
    v4 = self->_homeKitCBDiscovery;
    self->_homeKitCBDiscovery = 0;
  }
}

- (unint64_t)homeKitTypeToCBDiscoveryFlag:(int64_t)a3
{
  if (!a3)
  {
    return 0x400000;
  }

  if (a3 != 1)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"The homeKit type %ld isn't valid. Cannot Convert to CBDiscoveryFlags", a3];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:v5 userInfo:0];

    objc_exception_throw(v6);
  }

  return 0x1000000;
}

- (int64_t)homeKitTypeFromCBDiscoveryFlag:(unint64_t)a3
{
  if ((a3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((a3 & 0x1000000) == 0)
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"The CBDiscoveryFlag %llu isn't valid. Cannot Convert to homeKit type", a3];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:v5 userInfo:0];

    objc_exception_throw(v6);
  }

  return 1;
}

- ($2825F4736939C4A6D3AD43837233062D)homeKitScanTypeToCBDiscoveryScanRates:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = _os_feature_enabled_impl();
      v3 = 0x1400000000;
      if (v5)
      {
        v3 = 0x3C00000000;
      }

      v4 = 40;
      if (v5)
      {
        v4 = 60;
      }
    }

    else if (a3 == 2)
    {
      v3 = 0x1400000000;
      v4 = 40;
    }

    else
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"WPHomeKit.m" lineNumber:514 description:@"Unknown duty cycle type"];

      v4 = 0;
      v3 = 0x1400000000;
    }
  }

  else
  {
    v3 = 0x1400000000;
    v4 = 30;
  }

  return (v4 | v3);
}

- (void)invalidateWHBScanSession
{
  if (self->_homeKitCBDiscovery)
  {
    [(WPHomeKit *)self tearDownCBDiscovery];
  }
}

- (WPHomeKitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startScanningWithData:(os_log_t)log forType:.cold.4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"WHB scan is not enabled.";
  _os_log_error_impl(&dword_274327000, log, OS_LOG_TYPE_ERROR, "HomeKit %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deviceFoundHandler:(uint64_t)a1 cached:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "HomeKit CBDiscovery Device found or updated: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deviceLostHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "HomeKit CBDiscovery Device lost: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end