@interface TASingleDeviceRecord
- (BOOL)_isAISFetchComplete;
- (BOOL)_isKeepInStagingUntilComplete:(id)complete;
- (BOOL)_shouldPushStagedDetection:(id)detection;
- (BOOL)hasStagedImmediateDetections;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldUpdateAdvertisement:(id)advertisement;
- (NSDate)keepStagedDetectionAliveUntilDate;
- (TASingleDeviceRecord)initWithCoder:(id)coder;
- (TASingleDeviceRecord)initWithDeviceAdvertisement:(id)advertisement state:(unint64_t)state type:(unint64_t)type date:(id)date keepAliveInterval:(double)interval;
- (id)_generateTAUUID:(id)d;
- (id)description;
- (id)descriptionDictionary;
- (id)firstDetectionDateForDetectionType:(unint64_t)type;
- (id)getDetectionsReadyToPushAndCheckForAISFetch;
- (id)getStagedDetections;
- (id)prepareAISFetchTAOutgoingRequest:(id)request lastAISFetchDate:(id)date;
- (id)preparePlaySoundTAOutgoingRequest:(id)request lastPlaySoundDate:(id)date;
- (id)productName;
- (id)purgeStagedDetectionsWithClock:(id)clock;
- (unint64_t)backgroundDetectionCountForDetectionType:(unint64_t)type;
- (void)_isAISFetchComplete;
- (void)_updateEarliestObservationDateWithDate:(id)date;
- (void)clearAllStagedDetections;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithAnotherSingleDeviceRecord:(id)record;
- (void)processAISFetchEvent:(id)event andAppendOutgoingRequestsTo:(id)to;
- (void)processBackgroundDetection:(id)detection;
- (void)processPlaySoundSuccess:(id)success andAppendOutgoingRequestsTo:(id)to;
- (void)processSurfacedAlert:(id)alert;
- (void)stageDetection:(id)detection;
- (void)updateAdvertisement:(id)advertisement andAppendOutgoingRequestsTo:(id)to;
- (void)updateSingleDeviceRecordOnSessionChangeWithCurrentDate:(id)date;
@end

@implementation TASingleDeviceRecord

- (TASingleDeviceRecord)initWithDeviceAdvertisement:(id)advertisement state:(unint64_t)state type:(unint64_t)type date:(id)date keepAliveInterval:(double)interval
{
  advertisementCopy = advertisement;
  dateCopy = date;
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
  if (advertisementCopy && dateCopy)
  {
    address = [advertisementCopy address];
    v18 = [address copy];
    address = v15->_address;
    v15->_address = v18;

    v20 = [(TASingleDeviceRecord *)v15 _generateTAUUID:advertisementCopy];
    uuid = v15->_uuid;
    v15->_uuid = v20;

    v15->_state = state;
    v15->_type = type;
    v22 = [dateCopy copy];
    creationDate = v15->_creationDate;
    v15->_creationDate = v22;

    intervalCopy = 0.0;
    if (interval >= 0.0)
    {
      intervalCopy = interval;
    }

    v15->_keepAliveInterval = intervalCopy;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stagedDetectionResults = v15->_stagedDetectionResults;
    v15->_stagedDetectionResults = v25;

    objc_storeStrong(&v15->_latestAdvertisement, advertisement);
    scanDate = [advertisementCopy scanDate];
    v28 = [dateCopy earlierDate:scanDate];
    earliestObservationDate = v15->_earliestObservationDate;
    v15->_earliestObservationDate = v28;

    v15->_hasSurfacedNotification = 0;
    v15->_numStagedDetections = 0;
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    firstStagedDetectionDate = v15->_firstStagedDetectionDate;
    v15->_firstStagedDetectionDate = distantFuture;

    v15->_numSurfacedAlerts = 0;
    v15->_numPotentialSurfacedAlerts = 0;
    distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
    firstSurfacedAlertDate = v15->_firstSurfacedAlertDate;
    v15->_firstSurfacedAlertDate = distantFuture2;

    v15->_firstSurfacedAlertType = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastSurfacedAlertDate = v15->_lastSurfacedAlertDate;
    v15->_lastSurfacedAlertDate = distantPast;

    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundDetectionTypesInTravelSession = v15->_backgroundDetectionTypesInTravelSession;
    v15->_backgroundDetectionTypesInTravelSession = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    backgroundDetectionCount = v15->_backgroundDetectionCount;
    v15->_backgroundDetectionCount = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    firstBackgroundDetectionDate = v15->_firstBackgroundDetectionDate;
    v15->_firstBackgroundDetectionDate = v40;

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    latestBeepOnMoveDate = v15->_latestBeepOnMoveDate;
    v15->_latestBeepOnMoveDate = distantPast2;

    distantFuture3 = [MEMORY[0x277CBEAA8] distantFuture];
    firstBeepOnMoveDate = v15->_firstBeepOnMoveDate;
    v15->_firstBeepOnMoveDate = distantFuture3;

    v15->_numBeepOnMove = 0;
    v15->_playSoundSuccessCount = 0;
    v15->_playSoundFailureCount = 0;
    distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
    latestPlaySoundAttemptDate = v15->_latestPlaySoundAttemptDate;
    v15->_latestPlaySoundAttemptDate = distantPast3;

    distantPast4 = [MEMORY[0x277CBEAA8] distantPast];
    lastAISAttemptDate = v15->_lastAISAttemptDate;
    v15->_lastAISAttemptDate = distantPast4;

    v15->_AISFetchState = 0;
    v15->_AISFetchCount = 0;
    goto LABEL_7;
  }

LABEL_8:

  return v16;
}

- (void)stageDetection:(id)detection
{
  v31 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v5 = detectionCopy;
  if (detectionCopy)
  {
    detection = [detectionCopy detection];
    latestAdvertisement = [detection latestAdvertisement];
    [(TASingleDeviceRecord *)self updateAdvertisement:latestAdvertisement andAppendOutgoingRequestsTo:0];

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
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    LODWORD(firstStagedDetectionDate) = [(NSDate *)firstStagedDetectionDate isEqual:distantFuture];

    if (firstStagedDetectionDate)
    {
      detection2 = [v5 detection];
      date = [detection2 date];
      v15 = self->_firstStagedDetectionDate;
      self->_firstStagedDetectionDate = date;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    detection3 = [v5 detection];
    locationHistory = [detection3 locationHistory];

    v18 = [locationHistory countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(locationHistory);
          }

          timestamp = [*(*(&v24 + 1) + 8 * v21) timestamp];
          [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:timestamp];

          ++v21;
        }

        while (v19 != v21);
        v19 = [locationHistory countByEnumeratingWithState:&v24 objects:v28 count:16];
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
    scanDate = [(TASPAdvertisement *)latestAdvertisement scanDate];
    distantFuture = [v4 dateWithTimeInterval:scanDate sinceDate:keepAliveInterval];
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  return distantFuture;
}

- (id)_generateTAUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    v5 = MEMORY[0x277CBEB28];
    address = [dCopy address];
    v7 = [v5 dataWithData:address];

    advertisementData = [v4 advertisementData];
    v9 = [advertisementData length];

    if (v9 == 22)
    {
      advertisementData2 = [v4 advertisementData];
      address2 = [v4 address];
      v12 = [advertisementData2 subdataWithRange:{0, 16 - objc_msgSend(address2, "length")}];
      [v7 appendData:v12];
    }

    else
    {
      advertisementData2 = [v4 address];
      [v7 increaseLengthBy:{16 - objc_msgSend(advertisementData2, "length")}];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    if ([v7 length] == 16)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];

      uUID = v14;
    }
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  return uUID;
}

- (BOOL)_shouldPushStagedDetection:(id)detection
{
  v18 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  _isAISFetchComplete = [(TASingleDeviceRecord *)self _isAISFetchComplete];
  v6 = [(TASingleDeviceRecord *)self _isKeepInStagingUntilComplete:detectionCopy];

  v7 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    address = [(TASingleDeviceRecord *)self address];
    hexString = [address hexString];
    v13[0] = 67240707;
    v13[1] = _isAISFetchComplete;
    v14 = 1026;
    v15 = v6;
    v16 = 2113;
    v17 = hexString;
    _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_DEFAULT, "#TASingleDeviceRecord shouldPushStagedDetection _isAISFetchComplete:%{public}d _isKeepInStagingUntilComplete:%{public}d for address, %{private}@", v13, 0x18u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return _isAISFetchComplete && v6;
}

- (BOOL)_isKeepInStagingUntilComplete:(id)complete
{
  completeCopy = complete;
  if (!completeCopy)
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

  scanDate = [(TASPAdvertisement *)latestAdvertisement scanDate];
  keepInStagingUntil = [completeCopy keepInStagingUntil];
  v8 = [scanDate compare:keepInStagingUntil] != -1;

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

- (id)purgeStagedDetectionsWithClock:(id)clock
{
  v32 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
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

  keepStagedDetectionAliveUntilDate = [(TASingleDeviceRecord *)self keepStagedDetectionAliveUntilDate];
  v12 = [keepStagedDetectionAliveUntilDate compare:clockCopy];

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
    getStagedDetections = [(TASingleDeviceRecord *)self getStagedDetections];
    [v16 addObjectsFromArray:getStagedDetections];

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
          detection = [v10 detection];
          [v4 addObject:detection];
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

- (void)_updateEarliestObservationDateWithDate:(id)date
{
  dateCopy = date;
  earliestObservationDate = self->_earliestObservationDate;
  p_earliestObservationDate = &self->_earliestObservationDate;
  v8 = dateCopy;
  if ([(NSDate *)earliestObservationDate compare:?]== NSOrderedDescending)
  {
    objc_storeStrong(p_earliestObservationDate, date);
  }
}

- (BOOL)shouldUpdateAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if (advertisementCopy)
  {
    latestAdvertisement = self->_latestAdvertisement;
    if (latestAdvertisement)
    {
      scanDate = [(TASPAdvertisement *)latestAdvertisement scanDate];
      scanDate2 = [advertisementCopy scanDate];
      v8 = [scanDate compare:scanDate2];

      if ([(TASPAdvertisement *)self->_latestAdvertisement isPosh])
      {
        isPosh = [advertisementCopy isPosh];
      }

      else
      {
        isPosh = 1;
      }

      v10 = (v8 == -1) & isPosh;
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

- (void)updateAdvertisement:(id)advertisement andAppendOutgoingRequestsTo:(id)to
{
  v35[2] = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  toCopy = to;
  if ([(TASingleDeviceRecord *)self shouldUpdateAdvertisement:advertisementCopy])
  {
    scanDate = [advertisementCopy scanDate];
    v10 = [(TASingleDeviceRecord *)self purgeStagedDetectionsWithClock:scanDate];

    objc_storeStrong(&self->_latestAdvertisement, advertisement);
  }

  if ([advertisementCopy beepOnMoveHigh])
  {
    scanDate2 = [advertisementCopy scanDate];
    [scanDate2 timeIntervalSinceDate:self->_latestBeepOnMoveDate];
    v13 = v12;

    latestBeepOnMoveDate = self->_latestBeepOnMoveDate;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v16 = [(NSDate *)latestBeepOnMoveDate isEqual:distantPast];

    if (v13 > 3600.0)
    {
      ++self->_numBeepOnMove;
      if ((v16 & 1) == 0)
      {
        v34[0] = @"timeSinceBOM";
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v34[1] = @"productInfo";
        v35[0] = v17;
        productName = [(TASingleDeviceRecord *)self productName];
        v35[1] = productName;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

        v20 = [TAOutgoingRequests alloc];
        scanDate3 = [advertisementCopy scanDate];
        v22 = [(TAOutgoingRequests *)v20 initWithRequestKey:@"BOMObservationMetrics" additionalInformation:v19 date:scanDate3];

        [toCopy addObject:v22];
      }
    }

    v23 = self->_latestBeepOnMoveDate;
    scanDate4 = [advertisementCopy scanDate];
    v25 = [(NSDate *)v23 compare:scanDate4];

    if (v25 == -1)
    {
      scanDate5 = [advertisementCopy scanDate];
      v27 = self->_latestBeepOnMoveDate;
      self->_latestBeepOnMoveDate = scanDate5;
    }

    firstBeepOnMoveDate = self->_firstBeepOnMoveDate;
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    LODWORD(firstBeepOnMoveDate) = [(NSDate *)firstBeepOnMoveDate isEqual:distantFuture];

    if (firstBeepOnMoveDate)
    {
      scanDate6 = [advertisementCopy scanDate];
      v31 = self->_firstBeepOnMoveDate;
      self->_firstBeepOnMoveDate = scanDate6;
    }
  }

  scanDate7 = [advertisementCopy scanDate];
  [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:scanDate7];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithAnotherSingleDeviceRecord:(id)record
{
  v123 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  address = self->_address;
  address = [recordCopy address];

  if (address != address)
  {
    goto LABEL_53;
  }

  uuid = [recordCopy uuid];
  uuid = self->_uuid;
  self->_uuid = uuid;

  self->_AISFetchState = [recordCopy AISFetchState];
  self->_AISFetchCount += [recordCopy AISFetchCount];
  accessoryInfo = [recordCopy accessoryInfo];
  accessoryInfo = self->_accessoryInfo;
  self->_accessoryInfo = accessoryInfo;

  self->_state = [recordCopy state];
  self->_type = [recordCopy type];
  creationDate = self->_creationDate;
  creationDate = [recordCopy creationDate];
  v13 = [(NSDate *)creationDate earlierDate:creationDate];
  v14 = self->_creationDate;
  self->_creationDate = v13;

  stagedDetectionResults = self->_stagedDetectionResults;
  stagedDetectionResults = [recordCopy stagedDetectionResults];
  [(NSMutableArray *)stagedDetectionResults addObjectsFromArray:stagedDetectionResults];

  latestAdvertisement = [recordCopy latestAdvertisement];
  if (latestAdvertisement)
  {
    latestAdvertisement = self->_latestAdvertisement;

    if (latestAdvertisement)
    {
      scanDate = [(TASPAdvertisement *)self->_latestAdvertisement scanDate];
      latestAdvertisement2 = [recordCopy latestAdvertisement];
      scanDate2 = [latestAdvertisement2 scanDate];
      v22 = [scanDate compare:scanDate2];

      if (v22 != -1)
      {
        v23 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          v24 = self->_address;
          v25 = v23;
          hexString = [(NSData *)v24 hexString];
          buf = 68289283;
          v119 = 2082;
          v120 = "";
          v121 = 2081;
          uTF8String = [hexString UTF8String];
          v27 = "{msg%{public}.0s:#TASingleDeviceRecord retaining latest advertisement as it is more recent, address:%{private}s}";
LABEL_11:
          _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEBUG, v27, &buf, 0x1Cu);

          goto LABEL_13;
        }

        goto LABEL_13;
      }

LABEL_12:
      latestAdvertisement3 = [recordCopy latestAdvertisement];
      v33 = self->_latestAdvertisement;
      self->_latestAdvertisement = latestAdvertisement3;

      goto LABEL_13;
    }
  }

  latestAdvertisement4 = [recordCopy latestAdvertisement];
  if (latestAdvertisement4)
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
    hexString = [(NSData *)v31 hexString];
    buf = 68289283;
    v119 = 2082;
    v120 = "";
    v121 = 2081;
    uTF8String = [hexString UTF8String];
    v27 = "{msg%{public}.0s:#TASingleDeviceRecord other record has no latest advertisement, address:%{private}s}";
    goto LABEL_11;
  }

LABEL_13:
  backgroundDetectionTypesInTravelSession = self->_backgroundDetectionTypesInTravelSession;
  backgroundDetectionTypesInTravelSession = [recordCopy backgroundDetectionTypesInTravelSession];
  [(NSMutableSet *)backgroundDetectionTypesInTravelSession unionSet:backgroundDetectionTypesInTravelSession];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = [recordCopy backgroundDetectionCount];
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
        backgroundDetectionCount = [recordCopy backgroundDetectionCount];
        v42 = [backgroundDetectionCount objectForKeyedSubscript:v40];

        v43 = [(NSMutableDictionary *)self->_backgroundDetectionCount objectForKeyedSubscript:v40];

        if (v43)
        {
          v44 = MEMORY[0x277CCABB0];
          v45 = [(NSMutableDictionary *)self->_backgroundDetectionCount objectForKeyedSubscript:v40];
          v46 = recordCopy;
          unsignedIntegerValue = [v45 unsignedIntegerValue];
          v48 = [v42 unsignedIntegerValue] + unsignedIntegerValue;
          recordCopy = v46;
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

  latestBeepOnMoveDate = [recordCopy latestBeepOnMoveDate];
  if (latestBeepOnMoveDate && (v51 = self->_latestBeepOnMoveDate, latestBeepOnMoveDate, v51))
  {
    latestBeepOnMoveDate = self->_latestBeepOnMoveDate;
    latestBeepOnMoveDate2 = [recordCopy latestBeepOnMoveDate];
    v54 = [(NSDate *)latestBeepOnMoveDate compare:latestBeepOnMoveDate2];

    if (v54 == -1)
    {
      latestBeepOnMoveDate3 = [recordCopy latestBeepOnMoveDate];
      v56 = self->_latestBeepOnMoveDate;
      self->_latestBeepOnMoveDate = latestBeepOnMoveDate3;
    }
  }

  else
  {
    v57 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v58 = self->_address;
      v59 = v57;
      hexString2 = [(NSData *)v58 hexString];
      uTF8String2 = [hexString2 UTF8String];
      buf = 68289283;
      v119 = 2082;
      v120 = "";
      v121 = 2081;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_26F2E2000, v59, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TASingleDeviceRecord merging nil latestBeepOnMoveDate, address:%{private}s}", &buf, 0x1Cu);
    }
  }

  firstBeepOnMoveDate = [recordCopy firstBeepOnMoveDate];
  if (firstBeepOnMoveDate)
  {
    firstBeepOnMoveDate = self->_firstBeepOnMoveDate;

    if (firstBeepOnMoveDate)
    {
      v64 = self->_firstBeepOnMoveDate;
      firstBeepOnMoveDate2 = [recordCopy firstBeepOnMoveDate];
      v66 = [(NSDate *)v64 compare:firstBeepOnMoveDate2];

      if (v66 == 1)
      {
        firstBeepOnMoveDate3 = [recordCopy firstBeepOnMoveDate];
        v68 = self->_firstBeepOnMoveDate;
        self->_firstBeepOnMoveDate = firstBeepOnMoveDate3;
      }
    }
  }

  self->_numBeepOnMove += [recordCopy numBeepOnMove];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  firstBackgroundDetectionDate = [recordCopy firstBackgroundDetectionDate];
  v70 = [firstBackgroundDetectionDate countByEnumeratingWithState:&v108 objects:v116 count:16];
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
          objc_enumerationMutation(firstBackgroundDetectionDate);
        }

        v74 = *(*(&v108 + 1) + 8 * j);
        firstBackgroundDetectionDate2 = [recordCopy firstBackgroundDetectionDate];
        v76 = [firstBackgroundDetectionDate2 objectForKeyedSubscript:v74];

        v77 = [(NSMutableDictionary *)self->_firstBackgroundDetectionDate objectForKeyedSubscript:v74];
        v78 = v77;
        if (!v77 || [v77 compare:v76] == 1)
        {
          [(NSMutableDictionary *)self->_firstBackgroundDetectionDate setObject:v76 forKey:v74];
        }
      }

      v71 = [firstBackgroundDetectionDate countByEnumeratingWithState:&v108 objects:v116 count:16];
    }

    while (v71);
  }

  firstStagedDetectionDate = self->_firstStagedDetectionDate;
  firstStagedDetectionDate = [recordCopy firstStagedDetectionDate];
  v81 = [(NSDate *)firstStagedDetectionDate compare:firstStagedDetectionDate];

  if (v81 == 1)
  {
    firstStagedDetectionDate2 = [recordCopy firstStagedDetectionDate];
    v83 = self->_firstStagedDetectionDate;
    self->_firstStagedDetectionDate = firstStagedDetectionDate2;
  }

  self->_numStagedDetections += [recordCopy numStagedDetections];
  firstSurfacedAlertDate = self->_firstSurfacedAlertDate;
  firstSurfacedAlertDate = [recordCopy firstSurfacedAlertDate];
  v86 = [(NSDate *)firstSurfacedAlertDate compare:firstSurfacedAlertDate];

  if (v86 == 1)
  {
    firstSurfacedAlertDate2 = [recordCopy firstSurfacedAlertDate];
    v88 = self->_firstSurfacedAlertDate;
    self->_firstSurfacedAlertDate = firstSurfacedAlertDate2;

    self->_firstSurfacedAlertType = [recordCopy firstSurfacedAlertType];
  }

  lastSurfacedAlertDate = self->_lastSurfacedAlertDate;
  lastSurfacedAlertDate = [recordCopy lastSurfacedAlertDate];
  v91 = [(NSDate *)lastSurfacedAlertDate compare:lastSurfacedAlertDate];

  if (v91 == -1)
  {
    lastSurfacedAlertDate2 = [recordCopy lastSurfacedAlertDate];
    v93 = self->_lastSurfacedAlertDate;
    self->_lastSurfacedAlertDate = lastSurfacedAlertDate2;
  }

  self->_numSurfacedAlerts += [recordCopy numSurfacedAlerts];
  self->_numPotentialSurfacedAlerts += [recordCopy numPotentialSurfacedAlerts];
  earliestObservationDate = [recordCopy earliestObservationDate];
  [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:earliestObservationDate];

  self->_playSoundSuccessCount += [recordCopy playSoundSuccessCount];
  playSoundFailureCount = [recordCopy playSoundFailureCount];
  latestPlaySoundAttemptDate = self->_latestPlaySoundAttemptDate;
  self->_playSoundFailureCount += playSoundFailureCount;
  latestPlaySoundAttemptDate = [recordCopy latestPlaySoundAttemptDate];
  v98 = [(NSDate *)latestPlaySoundAttemptDate compare:latestPlaySoundAttemptDate];

  if (v98 == -1)
  {
    latestPlaySoundAttemptDate2 = [recordCopy latestPlaySoundAttemptDate];
    v100 = self->_latestPlaySoundAttemptDate;
    self->_latestPlaySoundAttemptDate = latestPlaySoundAttemptDate2;
  }

  lastAISAttemptDate = self->_lastAISAttemptDate;
  lastAISAttemptDate = [recordCopy lastAISAttemptDate];
  v103 = [(NSDate *)lastAISAttemptDate compare:lastAISAttemptDate];

  if (v103 == -1)
  {
    lastAISAttemptDate2 = [recordCopy lastAISAttemptDate];
    v105 = self->_lastAISAttemptDate;
    self->_lastAISAttemptDate = lastAISAttemptDate2;
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
  stagedDetectionResults = [(TASingleDeviceRecord *)self stagedDetectionResults];
  v3 = [stagedDetectionResults countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(stagedDetectionResults);
        }

        detection = [*(*(&v10 + 1) + 8 * i) detection];
        immediacyType = [detection immediacyType];

        if (immediacyType == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [stagedDetectionResults countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)updateSingleDeviceRecordOnSessionChangeWithCurrentDate:(id)date
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
  accessoryInfo = [(TASingleDeviceRecord *)self accessoryInfo];

  if (accessoryInfo)
  {
    accessoryInfo2 = [(TASingleDeviceRecord *)self accessoryInfo];
    v5 = [(TASPAdvertisement *)self->_latestAdvertisement getLatestAdvTypeToString:0];
    v6 = [accessoryInfo2 accessoryTypeNameWithAdvTypeString:v5];
  }

  else
  {
    latestAdvertisement = self->_latestAdvertisement;
    accessoryInfo2 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TASPAdvertisement *)latestAdvertisement getDeviceType]];
    v6 = [(TASPAdvertisement *)latestAdvertisement getLatestAdvTypeToString:accessoryInfo2];
  }

  return v6;
}

- (void)processSurfacedAlert:(id)alert
{
  v27 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  firstSurfacedAlertDate = self->_firstSurfacedAlertDate;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  LODWORD(firstSurfacedAlertDate) = [(NSDate *)firstSurfacedAlertDate isEqual:distantFuture];

  if (firstSurfacedAlertDate)
  {
    date = [alertCopy date];
    v8 = self->_firstSurfacedAlertDate;
    self->_firstSurfacedAlertDate = date;

    self->_firstSurfacedAlertType = [alertCopy detectionType];
  }

  lastSurfacedAlertDate = self->_lastSurfacedAlertDate;
  date2 = [alertCopy date];
  v11 = [(NSDate *)lastSurfacedAlertDate compare:date2];

  if (v11 == -1)
  {
    date3 = [alertCopy date];
    v13 = self->_lastSurfacedAlertDate;
    self->_lastSurfacedAlertDate = date3;
  }

  ++self->_numSurfacedAlerts;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  locationHistory = [alertCopy locationHistory];
  v15 = [locationHistory countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(locationHistory);
        }

        timestamp = [*(*(&v22 + 1) + 8 * v18) timestamp];
        [(TASingleDeviceRecord *)self _updateEarliestObservationDateWithDate:timestamp];

        ++v18;
      }

      while (v16 != v18);
      v16 = [locationHistory countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  latestAdvertisement = [alertCopy latestAdvertisement];
  [(TASingleDeviceRecord *)self updateAdvertisement:latestAdvertisement andAppendOutgoingRequestsTo:0];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)processBackgroundDetection:(id)detection
{
  v34 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  v5 = detectionCopy;
  if (detectionCopy)
  {
    latestAdvertisement = [detectionCopy latestAdvertisement];
    [(TASingleDeviceRecord *)self updateAdvertisement:latestAdvertisement andAppendOutgoingRequestsTo:0];

    backgroundDetectionTypesInTravelSession = self->_backgroundDetectionTypesInTravelSession;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
    if (([(NSMutableSet *)backgroundDetectionTypesInTravelSession containsObject:v8]& 1) == 0 && [(TASingleDeviceRecord *)self state]!= 2)
    {
      state = [(TASingleDeviceRecord *)self state];

      if (state == 1)
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
      date = [v5 date];
      v25 = [v23 compare:date];

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
    date2 = [v5 date];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "detectionType")}];
    [(NSMutableDictionary *)v28 setObject:date2 forKey:v30];

    goto LABEL_19;
  }

LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
}

- (unint64_t)backgroundDetectionCountForDetectionType:(unint64_t)type
{
  backgroundDetectionCount = self->_backgroundDetectionCount;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)backgroundDetectionCount objectForKeyedSubscript:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = self->_backgroundDetectionCount;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)firstDetectionDateForDetectionType:(unint64_t)type
{
  firstBackgroundDetectionDate = self->_firstBackgroundDetectionDate;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v5 = [(NSMutableDictionary *)firstBackgroundDetectionDate objectForKeyedSubscript:v4];

  return v5;
}

- (id)preparePlaySoundTAOutgoingRequest:(id)request lastPlaySoundDate:(id)date
{
  requestCopy = request;
  dateCopy = date;
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
  earliestObservationDate = [(TASingleDeviceRecord *)self earliestObservationDate];
  v11 = [v9 numberWithInteger:{objc_msgSend(earliestObservationDate, "getMinutesSinceStartOfDay")}];
  [v8 setObject:v11 forKey:@"firstSeenMinutes"];

  firstSurfacedAlertDate = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
  if (firstSurfacedAlertDate)
  {
    v13 = firstSurfacedAlertDate;
    firstSurfacedAlertDate2 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v16 = [firstSurfacedAlertDate2 isEqual:distantFuture];

    if ((v16 & 1) == 0)
    {
      v17 = MEMORY[0x277CCABB0];
      firstSurfacedAlertDate3 = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
      earliestObservationDate2 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [firstSurfacedAlertDate3 timeIntervalSinceDate:earliestObservationDate2];
      v21 = [v17 numberWithInt:(v20 / 60)];
      [v8 setObject:v21 forKey:@"firstAlertMinutes"];
    }
  }

  lastSurfacedAlertDate = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
  if (lastSurfacedAlertDate)
  {
    v23 = lastSurfacedAlertDate;
    lastSurfacedAlertDate2 = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v26 = [lastSurfacedAlertDate2 isEqual:distantPast];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x277CCABB0];
      lastSurfacedAlertDate3 = [(TASingleDeviceRecord *)self lastSurfacedAlertDate];
      earliestObservationDate3 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [lastSurfacedAlertDate3 timeIntervalSinceDate:earliestObservationDate3];
      v31 = [v27 numberWithInt:(v30 / 60)];
      [v8 setObject:v31 forKey:@"lastAlertMinutes"];
    }
  }

  if (dateCopy)
  {
    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    if (([dateCopy isEqual:distantPast2] & 1) == 0)
    {
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
      v34 = [dateCopy isEqual:distantFuture2];

      if (v34)
      {
        goto LABEL_12;
      }

      v35 = MEMORY[0x277CCABB0];
      distantPast2 = [(TASingleDeviceRecord *)self earliestObservationDate];
      [dateCopy timeIntervalSinceDate:distantPast2];
      v37 = [v35 numberWithInt:(v36 / 60)];
      [v8 setObject:v37 forKey:@"lastAttemptMinutes"];
    }
  }

LABEL_12:
  date = [requestCopy date];
  if (!date)
  {
    goto LABEL_17;
  }

  date4 = date;
  date2 = [requestCopy date];
  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  if (([date2 isEqual:distantPast3] & 1) == 0)
  {
    date3 = [requestCopy date];
    distantFuture3 = [MEMORY[0x277CBEAA8] distantFuture];
    v44 = [date3 isEqual:distantFuture3];

    if (v44)
    {
      goto LABEL_17;
    }

    v45 = MEMORY[0x277CCABB0];
    date4 = [requestCopy date];
    date2 = [(TASingleDeviceRecord *)self earliestObservationDate];
    [date4 timeIntervalSinceDate:date2];
    distantPast3 = [v45 numberWithInt:(v46 / 60)];
    [v8 setObject:distantPast3 forKey:@"soundMinutes"];
  }

LABEL_17:
  productName = [(TASingleDeviceRecord *)self productName];
  [v8 setObject:productName forKey:@"productInfo"];

  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TASingleDeviceRecord playSoundAttemptCount](self, "playSoundAttemptCount")}];
  [v8 setObject:v48 forKey:@"soundCount"];

  v49 = [requestCopy successType] == 1;
  v50 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [v8 setObject:v50 forKey:@"success"];

  v51 = [TAOutgoingRequests alloc];
  date5 = [requestCopy date];
  v53 = [(TAOutgoingRequests *)v51 initWithRequestKey:@"PlaySoundWithDetectionMetrics" additionalInformation:v8 date:date5];

  return v53;
}

- (void)processPlaySoundSuccess:(id)success andAppendOutgoingRequestsTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  successCopy = success;
  toCopy = to;
  if (!successCopy)
  {
    goto LABEL_14;
  }

  address = [successCopy address];

  if (!address)
  {
    goto LABEL_14;
  }

  address2 = [successCopy address];
  address3 = [(TASingleDeviceRecord *)self address];
  v11 = [address2 isEqual:address3];

  if (v11)
  {
    successType = [successCopy successType];
    if (successType == 1)
    {
      v13 = 168;
    }

    else
    {
      if (successType)
      {
LABEL_11:
        v15 = self->_latestPlaySoundAttemptDate;
        latestPlaySoundAttemptDate = self->_latestPlaySoundAttemptDate;
        date = [successCopy date];
        v18 = [(NSDate *)latestPlaySoundAttemptDate compare:date];

        if (v18 == -1)
        {
          date2 = [successCopy date];
          v20 = self->_latestPlaySoundAttemptDate;
          self->_latestPlaySoundAttemptDate = date2;
        }

        v21 = [(TASingleDeviceRecord *)self preparePlaySoundTAOutgoingRequest:successCopy lastPlaySoundDate:v15];
        [toCopy addObject:v21];

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
    v27 = successCopy;
    _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TASingleDeviceRecord mismatched address, playsoundSuccess:%{private}@}", v23, 0x1Cu);
  }

LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)prepareAISFetchTAOutgoingRequest:(id)request lastAISFetchDate:(id)date
{
  requestCopy = request;
  dateCopy = date;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [requestCopy successType] == 1;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [v8 setObject:v10 forKey:@"success"];

  productName = [(TASingleDeviceRecord *)self productName];
  [v8 setObject:productName forKey:@"deviceType"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_AISFetchCount];
  [v8 setObject:v12 forKey:@"fetchCount"];

  v13 = MEMORY[0x277CCABB0];
  date = [requestCopy date];
  earliestObservationDate = [(TASingleDeviceRecord *)self earliestObservationDate];
  [date timeIntervalSinceDate:earliestObservationDate];
  v16 = [v13 numberWithDouble:?];
  [v8 setObject:v16 forKey:@"firstSeenSeconds"];

  if (!dateCopy)
  {
    goto LABEL_5;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if ([dateCopy isEqual:distantPast])
  {

LABEL_5:
    [v8 setObject:&unk_287F6FF68 forKey:@"lastAttemptMinutes"];
    goto LABEL_6;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v19 = [dateCopy isEqual:distantFuture];

  if (v19)
  {
    goto LABEL_5;
  }

  v24 = MEMORY[0x277CCABB0];
  date2 = [requestCopy date];
  [date2 timeIntervalSinceDate:dateCopy];
  v27 = [v24 numberWithInt:(v26 / 60)];
  [v8 setObject:v27 forKey:@"lastAttemptMinutes"];

LABEL_6:
  v20 = [TAOutgoingRequests alloc];
  date3 = [requestCopy date];
  v22 = [(TAOutgoingRequests *)v20 initWithRequestKey:@"AISFetchMetrics" additionalInformation:v8 date:date3];

  return v22;
}

- (void)processAISFetchEvent:(id)event andAppendOutgoingRequestsTo:(id)to
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  toCopy = to;
  if (!eventCopy)
  {
    goto LABEL_19;
  }

  uuid = [eventCopy uuid];

  if (!uuid)
  {
    goto LABEL_19;
  }

  uuid2 = [eventCopy uuid];
  uuid3 = [(TASingleDeviceRecord *)self uuid];
  v11 = [uuid2 isEqual:uuid3];

  if (v11)
  {
    info = [eventCopy info];
    [(TASingleDeviceRecord *)self setAccessoryInfo:info];

    successType = [eventCopy successType];
    AISFetchState = self->_AISFetchState;
    if (successType == 1)
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
    date = [eventCopy date];
    v22 = [(NSDate *)lastAISAttemptDate compare:date];

    if (v22 == -1)
    {
      date2 = [eventCopy date];
      v24 = self->_lastAISAttemptDate;
      self->_lastAISAttemptDate = date2;
    }

    v25 = [(TASingleDeviceRecord *)self prepareAISFetchTAOutgoingRequest:eventCopy lastAISFetchDate:v19];
    [toCopy addObject:v25];

    goto LABEL_19;
  }

  v16 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = [eventCopy description];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v6 = equalCopy;
  address = [(TASingleDeviceRecord *)self address];
  address2 = [(TASingleDeviceRecord *)v6 address];
  if (address == address2 || (-[TASingleDeviceRecord address](self, "address"), v9 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord address](v6, "address"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v9, [v9 isEqual:?]))
  {
    uuid = [(TASingleDeviceRecord *)self uuid];
    uuid2 = [(TASingleDeviceRecord *)v6 uuid];
    v114 = uuid;
    accessoryInfo4 = uuid != uuid2;
    if (uuid == uuid2 || (-[TASingleDeviceRecord uuid](self, "uuid"), v17 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord uuid](v6, "uuid"), v111 = objc_claimAutoreleasedReturnValue(), v112 = v17, [v17 isEqual:?]))
    {
      state = [(TASingleDeviceRecord *)self state];
      *&v117[56] = accessoryInfo4;
      if (state == [(TASingleDeviceRecord *)v6 state]&& (v19 = [(TASingleDeviceRecord *)self type], v19 == [(TASingleDeviceRecord *)v6 type]))
      {
        creationDate = [(TASingleDeviceRecord *)self creationDate];
        creationDate2 = [(TASingleDeviceRecord *)v6 creationDate];
        v110 = creationDate;
        v21 = creationDate != creationDate2;
        if (creationDate == creationDate2 || (-[TASingleDeviceRecord creationDate](self, "creationDate"), v22 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord creationDate](v6, "creationDate"), v107 = objc_claimAutoreleasedReturnValue(), v108 = v22, [v22 isEqual:?]))
        {
          [(TASingleDeviceRecord *)self keepAliveInterval];
          v31 = v30;
          [(TASingleDeviceRecord *)v6 keepAliveInterval];
          *&v117[52] = v21;
          if (v31 == v32)
          {
            stagedDetectionResults = [(TASingleDeviceRecord *)self stagedDetectionResults];
            stagedDetectionResults2 = [(TASingleDeviceRecord *)v6 stagedDetectionResults];
            v106 = stagedDetectionResults;
            v34 = stagedDetectionResults != stagedDetectionResults2;
            if (stagedDetectionResults == stagedDetectionResults2 || (-[TASingleDeviceRecord stagedDetectionResults](self, "stagedDetectionResults"), v35 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord stagedDetectionResults](v6, "stagedDetectionResults"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v35, [v35 isEqual:?]))
            {
              latestAdvertisement = [(TASingleDeviceRecord *)self latestAdvertisement];
              latestAdvertisement2 = [(TASingleDeviceRecord *)v6 latestAdvertisement];
              v104 = latestAdvertisement;
              HIDWORD(v118[2]) = latestAdvertisement != latestAdvertisement2;
              *&v117[48] = v34;
              if (latestAdvertisement == latestAdvertisement2 || (-[TASingleDeviceRecord latestAdvertisement](self, "latestAdvertisement"), v37 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord latestAdvertisement](v6, "latestAdvertisement"), v97 = objc_claimAutoreleasedReturnValue(), v98 = v37, [v37 isEqual:?]))
              {
                earliestObservationDate = [(TASingleDeviceRecord *)self earliestObservationDate];
                earliestObservationDate2 = [(TASingleDeviceRecord *)v6 earliestObservationDate];
                v100 = earliestObservationDate;
                v39 = earliestObservationDate == earliestObservationDate2;
                v40 = earliestObservationDate != earliestObservationDate2;
                if (v39)
                {
                  *&v117[44] = v40;
                }

                else
                {
                  earliestObservationDate3 = [(TASingleDeviceRecord *)self earliestObservationDate];
                  earliestObservationDate4 = [(TASingleDeviceRecord *)v6 earliestObservationDate];
                  v96 = earliestObservationDate3;
                  if (![earliestObservationDate3 isEqual:?])
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

                hasSurfacedNotification = [(TASingleDeviceRecord *)self hasSurfacedNotification];
                if (hasSurfacedNotification == [(TASingleDeviceRecord *)v6 hasSurfacedNotification])
                {
                  backgroundDetectionCount = [(TASingleDeviceRecord *)self backgroundDetectionCount];
                  backgroundDetectionCount2 = [(TASingleDeviceRecord *)v6 backgroundDetectionCount];
                  v94 = backgroundDetectionCount;
                  v39 = backgroundDetectionCount == backgroundDetectionCount2;
                  v44 = backgroundDetectionCount != backgroundDetectionCount2;
                  if (v39 || (-[TASingleDeviceRecord backgroundDetectionCount](self, "backgroundDetectionCount"), v45 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord backgroundDetectionCount](v6, "backgroundDetectionCount"), v89 = objc_claimAutoreleasedReturnValue(), v90 = v45, [v45 isEqual:?]))
                  {
                    firstBackgroundDetectionDate = [(TASingleDeviceRecord *)self firstBackgroundDetectionDate];
                    firstBackgroundDetectionDate2 = [(TASingleDeviceRecord *)v6 firstBackgroundDetectionDate];
                    v92 = firstBackgroundDetectionDate;
                    LODWORD(v118[2]) = firstBackgroundDetectionDate != firstBackgroundDetectionDate2;
                    *&v117[40] = v44;
                    if (firstBackgroundDetectionDate == firstBackgroundDetectionDate2 || (-[TASingleDeviceRecord firstBackgroundDetectionDate](self, "firstBackgroundDetectionDate"), v47 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstBackgroundDetectionDate](v6, "firstBackgroundDetectionDate"), v85 = objc_claimAutoreleasedReturnValue(), v86 = v47, [v47 isEqual:?]))
                    {
                      backgroundDetectionTypesInTravelSession = [(TASingleDeviceRecord *)self backgroundDetectionTypesInTravelSession];
                      backgroundDetectionTypesInTravelSession2 = [(TASingleDeviceRecord *)v6 backgroundDetectionTypesInTravelSession];
                      v88 = backgroundDetectionTypesInTravelSession;
                      HIDWORD(v118[1]) = backgroundDetectionTypesInTravelSession != backgroundDetectionTypesInTravelSession2;
                      if (backgroundDetectionTypesInTravelSession == backgroundDetectionTypesInTravelSession2 || (-[TASingleDeviceRecord backgroundDetectionTypesInTravelSession](self, "backgroundDetectionTypesInTravelSession"), v49 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord backgroundDetectionTypesInTravelSession](v6, "backgroundDetectionTypesInTravelSession"), v81 = objc_claimAutoreleasedReturnValue(), v82 = v49, [v49 isEqual:?]))
                      {
                        latestBeepOnMoveDate = [(TASingleDeviceRecord *)self latestBeepOnMoveDate];
                        latestBeepOnMoveDate2 = [(TASingleDeviceRecord *)v6 latestBeepOnMoveDate];
                        v84 = latestBeepOnMoveDate;
                        LODWORD(v118[1]) = latestBeepOnMoveDate != latestBeepOnMoveDate2;
                        if (latestBeepOnMoveDate == latestBeepOnMoveDate2 || (-[TASingleDeviceRecord latestBeepOnMoveDate](self, "latestBeepOnMoveDate"), v51 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord latestBeepOnMoveDate](v6, "latestBeepOnMoveDate"), v77 = objc_claimAutoreleasedReturnValue(), v78 = v51, [v51 isEqual:?]))
                        {
                          firstBeepOnMoveDate = [(TASingleDeviceRecord *)self firstBeepOnMoveDate];
                          firstBeepOnMoveDate2 = [(TASingleDeviceRecord *)v6 firstBeepOnMoveDate];
                          HIDWORD(v118[0]) = firstBeepOnMoveDate != firstBeepOnMoveDate2;
                          v80 = firstBeepOnMoveDate;
                          if (firstBeepOnMoveDate == firstBeepOnMoveDate2 || (-[TASingleDeviceRecord firstBeepOnMoveDate](self, "firstBeepOnMoveDate"), v53 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstBeepOnMoveDate](v6, "firstBeepOnMoveDate"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v53, [v53 isEqual:?]))
                          {
                            numBeepOnMove = [(TASingleDeviceRecord *)self numBeepOnMove];
                            if (numBeepOnMove == [(TASingleDeviceRecord *)v6 numBeepOnMove])
                            {
                              firstStagedDetectionDate = [(TASingleDeviceRecord *)self firstStagedDetectionDate];
                              firstStagedDetectionDate2 = [(TASingleDeviceRecord *)v6 firstStagedDetectionDate];
                              v74 = firstStagedDetectionDate;
                              v39 = firstStagedDetectionDate == firstStagedDetectionDate2;
                              v56 = firstStagedDetectionDate != firstStagedDetectionDate2;
                              if (v39)
                              {
                                *&v117[36] = v56;
                              }

                              else
                              {
                                firstStagedDetectionDate3 = [(TASingleDeviceRecord *)self firstStagedDetectionDate];
                                firstStagedDetectionDate4 = [(TASingleDeviceRecord *)v6 firstStagedDetectionDate];
                                v72 = firstStagedDetectionDate3;
                                if (![firstStagedDetectionDate3 isEqual:?])
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

                              numStagedDetections = [(TASingleDeviceRecord *)self numStagedDetections];
                              if (numStagedDetections == [(TASingleDeviceRecord *)v6 numStagedDetections])
                              {
                                firstSurfacedAlertDate = [(TASingleDeviceRecord *)self firstSurfacedAlertDate];
                                firstSurfacedAlertDate2 = [(TASingleDeviceRecord *)v6 firstSurfacedAlertDate];
                                v70 = firstSurfacedAlertDate;
                                LODWORD(v118[0]) = firstSurfacedAlertDate != firstSurfacedAlertDate2;
                                if (firstSurfacedAlertDate == firstSurfacedAlertDate2 || (-[TASingleDeviceRecord firstSurfacedAlertDate](self, "firstSurfacedAlertDate"), v60 = objc_claimAutoreleasedReturnValue(), -[TASingleDeviceRecord firstSurfacedAlertDate](v6, "firstSurfacedAlertDate"), v67 = objc_claimAutoreleasedReturnValue(), v68 = v60, [v60 isEqual:?]))
                                {
                                  firstSurfacedAlertType = [(TASingleDeviceRecord *)self firstSurfacedAlertType];
                                  if (firstSurfacedAlertType == [(TASingleDeviceRecord *)v6 firstSurfacedAlertType])
                                  {
                                    accessoryInfo = [(TASingleDeviceRecord *)self accessoryInfo];
                                    accessoryInfo2 = [(TASingleDeviceRecord *)v6 accessoryInfo];
                                    v66 = accessoryInfo;
                                    if (accessoryInfo == accessoryInfo2)
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
                                      accessoryInfo3 = [(TASingleDeviceRecord *)self accessoryInfo];
                                      accessoryInfo4 = [(TASingleDeviceRecord *)v6 accessoryInfo];
                                      v64 = accessoryInfo3;
                                      v15 = [accessoryInfo3 isEqual:accessoryInfo4];
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
    v23 = address2;
    v24 = address;
    v25 = v11;
    v26 = v10;
    v27 = v12;
    v28 = v13;

    v13 = v28;
    v12 = v27;
    v10 = v26;
    v11 = v25;
    address = v24;
    address2 = v23;
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

  if (address != address2)
  {
  }

LABEL_72:
  return v15;
}

- (id)descriptionDictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"Address";
  hexString = [(NSData *)self->_address hexString];
  v13[0] = hexString;
  v12[1] = @"State";
  v4 = [TADeviceRecord notificationInternalStateToString:self->_state];
  v13[1] = v4;
  v12[2] = @"Type";
  v5 = [TADeviceInformation deviceTypeToString:self->_type];
  v13[2] = v5;
  v12[3] = @"CreationDate";
  getDateString = [(NSDate *)self->_creationDate getDateString];
  v13[3] = getDateString;
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
  descriptionDictionary = [(TASingleDeviceRecord *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (TASingleDeviceRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v58.receiver = self;
  v58.super_class = TASingleDeviceRecord;
  v5 = [(TASingleDeviceRecord *)&v58 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    [coderCopy decodeDoubleForKey:@"KeepAliveInterval"];
    v5->_keepAliveInterval = v12;
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"StagedResults"];
    stagedDetectionResults = v5->_stagedDetectionResults;
    v5->_stagedDetectionResults = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LatestAdvert"];
    latestAdvertisement = v5->_latestAdvertisement;
    v5->_latestAdvertisement = v18;

    if (!v5->_uuid)
    {
      v20 = [(TASingleDeviceRecord *)v5 _generateTAUUID:v5->_latestAdvertisement];
      v21 = v5->_uuid;
      v5->_uuid = v20;
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstObsDate"];
    earliestObservationDate = v5->_earliestObservationDate;
    v5->_earliestObservationDate = v22;

    v5->_hasSurfacedNotification = [coderCopy decodeBoolForKey:@"Surfaced"];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"BackgroundSet"];
    backgroundDetectionTypesInTravelSession = v5->_backgroundDetectionTypesInTravelSession;
    v5->_backgroundDetectionTypesInTravelSession = v27;

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"BackgroundCount"];
    backgroundDetectionCount = v5->_backgroundDetectionCount;
    v5->_backgroundDetectionCount = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"BackgroundDate"];
    firstBackgroundDetectionDate = v5->_firstBackgroundDetectionDate;
    v5->_firstBackgroundDetectionDate = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beepOnMove"];
    latestBeepOnMoveDate = v5->_latestBeepOnMoveDate;
    v5->_latestBeepOnMoveDate = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fBOM"];
    firstBeepOnMoveDate = v5->_firstBeepOnMoveDate;
    v5->_firstBeepOnMoveDate = v42;

    v5->_numBeepOnMove = [coderCopy decodeIntegerForKey:@"nBOM"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedDate"];
    firstStagedDetectionDate = v5->_firstStagedDetectionDate;
    v5->_firstStagedDetectionDate = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstSurfaceDate"];
    firstSurfacedAlertDate = v5->_firstSurfacedAlertDate;
    v5->_firstSurfacedAlertDate = v46;

    v5->_firstSurfacedAlertType = [coderCopy decodeIntegerForKey:@"fsat"];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsad"];
    lastSurfacedAlertDate = v5->_lastSurfacedAlertDate;
    v5->_lastSurfacedAlertDate = v48;

    v5->_numStagedDetections = [coderCopy decodeIntegerForKey:@"nStaged"];
    v5->_numSurfacedAlerts = [coderCopy decodeIntegerForKey:@"nSurfaced"];
    v5->_numPotentialSurfacedAlerts = [coderCopy decodeIntegerForKey:@"nPotentialSurfaced"];
    v5->_playSoundSuccessCount = [coderCopy decodeIntegerForKey:@"nPSS"];
    v5->_playSoundFailureCount = [coderCopy decodeIntegerForKey:@"nPSF"];
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lpsad"];
    latestPlaySoundAttemptDate = v5->_latestPlaySoundAttemptDate;
    v5->_latestPlaySoundAttemptDate = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"laisad"];
    lastAISAttemptDate = v5->_lastAISAttemptDate;
    v5->_lastAISAttemptDate = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AISInfo"];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v54;

    v56 = [coderCopy decodeIntegerForKey:@"AISState"];
    v5->_AISFetchState = v56;
    if ((v56 | 4) == 6)
    {
      v5->_AISFetchState = 0;
    }

    v5->_AISFetchCount = [coderCopy decodeIntegerForKey:@"AISCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"Address"];
  [coderCopy encodeObject:self->_uuid forKey:@"UUID"];
  [coderCopy encodeInteger:self->_state forKey:@"State"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeDouble:@"KeepAliveInterval" forKey:self->_keepAliveInterval];
  [coderCopy encodeObject:self->_stagedDetectionResults forKey:@"StagedResults"];
  [coderCopy encodeObject:self->_latestAdvertisement forKey:@"LatestAdvert"];
  [coderCopy encodeObject:self->_earliestObservationDate forKey:@"firstObsDate"];
  [coderCopy encodeBool:self->_hasSurfacedNotification forKey:@"Surfaced"];
  [coderCopy encodeObject:self->_backgroundDetectionTypesInTravelSession forKey:@"BackgroundSet"];
  [coderCopy encodeObject:self->_backgroundDetectionCount forKey:@"BackgroundCount"];
  [coderCopy encodeObject:self->_firstBackgroundDetectionDate forKey:@"BackgroundDate"];
  [coderCopy encodeObject:self->_latestBeepOnMoveDate forKey:@"beepOnMove"];
  [coderCopy encodeObject:self->_firstBeepOnMoveDate forKey:@"fBOM"];
  [coderCopy encodeInteger:self->_numBeepOnMove forKey:@"nBOM"];
  [coderCopy encodeObject:self->_firstStagedDetectionDate forKey:@"stagedDate"];
  [coderCopy encodeObject:self->_firstSurfacedAlertDate forKey:@"firstSurfaceDate"];
  [coderCopy encodeInteger:self->_firstSurfacedAlertType forKey:@"fsat"];
  [coderCopy encodeObject:self->_lastSurfacedAlertDate forKey:@"lsad"];
  [coderCopy encodeInteger:self->_numStagedDetections forKey:@"nStaged"];
  [coderCopy encodeInteger:self->_numSurfacedAlerts forKey:@"nSurfaced"];
  [coderCopy encodeInteger:self->_numPotentialSurfacedAlerts forKey:@"nPotentialSurfaced"];
  [coderCopy encodeInteger:self->_playSoundSuccessCount forKey:@"nPSS"];
  [coderCopy encodeInteger:self->_playSoundFailureCount forKey:@"nPSF"];
  [coderCopy encodeObject:self->_latestPlaySoundAttemptDate forKey:@"lpsad"];
  [coderCopy encodeObject:self->_accessoryInfo forKey:@"AISInfo"];
  [coderCopy encodeInteger:self->_AISFetchState forKey:@"AISState"];
  [coderCopy encodeInteger:self->_AISFetchCount forKey:@"AISCount"];
  [coderCopy encodeObject:self->_lastAISAttemptDate forKey:@"laisad"];
}

- (void)_isAISFetchComplete
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 134349056;
  v5 = v2;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TASingleDeviceRecord receiving undefined AIS fetch state %{public}lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end