@interface SASingleDeviceRecord
- (SASingleDeviceRecord)initWithCoder:(id)a3;
- (SASingleDeviceRecord)initWithConnectionEvent:(id)a3 clock:(id)a4 analytics:(id)a5;
- (SASingleDeviceRecord)initWithDevice:(id)a3 clock:(id)a4 analytics:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)publishAnalyticsForFirstAdv:(id)a3 scenario:(unint64_t)a4;
- (void)updateAdvertisingStartDateForHELE:(id)a3;
- (void)updateCurrentScenarioClass:(unint64_t)a3;
- (void)updateFirstAdvertisementAfterScenarioTransition:(id)a3;
- (void)updateLastCompanionDisconnectionDate:(id)a3;
- (void)updateLastWithYouDate:(id)a3;
- (void)updateLatestAdvertisement:(id)a3;
- (void)updateLatestCaseAdvertisementDate:(id)a3;
@end

@implementation SASingleDeviceRecord

- (SASingleDeviceRecord)initWithDevice:(id)a3 clock:(id)a4 analytics:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = SASingleDeviceRecord;
  v12 = [(SASingleDeviceRecord *)&v28 init];
  v13 = v12;
  if (v12)
  {
    if (!v9)
    {
      v26 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_clock, a4);
    objc_storeStrong(&v13->_analytics, a5);
    v14 = [v9 identifier];
    v15 = [v14 copy];
    uuid = v13->_uuid;
    v13->_uuid = v15;

    objc_storeStrong(&v13->_device, a3);
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

    v22 = [(SATimeServiceProtocol *)v13->_clock getCurrentTime];
    currentScenarioTime = v13->_currentScenarioTime;
    v13->_currentScenarioTime = v22;

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

- (SASingleDeviceRecord)initWithConnectionEvent:(id)a3 clock:(id)a4 analytics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  if (v8)
  {
    objc_storeStrong(&v11->_clock, a4);
    objc_storeStrong(&v12->_analytics, a5);
    v13 = [v8 identifier];
    v14 = [v13 copy];
    uuid = v12->_uuid;
    v12->_uuid = v14;

    device = v12->_device;
    v12->_device = 0;

    v17 = [v8 state] == 2 || objc_msgSend(v8, "state") == 3;
    v12->_withYouStatus = v17;
    v12->_connectionState = [v8 state];
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
    v25 = [(SATimeServiceProtocol *)v12->_clock getCurrentTime];
    currentScenarioTime = v12->_currentScenarioTime;
    v12->_currentScenarioTime = v25;

    if ([v8 state] && objc_msgSend(v8, "state") != 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = [(SATimeServiceProtocol *)v12->_clock getCurrentTime];
    }

    lastCompanionDisconnectionDate = v12->_lastCompanionDisconnectionDate;
    v12->_lastCompanionDisconnectionDate = v27;

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

- (void)updateLatestAdvertisement:(id)a3
{
  v20 = a3;
  v5 = [v20 getDate];
  [(SASingleDeviceRecord *)self updateFirstAdvertisementAfterScenarioTransition:v5];

  p_latestAdvertisement = &self->_latestAdvertisement;
  if (!self->_latestAdvertisement)
  {
    objc_storeStrong(&self->_latestAdvertisement, a3);
    if ([v20 getType] == 1)
    {
      p_latestAdvertisement = &self->_latestNOAdvertisement;
    }

    else
    {
      if ([v20 getType] != 2)
      {
        goto LABEL_17;
      }

      p_latestAdvertisement = &self->_latestWildAdvertisement;
    }

    goto LABEL_16;
  }

  if ([v20 getType] == 1)
  {
    latestNOAdvertisement = self->_latestNOAdvertisement;
    if (!latestNOAdvertisement || (-[TASPAdvertisement scanDate](latestNOAdvertisement, "scanDate"), v8 = objc_claimAutoreleasedReturnValue(), [v20 scanDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compare:", v9), v9, v8, v10 == -1))
    {
      objc_storeStrong(&self->_latestNOAdvertisement, a3);
    }
  }

  if ([v20 getType] == 2)
  {
    latestWildAdvertisement = self->_latestWildAdvertisement;
    p_latestWildAdvertisement = &self->_latestWildAdvertisement;
    v11 = latestWildAdvertisement;
    if (!latestWildAdvertisement || (-[TASPAdvertisement scanDate](v11, "scanDate"), v14 = objc_claimAutoreleasedReturnValue(), [v20 scanDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v15, v14, v16 == -1))
    {
      objc_storeStrong(p_latestWildAdvertisement, a3);
    }
  }

  v17 = [(TASPAdvertisement *)*p_latestAdvertisement scanDate];
  v18 = [v20 scanDate];
  v19 = [v17 compare:v18];

  if (v19 == -1)
  {
LABEL_16:
    objc_storeStrong(p_latestAdvertisement, a3);
  }

LABEL_17:
}

- (void)updateLatestCaseAdvertisementDate:(id)a3
{
  v5 = a3;
  latestCaseAdvertisementDate = self->_latestCaseAdvertisementDate;
  p_latestCaseAdvertisementDate = &self->_latestCaseAdvertisementDate;
  v6 = latestCaseAdvertisementDate;
  v9 = v5;
  if (!latestCaseAdvertisementDate)
  {
    objc_storeStrong(p_latestCaseAdvertisementDate, a3);
    v5 = v9;
    v6 = *p_latestCaseAdvertisementDate;
  }

  if ([(NSDate *)v6 compare:v5]== NSOrderedAscending)
  {
    objc_storeStrong(p_latestCaseAdvertisementDate, a3);
  }
}

- (void)updateLastWithYouDate:(id)a3
{
  v5 = a3;
  lastWithYouDate = self->_lastWithYouDate;
  p_lastWithYouDate = &self->_lastWithYouDate;
  v6 = lastWithYouDate;
  if (!lastWithYouDate || [(NSDate *)v6 compare:v5]== NSOrderedAscending)
  {
    objc_storeStrong(p_lastWithYouDate, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateAdvertisingStartDateForHELE:(id)a3
{
  v5 = a3;
  advertisingStartDateForHELE = self->_advertisingStartDateForHELE;
  p_advertisingStartDateForHELE = &self->_advertisingStartDateForHELE;
  v6 = advertisingStartDateForHELE;
  if (!advertisingStartDateForHELE || [(NSDate *)v6 compare:v5]== NSOrderedAscending)
  {
    objc_storeStrong(p_advertisingStartDateForHELE, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateLastCompanionDisconnectionDate:(id)a3
{
  v5 = a3;
  lastCompanionDisconnectionDate = self->_lastCompanionDisconnectionDate;
  p_lastCompanionDisconnectionDate = &self->_lastCompanionDisconnectionDate;
  v6 = lastCompanionDisconnectionDate;
  if (!lastCompanionDisconnectionDate || [(NSDate *)v6 compare:v5]== NSOrderedAscending)
  {
    objc_storeStrong(p_lastCompanionDisconnectionDate, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateFirstAdvertisementAfterScenarioTransition:(id)a3
{
  p_firstAdvertisementAfterScenarioTransition = a3;
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
          objc_storeStrong(p_firstAdvertisementAfterScenarioTransition, a3);
          v6 = v8;
        }
      }
    }
  }

  MEMORY[0x2821F96F8](p_firstAdvertisementAfterScenarioTransition, v6);
}

- (void)updateCurrentScenarioClass:(unint64_t)a3
{
  v5 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  if (a3 && self->_currentScenarioClass && self->_firstAdvertisementAfterScenarioTransition)
  {
    [(SASingleDeviceRecord *)self publishAnalyticsForFirstAdv:v5 scenario:a3];
  }

  firstAdvertisementAfterScenarioTransition = self->_firstAdvertisementAfterScenarioTransition;
  self->_firstAdvertisementAfterScenarioTransition = 0;

  currentScenarioTime = self->_currentScenarioTime;
  self->_currentScenarioTime = v5;

  self->_currentScenarioClass = a3;
}

- (void)publishAnalyticsForFirstAdv:(id)a3 scenario:(unint64_t)a4
{
  v22[5] = *MEMORY[0x277D85DE8];
  firstAdvertisementAfterScenarioTransition = self->_firstAdvertisementAfterScenarioTransition;
  currentScenarioTime = self->_currentScenarioTime;
  v8 = a3;
  [(NSDate *)firstAdvertisementAfterScenarioTransition timeIntervalSinceDate:currentScenarioTime];
  v10 = v9;
  [v8 timeIntervalSinceDate:self->_firstAdvertisementAfterScenarioTransition];
  v12 = v11;

  v21[0] = @"currentScenario";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASingleDeviceRecord currentScenarioClass](self, "currentScenarioClass")}];
  v22[0] = v13;
  v21[1] = @"firstDetectedToNextScenarioTimeInterval";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v22[1] = v14;
  v21[2] = @"nextScenario";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v22[2] = v15;
  v21[3] = @"previousMonitoringState";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASingleDeviceRecord monitoringSessionStateAtTimeOfFirstAdv](self, "monitoringSessionStateAtTimeOfFirstAdv")}];
  v22[3] = v16;
  v21[4] = @"scenarioChangeToFirstDetectedTimeInterval";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v22[4] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v19 = [(SASingleDeviceRecord *)self analytics];
  [v19 submitEvent:@"com.apple.clx.alert.firstAdv" content:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (SASingleDeviceRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SASingleDeviceRecord;
  v5 = [(SASingleDeviceRecord *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Device"];
    device = v5->_device;
    v5->_device = v8;

    v5->_withYouStatus = [v4 decodeIntegerForKey:@"WithYouStatus"];
    v5->_connectionState = [v4 decodeIntegerForKey:@"ConnectionState"];
    v5->_notificationState = [v4 decodeIntegerForKey:@"NotificationState"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvertisement"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastWithYouDate"];
    lastWithYouDate = v5->_lastWithYouDate;
    v5->_lastWithYouDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelatedDevices"];
    uuidsOfRelatedDevices = v5->_uuidsOfRelatedDevices;
    v5->_uuidsOfRelatedDevices = v14;

    v5->_hasSurfacedNotification = [v4 decodeBoolForKey:@"Surfaced"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstAdvertisement"];
    firstAdvertisementAfterScenarioTransition = v5->_firstAdvertisementAfterScenarioTransition;
    v5->_firstAdvertisementAfterScenarioTransition = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CurrentScenarioTime"];
    currentScenarioTime = v5->_currentScenarioTime;
    v5->_currentScenarioTime = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"UUID"];
  [v5 encodeObject:self->_device forKey:@"Device"];
  [v5 encodeInteger:self->_withYouStatus forKey:@"WithYouStatus"];
  [v5 encodeInteger:self->_connectionState forKey:@"ConnectionState"];
  [v5 encodeInteger:self->_notificationState forKey:@"NotificationState"];
  [v5 encodeObject:self->_latestAdvertisement forKey:@"LatestAdvertisement"];
  [v5 encodeObject:self->_lastWithYouDate forKey:@"LastWithYouDate"];
  [v5 encodeObject:self->_uuidsOfRelatedDevices forKey:@"RelatedDevices"];
  [v5 encodeBool:self->_hasSurfacedNotification forKey:@"Surfaced"];
  [v5 encodeObject:self->_firstAdvertisementAfterScenarioTransition forKey:@"FirstAdvertisement"];
  [v5 encodeObject:self->_currentScenarioTime forKey:@"CurrentScenarioTime"];
}

@end