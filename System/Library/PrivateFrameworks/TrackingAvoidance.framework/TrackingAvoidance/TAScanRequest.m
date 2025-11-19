@interface TAScanRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldScanOnAdvertisement:(id)a3 withDeviceRecord:(id)a4;
- (TAScanRequest)initWithCoder:(id)a3;
- (TAScanRequest)initWithSettings:(id)a3;
- (id)evaluateInterVisitAfterVisitExit:(id)a3 displayEvents:(id)a4 advertisements:(id)a5 deviceRecord:(id)a6 clock:(id)a7;
- (id)evaluateVisitEntry:(id)a3 clock:(id)a4;
- (id)evictScheduledInterVisitScanWithClock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)scheduleInterVisitScanForAdvertisement:(id)a3 deviceRecord:(id)a4 clock:(id)a5;
@end

@implementation TAScanRequest

- (TAScanRequest)initWithSettings:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TAScanRequest;
  v6 = [(TAScanRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    lastScanRequestedDate = v7->_lastScanRequestedDate;
    v7->_lastScanRequestedDate = 0;

    v7->_interVisitScanCount = 0;
    scheduledScanRequest = v7->_scheduledScanRequest;
    v7->_scheduledScanRequest = 0;
  }

  return v7;
}

- (id)evaluateVisitEntry:(id)a3 clock:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_interVisitScanCount = 0;
  scheduledScanRequest = self->_scheduledScanRequest;
  self->_scheduledScanRequest = 0;

  if ([v6 isClosed])
  {
    goto LABEL_5;
  }

  [v6 getDisplayOnTimeUntilEndDate:v7];
  v10 = v9;
  [(TAScanRequestSettings *)self->_settings minVisitEntryDisplayOnDuration];
  if (v10 >= v11)
  {
    goto LABEL_5;
  }

  lastScanRequestedDate = self->_lastScanRequestedDate;
  if (!lastScanRequestedDate)
  {
    goto LABEL_9;
  }

  v13 = [v6 representativeVisit];
  v14 = [v13 arrivalDate];
  v15 = [(NSDate *)lastScanRequestedDate compare:v14];

  if (v15 != -1)
  {
LABEL_5:
    v16 = 0;
  }

  else
  {
LABEL_9:
    v19 = [TAOutgoingRequests alloc];
    v21 = @"ScanRequestReason";
    v22[0] = @"VisitEntry";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [(TAOutgoingRequests *)v19 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v20 date:v7];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)evaluateInterVisitAfterVisitExit:(id)a3 displayEvents:(id)a4 advertisements:(id)a5 deviceRecord:(id)a6 clock:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  self->_interVisitScanCount = 0;
  scheduledScanRequest = self->_scheduledScanRequest;
  self->_scheduledScanRequest = 0;

  if ([v12 isClosed])
  {
    v18 = [TADisplayOnCalculator alloc];
    v19 = [v12 representativeVisit];
    v20 = [v19 departureDate];
    v21 = [(TADisplayOnCalculator *)v18 initWithStartTime:v20];

    [(TADisplayOnCalculator *)v21 calculateDisplayOnWithEvents:v13 advertisements:v14 endDate:v16];
    v23 = v22;
    [(TAScanRequestSettings *)self->_settings minInterVisitDisplayOnDuration];
    if (v23 >= v24)
    {
      if (![v14 count])
      {
        v27 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v14;
      v29 = [v26 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v29)
      {
        v30 = v29;
        v36 = v21;
        v37 = v13;
        v31 = *v39;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v38 + 1) + 8 * i);
            if ([(TAScanRequest *)self shouldScanOnAdvertisement:v33 withDeviceRecord:v15, v36, v37, v38])
            {
              [(TAScanRequest *)self scheduleInterVisitScanForAdvertisement:v33 deviceRecord:v15 clock:v16];
              goto LABEL_18;
            }
          }

          v30 = [v26 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_18:
        v27 = 0;
        v21 = v36;
        v13 = v37;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      ++self->_interVisitScanCount;
      v25 = [TAOutgoingRequests alloc];
      v42 = @"ScanRequestReason";
      v43 = @"InterVisitImmediate";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v27 = [(TAOutgoingRequests *)v25 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v26 date:v16];
    }

    goto LABEL_22;
  }

  v28 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAScanRequest evaluateInterVisitAfterVisitExit:v28 displayEvents:? advertisements:? deviceRecord:? clock:?];
  }

  v27 = 0;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)evictScheduledInterVisitScanWithClock:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  scheduledScanRequest = self->_scheduledScanRequest;
  if (scheduledScanRequest && [(NSDate *)scheduledScanRequest compare:v4]!= NSOrderedDescending)
  {
    if (self->_lastScanRequestedDate && ([v4 timeIntervalSinceDate:?], v7 = v6, -[TAScanRequestSettings interVisitScanDelay](self->_settings, "interVisitScanDelay"), v7 <= v8))
    {
      v15 = self->_scheduledScanRequest;
      self->_scheduledScanRequest = 0;
    }

    else
    {
      interVisitScanCount = self->_interVisitScanCount;
      v10 = [(TAScanRequestSettings *)self->_settings maxInterVisitScanRequests];
      v11 = self->_scheduledScanRequest;
      self->_scheduledScanRequest = 0;

      if (interVisitScanCount < v10)
      {
        ++self->_interVisitScanCount;
        v12 = [TAOutgoingRequests alloc];
        v18 = @"ScanRequestReason";
        v19[0] = @"InterVisitScheduled";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        v14 = [(TAOutgoingRequests *)v12 initWithRequestKey:@"RequestingAdditionalScans" additionalInformation:v13 date:v4];

        goto LABEL_9;
      }
    }
  }

  v14 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)scheduleInterVisitScanForAdvertisement:(id)a3 deviceRecord:(id)a4 clock:(id)a5
{
  v12 = a3;
  v7 = a4;
  interVisitScanCount = self->_interVisitScanCount;
  if (interVisitScanCount < [(TAScanRequestSettings *)self->_settings maxInterVisitScanRequests]&& v12 && !self->_scheduledScanRequest && [(TAScanRequest *)self shouldScanOnAdvertisement:v12 withDeviceRecord:v7])
  {
    v9 = [v12 scanDate];
    [(TAScanRequestSettings *)self->_settings interVisitScanDelay];
    v10 = [v9 dateByAddingTimeInterval:?];
    scheduledScanRequest = self->_scheduledScanRequest;
    self->_scheduledScanRequest = v10;
  }
}

- (BOOL)shouldScanOnAdvertisement:(id)a3 withDeviceRecord:(id)a4
{
  v5 = a4;
  v6 = [a3 address];
  v7 = [v5 isKnownDevice:v6];

  return v7 ^ 1;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAScanRequest *)self lastScanRequestedDate];
      v9 = [(TAScanRequest *)v7 lastScanRequestedDate];
      if (v8 != v9)
      {
        v3 = [(TAScanRequest *)self lastScanRequestedDate];
        v4 = [(TAScanRequest *)v7 lastScanRequestedDate];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_22;
        }
      }

      v11 = [(TAScanRequest *)self interVisitScanCount];
      if (v11 != [(TAScanRequest *)v7 interVisitScanCount])
      {
        v10 = 0;
        goto LABEL_21;
      }

      v12 = [(TAScanRequest *)self settings];
      v13 = [(TAScanRequest *)v7 settings];
      v14 = v13;
      if (v12 == v13)
      {
        v27 = v13;
      }

      else
      {
        v15 = [(TAScanRequest *)self settings];
        v26 = [(TAScanRequest *)v7 settings];
        if (![v15 isEqual:?])
        {
          v10 = 0;
LABEL_19:

LABEL_20:
LABEL_21:
          if (v8 == v9)
          {
LABEL_23:

            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_23;
        }

        v25 = v15;
        v27 = v14;
      }

      v16 = [(TAScanRequest *)self scheduledScanRequest];
      v17 = [(TAScanRequest *)v7 scheduledScanRequest];
      v18 = v17;
      if (v16 == v17)
      {

        v10 = 1;
      }

      else
      {
        [(TAScanRequest *)self scheduledScanRequest];
        v19 = v24 = v3;
        [(TAScanRequest *)v7 scheduledScanRequest];
        v23 = v12;
        v21 = v20 = v4;
        v10 = [v19 isEqual:v21];

        v4 = v20;
        v12 = v23;

        v3 = v24;
      }

      v14 = v27;
      v15 = v25;
      if (v12 == v27)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v10 = 0;
  }

LABEL_24:

  return v10;
}

- (TAScanRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TAScanRequest;
  v5 = [(TAScanRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastScan"];
    lastScanRequestedDate = v5->_lastScanRequestedDate;
    v5->_lastScanRequestedDate = v8;

    v5->_interVisitScanCount = [v4 decodeIntegerForKey:@"InterScanCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScanSchedule"];
    scheduledScanRequest = v5->_scheduledScanRequest;
    v5->_scheduledScanRequest = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  settings = self->_settings;
  v5 = a3;
  [v5 encodeObject:settings forKey:@"Settings"];
  [v5 encodeObject:self->_lastScanRequestedDate forKey:@"LastScan"];
  [v5 encodeInteger:self->_interVisitScanCount forKey:@"InterScanCount"];
  [v5 encodeObject:self->_scheduledScanRequest forKey:@"ScanSchedule"];
}

@end