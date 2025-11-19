@interface TASingleDeviceRecord
- (BOOL)_isAISFetchComplete;
- (BOOL)_isKeepInStagingUntilComplete:(id)a3;
- (BOOL)_shouldPushStagedDetection:(id)a3;
- (BOOL)hasStagedImmediateDetections;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUpdateAdvertisement:(id)a3;
- (NSDate)keepStagedDetectionAliveUntilDate;
- (TASingleDeviceRecord)initWithCoder:(id)a3;
- (TASingleDeviceRecord)initWithDeviceAdvertisement:(id)a3 state:(unint64_t)a4 type:(unint64_t)a5 date:(id)a6 keepAliveInterval:(double)a7;
- (id)_generateTAUUID:(id)a3;
- (id)description;
- (id)descriptionDictionary;
- (id)firstDetectionDateForDetectionType:(unint64_t)a3;
- (id)getDetectionsReadyToPushAndCheckForAISFetch;
- (id)getStagedDetections;
- (id)prepareAISFetchTAOutgoingRequest:(id)a3 lastAISFetchDate:(id)a4;
- (id)preparePlaySoundTAOutgoingRequest:(id)a3 lastPlaySoundDate:(id)a4;
- (id)productName;
- (id)purgeStagedDetectionsWithClock:(id)a3;
- (unint64_t)backgroundDetectionCountForDetectionType:(unint64_t)a3;
- (void)_isAISFetchComplete;
- (void)_updateEarliestObservationDateWithDate:(id)a3;
- (void)clearAllStagedDetections;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithAnotherSingleDeviceRecord:(id)a3;
- (void)processAISFetchEvent:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)processBackgroundDetection:(id)a3;
- (void)processPlaySoundSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)processSurfacedAlert:(id)a3;
- (void)stageDetection:(id)a3;
- (void)updateAdvertisement:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (void)updateSingleDeviceRecordOnSessionChangeWithCurrentDate:(id)a3;
@end

@implementation TASingleDeviceRecord

- (TASingleDeviceRecord)initWithDeviceAdvertisement:(id)a3 state:(unint64_t)a4 type:(unint64_t)a5 date:(id)a6 keepAliveInterval:(double)a7
{
  v13 = a3;
  v14 = a6;
  v51.receiver = self;
  v51.super_class = TASingleDeviceRecord;
  v15 = [(TASingleDeviceRecord *)&v51 init];
  if (!v15)
  {
LABEL_7:
    v16 = v15;
    goto LABEL_8;
  }

  v16 = 0;
  if (v13 && v14)
  {
    v17 = [v13 address];
    v18 = [v17 copy];
    address = v15->_address;
    v15->_address = v18;

    v20 = [(TASingleDeviceRecord *)v15 _generateTAUUID:v13];
    uuid = v15->_uuid;
    v15->_uuid = v20;

    v15->_state = a4;
    v15->_type = a5;
    v22 = [v14 copy];
    creationDate = v15->_creationDate;
    v15->_creationDate = v22;

    v24 = 0.0;
    if (a7 >= 0.0)
    {
      v24 = a7;
    }

    v15->_keepAliveInterval = v24;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stagedDetectionResults = v15->_stagedDetectionResults;
    v15->_stagedDetectionResults = v25;

    objc_storeStrong(&v15->_latestAdvertisement, a3);
    v27 = [v13 scanDate];
    v28 = [v14 earlierDate:v27];
    earliestObservationDate = v15->_earliestObservationDate;
    v15->_earliestObservationDate = v28;

    v15->_hasSurfacedNotification = 0;
    v15->_numStagedDetections = 0;
    v30 = [MEMORY[0x277CBEAA8] distantFuture];
    firstStagedDetectionDate = v15->_firstStagedDetectionDate;
    v15->_firstStagedDetectionDate = v30;

    v15->_numSurfacedAlerts = 0;
    v15->_numPotentialSurfacedAlerts = 0;
    v32 = [MEMORY[0x277CBEAA8] distantFuture];
    firstSurfacedAlertDate = v15->_firstSurfacedAlertDate;
    v15->_firstSurfacedAlertDate = v32;

    v15->_firstSurfacedAlertType = 0;
    v34 = [MEMORY[0x277CBEAA8] distantPast];
    lastSurfacedAlertDate = v15->_lastSurfacedAlertDate;
    v15->_lastSurfacedAlertDate = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundDetectionTypesInTravelSession = v15->_backgroundDetectionTypesInTravelSession;
    v15->_backgroundDetectionTypesInTravelSession = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backgroundDetectionCount = v15->_backgroundDetectionCount;
    v15->_backgroundDetectionCount = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    firstBackgroundDetectionDate = v15->_firstBackgroundDetectionDate;
    v15->_firstBackgroundDetectionDate = v40;

    v42 = [MEMORY[0x277CBEAA8] distantPast];
    latestBeepOnMoveDate = v15->_latestBeepOnMoveDate;
    v15->_latestBeepOnMoveDate = v42;

    v44 = [MEMORY[0x277CBEAA8] distantFuture];
    firstBeepOnMoveDate = v15->_firstBeepOnMoveDate;
    v15->_firstBeepOnMoveDate = v44;

    v15->_numBeepOnMove = 0;
    v15->_playSoundSuccessCount = 0;
    v15->_playSoundFailureCount = 0;
    v46 = [MEMORY[0x277CBEAA8] distantPast];
    latestPlaySoundAttemptDate = v15->_latestPlaySoundAttemptDate;
    v15->_latestPlaySoundAttemptDate = v46;

    v48 = [MEMORY[0x277CBEAA8] distantPast];
    lastAISAttemptDate = v15->_lastAISAttemptDate;
    v15->_lastAISAttemptDate = v48;

    v15->_AISFetchState = 0;
    v15->_AISFetchCount = 0;
    goto LABEL_7;
  }

LABEL_8:

  return v16;
}

- (void)stageDetection:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 detection];
    v7 = [v6 latestAdvertisement];
    [(TASingleDeviceRecord *)self updateAdvertisement:v7 andAppendOutgoingRequestsTo:0];

    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 description];
      *buf = 138739971;
      v30 = v10;
      _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TASingleDeviceRecord staging detection:%{sensitive}@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_stagedDetectionResults addObject:v5];
    firstStagedDetectionDate = self->_firstStagedDetectionDate;
    ++self->_numStagedDetections;
    v12 = [MEMORY[0x277CBEAA8] distantFuture];
    LODWORD(firstStagedDetectionDate) = [(NSDate *)firstStagedDetectionDate isEqual:v12];

    if (firstStagedDetectionDate)
    {
      v13 = [v5 detection];
      v14 = [v13 date];
      v15 = self->_firstStagedDetectionDate;
      self->_firstStagedDetectionDate = v14;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v5 detection];
    v17 = [v16 locationHistory];

    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v24 + 1) + 8 * v21) timestamp];
          [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)getStagedDetections
{
  v2 = [(NSMutableArray *)self->_stagedDetectionResults copy];

  return v2;
}

- (void)clearAllStagedDetections
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_stagedDetectionResults;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = v8;
          v11 = [v9 description];
          *buf = 138739971;
          v18 = v11;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TASingleDeviceRecord removing staged detection:%{sensitive}@", buf, 0xCu);
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_stagedDetectionResults removeAllObjects];
  v12 = *MEMORY[0x277D85DE8];
}

- (NSDate)keepStagedDetectionAliveUntilDate
{
  latestAdvertisement = self->_latestAdvertisement;
  v4 = MEMORY[0x277CBEAA8];
  if (latestAdvertisement)
  {
    keepAliveInterval = self->_keepAliveInterval;
    v6 = [(TASPAdvertisement *)latestAdvertisement scanDate];
    v7 = [v4 dateWithTimeInterval:v6 sinceDate:keepAliveInterval];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  return v7;
}

- (id)_generateTAUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEB28];
    v6 = [v3 address];
    v7 = [v5 dataWithData:v6];

    v8 = [v4 advertisementData];
    v9 = [v8 length];

    if (v9 == 22)
    {
      v10 = [v4 advertisementData];
      v11 = [v4 address];
      v12 = [v10 subdataWithRange:{0, 16 - objc_msgSend(v11, "length")}];
      [v7 appendData:v12];
    }

    else
    {
      v10 = [v4 address];
      [v7 increaseLengthBy:{16 - objc_msgSend(v10, "length")}];
    }

    v13 = [MEMORY[0x277CCAD78] UUID];
    if ([v7 length] == 16)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];

      v13 = v14;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
  }

  return v13;
}

- (BOOL)_shouldPushStagedDetection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TASingleDeviceRecord *)self _isAISFetchComplete];
  v6 = [(TASingleDeviceRecord *)self _isKeepInStagingUntilComplete:v4];

  v7 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(TASingleDeviceRecord *)self address];
    v10 = [v9 hexString];
    v13[0] = 67240707;
    v13[1] = v5;
    v14 = 1026;
    v15 = v6;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_DEFAULT, "#TASingleDeviceRecord shouldPushStagedDetection _isAISFetchComplete:%{public}d _isKeepInStagingUntilComplete:%{public}d for address, %{private}@", v13, 0x18u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5 && v6;
}

- (BOOL)_isKeepInStagingUntilComplete:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TASingleDeviceRecord *)v9 _isKeepInStagingUntilComplete:v10, v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_6;
  }

  latestAdvertisement = self->_latestAdvertisement;
  if (!latestAdvertisement)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(TASPAdvertisement *)latestAdvertisement scanDate];
  v7 = [v4 keepInStagingUntil];
  v8 = [v6 compare:v7] != -1;

LABEL_7:
  return v8;
}

- (BOOL)_isAISFetchComplete
{
  if ([(TASingleDeviceRecord *)self getDeviceType]== 1 && ![(TASPAdvertisement *)self->_latestAdvertisement isPosh])
  {
    v7 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TASingleDeviceRecord *)v7 _isAISFetchComplete:v8];
    }

    goto LABEL_15;
  }

  if ([(TASPAdvertisement *)self->_latestAdvertisement isPosh]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    v15 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TASingleDeviceRecord *)v15 _isAISFetchComplete:v16];
    }

    goto LABEL_15;
  }

  p_AISFetchState = &self->_AISFetchState;
  AISFetchState = self->_AISFetchState;
  if (AISFetchState > 8)
  {
    goto LABEL_16;
  }

  if (((1 << AISFetchState) & 0x66) != 0)
  {
    goto LABEL_21;
  }

  if (((1 << AISFetchState) & 0x188) != 0)
  {
    goto LABEL_15;
  }

  if (AISFetchState != 4)
  {
LABEL_16:
    if (!AISFetchState)
    {
      LOBYTE(v5) = 0;
      v6 = 1;
      goto LABEL_18;
    }

    v23 = TAStatusLog;
    v5 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    [(TASingleDeviceRecord *)p_AISFetchState _isAISFetchComplete];
LABEL_21:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (self->_AISFetchCount <= 9)
  {
    LOBYTE(v5) = 0;
    v6 = 5;
LABEL_18:
    *p_AISFetchState = v6;
    return v5;
  }

LABEL_15:
  LOBYTE(v5) = 1;
  return v5;
}

- (id)purgeStagedDetectionsWithClock:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_stagedDetectionResults;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 |= [(TASingleDeviceRecord *)self _shouldPushStagedDetection:*(*(&v21 + 1) + 8 * i), v21];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [(TASingleDeviceRecord *)self keepStagedDetectionAliveUntilDate];
  v12 = [v11 compare:v4];

  v13 = [(NSMutableArray *)self->_stagedDetectionResults count];
  v14 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240704;
    v26 = v13 != 0;
    v27 = 1026;
    v28 = v8 & 1;
    v29 = 1026;
    v30 = v12 == 1;
    _os_log_debug_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEBUG, "#TASingleDeviceRecord purgeStagedDetetionsWithClock hasStagedDevices:%{public}d hasStagedDetectionReadyToPush:%{public}d shouldKeepStagedDetectionsAlive:%{public}d", buf, 0x14u);
  }

  v15 = v13 == 0;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (((v15 | v8) & 1) == 0 && v12 != 1)
  {
    v17 = [(TASingleDeviceRecord *)self getStagedDetections];
    [v16 addObjectsFromArray:v17];

    [(TASingleDeviceRecord *)self clearAllStagedDetections];
  }

  v18 = [v16 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)getDetectionsReadyToPushAndCheckForAISFetch
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_stagedDetectionResults;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([(TASingleDeviceRecord *)self _isKeepInStagingUntilComplete:v10, v16]&& [(TASingleDeviceRecord *)self _isAISFetchComplete])
        {
          v11 = [v10 detection];
          [v4 addObject:v11];
        }

        else
        {
          [(NSMutableArray *)v3 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  stagedDetectionResults = self->_stagedDetectionResults;
  self->_stagedDetectionResults = v3;

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_updateEarliestObservationDateWithDate:(id)a3
{
  v5 = a3;
  earliestObservationDate = self->_earliestObservationDate;
  p_earliestObservationDate = &self->_earliestObservationDate;
  v8 = v5;
  if ([(NSDate *)earliestObservationDate compare:?]== NSOrderedDescending)
  {
    objc_storeStrong(p_earliestObservationDate, a3);
  }
}

- (BOOL)shouldUpdateAdvertisement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    latestAdvertisement = self->_latestAdvertisement;
    if (latestAdvertisement)
    {
      v6 = [(TASPAdvertisement *)latestAdvertisement scanDate];
      v7 = [v4 scanDate];
      v8 = [v6 compare:v7];

      if ([(TASPAdvertisement *)self->_latestAdvertisement isPosh])
      {
        v9 = [v4 isPosh];
      }

      else
      {
        v9 = 1;
      }

      v10 = (v8 == -1) & v9;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateAdvertisement:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(TASingleDeviceRecord *)self shouldUpdateAdvertisement:v7])
  {
    v9 = [v7 scanDate];
    v10 = [(TASingleDeviceRecord *)self purgeStagedDetectionsWithClock:v9];

    objc_storeStrong(&self->_latestAdvertisement, a3);
  }

  if ([v7 beepOnMoveHigh])
  {
    v11 = [v7 scanDate];
    [v11 timeIntervalSinceDate:self->_latestBeepOnMoveDate];
    v13 = v12;

    latestBeepOnMoveDate = self->_latestBeepOnMoveDate;
    v15 = [MEMORY[0x277CBEAA8] distantPast];
    v16 = [(NSDate *)latestBeepOnMoveDate isEqual:v15];

    if (v13 > 3600.0)
    {
      ++self->_numBeepOnMove;
      if ((v16 & 1) == 0)
      {
        v34[0] = @"timeSinceBOM";
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v34[1] = @"productInfo";
        v35[0] = v17;
        v18 = [(TASingleDeviceRecord *)self productName];
        v35[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

        v20 = [TAOutgoingRequests alloc];
        v21 = [v7 scanDate];
        v22 = [(TAOutgoingRequests *)v20 initWithRequestKey:@"BOMObservationMetrics" additionalInformation:v19 date:v21];

        [v8 addObject:v22];
      }
    }

    v23 = self->_latestBeepOnMoveDate;
    v24 = [v7 scanDate];
    v25 = [(NSDate *)v23 compare:v24];

    if (v25 == -1)
    {
      v26 = [v7 scanDate];
      v27 = self->_latestBeepOnMoveDate;
      self->_latestBeepOnMoveDate = v26;
    }

    firstBeepOnMoveDate = self->_firstBeepOnMoveDate;
    v29 = [MEMORY[0x277CBEAA8] distantFuture];
    LODWORD(firstBeepOnMoveDate) = [(NSDate *)firstBeepOnMoveDate isEqual:v29];

    if (firstBeepOnMoveDate)
    {
      v30 = [v7 scanDate];
      v31 = self->_firstBeepOnMoveDate;
      self->_firstBeepOnMoveDate = v30;
    }
  }

  v32 = [v7 scanDate];
  [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:v32];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithAnotherSingleDeviceRecord:(id)a3
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = a3;
  address = self->_address;
  v6 = [v4 address];

  if (address != v6)
  {
    goto LABEL_53;
  }

  v7 = [v4 uuid];
  uuid = self->_uuid;
  self->_uuid = v7;

  self->_AISFetchState = [v4 AISFetchState];
  self->_AISFetchCount += [v4 AISFetchCount];
  v9 = [v4 accessoryInfo];
  accessoryInfo = self->_accessoryInfo;
  self->_accessoryInfo = v9;

  self->_state = [v4 state];
  self->_type = [v4 type];
  creationDate = self->_creationDate;
  v12 = [v4 creationDate];
  v13 = [(NSDate *)creationDate earlierDate:v12];
  v14 = self->_creationDate;
  self->_creationDate = v13;

  stagedDetectionResults = self->_stagedDetectionResults;
  v16 = [v4 stagedDetectionResults];
  [(NSMutableArray *)stagedDetectionResults addObjectsFromArray:v16];

  v17 = [v4 latestAdvertisement];
  if (v17)
  {
    latestAdvertisement = self->_latestAdvertisement;

    if (latestAdvertisement)
    {
      v19 = [(TASPAdvertisement *)self->_latestAdvertisement scanDate];
      v20 = [v4 latestAdvertisement];
      v21 = [v20 scanDate];
      v22 = [v19 compare:v21];

      if (v22 != -1)
      {
        v23 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          v24 = self->_address;
          v25 = v23;
          v26 = [(NSData *)v24 hexString];
          buf = 68289283;
          v119 = 2082;
          v120 = "";
          v121 = 2081;
          v122 = [v26 UTF8String];
          v27 = "{msg%{public}.0s:#TASingleDeviceRecord retaining latest advertisement as it is more recent, address:%{private}s}";
LABEL_11:
          _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEBUG, v27, &buf, 0x1Cu);

          goto LABEL_13;
        }

        goto LABEL_13;
      }

LABEL_12:
      v32 = [v4 latestAdvertisement];
      v33 = self->_latestAdvertisement;
      self->_latestAdvertisement = v32;

      goto LABEL_13;
    }
  }

  v28 = [v4 latestAdvertisement];
  if (v28)
  {
    v29 = self->_latestAdvertisement;

    if (!v29)
    {
      goto LABEL_12;
    }
  }

  v30 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v31 = self->_address;
    v25 = v30;
    v26 = [(NSData *)v31 hexString];
    buf = 68289283;
    v119 = 2082;
    v120 = "";
    v121 = 2081;
    v122 = [v26 UTF8String];
    v27 = "{msg%{public}.0s:#TASingleDeviceRecord other record has no latest advertisement, address:%{private}s}";
    goto LABEL_11;
  }

LABEL_13:
  backgroundDetectionTypesInTravelSession = self->_backgroundDetectionTypesInTravelSession;
  v35 = [v4 backgroundDetectionTypesInTravelSession];
  [(NSMutableSet *)backgroundDetectionTypesInTravelSession unionSet:v35];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = [v4 backgroundDetectionCount];
  v36 = [obj countByEnumeratingWithState:&v112 objects:v117 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v113;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v113 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v112 + 1) + 8 * i);
        v41 = [v4 backgroundDetectionCount];
        v42 = [v41 objectForKeyedSubscript:v40];

        v43 = [(NSMutableDictionary *)self->_backgroundDetectionCount objectForKeyedSubscript:v40];

        if (v43)
        {
          v44 = MEMORY[0x277CCABB0];
          v45 = [(NSMutableDictionary *)self->_backgroundDetectionCount objectForKeyedSubscript:v40];
          v46 = v4;
          v47 = [v45 unsignedIntegerValue];
          v48 = [v42 unsignedIntegerValue] + v47;
          v4 = v46;
          v49 = [v44 numberWithUnsignedInteger:v48];

          [(NSMutableDictionary *)self->_backgroundDetectionCount setObject:v49 forKey:v40];
        }

        else
        {
          [(NSMutableDictionary *)self->_backgroundDetectionCount setObject:v42 forKey:v40];
        }
      }

      v37 = [obj countByEnumeratingWithState:&v112 objects:v117 count:16];
    }

    while (v37);
  }

  v50 = [v4 latestBeepOnMoveDate];
  if (v50 && (v51 = self->_latestBeepOnMoveDate, v50, v51))
  {
    latestBeepOnMoveDate = self->_latestBeepOnMoveDate;
    v53 = [v4 latestBeepOnMoveDate];
    v54 = [(NSDate *)latestBeepOnMoveDate compare:v53];

    if (v54 == -1)
    {
      v55 = [v4 latestBeepOnMoveDate];
      v56 = self->_latestBeepOnMoveDate;
      self->_latestBeepOnMoveDate = v55;
    }
  }

  else
  {
    v57 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v58 = self->_address;
      v59 = v57;
      v60 = [(NSData *)v58 hexString];
      v61 = [v60 UTF8String];
      buf = 68289283;
      v119 = 2082;
      v120 = "";
      v121 = 2081;
      v122 = v61;
      _os_log_impl(&dword_26F2E2000, v59, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TASingleDeviceRecord merging nil latestBeepOnMoveDate, address:%{private}s}", &buf, 0x1Cu);
    }
  }

  v62 = [v4 firstBeepOnMoveDate];
  if (v62)
  {
    firstBeepOnMoveDate = self->_firstBeepOnMoveDate;

    if (firstBeepOnMoveDate)
    {
      v64 = self->_firstBeepOnMoveDate;
      v65 = [v4 firstBeepOnMoveDate];
      v66 = [(NSDate *)v64 compare:v65];

      if (v66 == 1)
      {
        v67 = [v4 firstBeepOnMoveDate];
        v68 = self->_firstBeepOnMoveDate;
        self->_firstBeepOnMoveDate = v67;
      }
    }
  }

  self->_numBeepOnMove += [v4 numBeepOnMove];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v69 = [v4 firstBackgroundDetectionDate];
  v70 = [v69 countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v109;
    do
    {
      for (j = 0; j != v71; ++j)
      {
        if (*v109 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v108 + 1) + 8 * j);
        v75 = [v4 firstBackgroundDetectionDate];
        v76 = [v75 objectForKeyedSubscript:v74];

        v77 = [(NSMutableDictionary *)self->_firstBackgroundDetectionDate objectForKeyedSubscript:v74];
        v78 = v77;
        if (!v77 || [v77 compare:v76] == 1)
        {
          [(NSMutableDictionary *)self->_firstBackgroundDetectionDate setObject:v76 forKey:v74];
        }
      }

      v71 = [v69 countByEnumeratingWithState:&v108 objects:v116 count:16];
    }

    while (v71);
  }

  firstStagedDetectionDate = self->_firstStagedDetectionDate;
  v80 = [v4 firstStagedDetectionDate];
  v81 = [(NSDate *)firstStagedDetectionDate compare:v80];

  if (v81 == 1)
  {
    v82 = [v4 firstStagedDetectionDate];
    v83 = self->_firstStagedDetectionDate;
    self->_firstStagedDetectionDate = v82;
  }

  self->_numStagedDetections += [v4 numStagedDetections];
  firstSurfacedAlertDate = self->_firstSurfacedAlertDate;
  v85 = [v4 firstSurfacedAlertDate];
  v86 = [(NSDate *)firstSurfacedAlertDate compare:v85];

  if (v86 == 1)
  {
    v87 = [v4 firstSurfacedAlertDate];
    v88 = self->_firstSurfacedAlertDate;
    self->_firstSurfacedAlertDate = v87;

    self->_firstSurfacedAlertType = [v4 firstSurfacedAlertType];
  }

  lastSurfacedAlertDate = self->_lastSurfacedAlertDate;
  v90 = [v4 lastSurfacedAlertDate];
  v91 = [(NSDate *)lastSurfacedAlertDate compare:v90];

  if (v91 == -1)
  {
    v92 = [v4 lastSurfacedAlertDate];
    v93 = self->_lastSurfacedAlertDate;
    self->_lastSurfacedAlertDate = v92;
  }

  self->_numSurfacedAlerts += [v4 numSurfacedAlerts];
  self->_numPotentialSurfacedAlerts += [v4 numPotentialSurfacedAlerts];
  v94 = [v4 earliestObservationDate];
  [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:v94];

  self->_playSoundSuccessCount += [v4 playSoundSuccessCount];
  v95 = [v4 playSoundFailureCount];
  latestPlaySoundAttemptDate = self->_latestPlaySoundAttemptDate;
  self->_playSoundFailureCount += v95;
  v97 = [v4 latestPlaySoundAttemptDate];
  v98 = [(NSDate *)latestPlaySoundAttemptDate compare:v97];

  if (v98 == -1)
  {
    v99 = [v4 latestPlaySoundAttemptDate];
    v100 = self->_latestPlaySoundAttemptDate;
    self->_latestPlaySoundAttemptDate = v99;
  }

  lastAISAttemptDate = self->_lastAISAttemptDate;
  v102 = [v4 lastAISAttemptDate];
  v103 = [(NSDate *)lastAISAttemptDate compare:v102];

  if (v103 == -1)
  {
    v104 = [v4 lastAISAttemptDate];
    v105 = self->_lastAISAttemptDate;
    self->_lastAISAttemptDate = v104;
  }

LABEL_53:

  v106 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasStagedImmediateDetections
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(TASingleDeviceRecord *)self stagedDetectionResults];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) detection];
        v7 = [v6 immediacyType];

        if (v7 == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateSingleDeviceRecordOnSessionChangeWithCurrentDate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    backgroundDetectionTypesInTravelSession = self->_backgroundDetectionTypesInTravelSession;
    v7[0] = 68289283;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2113;
    v11 = backgroundDetectionTypesInTravelSession;
    _os_log_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TASingleDeviceRecord session changed, prevSessionTypes:%{private}@}", v7, 0x1Cu);
  }

  [(NSMutableSet *)self->_backgroundDetectionTypesInTravelSession removeAllObjects];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)productName
{
  v3 = [(TASingleDeviceRecord *)self accessoryInfo];

  if (v3)
  {
    v4 = [(TASingleDeviceRecord *)self accessoryInfo];
    v5 = [(TASPAdvertisement *)self->_latestAdvertisement getLatestAdvTypeToString:0];
    v6 = [v4 accessoryTypeNameWithAdvTypeString:v5];
  }

  else
  {
    latestAdvertisement = self->_latestAdvertisement;
    v4 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TASPAdvertisement *)latestAdvertisement getDeviceType]];
    v6 = [(TASPAdvertisement *)latestAdvertisement getLatestAdvTypeToString:v4];
  }

  return v6;
}

- (void)processSurfacedAlert:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  firstSurfacedAlertDate = self->_firstSurfacedAlertDate;
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  LODWORD(firstSurfacedAlertDate) = [(NSDate *)firstSurfacedAlertDate isEqual:v6];

  if (firstSurfacedAlertDate)
  {
    v7 = [v4 date];
    v8 = self->_firstSurfacedAlertDate;
    self->_firstSurfacedAlertDate = v7;

    self->_firstSurfacedAlertType = [v4 detectionType];
  }

  lastSurfacedAlertDate = self->_lastSurfacedAlertDate;
  v10 = [v4 date];
  v11 = [(NSDate *)lastSurfacedAlertDate compare:v10];

  if (v11 == -1)
  {
    v12 = [v4 date];
    v13 = self->_lastSurfacedAlertDate;
    self->_lastSurfacedAlertDate = v12;
  }

  ++self->_numSurfacedAlerts;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v4 locationHistory];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) timestamp];
        [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [v4 latestAdvertisement];
  [(TASingleDeviceRecord *)self updateAdvertisement:v20 andAppendOutgoingRequestsTo:0];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)processBackgroundDetection:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 latestAdvertisement];
    [(TASingleDeviceRecord *)self updateAdvertisement:v6 andAppendOutgoingRequestsTo:0];

    backgroundDetectionTypesInTravelSession = self->_backgroundDetectionTypesInTravelSession;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
    if (([(NSMutableSet *)backgroundDetectionTypesInTravelSession containsObject:v8]& 1) == 0 && [(TASingleDeviceRecord *)self state]!= 2)
    {
      v9 = [(TASingleDeviceRecord *)self state];

      if (v9 == 1)
      {
        goto LABEL_11;
      }

      v10 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 68289283;
        *v33 = 2082;
        *&v33[2] = "";
        *&v33[10] = 2117;
        *&v33[12] = v5;
        _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TASingleDeviceRecord adding background detection to record, detection:%{sensitive}@}", &v32, 0x1Cu);
      }

      v11 = self->_backgroundDetectionTypesInTravelSession;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
      [(NSMutableSet *)v11 addObject:v12];

      backgroundDetectionCount = self->_backgroundDetectionCount;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
      v15 = [(NSMutableDictionary *)backgroundDetectionCount objectForKeyedSubscript:v14];

      v16 = self->_backgroundDetectionCount;
      v17 = MEMORY[0x277CCABB0];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
      if (v15)
      {
        v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v8];
        v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
        [(NSMutableDictionary *)v16 setObject:v19 forKey:v20];
      }

      else
      {
        [(NSMutableDictionary *)v16 setObject:&unk_287F6FF50 forKey:v8];
      }
    }

LABEL_11:
    firstBackgroundDetectionDate = self->_firstBackgroundDetectionDate;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
    v23 = [(NSMutableDictionary *)firstBackgroundDetectionDate objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = [v5 date];
      v25 = [v23 compare:v24];

      if (v25 != 1)
      {
LABEL_19:

        goto LABEL_20;
      }

      v26 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v32 = 68289283;
        *v33 = 2082;
        *&v33[2] = "";
        *&v33[10] = 2117;
        *&v33[12] = v5;
        v27 = "{msg%{public}.0s:#TASingleDeviceRecord updating first background detection date, detection:%{sensitive}@}";
LABEL_17:
        _os_log_impl(&dword_26F2E2000, v26, OS_LOG_TYPE_DEBUG, v27, &v32, 0x1Cu);
      }
    }

    else
    {
      v26 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v32 = 68289283;
        *v33 = 2082;
        *&v33[2] = "";
        *&v33[10] = 2117;
        *&v33[12] = v5;
        v27 = "{msg%{public}.0s:#TASingleDeviceRecord setting first background detection date, detection:%{sensitive}@}";
        goto LABEL_17;
      }
    }

    v28 = self->_firstBackgroundDetectionDate;
    v29 = [v5 date];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
    [(NSMutableDictionary *)v28 setObject:v29 forKey:v30];

    goto LABEL_19;
  }

LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
}

- (unint64_t)backgroundDetectionCountForDetectionType:(unint64_t)a3
{
  backgroundDetectionCount = self->_backgroundDetectionCount;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)backgroundDetectionCount objectForKeyedSubscript:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = self->_backgroundDetectionCount;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  v11 = [v10 unsignedIntegerValue];

  return v11;
}

- (id)firstDetectionDateForDetectionType:(unint64_t)a3
{
  firstBackgroundDetectionDate = self->_firstBackgroundDetectionDate;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)firstBackgroundDetectionDate objectForKeyedSubscript:v4];

  return v5;
}

- (id)preparePlaySoundTAOutgoingRequest:(id)a3 lastPlaySoundDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:&unk_287F6FF68 forKey:@"firstSeenMinutes"];
  [v8 setObject:&unk_287F6FF68 forKey:@"firstAlertMinutes"];
  [v8 setObject:&unk_287F6FF68 forKey:@"lastAlertMinutes"];
  [v8 setObject:&unk_287F6FF68 forKey:@"lastAttemptMinutes"];
  [v8 setObject:&unk_287F6FF68 forKey:@"soundMinutes"];
  [v8 setObject:&stru_287F632C0 forKey:@"productInfo"];
  [v8 setObject:&unk_287F6FF80 forKey:@"soundCount"];
  [v8 setObject:MEMORY[0x277CBEC28] forKey:@"success"];
  v9 = MEMORY[0x277CCABB0];
  v10 = [(TASingleDeviceRecord *)self earliestObservationDate];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "getMinutesSinceStartOfDay")}];
  [v8 setObject:v11 forKey:@"firstSeenMinutes"];

  v12 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
  if (v12)
  {
    v13 = v12;
    v14 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
      v19 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [v18 timeIntervalSinceDate:v19];
      v21 = [v17 numberWithInt:(v20 / 60)];
      [v8 setObject:v21 forKey:@"firstAlertMinutes"];
    }
  }

  v22 = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
  if (v22)
  {
    v23 = v22;
    v24 = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
    v25 = [MEMORY[0x277CBEAA8] distantPast];
    v26 = [v24 isEqual:v25];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x277CCABB0];
      v28 = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
      v29 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [v28 timeIntervalSinceDate:v29];
      v31 = [v27 numberWithInt:(v30 / 60)];
      [v8 setObject:v31 forKey:@"lastAlertMinutes"];
    }
  }

  if (v7)
  {
    v32 = [MEMORY[0x277CBEAA8] distantPast];
    if (([v7 isEqual:v32] & 1) == 0)
    {
      v33 = [MEMORY[0x277CBEAA8] distantFuture];
      v34 = [v7 isEqual:v33];

      if (v34)
      {
        goto LABEL_12;
      }

      v35 = MEMORY[0x277CCABB0];
      v32 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [v7 timeIntervalSinceDate:v32];
      v37 = [v35 numberWithInt:(v36 / 60)];
      [v8 setObject:v37 forKey:@"lastAttemptMinutes"];
    }
  }

LABEL_12:
  v38 = [v6 date];
  if (!v38)
  {
    goto LABEL_17;
  }

  v39 = v38;
  v40 = [v6 date];
  v41 = [MEMORY[0x277CBEAA8] distantPast];
  if (([v40 isEqual:v41] & 1) == 0)
  {
    v42 = [v6 date];
    v43 = [MEMORY[0x277CBEAA8] distantFuture];
    v44 = [v42 isEqual:v43];

    if (v44)
    {
      goto LABEL_17;
    }

    v45 = MEMORY[0x277CCABB0];
    v39 = [v6 date];
    v40 = [(TASingleDeviceRecord *)self earliestObservationDate];
    [v39 timeIntervalSinceDate:v40];
    v41 = [v45 numberWithInt:(v46 / 60)];
    [v8 setObject:v41 forKey:@"soundMinutes"];
  }

LABEL_17:
  v47 = [(TASingleDeviceRecord *)self productName];
  [v8 setObject:v47 forKey:@"productInfo"];

  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TASingleDeviceRecord playSoundAttemptCount](self, "playSoundAttemptCount")}];
  [v8 setObject:v48 forKey:@"soundCount"];

  v49 = [v6 successType] == 1;
  v50 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [v8 setObject:v50 forKey:@"success"];

  v51 = [TAOutgoingRequests alloc];
  v52 = [v6 date];
  v53 = [(TAOutgoingRequests *)v51 initWithRequestKey:@"PlaySoundWithDetectionMetrics" additionalInformation:v8 date:v52];

  return v53;
}

- (void)processPlaySoundSuccess:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = [v6 address];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [v6 address];
  v10 = [(TASingleDeviceRecord *)self address];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [v6 successType];
    if (v12 == 1)
    {
      v13 = 168;
    }

    else
    {
      if (v12)
      {
LABEL_11:
        v15 = self->_latestPlaySoundAttemptDate;
        latestPlaySoundAttemptDate = self->_latestPlaySoundAttemptDate;
        v17 = [v6 date];
        v18 = [(NSDate *)latestPlaySoundAttemptDate compare:v17];

        if (v18 == -1)
        {
          v19 = [v6 date];
          v20 = self->_latestPlaySoundAttemptDate;
          self->_latestPlaySoundAttemptDate = v19;
        }

        v21 = [(TASingleDeviceRecord *)self preparePlaySoundTAOutgoingRequest:v6 lastPlaySoundDate:v15];
        [v7 addObject:v21];

        goto LABEL_14;
      }

      v13 = 176;
    }

    ++*(&self->super.isa + v13);
    goto LABEL_11;
  }

  v14 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    v23[0] = 68289283;
    v23[1] = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2113;
    v27 = v6;
    _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TASingleDeviceRecord mismatched address, playsoundSuccess:%{private}@}", v23, 0x1Cu);
  }

LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)prepareAISFetchTAOutgoingRequest:(id)a3 lastAISFetchDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [v6 successType] == 1;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [v8 setObject:v10 forKey:@"success"];

  v11 = [(TASingleDeviceRecord *)self productName];
  [v8 setObject:v11 forKey:@"deviceType"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_AISFetchCount];
  [v8 setObject:v12 forKey:@"fetchCount"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v6 date];
  v15 = [(TASingleDeviceRecord *)self earliestObservationDate];
  [v14 timeIntervalSinceDate:v15];
  v16 = [v13 numberWithDouble:?];
  [v8 setObject:v16 forKey:@"firstSeenSeconds"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v17 = [MEMORY[0x277CBEAA8] distantPast];
  if ([v7 isEqual:v17])
  {

LABEL_5:
    [v8 setObject:&unk_287F6FF68 forKey:@"lastAttemptMinutes"];
    goto LABEL_6;
  }

  v18 = [MEMORY[0x277CBEAA8] distantFuture];
  v19 = [v7 isEqual:v18];

  if (v19)
  {
    goto LABEL_5;
  }

  v24 = MEMORY[0x277CCABB0];
  v25 = [v6 date];
  [v25 timeIntervalSinceDate:v7];
  v27 = [v24 numberWithInt:(v26 / 60)];
  [v8 setObject:v27 forKey:@"lastAttemptMinutes"];

LABEL_6:
  v20 = [TAOutgoingRequests alloc];
  v21 = [v6 date];
  v22 = [(TAOutgoingRequests *)v20 initWithRequestKey:@"AISFetchMetrics" additionalInformation:v8 date:v21];

  return v22;
}

- (void)processAISFetchEvent:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = [v6 uuid];

  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [v6 uuid];
  v10 = [(TASingleDeviceRecord *)self uuid];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [v6 info];
    [(TASingleDeviceRecord *)self setAccessoryInfo:v12];

    v13 = [v6 successType];
    AISFetchState = self->_AISFetchState;
    if (v13 == 1)
    {
      if (AISFetchState == 2)
      {
        v15 = 3;
        goto LABEL_15;
      }

      if (AISFetchState == 6)
      {
        v15 = 7;
LABEL_15:
        self->_AISFetchState = v15;
      }
    }

    else
    {
      if (AISFetchState == 2)
      {
        v15 = 4;
        goto LABEL_15;
      }

      if (AISFetchState == 6)
      {
        v15 = 8;
        goto LABEL_15;
      }
    }

    v19 = self->_lastAISAttemptDate;
    lastAISAttemptDate = self->_lastAISAttemptDate;
    v21 = [v6 date];
    v22 = [(NSDate *)lastAISAttemptDate compare:v21];

    if (v22 == -1)
    {
      v23 = [v6 date];
      v24 = self->_lastAISAttemptDate;
      self->_lastAISAttemptDate = v23;
    }

    v25 = [(TASingleDeviceRecord *)self prepareAISFetchTAOutgoingRequest:v6 lastAISFetchDate:v19];
    [v7 addObject:v25];

    goto LABEL_19;
  }

  v16 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = [v6 description];
    v27[0] = 68289283;
    v27[1] = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = v18;
    _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TASingleDeviceRecord mismatched uuid, AISFetchEvent:%{private}@}", v27, 0x1Cu);
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v15 = 1;
    goto LABEL_72;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_72;
  }

  v6 = v5;
  v7 = [(TASingleDeviceRecord *)self address];
  v8 = [(TASingleDeviceRecord *)v6 address];
  if (v7 == v8 || (-[TASingleDeviceRecord address](self, "address"), v9 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord address](v6, "address"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v9, [v9 isEqual:?]))
  {
    v16 = [(TASingleDeviceRecord *)self uuid];
    v113 = [(TASingleDeviceRecord *)v6 uuid];
    v114 = v16;
    v3 = v16 != v113;
    if (v16 == v113 || (-[TASingleDeviceRecord uuid](self, "uuid"), v17 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord uuid](v6, "uuid"), v111 = objc_claimAutoreleasedReturnValue(), v112 = v17, [v17 isEqual:?]))
    {
      v18 = [(TASingleDeviceRecord *)self state];
      *&v117[56] = v3;
      if (v18 == [(TASingleDeviceRecord *)v6 state]&& (v19 = [(TASingleDeviceRecord *)self type], v19 == [(TASingleDeviceRecord *)v6 type]))
      {
        v20 = [(TASingleDeviceRecord *)self creationDate];
        v109 = [(TASingleDeviceRecord *)v6 creationDate];
        v110 = v20;
        v21 = v20 != v109;
        if (v20 == v109 || (-[TASingleDeviceRecord creationDate](self, "creationDate"), v22 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord creationDate](v6, "creationDate"), v107 = objc_claimAutoreleasedReturnValue(), v108 = v22, [v22 isEqual:?]))
        {
          [(TASingleDeviceRecord *)self keepAliveInterval];
          v31 = v30;
          [(TASingleDeviceRecord *)v6 keepAliveInterval];
          *&v117[52] = v21;
          if (v31 == v32)
          {
            v33 = [(TASingleDeviceRecord *)self stagedDetectionResults];
            v105 = [(TASingleDeviceRecord *)v6 stagedDetectionResults];
            v106 = v33;
            v34 = v33 != v105;
            if (v33 == v105 || (-[TASingleDeviceRecord stagedDetectionResults](self, "stagedDetectionResults"), v35 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord stagedDetectionResults](v6, "stagedDetectionResults"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v35, [v35 isEqual:?]))
            {
              v36 = [(TASingleDeviceRecord *)self latestAdvertisement];
              v103 = [(TASingleDeviceRecord *)v6 latestAdvertisement];
              v104 = v36;
              HIDWORD(v118[2]) = v36 != v103;
              *&v117[48] = v34;
              if (v36 == v103 || (-[TASingleDeviceRecord latestAdvertisement](self, "latestAdvertisement"), v37 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord latestAdvertisement](v6, "latestAdvertisement"), v97 = objc_claimAutoreleasedReturnValue(), v98 = v37, [v37 isEqual:?]))
              {
                v38 = [(TASingleDeviceRecord *)self earliestObservationDate];
                v99 = [(TASingleDeviceRecord *)v6 earliestObservationDate];
                v100 = v38;
                v39 = v38 == v99;
                v40 = v38 != v99;
                if (v39)
                {
                  *&v117[44] = v40;
                }

                else
                {
                  v41 = [(TASingleDeviceRecord *)self earliestObservationDate];
                  v95 = [(TASingleDeviceRecord *)v6 earliestObservationDate];
                  v96 = v41;
                  if (![v41 isEqual:?])
                  {
                    *&v117[36] = 0;
                    *&v117[4] = 0;
                    v10 = 0;
                    v11 = 0;
                    *v117 = 0;
                    v12 = 0;
                    memset(v118, 0, 20);
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    *&v117[28] = 0x100000001;
                    *&v117[24] = 1;
                    *&v117[16] = 0x100000000;
                    *&v117[12] = 1;
                    *&v117[44] = 1;
                    goto LABEL_17;
                  }

                  *&v117[44] = v40;
                }

                v42 = [(TASingleDeviceRecord *)self hasSurfacedNotification];
                if (v42 == [(TASingleDeviceRecord *)v6 hasSurfacedNotification])
                {
                  v43 = [(TASingleDeviceRecord *)self backgroundDetectionCount];
                  v93 = [(TASingleDeviceRecord *)v6 backgroundDetectionCount];
                  v94 = v43;
                  v39 = v43 == v93;
                  v44 = v43 != v93;
                  if (v39 || (-[TASingleDeviceRecord backgroundDetectionCount](self, "backgroundDetectionCount"), v45 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord backgroundDetectionCount](v6, "backgroundDetectionCount"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v45, [v45 isEqual:?]))
                  {
                    v46 = [(TASingleDeviceRecord *)self firstBackgroundDetectionDate];
                    v91 = [(TASingleDeviceRecord *)v6 firstBackgroundDetectionDate];
                    v92 = v46;
                    LODWORD(v118[2]) = v46 != v91;
                    *&v117[40] = v44;
                    if (v46 == v91 || (-[TASingleDeviceRecord firstBackgroundDetectionDate](self, "firstBackgroundDetectionDate"), v47 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstBackgroundDetectionDate](v6, "firstBackgroundDetectionDate"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v47, [v47 isEqual:?]))
                    {
                      v48 = [(TASingleDeviceRecord *)self backgroundDetectionTypesInTravelSession];
                      v87 = [(TASingleDeviceRecord *)v6 backgroundDetectionTypesInTravelSession];
                      v88 = v48;
                      HIDWORD(v118[1]) = v48 != v87;
                      if (v48 == v87 || (-[TASingleDeviceRecord backgroundDetectionTypesInTravelSession](self, "backgroundDetectionTypesInTravelSession"), v49 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord backgroundDetectionTypesInTravelSession](v6, "backgroundDetectionTypesInTravelSession"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v49, [v49 isEqual:?]))
                      {
                        v50 = [(TASingleDeviceRecord *)self latestBeepOnMoveDate];
                        v83 = [(TASingleDeviceRecord *)v6 latestBeepOnMoveDate];
                        v84 = v50;
                        LODWORD(v118[1]) = v50 != v83;
                        if (v50 == v83 || (-[TASingleDeviceRecord latestBeepOnMoveDate](self, "latestBeepOnMoveDate"), v51 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord latestBeepOnMoveDate](v6, "latestBeepOnMoveDate"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v51, [v51 isEqual:?]))
                        {
                          v52 = [(TASingleDeviceRecord *)self firstBeepOnMoveDate];
                          v79 = [(TASingleDeviceRecord *)v6 firstBeepOnMoveDate];
                          HIDWORD(v118[0]) = v52 != v79;
                          v80 = v52;
                          if (v52 == v79 || (-[TASingleDeviceRecord firstBeepOnMoveDate](self, "firstBeepOnMoveDate"), v53 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstBeepOnMoveDate](v6, "firstBeepOnMoveDate"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v53, [v53 isEqual:?]))
                          {
                            v54 = [(TASingleDeviceRecord *)self numBeepOnMove];
                            if (v54 == [(TASingleDeviceRecord *)v6 numBeepOnMove])
                            {
                              v55 = [(TASingleDeviceRecord *)self firstStagedDetectionDate];
                              v73 = [(TASingleDeviceRecord *)v6 firstStagedDetectionDate];
                              v74 = v55;
                              v39 = v55 == v73;
                              v56 = v55 != v73;
                              if (v39)
                              {
                                *&v117[36] = v56;
                              }

                              else
                              {
                                v57 = [(TASingleDeviceRecord *)self firstStagedDetectionDate];
                                v71 = [(TASingleDeviceRecord *)v6 firstStagedDetectionDate];
                                v72 = v57;
                                if (![v57 isEqual:?])
                                {
                                  v12 = 0;
                                  LODWORD(v118[0]) = 0;
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  *&v117[28] = 1;
                                  *&v117[32] = 1;
                                  *&v117[20] = 1;
                                  *&v117[24] = 1;
                                  *&v117[12] = 1;
                                  *&v117[16] = 1;
                                  *&v117[4] = 1;
                                  *&v117[8] = 1;
                                  v10 = 1;
                                  v11 = 1;
                                  *v117 = 1;
                                  *&v117[36] = 1;
                                  goto LABEL_17;
                                }

                                *&v117[36] = v56;
                              }

                              v58 = [(TASingleDeviceRecord *)self numStagedDetections];
                              if (v58 == [(TASingleDeviceRecord *)v6 numStagedDetections])
                              {
                                v59 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
                                v69 = [(TASingleDeviceRecord *)v6 firstSurfacedAlertDate];
                                v70 = v59;
                                LODWORD(v118[0]) = v59 != v69;
                                if (v59 == v69 || (-[TASingleDeviceRecord firstSurfacedAlertDate](self, "firstSurfacedAlertDate"), v60 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstSurfacedAlertDate](v6, "firstSurfacedAlertDate"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v60, [v60 isEqual:?]))
                                {
                                  v61 = [(TASingleDeviceRecord *)self firstSurfacedAlertType];
                                  if (v61 == [(TASingleDeviceRecord *)v6 firstSurfacedAlertType])
                                  {
                                    v62 = [(TASingleDeviceRecord *)self accessoryInfo];
                                    v65 = [(TASingleDeviceRecord *)v6 accessoryInfo];
                                    v66 = v62;
                                    if (v62 == v65)
                                    {
                                      v14 = 0;
                                      *&v117[28] = 1;
                                      *&v117[32] = 1;
                                      *&v117[20] = 1;
                                      *&v117[24] = 1;
                                      *&v117[12] = 1;
                                      *&v117[16] = 1;
                                      *&v117[4] = 1;
                                      *&v117[8] = 1;
                                      v10 = 1;
                                      v11 = 1;
                                      *v117 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                      v15 = 1;
                                    }

                                    else
                                    {
                                      v63 = [(TASingleDeviceRecord *)self accessoryInfo];
                                      v3 = [(TASingleDeviceRecord *)v6 accessoryInfo];
                                      v64 = v63;
                                      v15 = [v63 isEqual:v3];
                                      v14 = 1;
                                      *&v117[28] = 1;
                                      *&v117[32] = 1;
                                      *&v117[20] = 1;
                                      *&v117[24] = 1;
                                      *&v117[12] = 1;
                                      *&v117[16] = 1;
                                      *&v117[4] = 1;
                                      *&v117[8] = 1;
                                      v10 = 1;
                                      v11 = 1;
                                      *v117 = 1;
                                      v12 = 1;
                                      v13 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v13 = 0;
                                    v14 = 0;
                                    v15 = 0;
                                    *&v117[28] = 1;
                                    *&v117[32] = 1;
                                    *&v117[20] = 1;
                                    *&v117[24] = 1;
                                    *&v117[12] = 1;
                                    *&v117[16] = 1;
                                    *&v117[4] = 1;
                                    *&v117[8] = 1;
                                    v10 = 1;
                                    v11 = 1;
                                    *v117 = 1;
                                    v12 = 1;
                                  }
                                }

                                else
                                {
                                  v13 = 0;
                                  v14 = 0;
                                  v15 = 0;
                                  *&v117[28] = 1;
                                  *&v117[32] = 1;
                                  *&v117[20] = 1;
                                  *&v117[24] = 1;
                                  *&v117[12] = 1;
                                  *&v117[16] = 1;
                                  *&v117[4] = 1;
                                  *&v117[8] = 1;
                                  v10 = 1;
                                  v11 = 1;
                                  *v117 = 1;
                                  v12 = 1;
                                  LODWORD(v118[0]) = 1;
                                }
                              }

                              else
                              {
                                v12 = 0;
                                LODWORD(v118[0]) = 0;
                                v13 = 0;
                                v14 = 0;
                                v15 = 0;
                                *&v117[28] = 1;
                                *&v117[32] = 1;
                                *&v117[20] = 1;
                                *&v117[24] = 1;
                                *&v117[12] = 1;
                                *&v117[16] = 1;
                                *&v117[8] = 1;
                                v10 = 1;
                                v11 = 1;
                                *v117 = 1;
                                *&v117[4] = 1;
                              }

                              goto LABEL_17;
                            }

                            v12 = 0;
                            LODWORD(v118[0]) = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            *&v117[32] = 1;
                            *&v117[36] = 0;
                            *&v117[24] = 1;
                            *&v117[28] = 1;
                            *&v117[16] = 1;
                            *&v117[20] = 1;
                            *&v117[12] = 1;
                            *&v117[4] = 0;
                            *&v117[8] = 1;
                            v10 = 1;
                            v11 = 1;
                            *v117 = 1;
                          }

                          else
                          {
                            v12 = 0;
                            v13 = 0;
                            v14 = 0;
                            v15 = 0;
                            *&v117[36] = 0;
                            *&v117[24] = 1;
                            *&v117[28] = 0x100000001;
                            *&v117[16] = 0x100000001;
                            *&v117[8] = 0x100000001;
                            v10 = 1;
                            v11 = 1;
                            *v117 = 1;
                            v118[0] = 0x100000000;
                          }
                        }

                        else
                        {
                          *v117 = 0;
                          v118[0] = 0;
                          v12 = 0;
                          v13 = 0;
                          v14 = 0;
                          v15 = 0;
                          *&v117[32] = 1;
                          *&v117[36] = 0;
                          *&v117[24] = 1;
                          *&v117[28] = 1;
                          *&v117[16] = 1;
                          *&v117[20] = 1;
                          *&v117[8] = 1;
                          *&v117[12] = 1;
                          v10 = 1;
                          v11 = 1;
                          LODWORD(v118[1]) = 1;
                        }
                      }

                      else
                      {
                        v11 = 0;
                        *(v118 + 4) = 0;
                        *v117 = 0;
                        v12 = 0;
                        LODWORD(v118[0]) = 0;
                        v13 = 0;
                        v14 = 0;
                        v15 = 0;
                        *&v117[32] = 1;
                        *&v117[36] = 0;
                        *&v117[24] = 1;
                        *&v117[28] = 1;
                        *&v117[16] = 1;
                        *&v117[20] = 1;
                        *&v117[8] = 1;
                        *&v117[12] = 1;
                        v10 = 1;
                        HIDWORD(v118[1]) = 1;
                      }
                    }

                    else
                    {
                      v10 = 0;
                      v118[0] = 0;
                      v118[1] = 0;
                      v11 = 0;
                      *v117 = 0;
                      v12 = 0;
                      v13 = 0;
                      v14 = 0;
                      v15 = 0;
                      *&v117[32] = 1;
                      *&v117[36] = 0;
                      *&v117[24] = 1;
                      *&v117[28] = 1;
                      *&v117[16] = 1;
                      *&v117[20] = 1;
                      *&v117[8] = 1;
                      *&v117[12] = 1;
                      LODWORD(v118[2]) = 1;
                    }
                  }

                  else
                  {
                    *&v117[4] = 0;
                    v10 = 0;
                    v11 = 0;
                    *v117 = 0;
                    v12 = 0;
                    memset(v118, 0, 20);
                    v13 = 0;
                    v14 = 0;
                    v15 = 0;
                    *&v117[36] = 0x100000000;
                    *&v117[24] = 1;
                    *&v117[28] = 0x100000001;
                    *&v117[16] = 0x100000001;
                    *&v117[12] = 1;
                  }
                }

                else
                {
                  *&v117[36] = 0;
                  *&v117[4] = 0;
                  v10 = 0;
                  v11 = 0;
                  *v117 = 0;
                  v12 = 0;
                  memset(v118, 0, 20);
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  *&v117[28] = 0x100000001;
                  *&v117[24] = 1;
                  *&v117[16] = 0x100000000;
                  *&v117[12] = 1;
                }
              }

              else
              {
                *&v117[40] = 0;
                v10 = 0;
                v11 = 0;
                memset(v117, 0, 20);
                v12 = 0;
                memset(v118, 0, 20);
                v13 = 0;
                v14 = 0;
                v15 = 0;
                *&v117[36] = 0;
                *&v117[24] = 1;
                *&v117[28] = 0x100000001;
                *&v117[20] = 1;
                HIDWORD(v118[2]) = 1;
              }
            }

            else
            {
              *&v117[40] = 0;
              v10 = 0;
              v11 = 0;
              memset(v117, 0, 24);
              memset(v118, 0, sizeof(v118));
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *&v117[36] = 0;
              *&v117[24] = 1;
              *&v117[28] = 0x100000001;
              *&v117[48] = 1;
            }
          }

          else
          {
            *&v117[36] = 0;
            *&v117[44] = 0;
            v10 = 0;
            v11 = 0;
            memset(v117, 0, 24);
            memset(v118, 0, sizeof(v118));
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *&v117[28] = 0x100000000;
            *&v117[24] = 1;
          }
        }

        else
        {
          *&v117[36] = 0;
          *&v117[44] = 0;
          v10 = 0;
          v11 = 0;
          memset(v117, 0, 24);
          memset(v118, 0, sizeof(v118));
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *&v117[28] = 0x100000000;
          *&v117[24] = 1;
          *&v117[52] = 1;
        }
      }

      else
      {
        *&v117[40] = 0uLL;
        v10 = 0;
        v11 = 0;
        memset(v117, 0, 32);
        memset(v118, 0, sizeof(v118));
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *&v117[32] = 1;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      memset(v117, 0, 32);
      memset(v118, 0, sizeof(v118));
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *&v117[32] = 1;
      memset(&v117[36], 0, 20);
      *&v117[56] = 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    memset(v117, 0, sizeof(v117));
    memset(v118, 0, sizeof(v118));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

LABEL_17:
  if (v14)
  {
    v23 = v8;
    v24 = v7;
    v25 = v11;
    v26 = v10;
    v27 = v12;
    v28 = v13;

    v13 = v28;
    v12 = v27;
    v10 = v26;
    v11 = v25;
    v7 = v24;
    v8 = v23;
  }

  if (v13)
  {
  }

  if (LODWORD(v118[0]))
  {
  }

  if (v12)
  {
  }

  if (*&v117[36])
  {
  }

  if (*&v117[4])
  {
  }

  if (HIDWORD(v118[0]))
  {
  }

  if (*v117)
  {
  }

  if (LODWORD(v118[1]))
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v118[1]))
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v118[2]))
  {
  }

  if (*&v117[8])
  {
  }

  if (*&v117[40])
  {
  }

  if (*&v117[16])
  {
  }

  if (*&v117[44])
  {
  }

  if (*&v117[12])
  {
  }

  if (HIDWORD(v118[2]))
  {
  }

  if (*&v117[20])
  {
  }

  if (*&v117[48])
  {
  }

  if (*&v117[28])
  {
  }

  if (*&v117[52])
  {
  }

  if (*&v117[24])
  {
  }

  if (*&v117[56])
  {
  }

  if (*&v117[32])
  {
  }

  if (v7 != v8)
  {
  }

LABEL_72:
  return v15;
}

- (id)descriptionDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"Address";
  v3 = [(NSData *)self->_address hexString];
  v13[0] = v3;
  v12[1] = @"State";
  v4 = [TADeviceRecord notificationInternalStateToString:self->_state];
  v13[1] = v4;
  v12[2] = @"Type";
  v5 = [TADeviceInformation deviceTypeToString:self->_type];
  v13[2] = v5;
  v12[3] = @"CreationDate";
  v6 = [(NSDate *)self->_creationDate getDateString];
  v13[3] = v6;
  v12[4] = @"Surfaced";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSurfacedNotification];
  v13[4] = v7;
  v12[5] = @"AISState";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_AISFetchState];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = [(TASingleDeviceRecord *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (TASingleDeviceRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = TASingleDeviceRecord;
  v5 = [(TASingleDeviceRecord *)&v58 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    [v4 decodeDoubleForKey:@"KeepAliveInterval"];
    v5->_keepAliveInterval = v12;
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"StagedResults"];
    stagedDetectionResults = v5->_stagedDetectionResults;
    v5->_stagedDetectionResults = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvert"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v18;

    if (!v5->_uuid)
    {
      v20 = [(TASingleDeviceRecord *)v5 _generateTAUUID:v5->_latestAdvertisement];
      v21 = v5->_uuid;
      v5->_uuid = v20;
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstObsDate"];
    earliestObservationDate = v5->_earliestObservationDate;
    v5->_earliestObservationDate = v22;

    v5->_hasSurfacedNotification = [v4 decodeBoolForKey:@"Surfaced"];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"BackgroundSet"];
    backgroundDetectionTypesInTravelSession = v5->_backgroundDetectionTypesInTravelSession;
    v5->_backgroundDetectionTypesInTravelSession = v27;

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"BackgroundCount"];
    backgroundDetectionCount = v5->_backgroundDetectionCount;
    v5->_backgroundDetectionCount = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"BackgroundDate"];
    firstBackgroundDetectionDate = v5->_firstBackgroundDetectionDate;
    v5->_firstBackgroundDetectionDate = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beepOnMove"];
    latestBeepOnMoveDate = v5->_latestBeepOnMoveDate;
    v5->_latestBeepOnMoveDate = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fBOM"];
    firstBeepOnMoveDate = v5->_firstBeepOnMoveDate;
    v5->_firstBeepOnMoveDate = v42;

    v5->_numBeepOnMove = [v4 decodeIntegerForKey:@"nBOM"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedDate"];
    firstStagedDetectionDate = v5->_firstStagedDetectionDate;
    v5->_firstStagedDetectionDate = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstSurfaceDate"];
    firstSurfacedAlertDate = v5->_firstSurfacedAlertDate;
    v5->_firstSurfacedAlertDate = v46;

    v5->_firstSurfacedAlertType = [v4 decodeIntegerForKey:@"fsat"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsad"];
    lastSurfacedAlertDate = v5->_lastSurfacedAlertDate;
    v5->_lastSurfacedAlertDate = v48;

    v5->_numStagedDetections = [v4 decodeIntegerForKey:@"nStaged"];
    v5->_numSurfacedAlerts = [v4 decodeIntegerForKey:@"nSurfaced"];
    v5->_numPotentialSurfacedAlerts = [v4 decodeIntegerForKey:@"nPotentialSurfaced"];
    v5->_playSoundSuccessCount = [v4 decodeIntegerForKey:@"nPSS"];
    v5->_playSoundFailureCount = [v4 decodeIntegerForKey:@"nPSF"];
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lpsad"];
    latestPlaySoundAttemptDate = v5->_latestPlaySoundAttemptDate;
    v5->_latestPlaySoundAttemptDate = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"laisad"];
    lastAISAttemptDate = v5->_lastAISAttemptDate;
    v5->_lastAISAttemptDate = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AISInfo"];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v54;

    v56 = [v4 decodeIntegerForKey:@"AISState"];
    v5->_AISFetchState = v56;
    if ((v56 | 4) == 6)
    {
      v5->_AISFetchState = 0;
    }

    v5->_AISFetchCount = [v4 decodeIntegerForKey:@"AISCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"Address"];
  [v5 encodeObject:self->_uuid forKey:@"UUID"];
  [v5 encodeInteger:self->_state forKey:@"State"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeDouble:@"KeepAliveInterval" forKey:self->_keepAliveInterval];
  [v5 encodeObject:self->_stagedDetectionResults forKey:@"StagedResults"];
  [v5 encodeObject:self->_latestAdvertisement forKey:@"LatestAdvert"];
  [v5 encodeObject:self->_earliestObservationDate forKey:@"firstObsDate"];
  [v5 encodeBool:self->_hasSurfacedNotification forKey:@"Surfaced"];
  [v5 encodeObject:self->_backgroundDetectionTypesInTravelSession forKey:@"BackgroundSet"];
  [v5 encodeObject:self->_backgroundDetectionCount forKey:@"BackgroundCount"];
  [v5 encodeObject:self->_firstBackgroundDetectionDate forKey:@"BackgroundDate"];
  [v5 encodeObject:self->_latestBeepOnMoveDate forKey:@"beepOnMove"];
  [v5 encodeObject:self->_firstBeepOnMoveDate forKey:@"fBOM"];
  [v5 encodeInteger:self->_numBeepOnMove forKey:@"nBOM"];
  [v5 encodeObject:self->_firstStagedDetectionDate forKey:@"stagedDate"];
  [v5 encodeObject:self->_firstSurfacedAlertDate forKey:@"firstSurfaceDate"];
  [v5 encodeInteger:self->_firstSurfacedAlertType forKey:@"fsat"];
  [v5 encodeObject:self->_lastSurfacedAlertDate forKey:@"lsad"];
  [v5 encodeInteger:self->_numStagedDetections forKey:@"nStaged"];
  [v5 encodeInteger:self->_numSurfacedAlerts forKey:@"nSurfaced"];
  [v5 encodeInteger:self->_numPotentialSurfacedAlerts forKey:@"nPotentialSurfaced"];
  [v5 encodeInteger:self->_playSoundSuccessCount forKey:@"nPSS"];
  [v5 encodeInteger:self->_playSoundFailureCount forKey:@"nPSF"];
  [v5 encodeObject:self->_latestPlaySoundAttemptDate forKey:@"lpsad"];
  [v5 encodeObject:self->_accessoryInfo forKey:@"AISInfo"];
  [v5 encodeInteger:self->_AISFetchState forKey:@"AISState"];
  [v5 encodeInteger:self->_AISFetchCount forKey:@"AISCount"];
  [v5 encodeObject:self->_lastAISAttemptDate forKey:@"laisad"];
}

- (void)_isAISFetchComplete
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134349056;
  v5 = v2;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TASingleDeviceRecord receiving undefined AIS fetch state %{public}lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end