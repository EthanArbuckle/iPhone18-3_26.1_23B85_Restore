@interface RTPeopleDensityRecord
+ (id)computeEventMetrics:(id)a3;
+ (id)computeRssiHistogramForAdvs:(id)a3;
+ (int)_computeMeanOfRssi:(id)a3;
+ (void)_computeDensityScore:(double *)a3 scanDuration:(double *)a4 forRecords:(id)a5;
- (RTPeopleDensityRecord)initWithCoder:(id)a3;
- (RTPeopleDensityRecord)initWithQueue:(id)a3 peopleDensityStore:(id)a4 defaultsManager:(id)a5;
- (id)computeRssiHistogram;
- (id)fetchCurrentObservationBundle;
- (id)fetchOngoingPeopleDensityBundle:(id)a3 endDate:(id)a4;
- (void)_closeDensityBundle:(id)a3;
- (void)cleanUpOngoingPeopleDensityBundle;
- (void)closeDensityBundle:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getCurrentScoreAndScanDuration:(double *)a3 scanDuration:(double *)a4;
- (void)mergeWithAnotherDensityRecord:(id)a3;
- (void)updateRSSIHistogramOnAdvertisementReceived:(id)a3;
- (void)updateRecordOnFetchComplete:(unint64_t)a3 scanDuration:(double)a4 referenceDate:(id)a5 advertisements:(id)a6;
@end

@implementation RTPeopleDensityRecord

- (RTPeopleDensityRecord)initWithQueue:(id)a3 peopleDensityStore:(id)a4 defaultsManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v28 = 0;
      goto LABEL_19;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: peopleDensityStore";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_9;
  }

  if (!v11)
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
    objc_storeStrong(&v13->_queue, a3);
    objc_storeStrong(&v14->_peopleDensityStore, a4);
    objc_storeStrong(&v14->_defaultsManager, a5);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    records = v14->_records;
    v14->_records = v15;

    v17 = objc_alloc_init(RTPeopleDensityRecordRunningRecentObservation);
    runningRecentBundle = v14->_runningRecentBundle;
    v14->_runningRecentBundle = v17;

    v19 = [MEMORY[0x277CBEAA8] distantPast];
    bundleStartDate = v14->_bundleStartDate;
    v14->_bundleStartDate = v19;

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
      v32 = [v31 integerValue];
    }

    else
    {
      v32 = 28800;
    }

    v14->_maxBackstopDuration = v32;
  }

  self = v14;
  v28 = self;
LABEL_19:

  return v28;
}

- (void)updateRecordOnFetchComplete:(unint64_t)a3 scanDuration:(double)a4 referenceDate:(id)a5 advertisements:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  p_bundleStartDate = &self->_bundleStartDate;
  [v11 timeIntervalSinceDate:self->_bundleStartDate];
  v15 = v14;
  bundleStartDate = self->_bundleStartDate;
  v17 = [MEMORY[0x277CBEAA8] distantPast];
  v18 = v17;
  if (bundleStartDate == v17)
  {

    goto LABEL_10;
  }

  v19 = [v11 compare:*p_bundleStartDate];

  if (v19 == -1)
  {
LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v38 = [v11 getFormattedDateString];
        *buf = 138412290;
        v51 = v38;
        _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord update bundle start time to, %@", buf, 0xCu);
      }
    }

    v23 = v11;
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
    v20 = [(RTPeopleDensityRecord *)self computeRssiHistogram];
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
      v27 = [v26 initWithBundleUUID:v25 startDate:*p_bundleStartDate endDate:v11 densityScore:v20 scanDuration:v48 rssiHistogram:v47];
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

  objc_storeStrong(&self->_bundleStartDate, a5);
  [(NSMutableArray *)self->_records removeAllObjects];
  [(NSMutableDictionary *)self->_addressToRssiValues removeAllObjects];
  v24 = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = 0;
LABEL_23:

LABEL_24:
  v28 = [[RTPeopleDensitySingleRecord alloc] initWithStats:a3 scanDuration:a4];
  [(RTPeopleDensitySingleRecord *)v28 setStartDatetime:v11];
  [(NSMutableArray *)self->_records addObject:v28];
  [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle addRecord:v28];
  [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle updateHistogramWithAdvs:v12];
  runningRecentBundle = self->_runningRecentBundle;
  v30 = [MEMORY[0x277CBEAA8] now];
  [(RTPeopleDensityRecordRunningRecentObservation *)runningRecentBundle trimRunningRecordsBeforeRef:v30];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v12;
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

- (void)updateRSSIHistogramOnAdvertisementReceived:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 rssi] < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v4 description];
        *buf = 138412290;
        v22 = v18;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#RTPeopleDensityRecord update RSSI histogram for advertisement, %@", buf, 0xCu);
      }
    }

    addressToRssiValues = self->_addressToRssiValues;
    v9 = [v4 address];
    v10 = [(NSMutableDictionary *)addressToRssiValues objectForKey:v9];

    if (v10)
    {
      v11 = self->_addressToRssiValues;
      v12 = [v4 address];
      v5 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

      if (v5)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "rssi")}];
        [v5 addObject:v6];
      }

      else
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v19 = [v4 address];
          *buf = 138412290;
          v22 = v19;
          _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#RTPeopleDensityRecord _addressToRssiValues has nil entry at address %@", buf, 0xCu);
        }
      }

      goto LABEL_14;
    }

    v13 = MEMORY[0x277CBEB18];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "rssi")}];
    v20 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v5 = [v13 arrayWithArray:v15];

    v16 = self->_addressToRssiValues;
    v17 = [v4 address];
    [(NSMutableDictionary *)v16 setObject:v5 forKeyedSubscript:v17];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 description];
      *buf = 138412290;
      v22 = v6;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#RTPeopleDensityRecord received invalid RSSI value, adv, %@", buf, 0xCu);
LABEL_14:
    }
  }
}

- (void)getCurrentScoreAndScanDuration:(double *)a3 scanDuration:(double *)a4
{
  v7 = objc_opt_class();
  records = self->_records;

  [v7 _computeDensityScore:a3 scanDuration:a4 forRecords:records];
}

- (id)fetchOngoingPeopleDensityBundle:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
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

  if (!v7)
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

  if ([v7 compare:self->_bundleStartDate] == -1)
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
  v10 = [(RTPeopleDensityRecord *)self computeRssiHistogram];
  v11 = objc_alloc(MEMORY[0x277D011C8]);
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v11 initWithBundleUUID:v12 startDate:self->_bundleStartDate endDate:0 densityScore:v10 scanDuration:*buf rssiHistogram:v17];

  objc_storeStrong(&self->_ongoingPeopleDensityEvent, v13);
LABEL_12:

  return v13;
}

- (id)fetchCurrentObservationBundle
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0.0;
  *&v27 = -1.0;
  v3 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
  v4 = [v3 firstObject];
  v5 = [v4 startDatetime];

  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  v9 = objc_opt_class();
  v10 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
  [v9 _computeDensityScore:&v27 scanDuration:&v26 forRecords:v10];

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v26;
    [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle currentConfidenceThreshold];
    *buf = 138413058;
    v29 = v5;
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
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle runningRecords];
    v19 = [v18 firstObject];
    v20 = [v19 startDatetime];
    v22 = v26;
    v21 = *&v27;
    v23 = [(RTPeopleDensityRecordRunningRecentObservation *)self->_runningRecentBundle getHistogram];
    v24 = [v16 initWithBundleUUID:v17 startDate:v20 endDate:0 densityScore:v23 scanDuration:v21 rssiHistogram:v22];
  }

  return v24;
}

+ (void)_computeDensityScore:(double *)a3 scanDuration:(double *)a4 forRecords:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v31 + 1) + 8 * i) scanDuration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
    if (v11 != 0.0)
    {
      *a4 = v11;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v7;
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
            v23 = [v20 advertisementsCount];
            [v20 scanDuration];
            v18 = v18 + v22 * (v24 / v11 * v23);
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v16);
      }

      else
      {
        v18 = 0.0;
      }

      *a3 = v18;
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

  *a3 = -1.0;
  *a4 = v11;
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
      v16 = [(NSMutableDictionary *)self->_addressToRssiValues allKeys];
      *buf = 138412290;
      v24 = v16;
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
            v13 = [v12 integerValue];

            v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13 + 1];
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

+ (int)_computeMeanOfRssi:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
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
      v19 = v3;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "_computeMeanOfRssi divide by 0: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)computeRssiHistogramForAdvs:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
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
        v11 = [v10 address];
        v12 = [v5 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = objc_opt_new();
          v14 = [v10 address];
          [v5 setObject:v13 forKeyedSubscript:v14];
        }

        v15 = [v10 address];
        v16 = [v5 objectForKeyedSubscript:v15];
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
  v30 = [v5 allKeys];
  v18 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(v30);
        }

        v22 = [v5 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
        if ([v22 count])
        {
          v23 = [a1 _computeMeanOfRssi:v22];
          v24 = [MEMORY[0x277CCABB0] numberWithInt:v23];
          v25 = [v4 objectForKey:v24];

          if (v25)
          {
            v26 = [v4 objectForKeyedSubscript:v24];
            v27 = [v26 integerValue];

            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27 + 1];
            [v4 setObject:v28 forKeyedSubscript:v24];
          }

          else
          {
            [v4 setObject:&unk_28459DB30 forKeyedSubscript:v24];
          }
        }
      }

      v19 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v19);
  }

  return v4;
}

- (void)closeDensityBundle:(id)a3
{
  v4 = a3;
  v5 = [(RTPeopleDensityRecord *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTPeopleDensityRecord_closeDensityBundle___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_closeDensityBundle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTPeopleDensityRecord *)self peopleDensityStore];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __45__RTPeopleDensityRecord__closeDensityBundle___block_invoke;
    v21[3] = &unk_2788C4D10;
    v23 = a2;
    v7 = v5;
    v22 = v7;
    [v6 storePeopleDensity:v7 handler:v21];

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

+ (id)computeEventMetrics:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
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
  [v4 setObject:v10 forKeyedSubscript:@"eventDuration"];

  v11 = MEMORY[0x277CCABB0];
  [v3 densityScore];
  v12 = [v11 numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"densityScore"];

  v13 = MEMORY[0x277CCABB0];
  [v3 scanDuration];
  v14 = [v13 numberWithDouble:?];
  [v4 setObject:v14 forKeyedSubscript:@"scanDuration"];

  return v4;
}

- (void)cleanUpOngoingPeopleDensityBundle
{
  [(NSMutableArray *)self->_records removeAllObjects];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  bundleStartDate = self->_bundleStartDate;
  self->_bundleStartDate = v3;

  ongoingPeopleDensityEvent = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = 0;

  addressToRssiValues = self->_addressToRssiValues;

  [(NSMutableDictionary *)addressToRssiValues removeAllObjects];
}

- (void)mergeWithAnotherDensityRecord:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherRecord", buf, 2u);
    }

    goto LABEL_34;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 bundleStartDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;
  maxBackstopDuration = self->_maxBackstopDuration;

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 >= maxBackstopDuration)
  {
    if (v11)
    {
      v24 = [MEMORY[0x277CBEAA8] now];
      v25 = [v4 bundleStartDate];
      *buf = 138412546;
      v51 = v24;
      v52 = 2112;
      v53 = v25;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "dropping people density records for stale records, current time, %@, bundle start time, %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (v11)
  {
    v12 = [v4 records];
    v13 = [v12 count];
    v14 = [v4 ongoingPeopleDensityEvent];
    v15 = [v14 description];
    v16 = [v4 bundleStartDate];
    v17 = [v4 addressToRssiValues];
    *buf = 134218754;
    v51 = v13;
    v52 = 2112;
    v53 = v15;
    v54 = 2112;
    v55 = v16;
    v56 = 2048;
    v57 = [v17 count];
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "merging density record: number of records, %lu, ongoing density event, %@, bundle start time, %@, number of RSSI records, %lu", buf, 0x2Au);
  }

  v18 = [v4 records];
  v19 = [v18 count];

  if (v19)
  {
    records = self->_records;
    v21 = [v4 records];
    [(NSMutableArray *)records addObjectsFromArray:v21];
  }

  ongoingPeopleDensityEvent = self->_ongoingPeopleDensityEvent;
  if (ongoingPeopleDensityEvent)
  {
    v23 = ongoingPeopleDensityEvent;
  }

  else
  {
    v23 = [v4 ongoingPeopleDensityEvent];
  }

  v26 = self->_ongoingPeopleDensityEvent;
  self->_ongoingPeopleDensityEvent = v23;

  bundleStartDate = self->_bundleStartDate;
  v28 = [MEMORY[0x277CBEAA8] distantPast];
  if ([(NSDate *)bundleStartDate isEqualToDate:v28])
  {
    v29 = [v4 bundleStartDate];

    if (v29)
    {
      v30 = [v4 bundleStartDate];
      v31 = self->_bundleStartDate;
      self->_bundleStartDate = v30;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v31 = [v4 bundleStartDate];
  if (v31)
  {
    v32 = [v4 bundleStartDate];
    v33 = [v32 earlierDate:self->_bundleStartDate];
    v34 = self->_bundleStartDate;
    self->_bundleStartDate = v33;
  }

  else
  {
    v35 = self->_bundleStartDate;
    v32 = self->_bundleStartDate;
    self->_bundleStartDate = v35;
  }

LABEL_22:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [v4 addressToRssiValues];
  v36 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(v10);
        }

        v40 = *(*(&v45 + 1) + 8 * i);
        v41 = [(NSMutableDictionary *)self->_addressToRssiValues objectForKey:v40];

        if (v41)
        {
          v42 = [(NSMutableDictionary *)self->_addressToRssiValues objectForKeyedSubscript:v40];
          if (!v42)
          {
            goto LABEL_32;
          }

          v43 = [v4 addressToRssiValues];
          v44 = [v43 objectForKeyedSubscript:v40];
          [v42 addObjectsFromArray:v44];
        }

        else
        {
          v42 = [v4 addressToRssiValues];
          v43 = [v42 objectForKeyedSubscript:v40];
          [(NSMutableDictionary *)self->_addressToRssiValues setObject:v43 forKeyedSubscript:v40];
        }

LABEL_32:
      }

      v37 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v37);
  }

LABEL_34:
}

- (RTPeopleDensityRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = RTPeopleDensityRecord;
  v5 = [(RTPeopleDensityRecord *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"DensityRecord"];
    records = v5->_records;
    v5->_records = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OngoingPeopleDensityEvent"];
    ongoingPeopleDensityEvent = v5->_ongoingPeopleDensityEvent;
    v5->_ongoingPeopleDensityEvent = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleStartDate"];
    bundleStartDate = v5->_bundleStartDate;
    v5->_bundleStartDate = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"RSSIRecords"];
    addressToRssiValues = v5->_addressToRssiValues;
    v5->_addressToRssiValues = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  records = self->_records;
  v5 = a3;
  [v5 encodeObject:records forKey:@"DensityRecord"];
  [v5 encodeObject:self->_ongoingPeopleDensityEvent forKey:@"OngoingPeopleDensityEvent"];
  [v5 encodeObject:self->_bundleStartDate forKey:@"BundleStartDate"];
  [v5 encodeObject:self->_addressToRssiValues forKey:@"RSSIRecords"];
}

@end