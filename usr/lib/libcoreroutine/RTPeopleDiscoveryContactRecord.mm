@interface RTPeopleDiscoveryContactRecord
+ (id)computeEventMetrics:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTPeopleDiscoveryContactRecord)initWithCoder:(id)a3;
- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)a3 defaultsManager:(id)a4;
- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)a3 minObservationDuration:(unint64_t)a4 maxSeparationDuration:(unint64_t)a5 maxBackstopDuration:(unint64_t)a6 maxBundleDuration:(unint64_t)a7;
- (id)_updateContactFrequencyCount:(id)a3;
- (id)description;
- (id)descriptionDictionary;
- (id)generateRealtimeProximityEventFromDate:(id)a3 endDate:(id)a4 referenceDate:(id)a5;
- (id)getContactScores:(id)a3;
- (id)getFirstObservationDate:(id)a3;
- (id)getInteractionSessions:(id)a3;
- (id)getLatestAdvertisementDate:(id)a3;
- (id)queryContactScoresWithContactIDs:(id)a3;
- (id)queryRealTimeEventsByEventIDs:(id)a3;
- (int64_t)bucketizeFrequencyScore:(double)a3;
- (int64_t)bucketizeRecencyScore:(double)a3;
- (int64_t)bucketizeSignificanceScore:(double)a3;
- (void)_fetchAndStoreSignificanceScore:(id)a3;
- (void)checkAndCloseProximityEventsIfNeeded:(id)a3;
- (void)cleanUpOngoingContactRecordsAndScores;
- (void)closeProximityEvents:(id)a3 bundleEndDate:(id)a4 contactRecords:(id)a5 ongoingProximityEvent:(id)a6;
- (void)createSingleContactRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateProximityEventScores:(double)a3 socialScore:(double *)a4 contactRecords:(id)a5 combinedFrequencyScores:(id)a6 combinedRecencyScores:(id)a7 combinedSignificanceScores:(id)a8;
- (void)ingestEvent:(id)a3;
- (void)injectContactScore:(id)a3;
- (void)mergeWithAnotherContactRecord:(id)a3;
- (void)notifyObserversOnCloseProximityEvent:(id)a3;
- (void)updateContactRecordOnAdvertisementReceived:(id)a3;
- (void)updateDailyContactScores;
@end

@implementation RTPeopleDiscoveryContactRecord

- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)a3 defaultsManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"RTDefaultsPeopleDiscoveryProviderMinimumObservationDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 900;
  }

  v9 = [v6 objectForKey:@"RTDefaultsPeopleDiscoveryProviderMaximumSeparationDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 1800;
  }

  v11 = [v6 objectForKey:@"RTDefaultsPeopleDiscoveryProviderMaximumBackstopDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 28800;
  }

  v13 = [v6 objectForKey:@"RTDefaultsPeopleDiscoveryProviderProximityBundleDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 integerValue];
  }

  else
  {
    v14 = 3600;
  }

  v15 = [(RTPeopleDiscoveryContactRecord *)self initWithQueue:v5 minObservationDuration:v8 maxSeparationDuration:v10 maxBackstopDuration:v12 maxBundleDuration:v14];

  return v15;
}

- (RTPeopleDiscoveryContactRecord)initWithQueue:(id)a3 minObservationDuration:(unint64_t)a4 maxSeparationDuration:(unint64_t)a5 maxBackstopDuration:(unint64_t)a6 maxBundleDuration:(unint64_t)a7
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

    v14 = [MEMORY[0x277CBEAA8] distantFuture];
    bundleStartDate = v11->_bundleStartDate;
    v11->_bundleStartDate = v14;

    [(RTPeopleDiscoveryContactRecord *)v11 setMinObservationDuration:a4];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxSeparationDuration:a5];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxBackstopDuration:a6];
    [(RTPeopleDiscoveryContactRecord *)v11 setMaxBundleDuration:a7];
    v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(RTPeopleDiscoveryContactRecord *)v11 setObservers:v16];
  }

  return v11;
}

- (void)updateContactRecordOnAdvertisementReceived:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: advertisement", &v23, 2u);
    }

    goto LABEL_18;
  }

  v6 = [v4 contactID];

  if (v6)
  {
    v7 = [v5 scanDate];
    v8 = [v7 compare:self->_bundleStartDate];

    v9 = [v5 scanDate];
    v10 = v9;
    if (v8 == -1)
    {
      bundleStartDate = self->_bundleStartDate;
      self->_bundleStartDate = v9;
      v10 = bundleStartDate;
    }

    else
    {
      [(RTPeopleDiscoveryContactRecord *)self checkAndCloseProximityEventsIfNeeded:v9];
    }

    v13 = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
    v14 = [v5 contactID];
    v11 = [v13 objectForKeyedSubscript:v14];

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
      v17 = [v5 scanDate];
      v18 = [v11 latestAdvertisementDate];
      [v17 timeIntervalSinceDate:v18];
      v20 = v19;
      v21 = [(RTPeopleDiscoveryContactRecord *)self maxSeparationDuration];

      if (v20 >= v21)
      {
        v22 = [v5 scanDate];
        [v11 closeInteractionSession:v22];
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

- (id)generateRealtimeProximityEventFromDate:(id)a3 endDate:(id)a4 referenceDate:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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

  if (!v9)
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

  if ([v9 compare:self->_bundleStartDate] != 1)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 getFormattedDateString];
    *buf = 138412290;
    *&buf[4] = v12;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord generating real-time bundle, referenceDate, %@", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14C0];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14D8];
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A14F0];
  *buf = 0;
  [v10 timeIntervalSinceDate:self->_bundleStartDate];
  [(RTPeopleDiscoveryContactRecord *)self generateProximityEventScores:buf socialScore:self->_contactRecord contactRecords:v13 combinedFrequencyScores:v14 combinedRecencyScores:v15 combinedSignificanceScores:?];
  v16 = objc_alloc(MEMORY[0x277D01278]);
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v16 initWithEventID:v17 startDate:self->_bundleStartDate endDate:0 relationship:0 socialScore:v13 combinedFrequencyScores:v14 combinedRecencyScores:*buf combinedSignificanceScores:v15];

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

- (id)queryRealTimeEventsByEventIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (self->_ongoingProximityEvent)
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDiscoveryContactRecord querying real-time events by eventIDs", buf, 2u);
      }

      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v4;
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
            v14 = [(RTProximityEvent *)self->_ongoingProximityEvent eventID];
            LODWORD(v12) = [v12 isEqual:v14];

            if (v12)
            {
              [v6 addObject:self->_ongoingProximityEvent];
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
      v6 = MEMORY[0x277CBEBF8];
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

    v6 = [MEMORY[0x277CBEA60] array];
  }

  return v6;
}

- (id)queryContactScoresWithContactIDs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
    v7 = v4;
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
      v18 = [(NSMutableDictionary *)self->_contactScores allValues];
    }

    else
    {
      v18 = v6;
    }

    v19 = v18;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactIDs", buf, 2u);
    }

    v19 = [MEMORY[0x277CBEA60] array];
  }

  return v19;
}

- (id)getLatestAdvertisementDate:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 latestAdvertisementDate];
    }

    else
    {
      v5 = 0;
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

    v5 = 0;
  }

  return v5;
}

- (id)getFirstObservationDate:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 firstObservation];
    }

    else
    {
      v5 = 0;
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

    v5 = 0;
  }

  return v5;
}

- (id)getContactScores:(id)a3
{
  if (a3)
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

- (id)getInteractionSessions:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 interactionSessions];
    }

    else
    {
      v5 = 0;
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

    v5 = 0;
  }

  return v5;
}

- (void)checkAndCloseProximityEventsIfNeeded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
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
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  LODWORD(bundleStartDate) = [(NSDate *)bundleStartDate isEqualToDate:v7];

  if (bundleStartDate)
  {
LABEL_16:
    objc_storeStrong(&self->_bundleStartDate, a3);
    goto LABEL_17;
  }

  [v5 timeIntervalSinceDate:self->_bundleStartDate];
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
      [(RTPeopleDiscoveryContactRecord *)self closeProximityEvents:self->_bundleStartDate bundleEndDate:v5 contactRecords:self->_contactRecord ongoingProximityEvent:self->_ongoingProximityEvent];
    }

    v15 = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
    [v15 removeAllObjects];

    [(RTPeopleDiscoveryContactRecord *)self setOngoingProximityEvent:0];
    goto LABEL_16;
  }

  [v5 timeIntervalSinceDate:self->_bundleStartDate];
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

- (void)closeProximityEvents:(id)a3 bundleEndDate:(id)a4 contactRecords:(id)a5 ongoingProximityEvent:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  [v11 timeIntervalSinceDate:v10];
  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1508];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1520];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2845A1538];
  v37[0] = 0.0;
  [(RTPeopleDiscoveryContactRecord *)self generateProximityEventScores:v37 socialScore:v13 contactRecords:v16 combinedFrequencyScores:v17 combinedRecencyScores:v18 combinedSignificanceScores:v15];

  if (v37[0] > 0.0)
  {
    v30 = v12;
    if (v12)
    {
      [v12 eventID];
    }

    else
    {
      [MEMORY[0x277CCAD78] UUID];
    }
    v19 = ;
    v20 = objc_alloc(MEMORY[0x277D01278]);
    v21 = [v20 initWithEventID:v19 startDate:v10 endDate:v11 relationship:0 socialScore:v16 combinedFrequencyScores:v17 combinedRecencyScores:v37[0] combinedSignificanceScores:v18];
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

    v12 = v30;
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

- (void)generateProximityEventScores:(double)a3 socialScore:(double *)a4 contactRecords:(id)a5 combinedFrequencyScores:(id)a6 combinedRecencyScores:(id)a7 combinedSignificanceScores:(id)a8
{
  v46 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (a3 <= 0.0)
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

    v32 = a4;
    v33 = v16;
    v34 = v15;
    v35 = v14;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = v13;
    v18 = v13;
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
          v29 = v28 / a3;
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

    v16 = v33;
    *v32 = v22;
    v14 = v35;
    v13 = v36;
    v15 = v34;
  }
}

- (int64_t)bucketizeFrequencyScore:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    return 0;
  }

  if (a3 >= 0.0 && a3 < 0.4)
  {
    return 3;
  }

  if (a3 >= 0.4 && a3 <= 0.6)
  {
    return 2;
  }

  if (a3 <= 1.0)
  {
    return a3 > 0.6;
  }

  return 0;
}

- (int64_t)bucketizeRecencyScore:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    return 0;
  }

  if (a3 >= 0.0 && a3 < 0.33)
  {
    return 3;
  }

  if (a3 >= 0.33 && a3 <= 0.66)
  {
    return 2;
  }

  if (a3 <= 1.0)
  {
    return a3 > 0.66;
  }

  return 0;
}

- (int64_t)bucketizeSignificanceScore:(double)a3
{
  if (a3 < 0.5)
  {
    return 0;
  }

  if (a3 < 0.667)
  {
    return 3;
  }

  if (a3 > 0.834)
  {
    return a3 <= 1.0;
  }

  return 2;
}

- (void)createSingleContactRecord:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 contactID];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "create new contact record: %@", &v12, 0xCu);
  }

  v7 = [RTPeopleDiscoverySingleContactRecord alloc];
  v8 = [v4 contactID];
  v9 = [(RTPeopleDiscoverySingleContactRecord *)v7 initWithContactID:v8 withAdvertisement:v4];

  v10 = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
  v11 = [v4 contactID];
  [v10 setObject:v9 forKey:v11];
}

- (void)mergeWithAnotherContactRecord:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    v72 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 contactRecord];
      v7 = [v6 count];
      v8 = [v4 ongoingProximityEvent];
      v9 = [v8 description];
      v10 = [v4 contactScores];
      v11 = [v10 count];
      v12 = [v72 bundleStartDate];
      *buf = 134218754;
      v89 = v7;
      v90 = 2112;
      v91 = v9;
      v92 = 2048;
      v93 = v11;
      v4 = v72;
      v94 = 2112;
      v95 = v12;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "merging contact record: number of contacts, %lu, ongoing proximity event, %@, number of contact scores, %lu, bundle start time, %@", buf, 0x2Au);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v13 = [v4 contactScores];
    v14 = [v13 allKeys];

    v15 = [v14 countByEnumeratingWithState:&v81 objects:v87 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v81 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v19];

          if (v21)
          {
            v22 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v19];
            v23 = [v4 contactScores];
            v24 = [v23 objectForKeyedSubscript:v19];

            v4 = v72;
            [v22 mergeWithAnotherContactScore:v24];
          }

          else
          {
            v22 = [v4 contactScores];
            v24 = [v22 objectForKeyedSubscript:v19];
            [(NSMutableDictionary *)self->_contactScores setObject:v24 forKeyedSubscript:v19];
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v16);
    }

    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = [v4 bundleStartDate];
    [v25 timeIntervalSinceDate:v26];
    v28 = v27;
    maxBackstopDuration = self->_maxBackstopDuration;

    if (v28 < maxBackstopDuration)
    {
      ongoingProximityEvent = self->_ongoingProximityEvent;
      if (ongoingProximityEvent)
      {
        v31 = ongoingProximityEvent;
      }

      else
      {
        v31 = [v72 ongoingProximityEvent];
      }

      v51 = self->_ongoingProximityEvent;
      self->_ongoingProximityEvent = v31;

      bundleStartDate = self->_bundleStartDate;
      v53 = [MEMORY[0x277CBEAA8] distantPast];
      if ([(NSDate *)bundleStartDate isEqualToDate:v53])
      {
        v4 = v72;
        v54 = [v72 bundleStartDate];

        if (v54)
        {
          v55 = [v72 bundleStartDate];
          v56 = self->_bundleStartDate;
          self->_bundleStartDate = v55;
          goto LABEL_42;
        }
      }

      else
      {

        v4 = v72;
      }

      v56 = [v4 bundleStartDate];
      if (v56)
      {
        v57 = [v4 bundleStartDate];
        v58 = [v57 earlierDate:self->_bundleStartDate];
        v59 = self->_bundleStartDate;
        self->_bundleStartDate = v58;
      }

      else
      {
        v60 = self->_bundleStartDate;
        v57 = self->_bundleStartDate;
        self->_bundleStartDate = v60;
      }

LABEL_42:
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v61 = [v4 contactRecord];
      v32 = [v61 allKeys];

      v62 = [v32 countByEnumeratingWithState:&v73 objects:v85 count:16];
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
              objc_enumerationMutation(v32);
            }

            v66 = *(*(&v73 + 1) + 8 * j);
            v67 = objc_autoreleasePoolPush();
            v68 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v66];

            if (v68)
            {
              v69 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v66];
              v70 = [v4 contactRecord];
              v71 = [v70 objectForKeyedSubscript:v66];

              v4 = v72;
              [v69 mergeWithAnotherSingleContactRecord:v71];
            }

            else
            {
              v69 = [v4 contactRecord];
              v71 = [v69 objectForKeyedSubscript:v66];
              [(NSMutableDictionary *)self->_contactRecord setObject:v71 forKeyedSubscript:v66];
            }

            objc_autoreleasePoolPop(v67);
          }

          v63 = [v32 countByEnumeratingWithState:&v73 objects:v85 count:16];
        }

        while (v63);
      }

      goto LABEL_52;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CBEAA8] now];
      v35 = [v72 bundleStartDate];
      *buf = 138412546;
      v89 = v34;
      v90 = 2112;
      v91 = v35;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "closing proximity events for stale records, current time, %@, bundle start time, %@", buf, 0x16u);
    }

    v32 = [MEMORY[0x277CBEAA8] distantPast];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v36 = [v72 contactRecord];
    v37 = [v36 countByEnumeratingWithState:&v77 objects:v86 count:16];
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
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v77 + 1) + 8 * k);
          v42 = [v72 contactRecord];
          v43 = [v42 objectForKeyedSubscript:v41];

          v44 = [v43 latestAdvertisementDate];
          v45 = [v32 compare:v44];

          if (v45 == -1)
          {
            v46 = [v43 latestAdvertisementDate];

            v32 = v46;
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v38);
    }

    v47 = [MEMORY[0x277CBEAA8] distantPast];

    v4 = v72;
    if (v32 != v47)
    {
      v48 = [v72 bundleStartDate];
      v49 = [v72 contactRecord];
      v50 = [v72 ongoingProximityEvent];
      [(RTPeopleDiscoveryContactRecord *)self closeProximityEvents:v48 bundleEndDate:v32 contactRecords:v49 ongoingProximityEvent:v50];
    }
  }

  else
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherRecord", buf, 2u);
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
        v13 = [v12 frequencyCount];
        [v12 runningMean];
        v15 = v14;
        [v12 runningMeanOfSquares];
        v17 = v16;
        [v12 frequencyScore];
        v19 = fabs(v18 + 1.0) < 2.22044605e-16;
        v20 = (v15 + v13) * 0.5;
        if (v19)
        {
          v21 = (v13 * v13);
        }

        else
        {
          v21 = (v17 + (v13 * v13)) * 0.5;
        }

        if (v19)
        {
          v22 = v13;
        }

        else
        {
          v22 = v20;
        }

        [v12 setRunningMean:{v22, v33, v34}];
        [v12 setRunningMeanOfSquares:v21];
        v23 = -(v13 - v22) / (sqrt(v21 - v22 * v22) + 2.22044605e-16);
        [v12 setFrequencyScore:1.0 / (expf(v23) + 1.0)];
        [v12 recencyScore];
        v25 = fabs(v24 + 1.0);
        if (v13)
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

  v32 = [(NSMutableDictionary *)self->_contactScores allKeys];
  [(RTPeopleDiscoveryContactRecord *)self _fetchAndStoreSignificanceScore:v32];
}

- (void)_fetchAndStoreSignificanceScore:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = objc_alloc_init(MEMORY[0x277D3A090]);
  v5 = [v19 contactPriorsForContactIdentifiers:v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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

- (id)_updateContactFrequencyCount:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v4];
    [v6 setFrequencyCount:{objc_msgSend(v6, "frequencyCount") + 1}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412546;
        v11 = v4;
        v12 = 2048;
        v13 = [v6 frequencyCount];
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
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "create new scores for contact %@", &v10, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277D010C8]) initWithContactID:v4 frequencyScore:1 recencyScore:-1.0 significanceScore:-1.0 frequencyCount:-1.0 runningMean:0.0 runningMeanOfSquares:0.0];
    [(NSMutableDictionary *)self->_contactScores setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)injectContactScore:(id)a3
{
  contactScores = self->_contactScores;
  v4 = a3;
  v5 = [v4 contactID];
  [(NSMutableDictionary *)contactScores setObject:v4 forKey:v5];
}

- (void)ingestEvent:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [(RTPeopleDiscoveryContactRecord *)self updateContactRecordOnAdvertisementReceived:v4];
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

+ (id)computeEventMetrics:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:&unk_28459F300 forKeyedSubscript:@"numOfEventsPerDay"];
  v5 = [v3 endDate];
  if (v5)
  {
    v6 = [v3 endDate];
    v7 = [v3 startDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v4 setObject:v10 forKeyedSubscript:@"duration"];

  v11 = MEMORY[0x277CCABB0];
  [v3 socialScore];
  v12 = [v11 numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"socialScore"];

  return v4;
}

- (void)notifyObserversOnCloseProximityEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          [v10 didCloseProximityEvent:{v4, v12}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleDiscoveryContactRecord *)self contactRecord];
      v7 = [(RTPeopleDiscoveryContactRecord *)v5 contactRecord];

      v8 = [v6 isEqual:v7];
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
  v3 = [(NSMutableDictionary *)self->_contactRecord allKeys];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"record: %@", v8];
        v11 = [(NSMutableDictionary *)self->_contactRecord objectForKeyedSubscript:v8];
        v12 = [v11 descriptionDictionary];
        [0 setObject:v12 forKey:v10];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(NSMutableDictionary *)self->_contactScores allKeys];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"score: %@", v18];
        v21 = [(NSMutableDictionary *)self->_contactScores objectForKeyedSubscript:v18];
        v22 = [v21 descriptionDictionary];
        [0 setObject:v22 forKey:v20];

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  v23 = [0 copy];

  return v23;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(RTPeopleDiscoveryContactRecord *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v11];
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

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (RTPeopleDiscoveryContactRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = RTPeopleDiscoveryContactRecord;
  v5 = [(RTPeopleDiscoveryContactRecord *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ContactRecord"];
    contactRecord = v5->_contactRecord;
    v5->_contactRecord = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OngoingProximityEvent"];
    ongoingProximityEvent = v5->_ongoingProximityEvent;
    v5->_ongoingProximityEvent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleStartDate"];
    bundleStartDate = v5->_bundleStartDate;
    v5->_bundleStartDate = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"ContactScores"];
    contactScores = v5->_contactScores;
    v5->_contactScores = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contactRecord = self->_contactRecord;
  v5 = a3;
  [v5 encodeObject:contactRecord forKey:@"ContactRecord"];
  [v5 encodeObject:self->_ongoingProximityEvent forKey:@"OngoingProximityEvent"];
  [v5 encodeObject:self->_bundleStartDate forKey:@"BundleStartDate"];
  [v5 encodeObject:self->_contactScores forKey:@"ContactScores"];
}

@end