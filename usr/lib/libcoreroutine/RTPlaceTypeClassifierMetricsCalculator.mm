@interface RTPlaceTypeClassifierMetricsCalculator
+ (BOOL)inferredAddressComponent:(id)a3 consistentWithTrueComponent:(id)a4;
+ (id)allPlaceTypes;
+ (id)cacheMetricsKeyToString:(unint64_t)a3;
+ (id)collectPlaceVersionsFromInferredPlaces:(id)a3 contactsPlaces:(id)a4 rottedPlaces:(id)a5;
+ (id)keyForMetricType:(unint64_t)a3 placeType:(unint64_t)a4 source:(unint64_t)a5 metricKey:(unint64_t)a6;
+ (id)keyForMetricType:(unint64_t)a3 sourcePlaceType:(unint64_t)a4 source:(unint64_t)a5 referenceSourcePlaceType:(unint64_t)a6 referenceSource:(unint64_t)a7 metricKey:(unint64_t)a8;
+ (id)keyForSourceType:(unint64_t)a3 placeType:(unint64_t)a4;
+ (id)metricsKeyToString:(unint64_t)a3;
+ (id)metricsSourceToString:(unint64_t)a3;
+ (id)metricsTypeToString:(unint64_t)a3;
+ (id)newAlgorithmInstanceWithInference:(id)a3 distanceCalculator:(id)a4;
+ (id)normalize:(id)a3;
+ (unint64_t)addressComponentMatchesBetweenInferredAddress:(id)a3 trueAddress:(id)a4;
+ (void)submitMetricsForInferredPlaces:(id)a3 contactsPlaces:(id)a4 rottedPlaces:(id)a5 distanceCalculator:(id)a6 metricManager:(id)a7;
+ (void)updateAlgorithmInstance:(id)a3 byComparingInferredMapItem:(id)a4 withTruthfulMapItem:(id)a5 withDistanceCalculator:(id)a6;
- (RTPlaceTypeClassifierMetricsCalculator)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 learnedPlaceTypeInferenceStore:(id)a5 metricManager:(id)a6;
- (id)_computeCountOfLOIsForCacheMetricsFromLOIs:(id)a3;
- (id)_computeCountOfNonNillLearnedPlaceTypeInferences:(id)a3;
- (id)_computeCountOfTotalLearnedPlaceTypeInferences:(id)a3;
- (id)_computeCountOfUniqueLearnedPlaceTypeInferences:(id)a3;
- (id)_computeDurationOfGraphForCacheMetricsFromLOIs:(id)a3;
- (id)_computeFlipFlopCountLearnedPlaceTypeInferences:(id)a3;
- (id)_computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:(id)a3;
- (id)_computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:(id)a3;
- (id)_computeOverAllMetricsForCacheMetrics;
- (id)_filterLearnedPlaceTypeInferencesWithPlaceType:(unint64_t)a3 dateInterval:(id)a4 metricsSource:(unint64_t)a5 learnedPlaceTypeInferences:(id)a6;
- (id)_getLearnedLocationOfInterests;
- (id)_getLearnedPlaceTypeInferencesWithDateInterval:(id)a3;
- (id)_retrieveMetricsFromCacheStore;
- (id)computeDistanceMetricForSourcePlaces:(id)a3 referencePlaces:(id)a4 bins:(id)a5;
- (id)computeMetricsForSourcePlaceType:(unint64_t)a3 source:(unint64_t)a4 referenceSourcePlaceType:(unint64_t)a5 referenceSource:(unint64_t)a6 metricType:(unint64_t)a7 bins:(id)a8;
- (id)computeMetricsForWorkCandidates:(id)a3 sourceType:(unint64_t)a4 homeLOIs:(id)a5 workTruths:(id)a6 distanceBins:(id)a7 homeLOIMethodLabel:(id)a8;
- (id)filterLearnedPlacesOfType:(unint64_t)a3 places:(id)a4;
- (id)generateAllMultipleWorkMetrics;
- (id)retrieveComputedMetricsForSourcePlaceType:(unint64_t)a3 source:(unint64_t)a4;
- (id)retrieveMetrics;
- (void)_storeLearnedPlaceTypeInferencesToCacheStore;
- (void)ensureMetricsDataHasKeysForSource:(unint64_t)a3 placeType:(unint64_t)a4 metricKey:(unint64_t)a5;
- (void)fetchWorkInferenceStatsForLookbackDays:(int64_t)a3 handler:(id)a4;
- (void)onDailyMetricNotification:(id)a3;
- (void)resetStates;
- (void)setup;
- (void)storeMetricsData:(id)a3 source:(unint64_t)a4;
- (void)storeMetricsData:(id)a3 source:(unint64_t)a4 placeType:(unint64_t)a5;
- (void)storeMetricsData:(id)a3 source:(unint64_t)a4 placeType:(unint64_t)a5 metricKey:(unint64_t)a6;
- (void)submitMetrics;
@end

@implementation RTPlaceTypeClassifierMetricsCalculator

- (RTPlaceTypeClassifierMetricsCalculator)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 learnedPlaceTypeInferenceStore:(id)a5 metricManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
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

  if (!v12)
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

  if (!v13)
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

  if (!v14)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: metricManager";
      goto LABEL_16;
    }

LABEL_17:

    v22 = 0;
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = RTPlaceTypeClassifierMetricsCalculator;
  v16 = [(RTPlaceTypeClassifierMetricsCalculator *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_distanceCalculator, a3);
    objc_storeStrong(&v17->_learnedLocationStore, a4);
    objc_storeStrong(&v17->_learnedPlaceTypeInferenceStore, a5);
    objc_storeStrong(&v17->_metricManager, a6);
    v18 = objc_opt_new();
    metricsData = v17->_metricsData;
    v17->_metricsData = v18;

    v20 = objc_opt_new();
    learnedPlaceTypeInferences = v17->_learnedPlaceTypeInferences;
    v17->_learnedPlaceTypeInferences = v20;

    [(RTPlaceTypeClassifierMetricsCalculator *)v17 setup];
  }

  self = v17;
  v22 = self;
LABEL_18:

  return v22;
}

- (void)setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

+ (id)metricsSourceToString:(unint64_t)a3
{
  if (a3 - 1 > 0x13)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CB200[a3 - 1];
  }
}

+ (id)metricsKeyToString:(unint64_t)a3
{
  if (a3 - 1 > 0x20)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CB2A0[a3 - 1];
  }
}

+ (id)cacheMetricsKeyToString:(unint64_t)a3
{
  if (a3 > 0xB)
  {
    return @"NonNilCount";
  }

  else
  {
    return off_2788CB3A8[a3];
  }
}

- (void)resetStates
{
  v3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];

  if (v3)
  {
    v4 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    [v4 removeAllObjects];
  }

  v5 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];

  if (v5)
  {
    v6 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
    [v6 removeAllObjects];
  }

  [(RTPlaceTypeClassifierMetricsCalculator *)self setSessionId:0];
}

- (void)storeMetricsData:(id)a3 source:(unint64_t)a4 placeType:(unint64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType___block_invoke;
  v5[3] = &unk_2788CB100;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a5;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __76__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType___block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a3;
  [v4 storeMetricsData:v7 source:v5 placeType:v6 metricKey:{objc_msgSend(a2, "unsignedIntValue")}];
}

- (void)storeMetricsData:(id)a3 source:(unint64_t)a4
{
  v108 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [objc_opt_class() metricsSourceToString:a4];
      *buf = 138413058;
      v95 = v9;
      v96 = 2112;
      v97 = v10;
      v98 = 2112;
      v99 = v11;
      v100 = 2048;
      v101 = [v6 count];
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
        if ([v16 unsignedIntValue] == 1 || objc_msgSend(v16, "unsignedIntValue") == 2 || a4 == 2 && objc_msgSend(v16, "unsignedIntValue") == 3)
        {
          -[RTPlaceTypeClassifierMetricsCalculator ensureMetricsDataHasKeysForSource:placeType:metricKey:](self, "ensureMetricsDataHasKeysForSource:placeType:metricKey:", a4, [v16 unsignedIntValue], 1);
        }

        ++v15;
      }

      while (v13 != v15);
      v17 = [&unk_2845A0E48 countByEnumeratingWithState:&v90 objects:v107 count:16];
      v13 = v17;
    }

    while (v17);
  }

  v76 = a4;
  v77 = objc_opt_new();
  v75 = [MEMORY[0x277CBEAA8] date];
  v18 = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];

  if (!v18)
  {
    v19 = [MEMORY[0x277CCAD78] UUID];
    [(RTPlaceTypeClassifierMetricsCalculator *)self setSessionId:v19];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v6;
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
        v28 = [MEMORY[0x277CCAD78] UUID];
        v29 = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];
        v30 = [v24 identifier];
        v31 = -[RTLearnedPlaceTypeInference initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:](v27, "initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:", v28, v29, v30, [v24 type], v76, v75);

        if (v31)
        {
          v32 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
          [v32 addObject:v31];
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
  v33 = [objc_opt_class() placeTypesForCacheMetrics];
  v34 = [v33 countByEnumeratingWithState:&v82 objects:v105 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v82 + 1) + 8 * j);
        v39 = objc_autoreleasePoolPush();
        v40 = [v77 objectForKeyedSubscript:v38];

        if (!v40)
        {
          v41 = [RTLearnedPlaceTypeInference alloc];
          v42 = [MEMORY[0x277CCAD78] UUID];
          v43 = [(RTPlaceTypeClassifierMetricsCalculator *)self sessionId];
          v44 = -[RTLearnedPlaceTypeInference initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:](v41, "initWithIdentifier:sessionId:learnedPlaceIdentifier:placeType:metricSource:creationDate:", v42, v43, 0, [v38 unsignedIntValue], v76, v75);

          if (v44)
          {
            v45 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
            [v45 addObject:v44];
          }
        }

        objc_autoreleasePoolPop(v39);
      }

      v35 = [v33 countByEnumeratingWithState:&v82 objects:v105 count:16];
    }

    while (v35);
  }

  v46 = v76;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      v51 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
      v52 = [v51 count];
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

        v60 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
        v61 = [v60 objectForKeyedSubscript:v55];
        v62 = [v61 objectForKeyedSubscript:&unk_28459DE90];

        if (v62)
        {
          v63 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
          v64 = [v63 objectForKeyedSubscript:v55];
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

            v46 = v76;
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

- (void)storeMetricsData:(id)a3 source:(unint64_t)a4 placeType:(unint64_t)a5 metricKey:(unint64_t)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (a6 == 1)
  {
    [(RTPlaceTypeClassifierMetricsCalculator *)self storeMetricsData:v11 source:a4];
  }

  [(RTPlaceTypeClassifierMetricsCalculator *)self ensureMetricsDataHasKeysForSource:a4 placeType:a5 metricKey:a6];
  v12 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v13 = [objc_opt_class() keyForSourceType:a4 placeType:a5];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v14 setObject:v11 forKeyedSubscript:v15];

  v16 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__RTPlaceTypeClassifierMetricsCalculator_storeMetricsData_source_placeType_metricKey___block_invoke;
    v25[3] = &unk_2788CB128;
    v26 = v16;
    [v11 enumerateKeysAndObjectsUsingBlock:v25];
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v21 = [objc_opt_class() keyForSourceType:a4 placeType:a5];
    v22 = [objc_opt_class() metricsKeyToString:a6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *buf = 138413314;
    if (isKindOfClass)
    {
      v24 = v16;
    }

    else
    {
      v24 = v11;
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

- (void)ensureMetricsDataHasKeysForSource:(unint64_t)a3 placeType:(unint64_t)a4 metricKey:(unint64_t)a5
{
  v19 = [objc_opt_class() keyForSourceType:a3 placeType:a4];
  v7 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v8 = [v7 objectForKeyedSubscript:v19];

  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    [v10 setObject:v9 forKeyedSubscript:v19];
  }

  v11 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v12 = [v11 objectForKeyedSubscript:v19];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15 = objc_opt_new();
    v16 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
    v17 = [v16 objectForKeyedSubscript:v19];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v17 setObject:v15 forKeyedSubscript:v18];
  }
}

- (void)onDailyMetricNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v7 & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = [v5 name];
      *buf = 138412802;
      v23 = v19;
      v24 = 2080;
      v25 = "[RTPlaceTypeClassifierMetricsCalculator onDailyMetricNotification:]";
      v26 = 1024;
      LODWORD(v27) = 563;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  v9 = [v5 name];
  v10 = [v9 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(RTPlaceTypeClassifierMetricsCalculator *)self _retrieveMetricsFromCacheStore];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = [v12 count];
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
    [v12 enumerateObjectsUsingBlock:v21];

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [v5 name];
      *buf = 138412290;
      v23 = v20;
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
  v3 = [(RTPlaceTypeClassifierMetricsCalculator *)self retrieveMetrics];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v4 initWithCString:RTAnalyticsEventPlaceTypeClassification encoding:1];
  log_analytics_submission(v5, v3);
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

              v19 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
              v20 = [v19 objectForKeyedSubscript:v11];
              [v20 objectForKeyedSubscript:v12];
              v21 = self;
              v23 = v22 = v12;

              if (v23)
              {
                v24 = [v39 objectForKeyedSubscript:v14];
                v25 = [(RTPlaceTypeClassifierMetricsCalculator *)v21 metricsData];
                v26 = [v25 objectForKeyedSubscript:v11];
                v27 = [v26 objectForKeyedSubscript:v22];
                [v24 addObjectsFromArray:v27];
              }

              objc_autoreleasePoolPop(v18);
              ++v15;
              v16 = v11;
              v12 = v22;
              self = v21;
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

  v28 = [(RTPlaceTypeClassifierMetricsCalculator *)self distanceCalculator];
  v29 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricManager];
  v30 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricManager];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __55__RTPlaceTypeClassifierMetricsCalculator_submitMetrics__block_invoke;
  v42[3] = &unk_2788CAEB0;
  v43 = v39;
  v44 = v28;
  v45 = v29;
  v31 = v29;
  v32 = v28;
  [v30 fetchDiagnosticsEnabled:v42];

  v33 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  [v33 removeAllObjects];

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
  v5 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  v6 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __86__RTPlaceTypeClassifierMetricsCalculator__storeLearnedPlaceTypeInferencesToCacheStore__block_invoke;
  v32[3] = &unk_2788C4618;
  v34 = &v35;
  v7 = v4;
  v33 = v7;
  [v5 storeLearnedPlaceTypeInferences:v6 handler:v32];

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
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
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

  v30 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferences];
  [v30 removeAllObjects];

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
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [v3 dateByAddingTimeInterval:-2419200.0];
  v59 = v3;
  v6 = [v4 initWithStartDate:v5 endDate:v3];
  v58 = [(RTPlaceTypeClassifierMetricsCalculator *)self _getLearnedPlaceTypeInferencesWithDateInterval:v6];

  v57 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [objc_opt_class() modelSources];
  [v7 addObjectsFromArray:v8];

  v9 = [objc_opt_class() nonModelSources];
  [v7 addObjectsFromArray:v9];

  v63 = self;
  v56 = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeOverAllMetricsForCacheMetrics];
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
          v50 = [objc_opt_class() placeTypesForCacheMetrics];
          v52 = [v50 countByEnumeratingWithState:&v72 objects:v93 count:16];
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
                  objc_enumerationMutation(v50);
                }

                v54 = v13;
                v62 = *(*(&v72 + 1) + 8 * v13);
                v53 = objc_autoreleasePoolPush();
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v71 = 0u;
                v55 = [objc_opt_class() durationsForCacheMetrics];
                v64 = [v55 countByEnumeratingWithState:&v68 objects:v92 count:16];
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
                        objc_enumerationMutation(v55);
                      }

                      v15 = *(*(&v68 + 1) + 8 * v14);
                      context = objc_autoreleasePoolPush();
                      v16 = objc_alloc(MEMORY[0x277CCA970]);
                      [v15 doubleValue];
                      v67 = v14;
                      v18 = [v59 dateByAddingTimeInterval:-v17];
                      v65 = [v16 initWithStartDate:v18 endDate:v59];

                      v19 = -[RTPlaceTypeClassifierMetricsCalculator _filterLearnedPlaceTypeInferencesWithPlaceType:dateInterval:metricsSource:learnedPlaceTypeInferences:](v63, "_filterLearnedPlaceTypeInferencesWithPlaceType:dateInterval:metricsSource:learnedPlaceTypeInferences:", [v62 unsignedIntValue], v65, objc_msgSend(v60, "unsignedIntValue"), v58);
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

                      v32 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeCountOfNonNillLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v32];

                      v33 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeCountOfUniqueLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v33];

                      v34 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeCountOfTotalLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v34];

                      v35 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeFlipFlopCountLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v35];

                      v36 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v36];

                      v37 = [(RTPlaceTypeClassifierMetricsCalculator *)v63 _computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:v19];
                      [v20 addEntriesFromDictionary:v37];

                      [v20 addEntriesFromDictionary:v56];
                      [v57 addObject:v20];

                      objc_autoreleasePoolPop(context);
                      v14 = v67 + 1;
                    }

                    while (v64 != v67 + 1);
                    v64 = [v55 countByEnumeratingWithState:&v68 objects:v92 count:16];
                  }

                  while (v64);
                }

                objc_autoreleasePoolPop(v53);
                v13 = v54 + 1;
              }

              while (v54 + 1 != v52);
              v52 = [v50 countByEnumeratingWithState:&v72 objects:v93 count:16];
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
  v3 = [(RTPlaceTypeClassifierMetricsCalculator *)self _getLearnedLocationOfInterests];
  v4 = objc_opt_new();
  v5 = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeCountOfLOIsForCacheMetricsFromLOIs:v3];
  [v4 addEntriesFromDictionary:v5];

  v6 = [(RTPlaceTypeClassifierMetricsCalculator *)self _computeDurationOfGraphForCacheMetricsFromLOIs:v3];
  [v4 addEntriesFromDictionary:v6];

  return v4;
}

- (id)_computeCountOfLOIsForCacheMetricsFromLOIs:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() cacheMetricsKeyToString:7];
  v10 = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)_computeDurationOfGraphForCacheMetricsFromLOIs:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    v26 = &unk_28459DF08;
    goto LABEL_21;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
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
      if (v6)
      {
        if (v5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = [*(*(&v37 + 1) + 8 * v7) visits];
        v6 = [v23 firstObject];

        if (v5)
        {
          goto LABEL_8;
        }
      }

      v24 = [v8 visits];
      v5 = [v24 lastObject];

LABEL_8:
      v9 = [v6 entryDate];
      v10 = [v8 visits];
      v11 = [v10 firstObject];
      v12 = [v11 entryDate];
      v13 = [v9 compare:v12];

      if (v13 == 1)
      {
        v14 = [v8 visits];
        v15 = [v14 firstObject];

        v6 = v15;
      }

      v16 = [v5 entryDate];
      v17 = [v8 visits];
      v18 = [v17 lastObject];
      v19 = [v18 entryDate];
      v20 = [v16 compare:v19];

      if (v20 == -1)
      {
        v21 = [v8 visits];
        v22 = [v21 lastObject];

        v5 = v22;
      }

      ++v7;
    }

    while (v4 != v7);
    v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    v4 = v25;
  }

  while (v25);
  v26 = &unk_28459DF08;
  if (v6 && v5)
  {
    v27 = MEMORY[0x277CCABB0];
    v28 = [v5 entryDate];
    v29 = [v6 entryDate];
    [v28 timeIntervalSinceDate:v29];
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
  v5 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedLocationStore];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__RTPlaceTypeClassifierMetricsCalculator__getLearnedLocationOfInterests__block_invoke;
  v32[3] = &unk_2788C4490;
  v34 = &v36;
  v35 = &v42;
  v6 = v4;
  v33 = v6;
  [v5 fetchRecentLocationsOfInterestWithHandler:v32];

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
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
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

- (id)_getLearnedPlaceTypeInferencesWithDateInterval:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  v34 = a3;
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
  v5 = [[RTLearnedPlaceTypeInferenceEnumerationOptions alloc] initWithDateInterval:v34 sortByCreationDate:1 ascending:1 filteredToPlaceTypes:0 filteredToIdentifiers:0 filteredToSessionIds:0 filteredToLearnedPlaceIdentifiers:0];
  v6 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __89__RTPlaceTypeClassifierMetricsCalculator__getLearnedPlaceTypeInferencesWithDateInterval___block_invoke;
  v35[3] = &unk_2788C4490;
  v37 = &v39;
  v38 = &v45;
  v7 = v4;
  v36 = v7;
  [v6 fetchLearnedPlaceTypeInferencesWithOptions:v5 handler:v35];

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
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
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

- (id)_filterLearnedPlaceTypeInferencesWithPlaceType:(unint64_t)a3 dateInterval:(id)a4 metricsSource:(unint64_t)a5 learnedPlaceTypeInferences:(id)a6
{
  v9 = a4;
  v10 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __143__RTPlaceTypeClassifierMetricsCalculator__filterLearnedPlaceTypeInferencesWithPlaceType_dateInterval_metricsSource_learnedPlaceTypeInferences___block_invoke;
  v17[3] = &unk_2788CB178;
  v18 = v9;
  v19 = a3;
  v20 = a5;
  v11 = v9;
  v12 = a6;
  v13 = [v10 predicateWithBlock:v17];
  v14 = [v12 filteredArrayUsingPredicate:v13];

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

- (id)_computeFlipFlopCountLearnedPlaceTypeInferences:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() cacheMetricsKeyToString:4];
  if (![v4 count])
  {
    v27 = v5;
    v28[0] = &unk_28459DF08;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    goto LABEL_25;
  }

  v20 = v5;
  if ([v4 count] != 1)
  {
    v8 = 0;
    v6 = 0;
    while (1)
    {
      v9 = [v4 objectAtIndexedSubscript:v8];
      if (v9)
      {
        v5 = [v4 objectAtIndexedSubscript:v8 + 1];
        if (!v5)
        {
          v17 = 1;
          goto LABEL_22;
        }
      }

      v10 = [v4 objectAtIndexedSubscript:v8];
      if (!v10)
      {
        v3 = [v4 objectAtIndexedSubscript:v8 + 1];
        if (v3)
        {
          v17 = 1;
          goto LABEL_21;
        }
      }

      v11 = [v4 objectAtIndexedSubscript:v8];
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = v11;
      v13 = [v4 objectAtIndexedSubscript:v8 + 1];
      if (!v13)
      {
        break;
      }

      v23 = v3;
      v24 = v5;
      v22 = v13;
      v21 = [v4 objectAtIndexedSubscript:v8];
      v14 = [v21 learnedPlaceIdentifier];
      v15 = [v4 objectAtIndexedSubscript:v8 + 1];
      v16 = [v15 learnedPlaceIdentifier];
      v17 = [v14 isEqual:v16] ^ 1;

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
      if ([v4 count] - 1 <= ++v8)
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

- (id)_computeCountOfNonNillLearnedPlaceTypeInferences:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"%K != nil", @"learnedPlaceIdentifier"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [objc_opt_class() cacheMetricsKeyToString:1];
  v11 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v9;
}

- (id)_computeCountOfUniqueLearnedPlaceTypeInferences:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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
        v12 = [v10 learnedPlaceIdentifier];

        if (v12)
        {
          v13 = [v10 learnedPlaceIdentifier];
          [v4 addObject:v13];
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

- (id)_computeCountOfTotalLearnedPlaceTypeInferences:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() cacheMetricsKeyToString:3];
  v10 = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 count];

  v7 = [v5 numberWithUnsignedInteger:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)_computeLengthOfLatestClassificationForLearnedPlaceTypeInferences:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastObject];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v3 lastObject];
    v8 = [v7 creationDate];
    [v6 timeIntervalSinceDate:v8];
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

- (id)_computeLengthOfLatestClassificationSinceChangedForLearnedPlaceTypeInferences:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 lastObject];

  if (!v4)
  {
    v22 = &unk_28459DF08;
    goto LABEL_17;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v3 reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v6)
  {
    v4 = 0;
    v22 = &unk_28459DF08;
    goto LABEL_15;
  }

  v7 = v6;
  obj = v5;
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
      v12 = [v10 learnedPlaceIdentifier];
      v13 = v3;
      v14 = [v3 lastObject];
      v15 = [v14 learnedPlaceIdentifier];
      v16 = [v12 isEqual:v15];

      if (v16)
      {
        v17 = v10;

        v27 = v17;
      }

      objc_autoreleasePoolPop(v11);
      v3 = v13;
    }

    v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v7);

  v4 = v27;
  if (v27)
  {
    v18 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v19 = [v27 creationDate];
    [v5 timeIntervalSinceDate:v19];
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

+ (void)submitMetricsForInferredPlaces:(id)a3 contactsPlaces:(id)a4 rottedPlaces:(id)a5 distanceCalculator:(id)a6 metricManager:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = [a1 collectPlaceVersionsFromInferredPlaces:a3 contactsPlaces:a4 rottedPlaces:a5];
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

        v21 = [a1 newAlgorithmInstanceWithInference:*(*(&v23 + 1) + 8 * v20) distanceCalculator:{v12, v23}];
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

  [v13 submitMetric:v15 withHandler:{&__block_literal_global_326, v23}];
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

+ (id)newAlgorithmInstanceWithInference:(id)a3 distanceCalculator:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [RTMetricManager metricForType:17];
  v9 = [v6 inferredVersion];
  v10 = [v9 type];
  v11 = v10 - 1;
  if ((v10 - 1) >= 3)
  {
  }

  else
  {

    [v8 setType:(v11 + 1)];
  }

  v12 = [v6 inferredVersion];
  v13 = [v12 typeSource];
  v14 = ((v13 & 6) != 0) | (2 * (v13 & 1u));

  if (v14)
  {
    [v8 setSource:v14];
  }

  v15 = [v6 existingVersion];
  v16 = [v15 type];
  v17 = v16 - 1;
  if ((v16 - 1) >= 3)
  {
  }

  else
  {

    [v8 setPreviousType:(v17 + 1)];
  }

  v18 = [v6 trueVersion];
  v19 = [v18 type];
  if ((v19 - 1) <= 2)
  {
    [v8 setTruthType:v19];
  }

  v20 = [v18 typeSource];
  if (((v20 & 6) != 0) | (2 * (v20 & 1)))
  {
    [v8 setTruthSource:?];
  }

  v21 = [v6 inferredVersion];

  if (v21)
  {
    v22 = [v6 truthfulCounterpart];

    if (v22)
    {
      v23 = [v6 inferredVersion];
      v24 = [v23 mapItem];
      v25 = [v6 truthfulCounterpart];
      v26 = [v25 mapItem];
      [a1 updateAlgorithmInstance:v8 byComparingInferredMapItem:v24 withTruthfulMapItem:v26 withDistanceCalculator:v7];
    }
  }

  [v8 setIsRotted:{objc_msgSend(v6, "isRotted")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v8 type];
      v30 = [v8 source];
      v31 = [v8 previousType];
      v32 = [v8 truthType];
      v33 = [v8 truthSource];
      [v8 distanceFromTruth];
      v35 = v34;
      v36 = [v8 isRotted];
      v38 = 134219522;
      v37 = "false";
      v39 = v29;
      v40 = 2048;
      if (v36)
      {
        v37 = "true";
      }

      v41 = v30;
      v42 = 2048;
      v43 = v31;
      v44 = 2048;
      v45 = v32;
      v46 = 2048;
      v47 = v33;
      v48 = 2048;
      v49 = v35;
      v50 = 2080;
      v51 = v37;
      _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "AWDCoreRoutineModelAlgorithmInstance, type, %lu, source, %lu, previousType, %lu, truthSource, %lu, truthType, %lu, distanceFromTruth, %g, isRotted, %s", &v38, 0x48u);
    }
  }

  return v8;
}

+ (void)updateAlgorithmInstance:(id)a3 byComparingInferredMapItem:(id)a4 withTruthfulMapItem:(id)a5 withDistanceCalculator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 location];
  v15 = [v12 location];
  v25 = 0;
  [v13 distanceFromLocation:v14 toLocation:v15 error:&v25];
  v17 = v16;

  v18 = v25;
  if (!v18)
  {
    [v10 setDistanceFromTruth:(10 * llround(v17 / 10.0))];
  }

  v19 = [v11 address];
  v20 = [v12 address];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    [v10 setAddressComponentMatches:-1];
  }

  else
  {
    v22 = [v11 address];
    v23 = [v12 address];
    v24 = [a1 addressComponentMatchesBetweenInferredAddress:v22 trueAddress:v23];
    if (v24)
    {
      [v10 setAddressComponentMatches:v24];
    }
  }
}

+ (unint64_t)addressComponentMatchesBetweenInferredAddress:(id)a3 trueAddress:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 subThoroughfare];
  v9 = [v7 subThoroughfare];
  v10 = [a1 inferredAddressComponent:v8 consistentWithTrueComponent:v9];

  v11 = v10;
  v12 = [v6 thoroughfare];
  v13 = [v7 thoroughfare];
  v14 = [a1 inferredAddressComponent:v12 consistentWithTrueComponent:v13];

  if (v14)
  {
    v11 |= 2uLL;
  }

  v15 = [v6 subLocality];
  v16 = [v7 subLocality];
  v17 = [a1 inferredAddressComponent:v15 consistentWithTrueComponent:v16];

  if (v17)
  {
    v11 |= 4uLL;
  }

  v18 = [v6 locality];
  v19 = [v7 locality];
  v20 = [a1 inferredAddressComponent:v18 consistentWithTrueComponent:v19];

  if (v20)
  {
    v11 |= 8uLL;
  }

  v21 = [v6 subAdministrativeArea];
  v22 = [v7 subAdministrativeArea];
  v23 = [a1 inferredAddressComponent:v21 consistentWithTrueComponent:v22];

  if (v23)
  {
    v11 |= 0x10uLL;
  }

  v24 = [v6 administrativeArea];
  v25 = [v7 administrativeArea];
  v26 = [a1 inferredAddressComponent:v24 consistentWithTrueComponent:v25];

  if (v26)
  {
    v11 |= 0x20uLL;
  }

  v27 = [v6 administrativeAreaCode];
  v28 = [v7 administrativeAreaCode];
  v29 = [a1 inferredAddressComponent:v27 consistentWithTrueComponent:v28];

  if (v29)
  {
    v11 |= 0x40uLL;
  }

  v30 = [v6 postalCode];
  v31 = [v7 postalCode];
  v32 = [a1 inferredAddressComponent:v30 consistentWithTrueComponent:v31];

  if (v32)
  {
    v11 |= 0x80uLL;
  }

  v33 = [v6 country];
  v34 = [v7 country];
  v35 = [a1 inferredAddressComponent:v33 consistentWithTrueComponent:v34];

  if (v35)
  {
    v11 |= 0x100uLL;
  }

  v36 = [v6 countryCode];
  v37 = [v7 countryCode];
  v38 = [a1 inferredAddressComponent:v36 consistentWithTrueComponent:v37];

  if (v38)
  {
    v11 |= 0x200uLL;
  }

  v39 = [v6 inlandWater];
  v40 = [v7 inlandWater];
  v41 = [a1 inferredAddressComponent:v39 consistentWithTrueComponent:v40];

  if (v41)
  {
    v42 = v11 | 0x400;
  }

  else
  {
    v42 = v11;
  }

  v43 = [v6 ocean];
  v44 = [v7 ocean];
  v45 = [a1 inferredAddressComponent:v43 consistentWithTrueComponent:v44];

  if (v45)
  {
    v46 = v42 | 0x800;
  }

  else
  {
    v46 = v42;
  }

  v47 = [v6 isIsland];
  v58 = 0u;
  v59 = 0u;
  if (v47 != [v7 isIsland])
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
  v50 = [v6 areasOfInterest];
  v51 = [v50 countByEnumeratingWithState:&v58 objects:v62 count:16];
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
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v58 + 1) + 8 * i);
        v56 = [v7 areasOfInterest];
        LOBYTE(v55) = [v56 containsObject:v55];

        if ((v55 & 1) == 0)
        {
          v49 = v48 & 0xFFFFFFFFFFFFEFFFLL;
          goto LABEL_38;
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v58 objects:v62 count:16];
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

+ (BOOL)inferredAddressComponent:(id)a3 consistentWithTrueComponent:(id)a4
{
  v6 = a4;
  v7 = [a1 normalize:a3];
  if (v7)
  {
    v8 = [a1 normalize:v6];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)normalize:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

+ (id)collectPlaceVersionsFromInferredPlaces:(id)a3 contactsPlaces:(id)a4 rottedPlaces:(id)a5
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
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
        v17 = [v15 identifier];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v12 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
    }

    while (v12);
  }

  v70 = [MEMORY[0x277CBEB18] array];
  v69 = [MEMORY[0x277CBEB18] array];
  v62 = [MEMORY[0x277CBEB18] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v67 = v8;
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
        v23 = [v22 identifier];
        v24 = [v10 objectForKeyedSubscript:v23];

        if (!v24)
        {
          v24 = objc_opt_new();
          v25 = [v22 identifier];
          [v10 setObject:v24 forKeyedSubscript:v25];
        }

        [v24 setExistingVersion:v22];
        if (([v22 typeSource] & 6) != 0)
        {
          v26 = [v22 type];
          v27 = v70;
          if (v26 == 1 || (v28 = [v22 type], v27 = v69, v28 == 2) || (v29 = objc_msgSend(v22, "type"), v27 = v62, v29 == 3))
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
  v30 = v9;
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

        v35 = [*(*(&v79 + 1) + 8 * k) identifier];
        v36 = [v10 objectForKeyedSubscript:v35];

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

  v37 = [MEMORY[0x277CBEB18] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v66 = [v10 allValues];
  v38 = [v66 countByEnumeratingWithState:&v75 objects:v92 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    v63 = *v76;
    v64 = v10;
    do
    {
      v41 = 0;
      v65 = v39;
      do
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v66);
        }

        v42 = *(*(&v75 + 1) + 8 * v41);
        v43 = [v42 inferredVersion];
        v44 = [v43 type];

        v45 = v70;
        if (v44 == 1 || ([v42 inferredVersion], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "type"), v46, v45 = v69, v47 == 2) || (objc_msgSend(v42, "inferredVersion"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "type"), v48, v45 = v62, v49 == 3))
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
                [v37 addObject:v58];
              }

              v54 = [v52 countByEnumeratingWithState:&v71 objects:v91 count:16];
            }

            while (v54);
          }

          v40 = v63;
          v10 = v64;
          v39 = v65;
        }

        else
        {
          v51 = [v50 firstObject];
          [v42 setTruthfulCounterpart:v51];

          [v37 addObject:v42];
        }

        ++v41;
      }

      while (v41 != v39);
      v59 = [v66 countByEnumeratingWithState:&v75 objects:v92 count:16];
      v39 = v59;
    }

    while (v59);
  }

  return v37;
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
  v178 = [objc_opt_class() nonInferredPlaceTypes];
  v186 = [v178 countByEnumeratingWithState:&v288 objects:v317 count:16];
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
          objc_enumerationMutation(v178);
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
      v186 = [v178 countByEnumeratingWithState:&v288 objects:v317 count:16];
    }

    while (v186);
  }

  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  v30 = [objc_opt_class() inferredPlaceTypes];
  v31 = [v30 countByEnumeratingWithState:&v280 objects:v315 count:16];
  if (v31)
  {
    v32 = *v281;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v281 != v32)
        {
          objc_enumerationMutation(v30);
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

      v31 = [v30 countByEnumeratingWithState:&v280 objects:v315 count:16];
    }

    while (v31);
  }

  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v183 = [objc_opt_class() inferredPlaceTypes];
  v193 = [v183 countByEnumeratingWithState:&v276 objects:v314 count:16];
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
          objc_enumerationMutation(v183);
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
      v193 = [v183 countByEnumeratingWithState:&v276 objects:v314 count:16];
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
        v161 = [objc_opt_class() allPlaceTypes];
        v164 = [v161 countByEnumeratingWithState:&v252 objects:v308 count:16];
        if (v164)
        {
          v162 = *v253;
          do
          {
            for (mm = 0; mm != v164; ++mm)
            {
              if (*v253 != v162)
              {
                objc_enumerationMutation(v161);
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
                  v88 = [v2 metricsData];
                  v89 = [objc_opt_class() keyForSourceType:objc_msgSend(v166 placeType:{"unsignedIntValue"), objc_msgSend(v172, "unsignedIntValue")}];
                  v90 = [v88 objectForKeyedSubscript:v89];
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
                        v95 = [v2 learnedLocationStore];
                        v96 = [v93 identifier];
                        v241[0] = MEMORY[0x277D85DD0];
                        v241[1] = 3221225472;
                        v241[2] = __57__RTPlaceTypeClassifierMetricsCalculator_retrieveMetrics__block_invoke;
                        v241[3] = &unk_2788CB1C0;
                        v243 = &v248;
                        v97 = v94;
                        v242 = v97;
                        [v95 fetchLastVisitToPlaceWithIdentifier:v96 handler:v241];

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
                          v105 = [MEMORY[0x277CCACC8] callStackSymbols];
                          v106 = [v105 filteredArrayUsingPredicate:v104];
                          v107 = [v106 firstObject];

                          [v103 submitToCoreAnalytics:v107 type:1 duration:v102];
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

            v164 = [v161 countByEnumeratingWithState:&v252 objects:v308 count:16];
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
  v163 = [objc_opt_class() allPlaceTypes];
  v167 = [v163 countByEnumeratingWithState:&v237 objects:v306 count:16];
  if (v167)
  {
    v165 = *v238;
    do
    {
      for (nn = 0; nn != v167; ++nn)
      {
        if (*v238 != v165)
        {
          objc_enumerationMutation(v163);
        }

        v189 = *(*(&v237 + 1) + 8 * nn);
        v169 = objc_autoreleasePoolPush();
        v115 = [v2 metricsData];
        v116 = [objc_opt_class() keyForSourceType:14 placeType:{objc_msgSend(v189, "unsignedIntValue")}];
        v117 = [v115 objectForKeyedSubscript:v116];
        v175 = [v117 objectForKeyedSubscript:&unk_28459DE90];

        v118 = [v2 metricsData];
        v119 = [objc_opt_class() keyForSourceType:3 placeType:{objc_msgSend(v189, "unsignedIntValue")}];
        v120 = [v118 objectForKeyedSubscript:v119];
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
                    v130 = [v129 type];
                    if (v130 == [v124 type])
                    {
                      v131 = [v129 mapItem];
                      v132 = [v124 mapItem];
                      v133 = [v131 isEqualToMapItem:v132];

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

      v167 = [v163 countByEnumeratingWithState:&v237 objects:v306 count:16];
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
        v136 = [objc_opt_class() inferredPlaceTypes];
        v137 = [v136 countByEnumeratingWithState:&v221 objects:v302 count:16];
        if (v137)
        {
          v138 = *v222;
          do
          {
            for (i3 = 0; i3 != v137; ++i3)
            {
              if (*v222 != v138)
              {
                objc_enumerationMutation(v136);
              }

              v140 = *(*(&v221 + 1) + 8 * i3);
              v141 = objc_autoreleasePoolPush();
              v142 = [v2 retrieveComputedMetricsForSourcePlaceType:objc_msgSend(v140 source:{"unsignedIntValue"), objc_msgSend(v135, "unsignedIntValue")}];
              [v3 addEntriesFromDictionary:v142];

              objc_autoreleasePoolPop(v141);
            }

            v137 = [v136 countByEnumeratingWithState:&v221 objects:v302 count:16];
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
  v190 = [objc_opt_class() schoolGymEligibleSources];
  contextf = [v190 countByEnumeratingWithState:&v217 objects:v301 count:16];
  if (contextf)
  {
    v197 = *v218;
    do
    {
      for (i4 = 0; i4 != contextf; i4 = i4 + 1)
      {
        if (*v218 != v197)
        {
          objc_enumerationMutation(v190);
        }

        v144 = *(*(&v217 + 1) + 8 * i4);
        objf = objc_autoreleasePoolPush();
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v145 = [objc_opt_class() nonInferredPlaceTypes];
        v146 = [v145 countByEnumeratingWithState:&v213 objects:v300 count:16];
        if (v146)
        {
          v147 = *v214;
          do
          {
            for (i5 = 0; i5 != v146; ++i5)
            {
              if (*v214 != v147)
              {
                objc_enumerationMutation(v145);
              }

              v149 = *(*(&v213 + 1) + 8 * i5);
              v150 = objc_autoreleasePoolPush();
              v151 = [v2 retrieveComputedMetricsForSourcePlaceType:objc_msgSend(v149 source:{"unsignedIntValue"), objc_msgSend(v144, "unsignedIntValue")}];
              [v3 addEntriesFromDictionary:v151];

              objc_autoreleasePoolPop(v150);
            }

            v146 = [v145 countByEnumeratingWithState:&v213 objects:v300 count:16];
          }

          while (v146);
        }

        objc_autoreleasePoolPop(objf);
      }

      contextf = [v190 countByEnumeratingWithState:&v217 objects:v301 count:16];
    }

    while (contextf);
  }

  v152 = [v2 retrieveComputedMetricsForSourcePlaceType:0 source:0];
  [v3 addEntriesFromDictionary:v152];

  v153 = [v2 computeMetricsForSourcePlaceType:1 source:18 referenceSourcePlaceType:0 referenceSource:0 metricType:1 bins:0];
  [v3 addEntriesFromDictionary:v153];

  v154 = [v2 generateAllMultipleWorkMetrics];
  [v3 addEntriesFromDictionary:v154];
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
  v2 = [objc_opt_class() inferredPlaceTypes];
  v3 = [objc_opt_class() nonInferredPlaceTypes];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (id)computeMetricsForSourcePlaceType:(unint64_t)a3 source:(unint64_t)a4 referenceSourcePlaceType:(unint64_t)a5 referenceSource:(unint64_t)a6 metricType:(unint64_t)a7 bins:(id)a8
{
  v13 = a8;
  v14 = objc_opt_new();
  v15 = objc_autoreleasePoolPush();
  if (a3 == a5 && a4 == a6)
  {
    goto LABEL_21;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  v17 = [&unk_2845A1040 containsObject:v16];

  if (!v17)
  {
    goto LABEL_21;
  }

  if (a3 == 1)
  {
    v17 = [objc_opt_class() notHomeEligibleSources];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    if (([v17 containsObject:v16] & 1) == 0)
    {
      v18 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v17 = [objc_opt_class() notWorkEligibleSources];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    if ([v17 containsObject:v16])
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
  if (a5 == 2)
  {
    v37 = v18;
    v19 = [objc_opt_class() notWorkEligibleSources];
LABEL_16:
    v20 = v19;
    v36 = v19;
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v21 = v39 = v17;
    v22 = [v20 containsObject:v21];

    v17 = v39;
    if ((v37 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a5 == 1)
  {
    v37 = v18;
    v19 = [objc_opt_class() notHomeEligibleSources];
    goto LABEL_16;
  }

  v22 = 0;
  if (v18)
  {
LABEL_17:
  }

LABEL_18:
  if (a3 == 1)
  {
  }

  if (v22)
  {
    goto LABEL_21;
  }

  v42 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v25 = [objc_opt_class() keyForSourceType:a4 placeType:a3];
  v26 = [v42 objectForKeyedSubscript:v25];
  v40 = [v26 objectForKeyedSubscript:&unk_28459DE90];

  v38 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v27 = [objc_opt_class() keyForSourceType:a6 placeType:a5];
  v28 = [v38 objectForKeyedSubscript:v27];
  v43 = [v28 objectForKeyedSubscript:&unk_28459DE90];

  v29 = [objc_opt_class() keyForMetricType:a7 sourcePlaceType:a3 source:a4 referenceSourcePlaceType:a5 referenceSource:a6 metricKey:0];
  [v14 setObject:&unk_28459DF08 forKeyedSubscript:v29];
  if (v40)
  {
    if (a7 == 2)
    {
      v33 = self;
      v30 = v43;
      v31 = [(RTPlaceTypeClassifierMetricsCalculator *)v33 computeDistanceMetricForSourcePlaces:v40 referencePlaces:v43 bins:v13];
    }

    else
    {
      v30 = v43;
      if (a7 != 1)
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

- (id)computeMetricsForWorkCandidates:(id)a3 sourceType:(unint64_t)a4 homeLOIs:(id)a5 workTruths:(id)a6 distanceBins:(id)a7 homeLOIMethodLabel:(id)a8
{
  v119 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v87 = a7;
  v17 = a8;
  v18 = objc_opt_new();
  v88 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459DF50 gap:&unk_2845A1BE8];
  v84 = [objc_opt_class() keyForMetricType:1 placeType:2 source:a4 metricKey:14];
  v85 = v17;
  [v18 setObject:v17 forKeyedSubscript:?];
  v104 = self;
  v93 = a4;
  v19 = [objc_opt_class() keyForMetricType:1 placeType:2 source:a4 metricKey:13];
  v86 = v16;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  v91 = v18;
  v83 = v19;
  [v18 setObject:v20 forKeyedSubscript:v19];

  v103 = v14;
  v90 = v15;
  if ([v14 count] && objc_msgSend(v15, "count"))
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v15;
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
          v26 = [(RTPlaceTypeClassifierMetricsCalculator *)v104 distanceCalculator];
          v27 = [v25 mapItem];
          v28 = [v27 location];
          v29 = [v103 objectAtIndexedSubscript:0];
          v30 = [v29 secondObject];
          v31 = [v30 mapItem];
          v32 = [v31 location];
          [v26 distanceFromLocation:v28 toLocation:v32 error:0];
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

    v14 = v103;
  }

  else
  {
    v102 = 0;
  }

  for (j = 0; j != 5; ++j)
  {
    if (j < [v14 count] && (objc_msgSend(v14, "objectAtIndexedSubscript:", j), (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = v37;
      v89 = [v37 firstObject];
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
              v41 = [v40 mapItem];
              v42 = [v38 secondObject];
              v43 = [v42 mapItem];
              if ([v41 isEqualToMapItem:v43])
              {

                v52 = 1;
                goto LABEL_35;
              }

              v44 = [(RTPlaceTypeClassifierMetricsCalculator *)v104 distanceCalculator];
              v45 = [v38 secondObject];
              v46 = [v45 mapItem];
              v47 = [v46 location];
              v48 = [v40 mapItem];
              v49 = [v48 location];
              [v44 distanceFromLocation:v47 toLocation:v49 error:0];
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
        v57 = [v38 secondObject];
        v116 = v57;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
        v115 = v102;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
        objb = [(RTPlaceTypeClassifierMetricsCalculator *)v104 computeDistanceMetricForSourcePlaces:v58 referencePlaces:v59 bins:v87];
      }

      else
      {
        objb = &unk_28459E1C0;
      }

      v55 = v56;
      if (j)
      {
        v60 = [v38 secondObject];
        v114 = v60;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
        v62 = [v103 objectAtIndexedSubscript:0];
        v63 = [v62 secondObject];
        v113 = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
        v53 = [(RTPlaceTypeClassifierMetricsCalculator *)v104 computeDistanceMetricForSourcePlaces:v61 referencePlaces:v64 bins:v87];
      }

      else
      {
        v53 = &unk_28459E1C0;
      }

      v54 = v89;
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
    v67 = [v65 keyForMetricType:3 placeType:2 source:v93 metricKey:{objc_msgSend(v66, "unsignedIntegerValue")}];

    v68 = objc_opt_class();
    v69 = [&unk_2845A1070 objectAtIndexedSubscript:j];
    v70 = [v68 keyForMetricType:3 placeType:2 source:v93 metricKey:{objc_msgSend(v69, "unsignedIntegerValue")}];

    v71 = objc_opt_class();
    v72 = [&unk_2845A1088 objectAtIndexedSubscript:j];
    v73 = [v71 keyForMetricType:3 placeType:2 source:v93 metricKey:{objc_msgSend(v72, "unsignedIntegerValue")}];

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
      v81 = [v79 keyForMetricType:3 placeType:2 source:v93 metricKey:{objc_msgSend(v80, "unsignedIntegerValue")}];

      [v91 setObject:v53 forKeyedSubscript:v81];
      v74 = v78;
      v55 = v96;
    }

    v14 = v103;
  }

  return v91;
}

- (id)generateAllMultipleWorkMetrics
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v4 = [objc_opt_class() keyForSourceType:14 placeType:1];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:&unk_28459DE90];

  v7 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v8 = [objc_opt_class() keyForSourceType:19 placeType:2];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:&unk_28459DE90];

  v11 = [RTMetric exponentialBinsFromStart:20 toEnd:1.0 binCount:200000.0];
  v12 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v13 = [objc_opt_class() keyForSourceType:6 placeType:2];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 objectForKeyedSubscript:&unk_28459E040];

  v16 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
  v17 = [objc_opt_class() keyForSourceType:8 placeType:2];
  v18 = [v16 objectForKeyedSubscript:v17];
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

- (id)retrieveComputedMetricsForSourcePlaceType:(unint64_t)a3 source:(unint64_t)a4
{
  v131 = *MEMORY[0x277D85DE8];
  v118 = objc_opt_new();
  v108 = a3 - 1;
  v113 = a4;
  if (a3 == 1)
  {
    v7 = [objc_opt_class() notHomeEligibleSources];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      goto LABEL_80;
    }

    v10 = &unk_2845A1118;
    goto LABEL_13;
  }

  if (a3 == 4)
  {
    v17 = [objc_opt_class() schoolGymEligibleSources];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v19 = [v17 containsObject:v18];

    if (!v19)
    {
      goto LABEL_80;
    }

    goto LABEL_12;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      v107 = &unk_2845A1130;
      goto LABEL_15;
    }

    v11 = [objc_opt_class() notWorkEligibleSources];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v13 = [v11 containsObject:v12];

    if (v13)
    {
      goto LABEL_80;
    }

    goto LABEL_12;
  }

  v14 = [objc_opt_class() schoolGymEligibleSources];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v16 = [v14 containsObject:v15];

  if (v16)
  {
LABEL_12:
    v10 = &unk_2845A1130;
LABEL_13:
    v107 = v10;
    a4 = v113;
LABEL_15:
    v20 = [objc_opt_class() keyForSourceType:a4 placeType:a3];
    v21 = 0;
    v109 = a4 | a3;
    v22 = 1;
    v23 = 0x277CCA000uLL;
    v116 = a3;
    v117 = self;
    while (1)
    {
      v123 = v21;
      v24 = [*(v23 + 2992) numberWithUnsignedInteger:a4];
      if ([&unk_2845A10B8 containsObject:v24])
      {
        v25 = [*(v23 + 2992) numberWithUnsignedInteger:a3];
        if ([&unk_2845A10E8 containsObject:v25])
        {
          v26 = [objc_opt_class() modelDictionaryMetricKeys];
          v27 = [*(v23 + 2992) numberWithInt:v22];
          v119 = [v26 containsObject:v27];
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

      v28 = [*(v23 + 2992) numberWithUnsignedInteger:a4];
      if ([&unk_2845A10B8 containsObject:v28])
      {
        v29 = [*(v23 + 2992) numberWithUnsignedInteger:a3];
        if ([&unk_2845A10E8 containsObject:v29])
        {
          v30 = [objc_opt_class() modelNonDictionaryMetricKeys];
          v31 = [*(v23 + 2992) numberWithInt:v22];
          v114 = [v30 containsObject:v31];
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
        v32 = [objc_opt_class() genericOnlyMetricKeys];
        v33 = [*(v23 + 2992) numberWithInt:v22];
        obj = [v32 containsObject:v33];
      }

      v34 = 0;
      if (a4)
      {
        if (a4 == 14)
        {
          v35 = [*(v23 + 2992) numberWithUnsignedInteger:a3];
          if ([&unk_2845A10D0 containsObject:v35])
          {
            v36 = [objc_opt_class() shownToEndUserOnlyMetricKeys];
            v37 = [*(v23 + 2992) numberWithInt:v22];
            v34 = [v36 containsObject:v37];
          }

          else
          {
            v34 = 0;
          }
        }

        v38 = v34;
        v39 = [*(v23 + 2992) numberWithUnsignedInteger:a3];
        if ([&unk_2845A10D0 containsObject:v39])
        {
          v40 = [objc_opt_class() anySourceMetricKeys];
          v41 = [*(v23 + 2992) numberWithInt:v22];
          v110 = [v40 containsObject:v41];
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

      v42 = [objc_opt_class() ignoredMetricKeys];
      v43 = [*(v23 + 2992) numberWithInt:v22];
      v44 = [v42 containsObject:v43];

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
            v48 = [v47 allKeys];
            [v45 addObjectsFromArray:v48];
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
                v51 = [objc_opt_class() keyForMetricType:3 placeType:a3 source:a4 metricKey:v22];

                v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v51, v50];

                v52 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
                v53 = [v52 objectForKeyedSubscript:v20];
                [*(v23 + 2992) numberWithInt:v22];
                v55 = v54 = self;
                v56 = [v53 objectForKeyedSubscript:v55];
                [v56 objectForKeyedSubscript:v50];
                v58 = v57 = v23;

                if (v58)
                {
                  v59 = [(RTPlaceTypeClassifierMetricsCalculator *)v54 metricsData];
                  v60 = [v59 objectForKeyedSubscript:v20];
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
                a4 = v113;
                a3 = v116;
                self = v117;
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
          v65 = [objc_opt_class() keyForMetricType:3 placeType:a3 source:a4 metricKey:v22];

          v66 = [(RTPlaceTypeClassifierMetricsCalculator *)self metricsData];
          v67 = [v66 objectForKeyedSubscript:v20];
          v68 = [*(v23 + 2992) numberWithInt:v22];
          v69 = [v67 objectForKeyedSubscript:v68];

          if (v69)
          {
            if ((v22 - 3) <= 1)
            {
              v70 = objc_opt_new();
              v71 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459E238 gap:&unk_28459DF50];
              [v70 addObjectsFromArray:v71];

              v72 = [RTMetric binsFromStart:&unk_28459E250 toEnd:&unk_28459E268 gap:&unk_28459E280];
              [v70 addObjectsFromArray:v72];

              v73 = [RTMetric binsFromStart:&unk_28459E298 toEnd:&unk_28459E2B0 gap:&unk_28459E2C8];
              [v70 addObjectsFromArray:v73];

              v74 = [(RTPlaceTypeClassifierMetricsCalculator *)v117 metricsData];
              v75 = [v74 objectForKeyedSubscript:v20];
              v76 = [MEMORY[0x277CCABB0] numberWithInt:v22];
              v77 = [v75 objectForKeyedSubscript:v76];
              v78 = [RTMetric binForNumber:v77 bins:v70];
              [v118 setObject:v78 forKeyedSubscript:v65];

              a4 = v113;
              v23 = 0x277CCA000uLL;

              self = v117;
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

              v90 = [(RTPlaceTypeClassifierMetricsCalculator *)v117 metricsData];
              [v90 objectForKeyedSubscript:v20];
              v91 = v125 = v20;
              v92 = [MEMORY[0x277CCABB0] numberWithInt:v22];
              v93 = [v91 objectForKeyedSubscript:v92];
              v94 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459E298 gap:&unk_28459DF50];
              v95 = [RTMetric binForNumber:v93 bins:v94];
              v21 = v121;
              [v118 setObject:v95 forKeyedSubscript:v121];

              v23 = 0x277CCA000;
              self = v117;

              v20 = v125;
              goto LABEL_73;
            }

            v79 = v22 - 9;
            if (v116 != 1 || v79 > 1)
            {
              if (v116 == 2 && v79 <= 1)
              {
                v70 = [(RTPlaceTypeClassifierMetricsCalculator *)v117 metricsData];
                v96 = [v70 objectForKeyedSubscript:v20];
                v97 = [MEMORY[0x277CCABB0] numberWithInt:v22];
                v98 = [v96 objectForKeyedSubscript:v97];
                v99 = [RTMetric binsFromStart:&unk_28459DF20 toEnd:&unk_28459DF50 gap:&unk_2845A1BE8];
                v100 = [RTMetric binForNumber:v98 bins:v99];
                [v118 setObject:v100 forKeyedSubscript:v65];

                v23 = 0x277CCA000;
                self = v117;

LABEL_62:
              }

              else
              {
                v101 = [(RTPlaceTypeClassifierMetricsCalculator *)v117 metricsData];
                v102 = [v101 objectForKeyedSubscript:v20];
                v103 = [MEMORY[0x277CCABB0] numberWithInt:v22];
                v104 = [v102 objectForKeyedSubscript:v103];
                [v118 setObject:v104 forKeyedSubscript:v65];

                v23 = 0x277CCA000;
                self = v117;
              }

              v21 = v65;
LABEL_73:
              a3 = v116;
              goto LABEL_74;
            }

            v80 = [(RTPlaceTypeClassifierMetricsCalculator *)v117 metricsData];
            v81 = [v80 objectForKeyedSubscript:v20];
            v82 = [MEMORY[0x277CCABB0] numberWithInt:v22];
            v83 = [v81 objectForKeyedSubscript:v82];
            v84 = [RTMetric binsFromStart:&unk_2845A1BF8 toEnd:&unk_2845A1C08 gap:&unk_2845A1BE8];
            v85 = [RTMetric binForNumber:v83 bins:v84];
            [v118 setObject:v85 forKeyedSubscript:v65];

            a3 = 1;
            v23 = 0x277CCA000;

            self = v117;
            v21 = v65;
          }

          else
          {
            [v118 setObject:&unk_28459DF08 forKeyedSubscript:v65];
            v21 = v65;
            a3 = v116;
            self = v117;
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

+ (id)keyForMetricType:(unint64_t)a3 sourcePlaceType:(unint64_t)a4 source:(unint64_t)a5 referenceSourcePlaceType:(unint64_t)a6 referenceSource:(unint64_t)a7 metricKey:(unint64_t)a8
{
  v8 = &stru_284528390;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [a1 keyForMetricType:2 placeType:a4 source:a5 metricKey:a8];
      if (a6)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [RTLearnedPlace placeTypeToString:a6];
        v13 = [v11 stringWithFormat:@"%@_%@", v8, v12];

        v8 = v13;
      }

      if (a7)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [objc_opt_class() metricsSourceToString:a7];
        v16 = [v14 stringWithFormat:@"%@_%@", v8, v15];

        v8 = v16;
      }

      goto LABEL_12;
    }

    if (a3 != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_12:
    v8 = v8;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
LABEL_7:
    v8 = [a1 keyForMetricType:? placeType:? source:? metricKey:?];
    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

+ (id)keyForMetricType:(unint64_t)a3 placeType:(unint64_t)a4 source:(unint64_t)a5 metricKey:(unint64_t)a6
{
  v9 = [objc_opt_class() metricsTypeToString:a3];
  if (a4)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [RTLearnedPlace placeTypeToString:a4];
    v12 = [v10 stringWithFormat:@"%@_%@", v9, v11];

    v9 = v12;
  }

  if (a5)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [objc_opt_class() metricsSourceToString:a5];
    v15 = [v13 stringWithFormat:@"%@_%@", v9, v14];

    v9 = v15;
  }

  if (a6)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [objc_opt_class() metricsKeyToString:a6];
    v18 = [v16 stringWithFormat:@"%@_%@", v9, v17];

    v9 = v18;
  }

  return v9;
}

+ (id)keyForSourceType:(unint64_t)a3 placeType:(unint64_t)a4
{
  v5 = [objc_opt_class() metricsSourceToString:a3];
  v6 = MEMORY[0x277CCACA8];
  v7 = [RTLearnedPlace placeTypeToString:a4];
  v8 = [v6 stringWithFormat:@"%@_%@", v5, v7];

  return v8;
}

+ (id)metricsTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2788CB408[a3 - 1];
  }
}

- (id)filterLearnedPlacesOfType:(unint64_t)a3 places:(id)a4
{
  v4 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__RTPlaceTypeClassifierMetricsCalculator_filterLearnedPlacesOfType_places___block_invoke;
  v9[3] = &__block_descriptor_40_e41_B24__0__RTLearnedPlace_8__NSDictionary_16l;
  v9[4] = a3;
  v5 = a4;
  v6 = [v4 predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)computeDistanceMetricForSourcePlaces:(id)a3 referencePlaces:(id)a4 bins:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    v29 = v9;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v7;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    v30 = v7;
    if (v34)
    {
      v32 = *v42;
      v33 = v8;
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
          v13 = v8;
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
                v20 = [v12 mapItem];
                v21 = [v20 location];
                v22 = [v18 mapItem];
                v23 = [v22 location];
                [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v21 toLocation:v23 error:0];
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
          v8 = v33;
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
    v9 = v29;
    v26 = [RTMetric binForNumber:v27 bins:v29];

    v7 = v30;
  }

  else
  {
    v26 = &unk_28459DF08;
  }

  return v26;
}

- (void)fetchWorkInferenceStatsForLookbackDays:(int64_t)a3 handler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
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

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v9 dateByAddingTimeInterval:(-86400 * a3)];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v9];
  v12 = [[RTLearnedPlaceTypeInferenceEnumerationOptions alloc] initWithDateInterval:v11 sortByCreationDate:1 ascending:0 filteredToPlaceTypes:&unk_2845A1148 filteredToIdentifiers:0 filteredToSessionIds:0 filteredToLearnedPlaceIdentifiers:0];
  v13 = [(RTPlaceTypeClassifierMetricsCalculator *)self learnedPlaceTypeInferenceStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__RTPlaceTypeClassifierMetricsCalculator_fetchWorkInferenceStatsForLookbackDays_handler___block_invoke;
  v15[3] = &unk_2788C54E0;
  v15[4] = self;
  v16 = v7;
  v17 = a2;
  v18 = a3;
  v14 = v7;
  [v13 fetchLearnedPlaceTypeInferencesWithOptions:v12 handler:v15];
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