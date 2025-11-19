@interface WPZoneTracker
- (WPZoneTracker)initWithDelegate:(id)a3 queue:(id)a4;
- (WPZoneTrackerDelegate)delegate;
- (id)description;
- (void)enteredZone:(id)a3 manufacturerData:(id)a4;
- (void)exitedZone:(id)a3;
- (void)failedToRegisterZones:(id)a3 withError:(id)a4;
- (void)fetchedCurrentlyTrackedZones:(id)a3;
- (void)getCurrentTrackedZones;
- (void)invalidate;
- (void)registerForZoneChangesMatching:(id)a3;
- (void)stateDidChange:(int64_t)a3;
- (void)unregisterAllZoneChanges;
- (void)unregisterForZoneChanges:(id)a3;
@end

@implementation WPZoneTracker

- (WPZoneTracker)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WPZoneTracker;
  v7 = [(WPClient *)&v10 initWithQueue:a4 machName:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_wantEntry = 1;
    v8->_wantExit = 1;
  }

  return v8;
}

- (void)invalidate
{
  [(WPZoneTracker *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = WPZoneTracker;
  [(WPClient *)&v3 invalidate];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = WPZoneTracker;
  v4 = [(WPClient *)&v9 description];
  v5 = [v3 stringWithString:v4];

  if ([(WPZoneTracker *)self wantExit])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(WPZoneTracker *)self wantExit])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@". Entry = %@, Exit = %@", v6, v7];

  return v5;
}

- (void)registerForZoneChangesMatching:(id)a3
{
  v4 = a3;
  [(WPZoneTracker *)self setWantEntry:1];
  [(WPZoneTracker *)self setWantExit:1];
  v5 = [v4 allKeys];
  v6 = [v5 containsObject:@"ZTZoneEntry"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"ZTZoneEntry"];
    -[WPZoneTracker setWantEntry:](self, "setWantEntry:", [v7 BOOLValue]);
  }

  v8 = [v4 allKeys];
  v9 = [v8 containsObject:@"ZTZoneExit"];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"ZTZoneExit"];
    -[WPZoneTracker setWantExit:](self, "setWantExit:", [v10 BOOLValue]);
  }

  v11 = objc_opt_new();
  [v11 setClientType:2];
  v16 = vdupq_n_s64(0x3C6uLL);
  v17 = 30;
  [v11 setScanningRates:&v16];
  v12 = MEMORY[0x277CBEB58];
  v13 = [v4 objectForKeyedSubscript:@"ZTZonesArray"];
  v14 = [v12 setWithArray:v13];
  [v11 setZones:v14];

  v15.receiver = self;
  v15.super_class = WPZoneTracker;
  [(WPClient *)&v15 startTrackingZone:v11];
}

- (void)unregisterForZoneChanges:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"ZTZonesArray"];
  v5.receiver = self;
  v5.super_class = WPZoneTracker;
  [(WPClient *)&v5 stopTrackingZones:v4];
}

- (void)unregisterAllZoneChanges
{
  v2.receiver = self;
  v2.super_class = WPZoneTracker;
  [(WPClient *)&v2 stopTrackingAllZones];
}

- (void)getCurrentTrackedZones
{
  v2.receiver = self;
  v2.super_class = WPZoneTracker;
  [(WPClient *)&v2 getAllTrackedZones];
}

- (void)enteredZone:(id)a3 manufacturerData:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(WPZoneTracker *)self wantEntry])
  {
    v8 = [(WPZoneTracker *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(WPZoneTracker *)self delegate];
      [v10 zoneTracker:self enteredZone:v6];
    }
  }

  if ([(WPZoneTracker *)self wantEntry])
  {
    v11 = [(WPZoneTracker *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v46 = 0uLL;
      v13 = [v7 bytes];
      v14 = [v7 length];
      if (v14 < 0x10 || (v46 = *v13, v14 < 0x12))
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        v15 = __rev16(*(v13 + 16));
        if (v14 < 0x14)
        {
          v16 = 0;
        }

        else
        {
          v16 = __rev16(*(v13 + 18));
          if (v14 != 20)
          {
            v17 = *(v13 + 20);
LABEL_13:
            v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v46 length:16];
            if (v18)
            {
              if (WPLogInitOnce != -1)
              {
                [WPZoneTracker enteredZone:manufacturerData:];
              }

              v19 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413570;
                v35 = v18;
                v36 = 2048;
                v37 = v15;
                v38 = 2048;
                v39 = v15;
                v40 = 2048;
                v41 = v16;
                v42 = 2048;
                v43 = v16;
                v44 = 1024;
                v45 = v17;
                _os_log_impl(&dword_274327000, v19, OS_LOG_TYPE_DEFAULT, "Entered zone %@ with major %ld (0x%lx), minor %ld (0x%lx), tx (%d)", buf, 0x3Au);
              }

              v33[0] = v18;
              v32[0] = @"WPZoneTrackerKeyZone";
              v32[1] = @"WPZoneTrackerKeyMajor";
              v20 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
              v33[1] = v20;
              v32[2] = @"WPZoneTrackerKeyMinor";
              v21 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
              v33[2] = v21;
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

              if (WPLogInitOnce != -1)
              {
                [WPZoneTracker enteredZone:manufacturerData:];
              }

              v23 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v35 = v22;
                _os_log_impl(&dword_274327000, v23, OS_LOG_TYPE_DEFAULT, "dicToSend: %@", buf, 0xCu);
              }

              v24 = [(WPZoneTracker *)self delegate];
              v31[0] = v6;
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{v15, @"WPZoneTrackerKeyZone", @"WPZoneTrackerKeyMajor"}];
              v31[1] = v25;
              v30[2] = @"WPZoneTrackerKeyMinor";
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
              v31[2] = v26;
              v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
              [v24 zoneTracker:self enteredZoneInfo:v27];
            }

            else
            {
              if (WPLogInitOnce != -1)
              {
                [WPZoneTracker enteredZone:manufacturerData:];
              }

              v28 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
              {
                [WPZoneTracker enteredZone:v28 manufacturerData:?];
              }
            }

            goto LABEL_28;
          }
        }
      }

      v17 = 0;
      goto LABEL_13;
    }
  }

LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)exitedZone:(id)a3
{
  v7 = a3;
  if ([(WPZoneTracker *)self wantExit])
  {
    v4 = [(WPZoneTracker *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(WPZoneTracker *)self delegate];
      [v6 zoneTracker:self exitedZone:v7];
    }
  }
}

- (void)failedToRegisterZones:(id)a3 withError:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WPZoneTracker *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WPZoneTracker *)self delegate];
    v13 = @"ZTZonesArray";
    v14[0] = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v10 zoneTracker:self didFailToRegisterZones:v11 withError:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchedCurrentlyTrackedZones:(id)a3
{
  v7 = a3;
  v4 = [(WPZoneTracker *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPZoneTracker *)self delegate];
    [v6 infoForCurrentlyTrackedZones:v7];
  }
}

- (void)stateDidChange:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = WPZoneTracker;
  [(WPClient *)&v7 stateDidChange:a3];
  v4 = [(WPZoneTracker *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WPZoneTracker *)self delegate];
    [v6 zoneTrackerDidUpdateState:self];
  }
}

- (WPZoneTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end