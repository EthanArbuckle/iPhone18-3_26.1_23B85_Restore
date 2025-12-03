@interface RTPlaceTypeClassifierMetricsCalculator
+ (BOOL)inferredAddressComponent:(id)component consistentWithTrueComponent:(id)trueComponent;
+ (id)allPlaceTypes;
+ (id)cacheMetricsKeyToString:(unint64_t)string;
+ (id)collectPlaceVersionsFromInferredPlaces:(id)places contactsPlaces:(id)contactsPlaces rottedPlaces:(id)rottedPlaces;
+ (id)keyForMetricType:(unint64_t)type placeType:(unint64_t)placeType source:(unint64_t)source metricKey:(unint64_t)key;
+ (id)keyForMetricType:(unint64_t)type sourcePlaceType:(unint64_t)placeType source:(unint64_t)source referenceSourcePlaceType:(unint64_t)sourcePlaceType referenceSource:(unint64_t)referenceSource metricKey:(unint64_t)key;
+ (id)keyForSourceType:(unint64_t)type placeType:(unint64_t)placeType;
+ (id)metricsKeyToString:(unint64_t)string;
+ (id)metricsSourceToString:(unint64_t)string;
+ (id)metricsTypeToString:(unint64_t)string;
+ (id)newAlgorithmInstanceWithInference:(id)inference distanceCalculator:(id)calculator;
+ (id)normalize:(id)normalize;
+ (unint64_t)addressComponentMatchesBetweenInferredAddress:(id)address trueAddress:(id)trueAddress;
+ (void)submitMetricsForInferredPlaces:(id)places contactsPlaces:(id)contactsPlaces rottedPlaces:(id)rottedPlaces distanceCalculator:(id)calculator metricManager:(id)manager;
+ (void)updateAlgorithmInstance:(id)instance byComparingInferredMapItem:(id)item withTruthfulMapItem:(id)mapItem withDistanceCalculator:(id)calculator;
- (RTPlaceTypeClassifierMetricsCalculator)initWithDistanceCalculator:(id)calculator learnedLocationStore:(id)store learnedPlaceTypeInferenceStore:(id)inferenceStore metricManager:(id)manager;
- (id)_computeCountOfLOIsForCacheMetricsFromLOIs:(id)is;
- (id)_computeCountOfNonNillLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeCountOfTotalLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeCountOfUniqueLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeDurationOfGraphForCacheMetricsFromLOIs:(id)is;
- (id)_computeFlipFlopCountLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:(id)inferences;
- (id)_computeOverAllMetricsForCacheMetrics;
- (id)_filterLearnedPlaceTypeInferencesWithPlaceType:(unint64_t)type dateInterval:(id)interval metricsSource:(unint64_t)source learnedPlaceTypeInferences:(id)inferences;
- (id)_getLearnedLocationOfInterests;
- (id)_getLearnedPlaceTypeInferencesWithDateInterval:(id)interval;
- (id)_retrieveMetricsFromCacheStore;
- (id)computeDistanceMetricForSourcePlaces:(id)places referencePlaces:(id)referencePlaces bins:(id)bins;
- (id)computeMetricsForSourcePlaceType:(unint64_t)type source:(unint64_t)source referenceSourcePlaceType:(unint64_t)placeType referenceSource:(unint64_t)referenceSource metricType:(unint64_t)metricType bins:(id)bins;
- (id)computeMetricsForWorkCandidates:(id)candidates sourceType:(unint64_t)type homeLOIs:(id)is workTruths:(id)truths distanceBins:(id)bins homeLOIMethodLabel:(id)label;
- (id)filterLearnedPlacesOfType:(unint64_t)type places:(id)places;
- (id)generateAllMultipleWorkMetrics;
- (id)retrieveComputedMetricsForSourcePlaceType:(unint64_t)type source:(unint64_t)source;
- (id)retrieveMetrics;
- (void)_storeLearnedPlaceTypeInferencesToCacheStore;
- (void)ensureMetricsDataHasKeysForSource:(unint64_t)source placeType:(unint64_t)type metricKey:(unint64_t)key;
- (void)fetchWorkInferenceStatsForLookbackDays:(int64_t)days handler:(id)handler;
- (void)onDailyMetricNotification:(id)notification;
- (void)resetStates;
- (void)setup;
- (void)storeMetricsData:(id)data source:(unint64_t)source;
- (void)storeMetricsData:(id)data source:(unint64_t)source placeType:(unint64_t)type;
- (void)storeMetricsData:(id)data source:(unint64_t)source placeType:(unint64_t)type metricKey:(unint64_t)key;
- (void)submitMetrics;
@end

@implementation RTPlaceTypeClassifierMetricsCalculator

- (RTPlaceTypeClassifierMetricsCalculator)initWithDistanceCalculator:(id)calculator learnedLocationStore:(id)store learnedPlaceTypeInferenceStore:(id)inferenceStore metricManager:(id)manager
{
  calculatorCopy = calculator;
  storeCopy = store;
  inferenceStoreCopy = inferenceStore;
  managerCopy = manager;
  v15 = managerCopy;
  if (!calculatorCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_17;
  }

  if (!storeCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_16;
  }

  if (!inferenceStoreCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: learnedPlaceTypeInferenceStore";
    goto LABEL_16;
  }

  if (!managerCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: metricManager";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = RTPlaceTypeClassifierMetricsCalculator;
  v16 = [(RTPlaceTypeClassifierMetricsCalculator *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_distanceCalculator, calculator);
    objc_storeStrong(&v17->_learnedLocationStore, store);
    objc_storeStrong(&v17->_learnedPlaceTypeInferenceStore, inferenceStore);
    objc_storeStrong(&v17->_metricManager, manager);
    v18 = objc_opt_new();
    metricsData = v17->_metricsData;
    v17->_metricsData = v18;

    v20 = objc_opt_new();
    learnedPlaceTypeInferences = v17->_learnedPlaceTypeInferences;
    v17->_learnedPlaceTypeInferences = v20;

    [(RTPlaceTypeClassifierMetricsCalculator *)v17 setup];
  }

  self = v17;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)setup
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

+ (id)metricsSourceToString:(unint64_t)string
{
  if (string - 1 > 0x13)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CB200[string - 1];
  }
}

+ (id)metricsKeyToString:(unint64_t)string
{
  if (string - 1 > 0x20)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CB2A0[string - 1];
  }
}

+ (id)cacheMetricsKeyToString:(unint64_t)string
{
  if (string > 0xB)
  {
    return @"NonNilCount";
  }

  else
  {
    return off_2788CB3A8[string];
  }
}

- (void)resetStates
{
  metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];

  if (metricsData)
  {
    metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    [metricsData2 removeAllObjects];
  }

  learnedPlaceTypeInferences = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];

  if (learnedPlaceTypeInferences)
  {
    learnedPlaceTypeInferences2 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
    [learnedPlaceTypeInferences2 removeAllObjects];
  }

  [(RTPlaceTypeClassifierMetricsCalculator *)self setSessionId:0];
}

- (void)storeMetricsData:(id)data source:(unint64_t)source placeType:(unint64_t)type
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType___block_invoke;
  v5[3] = &unk_2788CB100;
  v5[4] = self;
  v5[5] = source;
  v5[6] = type;
  [data enumerateKeysAndObjectsUsingBlock:v5];
}

void __76__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType___block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a3;
  [v4 storeMetricsData:v7 source:v5 placeType:v6 metricKey:{objc_msgSend(a2, "unsignedIntValue")}];
}

- (void)storeMetricsData:(id)data source:(unint64_t)source
{
  v108 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [objc_opt_class() metricsSourceToString:source];
      *buf = 138413058;
      v95 = v9;
      v96 = 2112;
      v97 = v10;
      v98 = 2112;
      v99 = v11;
      v100 = 2048;
      v101 = [dataCopy count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, source, %@, number of inferred places, %lu", buf, 0x2Au);
    }
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v12 = [&unk_2845A0E48 countByEnumeratingWithState:&v90 objects:v107 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v91;
    do
    {
      v15 = 0;
      do
      {
        if (*v91 != v14)
        {
          objc_enumerationMutation(&unk_2845A0E48);
        }

        v16 = *(*(&v90 + 1) + 8 * v15);
        if ([v16 unsignedIntValue] == 1 || objc_msgSend(v16, "unsignedIntValue") == 2 || source == 2 && objc_msgSend(v16, "unsignedIntValue") == 3)
        {
          -[RTPlaceTypeClassifierMetricsCalculator ensureMetricsDataHasKeysForSource:placeType:metricKey:](self, "ensureMetricsDataHasKeysForSource:placeType:metricKey:", source, [v16 unsignedIntValue], 1);
        }

        ++v15;
      }

      while (v13 != v15);
      v17 = [&unk_2845A0E48 countByEnumeratingWithState:&v90 objects:v107 count:16];
      v13 = v17;
    }

    while (v17);
  }

  sourceCopy = source;
  v77 = objc_opt_new();
  date = [MEMORY[0x277CBEAA8] date];
  sessionId = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];

  if (!sessionId)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(RTPlaceTypeClassifierMetricsCalculator *)self setSessionId:uUID];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = dataCopy;
  v20 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v87;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v87 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v86 + 1) + 8 * i);
        v25 = objc_autoreleasePoolPush();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "type")}];
        [v77 setObject:v24 forKeyedSubscript:v26];

        v27 = [RTLearnedPlaceTypeInference alloc];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        sessionId2 = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];
        identifier = [v24 identifier];
        v31 = -[RTLearnedPlaceTypeInference initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:](v27, "initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:", uUID2, sessionId2, identifier, [v24 type], sourceCopy, date);

        if (v31)
        {
          learnedPlaceTypeInferences = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
          [learnedPlaceTypeInferences addObject:v31];
        }

        objc_autoreleasePoolPop(v25);
      }

      v21 = [obj countByEnumeratingWithState:&v86 objects:v106 count:16];
    }

    while (v21);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  placeTypesForCacheMetrics = [objc_opt_class() placeTypesForCacheMetrics];
  v34 = [placeTypesForCacheMetrics countByEnumeratingWithState:&v82 objects:v105 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v83;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v83 != v36)
        {
          objc_enumerationMutation(placeTypesForCacheMetrics);
        }

        v38 = *(*(&v82 + 1) + 8 * j);
        v39 = objc_autoreleasePoolPush();
        v40 = [v77 objectForKeyedSubscript:v38];

        if (!v40)
        {
          v41 = [RTLearnedPlaceTypeInference alloc];
          uUID3 = [MEMORY[0x277CCAD78] UUID];
          sessionId3 = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];
          v44 = -[RTLearnedPlaceTypeInference initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:](v41, "initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:", uUID3, sessionId3, 0, [v38 unsignedIntValue], sourceCopy, date);

          if (v44)
          {
            learnedPlaceTypeInferences2 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
            [learnedPlaceTypeInferences2 addObject:v44];
          }
        }

        objc_autoreleasePoolPop(v39);
      }

      v35 = [placeTypesForCacheMetrics countByEnumeratingWithState:&v82 objects:v105 count:16];
    }

    while (v35);
  }

  v46 = sourceCopy;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      learnedPlaceTypeInferences3 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
      v52 = [learnedPlaceTypeInferences3 count];
      *buf = 138412802;
      v95 = v49;
      v96 = 2112;
      v97 = v50;
      v98 = 2048;
      v99 = v52;
      _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, %@, learnedPlaceTypeInference count, %lu", buf, 0x20u);
    }
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v72 = obj;
  v53 = [v72 countByEnumeratingWithState:&v78 objects:v104 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = 0;
    obja = *v79;
    do
    {
      v56 = 0;
      v57 = v55;
      do
      {
        if (*v79 != obja)
        {
          objc_enumerationMutation(v72);
        }

        v58 = *(*(&v78 + 1) + 8 * v56);
        v59 = objc_autoreleasePoolPush();
        v55 = [objc_opt_class() keyForSourceType:v46 placeType:{objc_msgSend(v58, "type")}];

        metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
        v61 = [metricsData objectForKeyedSubscript:v55];
        v62 = [v61 objectForKeyedSubscript:&unk_28459DE90];

        if (v62)
        {
          metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
          v64 = [metricsData2 objectForKeyedSubscript:v55];
          v65 = [v64 objectForKeyedSubscript:&unk_28459DE90];
          [v65 addObject:v58];

          v66 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v69 = NSStringFromSelector(a2);
            v70 = [objc_opt_class() metricsKeyToString:1];
            *buf = 138413315;
            v95 = v68;
            v96 = 2112;
            v97 = v69;
            v98 = 2112;
            v99 = v55;
            v100 = 2112;
            v101 = v70;
            v102 = 2117;
            v103 = v58;
            _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEFAULT, "%@, %@, metricsDataMainKey, %@, metricKey, %@, learnedplace, %{sensitive}@", buf, 0x34u);

            v46 = sourceCopy;
          }
        }

        objc_autoreleasePoolPop(v59);
        ++v56;
        v57 = v55;
      }

      while (v54 != v56);
      v54 = [v72 countByEnumeratingWithState:&v78 objects:v104 count:16];
    }

    while (v54);
  }
}

- (void)storeMetricsData:(id)data source:(unint64_t)source placeType:(unint64_t)type metricKey:(unint64_t)key
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (key == 1)
  {
    [(RTPlaceTypeClassifierMetricsCalculator *)self storeMetricsData:dataCopy source:source];
  }

  [(RTPlaceTypeClassifierMetricsCalculator *)self ensureMetricsDataHasKeysForSource:source placeType:type metricKey:key];
  metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v13 = [objc_opt_class() keyForSourceType:source placeType:type];
  v14 = [metricsData objectForKeyedSubscript:v13];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:key];
  [v14 setObject:dataCopy forKeyedSubscript:v15];

  v16 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType_metricKey___block_invoke;
    v25[3] = &unk_2788CB128;
    v26 = v16;
    [dataCopy enumerateKeysAndObjectsUsingBlock:v25];
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v21 = [objc_opt_class() keyForSourceType:source placeType:type];
    v22 = [objc_opt_class() metricsKeyToString:key];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *buf = 138413314;
    if (isKindOfClass)
    {
      v24 = v16;
    }

    else
    {
      v24 = dataCopy;
    }

    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = v21;
    v33 = 2112;
    v34 = v22;
    v35 = 2112;
    v36 = v24;
    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "%@, %@, mainMetricsDataKey, %@, metricKey, %@, metricsData, %@", buf, 0x34u);
  }
}

void __86__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType_metricKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 stringValue];
  [v4 appendFormat:@"%@, %@, ", v5, v6];
}

- (void)ensureMetricsDataHasKeysForSource:(unint64_t)source placeType:(unint64_t)type metricKey:(unint64_t)key
{
  v19 = [objc_opt_class() keyForSourceType:source placeType:type];
  metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v8 = [metricsData objectForKeyedSubscript:v19];

  if (!v8)
  {
    v9 = objc_opt_new();
    metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    [metricsData2 setObject:v9 forKeyedSubscript:v19];
  }

  metricsData3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v12 = [metricsData3 objectForKeyedSubscript:v19];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:key];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = objc_opt_new();
    metricsData4 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    v17 = [metricsData4 objectForKeyedSubscript:v19];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:key];
    [v17 setObject:v15 forKeyedSubscript:v18];
  }
}

- (void)onDailyMetricNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = [name isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      *buf = 138412802;
      v23 = name2;
      v24 = 2080;
      v25 = "[RTPlaceTypeClassifierMetricsCalculator onDailyMetricNotification:]";
      v26 = 1024;
      LODWORD(v27) = 563;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  name3 = [notificationCopy name];
  v10 = [name3 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    _retrieveMetricsFromCacheStore = [(RTPlaceTypeClassifierMetricsCalculator *)self _retrieveMetricsFromCacheStore];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = [_retrieveMetricsFromCacheStore count];
        *buf = 138412802;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v26 = 2048;
        v27 = v17;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, cacheMetricsDictionary count, %lu", buf, 0x20u);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__RTPlaceTypeClassifierMetricsCalculator_onDailyMetricNotification___block_invoke;
    v21[3] = &unk_2788CB150;
    v21[4] = self;
    v21[5] = a2;
    [_retrieveMetricsFromCacheStore enumerateObjectsUsingBlock:v21];

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      name4 = [notificationCopy name];
      *buf = 138412290;
      v23 = name4;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }
  }
}

void __68__RTPlaceTypeClassifierMetricsCalculator_onDailyMetricNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2048;
      v18 = a3 + 1;
      v19 = 2112;
      v20 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, idx, %lu, cacheMetricDictionary, %@", buf, 0x2Au);
    }
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithCString:RTAnalyticsEventPlaceTypeClassificationRobustness encoding:1];
  log_analytics_submission(v8, v5);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v8];
  AnalyticsSendEvent();
}

- (void)submitMetrics
{
  v56 = *MEMORY[0x277D85DE8];
  v34 = objc_autoreleasePoolPush();
  retrieveMetrics = [(RTPlaceTypeClassifierMetricsCalculator *)self retrieveMetrics];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v4 initWithCString:RTAnalyticsEventPlaceTypeClassification encoding:1];
  log_analytics_submission(v5, retrieveMetrics);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v5];
  AnalyticsSendEvent();

  [(RTPlaceTypeClassifierMetricsCalculator *)self _storeLearnedPlaceTypeInferencesToCacheStore];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v7 setObject:v8 forKeyedSubscript:&unk_28459DED8];

  v9 = objc_opt_new();
  [v7 setObject:v9 forKeyedSubscript:&unk_28459DEA8];

  v10 = objc_opt_new();
  v39 = v7;
  [v7 setObject:v10 forKeyedSubscript:&unk_28459DEF0];

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v50 = 0u;
  v36 = [&unk_2845A0E60 countByEnumeratingWithState:&v50 objects:v55 count:16];
  v11 = 0;
  if (v36)
  {
    v35 = *v51;
    v12 = &unk_28459DE90;
    do
    {
      v13 = 0;
      do
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(&unk_2845A0E60);
        }

        v38 = v13;
        v14 = *(*(&v50 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v41 = [&unk_2845A0E78 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v41)
        {
          v40 = *v47;
          do
          {
            v15 = 0;
            v16 = v11;
            do
            {
              if (*v47 != v40)
              {
                objc_enumerationMutation(&unk_2845A0E78);
              }

              v17 = *(*(&v46 + 1) + 8 * v15);
              v18 = objc_autoreleasePoolPush();
              v11 = [objc_opt_class() keyForSourceType:objc_msgSend(v14 placeType:{"unsignedIntValue"), objc_msgSend(v17, "unsignedIntValue")}];

              metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
              v20 = [metricsData objectForKeyedSubscript:v11];
              [v20 objectForKeyedSubscript:v12];
              selfCopy = self;
              v23 = v22 = v12;

              if (v23)
              {
                v24 = [v39 objectForKeyedSubscript:v14];
                metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
                v26 = [metricsData2 objectForKeyedSubscript:v11];
                v27 = [v26 objectForKeyedSubscript:v22];
                [v24 addObjectsFromArray:v27];
              }

              objc_autoreleasePoolPop(v18);
              ++v15;
              v16 = v11;
              v12 = v22;
              self = selfCopy;
            }

            while (v41 != v15);
            v41 = [&unk_2845A0E78 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v41);
        }

        objc_autoreleasePoolPop(context);
        v13 = v38 + 1;
      }

      while (v38 + 1 != v36);
      v36 = [&unk_2845A0E60 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v36);
  }

  distanceCalculator = [(RTPlaceTypeClassifierMetricsCalculator *)self distanceCalculator];
  metricManager = [(RTPlaceTypeClassifierMetricsCalculator *)self metricManager];
  metricManager2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricManager];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __55__RTPlaceTypeClassifierMetricsCalculator_submitMetrics__block_invoke;
  v42[3] = &unk_2788CAEB0;
  v43 = v39;
  v44 = distanceCalculator;
  v45 = metricManager;
  v31 = metricManager;
  v32 = distanceCalculator;
  [metricManager2 fetchDiagnosticsEnabled:v42];

  metricsData3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  [metricsData3 removeAllObjects];

  objc_autoreleasePoolPop(v34);
}

void __55__RTPlaceTypeClassifierMetricsCalculator_submitMetrics__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:&unk_28459DED8];
    v3 = [*(a1 + 32) objectForKeyedSubscript:&unk_28459DEA8];
    v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_28459DEF0];
    [RTPlaceTypeClassifierMetricsCalculator submitMetricsForInferredPlaces:v5 contactsPlaces:v3 rottedPlaces:v4 distanceCalculator:*(a1 + 40) metricManager:*(a1 + 48)];
  }
}

- (void)_storeLearnedPlaceTypeInferencesToCacheStore
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__79;
  v39 = __Block_byref_object_dispose__79;
  v40 = 0;
  v4 = dispatch_semaphore_create(0);
  learnedPlaceTypeInferenceStore = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  learnedPlaceTypeInferences = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __86__RTPlaceTypeClassifierMetricsCalculator__storeLearnedPlaceTypeInferencesToCacheStore__block_invoke;
  v32[3] = &unk_2788C4618;
  v34 = &v35;
  v7 = v4;
  v33 = v7;
  [learnedPlaceTypeInferenceStore storeLearnedPlaceTypeInferences:learnedPlaceTypeInferences handler:v32];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_682];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v48[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v48 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = v36[5];
      *buf = 138413058;
      *&buf[4] = v27;
      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      v45 = v29;
      v46 = 2112;
      v47 = v24;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, error, %@, semaError, %@", buf, 0x2Au);
    }
  }

  learnedPlaceTypeInferences2 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
  [learnedPlaceTypeInferences2 removeAllObjects];

  [(RTPlaceTypeClassifierMetricsCalculator *)self setSessionId:0];
  _Block_object_dispose(&v35, 8);

  objc_autoreleasePoolPop(v3);
}

void __86__RTPlaceTypeClassifierMetricsCalculator__storeLearnedPlaceTypeInferencesToCacheStore__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_retrieveMetricsFromCacheStore
{
  v95 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [date dateByAddingTimeInterval:-2419200.0];
  v59 = date;
  v6 = [v4 initWithStartDate:v5 endDate:date];
  v58 = [(RTPlaceTypeClassifierMetricsCalculator *)self _getLearnedPlaceTypeInferencesWithDateInterval:v6];

  v57 = objc_opt_new();
  v7 = objc_opt_new();
  modelSources = [objc_opt_class() modelSources];
  [v7 addObjectsFromArray:modelSources];

  nonModelSources = [objc_opt_class() nonModelSources];
  [v7 addObjectsFromArray:nonModelSources];

  selfCopy = self;
  _computeOverAllMetricsForCacheMetrics = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeOverAllMetricsForCacheMetrics];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v7;
  v47 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v47)
  {
    v46 = *v77;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v77 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v76 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v60 = v11;
        if ([v11 unsignedIntValue])
        {
          v48 = v12;
          v49 = i;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          placeTypesForCacheMetrics = [objc_opt_class() placeTypesForCacheMetrics];
          v52 = [placeTypesForCacheMetrics countByEnumeratingWithState:&v72 objects:v93 count:16];
          if (v52)
          {
            v51 = *v73;
            do
            {
              v13 = 0;
              do
              {
                if (*v73 != v51)
                {
                  objc_enumerationMutation(placeTypesForCacheMetrics);
                }

                v54 = v13;
                v62 = *(*(&v72 + 1) + 8 * v13);
                v53 = objc_autoreleasePoolPush();
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v71 = 0u;
                durationsForCacheMetrics = [objc_opt_class() durationsForCacheMetrics];
                v64 = [durationsForCacheMetrics countByEnumeratingWithState:&v68 objects:v92 count:16];
                if (v64)
                {
                  v61 = *v69;
                  do
                  {
                    v14 = 0;
                    do
                    {
                      if (*v69 != v61)
                      {
                        objc_enumerationMutation(durationsForCacheMetrics);
                      }

                      v15 = *(*(&v68 + 1) + 8 * v14);
                      context = objc_autoreleasePoolPush();
                      v16 = objc_alloc(MEMORY[0x277CCA970]);
                      [v15 doubleValue];
                      v67 = v14;
                      v18 = [v59 dateByAddingTimeInterval:-v17];
                      v65 = [v16 initWithStartDate:v18 endDate:v59];

                      v19 = -[RTPlaceTypeClassifierMetricsCalculator _filterLearnedPlaceTypeInferencesWithPlaceType:dateInterval:metricsSource:learnedPlaceTypeInferences:](selfCopy, "_filterLearnedPlaceTypeInferencesWithPlaceType:dateInterval:metricsSource:learnedPlaceTypeInferences:", [v62 unsignedIntValue], v65, objc_msgSend(v60, "unsignedIntValue"), v58);
                      v20 = objc_opt_new();
                      v21 = [objc_opt_class() cacheMetricsKeyToString:9];
                      v90 = v21;
                      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v62, "unsignedIntValue")}];
                      v91 = v22;
                      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                      [v20 addEntriesFromDictionary:v23];

                      v24 = [objc_opt_class() cacheMetricsKeyToString:10];
                      v88 = v24;
                      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v60, "unsignedIntValue")}];
                      v89 = v25;
                      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                      [v20 addEntriesFromDictionary:v26];

                      v27 = [objc_opt_class() cacheMetricsKeyToString:11];
                      v86 = v27;
                      v28 = MEMORY[0x277CCABB0];
                      [v15 doubleValue];
                      v30 = [v28 numberWithUnsignedLong:(v29 / 86400.0)];
                      v87 = v30;
                      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                      [v20 addEntriesFromDictionary:v31];

                      v32 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeCountOfNonNillLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v32];

                      v33 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeCountOfUniqueLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v33];

                      v34 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeCountOfTotalLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v34];

                      v35 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeFlipFlopCountLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v35];

                      v36 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v36];

                      v37 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy _computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v37];

                      [v20 addEntriesFromDictionary:_computeOverAllMetricsForCacheMetrics];
                      [v57 addObject:v20];

                      objc_autoreleasePoolPop(context);
                      v14 = v67 + 1;
                    }

                    while (v64 != v67 + 1);
                    v64 = [durationsForCacheMetrics countByEnumeratingWithState:&v68 objects:v92 count:16];
                  }

                  while (v64);
                }

                objc_autoreleasePoolPop(v53);
                v13 = v54 + 1;
              }

              while (v54 + 1 != v52);
              v52 = [placeTypesForCacheMetrics countByEnumeratingWithState:&v72 objects:v93 count:16];
            }

            while (v52);
          }

          v12 = v48;
          i = v49;
        }

        objc_autoreleasePoolPop(v12);
      }

      v47 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v47);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      v42 = [v57 count];
      *buf = 138412802;
      v81 = v40;
      v82 = 2112;
      v83 = v41;
      v84 = 2048;
      v85 = v42;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, metricsFromCacheStore count, %lu", buf, 0x20u);
    }
  }

  return v57;
}

- (id)_computeOverAllMetricsForCacheMetrics
{
  _getLearnedLocationOfInterests = [(RTPlaceTypeClassifierMetricsCalculator *)self _getLearnedLocationOfInterests];
  v4 = objc_opt_new();
  v5 = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeCountOfLOIsForCacheMetricsFromLOIs:_getLearnedLocationOfInterests];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeDurationOfGraphForCacheMetricsFromLOIs:_getLearnedLocationOfInterests];
  [v4 addEntriesFromDictionary:v6];

  return v4;
}

- (id)_computeCountOfLOIsForCacheMetricsFromLOIs:(id)is
{
  v11[1] = *MEMORY[0x277D85DE8];
  isCopy = is;
  v4 = [objc_opt_class() cacheMetricsKeyToString:7];
  v10 = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = [isCopy count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)_computeDurationOfGraphForCacheMetricsFromLOIs:(id)is
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = is;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (!v3)
  {
    firstObject = 0;
    lastObject = 0;
    v26 = &unk_28459DF08;
    goto LABEL_21;
  }

  v4 = v3;
  lastObject = 0;
  firstObject = 0;
  v36 = *v38;
  do
  {
    v7 = 0;
    do
    {
      if (*v38 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v37 + 1) + 8 * v7);
      if (firstObject)
      {
        if (lastObject)
        {
          goto LABEL_8;
        }
      }

      else
      {
        visits = [*(*(&v37 + 1) + 8 * v7) visits];
        firstObject = [visits firstObject];

        if (lastObject)
        {
          goto LABEL_8;
        }
      }

      visits2 = [v8 visits];
      lastObject = [visits2 lastObject];

LABEL_8:
      entryDate = [firstObject entryDate];
      visits3 = [v8 visits];
      firstObject2 = [visits3 firstObject];
      entryDate2 = [firstObject2 entryDate];
      v13 = [entryDate compare:entryDate2];

      if (v13 == 1)
      {
        visits4 = [v8 visits];
        firstObject3 = [visits4 firstObject];

        firstObject = firstObject3;
      }

      entryDate3 = [lastObject entryDate];
      visits5 = [v8 visits];
      lastObject2 = [visits5 lastObject];
      entryDate4 = [lastObject2 entryDate];
      v20 = [entryDate3 compare:entryDate4];

      if (v20 == -1)
      {
        visits6 = [v8 visits];
        lastObject3 = [visits6 lastObject];

        lastObject = lastObject3;
      }

      ++v7;
    }

    while (v4 != v7);
    v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    v4 = v25;
  }

  while (v25);
  v26 = &unk_28459DF08;
  if (firstObject && lastObject)
  {
    v27 = MEMORY[0x277CCABB0];
    entryDate5 = [lastObject entryDate];
    entryDate6 = [firstObject entryDate];
    [entryDate5 timeIntervalSinceDate:entryDate6];
    v31 = v30 / 86400.0;
    *&v31 = v31;
    *&v31 = roundf(*&v31);
    v26 = [v27 numberWithFloat:v31];
  }

LABEL_21:
  v32 = [objc_opt_class() cacheMetricsKeyToString:8];
  v41 = v32;
  v42 = v26;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

  return v33;
}

- (id)_getLearnedLocationOfInterests
{
  v57[1] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__79;
  v46 = __Block_byref_object_dispose__79;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__79;
  v40 = __Block_byref_object_dispose__79;
  v41 = 0;
  v4 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedLocationStore];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__RTPlaceTypeClassifierMetricsCalculator__getLearnedLocationOfInterests__block_invoke;
  v32[3] = &unk_2788C4490;
  v34 = &v36;
  v35 = &v42;
  v6 = v4;
  v33 = v6;
  [learnedLocationStore fetchRecentLocationsOfInterestWithHandler:v32];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_682];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v57[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v28 = [v37[5] count];
      v29 = v43[5];
      *buf = 138413314;
      *&buf[4] = v26;
      v49 = 2112;
      v50 = v27;
      v51 = 2048;
      v52 = v28;
      v53 = 2112;
      v54 = v29;
      v55 = 2112;
      v56 = v23;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, locationsOfInterest count, %lu, error, %@, semaError, %@", buf, 0x34u);
    }
  }

  v30 = v37[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v30;
}

void __72__RTPlaceTypeClassifierMetricsCalculator__getLearnedLocationOfInterests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getLearnedPlaceTypeInferencesWithDateInterval:(id)interval
{
  v60[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__79;
  v49 = __Block_byref_object_dispose__79;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__79;
  v43 = __Block_byref_object_dispose__79;
  v44 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = [[RTLearnedPlaceTypeInferenceEnumerationOptions alloc] initWithDateInterval:intervalCopy sortByCreationDate:1 ascending:1 filteredToPlaceTypes:0 filteredToIdentifiers:0 filteredToSessionIds:0 filteredToLearnedPlaceIdentifiers:0];
  learnedPlaceTypeInferenceStore = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __89__RTPlaceTypeClassifierMetricsCalculator__getLearnedPlaceTypeInferencesWithDateInterval___block_invoke;
  v35[3] = &unk_2788C4490;
  v37 = &v39;
  v38 = &v45;
  v7 = v4;
  v36 = v7;
  [learnedPlaceTypeInferenceStore fetchLearnedPlaceTypeInferencesWithOptions:v5 handler:v35];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_682];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v60[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v60 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = [v40[5] count];
      v30 = v46[5];
      *buf = 138413314;
      *&buf[4] = v27;
      v52 = 2112;
      v53 = v28;
      v54 = 2048;
      v55 = v29;
      v56 = 2112;
      v57 = v30;
      v58 = 2112;
      v59 = v24;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, learnedPlaceTypeInferences count, %lu, error, %@, semaError, %@", buf, 0x34u);
    }
  }

  v31 = v40[5];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v31;
}

void __89__RTPlaceTypeClassifierMetricsCalculator__getLearnedPlaceTypeInferencesWithDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_filterLearnedPlaceTypeInferencesWithPlaceType:(unint64_t)type dateInterval:(id)interval metricsSource:(unint64_t)source learnedPlaceTypeInferences:(id)inferences
{
  intervalCopy = interval;
  v10 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __143__RTPlaceTypeClassifierMetricsCalculator__filterLearnedPlaceTypeInferencesWithPlaceType_dateInterval_metricsSource_learnedPlaceTypeInferences___block_invoke;
  v17[3] = &unk_2788CB178;
  v18 = intervalCopy;
  typeCopy = type;
  sourceCopy = source;
  v11 = intervalCopy;
  inferencesCopy = inferences;
  v13 = [v10 predicateWithBlock:v17];
  v14 = [inferencesCopy filteredArrayUsingPredicate:v13];

  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_62];

  return v15;
}

BOOL __143__RTPlaceTypeClassifierMetricsCalculator__filterLearnedPlaceTypeInferencesWithPlaceType_dateInterval_metricsSource_learnedPlaceTypeInferences___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 placeType] == a1[5])
  {
    v4 = a1[4];
    v5 = [v3 creationDate];
    if ([v4 containsDate:v5])
    {
      v6 = [v3 metricSource] == a1[6];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __143__RTPlaceTypeClassifierMetricsCalculator__filterLearnedPlaceTypeInferencesWithPlaceType_dateInterval_metricsSource_learnedPlaceTypeInferences___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_computeFlipFlopCountLearnedPlaceTypeInferences:(id)inferences
{
  v28[1] = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  v5 = [objc_opt_class() cacheMetricsKeyToString:4];
  if (![inferencesCopy count])
  {
    v27 = v5;
    v28[0] = &unk_28459DF08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    goto LABEL_25;
  }

  v20 = v5;
  if ([inferencesCopy count] != 1)
  {
    v8 = 0;
    v6 = 0;
    while (1)
    {
      v9 = [inferencesCopy objectAtIndexedSubscript:v8];
      if (v9)
      {
        v5 = [inferencesCopy objectAtIndexedSubscript:v8 + 1];
        if (!v5)
        {
          v17 = 1;
          goto LABEL_22;
        }
      }

      v10 = [inferencesCopy objectAtIndexedSubscript:v8];
      if (!v10)
      {
        v3 = [inferencesCopy objectAtIndexedSubscript:v8 + 1];
        if (v3)
        {
          v17 = 1;
          goto LABEL_21;
        }
      }

      v11 = [inferencesCopy objectAtIndexedSubscript:v8];
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = v11;
      v13 = [inferencesCopy objectAtIndexedSubscript:v8 + 1];
      if (!v13)
      {
        break;
      }

      v23 = v3;
      v24 = v5;
      v22 = v13;
      v21 = [inferencesCopy objectAtIndexedSubscript:v8];
      learnedPlaceIdentifier = [v21 learnedPlaceIdentifier];
      v15 = [inferencesCopy objectAtIndexedSubscript:v8 + 1];
      learnedPlaceIdentifier2 = [v15 learnedPlaceIdentifier];
      v17 = [learnedPlaceIdentifier isEqual:learnedPlaceIdentifier2] ^ 1;

      if (v10)
      {
        v3 = v23;
        v5 = v24;
LABEL_18:

        if (!v9)
        {
          goto LABEL_23;
        }

LABEL_22:

        goto LABEL_23;
      }

      v3 = v23;
      v5 = v24;
LABEL_21:

      if (v9)
      {
        goto LABEL_22;
      }

LABEL_23:

      v6 += v17;
      if ([inferencesCopy count] - 1 <= ++v8)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    v17 = 0;
    if (v10)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v6 = 0;
LABEL_24:
  v5 = v20;
  v25 = v20;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v26 = v18;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

LABEL_25:

  return v7;
}

- (id)_computeCountOfNonNillLearnedPlaceTypeInferences:(id)inferences
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  inferencesCopy = inferences;
  v5 = [v3 predicateWithFormat:@"%K != nil", @"learnedPlaceIdentifier"];
  v6 = [inferencesCopy filteredArrayUsingPredicate:v5];

  v7 = [objc_opt_class() cacheMetricsKeyToString:1];
  v11 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v9;
}

- (id)_computeCountOfUniqueLearnedPlaceTypeInferences:(id)inferences
{
  v25 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = inferencesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        learnedPlaceIdentifier = [v10 learnedPlaceIdentifier];

        if (learnedPlaceIdentifier)
        {
          learnedPlaceIdentifier2 = [v10 learnedPlaceIdentifier];
          [v4 addObject:learnedPlaceIdentifier2];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = [objc_opt_class() cacheMetricsKeyToString:2];
  v22 = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v23 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  return v16;
}

- (id)_computeCountOfTotalLearnedPlaceTypeInferences:(id)inferences
{
  v11[1] = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  v4 = [objc_opt_class() cacheMetricsKeyToString:3];
  v10 = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = [inferencesCopy count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)_computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:(id)inferences
{
  v16[1] = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  lastObject = [inferencesCopy lastObject];

  if (lastObject)
  {
    v5 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    lastObject2 = [inferencesCopy lastObject];
    creationDate = [lastObject2 creationDate];
    [date timeIntervalSinceDate:creationDate];
    v10 = v9 / 3600.0;
    *&v10 = v10;
    *&v10 = roundf(*&v10);
    v11 = [v5 numberWithFloat:v10];
  }

  else
  {
    v11 = &unk_28459DF08;
  }

  v12 = [objc_opt_class() cacheMetricsKeyToString:5];
  v15 = v12;
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v13;
}

- (id)_computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:(id)inferences
{
  v35 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  lastObject = [inferencesCopy lastObject];

  if (!lastObject)
  {
    v22 = &unk_28459DF08;
    goto LABEL_17;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  reverseObjectEnumerator = [inferencesCopy reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v6)
  {
    lastObject = 0;
    v22 = &unk_28459DF08;
    goto LABEL_15;
  }

  v7 = v6;
  obj = reverseObjectEnumerator;
  v27 = 0;
  v8 = *v29;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      learnedPlaceIdentifier = [v10 learnedPlaceIdentifier];
      v13 = inferencesCopy;
      lastObject2 = [inferencesCopy lastObject];
      learnedPlaceIdentifier2 = [lastObject2 learnedPlaceIdentifier];
      v16 = [learnedPlaceIdentifier isEqual:learnedPlaceIdentifier2];

      if (v16)
      {
        v17 = v10;

        v27 = v17;
      }

      objc_autoreleasePoolPop(v11);
      inferencesCopy = v13;
    }

    v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v7);

  lastObject = v27;
  if (v27)
  {
    v18 = MEMORY[0x277CCABB0];
    reverseObjectEnumerator = [MEMORY[0x277CBEAA8] date];
    creationDate = [v27 creationDate];
    [reverseObjectEnumerator timeIntervalSinceDate:creationDate];
    v21 = v20 / 3600.0;
    *&v21 = v21;
    *&v21 = roundf(*&v21);
    v22 = [v18 numberWithFloat:v21];

LABEL_15:
    goto LABEL_17;
  }

  v22 = &unk_28459DF08;
LABEL_17:
  v23 = [objc_opt_class() cacheMetricsKeyToString:6];
  v32 = v23;
  v33 = v22;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  return v24;
}

+ (void)submitMetricsForInferredPlaces:(id)places contactsPlaces:(id)contactsPlaces rottedPlaces:(id)rottedPlaces distanceCalculator:(id)calculator metricManager:(id)manager
{
  v28 = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  managerCopy = manager;
  v14 = [self collectPlaceVersionsFromInferredPlaces:places contactsPlaces:contactsPlaces rottedPlaces:rottedPlaces];
  v15 = [RTMetricManager metricForType:18];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [self newAlgorithmInstanceWithInference:*(*(&v23 + 1) + 8 * v20) distanceCalculator:{calculatorCopy, v23}];
        if (v21)
        {
          [v15 addInstance:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  if (![v15 instancesCount])
  {
    v22 = [RTMetricManager metricForType:17];
    [v15 addInstance:v22];
  }

  [managerCopy submitMetric:v15 withHandler:{&__block_literal_global_326, v23}];
}

void __134__RTPlaceTypeClassifierMetricsCalculator_submitMetricsForInferredPlaces_contactsPlaces_rottedPlaces_distanceCalculator_metricManager___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Failed to submit AWDCoreRoutineModelAlgorithmSet, error, %@", &v4, 0xCu);
    }
  }
}

+ (id)newAlgorithmInstanceWithInference:(id)inference distanceCalculator:(id)calculator
{
  v52 = *MEMORY[0x277D85DE8];
  inferenceCopy = inference;
  calculatorCopy = calculator;
  v8 = [RTMetricManager metricForType:17];
  inferredVersion = [inferenceCopy inferredVersion];
  type = [inferredVersion type];
  v11 = type - 1;
  if ((type - 1) >= 3)
  {
  }

  else
  {

    [v8 setType:(v11 + 1)];
  }

  inferredVersion2 = [inferenceCopy inferredVersion];
  typeSource = [inferredVersion2 typeSource];
  v14 = ((typeSource & 6) != 0) | (2 * (typeSource & 1u));

  if (v14)
  {
    [v8 setSource:v14];
  }

  existingVersion = [inferenceCopy existingVersion];
  type2 = [existingVersion type];
  v17 = type2 - 1;
  if ((type2 - 1) >= 3)
  {
  }

  else
  {

    [v8 setPreviousType:(v17 + 1)];
  }

  trueVersion = [inferenceCopy trueVersion];
  type3 = [trueVersion type];
  if ((type3 - 1) <= 2)
  {
    [v8 setTruthType:type3];
  }

  typeSource2 = [trueVersion typeSource];
  if (((typeSource2 & 6) != 0) | (2 * (typeSource2 & 1)))
  {
    [v8 setTruthSource:?];
  }

  inferredVersion3 = [inferenceCopy inferredVersion];

  if (inferredVersion3)
  {
    truthfulCounterpart = [inferenceCopy truthfulCounterpart];

    if (truthfulCounterpart)
    {
      inferredVersion4 = [inferenceCopy inferredVersion];
      mapItem = [inferredVersion4 mapItem];
      truthfulCounterpart2 = [inferenceCopy truthfulCounterpart];
      mapItem2 = [truthfulCounterpart2 mapItem];
      [self updateAlgorithmInstance:v8 byComparingInferredMapItem:mapItem withTruthfulMapItem:mapItem2 withDistanceCalculator:calculatorCopy];
    }
  }

  [v8 setIsRotted:{objc_msgSend(inferenceCopy, "isRotted")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      type4 = [v8 type];
      source = [v8 source];
      previousType = [v8 previousType];
      truthType = [v8 truthType];
      truthSource = [v8 truthSource];
      [v8 distanceFromTruth];
      v35 = v34;
      isRotted = [v8 isRotted];
      v38 = 134219522;
      v37 = "false";
      v39 = type4;
      v40 = 2048;
      if (isRotted)
      {
        v37 = "true";
      }

      v41 = source;
      v42 = 2048;
      v43 = previousType;
      v44 = 2048;
      v45 = truthType;
      v46 = 2048;
      v47 = truthSource;
      v48 = 2048;
      v49 = v35;
      v50 = 2080;
      v51 = v37;
      _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "AWDCoreRoutineModelAlgorithmInstance, type, %lu, source, %lu, previousType, %lu, truthSource, %lu, truthType, %lu, distanceFromTruth, %g, isRotted, %s", &v38, 0x48u);
    }
  }

  return v8;
}

+ (void)updateAlgorithmInstance:(id)instance byComparingInferredMapItem:(id)item withTruthfulMapItem:(id)mapItem withDistanceCalculator:(id)calculator
{
  instanceCopy = instance;
  itemCopy = item;
  mapItemCopy = mapItem;
  calculatorCopy = calculator;
  location = [itemCopy location];
  location2 = [mapItemCopy location];
  v25 = 0;
  [calculatorCopy distanceFromLocation:location toLocation:location2 error:&v25];
  v17 = v16;

  v18 = v25;
  if (!v18)
  {
    [instanceCopy setDistanceFromTruth:(10 * llround(v17 / 10.0))];
  }

  address = [itemCopy address];
  address2 = [mapItemCopy address];
  v21 = [address isEqual:address2];

  if (v21)
  {
    [instanceCopy setAddressComponentMatches:-1];
  }

  else
  {
    address3 = [itemCopy address];
    address4 = [mapItemCopy address];
    v24 = [self addressComponentMatchesBetweenInferredAddress:address3 trueAddress:address4];
    if (v24)
    {
      [instanceCopy setAddressComponentMatches:v24];
    }
  }
}

+ (unint64_t)addressComponentMatchesBetweenInferredAddress:(id)address trueAddress:(id)trueAddress
{
  v63 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  trueAddressCopy = trueAddress;
  subThoroughfare = [addressCopy subThoroughfare];
  subThoroughfare2 = [trueAddressCopy subThoroughfare];
  v10 = [self inferredAddressComponent:subThoroughfare consistentWithTrueComponent:subThoroughfare2];

  v11 = v10;
  thoroughfare = [addressCopy thoroughfare];
  thoroughfare2 = [trueAddressCopy thoroughfare];
  v14 = [self inferredAddressComponent:thoroughfare consistentWithTrueComponent:thoroughfare2];

  if (v14)
  {
    v11 |= 2uLL;
  }

  subLocality = [addressCopy subLocality];
  subLocality2 = [trueAddressCopy subLocality];
  v17 = [self inferredAddressComponent:subLocality consistentWithTrueComponent:subLocality2];

  if (v17)
  {
    v11 |= 4uLL;
  }

  locality = [addressCopy locality];
  locality2 = [trueAddressCopy locality];
  v20 = [self inferredAddressComponent:locality consistentWithTrueComponent:locality2];

  if (v20)
  {
    v11 |= 8uLL;
  }

  subAdministrativeArea = [addressCopy subAdministrativeArea];
  subAdministrativeArea2 = [trueAddressCopy subAdministrativeArea];
  v23 = [self inferredAddressComponent:subAdministrativeArea consistentWithTrueComponent:subAdministrativeArea2];

  if (v23)
  {
    v11 |= 0x10uLL;
  }

  administrativeArea = [addressCopy administrativeArea];
  administrativeArea2 = [trueAddressCopy administrativeArea];
  v26 = [self inferredAddressComponent:administrativeArea consistentWithTrueComponent:administrativeArea2];

  if (v26)
  {
    v11 |= 0x20uLL;
  }

  administrativeAreaCode = [addressCopy administrativeAreaCode];
  administrativeAreaCode2 = [trueAddressCopy administrativeAreaCode];
  v29 = [self inferredAddressComponent:administrativeAreaCode consistentWithTrueComponent:administrativeAreaCode2];

  if (v29)
  {
    v11 |= 0x40uLL;
  }

  postalCode = [addressCopy postalCode];
  postalCode2 = [trueAddressCopy postalCode];
  v32 = [self inferredAddressComponent:postalCode consistentWithTrueComponent:postalCode2];

  if (v32)
  {
    v11 |= 0x80uLL;
  }

  country = [addressCopy country];
  country2 = [trueAddressCopy country];
  v35 = [self inferredAddressComponent:country consistentWithTrueComponent:country2];

  if (v35)
  {
    v11 |= 0x100uLL;
  }

  countryCode = [addressCopy countryCode];
  countryCode2 = [trueAddressCopy countryCode];
  v38 = [self inferredAddressComponent:countryCode consistentWithTrueComponent:countryCode2];

  if (v38)
  {
    v11 |= 0x200uLL;
  }

  inlandWater = [addressCopy inlandWater];
  inlandWater2 = [trueAddressCopy inlandWater];
  v41 = [self inferredAddressComponent:inlandWater consistentWithTrueComponent:inlandWater2];

  if (v41)
  {
    v42 = v11 | 0x400;
  }

  else
  {
    v42 = v11;
  }

  ocean = [addressCopy ocean];
  ocean2 = [trueAddressCopy ocean];
  v45 = [self inferredAddressComponent:ocean consistentWithTrueComponent:ocean2];

  if (v45)
  {
    v46 = v42 | 0x800;
  }

  else
  {
    v46 = v42;
  }

  isIsland = [addressCopy isIsland];
  v58 = 0u;
  v59 = 0u;
  if (isIsland != [trueAddressCopy isIsland])
  {
    v48 = v46;
  }

  else
  {
    v48 = v46 | 0x2000;
  }

  v49 = v48 | 0x1000;
  v60 = 0uLL;
  v61 = 0uLL;
  areasOfInterest = [addressCopy areasOfInterest];
  v51 = [areasOfInterest countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v59;
    while (2)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v59 != v53)
        {
          objc_enumerationMutation(areasOfInterest);
        }

        v55 = *(*(&v58 + 1) + 8 * i);
        areasOfInterest2 = [trueAddressCopy areasOfInterest];
        LOBYTE(v55) = [areasOfInterest2 containsObject:v55];

        if ((v55 & 1) == 0)
        {
          v49 = v48 & 0xFFFFFFFFFFFFEFFFLL;
          goto LABEL_38;
        }
      }

      v52 = [areasOfInterest countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  return v49;
}

+ (BOOL)inferredAddressComponent:(id)component consistentWithTrueComponent:(id)trueComponent
{
  trueComponentCopy = trueComponent;
  v7 = [self normalize:component];
  if (v7)
  {
    v8 = [self normalize:trueComponentCopy];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)normalize:(id)normalize
{
  lowercaseString = [normalize lowercaseString];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [lowercaseString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v5;
}

+ (id)collectPlaceVersionsFromInferredPlaces:(id)places contactsPlaces:(id)contactsPlaces rottedPlaces:(id)rottedPlaces
{
  v96 = *MEMORY[0x277D85DE8];
  placesCopy = places;
  contactsPlacesCopy = contactsPlaces;
  rottedPlacesCopy = rottedPlaces;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = placesCopy;
  v11 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v88;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v88 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v87 + 1) + 8 * i);
        v16 = objc_opt_new();
        [v16 setInferredVersion:v15];
        identifier = [v15 identifier];
        [dictionary setObject:v16 forKeyedSubscript:identifier];
      }

      v12 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v12);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v67 = contactsPlacesCopy;
  v18 = [v67 countByEnumeratingWithState:&v83 objects:v94 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v84;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v84 != v20)
        {
          objc_enumerationMutation(v67);
        }

        v22 = *(*(&v83 + 1) + 8 * j);
        identifier2 = [v22 identifier];
        v24 = [dictionary objectForKeyedSubscript:identifier2];

        if (!v24)
        {
          v24 = objc_opt_new();
          identifier3 = [v22 identifier];
          [dictionary setObject:v24 forKeyedSubscript:identifier3];
        }

        [v24 setExistingVersion:v22];
        if (([v22 typeSource] & 6) != 0)
        {
          type = [v22 type];
          v27 = array;
          if (type == 1 || (v28 = [v22 type], v27 = array2, v28 == 2) || (v29 = objc_msgSend(v22, "type"), v27 = array3, v29 == 3))
          {
            [v27 addObject:v22];
          }
        }
      }

      v19 = [v67 countByEnumeratingWithState:&v83 objects:v94 count:16];
    }

    while (v19);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v30 = rottedPlacesCopy;
  v31 = [v30 countByEnumeratingWithState:&v79 objects:v93 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v80;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v80 != v33)
        {
          objc_enumerationMutation(v30);
        }

        identifier4 = [*(*(&v79 + 1) + 8 * k) identifier];
        v36 = [dictionary objectForKeyedSubscript:identifier4];

        if (v36)
        {
          [v36 setIsRotted:1];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v32);
  }

  v61 = v30;

  array4 = [MEMORY[0x277CBEB18] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  allValues = [dictionary allValues];
  v38 = [allValues countByEnumeratingWithState:&v75 objects:v92 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    v63 = *v76;
    v64 = dictionary;
    do
    {
      v41 = 0;
      v65 = v39;
      do
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(allValues);
        }

        v42 = *(*(&v75 + 1) + 8 * v41);
        inferredVersion = [v42 inferredVersion];
        type2 = [inferredVersion type];

        v45 = array;
        if (type2 == 1 || ([v42 inferredVersion], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "type"), v46, v45 = array2, v47 == 2) || (objc_msgSend(v42, "inferredVersion"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "type"), v48, v45 = array3, v49 == 3))
        {
          v50 = v45;
        }

        else
        {
          v50 = 0;
        }

        if ([v50 count] > 1)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v52 = v50;
          v53 = [v52 countByEnumeratingWithState:&v71 objects:v91 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v72;
            do
            {
              for (m = 0; m != v54; ++m)
              {
                if (*v72 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v71 + 1) + 8 * m);
                v58 = [v42 copy];
                [v58 setTruthfulCounterpart:v57];
                [array4 addObject:v58];
              }

              v54 = [v52 countByEnumeratingWithState:&v71 objects:v91 count:16];
            }

            while (v54);
          }

          v40 = v63;
          dictionary = v64;
          v39 = v65;
        }

        else
        {
          firstObject = [v50 firstObject];
          [v42 setTruthfulCounterpart:firstObject];

          [array4 addObject:v42];
        }

        ++v41;
      }

      while (v41 != v39);
      v59 = [allValues countByEnumeratingWithState:&v75 objects:v92 count:16];
      v39 = v59;
    }

    while (v59);
  }

  return array4;
}

- (id)retrieveMetrics
{
  v2 = MEMORY[0x28223BE20](self);
  v322 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v212 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459DF38 gap:&unk_28459DF50];
  v299 = 0u;
  v298 = 0u;
  v297 = 0u;
  v296 = 0u;
  v185 = [&unk_2845A0E90 countByEnumeratingWithState:&v296 objects:v319 count:16];
  if (v185)
  {
    v181 = *v297;
    do
    {
      v4 = 0;
      do
      {
        if (*v297 != v181)
        {
          v5 = v4;
          objc_enumerationMutation(&unk_2845A0E90);
          v4 = v5;
        }

        v191 = v4;
        v6 = *(*(&v296 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v295 = 0u;
        v294 = 0u;
        v293 = 0u;
        v292 = 0u;
        obj = [objc_opt_class() inferredPlaceTypes];
        v7 = [obj countByEnumeratingWithState:&v292 objects:v318 count:16];
        if (v7)
        {
          v8 = *v293;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v293 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v292 + 1) + 8 * i);
              v11 = objc_autoreleasePoolPush();
              v12 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v10 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v6 referenceSource:"unsignedIntValue") metricType:0 bins:{0, 1, 0}];
              [v3 addEntriesFromDictionary:v12];

              v13 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v10 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v6 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v10 bins:{"unsignedIntValue"), 2, 2, v212}];
              [v3 addEntriesFromDictionary:v13];

              v14 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v10 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v6 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v10 bins:{"unsignedIntValue"), 17, 2, v212}];
              [v3 addEntriesFromDictionary:v14];

              v15 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v10 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v6 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v10 bins:{"unsignedIntValue"), 1, 2, v212}];
              [v3 addEntriesFromDictionary:v15];

              v16 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v10 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v6 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v10 bins:{"unsignedIntValue"), 14, 2, v212}];
              [v3 addEntriesFromDictionary:v16];

              objc_autoreleasePoolPop(v11);
            }

            v7 = [obj countByEnumeratingWithState:&v292 objects:v318 count:16];
          }

          while (v7);
        }

        objc_autoreleasePoolPop(context);
        v4 = v191 + 1;
      }

      while ((v191 + 1) != v185);
      v185 = [&unk_2845A0E90 countByEnumeratingWithState:&v296 objects:v319 count:16];
    }

    while (v185);
  }

  v291 = 0u;
  v290 = 0u;
  v289 = 0u;
  v288 = 0u;
  nonInferredPlaceTypes = [objc_opt_class() nonInferredPlaceTypes];
  v186 = [nonInferredPlaceTypes countByEnumeratingWithState:&v288 objects:v317 count:16];
  if (v186)
  {
    v182 = *v289;
    do
    {
      v17 = 0;
      do
      {
        if (*v289 != v182)
        {
          v18 = v17;
          objc_enumerationMutation(nonInferredPlaceTypes);
          v17 = v18;
        }

        v192 = v17;
        v19 = *(*(&v288 + 1) + 8 * v17);
        contexta = objc_autoreleasePoolPush();
        v287 = 0u;
        v286 = 0u;
        v285 = 0u;
        v284 = 0u;
        obja = [objc_opt_class() schoolGymEligibleSources];
        v20 = [obja countByEnumeratingWithState:&v284 objects:v316 count:16];
        if (v20)
        {
          v21 = *v285;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v285 != v21)
              {
                objc_enumerationMutation(obja);
              }

              v23 = *(*(&v284 + 1) + 8 * j);
              v24 = objc_autoreleasePoolPush();
              v25 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v19 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v23 referenceSource:"unsignedIntValue") metricType:0 bins:{0, 1, 0}];
              [v3 addEntriesFromDictionary:v25];

              v26 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v19 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v23 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v19 bins:{"unsignedIntValue"), 2, 2, v212}];
              [v3 addEntriesFromDictionary:v26];

              v27 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v19 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v23 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v19 bins:{"unsignedIntValue"), 17, 2, v212}];
              [v3 addEntriesFromDictionary:v27];

              v28 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v19 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v23 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v19 bins:{"unsignedIntValue"), 1, 2, v212}];
              [v3 addEntriesFromDictionary:v28];

              v29 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v19 source:"unsignedIntValue") referenceSourcePlaceType:objc_msgSend(v23 referenceSource:"unsignedIntValue") metricType:objc_msgSend(v19 bins:{"unsignedIntValue"), 14, 2, v212}];
              [v3 addEntriesFromDictionary:v29];

              objc_autoreleasePoolPop(v24);
            }

            v20 = [obja countByEnumeratingWithState:&v284 objects:v316 count:16];
          }

          while (v20);
        }

        objc_autoreleasePoolPop(contexta);
        v17 = v192 + 1;
      }

      while ((v192 + 1) != v186);
      v186 = [nonInferredPlaceTypes countByEnumeratingWithState:&v288 objects:v317 count:16];
    }

    while (v186);
  }

  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  inferredPlaceTypes = [objc_opt_class() inferredPlaceTypes];
  v31 = [inferredPlaceTypes countByEnumeratingWithState:&v280 objects:v315 count:16];
  if (v31)
  {
    v32 = *v281;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v281 != v32)
        {
          objc_enumerationMutation(inferredPlaceTypes);
        }

        v34 = *(*(&v280 + 1) + 8 * k);
        v35 = objc_autoreleasePoolPush();
        v36 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{6, 2, v212}];
        [v3 addEntriesFromDictionary:v36];

        v37 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{7, 2, v212}];
        [v3 addEntriesFromDictionary:v37];

        v38 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{8, 2, v212}];
        [v3 addEntriesFromDictionary:v38];

        v39 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{9, 2, v212}];
        [v3 addEntriesFromDictionary:v39];

        v40 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{13, 2, v212}];
        [v3 addEntriesFromDictionary:v40];

        v41 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:11 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{12, 2, v212}];
        [v3 addEntriesFromDictionary:v41];

        v42 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v34 source:"unsignedIntValue") referenceSourcePlaceType:12 referenceSource:objc_msgSend(v34 metricType:"unsignedIntValue") bins:{13, 2, v212}];
        [v3 addEntriesFromDictionary:v42];

        objc_autoreleasePoolPop(v35);
      }

      v31 = [inferredPlaceTypes countByEnumeratingWithState:&v280 objects:v315 count:16];
    }

    while (v31);
  }

  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  inferredPlaceTypes2 = [objc_opt_class() inferredPlaceTypes];
  v193 = [inferredPlaceTypes2 countByEnumeratingWithState:&v276 objects:v314 count:16];
  if (v193)
  {
    v187 = *v277;
    do
    {
      v43 = 0;
      do
      {
        if (*v277 != v187)
        {
          v44 = v43;
          objc_enumerationMutation(inferredPlaceTypes2);
          v43 = v44;
        }

        contextb = v43;
        v45 = *(*(&v276 + 1) + 8 * v43);
        objb = objc_autoreleasePoolPush();
        v46 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:6 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{7, 2, v212}];
        [v3 addEntriesFromDictionary:v46];

        v47 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:6 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{8, 2, v212}];
        [v3 addEntriesFromDictionary:v47];

        v48 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:7 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{9, 2, v212}];
        [v3 addEntriesFromDictionary:v48];

        v49 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:8 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{9, 2, v212}];
        [v3 addEntriesFromDictionary:v49];

        v50 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:8 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{15, 2, v212}];
        [v3 addEntriesFromDictionary:v50];

        v51 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:9 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{16, 2, v212}];
        [v3 addEntriesFromDictionary:v51];

        v52 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:15 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{16, 2, v212}];
        [v3 addEntriesFromDictionary:v52];

        v275 = 0u;
        v274 = 0u;
        v273 = 0u;
        v272 = 0u;
        v53 = [&unk_2845A0EA8 countByEnumeratingWithState:&v272 objects:v313 count:16];
        if (v53)
        {
          v54 = *v273;
          do
          {
            for (m = 0; m != v53; ++m)
            {
              if (*v273 != v54)
              {
                objc_enumerationMutation(&unk_2845A0EA8);
              }

              v56 = *(*(&v272 + 1) + 8 * m);
              v57 = objc_autoreleasePoolPush();
              v58 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:10 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{objc_msgSend(v56, "unsignedIntValue"), 2, v212}];
              [v3 addEntriesFromDictionary:v58];

              v59 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:5 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{objc_msgSend(v56, "unsignedIntValue"), 2, v212}];
              [v3 addEntriesFromDictionary:v59];

              v60 = [v2 computeMetricsForSourcePlaceType:objc_msgSend(v45 source:"unsignedIntValue") referenceSourcePlaceType:4 referenceSource:objc_msgSend(v45 metricType:"unsignedIntValue") bins:{objc_msgSend(v56, "unsignedIntValue"), 2, v212}];
              [v3 addEntriesFromDictionary:v60];

              objc_autoreleasePoolPop(v57);
            }

            v53 = [&unk_2845A0EA8 countByEnumeratingWithState:&v272 objects:v313 count:16];
          }

          while (v53);
        }

        objc_autoreleasePoolPop(objb);
        v43 = contextb + 1;
      }

      while (contextb + 1 != v193);
      v193 = [inferredPlaceTypes2 countByEnumeratingWithState:&v276 objects:v314 count:16];
    }

    while (v193);
  }

  v271 = 0u;
  v270 = 0u;
  v268 = 0u;
  v269 = 0u;
  v61 = [&unk_2845A0EA8 arrayByAddingObjectsFromArray:&unk_2845A0EC0];
  v62 = [v61 countByEnumeratingWithState:&v268 objects:v312 count:16];
  if (v62)
  {
    v63 = *v269;
    do
    {
      for (n = 0; n != v62; ++n)
      {
        if (*v269 != v63)
        {
          objc_enumerationMutation(v61);
        }

        v65 = *(*(&v268 + 1) + 8 * n);
        v66 = objc_autoreleasePoolPush();
        v67 = [v2 computeMetricsForSourcePlaceType:1 source:objc_msgSend(v65 referenceSourcePlaceType:"unsignedIntValue") referenceSource:2 metricType:objc_msgSend(v65 bins:{"unsignedIntValue"), 2, v212}];
        [v3 addEntriesFromDictionary:v67];

        objc_autoreleasePoolPop(v66);
      }

      v62 = [v61 countByEnumeratingWithState:&v268 objects:v312 count:16];
    }

    while (v62);
  }

  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v68 = [&unk_2845A0EA8 arrayByAddingObjectsFromArray:&unk_2845A0ED8];
  v69 = [v68 countByEnumeratingWithState:&v264 objects:v311 count:16];
  if (v69)
  {
    v70 = *v265;
    do
    {
      for (ii = 0; ii != v69; ++ii)
      {
        if (*v265 != v70)
        {
          objc_enumerationMutation(v68);
        }

        v72 = *(*(&v264 + 1) + 8 * ii);
        v73 = objc_autoreleasePoolPush();
        v74 = [v2 computeMetricsForSourcePlaceType:1 source:objc_msgSend(v72 referenceSourcePlaceType:"unsignedIntValue") referenceSource:2 metricType:5 bins:{2, v212}];
        [v3 addEntriesFromDictionary:v74];

        v75 = [v2 computeMetricsForSourcePlaceType:2 source:objc_msgSend(v72 referenceSourcePlaceType:"unsignedIntValue") referenceSource:1 metricType:5 bins:{2, v212}];
        [v3 addEntriesFromDictionary:v75];

        objc_autoreleasePoolPop(v73);
      }

      v69 = [v68 countByEnumeratingWithState:&v264 objects:v311 count:16];
    }

    while (v69);
  }

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v76 = [&unk_2845A0EA8 arrayByAddingObjectsFromArray:&unk_2845A0EF0];
  v77 = [v76 countByEnumeratingWithState:&v260 objects:v310 count:16];
  if (v77)
  {
    v78 = *v261;
    do
    {
      for (jj = 0; jj != v77; ++jj)
      {
        if (*v261 != v78)
        {
          objc_enumerationMutation(v76);
        }

        v80 = *(*(&v260 + 1) + 8 * jj);
        v81 = objc_autoreleasePoolPush();
        v82 = [v2 computeMetricsForSourcePlaceType:1 source:objc_msgSend(v80 referenceSourcePlaceType:"unsignedIntValue") referenceSource:2 metricType:14 bins:{2, v212}];
        [v3 addEntriesFromDictionary:v82];

        v83 = [v2 computeMetricsForSourcePlaceType:2 source:objc_msgSend(v80 referenceSourcePlaceType:"unsignedIntValue") referenceSource:1 metricType:14 bins:{2, v212}];
        [v3 addEntriesFromDictionary:v83];

        objc_autoreleasePoolPop(v81);
      }

      v77 = [v76 countByEnumeratingWithState:&v260 objects:v310 count:16];
    }

    while (v77);
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v159 = [&unk_2845A0E90 countByEnumeratingWithState:&v256 objects:v309 count:16];
  if (v159)
  {
    v158 = *v257;
    v176 = *MEMORY[0x277D01448];
    v179 = *MEMORY[0x277CCA450];
    do
    {
      for (kk = 0; kk != v159; ++kk)
      {
        if (*v257 != v158)
        {
          objc_enumerationMutation(&unk_2845A0E90);
        }

        v166 = *(*(&v256 + 1) + 8 * kk);
        v157 = objc_autoreleasePoolPush();
        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        allPlaceTypes = [objc_opt_class() allPlaceTypes];
        v164 = [allPlaceTypes countByEnumeratingWithState:&v252 objects:v308 count:16];
        if (v164)
        {
          v162 = *v253;
          do
          {
            for (mm = 0; mm != v164; ++mm)
            {
              if (*v253 != v162)
              {
                objc_enumerationMutation(allPlaceTypes);
              }

              v172 = *(*(&v252 + 1) + 8 * mm);
              v168 = objc_autoreleasePoolPush();
              if ([v172 unsignedIntValue] != 3 || (objc_msgSend(objc_opt_class(), "schoolGymEligibleSources"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "containsObject:", v166), v84, v85))
              {
                if ([v172 unsignedIntValue] != 4 || (objc_msgSend(objc_opt_class(), "schoolGymEligibleSources"), v86 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend(v86, "containsObject:", v166), v86, v87))
                {
                  v248 = 0;
                  v249 = &v248;
                  v250 = 0x2020000000;
                  v251 = -1;
                  v244 = 0u;
                  v245 = 0u;
                  v246 = 0u;
                  v247 = 0u;
                  metricsData = [v2 metricsData];
                  v89 = [objc_opt_class() keyForSourceType:objc_msgSend(v166 placeType:{"unsignedIntValue"), objc_msgSend(v172, "unsignedIntValue")}];
                  v90 = [metricsData objectForKeyedSubscript:v89];
                  v174 = [v90 objectForKeyedSubscript:&unk_28459DE90];

                  v91 = [v174 countByEnumeratingWithState:&v244 objects:v307 count:16];
                  if (v91)
                  {
                    v188 = *v245;
                    do
                    {
                      v92 = 0;
                      v194 = v91;
                      do
                      {
                        if (*v245 != v188)
                        {
                          objc_enumerationMutation(v174);
                        }

                        v93 = *(*(&v244 + 1) + 8 * v92);
                        objc = objc_autoreleasePoolPush();
                        v94 = dispatch_semaphore_create(0);
                        learnedLocationStore = [v2 learnedLocationStore];
                        identifier = [v93 identifier];
                        v241[0] = MEMORY[0x277D85DD0];
                        v241[1] = 3221225472;
                        v241[2] = __57__RTPlaceTypeClassifierMetricsCalculator_retrieveMetrics__block_invoke;
                        v241[3] = &unk_2788CB1C0;
                        v243 = &v248;
                        v97 = v94;
                        v242 = v97;
                        [learnedLocationStore fetchLastVisitToPlaceWithIdentifier:identifier handler:v241];

                        v98 = v97;
                        v99 = [MEMORY[0x277CBEAA8] now];
                        v100 = dispatch_time(0, 3600000000000);
                        if (dispatch_semaphore_wait(v98, v100))
                        {
                          contextc = [MEMORY[0x277CBEAA8] now];
                          [contextc timeIntervalSinceDate:v99];
                          v102 = v101;
                          v103 = objc_opt_new();
                          v104 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_682];
                          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                          v106 = [callStackSymbols filteredArrayUsingPredicate:v104];
                          firstObject = [v106 firstObject];

                          [v103 submitToCoreAnalytics:firstObject type:1 duration:v102];
                          v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 0;
                            _os_log_fault_impl(&dword_2304B3000, v108, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: [inferredVersion.identifier isEqual:self.existingVersion.identifier] || inferredVersion == nil || self.existingVersion == nil (in %s:%d)", buf, 2u);
                          }

                          v109 = MEMORY[0x277CCA9B8];
                          v320 = v179;
                          *buf = @"semaphore wait timeout";
                          v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v320 count:1];
                          v111 = [v109 errorWithDomain:v176 code:15 userInfo:v110];

                          if (v111)
                          {
                            v112 = v111;
                          }
                        }

                        else
                        {
                          v111 = 0;
                        }

                        v113 = v111;
                        objc_autoreleasePoolPop(objc);
                        ++v92;
                      }

                      while (v194 != v92);
                      v91 = [v174 countByEnumeratingWithState:&v244 objects:v307 count:16];
                    }

                    while (v91);
                  }

                  if ((v249[3] & 0x8000000000000000) == 0)
                  {
                    v114 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                    [v2 storeMetricsData:v114 source:objc_msgSend(v166 placeType:"unsignedIntValue") metricKey:{objc_msgSend(v172, "unsignedIntValue"), 4}];
                  }

                  _Block_object_dispose(&v248, 8);
                }
              }

              objc_autoreleasePoolPop(v168);
            }

            v164 = [allPlaceTypes countByEnumeratingWithState:&v252 objects:v308 count:16];
          }

          while (v164);
        }

        objc_autoreleasePoolPop(v157);
      }

      v159 = [&unk_2845A0E90 countByEnumeratingWithState:&v256 objects:v309 count:16];
    }

    while (v159);
  }

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  allPlaceTypes2 = [objc_opt_class() allPlaceTypes];
  v167 = [allPlaceTypes2 countByEnumeratingWithState:&v237 objects:v306 count:16];
  if (v167)
  {
    v165 = *v238;
    do
    {
      for (nn = 0; nn != v167; ++nn)
      {
        if (*v238 != v165)
        {
          objc_enumerationMutation(allPlaceTypes2);
        }

        v189 = *(*(&v237 + 1) + 8 * nn);
        v169 = objc_autoreleasePoolPush();
        metricsData2 = [v2 metricsData];
        v116 = [objc_opt_class() keyForSourceType:14 placeType:{objc_msgSend(v189, "unsignedIntValue")}];
        v117 = [metricsData2 objectForKeyedSubscript:v116];
        v175 = [v117 objectForKeyedSubscript:&unk_28459DE90];

        metricsData3 = [v2 metricsData];
        v119 = [objc_opt_class() keyForSourceType:3 placeType:{objc_msgSend(v189, "unsignedIntValue")}];
        v120 = [metricsData3 objectForKeyedSubscript:v119];
        v184 = [v120 objectForKeyedSubscript:&unk_28459DE90];

        v121 = [v175 count];
        if (v121 == [v184 count])
        {
          v235 = 0u;
          v236 = 0u;
          v233 = 0u;
          v234 = 0u;
          v173 = v175;
          v180 = [v173 countByEnumeratingWithState:&v233 objects:v305 count:16];
          if (v180)
          {
            v177 = *v234;
            while (2)
            {
              v122 = 0;
              do
              {
                if (*v234 != v177)
                {
                  v123 = v122;
                  objc_enumerationMutation(v173);
                  v122 = v123;
                }

                v195 = v122;
                v124 = *(*(&v233 + 1) + 8 * v122);
                contextd = objc_autoreleasePoolPush();
                v231 = 0u;
                v232 = 0u;
                v229 = 0u;
                v230 = 0u;
                objd = v184;
                v125 = [objd countByEnumeratingWithState:&v229 objects:v304 count:16];
                if (!v125)
                {

LABEL_131:
                  [v2 storeMetricsData:&unk_28459DF50 source:14 placeType:objc_msgSend(v189 metricKey:{"unsignedIntValue", v157), 5}];
                  objc_autoreleasePoolPop(contextd);
                  goto LABEL_132;
                }

                v126 = 0;
                v127 = *v230;
                do
                {
                  for (i1 = 0; i1 != v125; ++i1)
                  {
                    if (*v230 != v127)
                    {
                      objc_enumerationMutation(objd);
                    }

                    v129 = *(*(&v229 + 1) + 8 * i1);
                    type = [v129 type];
                    if (type == [v124 type])
                    {
                      mapItem = [v129 mapItem];
                      mapItem2 = [v124 mapItem];
                      v133 = [mapItem isEqualToMapItem:mapItem2];

                      v126 |= v133;
                    }
                  }

                  v125 = [objd countByEnumeratingWithState:&v229 objects:v304 count:16];
                }

                while (v125);

                if ((v126 & 1) == 0)
                {
                  goto LABEL_131;
                }

                [v2 storeMetricsData:&unk_28459DF20 source:14 placeType:objc_msgSend(v189 metricKey:{"unsignedIntValue"), 5}];
                objc_autoreleasePoolPop(contextd);
                v122 = v195 + 1;
              }

              while ((v195 + 1) != v180);
              v180 = [v173 countByEnumeratingWithState:&v233 objects:v305 count:16];
              if (v180)
              {
                continue;
              }

              break;
            }
          }

LABEL_132:
        }

        else
        {
          [v2 storeMetricsData:&unk_28459DF50 source:14 placeType:objc_msgSend(v189 metricKey:{"unsignedIntValue"), 5}];
        }

        objc_autoreleasePoolPop(v169);
      }

      v167 = [allPlaceTypes2 countByEnumeratingWithState:&v237 objects:v306 count:16];
    }

    while (v167);
  }

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  contexte = [&unk_2845A0E90 countByEnumeratingWithState:&v225 objects:v303 count:16];
  if (contexte)
  {
    v196 = *v226;
    do
    {
      for (i2 = 0; i2 != contexte; i2 = i2 + 1)
      {
        if (*v226 != v196)
        {
          objc_enumerationMutation(&unk_2845A0E90);
        }

        v135 = *(*(&v225 + 1) + 8 * i2);
        obje = objc_autoreleasePoolPush();
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        inferredPlaceTypes3 = [objc_opt_class() inferredPlaceTypes];
        v137 = [inferredPlaceTypes3 countByEnumeratingWithState:&v221 objects:v302 count:16];
        if (v137)
        {
          v138 = *v222;
          do
          {
            for (i3 = 0; i3 != v137; ++i3)
            {
              if (*v222 != v138)
              {
                objc_enumerationMutation(inferredPlaceTypes3);
              }

              v140 = *(*(&v221 + 1) + 8 * i3);
              v141 = objc_autoreleasePoolPush();
              v142 = [v2 retrieveComputedMetricsForSourcePlaceType:objc_msgSend(v140 source:{"unsignedIntValue"), objc_msgSend(v135, "unsignedIntValue")}];
              [v3 addEntriesFromDictionary:v142];

              objc_autoreleasePoolPop(v141);
            }

            v137 = [inferredPlaceTypes3 countByEnumeratingWithState:&v221 objects:v302 count:16];
          }

          while (v137);
        }

        objc_autoreleasePoolPop(obje);
      }

      contexte = [&unk_2845A0E90 countByEnumeratingWithState:&v225 objects:v303 count:16];
    }

    while (contexte);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  schoolGymEligibleSources = [objc_opt_class() schoolGymEligibleSources];
  contextf = [schoolGymEligibleSources countByEnumeratingWithState:&v217 objects:v301 count:16];
  if (contextf)
  {
    v197 = *v218;
    do
    {
      for (i4 = 0; i4 != contextf; i4 = i4 + 1)
      {
        if (*v218 != v197)
        {
          objc_enumerationMutation(schoolGymEligibleSources);
        }

        v144 = *(*(&v217 + 1) + 8 * i4);
        objf = objc_autoreleasePoolPush();
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        nonInferredPlaceTypes2 = [objc_opt_class() nonInferredPlaceTypes];
        v146 = [nonInferredPlaceTypes2 countByEnumeratingWithState:&v213 objects:v300 count:16];
        if (v146)
        {
          v147 = *v214;
          do
          {
            for (i5 = 0; i5 != v146; ++i5)
            {
              if (*v214 != v147)
              {
                objc_enumerationMutation(nonInferredPlaceTypes2);
              }

              v149 = *(*(&v213 + 1) + 8 * i5);
              v150 = objc_autoreleasePoolPush();
              v151 = [v2 retrieveComputedMetricsForSourcePlaceType:objc_msgSend(v149 source:{"unsignedIntValue"), objc_msgSend(v144, "unsignedIntValue")}];
              [v3 addEntriesFromDictionary:v151];

              objc_autoreleasePoolPop(v150);
            }

            v146 = [nonInferredPlaceTypes2 countByEnumeratingWithState:&v213 objects:v300 count:16];
          }

          while (v146);
        }

        objc_autoreleasePoolPop(objf);
      }

      contextf = [schoolGymEligibleSources countByEnumeratingWithState:&v217 objects:v301 count:16];
    }

    while (contextf);
  }

  v152 = [v2 retrieveComputedMetricsForSourcePlaceType:0 source:0];
  [v3 addEntriesFromDictionary:v152];

  v153 = [v2 computeMetricsForSourcePlaceType:1 source:18 referenceSourcePlaceType:0 referenceSource:0 metricType:1 bins:0];
  [v3 addEntriesFromDictionary:v153];

  generateAllMultipleWorkMetrics = [v2 generateAllMultipleWorkMetrics];
  [v3 addEntriesFromDictionary:generateAllMultipleWorkMetrics];
  v155 = v3;

  return v3;
}

void __57__RTPlaceTypeClassifierMetricsCalculator_retrieveMetrics__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 exitDate];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v8 exitDate];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v4 components:16 fromDate:v5 toDate:v6 options:0];

    if ([v7 day] > *(*(*(a1 + 40) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = [v7 day];
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)allPlaceTypes
{
  inferredPlaceTypes = [objc_opt_class() inferredPlaceTypes];
  nonInferredPlaceTypes = [objc_opt_class() nonInferredPlaceTypes];
  v4 = [inferredPlaceTypes arrayByAddingObjectsFromArray:nonInferredPlaceTypes];

  return v4;
}

- (id)computeMetricsForSourcePlaceType:(unint64_t)type source:(unint64_t)source referenceSourcePlaceType:(unint64_t)placeType referenceSource:(unint64_t)referenceSource metricType:(unint64_t)metricType bins:(id)bins
{
  binsCopy = bins;
  v14 = objc_opt_new();
  v15 = objc_autoreleasePoolPush();
  if (type == placeType && source == referenceSource)
  {
    goto LABEL_21;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:metricType];
  notHomeEligibleSources = [&unk_2845A1040 containsObject:v16];

  if (!notHomeEligibleSources)
  {
    goto LABEL_21;
  }

  if (type == 1)
  {
    notHomeEligibleSources = [objc_opt_class() notHomeEligibleSources];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    if (([notHomeEligibleSources containsObject:v16] & 1) == 0)
    {
      v18 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (type == 2)
  {
    notHomeEligibleSources = [objc_opt_class() notWorkEligibleSources];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    if ([notHomeEligibleSources containsObject:v16])
    {
LABEL_9:

LABEL_21:
      v23 = v14;
      objc_autoreleasePoolPop(v15);
      goto LABEL_22;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_12:
  v41 = v16;
  if (placeType == 2)
  {
    v37 = v18;
    notWorkEligibleSources = [objc_opt_class() notWorkEligibleSources];
LABEL_16:
    v20 = notWorkEligibleSources;
    v36 = notWorkEligibleSources;
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:referenceSource];
    v21 = v39 = notHomeEligibleSources;
    v22 = [v20 containsObject:v21];

    notHomeEligibleSources = v39;
    if ((v37 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (placeType == 1)
  {
    v37 = v18;
    notWorkEligibleSources = [objc_opt_class() notHomeEligibleSources];
    goto LABEL_16;
  }

  v22 = 0;
  if (v18)
  {
LABEL_17:
  }

LABEL_18:
  if (type == 1)
  {
  }

  if (v22)
  {
    goto LABEL_21;
  }

  metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v25 = [objc_opt_class() keyForSourceType:source placeType:type];
  v26 = [metricsData objectForKeyedSubscript:v25];
  v40 = [v26 objectForKeyedSubscript:&unk_28459DE90];

  metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v27 = [objc_opt_class() keyForSourceType:referenceSource placeType:placeType];
  v28 = [metricsData2 objectForKeyedSubscript:v27];
  v43 = [v28 objectForKeyedSubscript:&unk_28459DE90];

  v29 = [objc_opt_class() keyForMetricType:metricType sourcePlaceType:type source:source referenceSourcePlaceType:placeType referenceSource:referenceSource metricKey:0];
  [v14 setObject:&unk_28459DF08 forKeyedSubscript:v29];
  if (v40)
  {
    if (metricType == 2)
    {
      selfCopy = self;
      v30 = v43;
      v31 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy computeDistanceMetricForSourcePlaces:v40 referencePlaces:v43 bins:binsCopy];
    }

    else
    {
      v30 = v43;
      if (metricType != 1)
      {
        goto LABEL_34;
      }

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v40, "count")}];
    }

    v34 = v31;
    [v14 setObject:v31 forKeyedSubscript:v29];
  }

  else
  {
    v32 = v14;
    v30 = v43;
  }

LABEL_34:

  objc_autoreleasePoolPop(v15);
  if (v40)
  {
    v35 = v14;
  }

LABEL_22:

  return v14;
}

- (id)computeMetricsForWorkCandidates:(id)candidates sourceType:(unint64_t)type homeLOIs:(id)is workTruths:(id)truths distanceBins:(id)bins homeLOIMethodLabel:(id)label
{
  v119 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  isCopy = is;
  truthsCopy = truths;
  binsCopy = bins;
  labelCopy = label;
  v18 = objc_opt_new();
  v88 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459DF50 gap:&unk_2845A1BE8];
  v84 = [objc_opt_class() keyForMetricType:1 placeType:2 source:type metricKey:14];
  v85 = labelCopy;
  [v18 setObject:labelCopy forKeyedSubscript:?];
  selfCopy = self;
  typeCopy = type;
  v19 = [objc_opt_class() keyForMetricType:1 placeType:2 source:type metricKey:13];
  v86 = truthsCopy;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(truthsCopy, "count")}];
  v91 = v18;
  v83 = v19;
  [v18 setObject:v20 forKeyedSubscript:v19];

  v103 = candidatesCopy;
  v90 = isCopy;
  if ([candidatesCopy count] && objc_msgSend(isCopy, "count"))
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = isCopy;
    v21 = [obj countByEnumeratingWithState:&v109 objects:v118 count:16];
    if (v21)
    {
      v22 = v21;
      v100 = *v110;
      v102 = 0;
      v23 = 1.79769313e308;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v110 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v109 + 1) + 8 * i);
          distanceCalculator = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy distanceCalculator];
          mapItem = [v25 mapItem];
          location = [mapItem location];
          v29 = [v103 objectAtIndexedSubscript:0];
          secondObject = [v29 secondObject];
          mapItem2 = [secondObject mapItem];
          location2 = [mapItem2 location];
          [distanceCalculator distanceFromLocation:location toLocation:location2 error:0];
          v34 = v33;

          if (v34 < v23)
          {
            v35 = v25;

            v23 = v34;
            v102 = v35;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v22);
    }

    else
    {
      v102 = 0;
    }

    candidatesCopy = v103;
  }

  else
  {
    v102 = 0;
  }

  for (j = 0; j != 5; ++j)
  {
    if (j < [candidatesCopy count] && (objc_msgSend(candidatesCopy, "objectAtIndexedSubscript:", j), (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = v37;
      firstObject = [v37 firstObject];
      v101 = v38;
      if ([v86 count])
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v92 = v86;
        obja = [v92 countByEnumeratingWithState:&v105 objects:v117 count:16];
        if (obja)
        {
          v94 = j;
          v95 = *v106;
          while (2)
          {
            for (k = 0; k != obja; k = k + 1)
            {
              if (*v106 != v95)
              {
                objc_enumerationMutation(v92);
              }

              v40 = *(*(&v105 + 1) + 8 * k);
              mapItem3 = [v40 mapItem];
              secondObject2 = [v38 secondObject];
              mapItem4 = [secondObject2 mapItem];
              if ([mapItem3 isEqualToMapItem:mapItem4])
              {

                v52 = 1;
                goto LABEL_35;
              }

              distanceCalculator2 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy distanceCalculator];
              secondObject3 = [v38 secondObject];
              mapItem5 = [secondObject3 mapItem];
              location3 = [mapItem5 location];
              mapItem6 = [v40 mapItem];
              location4 = [mapItem6 location];
              [distanceCalculator2 distanceFromLocation:location3 toLocation:location4 error:0];
              v51 = v50;

              if (v51 <= 250.0)
              {
                v52 = 1;
                j = v94;
                v38 = v101;
                goto LABEL_35;
              }

              v38 = v101;
              j = v94;
            }

            v52 = 0;
            obja = [v92 countByEnumeratingWithState:&v105 objects:v117 count:16];
            if (obja)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v52 = 0;
        }

LABEL_35:

        v56 = [MEMORY[0x277CCABB0] numberWithBool:v52];
      }

      else
      {
        v56 = &unk_28459E1C0;
      }

      if (v102)
      {
        secondObject4 = [v38 secondObject];
        v116 = secondObject4;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
        v115 = v102;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
        objb = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy computeDistanceMetricForSourcePlaces:v58 referencePlaces:v59 bins:binsCopy];
      }

      else
      {
        objb = &unk_28459E1C0;
      }

      v55 = v56;
      if (j)
      {
        secondObject5 = [v38 secondObject];
        v114 = secondObject5;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
        v62 = [v103 objectAtIndexedSubscript:0];
        secondObject6 = [v62 secondObject];
        v113 = secondObject6;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
        v53 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy computeDistanceMetricForSourcePlaces:v61 referencePlaces:v64 bins:binsCopy];
      }

      else
      {
        v53 = &unk_28459E1C0;
      }

      v54 = firstObject;
    }

    else
    {
      v53 = &unk_28459E1C0;
      v54 = &unk_28459E1C0;
      v55 = &unk_28459E1C0;
      objb = &unk_28459E1C0;
      v101 = 0;
    }

    v65 = objc_opt_class();
    v66 = [&unk_2845A1058 objectAtIndexedSubscript:j];
    v67 = [v65 keyForMetricType:3 placeType:2 source:typeCopy metricKey:{objc_msgSend(v66, "unsignedIntegerValue")}];

    v68 = objc_opt_class();
    v69 = [&unk_2845A1070 objectAtIndexedSubscript:j];
    v70 = [v68 keyForMetricType:3 placeType:2 source:typeCopy metricKey:{objc_msgSend(v69, "unsignedIntegerValue")}];

    v71 = objc_opt_class();
    v72 = [&unk_2845A1088 objectAtIndexedSubscript:j];
    v73 = [v71 keyForMetricType:3 placeType:2 source:typeCopy metricKey:{objc_msgSend(v72, "unsignedIntegerValue")}];

    [v54 doubleValue];
    v74 = v54;
    if (v75 <= 0.0)
    {
      v76 = v54;
    }

    else
    {
      v76 = [RTMetric binForNumber:v54 bins:v88];
    }

    v77 = v76;
    [v91 setObject:v76 forKeyedSubscript:v67];
    [v91 setObject:v55 forKeyedSubscript:v70];
    [v91 setObject:objb forKeyedSubscript:v73];
    if (j)
    {
      v96 = v55;
      v78 = v74;
      v79 = objc_opt_class();
      v80 = [&unk_2845A10A0 objectAtIndexedSubscript:j];
      v81 = [v79 keyForMetricType:3 placeType:2 source:typeCopy metricKey:{objc_msgSend(v80, "unsignedIntegerValue")}];

      [v91 setObject:v53 forKeyedSubscript:v81];
      v74 = v78;
      v55 = v96;
    }

    candidatesCopy = v103;
  }

  return v91;
}

- (id)generateAllMultipleWorkMetrics
{
  v39 = *MEMORY[0x277D85DE8];
  metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v4 = [objc_opt_class() keyForSourceType:14 placeType:1];
  v5 = [metricsData objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:&unk_28459DE90];

  metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v8 = [objc_opt_class() keyForSourceType:19 placeType:2];
  v9 = [metricsData2 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:&unk_28459DE90];

  v11 = [RTMetric exponentialBinsFromStart:20 toEnd:1.0 binCount:200000.0];
  metricsData3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v13 = [objc_opt_class() keyForSourceType:6 placeType:2];
  v14 = [metricsData3 objectForKeyedSubscript:v13];
  v15 = [v14 objectForKeyedSubscript:&unk_28459E040];

  metricsData4 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v17 = [objc_opt_class() keyForSourceType:8 placeType:2];
  v18 = [metricsData4 objectForKeyedSubscript:v17];
  v19 = [v18 objectForKeyedSubscript:&unk_28459E040];

  v20 = [(RTPlaceTypeClassifierMetricsCalculator *)self computeMetricsForWorkCandidates:v15 sourceType:6 homeLOIs:v6 workTruths:v10 distanceBins:v11 homeLOIMethodLabel:@"rule_engine"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      v37 = 2112;
      v38 = v20;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, %@, rule-home multiple-work metrics: %@", buf, 0x20u);
    }
  }

  v22 = [(RTPlaceTypeClassifierMetricsCalculator *)self computeMetricsForWorkCandidates:v19 sourceType:8 homeLOIs:v6 workTruths:v10 distanceBins:v11 homeLOIMethodLabel:@"ml_model"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412802;
      v34 = v30;
      v35 = 2112;
      v36 = v31;
      v37 = 2112;
      v38 = v22;
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "%@, %@, model-home multiple-work metrics: %@", buf, 0x20u);
    }
  }

  v24 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
  [v24 addEntriesFromDictionary:v22];

  return v24;
}

- (id)retrieveComputedMetricsForSourcePlaceType:(unint64_t)type source:(unint64_t)source
{
  v131 = *MEMORY[0x277D85DE8];
  v118 = objc_opt_new();
  v108 = type - 1;
  sourceCopy = source;
  if (type == 1)
  {
    notHomeEligibleSources = [objc_opt_class() notHomeEligibleSources];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    v9 = [notHomeEligibleSources containsObject:v8];

    if (v9)
    {
      goto LABEL_80;
    }

    v10 = &unk_2845A1118;
    goto LABEL_13;
  }

  if (type == 4)
  {
    schoolGymEligibleSources = [objc_opt_class() schoolGymEligibleSources];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    v19 = [schoolGymEligibleSources containsObject:v18];

    if (!v19)
    {
      goto LABEL_80;
    }

    goto LABEL_12;
  }

  if (type != 3)
  {
    if (type != 2)
    {
      v107 = &unk_2845A1130;
      goto LABEL_15;
    }

    notWorkEligibleSources = [objc_opt_class() notWorkEligibleSources];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    v13 = [notWorkEligibleSources containsObject:v12];

    if (v13)
    {
      goto LABEL_80;
    }

    goto LABEL_12;
  }

  schoolGymEligibleSources2 = [objc_opt_class() schoolGymEligibleSources];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  v16 = [schoolGymEligibleSources2 containsObject:v15];

  if (v16)
  {
LABEL_12:
    v10 = &unk_2845A1130;
LABEL_13:
    v107 = v10;
    source = sourceCopy;
LABEL_15:
    v20 = [objc_opt_class() keyForSourceType:source placeType:type];
    v21 = 0;
    v109 = source | type;
    v22 = 1;
    v23 = 0x277CCA000uLL;
    typeCopy = type;
    selfCopy = self;
    while (1)
    {
      v123 = v21;
      v24 = [*(v23 + 2992) numberWithUnsignedInteger:source];
      if ([&unk_2845A10B8 containsObject:v24])
      {
        v25 = [*(v23 + 2992) numberWithUnsignedInteger:type];
        if ([&unk_2845A10E8 containsObject:v25])
        {
          modelDictionaryMetricKeys = [objc_opt_class() modelDictionaryMetricKeys];
          v27 = [*(v23 + 2992) numberWithInt:v22];
          v119 = [modelDictionaryMetricKeys containsObject:v27];
        }

        else
        {
          v119 = 0;
        }
      }

      else
      {
        v119 = 0;
      }

      v28 = [*(v23 + 2992) numberWithUnsignedInteger:source];
      if ([&unk_2845A10B8 containsObject:v28])
      {
        v29 = [*(v23 + 2992) numberWithUnsignedInteger:type];
        if ([&unk_2845A10E8 containsObject:v29])
        {
          modelNonDictionaryMetricKeys = [objc_opt_class() modelNonDictionaryMetricKeys];
          v31 = [*(v23 + 2992) numberWithInt:v22];
          v114 = [modelNonDictionaryMetricKeys containsObject:v31];
        }

        else
        {
          v114 = 0;
        }
      }

      else
      {
        v114 = 0;
      }

      if (v109)
      {
        obj = 0;
      }

      else
      {
        genericOnlyMetricKeys = [objc_opt_class() genericOnlyMetricKeys];
        v33 = [*(v23 + 2992) numberWithInt:v22];
        obj = [genericOnlyMetricKeys containsObject:v33];
      }

      v34 = 0;
      if (source)
      {
        if (source == 14)
        {
          v35 = [*(v23 + 2992) numberWithUnsignedInteger:type];
          if ([&unk_2845A10D0 containsObject:v35])
          {
            shownToEndUserOnlyMetricKeys = [objc_opt_class() shownToEndUserOnlyMetricKeys];
            v37 = [*(v23 + 2992) numberWithInt:v22];
            v34 = [shownToEndUserOnlyMetricKeys containsObject:v37];
          }

          else
          {
            v34 = 0;
          }
        }

        v38 = v34;
        v39 = [*(v23 + 2992) numberWithUnsignedInteger:type];
        if ([&unk_2845A10D0 containsObject:v39])
        {
          anySourceMetricKeys = [objc_opt_class() anySourceMetricKeys];
          v41 = [*(v23 + 2992) numberWithInt:v22];
          v110 = [anySourceMetricKeys containsObject:v41];
        }

        else
        {
          v110 = 0;
        }
      }

      else
      {
        v38 = 0;
        v110 = 0;
      }

      ignoredMetricKeys = [objc_opt_class() ignoredMetricKeys];
      v43 = [*(v23 + 2992) numberWithInt:v22];
      v44 = [ignoredMetricKeys containsObject:v43];

      if (v44)
      {
        v21 = v123;
      }

      else
      {
        v122 = v22;
        if (v119)
        {
          v45 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A1100];
          if (v108 <= 1)
          {
            v46 = objc_opt_new();
            v47 = [RTRuntime objToDictionary:v46 filterProperties:v107];
            allKeys = [v47 allKeys];
            [v45 addObjectsFromArray:allKeys];
          }

          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          obja = v45;
          v120 = [obja countByEnumeratingWithState:&v126 objects:v130 count:16];
          if (v120)
          {
            v115 = *v127;
            v21 = v123;
            do
            {
              v49 = 0;
              do
              {
                if (*v127 != v115)
                {
                  objc_enumerationMutation(obja);
                }

                v50 = *(*(&v126 + 1) + 8 * v49);
                v51 = [objc_opt_class() keyForMetricType:3 placeType:type source:source metricKey:v22];

                v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v51, v50];

                metricsData = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
                v53 = [metricsData objectForKeyedSubscript:v20];
                [*(v23 + 2992) numberWithInt:v22];
                v55 = v54 = self;
                v56 = [v53 objectForKeyedSubscript:v55];
                [v56 objectForKeyedSubscript:v50];
                v58 = v57 = v23;

                if (v58)
                {
                  metricsData2 = [(RTPlaceTypeClassifierMetricsCalculator *)v54 metricsData];
                  v60 = [metricsData2 objectForKeyedSubscript:v20];
                  v61 = [*(v57 + 2992) numberWithInt:v122];
                  v62 = [v60 objectForKeyedSubscript:v61];
                  v63 = [v62 objectForKeyedSubscript:v50];
                  [v118 setObject:v63 forKeyedSubscript:v124];

                  v21 = v124;
                }

                else
                {
                  v21 = v124;
                  [v118 setObject:&unk_28459DF08 forKeyedSubscript:v124];
                }

                ++v49;
                v22 = v122;
                source = sourceCopy;
                type = typeCopy;
                self = selfCopy;
                v23 = 0x277CCA000;
              }

              while (v120 != v49);
              v120 = [obja countByEnumeratingWithState:&v126 objects:v130 count:16];
            }

            while (v120);
          }

          else
          {
            v21 = v123;
          }

          goto LABEL_74;
        }

        v64 = v114 | obj | v110 | v38;
        v21 = v123;
        if (v64)
        {
          v65 = [objc_opt_class() keyForMetricType:3 placeType:type source:source metricKey:v22];

          metricsData3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
          v67 = [metricsData3 objectForKeyedSubscript:v20];
          v68 = [*(v23 + 2992) numberWithInt:v22];
          v69 = [v67 objectForKeyedSubscript:v68];

          if (v69)
          {
            if ((v22 - 3) <= 1)
            {
              metricsData6 = objc_opt_new();
              v71 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459E238 gap:&unk_28459DF50];
              [metricsData6 addObjectsFromArray:v71];

              v72 = [RTMetric binsFromStart:&unk_28459E250 toEnd:&unk_28459E268 gap:&unk_28459E280];
              [metricsData6 addObjectsFromArray:v72];

              v73 = [RTMetric binsFromStart:&unk_28459E298 toEnd:&unk_28459E2B0 gap:&unk_28459E2C8];
              [metricsData6 addObjectsFromArray:v73];

              metricsData4 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
              v75 = [metricsData4 objectForKeyedSubscript:v20];
              v76 = [MEMORY[0x277CCABB0] numberWithInt:v22];
              v77 = [v75 objectForKeyedSubscript:v76];
              v78 = [RTMetric binForNumber:v77 bins:metricsData6];
              [v118 setObject:v78 forKeyedSubscript:v65];

              source = sourceCopy;
              v23 = 0x277CCA000uLL;

              self = selfCopy;
              goto LABEL_62;
            }

            if (v22 == 11 || (v22 & 0xB) == 2)
            {
              v86 = objc_opt_new();
              v121 = v65;
              v87 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459E2C8 gap:&unk_28459DF50];
              [v86 addObjectsFromArray:v87];

              v88 = [RTMetric binsFromStart:&unk_28459E238 toEnd:&unk_28459E2E0 gap:&unk_28459E280];
              [v86 addObjectsFromArray:v88];

              v89 = [RTMetric binsFromStart:&unk_28459E268 toEnd:&unk_28459DF38 gap:&unk_28459E2C8];
              [v86 addObjectsFromArray:v89];

              metricsData5 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
              [metricsData5 objectForKeyedSubscript:v20];
              v91 = v125 = v20;
              v92 = [MEMORY[0x277CCABB0] numberWithInt:v22];
              v93 = [v91 objectForKeyedSubscript:v92];
              v94 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459E298 gap:&unk_28459DF50];
              v95 = [RTMetric binForNumber:v93 bins:v94];
              v21 = v121;
              [v118 setObject:v95 forKeyedSubscript:v121];

              v23 = 0x277CCA000;
              self = selfCopy;

              v20 = v125;
              goto LABEL_73;
            }

            v79 = v22 - 9;
            if (typeCopy != 1 || v79 > 1)
            {
              if (typeCopy == 2 && v79 <= 1)
              {
                metricsData6 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
                v96 = [metricsData6 objectForKeyedSubscript:v20];
                v97 = [MEMORY[0x277CCABB0] numberWithInt:v22];
                v98 = [v96 objectForKeyedSubscript:v97];
                v99 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459DF50 gap:&unk_2845A1BE8];
                v100 = [RTMetric binForNumber:v98 bins:v99];
                [v118 setObject:v100 forKeyedSubscript:v65];

                v23 = 0x277CCA000;
                self = selfCopy;

LABEL_62:
              }

              else
              {
                metricsData7 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
                v102 = [metricsData7 objectForKeyedSubscript:v20];
                v103 = [MEMORY[0x277CCABB0] numberWithInt:v22];
                v104 = [v102 objectForKeyedSubscript:v103];
                [v118 setObject:v104 forKeyedSubscript:v65];

                v23 = 0x277CCA000;
                self = selfCopy;
              }

              v21 = v65;
LABEL_73:
              type = typeCopy;
              goto LABEL_74;
            }

            metricsData8 = [(RTPlaceTypeClassifierMetricsCalculator *)selfCopy metricsData];
            v81 = [metricsData8 objectForKeyedSubscript:v20];
            v82 = [MEMORY[0x277CCABB0] numberWithInt:v22];
            v83 = [v81 objectForKeyedSubscript:v82];
            v84 = [RTMetric binsFromStart:&unk_2845A1BF8 toEnd:&unk_2845A1C08 gap:&unk_2845A1BE8];
            v85 = [RTMetric binForNumber:v83 bins:v84];
            [v118 setObject:v85 forKeyedSubscript:v65];

            type = 1;
            v23 = 0x277CCA000;

            self = selfCopy;
            v21 = v65;
          }

          else
          {
            [v118 setObject:&unk_28459DF08 forKeyedSubscript:v65];
            v21 = v65;
            type = typeCopy;
            self = selfCopy;
            v23 = 0x277CCA000;
          }
        }
      }

LABEL_74:
      if (++v22 == 12)
      {
        v105 = v118;

        break;
      }
    }
  }

LABEL_80:

  return v118;
}

+ (id)keyForMetricType:(unint64_t)type sourcePlaceType:(unint64_t)placeType source:(unint64_t)source referenceSourcePlaceType:(unint64_t)sourcePlaceType referenceSource:(unint64_t)referenceSource metricKey:(unint64_t)key
{
  v8 = &stru_284528390;
  if (type > 1)
  {
    if (type == 2)
    {
      v8 = [self keyForMetricType:2 placeType:placeType source:source metricKey:key];
      if (sourcePlaceType)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [RTLearnedPlace placeTypeToString:sourcePlaceType];
        v13 = [v11 stringWithFormat:@"%@_%@", v8, v12];

        v8 = v13;
      }

      if (referenceSource)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [objc_opt_class() metricsSourceToString:referenceSource];
        v16 = [v14 stringWithFormat:@"%@_%@", v8, v15];

        v8 = v16;
      }

      goto LABEL_12;
    }

    if (type != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!type)
  {
LABEL_12:
    v8 = v8;
    goto LABEL_13;
  }

  if (type == 1)
  {
LABEL_7:
    v8 = [self keyForMetricType:? placeType:? source:? metricKey:?];
    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

+ (id)keyForMetricType:(unint64_t)type placeType:(unint64_t)placeType source:(unint64_t)source metricKey:(unint64_t)key
{
  v9 = [objc_opt_class() metricsTypeToString:type];
  if (placeType)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [RTLearnedPlace placeTypeToString:placeType];
    v12 = [v10 stringWithFormat:@"%@_%@", v9, v11];

    v9 = v12;
  }

  if (source)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [objc_opt_class() metricsSourceToString:source];
    v15 = [v13 stringWithFormat:@"%@_%@", v9, v14];

    v9 = v15;
  }

  if (key)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [objc_opt_class() metricsKeyToString:key];
    v18 = [v16 stringWithFormat:@"%@_%@", v9, v17];

    v9 = v18;
  }

  return v9;
}

+ (id)keyForSourceType:(unint64_t)type placeType:(unint64_t)placeType
{
  v5 = [objc_opt_class() metricsSourceToString:type];
  v6 = MEMORY[0x277CCACA8];
  v7 = [RTLearnedPlace placeTypeToString:placeType];
  v8 = [v6 stringWithFormat:@"%@_%@", v5, v7];

  return v8;
}

+ (id)metricsTypeToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2788CB408[string - 1];
  }
}

- (id)filterLearnedPlacesOfType:(unint64_t)type places:(id)places
{
  v4 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__RTPlaceTypeClassifierMetricsCalculator_filterLearnedPlacesOfType_places___block_invoke;
  v9[3] = &__block_descriptor_40_e41_B24__0__RTLearnedPlace_8__NSDictionary_16l;
  v9[4] = type;
  placesCopy = places;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [placesCopy filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)computeDistanceMetricForSourcePlaces:(id)places referencePlaces:(id)referencePlaces bins:(id)bins
{
  v47 = *MEMORY[0x277D85DE8];
  placesCopy = places;
  referencePlacesCopy = referencePlaces;
  binsCopy = bins;
  if ([placesCopy count] && objc_msgSend(referencePlacesCopy, "count"))
  {
    v29 = binsCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = placesCopy;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    v30 = placesCopy;
    if (v34)
    {
      v32 = *v42;
      v33 = referencePlacesCopy;
      v10 = INFINITY;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v11;
          v12 = *(*(&v41 + 1) + 8 * v11);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v13 = referencePlacesCopy;
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v37 + 1) + 8 * i);
                distanceCalculator = self->_distanceCalculator;
                mapItem = [v12 mapItem];
                location = [mapItem location];
                mapItem2 = [v18 mapItem];
                location2 = [mapItem2 location];
                [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:location toLocation:location2 error:0];
                v25 = v24;

                if (v10 > v25)
                {
                  v10 = v25;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v15);
          }

          v11 = v35 + 1;
          referencePlacesCopy = v33;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    else
    {
      v10 = INFINITY;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    binsCopy = v29;
    v26 = [RTMetric binForNumber:v27 bins:v29];

    placesCopy = v30;
  }

  else
  {
    v26 = &unk_28459DF08;
  }

  return v26;
}

- (void)fetchWorkInferenceStatsForLookbackDays:(int64_t)days handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTPlaceTypeClassifierMetricsCalculator fetchWorkInferenceStatsForLookbackDays:handler:]";
      v21 = 1024;
      v22 = 2303;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  v10 = [date dateByAddingTimeInterval:(-86400 * days)];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:date];
  v12 = [[RTLearnedPlaceTypeInferenceEnumerationOptions alloc] initWithDateInterval:v11 sortByCreationDate:1 ascending:0 filteredToPlaceTypes:&unk_2845A1148 filteredToIdentifiers:0 filteredToSessionIds:0 filteredToLearnedPlaceIdentifiers:0];
  learnedPlaceTypeInferenceStore = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__RTPlaceTypeClassifierMetricsCalculator_fetchWorkInferenceStatsForLookbackDays_handler___block_invoke;
  v15[3] = &unk_2788C54E0;
  v15[4] = self;
  v16 = handlerCopy;
  v17 = a2;
  daysCopy = days;
  v14 = handlerCopy;
  [learnedPlaceTypeInferenceStore fetchLearnedPlaceTypeInferencesWithOptions:v12 handler:v15];
}

void __89__RTPlaceTypeClassifierMetricsCalculator_fetchWorkInferenceStatsForLookbackDays_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v63 = v46;
      v64 = 2112;
      v65 = v47;
      v66 = 2112;
      v67 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, %@, Failed to fetch historical work inferences: %@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v49 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v58 objects:v73 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v59;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v58 + 1) + 8 * i);
          if ([v14 metricSource] == 20)
          {
            v15 = [v14 learnedPlaceIdentifier];

            if (v15)
            {
              v16 = [v14 learnedPlaceIdentifier];
              v17 = [v7 objectForKeyedSubscript:v16];

              if (!v17)
              {
                v18 = [MEMORY[0x277CBEB18] array];
                v19 = [v14 learnedPlaceIdentifier];
                [v7 setObject:v18 forKeyedSubscript:v19];
              }

              v20 = [v14 learnedPlaceIdentifier];
              v21 = [v7 objectForKeyedSubscript:v20];
              [v21 addObject:v14];
            }

            ++v11;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v58 objects:v73 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v48 = v8;

    v22 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v23 = v7;
    v53 = [v23 countByEnumeratingWithState:&v54 objects:v72 count:16];
    if (v53)
    {
      v24 = *v55;
      v25 = off_2788C2000;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v54 + 1) + 8 * j);
          v28 = [v23 objectForKeyedSubscript:v27];
          v29 = [v28 firstObject];
          v30 = [v29 creationDate];

          v31 = [objc_alloc(v25[108]) initWithLearnedPlaceIdentifier:v27 totalInferences:v11 workInferences:objc_msgSend(v28 lastDateInferred:{"count"), v30}];
          [v22 addObject:v31];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v32 = v11;
            v33 = v24;
            v34 = v23;
            v35 = v22;
            v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = objc_opt_class();
              v52 = NSStringFromClass(v37);
              v50 = NSStringFromSelector(*(a1 + 48));
              *buf = 138413058;
              v63 = v52;
              v64 = 2112;
              v65 = v50;
              v66 = 2112;
              v67 = v27;
              v68 = 2112;
              v69 = v31;
              _os_log_debug_impl(&dword_2304B3000, v36, OS_LOG_TYPE_DEBUG, "%@, %@, Historical stats for place %@: %@", buf, 0x2Au);
            }

            v22 = v35;
            v23 = v34;
            v24 = v33;
            v11 = v32;
            v25 = off_2788C2000;
          }
        }

        v53 = [v23 countByEnumeratingWithState:&v54 objects:v72 count:16];
      }

      while (v53);
    }

    v4 = v49;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(*(a1 + 48));
        v42 = [v22 count];
        v43 = *(a1 + 56);
        v44 = [v48 count];
        *buf = 138413314;
        v63 = v40;
        v64 = 2112;
        v65 = v41;
        v66 = 2048;
        v67 = v42;
        v68 = 2048;
        v69 = v43;
        v70 = 2048;
        v71 = v44;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, Fetched work inference history stats for %lu places over %lu days, number of PlaceTypeInferences fetched, %lu", buf, 0x34u);
      }
    }

    (*(*(a1 + 40) + 16))();

    v5 = 0;
  }
}

@end