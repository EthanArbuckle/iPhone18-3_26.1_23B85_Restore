@interface RTPeopleDensityRecord
+ (id)computeEventMetrics:(id)metrics;
+ (id)computeRssiHistogramForAdvs:(id)advs;
+ (int)_computeMeanOfRssi:(id)rssi;
+ (void)_computeDensityScore:(double *)score scanDuration:(double *)duration forRecords:(id)records;
- (RTPeopleDensityRecord)initWithCoder:(id)coder;
- (RTPeopleDensityRecord)initWithQueue:(id)queue peopleDensityStore:(id)store defaultsManager:(id)manager;
- (id)computeRssiHistogram;
- (id)fetchCurrentObservationBundle;
- (id)fetchOngoingPeopleDensityBundle:(id)bundle endDate:(id)date;
- (void)_closeDensityBundle:(id)bundle;
- (void)cleanUpOngoingPeopleDensityBundle;
- (void)closeDensityBundle:(id)bundle;
- (void)encodeWithCoder:(id)coder;
- (void)getCurrentScoreAndScanDuration:(double *)duration scanDuration:(double *)scanDuration;
- (void)mergeWithAnotherDensityRecord:(id)record;
- (void)updateRSSIHistogramOnAdvertisementReceived:(id)received;
- (void)updateRecordOnFetchComplete:(unint64_t)complete scanDuration:(double)duration referenceDate:(id)date advertisements:(id)advertisements;
@end

@implementation RTPeopleDensityRecord

- (RTPeopleDensityRecord)initWithQueue:(id)queue peopleDensityStore:(id)store defaultsManager:(id)manager
{
  queueCopy = queue;
  storeCopy = store;
  managerCopy = manager;
  v12 = managerCopy;
  if (!storeCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_19;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: peopleDensityStore";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_9;
  }

  if (!managerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_21;
  }

  v34.receiver = self;
  v34.super_class = RTPeopleDensityRecord;
  v13 = [(RTPeopleDensityRecord *)&v34 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    objc_storeStrong(&v14->_peopleDensityStore, store);
    objc_storeStrong(&v14->_defaultsManager, manager);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    records = v14->_records;
    v14->_records = v15;

    v17 = objc_alloc_init(RTPeopleDensityRecordRunningRecentObservation);
    runningRecentBundle = v14->_runningRecentBundle;
    v14->_runningRecentBundle = v17;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    bundleStartDate = v14->_bundleStartDate;
    v14->_bundleStartDate = distantPast;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    addressToRssiValues = v14->_addressToRssiValues;
    v14->_addressToRssiValues = v21;

    v23 = [v12 objectForKey:@"RTDefaultsPeopleDiscoveryProviderDensityBundleDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 doubleValue];
      v25 = v24;
    }

    else
    {
      v25 = 3600;
    }

    v14->_maxBundleDuration = v25;
    v29 = [v12 objectForKey:@"RTDefaultsPeopleDiscoveryProviderHighDensityThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 floatValue];
    }

    else
    {
      v30 = 1128792064;
    }

    LODWORD(v14->_highDensityThreshold) = v30;
    v31 = [v12 objectForKey:@"RTDefaultsPeopleDiscoveryProviderMaximumBackstopDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v31 integerValue];
    }

    else
    {
      integerValue = 28800;
    }

    v14->_maxBackstopDuration = integerValue;
  }

  self = v14;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (void)updateRecordOnFetchComplete:(unint64_t)complete scanDuration:(double)duration referenceDate:(id)date advertisements:(id)advertisements
{
  v52 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  advertisementsCopy = advertisements;
  p_bundleStartDate = &self->_bundleStartDate;
  [dateCopy timeIntervalSinceDate:self->_bundleStartDate];
  v15 = v14;
  bundleStartDate = self->_bundleStartDate;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v18 = distantPast;
  if (bundleStartDate == distantPast)
  {

    goto LABEL_10;
  }

  v19 = [dateCopy compare:*p_bundleStartDate];

  if (v19 == -1)
  {
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        getFormattedDateString = [dateCopy getFormattedDateString];
        *buf = 138412290;
        v51 = getFormattedDateString;
        _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord update bundle start time to, %@", buf, 0xCu);
      }
    }

    v23 = dateCopy;
    v24 = *p_bundleStartDate;
    *p_bundleStartDate = v23;
    goto LABEL_23;
  }

  if (v15 < self->_maxBundleDuration)
  {
    goto LABEL_24;
  }

  if (v15 < self->_maxBackstopDuration)
  {
    v47 = 0.0;
    v48 = -1.0;
    [objc_opt_class() _computeDensityScore:&v48 scanDuration:&v47 forRecords:self->_records];
    computeRssiHistogram = [(RTPeopleDensityRecord *)self computeRssiHistogram];
    if (v48 >= 0.0 && v47 > 1.0)
    {
      ongoingPeopleDensityEvent = self->_ongoingPeopleDensityEvent;
      if (ongoingPeopleDensityEvent)
      {
        [(RTPeopleDensity *)ongoingPeopleDensityEvent uuid];
      }

      else
      {
        [MEMORY[0x277CCAD78] UUID];
      }
      v25 = ;
      v26 = objc_alloc(MEMORY[0x277D011C8]);
      v42 = v25;
      v27 = [v26 initWithBundleUUID:v25 startDate:*p_bundleStartDate endDate:dateCopy densityScore:computeRssiHistogram scanDuration:v48 rssiHistogram:v47];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        log = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v39 = [v27 description];
          *buf = 138412290;
          v51 = v39;
          v40 = v39;
          _os_log_debug_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord storing people density bundle, %@", buf, 0xCu);
        }
      }

      [(RTPeopleDensityRecord *)self closeDensityBundle:v27, log];
    }
  }

  objc_storeStrong(&self->_bundleStartDate, date);
  [(NSMutableArray *)self->_records removeAllObjects];
  [(NSMutableDictionary *)self->_addressToRssiValues removeAllObjects];
  v24 = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = 0;
LABEL_23:

LABEL_24:
  v28 = [[RTPeopleDensitySingleRecord alloc] initWithStats:complete scanDuration:duration];
  [(RTPeopleDensitySingleRecord *)v28 setStartDatetime:dateCopy];
  [(NSMutableArray *)self->_records addObject:v28];
  [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle addRecord:v28];
  [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle updateHistogramWithAdvs:advertisementsCopy];
  runningRecentBundle = self->_runningRecentBundle;
  v30 = [MEMORY[0x277CBEAA8] now];
  [(RTPeopleDensityRecordRunningRecentObservation *)runningRecentBundle trimRunningRecordsBeforeRef:v30];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = advertisementsCopy;
  v32 = [v31 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v43 + 1) + 8 * i);
        v37 = objc_autoreleasePoolPush();
        [(RTPeopleDensityRecord *)self updateRSSIHistogramOnAdvertisementReceived:v36];
        objc_autoreleasePoolPop(v37);
      }

      v33 = [v31 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v33);
  }
}

- (void)updateRSSIHistogramOnAdvertisementReceived:(id)received
{
  v23 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if ([receivedCopy rssi] < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v18 = [receivedCopy description];
        *buf = 138412290;
        v22 = v18;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord update RSSI histogram for advertisement, %@", buf, 0xCu);
      }
    }

    addressToRssiValues = self->_addressToRssiValues;
    address = [receivedCopy address];
    v10 = [(NSMutableDictionary *)addressToRssiValues objectForKey:address];

    if (v10)
    {
      v11 = self->_addressToRssiValues;
      address2 = [receivedCopy address];
      v5 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:address2];

      if (v5)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(receivedCopy, "rssi")}];
        [v5 addObject:v6];
      }

      else
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          address3 = [receivedCopy address];
          *buf = 138412290;
          v22 = address3;
          _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#RTPeopleDensityRecord _addressToRssiValues has nil entry at address %@", buf, 0xCu);
        }
      }

      goto LABEL_14;
    }

    v13 = MEMORY[0x277CBEB18];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(receivedCopy, "rssi")}];
    v20 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v5 = [v13 arrayWithArray:v15];

    v16 = self->_addressToRssiValues;
    address4 = [receivedCopy address];
    [(NSMutableDictionary *)v16 setObject:v5 forKeyedSubscript:address4];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [receivedCopy description];
      *buf = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#RTPeopleDensityRecord received invalid RSSI value, adv, %@", buf, 0xCu);
LABEL_14:
    }
  }
}

- (void)getCurrentScoreAndScanDuration:(double *)duration scanDuration:(double *)scanDuration
{
  v7 = objc_opt_class();
  records = self->_records;

  [v7 _computeDensityScore:duration scanDuration:scanDuration forRecords:records];
}

- (id)fetchOngoingPeopleDensityBundle:(id)bundle endDate:(id)date
{
  bundleCopy = bundle;
  dateCopy = date;
  v8 = dateCopy;
  if (!bundleCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: startDate";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_10;
  }

  if (!dateCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: endDate";
    goto LABEL_16;
  }

  if ([dateCopy compare:self->_bundleStartDate] == -1)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#RTPeopleDensityRecord generating real-time bundle", buf, 2u);
  }

  v17 = 0.0;
  *buf = 0xBFF0000000000000;
  [objc_opt_class() _computeDensityScore:buf scanDuration:&v17 forRecords:self->_records];
  computeRssiHistogram = [(RTPeopleDensityRecord *)self computeRssiHistogram];
  v11 = objc_alloc(MEMORY[0x277D011C8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = [v11 initWithBundleUUID:uUID startDate:self->_bundleStartDate endDate:0 densityScore:computeRssiHistogram scanDuration:*buf rssiHistogram:v17];

  objc_storeStrong(&self->_ongoingPeopleDensityEvent, v13);
LABEL_12:

  return v13;
}

- (id)fetchCurrentObservationBundle
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0.0;
  *&v27 = -1.0;
  runningRecords = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
  firstObject = [runningRecords firstObject];
  startDatetime = [firstObject startDatetime];

  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceDate:startDatetime];
  v8 = v7;

  v9 = objc_opt_class();
  runningRecords2 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
  [v9 _computeDensityScore:&v27 scanDuration:&v26 forRecords:runningRecords2];

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v26;
    [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle currentConfidenceThreshold];
    *buf = 138413058;
    v29 = startDatetime;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = v13;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#RTPeopleDensityRecord fetchCurrentHighConfidenceBundle runningRecordsStartdatetime:%@, theoreticalObsSpanSeconds: %f, totalScanDuration: %f, currentConfidenceThreshold: %f", buf, 0x2Au);
  }

  v14 = v26 / v8;
  [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle currentConfidenceThreshold];
  if (v14 <= v15)
  {
    v24 = 0;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D011C8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    runningRecords3 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
    firstObject2 = [runningRecords3 firstObject];
    startDatetime2 = [firstObject2 startDatetime];
    v22 = v26;
    v21 = *&v27;
    getHistogram = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle getHistogram];
    v24 = [v16 initWithBundleUUID:uUID startDate:startDatetime2 endDate:0 densityScore:getHistogram scanDuration:v21 rssiHistogram:v22];
  }

  return v24;
}

+ (void)_computeDensityScore:(double *)score scanDuration:(double *)duration forRecords:(id)records
{
  v37 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [recordsCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(recordsCopy);
        }

        [*(*(&v31 + 1) + 8 * i) scanDuration];
        v11 = v11 + v13;
      }

      v9 = [recordsCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
    if (v11 != 0.0)
    {
      *duration = v11;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = recordsCopy;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        v18 = 0.0;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v26 + 1) + 8 * j);
            [v20 scanDuration];
            v22 = 1.0 / (v21 / 900.0 + 1.0);
            advertisementsCount = [v20 advertisementsCount];
            [v20 scanDuration];
            v18 = v18 + v22 * (v24 / v11 * advertisementsCount);
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v16);
      }

      else
      {
        v18 = 0.0;
      }

      *score = v18;
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 0.0;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#RTPeopleDensityRecord receives zero total scan duration when computing scores", buf, 2u);
  }

  *score = -1.0;
  *duration = v11;
LABEL_23:
}

- (id)computeRssiHistogram
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [(NSMutableDictionary *)self->_addressToRssiValues allKeys];
      *buf = 138412290;
      v24 = allKeys;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord computing RSSI histogram, unique addresses %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_addressToRssiValues allKeys];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_addressToRssiValues objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        if ([v9 count])
        {
          v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "_computeMeanOfRssi:", v9)}];
          v11 = [v3 objectForKey:v10];

          if (v11)
          {
            v12 = [v3 objectForKeyedSubscript:v10];
            integerValue = [v12 integerValue];

            v14 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
            [v3 setObject:v14 forKeyedSubscript:v10];
          }

          else
          {
            [v3 setObject:&unk_28459DB30 forKeyedSubscript:v10];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (int)_computeMeanOfRssi:(id)rssi
{
  v20 = *MEMORY[0x277D85DE8];
  rssiCopy = rssi;
  if ([rssiCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = rssiCopy;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 = v8 + [*(*(&v13 + 1) + 8 * i) intValue];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = 3 * rint(v8 / [v4 count] / 3.0);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = rssiCopy;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "_computeMeanOfRssi divide by 0: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)computeRssiHistogramForAdvs:(id)advs
{
  v43 = *MEMORY[0x277D85DE8];
  advsCopy = advs;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = advsCopy;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        address = [v10 address];
        v12 = [v5 objectForKeyedSubscript:address];

        if (!v12)
        {
          v13 = objc_opt_new();
          address2 = [v10 address];
          [v5 setObject:v13 forKeyedSubscript:address2];
        }

        address3 = [v10 address];
        v16 = [v5 objectForKeyedSubscript:address3];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "rssi")}];
        [v16 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [v5 allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = [v5 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
        if ([v22 count])
        {
          v23 = [self _computeMeanOfRssi:v22];
          v24 = [MEMORY[0x277CCABB0] numberWithInt:v23];
          v25 = [v4 objectForKey:v24];

          if (v25)
          {
            v26 = [v4 objectForKeyedSubscript:v24];
            integerValue = [v26 integerValue];

            v28 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
            [v4 setObject:v28 forKeyedSubscript:v24];
          }

          else
          {
            [v4 setObject:&unk_28459DB30 forKeyedSubscript:v24];
          }
        }
      }

      v19 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v19);
  }

  return v4;
}

- (void)closeDensityBundle:(id)bundle
{
  bundleCopy = bundle;
  queue = [(RTPeopleDensityRecord *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTPeopleDensityRecord_closeDensityBundle___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = bundleCopy;
  v6 = bundleCopy;
  dispatch_async(queue, v7);
}

- (void)_closeDensityBundle:(id)bundle
{
  bundleCopy = bundle;
  if (bundleCopy)
  {
    peopleDensityStore = [(RTPeopleDensityRecord *)self peopleDensityStore];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke;
    v21[3] = &unk_2788C4D10;
    v23 = a2;
    v7 = bundleCopy;
    v22 = v7;
    [peopleDensityStore storePeopleDensity:v7 handler:v21];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke_39;
    aBlock[3] = &unk_2788C93E0;
    aBlock[4] = self;
    v20 = v7;
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [v9 initWithCString:RTAnalyticsEventPeopleDiscoveryDensityEvents encoding:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke_2;
    v16[3] = &unk_2788C8D18;
    v17 = v10;
    v18 = v8;
    v11 = v10;
    v12 = v8;
    v13 = _Block_copy(v16);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v11];
    AnalyticsSendEventLazy();

    v15 = v22;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bundle", buf, 2u);
    }
  }
}

void __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, event, %@, error, %@", &v7, 0x20u);
    }
  }
}

uint64_t __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke_39(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 computeEventMetrics:v3];
}

id __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

+ (id)computeEventMetrics:(id)metrics
{
  metricsCopy = metrics;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
  [dictionary setObject:v10 forKeyedSubscript:@"eventDuration"];

  v11 = MEMORY[0x277CCABB0];
  [metricsCopy densityScore];
  v12 = [v11 numberWithDouble:?];
  [dictionary setObject:v12 forKeyedSubscript:@"densityScore"];

  v13 = MEMORY[0x277CCABB0];
  [metricsCopy scanDuration];
  v14 = [v13 numberWithDouble:?];
  [dictionary setObject:v14 forKeyedSubscript:@"scanDuration"];

  return dictionary;
}

- (void)cleanUpOngoingPeopleDensityBundle
{
  [(NSMutableArray *)self->_records removeAllObjects];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  bundleStartDate = self->_bundleStartDate;
  self->_bundleStartDate = distantPast;

  ongoingPeopleDensityEvent = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = 0;

  addressToRssiValues = self->_addressToRssiValues;

  [(NSMutableDictionary *)addressToRssiValues removeAllObjects];
}

- (void)mergeWithAnotherDensityRecord:(id)record
{
  v58 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (!recordCopy)
  {
    addressToRssiValues2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(addressToRssiValues2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, addressToRssiValues2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherRecord", buf, 2u);
    }

    goto LABEL_34;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  bundleStartDate = [recordCopy bundleStartDate];
  [v5 timeIntervalSinceDate:bundleStartDate];
  v8 = v7;
  maxBackstopDuration = self->_maxBackstopDuration;

  addressToRssiValues2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v11 = os_log_type_enabled(addressToRssiValues2, OS_LOG_TYPE_DEFAULT);
  if (v8 >= maxBackstopDuration)
  {
    if (v11)
    {
      v24 = [MEMORY[0x277CBEAA8] now];
      bundleStartDate2 = [recordCopy bundleStartDate];
      *buf = 138412546;
      v51 = v24;
      v52 = 2112;
      v53 = bundleStartDate2;
      _os_log_impl(&dword_2304B3000, addressToRssiValues2, OS_LOG_TYPE_DEFAULT, "dropping people density records for stale records, current time, %@, bundle start time, %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (v11)
  {
    records = [recordCopy records];
    v13 = [records count];
    ongoingPeopleDensityEvent = [recordCopy ongoingPeopleDensityEvent];
    v15 = [ongoingPeopleDensityEvent description];
    bundleStartDate3 = [recordCopy bundleStartDate];
    addressToRssiValues = [recordCopy addressToRssiValues];
    *buf = 134218754;
    v51 = v13;
    v52 = 2112;
    v53 = v15;
    v54 = 2112;
    v55 = bundleStartDate3;
    v56 = 2048;
    v57 = [addressToRssiValues count];
    _os_log_impl(&dword_2304B3000, addressToRssiValues2, OS_LOG_TYPE_DEFAULT, "merging density record: number of records, %lu, ongoing density event, %@, bundle start time, %@, number of RSSI records, %lu", buf, 0x2Au);
  }

  records2 = [recordCopy records];
  v19 = [records2 count];

  if (v19)
  {
    records = self->_records;
    records3 = [recordCopy records];
    [(NSMutableArray *)records addObjectsFromArray:records3];
  }

  ongoingPeopleDensityEvent = self->_ongoingPeopleDensityEvent;
  if (ongoingPeopleDensityEvent)
  {
    ongoingPeopleDensityEvent2 = ongoingPeopleDensityEvent;
  }

  else
  {
    ongoingPeopleDensityEvent2 = [recordCopy ongoingPeopleDensityEvent];
  }

  v26 = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = ongoingPeopleDensityEvent2;

  bundleStartDate = self->_bundleStartDate;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if ([(NSDate *)bundleStartDate isEqualToDate:distantPast])
  {
    bundleStartDate4 = [recordCopy bundleStartDate];

    if (bundleStartDate4)
    {
      bundleStartDate5 = [recordCopy bundleStartDate];
      bundleStartDate6 = self->_bundleStartDate;
      self->_bundleStartDate = bundleStartDate5;
      goto LABEL_22;
    }
  }

  else
  {
  }

  bundleStartDate6 = [recordCopy bundleStartDate];
  if (bundleStartDate6)
  {
    bundleStartDate7 = [recordCopy bundleStartDate];
    v33 = [bundleStartDate7 earlierDate:self->_bundleStartDate];
    v34 = self->_bundleStartDate;
    self->_bundleStartDate = v33;
  }

  else
  {
    v35 = self->_bundleStartDate;
    bundleStartDate7 = self->_bundleStartDate;
    self->_bundleStartDate = v35;
  }

LABEL_22:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  addressToRssiValues2 = [recordCopy addressToRssiValues];
  v36 = [addressToRssiValues2 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v46;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(addressToRssiValues2);
        }

        v40 = *(*(&v45 + 1) + 8 * i);
        v41 = [(NSMutableDictionary *)self->_addressToRssiValues objectForKey:v40];

        if (v41)
        {
          addressToRssiValues4 = [(NSMutableDictionary *)self->_addressToRssiValues objectForKeyedSubscript:v40];
          if (!addressToRssiValues4)
          {
            goto LABEL_32;
          }

          addressToRssiValues3 = [recordCopy addressToRssiValues];
          v44 = [addressToRssiValues3 objectForKeyedSubscript:v40];
          [addressToRssiValues4 addObjectsFromArray:v44];
        }

        else
        {
          addressToRssiValues4 = [recordCopy addressToRssiValues];
          addressToRssiValues3 = [addressToRssiValues4 objectForKeyedSubscript:v40];
          [(NSMutableDictionary *)self->_addressToRssiValues setObject:addressToRssiValues3 forKeyedSubscript:v40];
        }

LABEL_32:
      }

      v37 = [addressToRssiValues2 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v37);
  }

LABEL_34:
}

- (RTPeopleDensityRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = RTPeopleDensityRecord;
  v5 = [(RTPeopleDensityRecord *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"DensityRecord"];
    records = v5->_records;
    v5->_records = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OngoingPeopleDensityEvent"];
    ongoingPeopleDensityEvent = v5->_ongoingPeopleDensityEvent;
    v5->_ongoingPeopleDensityEvent = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleStartDate"];
    bundleStartDate = v5->_bundleStartDate;
    v5->_bundleStartDate = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"RSSIRecords"];
    addressToRssiValues = v5->_addressToRssiValues;
    v5->_addressToRssiValues = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  records = self->_records;
  coderCopy = coder;
  [coderCopy encodeObject:records forKey:@"DensityRecord"];
  [coderCopy encodeObject:self->_ongoingPeopleDensityEvent forKey:@"OngoingPeopleDensityEvent"];
  [coderCopy encodeObject:self->_bundleStartDate forKey:@"BundleStartDate"];
  [coderCopy encodeObject:self->_addressToRssiValues forKey:@"RSSIRecords"];
}

@end