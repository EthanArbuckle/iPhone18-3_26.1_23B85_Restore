@interface WPAWDL
+ (id)generateDataFromEmails:(id)emails;
+ (id)hashEmail:(id)email;
- (WPAWDL)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name;
- (WPAWDLDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)deviceDiscovered:(id)discovered;
- (void)invalidate;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)startConnectionlessAWDLServiceAdvertisingWithData:(id)data;
- (void)startConnectionlessAWDLServiceScanning;
- (void)stateDidChange:(int64_t)change;
- (void)stopConnectionlessAWDLServiceAdvertising;
- (void)stopConnectionlessAWDLServiceScanning;
- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update;
@end

@implementation WPAWDL

- (WPAWDL)initWithDelegate:(id)delegate queue:(id)queue machName:(id)name
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = WPAWDL;
  v9 = [(WPClient *)&v22 initWithQueue:queue machName:name];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_useSmallerAirDrop = 0;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
    v13 = [v12 objectForKeyedSubscript:@"WIPROX"];

    v14 = [v13 objectForKeyedSubscript:@"UseSmallerAirDrop"];
    v15 = v14;
    if (v14)
    {
      v10->_useSmallerAirDrop = [v14 BOOLValue];
      if (WPLogInitOnce != -1)
      {
        [WPAWDL initWithDelegate:queue:machName:];
      }

      v16 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPAWDL initWithDelegate:v16 queue:? machName:?];
      }
    }

    v17 = [v13 objectForKeyedSubscript:@"AirDropADVTimer"];
    v18 = v17;
    if (v17)
    {
      [v17 floatValue];
      *&AdvertiseTimer = v19;
      if (WPLogInitOnce != -1)
      {
        [WPAWDL initWithDelegate:queue:machName:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPAWDL initWithDelegate:v20 queue:? machName:?];
      }
    }
  }

  return v10;
}

- (void)invalidate
{
  [(WPAWDL *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPAWDL;
  [(WPClient *)&v3 invalidate];
}

+ (id)hashEmail:(id)email
{
  v11 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  if (!emailCopy)
  {
    [(WPAWDL *)a2 hashEmail:self];
  }

  v6 = [emailCopy dataUsingEncoding:{4, 0, 0, 0, 0}];
  CC_SHA256([v6 bytes], objc_msgSend(v6, "length"), &v10);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)generateDataFromEmails:(id)emails
{
  v21 = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  if (!emailsCopy)
  {
    [(WPAWDL *)a2 generateDataFromEmails:self];
  }

  v20 = 0;
  v19 = 0;
  v18 = 1;
  if ([emailsCopy count] > 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = [emailsCopy count];
    if (v6 < 1)
    {
      goto LABEL_12;
    }
  }

  v7 = 0;
  v8 = v6;
  v9 = &v19 + 2;
  do
  {
    v10 = [emailsCopy objectAtIndexedSubscript:v7];
    if (v10)
    {
      null = [MEMORY[0x277CBEB68] null];
      v12 = [v10 isEqual:null];

      if ((v12 & 1) == 0)
      {
        v13 = [WPAWDL hashEmail:v10];
        bytes = [v13 bytes];
        *(v9 - 2) = *bytes;
        *(v9 - 1) = bytes[1];
        *v9 = bytes[2];
      }
    }

    ++v7;
    v9 += 3;
  }

  while (v8 != v7);
LABEL_12:
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:10];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)startConnectionlessAWDLServiceAdvertisingWithData:(id)data
{
  v22[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] < 0x17)
  {
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    v9 = 0;
    if (![(WPAWDL *)self useSmallerAirDrop])
    {
      v19[0] = 0;
      v9 = 8;
    }

    bytes = [dataCopy bytes];
    if (![(WPAWDL *)self useSmallerAirDrop])
    {
      *(v19 + v9) = *bytes;
      v9 |= 1u;
    }

    v11 = v19 + v9;
    *v11 = bytes[1];
    v11[1] = bytes[2];
    v11[2] = bytes[3];
    v11[3] = bytes[4];
    v11[4] = bytes[5];
    v11[5] = bytes[6];
    v11[6] = bytes[7];
    v12 = v9 + 8;
    v11[7] = bytes[8];
    if (![(WPAWDL *)self useSmallerAirDrop])
    {
      *(v19 + v12) = bytes[9];
      LODWORD(v12) = v9 + 9;
    }

    v8 = [WPAdvertisingRequest requestForClientType:5];
    [v8 setAdvertisingRate:48];
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:v12];
    [v8 setAdvertisingData:v13];

    [v8 setUpdateTime:*&AdvertiseTimer];
    if (WPLogInitOnce != -1)
    {
      [WPAWDL startConnectionlessAWDLServiceAdvertisingWithData:];
    }

    v14 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_DEFAULT, "AWDL start advertising with data: %{public}@", buf, 0xCu);
    }

    v16.receiver = self;
    v16.super_class = WPAWDL;
    [(WPClient *)&v16 startAdvertising:v8];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPAWDL startConnectionlessAWDLServiceAdvertisingWithData:];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPAWDL *)v5 startConnectionlessAWDLServiceAdvertisingWithData:dataCopy];
    }

    v6 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"WirelessProximity can't start advertising at this time.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [v6 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v7];

    [(WPAWDL *)self advertisingFailedToStart:v8 ofType:5];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertisingRequest:(id)request withUpdate:(id)update
{
  v11 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  updateCopy = update;
  [requestCopy setUpdateTime:0.0];
  [requestCopy setAdvertisingRate:290];
  if (WPLogInitOnce != -1)
  {
    [WPAWDL updateAdvertisingRequest:withUpdate:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = requestCopy;
    _os_log_impl(&dword_274327000, v7, OS_LOG_TYPE_DEFAULT, "AWDL update advertising with data: %{public}@", &v9, 0xCu);
  }

  updateCopy[2](updateCopy, requestCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopConnectionlessAWDLServiceAdvertising
{
  v3 = [WPAdvertisingRequest requestForClientType:5];
  v4.receiver = self;
  v4.super_class = WPAWDL;
  [(WPClient *)&v4 stopAdvertising:v3];
}

- (void)startConnectionlessAWDLServiceScanning
{
  v3 = objc_opt_new();
  [v3 setClientType:5];
  v5 = xmmword_27435CEA0;
  v6 = 30;
  [v3 setScanningRates:&v5];
  [v3 setRssiThreshold:&unk_28835C6F0];
  v4.receiver = self;
  v4.super_class = WPAWDL;
  [(WPClient *)&v4 startScanning:v3];
}

- (void)stopConnectionlessAWDLServiceScanning
{
  v3 = objc_opt_new();
  [v3 setClientType:5];
  v4.receiver = self;
  v4.super_class = WPAWDL;
  [(WPClient *)&v4 stopScanning:v3];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPAWDL;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPAWDL *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPAWDL *)self delegate];
    [delegate2 awdlDidUpdateState:self];
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPAWDL *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPAWDL *)self delegate];
    [delegate2 awdl:self failedToStartAdvertisingWithError:startCopy];
  }
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPAWDL *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPAWDL *)self delegate];
    [delegate2 awdl:self failedToStartScanningWithError:startCopy];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  v22 = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  v5 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v6 = [v5 length];
  if (v6 >= 22)
  {
    v7 = [v5 subdataWithRange:{12, 10}];
LABEL_5:
    v9 = v7;

    v5 = v9;
    delegate = [(WPAWDL *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(WPAWDL *)self delegate];
      [delegate2 awdl:self foundDevice:v5];
    }

    delegate3 = [(WPAWDL *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
      delegate4 = [(WPAWDL *)self delegate];
      [delegate4 awdl:self foundDevice:v5 rssi:v15];
    }

    goto LABEL_13;
  }

  v8 = v6;
  if (v6 >= 8)
  {
    v19 = 1;
    v20 = *[v5 bytes];
    v21 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v19 length:10];
    goto LABEL_5;
  }

  if (WPLogInitOnce != -1)
  {
    [WPAWDL deviceDiscovered:];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [(WPAWDL *)v8 deviceDiscovered:v17];
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (WPAWDLDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(unsigned __int8 *)a1 queue:(NSObject *)a2 machName:.cold.2(unsigned __int8 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_274327000, a2, OS_LOG_TYPE_DEBUG, "Using custom (smaller) AirDrop: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:(os_log_t)log queue:machName:.cold.4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = AdvertiseTimer;
  _os_log_debug_impl(&dword_274327000, log, OS_LOG_TYPE_DEBUG, "Using custom AirDrop aggressive advertising timer of %f seconds", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)hashEmail:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WPAWDL.m" lineNumber:91 description:@"Invalid email"];
}

+ (void)generateDataFromEmails:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WPAWDL.m" lineNumber:104 description:@"emails not valid"];
}

- (void)startConnectionlessAWDLServiceAdvertisingWithData:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 length];
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "Adv payload length is too big: %lu", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceDiscovered:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_274327000, a2, OS_LOG_TYPE_ERROR, "AWDL: Minimum advertisement data length expected: 8, received: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end