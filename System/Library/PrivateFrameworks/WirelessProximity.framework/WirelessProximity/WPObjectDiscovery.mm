@interface WPObjectDiscovery
- (BOOL)isValidScanOptions:(id)options;
- (BOOL)isValidScanRequest:(id)request;
- (OS_dispatch_queue)queue;
- (WPObjectDiscovery)init;
- (WPObjectDiscovery)initWithDelegate:(id)delegate queue:(id)queue;
- (WPObjectDiscoveryDelegate)delegate;
- (id)scanRequestFromScanMode:(int64_t)mode UpdateTime:(double)time;
- (id)scanRequestFromScanOptions:(id)options;
- (void)deviceDiscovered:(id)discovered;
- (void)devicesDiscovered:(id)discovered;
- (void)invalidate;
- (void)receivedTestResponse:(id)response;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)scanningFailedWithError:(id)error;
- (void)startScanning;
- (void)startScanningWithMode:(int64_t)mode;
- (void)startScanningWithMode:(int64_t)mode Timeout:(double)timeout;
- (void)startScanningWithOptions:(id)options;
- (void)startTest;
- (void)stateDidChange:(int64_t)change;
- (void)stopScanning;
- (void)stopTest;
- (void)updateBeaconingExtended:(id)extended;
- (void)updateBeaconingInterval:(id)interval;
- (void)updateBeaconingKeys:(id)keys;
- (void)updateBeaconingState:(id)state;
- (void)updateBeaconingStatus:(id)status;
- (void)updateNearOwnerTokens:(id)tokens;
- (void)updateScanningRequest:(id)request withUpdate:(id)update;
@end

@implementation WPObjectDiscovery

- (WPObjectDiscovery)initWithDelegate:(id)delegate queue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  if (_os_feature_enabled_impl())
  {
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery initWithDelegate:queue:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPObjectDiscovery initWithDelegate:v8 queue:?];
    }

    selfCopy = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = WPObjectDiscovery;
    v10 = [(WPClient *)&v17 initWithQueue:queueCopy machName:0];
    p_isa = &v10->super.super.isa;
    if (v10)
    {
      objc_storeWeak(&v10->_delegate, delegateCopy);
      objc_storeWeak(p_isa + 15, queueCopy);
      if (WPLogInitOnce != -1)
      {
        [WPObjectDiscovery initWithDelegate:queue:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        delegate = [p_isa delegate];
        *buf = 134218240;
        v19 = p_isa;
        v20 = 2048;
        v21 = delegate;
        _os_log_impl(&dword_274327000, v13, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery initWithDelegate self: %p, delegate: %p", buf, 0x16u);
      }
    }

    self = p_isa;
    selfCopy = self;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (WPObjectDiscovery)init
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
    [WPObjectDiscovery invalidate];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v3, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery invalidate by client", buf, 2u);
  }

  [(WPObjectDiscovery *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = WPObjectDiscovery;
  [(WPClient *)&v4 invalidate];
}

- (id)scanRequestFromScanOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyAdvBuffer"];
  v5 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyAllowDuplicates"];
  v6 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyScanWhenLocked"];
  v7 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyScreenOffRate"];
  v8 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyScreenOnRate"];
  v9 = [optionsCopy objectForKeyedSubscript:@"WPObjectDiscoveryScanKeyTimeout"];

  integerValue = [v8 integerValue];
  integerValue2 = [v7 integerValue];
  v12 = objc_opt_new();
  v14[0] = integerValue;
  v14[1] = integerValue2;
  v14[2] = 30;
  [v12 setScanningRates:v14];
  [v12 setAdvBuffer:{objc_msgSend(v4, "integerValue") & 7}];
  [v12 setScanWhenLocked:{objc_msgSend(v6, "BOOLValue")}];
  [v12 setScanCache:0];
  [v12 setAllowDuplicates:{objc_msgSend(v5, "BOOLValue")}];
  [v12 setRssiThreshold:&unk_28835C780];
  [v12 setClientType:18];
  if (v9)
  {
    [v9 doubleValue];
    [v12 setUpdateTime:?];
  }

  return v12;
}

- (id)scanRequestFromScanMode:(int64_t)mode UpdateTime:(double)time
{
  if (_os_feature_enabled_impl())
  {
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery scanRequestFromScanMode:UpdateTime:];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPObjectDiscovery *)v6 scanRequestFromScanMode:v7 UpdateTime:v8, v9, v10, v11, v12, v13];
    }
  }

  if (mode > 9)
  {
    v15 = 0;
    v16 = 0;
    v14 = 30;
  }

  else
  {
    v14 = qword_27435D010[mode];
    v15 = qword_27435D060[mode];
    v16 = qword_27435D0B0[mode];
  }

  v17 = objc_opt_new();
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = v14;
  [v17 setScanningRates:v19];
  [v17 setScanWhenLocked:mode > 4];
  [v17 setScanCache:0];
  [v17 setAllowDuplicates:1];
  [v17 setRssiThreshold:&unk_28835C780];
  [v17 setClientType:18];
  [v17 setUpdateTime:time];
  if (mode <= 4)
  {
    [v17 setAdvBuffer:5];
  }

  return v17;
}

- (void)startScanning
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, self, a3, "ObjectDiscovery calling deprecated function %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startScanningWithMode:(int64_t)mode
{
  if (_os_feature_enabled_impl())
  {
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery startScanningWithMode:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPObjectDiscovery *)v5 startScanningWithMode:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  [(WPObjectDiscovery *)self startScanningWithMode:mode Timeout:0.0];
}

- (void)scanningFailedWithError:(id)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery scanningFailedWithError:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  delegate = [(WPObjectDiscovery *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = errorCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v8];

    delegate2 = [(WPObjectDiscovery *)self delegate];
    [delegate2 objectDiscovery:self failedToStartScanningWithError:v9];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startScanningWithMode:(int64_t)mode Timeout:(double)timeout
{
  v21 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery startScanningWithMode:Timeout:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPObjectDiscovery *)v7 startScanningWithMode:v8 Timeout:v9, v10, v11, v12, v13, v14];
    }
  }

  if ([(WPObjectDiscovery *)self isScanningEnabled])
  {
    if (mode >= 5 && (timeout > 6.0 || timeout == 0.0))
    {
      0x4018000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"ObjectDiscovery scanning mode above %s (%ld) requires timeout of %0.2fs or less", "Normal", 4, 0x4018000000000000];
      [(WPObjectDiscovery *)self scanningFailedWithError:0x4018000000000000];
    }

    else
    {
      0x4018000000000000 = [(WPObjectDiscovery *)self scanRequestFromScanMode:mode UpdateTime:timeout];
      if (WPLogInitOnce != -1)
      {
        [WPObjectDiscovery startScanningWithMode:Timeout:];
      }

      v16 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = 0x4018000000000000;
        _os_log_impl(&dword_274327000, v16, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery start scanning: %{public}@", buf, 0xCu);
      }

      v18.receiver = self;
      v18.super_class = WPObjectDiscovery;
      [(WPClient *)&v18 startScanning:0x4018000000000000];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValidScanOptions:(id)options
{
  v31[5] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v31[0] = @"WPObjectDiscoveryScanKeyAdvBuffer";
  v31[1] = @"WPObjectDiscoveryScanKeyAllowDuplicates";
  v31[2] = @"WPObjectDiscoveryScanKeyScanWhenLocked";
  v31[3] = @"WPObjectDiscoveryScanKeyScreenOffRate";
  v31[4] = @"WPObjectDiscoveryScanKeyScreenOnRate";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [optionsCopy objectForKeyedSubscript:v12];

        if (!v13)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v14 = [array count];
  if (v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ObjectDiscovery scan mandatory options missing %@ ", array];
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery isValidScanOptions:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPTest startAdvertisingOfType:data:priority:mode:options:];
    }

    delegate = [(WPObjectDiscovery *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = v15;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = [v18 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v19];

      delegate2 = [(WPObjectDiscovery *)self delegate];
      [delegate2 objectDiscovery:self failedToStartScanningWithError:v20];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (BOOL)isValidScanRequest:(id)request
{
  v19[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    [requestCopy scanningRates];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  if (([v5 advBuffer] & 4) != 0)
  {
    v7 = 0;
    v8 = 1;
    if (!v6 || v6 == 966 || v6 == 0xFFFF)
    {
      goto LABEL_20;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"ObjectDiscovery ADV Buffer scan with unsupported interval %ld ", v6];
  }

  else
  {
    if (v6)
    {
      v7 = 0;
LABEL_19:
      v8 = 1;
      goto LABEL_20;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"ObjectDiscovery screen-off scan with unsupported interval %ld ", 0];
  }
  v7 = ;
  if (!v7)
  {
    goto LABEL_19;
  }

  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery isValidScanRequest:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPTest startAdvertisingOfType:data:priority:mode:options:];
  }

  delegate = [(WPObjectDiscovery *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  v11 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277CCA450];
  v19[0] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v13 = [v11 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v12];

  delegate2 = [(WPObjectDiscovery *)self delegate];
  [delegate2 objectDiscovery:self failedToStartScanningWithError:v13];

  v8 = 0;
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)startScanningWithOptions:(id)options
{
  v12 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery startScanningWithOptions:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = optionsCopy;
    _os_log_impl(&dword_274327000, v5, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery startScanningWithOptions %@", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    if ([(WPObjectDiscovery *)self isScanningEnabled]&& [(WPObjectDiscovery *)self isValidScanOptions:optionsCopy])
    {
      v6 = [(WPObjectDiscovery *)self scanRequestFromScanOptions:optionsCopy];
      if ([(WPObjectDiscovery *)self isValidScanRequest:v6])
      {
        if (WPLogInitOnce != -1)
        {
          [WPObjectDiscovery startScanningWithOptions:];
        }

        v7 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v11 = v6;
          _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery start scanning: %{public}@", buf, 0xCu);
        }

        v9.receiver = self;
        v9.super_class = WPObjectDiscovery;
        [(WPClient *)&v9 startScanning:v6];
      }
    }
  }

  else
  {
    [(WPObjectDiscovery *)self scanningFailedWithError:@"ObjectDiscovery startScanningWithOptions API is disabled"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(WPObjectDiscovery *)self isScanningEnabled])
  {
    v3 = objc_opt_new();
    [v3 setClientType:18];
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery stopScanning];
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "ObjectDiscovery stop scanning: %{public}@", buf, 0xCu);
    }

    v6.receiver = self;
    v6.super_class = WPObjectDiscovery;
    [(WPClient *)&v6 stopScanning:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateScanningRequest:(id)request withUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  updateCopy = update;
  [requestCopy setUpdateTime:0.0];
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery updateScanningRequest:withUpdate:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = requestCopy;
    _os_log_impl(&dword_274327000, v8, OS_LOG_TYPE_INFO, "ObjectDiscovery timed-out scanning request: %{public}@", &v10, 0xCu);
  }

  [(WPObjectDiscovery *)self stopScanning];
  updateCopy[2](updateCopy, 0);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(int64_t)change
{
  v8.receiver = self;
  v8.super_class = WPObjectDiscovery;
  [(WPClient *)&v8 stateDidChange:change];
  delegate = [(WPObjectDiscovery *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPObjectDiscovery *)self delegate];
    [delegate2 objectDiscoveryUpdatedState:self];
  }

  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery stateDidChange:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery stateDidChange:v7];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  discoveredCopy = discovered;
  v4 = objc_autoreleasePoolPush();
  delegate = [(WPObjectDiscovery *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:discoveredCopy];
    if (v7)
    {
      delegate2 = [(WPObjectDiscovery *)self delegate];
      [delegate2 objectDiscovery:self foundDevice:v7];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)devicesDiscovered:(id)discovered
{
  v20 = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v5 = objc_autoreleasePoolPush();
  delegate = [(WPObjectDiscovery *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = objc_opt_new();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__WPObjectDiscovery_devicesDiscovered___block_invoke;
    v12[3] = &unk_279ED7660;
    v12[4] = &v13;
    [discoveredCopy enumerateObjectsUsingBlock:v12];
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery devicesDiscovered:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      -[WPObjectDiscovery devicesDiscovered:].cold.2(buf, [v14[5] count], v8);
    }

    delegate2 = [(WPObjectDiscovery *)self delegate];
    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v14[5]];
    [delegate2 objectDiscovery:self foundDevices:v10];

    _Block_object_dispose(&v13, 8);
  }

  objc_autoreleasePoolPop(v5);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __39__WPObjectDiscovery_devicesDiscovered___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:a2];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPObjectDiscovery *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (WPLogInitOnce != -1)
    {
      [WPObjectDiscovery scanningFailedToStart:ofType:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPObjectDiscovery scanningFailedToStart:v8 ofType:?];
    }

    delegate2 = [(WPObjectDiscovery *)self delegate];
    [delegate2 objectDiscovery:self failedToStartScanningWithError:startCopy];
  }
}

- (WPObjectDiscoveryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

- (void)receivedTestResponse:(id)response
{
  responseCopy = response;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) receivedTestResponse:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) receivedTestResponse:];
  }
}

- (void)startTest
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) startTest];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPObjectDiscovery(Test) *)self startTest];
  }

  if ([(WPClient *)self isTestClient])
  {
    v7 = @"kWPTestRequestKeyID";
    v8[0] = &unk_28835C798;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6.receiver = self;
    v6.super_class = WPObjectDiscovery;
    [(WPClient *)&v6 sendTestRequest:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopTest
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) stopTest];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPObjectDiscovery(Test) *)self stopTest];
  }

  if ([(WPClient *)self isTestClient])
  {
    v7 = @"kWPTestRequestKeyID";
    v8[0] = &unk_28835C7B0;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6.receiver = self;
    v6.super_class = WPObjectDiscovery;
    [(WPClient *)&v6 sendTestRequest:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingState:(id)state
{
  v9[2] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateBeaconingState:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateBeaconingState:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestBeaconStateKey";
    v9[0] = &unk_28835C7C8;
    v9[1] = stateCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingKeys:(id)keys
{
  v9[2] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateBeaconingKeys:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateBeaconingKeys:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestBeaconKeysKey";
    v9[0] = &unk_28835C7E0;
    v9[1] = keysCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingStatus:(id)status
{
  v9[2] = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateBeaconingStatus:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateBeaconingStatus:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestBeaconStatusKey";
    v9[0] = &unk_28835C7F8;
    v9[1] = statusCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingExtended:(id)extended
{
  v9[2] = *MEMORY[0x277D85DE8];
  extendedCopy = extended;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateBeaconingExtended:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateBeaconingExtended:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestBeaconExtendedKey";
    v9[0] = &unk_28835C810;
    v9[1] = extendedCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateNearOwnerTokens:(id)tokens
{
  v9[2] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateNearOwnerTokens:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateNearOwnerTokens:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestNearOwnerTokensKey";
    v9[0] = &unk_28835C828;
    v9[1] = tokensCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconingInterval:(id)interval
{
  v9[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (WPLogInitOnce != -1)
  {
    [WPObjectDiscovery(Test) updateBeaconingInterval:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPObjectDiscovery(Test) updateBeaconingInterval:];
  }

  if ([(WPClient *)self isTestClient])
  {
    v8[0] = @"kWPTestRequestKeyID";
    v8[1] = @"kWPTestBeaconIntervalKey";
    v9[0] = &unk_28835C840;
    v9[1] = intervalCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7.receiver = self;
    v7.super_class = WPObjectDiscovery;
    [(WPClient *)&v7 sendTestRequest:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scanRequestFromScanMode:(uint64_t)a3 UpdateTime:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "ObjectDiscovery calling deprecated function %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startScanningWithMode:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "ObjectDiscovery calling deprecated function %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startScanningWithMode:(uint64_t)a3 Timeout:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_274327000, a1, a3, "ObjectDiscovery calling deprecated function %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stateDidChange:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_6_0() state];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)devicesDiscovered:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_274327000, log, OS_LOG_TYPE_DEBUG, "ObjectDiscovery ADV Buffer read event with %lu peers", buf, 0xCu);
}

- (void)scanningFailedToStart:(void *)a1 ofType:.cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_6_0() localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_274327000, v1, OS_LOG_TYPE_ERROR, "ObjectDiscovery scanning failed to start with error: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end