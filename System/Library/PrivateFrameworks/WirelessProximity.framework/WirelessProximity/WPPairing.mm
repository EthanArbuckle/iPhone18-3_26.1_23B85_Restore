@interface WPPairing
- (WPPairing)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name;
- (WPPairingDelegate)delegate;
- (void)clearProximityPairingServiceDuplicates;
- (void)deviceDiscovered:(id)discovered;
- (void)ignoreDeviceUntilNextUnlock:(id)unlock ignoreDevice:(BOOL)device;
- (void)invalidate;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)startProximityPairingServiceScanningWithRSSI:(id)i duplicates:(BOOL)duplicates scanMode:(int64_t)mode;
- (void)stateDidChange:(int64_t)change;
- (void)stopProximityPairingServiceScanning;
@end

@implementation WPPairing

- (WPPairingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clearProximityPairingServiceDuplicates
{
  v3 = objc_opt_new();
  [v3 setClientType:7];
  if (WPLogInitOnce != -1)
  {
    [WPPairing clearProximityPairingServiceDuplicates];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "ProximityPairing clear duplicate cache", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = WPPairing;
  [(WPClient *)&v5 clearDuplicateFilterCache:v3];
}

- (WPPairing)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name
{
  delegateCopy = delegate;
  queueCopy = queue;
  nameCopy = name;
  if (+[WPClient isHomePod])
  {
    if (WPLogInitOnce != -1)
    {
      [WPPairing initWithDelegate:queue:machName:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPPairing initWithDelegate:v11 queue:? machName:?];
    }

    selfCopy = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = WPPairing;
    v13 = [(WPClient *)&v24 initWithQueue:queueCopy machName:nameCopy];
    v14 = v13;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, delegateCopy);
      v15 = [MEMORY[0x277CBEB58] set];
      ignoredDevices = v14->_ignoredDevices;
      v14->_ignoredDevices = v15;

      v14->_allowScreenOffScanning = 0;
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v18 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
      v19 = [v18 objectForKeyedSubscript:@"WIPROX"];

      v20 = [v19 objectForKeyedSubscript:@"ScreenOffProxPairing"];
      v21 = v20;
      if (v20)
      {
        v14->_allowScreenOffScanning = [v20 BOOLValue];
        if (WPLogInitOnce != -1)
        {
          [WPPairing initWithDelegate:queue:machName:];
        }

        v22 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPPairing initWithDelegate:v22 queue:? machName:?];
        }
      }
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)invalidate
{
  [(WPPairing *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPPairing;
  [(WPClient *)&v3 invalidate];
}

- (void)startProximityPairingServiceScanningWithRSSI:(id)i duplicates:(BOOL)duplicates scanMode:(int64_t)mode
{
  duplicatesCopy = duplicates;
  v19 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v9 = 300;
  if ((mode - 1) < 2)
  {
    v9 = 60;
  }

  if (mode == 3)
  {
    v10 = 40;
  }

  else
  {
    v10 = v9;
  }

  isBubbleTestClient = [(WPClient *)self isBubbleTestClient];
  if (isBubbleTestClient)
  {
    v12 = 30;
  }

  else
  {
    v12 = v10;
  }

  v13 = objc_opt_new();
  *&buf = v12;
  *(&buf + 1) = v12;
  v18 = 30;
  [v13 setScanningRates:&buf];
  [v13 setAllowDuplicates:isBubbleTestClient | duplicatesCopy];
  [v13 setClientType:7];
  if (iCopy)
  {
    [v13 setRssiThreshold:iCopy];
  }

  if (WPLogInitOnce != -1)
  {
    [WPPairing startProximityPairingServiceScanningWithRSSI:duplicates:scanMode:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "ProximityPairing start scanning with data: %{public}@", &buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = WPPairing;
  [(WPClient *)&v16 startScanning:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(id)discovered
{
  v29[6] = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v6 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v7 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
  v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceName"];
  v27 = [discoveredCopy objectForKeyedSubscript:@"kDevicePaired"];
  v26 = [discoveredCopy objectForKeyedSubscript:@"kDeviceChannel"];
  v25 = [discoveredCopy objectForKeyedSubscript:@"kDeviceTime"];
  v9 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v10 = [discoveredCopy objectForKeyedSubscript:@"kDeviceProxPairingStatusDecrypted"];
  v11 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAccessoryStatusDecrypted"];

  if ([v5 length] > 6)
  {
    v24 = v6;
    delegate = [(WPPairing *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v28[0] = @"WPPairingKeyName";
      v28[1] = @"WPPairingKeyPaired";
      v12 = v8;
      v29[0] = v8;
      v29[1] = v27;
      v28[2] = @"WPPairingKeyAdvertisingChannel";
      v28[3] = @"WPPairingKeyRSSI";
      v29[2] = v26;
      v29[3] = v7;
      v28[4] = @"WPPairingKeyDeviceTime";
      v28[5] = @"WPPairingKeyDeviceAddress";
      data = v9;
      v29[4] = v25;
      if (!v9)
      {
        data = [MEMORY[0x277CBEA90] data];
      }

      v29[5] = data;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
      delegate4 = [v17 mutableCopy];

      if (!v9)
      {
      }

      if (v10)
      {
        [delegate4 setObject:v10 forKeyedSubscript:@"WPPairingKeyStatusDecrypted"];
      }

      if (v11)
      {
        [delegate4 setObject:v11 forKeyedSubscript:@"WPPairingKeyAccessoryStatusDecrypted"];
      }

      delegate2 = [(WPPairing *)self delegate];
      v20 = [delegate4 copy];
      [delegate2 pairing:self foundDevice:v24 payload:v5 rssi:v7 peerInfo:v20];

      v6 = v24;
    }

    else
    {
      v12 = v8;
      delegate3 = [(WPPairing *)self delegate];
      v22 = objc_opt_respondsToSelector();

      v6 = v24;
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      delegate4 = [(WPPairing *)self delegate];
      delegate2 = [v24 UUIDString];
      [delegate4 pairing:self foundDevice:delegate2 payload:v5 rssi:v7];
    }

    goto LABEL_19;
  }

  v12 = v8;
  if (WPLogInitOnce != -1)
  {
    [WPPairing deviceDiscovered:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPPairing *)v13 deviceDiscovered:v5];
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPPairing *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPPairing *)self delegate];
    [delegate2 pairing:self failedToStartScanningWithError:startCopy];
  }
}

- (void)stopProximityPairingServiceScanning
{
  v3 = objc_opt_new();
  [v3 setClientType:7];
  if (WPLogInitOnce != -1)
  {
    [WPPairing stopProximityPairingServiceScanning];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_274327000, v4, OS_LOG_TYPE_DEFAULT, "ProximityPairing stop scanning", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = WPPairing;
  [(WPClient *)&v5 stopScanning:v3];
}

- (void)ignoreDeviceUntilNextUnlock:(id)unlock ignoreDevice:(BOOL)device
{
  unlockCopy = unlock;
  if (WPLogInitOnce != -1)
  {
    [WPPairing ignoreDeviceUntilNextUnlock:ignoreDevice:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPPairing ignoreDeviceUntilNextUnlock:v5 ignoreDevice:?];
  }
}

- (void)stateDidChange:(int64_t)change
{
  state = [(WPClient *)self state];
  v9.receiver = self;
  v9.super_class = WPPairing;
  [(WPClient *)&v9 stateDidChange:change];
  if ([(WPClient *)self state]!= state)
  {
    delegate = [(WPPairing *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(WPPairing *)self delegate];
      [delegate2 pairingDidUpdateState:self];
    }
  }
}

- (void)initWithDelegate:(unsigned __int8 *)a1 queue:(NSObject *)a2 machName:.cold.2(unsigned __int8 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Using allow screen off scanning for prox pairing: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 length];
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "ProximityPairing minimum advertisement data length expected: 7, received: %lu", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end