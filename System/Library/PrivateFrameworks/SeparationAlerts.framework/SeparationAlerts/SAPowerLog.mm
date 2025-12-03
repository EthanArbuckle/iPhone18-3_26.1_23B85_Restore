@interface SAPowerLog
- (SAPowerLog)initWithClock:(id)clock isReplay:(BOOL)replay;
- (void)addClient:(id)client;
- (void)addMonitoredDevice:(id)device;
- (void)increaseBTScanCount;
- (void)increaseGeofenceCount;
- (void)increaseGpsLocationRequestCount;
- (void)increaseSeparationAlertsCount:(unint64_t)count;
- (void)increaseWifiLocationRequestCount;
- (void)ingestTAEvent:(id)event;
- (void)removeClient:(id)client;
- (void)resetStatistics;
- (void)sendPowerLog;
@end

@implementation SAPowerLog

- (SAPowerLog)initWithClock:(id)clock isReplay:(BOOL)replay
{
  clockCopy = clock;
  v12.receiver = self;
  v12.super_class = SAPowerLog;
  v8 = [(SAPowerLog *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    monitoredDevices = v8->_monitoredDevices;
    v8->_monitoredDevices = v9;

    objc_storeStrong(&v8->_clock, clock);
    v8->_isReplay = replay;
    [(SAPowerLog *)v8 resetStatistics];
  }

  return v8;
}

- (void)resetStatistics
{
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  [(SAPowerLog *)self setStartTimestamp:getCurrentTime];

  [(SAPowerLog *)self setVisitCount:0];
  [(SAPowerLog *)self setTotalVisitDuration:0.0];
  [(SAPowerLog *)self setBtScanCount:0];
  [(SAPowerLog *)self setGeofenceCount:0];
  [(SAPowerLog *)self setGpsLocationRequestCount:0];
  [(SAPowerLog *)self setWifiLocationRequestCount:0];
  [(SAPowerLog *)self setSeparationAlertsCount:0];
  monitoredDevices = [(SAPowerLog *)self monitoredDevices];
  [monitoredDevices removeAllObjects];
}

- (void)sendPowerLog
{
  v28[9] = *MEMORY[0x277D85DE8];
  if (!self->_isReplay)
  {
    v27[0] = @"timestamp";
    v3 = MEMORY[0x277CCABB0];
    startTimestamp = [(SAPowerLog *)self startTimestamp];
    [startTimestamp timeIntervalSinceReferenceDate];
    v19 = [v3 numberWithDouble:?];
    v28[0] = v19;
    v27[1] = @"NumberOfVisits";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog visitCount](self, "visitCount")}];
    v28[1] = v18;
    v27[2] = @"DurationOfVisits";
    v4 = MEMORY[0x277CCABB0];
    [(SAPowerLog *)self totalVisitDuration];
    v17 = [v4 numberWithDouble:?];
    v28[2] = v17;
    v27[3] = @"TotalGeoFence";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog geofenceCount](self, "geofenceCount")}];
    v28[3] = v5;
    v27[4] = @"BTScanCount";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog btScanCount](self, "btScanCount")}];
    v28[4] = v6;
    v27[5] = @"Notifications";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog separationAlertsCount](self, "separationAlertsCount")}];
    v28[5] = v7;
    v27[6] = @"DevicesMonitored";
    v8 = MEMORY[0x277CCABB0];
    monitoredDevices = [(SAPowerLog *)self monitoredDevices];
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(monitoredDevices, "count")}];
    v28[6] = v10;
    v27[7] = @"GPSAttribution";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog gpsLocationRequestCount](self, "gpsLocationRequestCount")}];
    v28[7] = v11;
    v27[8] = @"WifiScanCount";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAPowerLog wifiLocationRequestCount](self, "wifiLocationRequestCount")}];
    v28[8] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];

    v14 = v13;
    v15 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2113;
      v26 = v14;
      _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa submitting PowerLog event, data:%{private}@}", buf, 0x1Cu);
    }

    PLLogRegisteredEvent();
    CFRelease(v14);
    CFRelease(@"SeparationAlert");
    [(SAPowerLog *)self resetStatistics];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)increaseBTScanCount
{
  v3 = [(SAPowerLog *)self btScanCount]+ 1;

  [(SAPowerLog *)self setBtScanCount:v3];
}

- (void)increaseGeofenceCount
{
  v3 = [(SAPowerLog *)self geofenceCount]+ 1;

  [(SAPowerLog *)self setGeofenceCount:v3];
}

- (void)increaseGpsLocationRequestCount
{
  v3 = [(SAPowerLog *)self gpsLocationRequestCount]+ 1;

  [(SAPowerLog *)self setGpsLocationRequestCount:v3];
}

- (void)increaseWifiLocationRequestCount
{
  v3 = [(SAPowerLog *)self wifiLocationRequestCount]+ 1;

  [(SAPowerLog *)self setWifiLocationRequestCount:v3];
}

- (void)increaseSeparationAlertsCount:(unint64_t)count
{
  v4 = [(SAPowerLog *)self separationAlertsCount]+ count;

  [(SAPowerLog *)self setSeparationAlertsCount:v4];
}

- (void)addMonitoredDevice:(id)device
{
  deviceCopy = device;
  monitoredDevices = [(SAPowerLog *)self monitoredDevices];
  [monitoredDevices addObject:deviceCopy];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SAPowerLog *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SAPowerLog *)self clients];
  [clients removeObject:clientCopy];
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = eventCopy;
  if (isKindOfClass)
  {
    v6 = eventCopy;
    if ([v6 hasArrivalDate] && objc_msgSend(v6, "hasDepartureDate"))
    {
      [(SAPowerLog *)self setVisitCount:[(SAPowerLog *)self visitCount]+ 1];
      departureDate = [v6 departureDate];
      arrivalDate = [v6 arrivalDate];
      [departureDate timeIntervalSinceDate:arrivalDate];
      v10 = v9;
      [(SAPowerLog *)self totalVisitDuration];
      [(SAPowerLog *)self setTotalVisitDuration:v10 + v11];
    }

    v5 = eventCopy;
  }

  getDate = [v5 getDate];
  startTimestamp = [(SAPowerLog *)self startTimestamp];
  [getDate timeIntervalSinceDate:startTimestamp];
  v15 = v14;

  if (v15 >= 14400.0)
  {
    [(SAPowerLog *)self sendPowerLog];
  }
}

@end