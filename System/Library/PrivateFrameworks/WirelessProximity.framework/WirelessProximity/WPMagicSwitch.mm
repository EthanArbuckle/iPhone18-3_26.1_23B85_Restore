@interface WPMagicSwitch
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)dutyCycleToScanningRates:(SEL)rates;
- (WPMagicSwitch)initWithDelegate:(id)delegate queue:(id)queue;
- (WPMagicSwitchDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error;
- (void)deviceDiscovered:(id)discovered;
- (void)invalidate;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)startAdvertisingWithData:(id)data;
- (void)startScanningWithData:(id)data;
- (void)stateDidChange:(int64_t)change;
- (void)stopAdvertising;
- (void)stopScanning;
@end

@implementation WPMagicSwitch

- (WPMagicSwitch)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WPMagicSwitch;
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
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 30;
  if (a4 == 2)
  {
    v5 = xmmword_27435CF50;
    goto LABEL_5;
  }

  if (!a4)
  {
    v5 = xmmword_27435CF60;
LABEL_5:
    *&retstr->var0 = v5;
    return self;
  }

  selfCopy = self;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:rates object:selfCopy file:@"WPMagicSwitch.m" lineNumber:51 description:@"Unknown duty cycle type"];

  return self;
}

- (void)invalidate
{
  [(WPMagicSwitch *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPMagicSwitch;
  [(WPClient *)&v3 invalidate];
}

- (void)startScanningWithData:(id)data
{
  v36[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchScanBlobData"];
  v6 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchScanMaskData"];
  v7 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchScanDutyCycle"];
  v8 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchScanPeers"];

  if ([v5 length] <= 0x16 && objc_msgSend(v6, "length") <= 0x16 && (objc_msgSend(v7, "integerValue") & 0x8000000000000000) == 0 && objc_msgSend(v7, "integerValue") < 3)
  {
    v12 = objc_opt_new();
    -[WPMagicSwitch dutyCycleToScanningRates:](self, "dutyCycleToScanningRates:", [v7 integerValue]);
    v27 = v29;
    v28 = v30;
    [v12 setScanningRates:&v27];
    [v12 setClientType:11];
    [v12 setPeers:v8];
    if (v5 || !v6)
    {
      if (!v5 || !v6 || (v25 = [v6 length], v25 <= objc_msgSend(v5, "length")))
      {
        [v12 setBlobValue:v5];
        [v12 setMaskValue:v6];
        v26.receiver = self;
        v26.super_class = WPMagicSwitch;
        [(WPClient *)&v26 startScanning:v12];
        goto LABEL_8;
      }

      v16 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, Mask data length: %lu > Blob data length: %lu", objc_msgSend(v6, "length"), objc_msgSend(v5, "length")];
      v32 = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v32;
      v20 = &v31;
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, Blob Data: %@ is null but Mask data: %@ is not null", 0, v6];
      v34 = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v34;
      v20 = &v33;
    }

    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    delegate4 = [v16 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v21];

    delegate = [(WPMagicSwitch *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(WPMagicSwitch *)self delegate];
      [delegate2 magicSwitch:self failedToStartScanningWithError:delegate4];
    }

    goto LABEL_7;
  }

  v9 = MEMORY[0x277CCA9B8];
  v35 = *MEMORY[0x277CCA450];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, Blob data: %@, Mask data: %@, Duty Cycle: %@", v5, v6, v7];
  v36[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v12 = [v9 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v11];

  delegate3 = [(WPMagicSwitch *)self delegate];
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate4 = [(WPMagicSwitch *)self delegate];
    [delegate4 magicSwitch:self failedToStartScanningWithError:v12];
LABEL_7:
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning
{
  v3 = objc_opt_new();
  [v3 setClientType:11];
  v4.receiver = self;
  v4.super_class = WPMagicSwitch;
  [(WPClient *)&v4 stopScanning:v3];
}

- (void)startAdvertisingWithData:(id)data
{
  v26[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy count])
  {
    v5 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchAdvertisingData"];
    delegate4 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchAdvertiseTypeInterval"];
    if (!v5 || [v5 length] > 0x16 || objc_msgSend(delegate4, "integerValue") < 0 || objc_msgSend(delegate4, "integerValue") >= 3)
    {
      v7 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, adv data: %@, adv Interval: %@", v5, delegate4];
      v24 = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v10 = [v7 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v9];

      delegate = [(WPMagicSwitch *)self delegate];
      LOBYTE(v8) = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(WPMagicSwitch *)self delegate];
        [delegate2 magicSwitch:self failedToStartAdvertisingWithError:v10];
      }

      goto LABEL_8;
    }

    v10 = [WPAdvertisingRequest requestForClientType:11];
    [v10 setAdvertisingData:v5];
    v18 = [dataCopy objectForKeyedSubscript:@"WPMagicSwitchAdvertiseTypeInterval"];
    integerValue = [v18 integerValue];

    [v10 setConnectable:1];
    [v10 setStopOnAdvertisingAddressChange:1];
    if (integerValue == 2)
    {
      v20 = v10;
      v21 = 1636;
    }

    else if (integerValue == 1)
    {
      v20 = v10;
      v21 = 48;
    }

    else
    {
      if (integerValue)
      {
        [MEMORY[0x277CBEAD8] raise:@"Invalid Advertising Rate" format:@"An invalid advertising rate was provided to WPMagicSwitch"];
        goto LABEL_21;
      }

      v20 = v10;
      v21 = 290;
    }

    [v20 setAdvertisingRate:v21];
LABEL_21:
    v22.receiver = self;
    v22.super_class = WPMagicSwitch;
    [(WPClient *)&v22 startAdvertising:v10];
LABEL_8:

LABEL_11:
    goto LABEL_12;
  }

  v13 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277CCA450];
  dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data provided, Dictionary: %@", dataCopy];
  v26[0] = dataCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v5 = [v13 errorWithDomain:@"WPErrorDomain" code:5 userInfo:v15];

  delegate3 = [(WPMagicSwitch *)self delegate];
  LOBYTE(dataCopy) = objc_opt_respondsToSelector();

  if (dataCopy)
  {
    delegate4 = [(WPMagicSwitch *)self delegate];
    [delegate4 magicSwitch:self failedToStartAdvertisingWithError:v5];
    goto LABEL_11;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising
{
  v3 = [WPAdvertisingRequest requestForClientType:11];
  v4.receiver = self;
  v4.super_class = WPMagicSwitch;
  [(WPClient *)&v4 stopAdvertising:v3];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPMagicSwitch;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPMagicSwitch *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPMagicSwitch *)self delegate];
    [delegate2 magicSwitchDidUpdateState:self];
  }
}

- (void)advertisingStoppedOfType:(unsigned __int8)type withError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPMagicSwitch advertisingStoppedOfType:withError:];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = errorCopy;
    _os_log_impl(&dword_274327000, v6, OS_LOG_TYPE_DEFAULT, "MagicSwitch advertising stopped with error: %@", &v16, 0xCu);
  }

  if (errorCopy)
  {
    if ([errorCopy code] == 28)
    {
      delegate = [(WPMagicSwitch *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        if (WPLogInitOnce != -1)
        {
          [WPMagicSwitch advertisingStoppedOfType:withError:];
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          localizedDescription = [errorCopy localizedDescription];
          v16 = 138412290;
          v17 = localizedDescription;
          _os_log_impl(&dword_274327000, v10, OS_LOG_TYPE_DEFAULT, "[Privacy] MagicSwitch advertising stopped with error: %@", &v16, 0xCu);
        }

        delegate2 = [(WPMagicSwitch *)self delegate];
        [delegate2 magicSwitchStoppedAdvertising:self withError:errorCopy];
        goto LABEL_15;
      }
    }
  }

  else
  {
    delegate3 = [(WPMagicSwitch *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(WPMagicSwitch *)self delegate];
      [delegate2 magicSwitchStoppedAdvertising:self];
LABEL_15:
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPMagicSwitch *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPMagicSwitch *)self delegate];
    [delegate2 magicSwitch:self failedToStartAdvertisingWithError:startCopy];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  v14[1] = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  delegate = [(WPMagicSwitch *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
    v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
    v9 = [v8 subdataWithRange:{4, objc_msgSend(v8, "length") - 4}];

    delegate2 = [(WPMagicSwitch *)self delegate];
    v13 = @"WPMagicSwitchAdvertisingData";
    v14[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [delegate2 magicSwitch:self foundDevice:v7 withData:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPMagicSwitch *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPMagicSwitch *)self delegate];
    [delegate2 magicSwitch:self failedToStartScanningWithError:startCopy];
  }
}

- (WPMagicSwitchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end