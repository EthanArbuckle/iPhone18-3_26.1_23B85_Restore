@interface WPHomeKit
- ($2825F4736939C4A6D3AD43837233062D)homeKitScanTypeToCBDiscoveryScanRates:(int64_t)rates;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)dutyCycleToScanningRates:(SEL)rates;
- (WPHomeKit)initWithDelegate:(id)delegate queue:(id)queue;
- (WPHomeKitDelegate)delegate;
- (id)startCBDiscoveryScan:(id)scan forType:(int64_t)type;
- (int64_t)homeKitTypeFromCBDiscoveryFlag:(unint64_t)flag;
- (int64_t)homeKitTypeFromClientType:(unsigned __int8)type;
- (unint64_t)homeKitTypeToCBDiscoveryFlag:(int64_t)flag;
- (unsigned)clientTypeFromHomeKitType:(int64_t)type;
- (void)checkAllowDuplicate;
- (void)deviceDiscovered:(id)discovered;
- (void)deviceLostHandler:(id)handler;
- (void)invalidate;
- (void)invalidateWHBScanSession;
- (void)setStartScanParametersfor:(id)parametersfor withValues:(id)values forType:(int64_t)type;
- (void)setStopScanParametersforType:(int64_t)type;
- (void)startScanningWithData:(id)data forType:(int64_t)type;
- (void)stateDidChange:(int64_t)change;
- (void)stopCBDiscoveryScan:(int64_t)scan;
- (void)stopScanningForType:(int64_t)type;
- (void)tearDownCBDiscovery;
@end

@implementation WPHomeKit

- (WPHomeKit)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WPHomeKit;
  v7 = [(WPClient *)&v10 initWithQueue:queue machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)dutyCycleToScanningRates:(SEL)rates
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

  selfCopy = self;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:rates object:selfCopy file:@"WPHomeKit.m" lineNumber:86 description:@"Unknown duty cycle type"];

  return self;
}

- (unsigned)clientTypeFromHomeKitType:(int64_t)type
{
  if (!type)
  {
    return 6;
  }

  if (type != 1)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnknownHomeKitType" reason:@"The HomeKit type isn't valid" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return 17;
}

- (int64_t)homeKitTypeFromClientType:(unsigned __int8)type
{
  if (type == 6)
  {
    return 0;
  }

  if (type != 17)
  {
    v4 = MEMORY[0x277CBEAD8];
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"The client type %ld isn't valid", type];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:type userInfo:0];

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

- (void)startScanningWithData:(id)data forType:(int64_t)type
{
  v53[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startScanningWithData:forType:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = dataCopy;
    *&buf[12] = 2048;
    *&buf[14] = type;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit startScanningWithData %@, type %ld", buf, 0x16u);
  }

  typeCopy = type;
  v9 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanBlobData"];
  v10 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanMaskData"];
  v11 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanDutyCycle"];
  v12 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanOptionRange"];
  v13 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanOptionWHB"];
  if (v13)
  {
    v14 = [dataCopy objectForKeyedSubscript:@"WPHomeKitScanOptionWHB"];
    v15 = [v14 BOOLValue] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  [dataCopy objectForKeyedSubscript:@"WPHomeKitScanOptionRetainDuplicates"];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WPHomeKit.m" lineNumber:185 description:@"WHB Scan is only allowed on tvOS"];
  }

  v28 = v40;
  if (_os_feature_enabled_impl())
  {
    v36 = [(WPHomeKit *)self startCBDiscoveryScan:dataCopy forType:typeCopy];
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
    [v29 setClientType:{-[WPHomeKit clientTypeFromHomeKitType:](self, "clientTypeFromHomeKitType:", typeCopy)}];
    [v29 setActiveScanning:{objc_msgSend(v11, "integerValue") == 2}];
    [v29 setBlobValue:v9];
    [v29 setMaskValue:v10];
    v28 = v40;
    if (v40)
    {
      bOOLValue = [v40 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [v29 setRange:bOOLValue];
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

  delegate = [(WPHomeKit *)self delegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    delegate2 = [(WPHomeKit *)self delegate];
    [delegate2 homeKit:self failedToStartScanningWithError:v19 forType:typeCopy];
  }

  v28 = v40;
LABEL_43:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)stopScanningForType:(int64_t)type
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
    typeCopy2 = type;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit stopScanning type %ld", buf, 0xCu);
  }

  if (self->_homeKitCBDiscovery && [(WPHomeKit *)self discoveryFlagsContains:type])
  {
    if (WPLogInitOnce != -1)
    {
      [WPHomeKit stopScanningForType:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "HomeKit CBDiscovery stopScanning type %ld", buf, 0xCu);
    }

    [(WPHomeKit *)self stopCBDiscoveryScan:type];
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setClientType:{-[WPHomeKit clientTypeFromHomeKitType:](self, "clientTypeFromHomeKitType:", type)}];
    if (WPLogInitOnce != -1)
    {
      [WPHomeKit stopScanningForType:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      typeCopy2 = v7;
      _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit stop scan with %@", buf, 0xCu);
    }

    v10.receiver = self;
    v10.super_class = WPHomeKit;
    [(WPClient *)&v10 stopScanning:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)change
{
  state = [(WPClient *)self state];
  v9.receiver = self;
  v9.super_class = WPHomeKit;
  [(WPClient *)&v9 stateDidChange:change];
  if ([(WPClient *)self state]!= state)
  {
    delegate = [(WPHomeKit *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPHomeKit *)self delegate];
      [delegate2 homeKitDidUpdateState:self];
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

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v4 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingPacket"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDeviceType"];
  integerValue = [v6 integerValue];

  delegate = [(WPHomeKit *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
    delegate2 = [(WPHomeKit *)self delegate];
    [delegate2 homeKit:self foundDevice:v4 withData:v5 RSSI:v10 type:{-[WPHomeKit homeKitTypeFromClientType:](self, "homeKitTypeFromClientType:", integerValue)}];
  }
}

- (void)setStartScanParametersfor:(id)parametersfor withValues:(id)values forType:(int64_t)type
{
  valuesCopy = values;
  parametersforCopy = parametersfor;
  v17 = [valuesCopy objectForKeyedSubscript:@"WPHomeKitScanDutyCycle"];
  v10 = [valuesCopy objectForKeyedSubscript:@"WPHomeKitScanOptionRange"];

  v11 = -[WPHomeKit homeKitScanTypeToCBDiscoveryScanRates:](self, "homeKitScanTypeToCBDiscoveryScanRates:", [v17 integerValue]);
  discoveryFlags = [parametersforCopy discoveryFlags];
  v13 = [(WPHomeKit *)self homeKitTypeToCBDiscoveryFlag:type]| discoveryFlags;
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

  [parametersforCopy setDiscoveryFlags:v16];
  [parametersforCopy setBleScanRate:v11];
  [parametersforCopy setBleScanRateScreenOff:HIDWORD(*&v11)];
  [parametersforCopy setBleRSSIThresholdHint:4294967206];
}

- (void)setStopScanParametersforType:(int64_t)type
{
  discoveryFlags = [self->_homeKitCBDiscovery discoveryFlags];
  v6 = discoveryFlags & ~[(WPHomeKit *)self homeKitTypeToCBDiscoveryFlag:type];
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

- (void)deviceLostHandler:(id)handler
{
  v20[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit deviceLostHandler:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPHomeKit *)handlerCopy deviceLostHandler:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  identifier = [handlerCopy identifier];
  v8 = [v6 initWithUUIDString:identifier];

  btAddressData = [handlerCopy btAddressData];
  v19[0] = @"kDeviceStableIdentifier";
  stableIdentifier = [handlerCopy stableIdentifier];
  v11 = stableIdentifier;
  v12 = &stru_2883572B8;
  if (stableIdentifier)
  {
    v12 = stableIdentifier;
  }

  v20[0] = v12;
  v19[1] = *MEMORY[0x277CBDCE0];
  data = btAddressData;
  if (!btAddressData)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v20[1] = data;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  if (!btAddressData)
  {
  }

  delegate = [(WPHomeKit *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(WPHomeKit *)self delegate];
    [delegate2 homeKit:self lostDevice:v8 withData:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)startCBDiscoveryScan:(id)scan forType:(int64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  if (WPLogInitOnce != -1)
  {
    [WPHomeKit startCBDiscoveryScan:forType:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = scanCopy;
    v28 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit CBDiscovery startCBDiscoveryScan %@, type %ld", buf, 0x16u);
  }

  homeKitCBDiscovery = self->_homeKitCBDiscovery;
  if (homeKitCBDiscovery)
  {
    [(WPHomeKit *)self setStartScanParametersfor:homeKitCBDiscovery withValues:scanCopy forType:type];
    dispatchQueue = [self->_homeKitCBDiscovery dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WPHomeKit_startCBDiscoveryScan_forType___block_invoke_250;
    block[3] = &unk_279ED73A8;
    block[4] = self;
    block[5] = type;
    dispatch_async(dispatchQueue, block);

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE030]);
    clientQueue = [(WPClient *)self clientQueue];
    v13 = clientQueue;
    if (clientQueue)
    {
      v14 = clientQueue;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
    }

    [v11 setDispatchQueue:v14];
    [(WPHomeKit *)self setStartScanParametersfor:v11 withValues:scanCopy forType:type];
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
    selfCopy = self;
    typeCopy2 = type;
    [v10 activateWithCompletion:v20];
    objc_storeStrong(&self->_homeKitCBDiscovery, v11);
  }

  [(WPHomeKit *)self scanningStartedOfType:[(WPHomeKit *)self clientTypeFromHomeKitType:type]];
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

- (void)stopCBDiscoveryScan:(int64_t)scan
{
  [(WPHomeKit *)self setStopScanParametersforType:?];
  v5 = [(WPHomeKit *)self clientTypeFromHomeKitType:scan];

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

- (unint64_t)homeKitTypeToCBDiscoveryFlag:(int64_t)flag
{
  if (!flag)
  {
    return 0x400000;
  }

  if (flag != 1)
  {
    v4 = MEMORY[0x277CBEAD8];
    flag = [MEMORY[0x277CCACA8] stringWithFormat:@"The homeKit type %ld isn't valid. Cannot Convert to CBDiscoveryFlags", flag];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:flag userInfo:0];

    objc_exception_throw(v6);
  }

  return 0x1000000;
}

- (int64_t)homeKitTypeFromCBDiscoveryFlag:(unint64_t)flag
{
  if ((flag & 0x400000) != 0)
  {
    return 0;
  }

  if ((flag & 0x1000000) == 0)
  {
    v4 = MEMORY[0x277CBEAD8];
    flag = [MEMORY[0x277CCACA8] stringWithFormat:@"The CBDiscoveryFlag %llu isn't valid. Cannot Convert to homeKit type", flag];
    v6 = [v4 exceptionWithName:@"UnknownClientType" reason:flag userInfo:0];

    objc_exception_throw(v6);
  }

  return 1;
}

- ($2825F4736939C4A6D3AD43837233062D)homeKitScanTypeToCBDiscoveryScanRates:(int64_t)rates
{
  if (rates)
  {
    if (rates == 1)
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

    else if (rates == 2)
    {
      v3 = 0x1400000000;
      v4 = 40;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WPHomeKit.m" lineNumber:514 description:@"Unknown duty cycle type"];

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