@interface SASingleDeviceRecord
- (SASingleDeviceRecord)initWithCoder:(id)coder;
- (SASingleDeviceRecord)initWithConnectionEvent:(id)event clock:(id)clock analytics:(id)analytics;
- (SASingleDeviceRecord)initWithDevice:(id)device clock:(id)clock analytics:(id)analytics;
- (void)encodeWithCoder:(id)coder;
- (void)publishAnalyticsForFirstAdv:(id)adv scenario:(unint64_t)scenario;
- (void)updateAdvertisingStartDateForHELE:(id)e;
- (void)updateCurrentScenarioClass:(unint64_t)class;
- (void)updateFirstAdvertisementAfterScenarioTransition:(id)transition;
- (void)updateLastCompanionDisconnectionDate:(id)date;
- (void)updateLastWithYouDate:(id)date;
- (void)updateLatestAdvertisement:(id)advertisement;
- (void)updateLatestCaseAdvertisementDate:(id)date;
@end

@implementation SASingleDeviceRecord

- (SASingleDeviceRecord)initWithDevice:(id)device clock:(id)clock analytics:(id)analytics
{
  deviceCopy = device;
  clockCopy = clock;
  analyticsCopy = analytics;
  v28.receiver = self;
  v28.super_class = SASingleDeviceRecord;
  v12 = [(SASingleDeviceRecord *)&v28 init];
  v13 = v12;
  if (v12)
  {
    if (!deviceCopy)
    {
      v26 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_clock, clock);
    objc_storeStrong(&v13->_analytics, analytics);
    identifier = [deviceCopy identifier];
    v15 = [identifier copy];
    uuid = v13->_uuid;
    v13->_uuid = v15;

    objc_storeStrong(&v13->_device, device);
    latestAdvertisement = v13->_latestAdvertisement;
    *&v13->_withYouStatus = 0u;
    *&v13->_notificationState = 0u;

    latestCaseAdvertisementDate = v13->_latestCaseAdvertisementDate;
    v13->_latestCaseAdvertisementDate = 0;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uuidsOfRelatedDevices = v13->_uuidsOfRelatedDevices;
    v13->_uuidsOfRelatedDevices = v19;

    v13->_hasSurfacedNotification = 0;
    firstAdvertisementAfterScenarioTransition = v13->_firstAdvertisementAfterScenarioTransition;
    v13->_firstAdvertisementAfterScenarioTransition = 0;

    getCurrentTime = [(SATimeServiceProtocol *)v13->_clock getCurrentTime];
    currentScenarioTime = v13->_currentScenarioTime;
    v13->_currentScenarioTime = getCurrentTime;

    lastCompanionDisconnectionDate = v13->_lastCompanionDisconnectionDate;
    v13->_lastCompanionDisconnectionDate = 0;

    advertisingStartDateForHELE = v13->_advertisingStartDateForHELE;
    v13->_advertisingStartDateForHELE = 0;

    v13->_relationStatus = -1;
    v13->_maintenanceStatus = -1;
  }

  v26 = v13;
LABEL_6:

  return v26;
}

- (SASingleDeviceRecord)initWithConnectionEvent:(id)event clock:(id)clock analytics:(id)analytics
{
  eventCopy = event;
  clockCopy = clock;
  analyticsCopy = analytics;
  v32.receiver = self;
  v32.super_class = SASingleDeviceRecord;
  v11 = [(SASingleDeviceRecord *)&v32 init];
  v12 = v11;
  if (!v11)
  {
LABEL_12:
    v18 = v12;
    goto LABEL_13;
  }

  if (eventCopy)
  {
    objc_storeStrong(&v11->_clock, clock);
    objc_storeStrong(&v12->_analytics, analytics);
    identifier = [eventCopy identifier];
    v14 = [identifier copy];
    uuid = v12->_uuid;
    v12->_uuid = v14;

    device = v12->_device;
    v12->_device = 0;

    v17 = [eventCopy state] == 2 || objc_msgSend(eventCopy, "state") == 3;
    v12->_withYouStatus = v17;
    v12->_connectionState = [eventCopy state];
    v12->_notificationState = 0;
    latestAdvertisement = v12->_latestAdvertisement;
    v12->_latestAdvertisement = 0;

    latestNOAdvertisement = v12->_latestNOAdvertisement;
    v12->_latestNOAdvertisement = 0;

    latestWildAdvertisement = v12->_latestWildAdvertisement;
    v12->_latestWildAdvertisement = 0;

    latestCaseAdvertisementDate = v12->_latestCaseAdvertisementDate;
    v12->_latestCaseAdvertisementDate = 0;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    uuidsOfRelatedDevices = v12->_uuidsOfRelatedDevices;
    v12->_uuidsOfRelatedDevices = v23;

    v12->_hasSurfacedNotification = 0;
    getCurrentTime = [(SATimeServiceProtocol *)v12->_clock getCurrentTime];
    currentScenarioTime = v12->_currentScenarioTime;
    v12->_currentScenarioTime = getCurrentTime;

    if ([eventCopy state] && objc_msgSend(eventCopy, "state") != 1)
    {
      getCurrentTime2 = 0;
    }

    else
    {
      getCurrentTime2 = [(SATimeServiceProtocol *)v12->_clock getCurrentTime];
    }

    lastCompanionDisconnectionDate = v12->_lastCompanionDisconnectionDate;
    v12->_lastCompanionDisconnectionDate = getCurrentTime2;

    lastWithYouLocation = v12->_lastWithYouLocation;
    v12->_lastWithYouLocation = 0;

    advertisingStartDateForHELE = v12->_advertisingStartDateForHELE;
    v12->_advertisingStartDateForHELE = 0;

    v12->_relationStatus = -1;
    v12->_maintenanceStatus = -1;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (void)updateLatestAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  getDate = [advertisementCopy getDate];
  [(SASingleDeviceRecord *)self updateFirstAdvertisementAfterScenarioTransition:getDate];

  p_latestAdvertisement = &self->_latestAdvertisement;
  if (!self->_latestAdvertisement)
  {
    objc_storeStrong(&self->_latestAdvertisement, advertisement);
    if ([advertisementCopy getType] == 1)
    {
      p_latestAdvertisement = &self->_latestNOAdvertisement;
    }

    else
    {
      if ([advertisementCopy getType] != 2)
      {
        goto LABEL_17;
      }

      p_latestAdvertisement = &self->_latestWildAdvertisement;
    }

    goto LABEL_16;
  }

  if ([advertisementCopy getType] == 1)
  {
    latestNOAdvertisement = self->_latestNOAdvertisement;
    if (!latestNOAdvertisement || (-[TASPAdvertisement scanDate](latestNOAdvertisement, "scanDate"), v8 = objc_claimAutoreleasedReturnValue(), [advertisementCopy scanDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compare:", v9), v9, v8, v10 == -1))
    {
      objc_storeStrong(&self->_latestNOAdvertisement, advertisement);
    }
  }

  if ([advertisementCopy getType] == 2)
  {
    latestWildAdvertisement = self->_latestWildAdvertisement;
    p_latestWildAdvertisement = &self->_latestWildAdvertisement;
    v11 = latestWildAdvertisement;
    if (!latestWildAdvertisement || (-[TASPAdvertisement scanDate](v11, "scanDate"), v14 = objc_claimAutoreleasedReturnValue(), [advertisementCopy scanDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v15, v14, v16 == -1))
    {
      objc_storeStrong(p_latestWildAdvertisement, advertisement);
    }
  }

  scanDate = [(TASPAdvertisement *)*p_latestAdvertisement scanDate];
  scanDate2 = [advertisementCopy scanDate];
  v19 = [scanDate compare:scanDate2];

  if (v19 == -1)
  {
LABEL_16:
    objc_storeStrong(p_latestAdvertisement, advertisement);
  }

LABEL_17:
}

- (void)updateLatestCaseAdvertisementDate:(id)date
{
  dateCopy = date;
  latestCaseAdvertisementDate = self->_latestCaseAdvertisementDate;
  p_latestCaseAdvertisementDate = &self->_latestCaseAdvertisementDate;
  v6 = latestCaseAdvertisementDate;
  v9 = dateCopy;
  if (!latestCaseAdvertisementDate)
  {
    objc_storeStrong(p_latestCaseAdvertisementDate, date);
    dateCopy = v9;
    v6 = *p_latestCaseAdvertisementDate;
  }

  if ([(NSDate *)v6 compare:dateCopy]== NSOrderedAscending)
  {
    objc_storeStrong(p_latestCaseAdvertisementDate, date);
  }
}

- (void)updateLastWithYouDate:(id)date
{
  dateCopy = date;
  lastWithYouDate = self->_lastWithYouDate;
  p_lastWithYouDate = &self->_lastWithYouDate;
  v6 = lastWithYouDate;
  if (!lastWithYouDate || [(NSDate *)v6 compare:dateCopy]== NSOrderedAscending)
  {
    objc_storeStrong(p_lastWithYouDate, date);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateAdvertisingStartDateForHELE:(id)e
{
  eCopy = e;
  advertisingStartDateForHELE = self->_advertisingStartDateForHELE;
  p_advertisingStartDateForHELE = &self->_advertisingStartDateForHELE;
  v6 = advertisingStartDateForHELE;
  if (!advertisingStartDateForHELE || [(NSDate *)v6 compare:eCopy]== NSOrderedAscending)
  {
    objc_storeStrong(p_advertisingStartDateForHELE, e);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateLastCompanionDisconnectionDate:(id)date
{
  dateCopy = date;
  lastCompanionDisconnectionDate = self->_lastCompanionDisconnectionDate;
  p_lastCompanionDisconnectionDate = &self->_lastCompanionDisconnectionDate;
  v6 = lastCompanionDisconnectionDate;
  if (!lastCompanionDisconnectionDate || [(NSDate *)v6 compare:dateCopy]== NSOrderedAscending)
  {
    objc_storeStrong(p_lastCompanionDisconnectionDate, date);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateFirstAdvertisementAfterScenarioTransition:(id)transition
{
  p_firstAdvertisementAfterScenarioTransition = transition;
  v6 = p_firstAdvertisementAfterScenarioTransition;
  if (p_firstAdvertisementAfterScenarioTransition)
  {
    if (self->_currentScenarioTime)
    {
      v8 = p_firstAdvertisementAfterScenarioTransition;
      p_firstAdvertisementAfterScenarioTransition = [p_firstAdvertisementAfterScenarioTransition timeIntervalSinceDate:?];
      v6 = v8;
      if (self->_currentScenarioClass)
      {
        p_firstAdvertisementAfterScenarioTransition = &self->_firstAdvertisementAfterScenarioTransition;
        if (!self->_firstAdvertisementAfterScenarioTransition && v7 > 0.0)
        {
          self->_monitoringSessionStateAtTimeOfFirstAdv = self->_currentMonitoringSessionState;
          objc_storeStrong(p_firstAdvertisementAfterScenarioTransition, transition);
          v6 = v8;
        }
      }
    }
  }

  MEMORY[0x2821F96F8](p_firstAdvertisementAfterScenarioTransition, v6);
}

- (void)updateCurrentScenarioClass:(unint64_t)class
{
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  if (class && self->_currentScenarioClass && self->_firstAdvertisementAfterScenarioTransition)
  {
    [(SASingleDeviceRecord *)self publishAnalyticsForFirstAdv:getCurrentTime scenario:class];
  }

  firstAdvertisementAfterScenarioTransition = self->_firstAdvertisementAfterScenarioTransition;
  self->_firstAdvertisementAfterScenarioTransition = 0;

  currentScenarioTime = self->_currentScenarioTime;
  self->_currentScenarioTime = getCurrentTime;

  self->_currentScenarioClass = class;
}

- (void)publishAnalyticsForFirstAdv:(id)adv scenario:(unint64_t)scenario
{
  v22[5] = *MEMORY[0x277D85DE8];
  firstAdvertisementAfterScenarioTransition = self->_firstAdvertisementAfterScenarioTransition;
  currentScenarioTime = self->_currentScenarioTime;
  advCopy = adv;
  [(NSDate *)firstAdvertisementAfterScenarioTransition timeIntervalSinceDate:currentScenarioTime];
  v10 = v9;
  [advCopy timeIntervalSinceDate:self->_firstAdvertisementAfterScenarioTransition];
  v12 = v11;

  v21[0] = @"currentScenario";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASingleDeviceRecord currentScenarioClass](self, "currentScenarioClass")}];
  v22[0] = v13;
  v21[1] = @"firstDetectedToNextScenarioTimeInterval";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v22[1] = v14;
  v21[2] = @"nextScenario";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:scenario];
  v22[2] = v15;
  v21[3] = @"previousMonitoringState";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASingleDeviceRecord monitoringSessionStateAtTimeOfFirstAdv](self, "monitoringSessionStateAtTimeOfFirstAdv")}];
  v22[3] = v16;
  v21[4] = @"scenarioChangeToFirstDetectedTimeInterval";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v22[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  analytics = [(SASingleDeviceRecord *)self analytics];
  [analytics submitEvent:@"com.apple.clx.alert.firstAdv" content:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (SASingleDeviceRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SASingleDeviceRecord;
  v5 = [(SASingleDeviceRecord *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = v5->_device;
    v5->_device = v8;

    v5->_withYouStatus = [coderCopy decodeIntegerForKey:@"WithYouStatus"];
    v5->_connectionState = [coderCopy decodeIntegerForKey:@"ConnectionState"];
    v5->_notificationState = [coderCopy decodeIntegerForKey:@"NotificationState"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvertisement"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastWithYouDate"];
    lastWithYouDate = v5->_lastWithYouDate;
    v5->_lastWithYouDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelatedDevices"];
    uuidsOfRelatedDevices = v5->_uuidsOfRelatedDevices;
    v5->_uuidsOfRelatedDevices = v14;

    v5->_hasSurfacedNotification = [coderCopy decodeBoolForKey:@"Surfaced"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstAdvertisement"];
    firstAdvertisementAfterScenarioTransition = v5->_firstAdvertisementAfterScenarioTransition;
    v5->_firstAdvertisementAfterScenarioTransition = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CurrentScenarioTime"];
    currentScenarioTime = v5->_currentScenarioTime;
    v5->_currentScenarioTime = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"UUID"];
  [coderCopy encodeObject:self->_device forKey:@"Device"];
  [coderCopy encodeInteger:self->_withYouStatus forKey:@"WithYouStatus"];
  [coderCopy encodeInteger:self->_connectionState forKey:@"ConnectionState"];
  [coderCopy encodeInteger:self->_notificationState forKey:@"NotificationState"];
  [coderCopy encodeObject:self->_latestAdvertisement forKey:@"LatestAdvertisement"];
  [coderCopy encodeObject:self->_lastWithYouDate forKey:@"LastWithYouDate"];
  [coderCopy encodeObject:self->_uuidsOfRelatedDevices forKey:@"RelatedDevices"];
  [coderCopy encodeBool:self->_hasSurfacedNotification forKey:@"Surfaced"];
  [coderCopy encodeObject:self->_firstAdvertisementAfterScenarioTransition forKey:@"FirstAdvertisement"];
  [coderCopy encodeObject:self->_currentScenarioTime forKey:@"CurrentScenarioTime"];
}

@end