@interface WPPairing
- (WPPairing)initWithDelegate:(id)a3 queue:(id)a4 machName:(id)a5;
- (WPPairingDelegate)delegate;
- (void)clearProximityPairingServiceDuplicates;
- (void)deviceDiscovered:(id)a3;
- (void)ignoreDeviceUntilNextUnlock:(id)a3 ignoreDevice:(BOOL)a4;
- (void)invalidate;
- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)startProximityPairingServiceScanningWithRSSI:(id)a3 duplicates:(BOOL)a4 scanMode:(int64_t)a5;
- (void)stateDidChange:(int64_t)a3;
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

- (WPPairing)initWithDelegate:(id)a3 queue:(id)a4 machName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    v12 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = WPPairing;
    v13 = [(WPClient *)&v24 initWithQueue:v9 machName:v10];
    v14 = v13;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, v8);
      v15 = [MEMORY[0x277CBEB58] set];
      ignoredDevices = v14->_ignoredDevices;
      v14->_ignoredDevices = v15;

      v14->_allowScreenOffScanning = 0;
      v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v18 = [v17 persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
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
    v12 = self;
  }

  return v12;
}

- (void)invalidate
{
  [(WPPairing *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPPairing;
  [(WPClient *)&v3 invalidate];
}

- (void)startProximityPairingServiceScanningWithRSSI:(id)a3 duplicates:(BOOL)a4 scanMode:(int64_t)a5
{
  v6 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = 300;
  if ((a5 - 1) < 2)
  {
    v9 = 60;
  }

  if (a5 == 3)
  {
    v10 = 40;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(WPClient *)self isBubbleTestClient];
  if (v11)
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
  [v13 setAllowDuplicates:v11 | v6];
  [v13 setClientType:7];
  if (v8)
  {
    [v13 setRssiThreshold:v8];
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

- (void)deviceDiscovered:(id)a3
{
  v29[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v6 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
  v7 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
  v8 = [v4 objectForKeyedSubscript:@"kDeviceName"];
  v27 = [v4 objectForKeyedSubscript:@"kDevicePaired"];
  v26 = [v4 objectForKeyedSubscript:@"kDeviceChannel"];
  v25 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
  v9 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v10 = [v4 objectForKeyedSubscript:@"kDeviceProxPairingStatusDecrypted"];
  v11 = [v4 objectForKeyedSubscript:@"kDeviceAccessoryStatusDecrypted"];

  if ([v5 length] > 6)
  {
    v24 = v6;
    v14 = [(WPPairing *)self delegate];
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
      v16 = v9;
      v29[4] = v25;
      if (!v9)
      {
        v16 = [MEMORY[0x277CBEA90] data];
      }

      v29[5] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
      v18 = [v17 mutableCopy];

      if (!v9)
      {
      }

      if (v10)
      {
        [v18 setObject:v10 forKeyedSubscript:@"WPPairingKeyStatusDecrypted"];
      }

      if (v11)
      {
        [v18 setObject:v11 forKeyedSubscript:@"WPPairingKeyAccessoryStatusDecrypted"];
      }

      v19 = [(WPPairing *)self delegate];
      v20 = [v18 copy];
      [v19 pairing:self foundDevice:v24 payload:v5 rssi:v7 peerInfo:v20];

      v6 = v24;
    }

    else
    {
      v12 = v8;
      v21 = [(WPPairing *)self delegate];
      v22 = objc_opt_respondsToSelector();

      v6 = v24;
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = [(WPPairing *)self delegate];
      v19 = [v24 UUIDString];
      [v18 pairing:self foundDevice:v19 payload:v5 rssi:v7];
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

- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  v5 = [(WPPairing *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPPairing *)self delegate];
    [v7 pairing:self failedToStartScanningWithError:v8];
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

- (void)ignoreDeviceUntilNextUnlock:(id)a3 ignoreDevice:(BOOL)a4
{
  v4 = a3;
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

- (void)stateDidChange:(int64_t)a3
{
  v5 = [(WPClient *)self state];
  v9.receiver = self;
  v9.super_class = WPPairing;
  [(WPClient *)&v9 stateDidChange:a3];
  if ([(WPClient *)self state]!= v5)
  {
    v6 = [(WPPairing *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WPPairing *)self delegate];
      [v8 pairingDidUpdateState:self];
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