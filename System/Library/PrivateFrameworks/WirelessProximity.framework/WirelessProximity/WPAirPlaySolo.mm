@interface WPAirPlaySolo
+ (id)puckTypeToString:(unsigned __int8)string;
+ (unsigned)puckStringToType:(id)type;
- (WPAirPlaySolo)init;
- (WPAirPlaySolo)initWithDelegate:(id)delegate queue:(id)queue;
- (WPAirPlaySoloDelegate)delegate;
- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)deviceDiscovered:(id)discovered;
- (void)failedToStartTrackingPeer:(id)peer error:(id)error;
- (void)invalidate;
- (void)peerTrackingAvailable;
- (void)peerTrackingFull;
- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type;
- (void)startConnectionlessAdvertisingWithData:(id)data;
- (void)startConnectionlessScanningWithData:(id)data;
- (void)startTrackingPeer:(id)peer withData:(id)data;
- (void)stateDidChange:(int64_t)change;
- (void)stopConnectionlessAdvertising;
- (void)stopConnectionlessAdvertising:(id)advertising;
- (void)stopConnectionlessScanningWithData:(id)data;
- (void)stopTrackingPeer:(id)peer withData:(id)data;
@end

@implementation WPAirPlaySolo

- (WPAirPlaySolo)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  v7 = [(WPClient *)&v10 initWithQueue:queue machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (WPAirPlaySolo)init
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
  [(WPAirPlaySolo *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPAirPlaySolo;
  [(WPClient *)&v3 invalidate];
}

+ (unsigned)puckStringToType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"WPPuckTypeAirPlaySoloSourcePresence"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"WPPuckTypeAirPlaySoloTargetPresence"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 28;
  }

  return v4;
}

+ (id)puckTypeToString:(unsigned __int8)string
{
  if (string == 10)
  {
    return @"WPPuckTypeAirPlaySoloSourcePresence";
  }

  stringCopy = string;
  if (string == 9)
  {
    return @"WPPuckTypeAirPlaySoloTargetPresence";
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WPAirPlaySolo.m" lineNumber:102 description:{@"Unknown puck type %ld", stringCopy}];

  return 0;
}

- (void)startConnectionlessAdvertisingWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"WPPuckType"];
  v6 = [WPAirPlaySolo puckStringToType:v5];

  v7 = [WPAdvertisingRequest requestForClientType:v6];
  v8 = [dataCopy objectForKeyedSubscript:@"WPPuckTypeAirPlaySoloAdvertisingData"];
  [v7 setAdvertisingData:v8];

  v9 = [dataCopy objectForKeyedSubscript:@"WPAirPlaySoloAdvertisingMode"];
  v10 = [dataCopy objectForKeyedSubscript:@"WPPuckType"];

  if ([v10 isEqualToString:@"WPPuckTypeAirPlaySoloSourcePresence"] && v9 && objc_msgSend(v9, "intValue") == 48)
  {
    [v7 setAdvertisingRate:48];
  }

  v11.receiver = self;
  v11.super_class = WPAirPlaySolo;
  [(WPClient *)&v11 startAdvertising:v7];
}

- (void)stopConnectionlessAdvertising
{
  v3 = [WPAdvertisingRequest requestForClientType:10];
  v6.receiver = self;
  v6.super_class = WPAirPlaySolo;
  [(WPClient *)&v6 stopAdvertising:v3];
  v4 = [WPAdvertisingRequest requestForClientType:9];
  v5.receiver = self;
  v5.super_class = WPAirPlaySolo;
  [(WPClient *)&v5 stopAdvertising:v4];
}

- (void)stopConnectionlessAdvertising:(id)advertising
{
  v4 = [WPAdvertisingRequest requestForClientType:[WPAirPlaySolo puckStringToType:advertising]];
  v5.receiver = self;
  v5.super_class = WPAirPlaySolo;
  [(WPClient *)&v5 stopAdvertising:v4];
}

- (void)startConnectionlessScanningWithData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"WPPuckType"];
  v5 = [WPAirPlaySolo puckStringToType:v4];

  v6 = objc_opt_new();
  v7 = v6;
  if (v5 == 10)
  {
    v8 = 966;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  [v6 setAllowDuplicates:1];
  v10[0] = 300;
  v10[1] = v8;
  v10[2] = 30;
  [v7 setScanningRates:v10];
  [v7 setClientType:v5];
  v9.receiver = self;
  v9.super_class = WPAirPlaySolo;
  [(WPClient *)&v9 startScanning:v7];
}

- (void)stopConnectionlessScanningWithData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_new();
  v6 = [dataCopy objectForKeyedSubscript:@"WPPuckType"];

  [v5 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v6)}];
  v7.receiver = self;
  v7.super_class = WPAirPlaySolo;
  [(WPClient *)&v7 stopScanning:v5];
}

- (void)startTrackingPeer:(id)peer withData:(id)data
{
  dataCopy = data;
  peerCopy = peer;
  v8 = objc_opt_new();
  v9 = [dataCopy objectForKeyedSubscript:@"WPPuckType"];

  [v8 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v9)}];
  [v8 setPeerUUID:peerCopy];

  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  [(WPClient *)&v10 startTrackingPeerWithRequest:v8];
}

- (void)stopTrackingPeer:(id)peer withData:(id)data
{
  dataCopy = data;
  peerCopy = peer;
  v8 = objc_opt_new();
  v9 = [dataCopy objectForKeyedSubscript:@"WPPuckType"];

  [v8 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v9)}];
  [v8 setPeerUUID:peerCopy];

  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  [(WPClient *)&v10 stopTrackingPeerWithRequest:v8];
}

- (void)stateDidChange:(int64_t)change
{
  v7.receiver = self;
  v7.super_class = WPAirPlaySolo;
  [(WPClient *)&v7 stateDidChange:change];
  delegate = [(WPAirPlaySolo *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    [delegate2 airPlaySoloDidUpdateState:self];
  }
}

- (void)advertisingFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    [delegate2 airPlaySolo:self failedToStartAdvertisingWithError:startCopy];
  }
}

- (void)deviceDiscovered:(id)discovered
{
  v26[5] = *MEMORY[0x277D85DE8];
  discoveredCopy = discovered;
  delegate = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAdvertisingData"];
    v8 = [discoveredCopy objectForKeyedSubscript:@"kDeviceChannel"];
    v9 = [discoveredCopy objectForKeyedSubscript:@"kDeviceRSSI"];
    v10 = [discoveredCopy objectForKeyedSubscript:@"kDevicePeripheralUUID"];
    v11 = [discoveredCopy objectForKeyedSubscript:@"kDeviceAddress"];
    v12 = [discoveredCopy objectForKeyedSubscript:@"kDeviceTime"];
    v13 = [v7 subdataWithRange:{4, objc_msgSend(v7, "length") - 4}];

    v21 = @"WPPuckTypeAirPlaySoloRSSI";
    v22 = @"WPPuckTypeAirPlaySoloAdvertisingData";
    v19 = v9;
    v26[0] = v9;
    v26[1] = v13;
    v23 = @"WPPuckTypeAirPlaySoloAdvertisingChannel";
    null = v8;
    if (!v8)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v26[2] = null;
    v24 = @"WPAirPlaySoloKeyDeviceAddress";
    data = v11;
    if (!v11)
    {
      data = [MEMORY[0x277CBEA90] data];
    }

    v25 = @"WPAirPlaySoloKeyDeviceTime";
    v26[3] = data;
    v26[4] = v12;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
    if (v11)
    {
      if (v8)
      {
LABEL_8:
        delegate2 = [(WPAirPlaySolo *)self delegate];
        [delegate2 airPlaySolo:self foundDevice:v10 withData:v16];

        goto LABEL_9;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)scanningFailedToStart:(id)start ofType:(unsigned __int8)type
{
  startCopy = start;
  delegate = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    [delegate2 airPlaySolo:self failedToStartScanningWithError:startCopy];
  }
}

- (void)failedToStartTrackingPeer:(id)peer error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  delegate = [(WPAirPlaySolo *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    peerUUID = [peerCopy peerUUID];
    peerTrackingDictionary = [peerCopy peerTrackingDictionary];
    [delegate2 airPlaySolo:self didStartTrackingPeer:peerUUID withData:peerTrackingDictionary error:errorCopy];
  }
}

- (void)peerTrackingFull
{
  v6.receiver = self;
  v6.super_class = WPAirPlaySolo;
  [(WPClient *)&v6 peerTrackingFull];
  delegate = [(WPAirPlaySolo *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    [delegate2 airplaySolo:self peerTrackingSlotsAvailable:0];
  }
}

- (void)peerTrackingAvailable
{
  v6.receiver = self;
  v6.super_class = WPAirPlaySolo;
  [(WPClient *)&v6 peerTrackingAvailable];
  delegate = [(WPAirPlaySolo *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WPAirPlaySolo *)self delegate];
    [delegate2 airplaySolo:self peerTrackingSlotsAvailable:1];
  }
}

- (WPAirPlaySoloDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end