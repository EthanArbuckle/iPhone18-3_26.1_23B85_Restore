@interface RTPeopleDiscoveryContactRecord
+ (id)computeEventMetrics:(id)metrics;
- (BOOL)isEqual:(id)equal;
- (RTPeopleDiscoveryContactRecord)initWithCoder:(id)coder;
- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)queue defaultsManager:(id)manager;
- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)queue minObservationDuration:(unint64_t)duration maxSeparationDuration:(unint64_t)separationDuration maxBackstopDuration:(unint64_t)backstopDuration maxBundleDuration:(unint64_t)bundleDuration;
- (id)_updateContactFrequencyCount:(id)count;
- (id)description;
- (id)descriptionDictionary;
- (id)generateRealtimeProximityEventFromDate:(id)date endDate:(id)endDate referenceDate:(id)referenceDate;
- (id)getContactScores:(id)scores;
- (id)getFirstObservationDate:(id)date;
- (id)getInteractionSessions:(id)sessions;
- (id)getLatestAdvertisementDate:(id)date;
- (id)queryContactScoresWithContactIDs:(id)ds;
- (id)queryRealTimeEventsByEventIDs:(id)ds;
- (int64_t)bucketizeFrequencyScore:(double)score;
- (int64_t)bucketizeRecencyScore:(double)score;
- (int64_t)bucketizeSignificanceScore:(double)score;
- (void)_fetchAndStoreSignificanceScore:(id)score;
- (void)checkAndCloseProximityEventsIfNeeded:(id)needed;
- (void)cleanUpOngoingContactRecordsAndScores;
- (void)closeProximityEvents:(id)events bundleEndDate:(id)date contactRecords:(id)records ongoingProximityEvent:(id)event;
- (void)createSingleContactRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
- (void)generateProximityEventScores:(double)scores socialScore:(double *)score contactRecords:(id)records combinedFrequencyScores:(id)frequencyScores combinedRecencyScores:(id)recencyScores combinedSignificanceScores:(id)significanceScores;
- (void)ingestEvent:(id)event;
- (void)injectContactScore:(id)score;
- (void)mergeWithAnotherContactRecord:(id)record;
- (void)notifyObserversOnCloseProximityEvent:(id)event;
- (void)updateContactRecordOnAdvertisementReceived:(id)received;
- (void)updateDailyContactScores;
@end

@implementation RTPeopleDiscoveryContactRecord

- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)queue defaultsManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  v7 = [managerCopy objectForKey:@"RTDefaultsPeopleDiscoveryProviderMinimumObservationDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 900;
  }

  v9 = [managerCopy objectForKey:@"RTDefaultsPeopleDiscoveryProviderMaximumSeparationDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue2 = [v9 integerValue];
  }

  else
  {
    integerValue2 = 1800;
  }

  v11 = [managerCopy objectForKey:@"RTDefaultsPeopleDiscoveryProviderMaximumBackstopDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue3 = [v11 integerValue];
  }

  else
  {
    integerValue3 = 28800;
  }

  v13 = [managerCopy objectForKey:@"RTDefaultsPeopleDiscoveryProviderProximityBundleDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue4 = [v13 integerValue];
  }

  else
  {
    integerValue4 = 3600;
  }

  v15 = [(RTPeopleDiscoveryContactRecord *)self initWithQueue:queueCopy minObservationDuration:integerValue maxSeparationDuration:integerValue2 maxBackstopDuration:integerValue3 maxBundleDuration:integerValue4];

  return v15;
}

- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)queue minObservationDuration:(unint64_t)duration maxSeparationDuration:(unint64_t)separationDuration maxBackstopDuration:(unint64_t)backstopDuration maxBundleDuration:(unint64_t)bundleDuration
{
  v18.receiver = self;
  v18.super_class = RTPeopleDiscoveryContactRecord;
  v11 = [(RTPeopleDiscoveryContactRecord *)&v18 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(RTPeopleDiscoveryContactRecord *)v11 setContactRecord:v12];

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(RTPeopleDiscoveryContactRecord *)v11 setContactScores:v13];

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    bundleStartDate = v11->_bundleStartDate;
    v11->_bundleStartDate = distantFuture;

    [(RTPeopleDiscoveryContactRecord *)v11 setMinObservationDuration:duration];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxSeparationDuration:separationDuration];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxBackstopDuration:backstopDuration];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxBundleDuration:bundleDuration];
    v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(RTPeopleDiscoveryContactRecord *)v11 setObservers:v16];
  }

  return v11;
}

- (void)updateContactRecordOnAdvertisementReceived:(id)received
{
  v25 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  v5 = receivedCopy;
  if (!receivedCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: advertisement", &v23, 2u);
    }

    goto LABEL_18;
  }

  contactID = [receivedCopy contactID];

  if (contactID)
  {
    scanDate = [v5 scanDate];
    v8 = [scanDate compare:self->_bundleStartDate];

    scanDate2 = [v5 scanDate];
    v10 = scanDate2;
    if (v8 == -1)
    {
      bundleStartDate = self->_bundleStartDate;
      self->_bundleStartDate = scanDate2;
      v10 = bundleStartDate;
    }

    else
    {
      [(RTPeopleDiscoveryContactRecord *)self checkAndCloseProximityEventsIfNeeded:scanDate2];
    }

    contactRecord = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
    contactID2 = [v5 contactID];
    v11 = [contactRecord objectForKeyedSubscript:contactID2];

    v15 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 description];
      v23 = 138412290;
      v24 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord receive advertisement, %@", &v23, 0xCu);
    }

    if (v11)
    {
      scanDate3 = [v5 scanDate];
      latestAdvertisementDate = [v11 latestAdvertisementDate];
      [scanDate3 timeIntervalSinceDate:latestAdvertisementDate];
      v20 = v19;
      maxSeparationDuration = [(RTPeopleDiscoveryContactRecord *)self maxSeparationDuration];

      if (v20 >= maxSeparationDuration)
      {
        scanDate4 = [v5 scanDate];
        [v11 closeInteractionSession:scanDate4];
      }

      else
      {
        [v11 updateSingleContactRecordOnAdvReceived:v5];
      }
    }

    else
    {
      [(RTPeopleDiscoveryContactRecord *)self createSingleContactRecord:v5];
    }

LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "advertisement is not associated with a contactID", &v23, 2u);
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (id)generateRealtimeProximityEventFromDate:(id)date endDate:(id)endDate referenceDate:(id)referenceDate
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  referenceDateCopy = referenceDate;
  if (!dateCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: startDate";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_11;
  }

  if (!endDateCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: endDate";
    goto LABEL_20;
  }

  if ([endDateCopy compare:self->_bundleStartDate] != 1)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    getFormattedDateString = [referenceDateCopy getFormattedDateString];
    *buf = 138412290;
    *&buf[4] = getFormattedDateString;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord generating real-time bundle, referenceDate, %@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14C0];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14D8];
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14F0];
  *buf = 0;
  [referenceDateCopy timeIntervalSinceDate:self->_bundleStartDate];
  [(RTPeopleDiscoveryContactRecord *)self generateProximityEventScores:buf socialScore:self->_contactRecord contactRecords:v13 combinedFrequencyScores:v14 combinedRecencyScores:v15 combinedSignificanceScores:?];
  v16 = objc_alloc(MEMORY[0x277D01278]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v18 = [v16 initWithEventID:uUID startDate:self->_bundleStartDate endDate:0 relationship:0 socialScore:v13 combinedFrequencyScores:v14 combinedRecencyScores:*buf combinedSignificanceScores:v15];

  if (v18)
  {
    objc_storeStrong(&self->_ongoingProximityEvent, v18);
    v22 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

LABEL_15:
LABEL_16:

  return v19;
}

- (id)queryRealTimeEventsByEventIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (dsCopy)
  {
    if (self->_ongoingProximityEvent)
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord querying real-time events by eventIDs", buf, 2u);
      }

      array = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = dsCopy;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            eventID = [(RTProximityEvent *)self->_ongoingProximityEvent eventID];
            LODWORD(v12) = [v12 isEqual:eventID];

            if (v12)
            {
              [array addObject:self->_ongoingProximityEvent];
            }

            objc_autoreleasePoolPop(v13);
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    else
    {
      array = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventIDs", buf, 2u);
    }

    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)queryContactScoresWithContactIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (dsCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord querying contact scores by contactIDs", buf, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = dsCopy;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v12, v22];

          if (v14)
          {
            v15 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v12];
            [v6 addObject:v15];
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    if ([v7 count] == 1 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"ALL"), v16, v17))
    {
      allValues = [(NSMutableDictionary *)self->_contactScores allValues];
    }

    else
    {
      allValues = v6;
    }

    array = allValues;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIDs", buf, 2u);
    }

    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)getLatestAdvertisementDate:(id)date
{
  if (date)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      latestAdvertisementDate = [v3 latestAdvertisementDate];
    }

    else
    {
      latestAdvertisementDate = 0;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", v8, 2u);
    }

    latestAdvertisementDate = 0;
  }

  return latestAdvertisementDate;
}

- (id)getFirstObservationDate:(id)date
{
  if (date)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      firstObservation = [v3 firstObservation];
    }

    else
    {
      firstObservation = 0;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", v8, 2u);
    }

    firstObservation = 0;
  }

  return firstObservation;
}

- (id)getContactScores:(id)scores
{
  if (scores)
  {
    v3 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)getInteractionSessions:(id)sessions
{
  if (sessions)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      interactionSessions = [v3 interactionSessions];
    }

    else
    {
      interactionSessions = 0;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", v8, 2u);
    }

    interactionSessions = 0;
  }

  return interactionSessions;
}

- (void)checkAndCloseProximityEventsIfNeeded:(id)needed
{
  v18 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (!neededCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", &v16, 2u);
    }

    goto LABEL_9;
  }

  bundleStartDate = self->_bundleStartDate;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  LODWORD(bundleStartDate) = [(NSDate *)bundleStartDate isEqualToDate:distantFuture];

  if (bundleStartDate)
  {
LABEL_16:
    objc_storeStrong(&self->_bundleStartDate, needed);
    goto LABEL_17;
  }

  [neededCopy timeIntervalSinceDate:self->_bundleStartDate];
  v9 = v8;
  maxBundleDuration = self->_maxBundleDuration;
  if (v8 >= maxBundleDuration)
  {
    if (v8 >= self->_maxBackstopDuration)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        v17 = v9;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "skip closing the proximity event due to stale records, duration %f", &v16, 0xCu);
      }
    }

    else
    {
      [(RTPeopleDiscoveryContactRecord *)self closeProximityEvents:self->_bundleStartDate bundleEndDate:neededCopy contactRecords:self->_contactRecord ongoingProximityEvent:self->_ongoingProximityEvent];
    }

    contactRecord = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
    [contactRecord removeAllObjects];

    [(RTPeopleDiscoveryContactRecord *)self setOngoingProximityEvent:0];
    goto LABEL_16;
  }

  [neededCopy timeIntervalSinceDate:self->_bundleStartDate];
  v12 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134217984;
      v17 = maxBundleDuration - v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "not enough time has passed since last proximity bundle, remainingSeconds %f", &v16, 0xCu);
    }

LABEL_9:
  }

LABEL_17:
}

- (void)closeProximityEvents:(id)events bundleEndDate:(id)date contactRecords:(id)records ongoingProximityEvent:(id)event
{
  eventsCopy = events;
  dateCopy = date;
  eventCopy = event;
  recordsCopy = records;
  [dateCopy timeIntervalSinceDate:eventsCopy];
  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1508];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1520];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1538];
  v37[0] = 0.0;
  [(RTPeopleDiscoveryContactRecord *)self generateProximityEventScores:v37 socialScore:recordsCopy contactRecords:v16 combinedFrequencyScores:v17 combinedRecencyScores:v18 combinedSignificanceScores:v15];

  if (v37[0] > 0.0)
  {
    v30 = eventCopy;
    if (eventCopy)
    {
      [eventCopy eventID];
    }

    else
    {
      [MEMORY[0x277CCAD78] UUID];
    }
    v19 = ;
    v20 = objc_alloc(MEMORY[0x277D01278]);
    v21 = [v20 initWithEventID:v19 startDate:eventsCopy endDate:dateCopy relationship:0 socialScore:v16 combinedFrequencyScores:v17 combinedRecencyScores:v37[0] combinedSignificanceScores:v18];
    [(RTPeopleDiscoveryContactRecord *)self notifyObserversOnCloseProximityEvent:v21];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__RTPeopleDiscoveryContactRecord_closeProximityEvents_bundleEndDate_contactRecords_ongoingProximityEvent___block_invoke;
    aBlock[3] = &unk_2788C93E0;
    aBlock[4] = self;
    v36 = v21;
    v29 = v21;
    v22 = _Block_copy(aBlock);
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = [v23 initWithCString:RTAnalyticsEventPeopleDiscoveryEvents encoding:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __106__RTPeopleDiscoveryContactRecord_closeProximityEvents_bundleEndDate_contactRecords_ongoingProximityEvent___block_invoke_2;
    v32[3] = &unk_2788C8D18;
    v33 = v24;
    v34 = v22;
    v25 = v24;
    v26 = v22;
    v27 = _Block_copy(v32);
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v25];
    AnalyticsSendEventLazy();

    eventCopy = v30;
LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "skip storing proximity events due to invalid social score", buf, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __106__RTPeopleDiscoveryContactRecord_closeProximityEvents_bundleEndDate_contactRecords_ongoingProximityEvent___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 computeEventMetrics:v3];
}

id __106__RTPeopleDiscoveryContactRecord_closeProximityEvents_bundleEndDate_contactRecords_ongoingProximityEvent___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

- (void)generateProximityEventScores:(double)scores socialScore:(double *)score contactRecords:(id)records combinedFrequencyScores:(id)frequencyScores combinedRecencyScores:(id)recencyScores combinedSignificanceScores:(id)significanceScores
{
  v46 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  frequencyScoresCopy = frequencyScores;
  recencyScoresCopy = recencyScores;
  significanceScoresCopy = significanceScores;
  if (scores <= 0.0)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "receiving invalid bundle duration when computing scores", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "computing scores related to current proximity bundle", buf, 2u);
      }
    }

    scoreCopy = score;
    v33 = significanceScoresCopy;
    v34 = recencyScoresCopy;
    v35 = frequencyScoresCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = recordsCopy;
    v18 = recordsCopy;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      v22 = 0.0;
      v23 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          v27 = [v18 objectForKeyedSubscript:v25];
          [v27 getTotalInteractionDuration];
          v29 = v28 / scores;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v42 = v25;
              v43 = 2048;
              v44 = v29;
              _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "social score for contact: %@, score, %f", buf, 0x16u);
            }
          }

          v22 = v22 + v29;

          objc_autoreleasePoolPop(v26);
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    significanceScoresCopy = v33;
    *scoreCopy = v22;
    frequencyScoresCopy = v35;
    recordsCopy = v36;
    recencyScoresCopy = v34;
  }
}

- (int64_t)bucketizeFrequencyScore:(double)score
{
  if (score < 0.0 || score > 1.0)
  {
    return 0;
  }

  if (score >= 0.0 && score < 0.4)
  {
    return 3;
  }

  if (score >= 0.4 && score <= 0.6)
  {
    return 2;
  }

  if (score <= 1.0)
  {
    return score > 0.6;
  }

  return 0;
}

- (int64_t)bucketizeRecencyScore:(double)score
{
  if (score < 0.0 || score > 1.0)
  {
    return 0;
  }

  if (score >= 0.0 && score < 0.33)
  {
    return 3;
  }

  if (score >= 0.33 && score <= 0.66)
  {
    return 2;
  }

  if (score <= 1.0)
  {
    return score > 0.66;
  }

  return 0;
}

- (int64_t)bucketizeSignificanceScore:(double)score
{
  if (score < 0.5)
  {
    return 0;
  }

  if (score < 0.667)
  {
    return 3;
  }

  if (score > 0.834)
  {
    return score <= 1.0;
  }

  return 2;
}

- (void)createSingleContactRecord:(id)record
{
  v14 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    contactID = [recordCopy contactID];
    v12 = 138412290;
    v13 = contactID;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "create new contact record: %@", &v12, 0xCu);
  }

  v7 = [RTPeopleDiscoverySingleContactRecord alloc];
  contactID2 = [recordCopy contactID];
  v9 = [(RTPeopleDiscoverySingleContactRecord *)v7 initWithContactID:contactID2 withAdvertisement:recordCopy];

  contactRecord = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
  contactID3 = [recordCopy contactID];
  [contactRecord setObject:v9 forKey:contactID3];
}

- (void)mergeWithAnotherContactRecord:(id)record
{
  v96 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    v72 = recordCopy;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      contactRecord = [recordCopy contactRecord];
      v7 = [contactRecord count];
      ongoingProximityEvent = [recordCopy ongoingProximityEvent];
      v9 = [ongoingProximityEvent description];
      contactScores = [recordCopy contactScores];
      v11 = [contactScores count];
      bundleStartDate = [v72 bundleStartDate];
      *buf = 134218754;
      v89 = v7;
      v90 = 2112;
      v91 = v9;
      v92 = 2048;
      v93 = v11;
      recordCopy = v72;
      v94 = 2112;
      v95 = bundleStartDate;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "merging contact record: number of contacts, %lu, ongoing proximity event, %@, number of contact scores, %lu, bundle start time, %@", buf, 0x2Au);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    contactScores2 = [recordCopy contactScores];
    allKeys = [contactScores2 allKeys];

    v15 = [allKeys countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v82;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v82 != v17)
          {
            objc_enumerationMutation(allKeys);
          }

          v19 = *(*(&v81 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v19];

          if (v21)
          {
            contactScores4 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v19];
            contactScores3 = [recordCopy contactScores];
            v24 = [contactScores3 objectForKeyedSubscript:v19];

            recordCopy = v72;
            [contactScores4 mergeWithAnotherContactScore:v24];
          }

          else
          {
            contactScores4 = [recordCopy contactScores];
            v24 = [contactScores4 objectForKeyedSubscript:v19];
            [(NSMutableDictionary *)self->_contactScores setObject:v24 forKeyedSubscript:v19];
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = [allKeys countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v16);
    }

    v25 = [MEMORY[0x277CBEAA8] now];
    bundleStartDate2 = [recordCopy bundleStartDate];
    [v25 timeIntervalSinceDate:bundleStartDate2];
    v28 = v27;
    maxBackstopDuration = self->_maxBackstopDuration;

    if (v28 < maxBackstopDuration)
    {
      ongoingProximityEvent = self->_ongoingProximityEvent;
      if (ongoingProximityEvent)
      {
        ongoingProximityEvent2 = ongoingProximityEvent;
      }

      else
      {
        ongoingProximityEvent2 = [v72 ongoingProximityEvent];
      }

      v51 = self->_ongoingProximityEvent;
      self->_ongoingProximityEvent = ongoingProximityEvent2;

      bundleStartDate = self->_bundleStartDate;
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      if ([(NSDate *)bundleStartDate isEqualToDate:distantPast])
      {
        recordCopy = v72;
        bundleStartDate3 = [v72 bundleStartDate];

        if (bundleStartDate3)
        {
          bundleStartDate4 = [v72 bundleStartDate];
          bundleStartDate5 = self->_bundleStartDate;
          self->_bundleStartDate = bundleStartDate4;
          goto LABEL_42;
        }
      }

      else
      {

        recordCopy = v72;
      }

      bundleStartDate5 = [recordCopy bundleStartDate];
      if (bundleStartDate5)
      {
        bundleStartDate6 = [recordCopy bundleStartDate];
        v58 = [bundleStartDate6 earlierDate:self->_bundleStartDate];
        v59 = self->_bundleStartDate;
        self->_bundleStartDate = v58;
      }

      else
      {
        v60 = self->_bundleStartDate;
        bundleStartDate6 = self->_bundleStartDate;
        self->_bundleStartDate = v60;
      }

LABEL_42:
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      contactRecord2 = [recordCopy contactRecord];
      allKeys2 = [contactRecord2 allKeys];

      v62 = [allKeys2 countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v74;
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v74 != v64)
            {
              objc_enumerationMutation(allKeys2);
            }

            v66 = *(*(&v73 + 1) + 8 * j);
            v67 = objc_autoreleasePoolPush();
            v68 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v66];

            if (v68)
            {
              contactRecord4 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v66];
              contactRecord3 = [recordCopy contactRecord];
              v71 = [contactRecord3 objectForKeyedSubscript:v66];

              recordCopy = v72;
              [contactRecord4 mergeWithAnotherSingleContactRecord:v71];
            }

            else
            {
              contactRecord4 = [recordCopy contactRecord];
              v71 = [contactRecord4 objectForKeyedSubscript:v66];
              [(NSMutableDictionary *)self->_contactRecord setObject:v71 forKeyedSubscript:v66];
            }

            objc_autoreleasePoolPop(v67);
          }

          v63 = [allKeys2 countByEnumeratingWithState:&v73 objects:v85 count:16];
        }

        while (v63);
      }

      goto LABEL_52;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CBEAA8] now];
      bundleStartDate7 = [v72 bundleStartDate];
      *buf = 138412546;
      v89 = v34;
      v90 = 2112;
      v91 = bundleStartDate7;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "closing proximity events for stale records, current time, %@, bundle start time, %@", buf, 0x16u);
    }

    allKeys2 = [MEMORY[0x277CBEAA8] distantPast];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    contactRecord5 = [v72 contactRecord];
    v37 = [contactRecord5 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v78;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v78 != v39)
          {
            objc_enumerationMutation(contactRecord5);
          }

          v41 = *(*(&v77 + 1) + 8 * k);
          contactRecord6 = [v72 contactRecord];
          v43 = [contactRecord6 objectForKeyedSubscript:v41];

          latestAdvertisementDate = [v43 latestAdvertisementDate];
          v45 = [allKeys2 compare:latestAdvertisementDate];

          if (v45 == -1)
          {
            latestAdvertisementDate2 = [v43 latestAdvertisementDate];

            allKeys2 = latestAdvertisementDate2;
          }
        }

        v38 = [contactRecord5 countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v38);
    }

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];

    recordCopy = v72;
    if (allKeys2 != distantPast2)
    {
      bundleStartDate8 = [v72 bundleStartDate];
      contactRecord7 = [v72 contactRecord];
      ongoingProximityEvent3 = [v72 ongoingProximityEvent];
      [(RTPeopleDiscoveryContactRecord *)self closeProximityEvents:bundleStartDate8 bundleEndDate:allKeys2 contactRecords:contactRecord7 ongoingProximityEvent:ongoingProximityEvent3];
    }
  }

  else
  {
    allKeys2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(allKeys2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, allKeys2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherRecord", buf, 2u);
    }
  }

LABEL_52:
}

- (void)updateDailyContactScores
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_contactScores;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v35;
    v8 = MEMORY[0x277D86220];
    *&v5 = 134218498;
    v33 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v10];
        frequencyCount = [v12 frequencyCount];
        [v12 runningMean];
        v15 = v14;
        [v12 runningMeanOfSquares];
        v17 = v16;
        [v12 frequencyScore];
        v19 = fabs(v18 + 1.0) < 2.22044605e-16;
        v20 = (v15 + frequencyCount) * 0.5;
        if (v19)
        {
          v21 = (frequencyCount * frequencyCount);
        }

        else
        {
          v21 = (v17 + (frequencyCount * frequencyCount)) * 0.5;
        }

        if (v19)
        {
          v22 = frequencyCount;
        }

        else
        {
          v22 = v20;
        }

        [v12 setRunningMean:{v22, v33, v34}];
        [v12 setRunningMeanOfSquares:v21];
        v23 = -(frequencyCount - v22) / (sqrt(v21 - v22 * v22) + 2.22044605e-16);
        [v12 setFrequencyScore:1.0 / (expf(v23) + 1.0)];
        [v12 recencyScore];
        v25 = fabs(v24 + 1.0);
        if (frequencyCount)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = 1.0;
        }

        v27 = (v24 + v26) * 0.5;
        if (v25 < 2.22044605e-16)
        {
          v27 = v26;
        }

        [v12 setRecencyScore:v27];
        [v12 setFrequencyCount:0];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [v12 frequencyScore];
            v30 = v29;
            [v12 recencyScore];
            *buf = v33;
            v39 = v30;
            v40 = 2048;
            v41 = v31;
            v42 = 2112;
            v43 = v10;
            _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "finish computing frequencyScore, %f and recencyScore, %f for contact %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v6);
  }

  allKeys = [(NSMutableDictionary *)self->_contactScores allKeys];
  [(RTPeopleDiscoveryContactRecord *)self _fetchAndStoreSignificanceScore:allKeys];
}

- (void)_fetchAndStoreSignificanceScore:(id)score
{
  v29 = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  v19 = objc_alloc_init(MEMORY[0x277D3A090]);
  v5 = [v19 contactPriorsForContactIdentifiers:scoreCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = scoreCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v5 objectForKey:v12];
        [v13 priorScore];
        v15 = v14;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v25 = v15;
            v26 = 2112;
            v27 = v12;
            _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "Received significance score %f for contact %@", buf, 0x16u);
          }
        }

        v17 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v12];
        if (v17)
        {
          [v17 setSignificanceScore:1.0 / (expf(-v15) + 1.0)];
        }

        else
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Received significance score for unknown contact", buf, 2u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (id)_updateContactFrequencyCount:(id)count
{
  v14 = *MEMORY[0x277D85DE8];
  countCopy = count;
  v5 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:countCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:countCopy];
    [v6 setFrequencyCount:{objc_msgSend(v6, "frequencyCount") + 1}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412546;
        v11 = countCopy;
        v12 = 2048;
        frequencyCount = [v6 frequencyCount];
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "frequency count updated for contact %@, new count, %lu", &v10, 0x16u);
      }
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = countCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "create new scores for contact %@", &v10, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277D010C8]) initWithContactID:countCopy frequencyScore:1 recencyScore:-1.0 significanceScore:-1.0 frequencyCount:-1.0 runningMean:0.0 runningMeanOfSquares:0.0];
    [(NSMutableDictionary *)self->_contactScores setObject:v6 forKey:countCopy];
  }

  return v6;
}

- (void)injectContactScore:(id)score
{
  contactScores = self->_contactScores;
  scoreCopy = score;
  contactID = [scoreCopy contactID];
  [(NSMutableDictionary *)contactScores setObject:scoreCopy forKey:contactID];
}

- (void)ingestEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    [(RTPeopleDiscoveryContactRecord *)self updateContactRecordOnAdvertisementReceived:eventCopy];
  }
}

- (void)cleanUpOngoingContactRecordsAndScores
{
  [(NSMutableDictionary *)self->_contactRecord removeAllObjects];
  [(NSMutableDictionary *)self->_contactScores removeAllObjects];
  ongoingProximityEvent = self->_ongoingProximityEvent;
  self->_ongoingProximityEvent = 0;

  self->_bundleStartDate = [MEMORY[0x277CBEAA8] distantPast];

  MEMORY[0x2821F96F8]();
}

+ (id)computeEventMetrics:(id)metrics
{
  metricsCopy = metrics;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_28459F300 forKeyedSubscript:@"numOfEventsPerDay"];
  endDate = [metricsCopy endDate];
  if (endDate)
  {
    endDate2 = [metricsCopy endDate];
    startDate = [metricsCopy startDate];
    [endDate2 timeIntervalSinceDate:startDate];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [dictionary setObject:v10 forKeyedSubscript:@"duration"];

  v11 = MEMORY[0x277CCABB0];
  [metricsCopy socialScore];
  v12 = [v11 numberWithDouble:?];
  [dictionary setObject:v12 forKeyedSubscript:@"socialScore"];

  return dictionary;
}

- (void)notifyObserversOnCloseProximityEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          [v10 didCloseProximityEvent:{eventCopy, v12}];
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contactRecord = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
      contactRecord2 = [(RTPeopleDiscoveryContactRecord *)v5 contactRecord];

      v8 = [contactRecord isEqual:contactRecord2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionDictionary
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [(NSMutableDictionary *)self->_contactRecord allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"record: %@", v8];
        v11 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v8];
        descriptionDictionary = [v11 descriptionDictionary];
        [0 setObject:descriptionDictionary forKey:v10];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_contactScores allKeys];
  v14 = [allKeys2 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(allKeys2);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"score: %@", v18];
        v21 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v18];
        descriptionDictionary2 = [v21 descriptionDictionary];
        [0 setObject:descriptionDictionary2 forKey:v20];

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v15 = [allKeys2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = [0 copy];

  return v23;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  descriptionDictionary = [(RTPeopleDiscoveryContactRecord *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

- (RTPeopleDiscoveryContactRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = RTPeopleDiscoveryContactRecord;
  v5 = [(RTPeopleDiscoveryContactRecord *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ContactRecord"];
    contactRecord = v5->_contactRecord;
    v5->_contactRecord = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OngoingProximityEvent"];
    ongoingProximityEvent = v5->_ongoingProximityEvent;
    v5->_ongoingProximityEvent = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleStartDate"];
    bundleStartDate = v5->_bundleStartDate;
    v5->_bundleStartDate = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"ContactScores"];
    contactScores = v5->_contactScores;
    v5->_contactScores = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contactRecord = self->_contactRecord;
  coderCopy = coder;
  [coderCopy encodeObject:contactRecord forKey:@"ContactRecord"];
  [coderCopy encodeObject:self->_ongoingProximityEvent forKey:@"OngoingProximityEvent"];
  [coderCopy encodeObject:self->_bundleStartDate forKey:@"BundleStartDate"];
  [coderCopy encodeObject:self->_contactScores forKey:@"ContactScores"];
}

@end