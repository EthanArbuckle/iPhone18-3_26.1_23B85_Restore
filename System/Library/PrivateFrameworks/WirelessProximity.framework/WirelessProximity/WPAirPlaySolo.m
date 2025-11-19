@interface WPAirPlaySolo
+ (id)puckTypeToString:(unsigned __int8)a3;
+ (unsigned)puckStringToType:(id)a3;
- (WPAirPlaySolo)init;
- (WPAirPlaySolo)initWithDelegate:(id)a3 queue:(id)a4;
- (WPAirPlaySoloDelegate)delegate;
- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)deviceDiscovered:(id)a3;
- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)peerTrackingAvailable;
- (void)peerTrackingFull;
- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4;
- (void)startConnectionlessAdvertisingWithData:(id)a3;
- (void)startConnectionlessScanningWithData:(id)a3;
- (void)startTrackingPeer:(id)a3 withData:(id)a4;
- (void)stateDidChange:(int64_t)a3;
- (void)stopConnectionlessAdvertising;
- (void)stopConnectionlessAdvertising:(id)a3;
- (void)stopConnectionlessScanningWithData:(id)a3;
- (void)stopTrackingPeer:(id)a3 withData:(id)a4;
@end

@implementation WPAirPlaySolo

- (WPAirPlaySolo)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  v7 = [(WPClient *)&v10 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
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

+ (unsigned)puckStringToType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WPPuckTypeAirPlaySoloSourcePresence"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"WPPuckTypeAirPlaySoloTargetPresence"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 28;
  }

  return v4;
}

+ (id)puckTypeToString:(unsigned __int8)a3
{
  if (a3 == 10)
  {
    return @"WPPuckTypeAirPlaySoloSourcePresence";
  }

  v3 = a3;
  if (a3 == 9)
  {
    return @"WPPuckTypeAirPlaySoloTargetPresence";
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"WPAirPlaySolo.m" lineNumber:102 description:{@"Unknown puck type %ld", v3}];

  return 0;
}

- (void)startConnectionlessAdvertisingWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WPPuckType"];
  v6 = [WPAirPlaySolo puckStringToType:v5];

  v7 = [WPAdvertisingRequest requestForClientType:v6];
  v8 = [v4 objectForKeyedSubscript:@"WPPuckTypeAirPlaySoloAdvertisingData"];
  [v7 setAdvertisingData:v8];

  v9 = [v4 objectForKeyedSubscript:@"WPAirPlaySoloAdvertisingMode"];
  v10 = [v4 objectForKeyedSubscript:@"WPPuckType"];

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

- (void)stopConnectionlessAdvertising:(id)a3
{
  v4 = [WPAdvertisingRequest requestForClientType:[WPAirPlaySolo puckStringToType:a3]];
  v5.receiver = self;
  v5.super_class = WPAirPlaySolo;
  [(WPClient *)&v5 stopAdvertising:v4];
}

- (void)startConnectionlessScanningWithData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"WPPuckType"];
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

- (void)stopConnectionlessScanningWithData:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"WPPuckType"];

  [v5 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v6)}];
  v7.receiver = self;
  v7.super_class = WPAirPlaySolo;
  [(WPClient *)&v7 stopScanning:v5];
}

- (void)startTrackingPeer:(id)a3 withData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 objectForKeyedSubscript:@"WPPuckType"];

  [v8 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v9)}];
  [v8 setPeerUUID:v7];

  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  [(WPClient *)&v10 startTrackingPeerWithRequest:v8];
}

- (void)stopTrackingPeer:(id)a3 withData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 objectForKeyedSubscript:@"WPPuckType"];

  [v8 setClientType:{+[WPAirPlaySolo puckStringToType:](WPAirPlaySolo, "puckStringToType:", v9)}];
  [v8 setPeerUUID:v7];

  v10.receiver = self;
  v10.super_class = WPAirPlaySolo;
  [(WPClient *)&v10 stopTrackingPeerWithRequest:v8];
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPAirPlaySolo;
  [(WPClient *)&v7 stateDidChange:a3];
  v4 = [(WPAirPlaySolo *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPAirPlaySolo *)self delegate];
    [v6 airPlaySoloDidUpdateState:self];
  }
}

- (void)advertisingFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  v5 = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPAirPlaySolo *)self delegate];
    [v7 airPlaySolo:self failedToStartAdvertisingWithError:v8];
  }
}

- (void)deviceDiscovered:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
    v8 = [v4 objectForKeyedSubscript:@"kDeviceChannel"];
    v9 = [v4 objectForKeyedSubscript:@"kDeviceRSSI"];
    v10 = [v4 objectForKeyedSubscript:@"kDevicePeripheralUUID"];
    v11 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
    v12 = [v4 objectForKeyedSubscript:@"kDeviceTime"];
    v13 = [v7 subdataWithRange:{4, objc_msgSend(v7, "length") - 4}];

    v21 = @"WPPuckTypeAirPlaySoloRSSI";
    v22 = @"WPPuckTypeAirPlaySoloAdvertisingData";
    v19 = v9;
    v26[0] = v9;
    v26[1] = v13;
    v23 = @"WPPuckTypeAirPlaySoloAdvertisingChannel";
    v14 = v8;
    if (!v8)
    {
      v14 = [MEMORY[0x277CBEB68] null];
    }

    v26[2] = v14;
    v24 = @"WPAirPlaySoloKeyDeviceAddress";
    v15 = v11;
    if (!v11)
    {
      v15 = [MEMORY[0x277CBEA90] data];
    }

    v25 = @"WPAirPlaySoloKeyDeviceTime";
    v26[3] = v15;
    v26[4] = v12;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
    if (v11)
    {
      if (v8)
      {
LABEL_8:
        v17 = [(WPAirPlaySolo *)self delegate];
        [v17 airPlaySolo:self foundDevice:v10 withData:v16];

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

- (void)scanningFailedToStart:(id)a3 ofType:(unsigned __int8)a4
{
  v8 = a3;
  v5 = [(WPAirPlaySolo *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WPAirPlaySolo *)self delegate];
    [v7 airPlaySolo:self failedToStartScanningWithError:v8];
  }
}

- (void)failedToStartTrackingPeer:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(WPAirPlaySolo *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WPAirPlaySolo *)self delegate];
    v10 = [v12 peerUUID];
    v11 = [v12 peerTrackingDictionary];
    [v9 airPlaySolo:self didStartTrackingPeer:v10 withData:v11 error:v6];
  }
}

- (void)peerTrackingFull
{
  v6.receiver = self;
  v6.super_class = WPAirPlaySolo;
  [(WPClient *)&v6 peerTrackingFull];
  v3 = [(WPAirPlaySolo *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WPAirPlaySolo *)self delegate];
    [v5 airplaySolo:self peerTrackingSlotsAvailable:0];
  }
}

- (void)peerTrackingAvailable
{
  v6.receiver = self;
  v6.super_class = WPAirPlaySolo;
  [(WPClient *)&v6 peerTrackingAvailable];
  v3 = [(WPAirPlaySolo *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WPAirPlaySolo *)self delegate];
    [v5 airplaySolo:self peerTrackingSlotsAvailable:1];
  }
}

- (WPAirPlaySoloDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end