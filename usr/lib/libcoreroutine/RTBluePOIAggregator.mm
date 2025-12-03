@interface RTBluePOIAggregator
- (BOOL)_isSinglePOI:(id)i;
- (RTBluePOIAggregator)initWithBluePOIMetricManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator platform:(id)platform;
- (id)updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:(id)result collectMetrics:(BOOL)metrics error:(id *)error;
- (void)collectMetricsWithPreaggregatedResult:(id)result cachedResult:(id)cachedResult aggregatedResult:(id)aggregatedResult distance:(double)distance timeDifference:(double)difference;
@end

@implementation RTBluePOIAggregator

- (RTBluePOIAggregator)initWithBluePOIMetricManager:(id)manager defaultsManager:(id)defaultsManager distanceCalculator:(id)calculator platform:(id)platform
{
  managerCopy = manager;
  defaultsManagerCopy = defaultsManager;
  calculatorCopy = calculator;
  platformCopy = platform;
  v15 = platformCopy;
  if (!managerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: bluePOIMetricManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_20;
  }

  if (!defaultsManagerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_19;
  }

  if (!calculatorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!platformCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: platform";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v25.receiver = self;
  v25.super_class = RTBluePOIAggregator;
  v16 = [(RTBluePOIAggregator *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bluePOIMetricManager, manager);
    objc_storeStrong(&v17->_defaultsManager, defaultsManager);
    objc_storeStrong(&v17->_distanceCalculator, calculator);
    objc_storeStrong(&v17->_platform, platform);
    v18 = objc_opt_new();
    maximumSingleShotConfidenceSeen = v17->_maximumSingleShotConfidenceSeen;
    v17->_maximumSingleShotConfidenceSeen = v18;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "initialized RTBluePOIAggregator", buf, 2u);
      }
    }
  }

  self = v17;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (BOOL)_isSinglePOI:(id)i
{
  v3 = MEMORY[0x277CBEB58];
  poiConfidences = [i poiConfidences];
  allKeys = [poiConfidences allKeys];
  v6 = [v3 setWithArray:allKeys];

  [v6 removeObject:&unk_2845A0908];
  LOBYTE(poiConfidences) = [v6 count] == 1;

  return poiConfidences;
}

- (id)updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:(id)result collectMetrics:(BOOL)metrics error:(id *)error
{
  metricsCopy = metrics;
  v145 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  currentPOIEstimate = [(RTBluePOIAggregator *)self currentPOIEstimate];

  if (!currentPOIEstimate)
  {
    [(RTBluePOIAggregator *)self setCurrentPOIEstimate:resultCopy];
    poiConfidences = [resultCopy poiConfidences];
    v41 = [poiConfidences mutableCopy];
    [(RTBluePOIAggregator *)self setMaximumSingleShotConfidenceSeen:v41];

    if (metricsCopy)
    {
      [(RTBluePOIAggregator *)self collectMetricsWithPreaggregatedResult:resultCopy cachedResult:0 aggregatedResult:resultCopy distance:-1.0 timeDifference:-1.0];
    }

    currentPOIEstimate2 = [(RTBluePOIAggregator *)self currentPOIEstimate];
    goto LABEL_19;
  }

  referenceLocation = [resultCopy referenceLocation];
  date = [referenceLocation date];
  if (!date)
  {

    goto LABEL_14;
  }

  v12 = date;
  v127 = metricsCopy;
  currentPOIEstimate3 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  referenceLocation2 = [currentPOIEstimate3 referenceLocation];
  date2 = [referenceLocation2 date];
  referenceLocation3 = [resultCopy referenceLocation];
  date3 = [referenceLocation3 date];
  [date2 timeIntervalSinceDate:date3];
  v19 = v18;

  if (v19 > 0.0)
  {
LABEL_14:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v144 = resultCopy;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "RTBluePOIAggregator out of order query %@", buf, 0xCu);
      }
    }

    currentPOIEstimate2 = resultCopy;
LABEL_19:
    currentPOIEstimate9 = currentPOIEstimate2;
    goto LABEL_20;
  }

  v20 = objc_opt_new();
  v21 = MEMORY[0x277CBEAC0];
  aoiConfidences = [resultCopy aoiConfidences];
  v126 = [v21 dictionaryWithDictionary:aoiConfidences];

  distanceCalculator = [(RTBluePOIAggregator *)self distanceCalculator];
  referenceLocation4 = [resultCopy referenceLocation];
  currentPOIEstimate4 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  referenceLocation5 = [currentPOIEstimate4 referenceLocation];
  [distanceCalculator distanceFromLocation:referenceLocation4 toLocation:referenceLocation5 error:error];
  v28 = v27;

  referenceLocation6 = [resultCopy referenceLocation];
  date4 = [referenceLocation6 date];
  currentPOIEstimate5 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  referenceLocation7 = [currentPOIEstimate5 referenceLocation];
  date5 = [referenceLocation7 date];
  [date4 timeIntervalSinceDate:date5];
  v35 = v34;

  v131 = resultCopy;
  selfCopy = self;
  if ([(RTBluePOIAggregator *)self _isSinglePOI:resultCopy])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v144 = resultCopy;
        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "RTBluePOIAggregator Single POI %@", buf, 0xCu);
      }
    }

    v37 = MEMORY[0x277CBEB38];
    poiConfidences2 = [resultCopy poiConfidences];
    [v37 dictionaryWithDictionary:poiConfidences2];
    v20 = v39 = v20;
    goto LABEL_58;
  }

  v46 = MEMORY[0x277CBEB58];
  poiConfidences3 = [resultCopy poiConfidences];
  allKeys = [poiConfidences3 allKeys];
  v49 = [v46 setWithArray:allKeys];

  v50 = MEMORY[0x277CBEB58];
  currentPOIEstimate6 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  poiConfidences4 = [currentPOIEstimate6 poiConfidences];
  allKeys2 = [poiConfidences4 allKeys];
  v54 = [v50 setWithArray:allKeys2];

  v123 = v49;
  [v54 unionSet:v49];
  v55 = &unk_2845A0908;
  [v54 addObject:&unk_2845A0908];
  v130 = objc_opt_new();
  v56 = [v54 count];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v39 = v54;
  v57 = [v39 countByEnumeratingWithState:&v137 objects:v142 count:16];
  v124 = v35;
  v125 = v28;
  obj = v39;
  if (v57)
  {
    v58 = v57;
    v129 = *v138;
    v59 = 1.0 / v56;
    v60 = exp(v28 * -0.02 + v35 * -0.000277777778);
    v61 = 0.0;
    v62 = 0.0;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v138 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v137 + 1) + 8 * i);
        currentPOIEstimate7 = [(RTBluePOIAggregator *)self currentPOIEstimate];
        poiConfidences5 = [currentPOIEstimate7 poiConfidences];
        v67 = [poiConfidences5 objectForKeyedSubscript:v64];
        [v67 doubleValue];
        v69 = v68;

        v70 = v59 + (v69 - v59) * v60;
        poiConfidences6 = [resultCopy poiConfidences];
        v72 = [poiConfidences6 objectForKeyedSubscript:v64];
        [v72 doubleValue];
        v74 = v73;

        v75 = MEMORY[0x277CCABB0];
        maximumSingleShotConfidenceSeen = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
        v77 = [maximumSingleShotConfidenceSeen objectForKeyedSubscript:v64];
        [v77 doubleValue];
        v79 = v78;

        if (v74 >= v79)
        {
          v80 = v74;
        }

        else
        {
          v80 = v79;
        }

        v81 = [v75 numberWithDouble:v80];
        [v130 setObject:v81 forKeyedSubscript:v64];

        poiConfidences7 = [resultCopy poiConfidences];
        allKeys3 = [poiConfidences7 allKeys];
        v84 = [allKeys3 count];

        if (v84)
        {
          v85 = v74;
        }

        else
        {
          v85 = 1.0;
        }

        v86 = v70 * v85;
        if (v70 * v85 > v62)
        {
          v87 = v64;

          v55 = v87;
          v62 = v86;
        }

        if (v86 > 0.0)
        {
          v61 = v61 + v86;
          v88 = [MEMORY[0x277CCABB0] numberWithDouble:v86];
          [v20 setObject:v88 forKeyedSubscript:v64];
        }
      }

      v39 = obj;
      v58 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
    }

    while (v58);
  }

  else
  {
    v61 = 0.0;
  }

  [(RTBluePOIAggregator *)self setMaximumSingleShotConfidenceSeen:v130];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  allKeys4 = [v20 allKeys];
  v90 = [allKeys4 countByEnumeratingWithState:&v133 objects:v141 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v134;
    v93 = 0.0;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v134 != v92)
        {
          objc_enumerationMutation(allKeys4);
        }

        v95 = *(*(&v133 + 1) + 8 * j);
        v96 = [v20 objectForKeyedSubscript:v95];
        [v96 doubleValue];
        v98 = v97 / v61;

        if ([v55 unsignedLongLongValue])
        {
          unsignedLongLongValue = [v95 unsignedLongLongValue];
          if (unsignedLongLongValue == [v55 unsignedLongLongValue])
          {
            maximumSingleShotConfidenceSeen2 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
            v101 = [maximumSingleShotConfidenceSeen2 objectForKeyedSubscript:v95];
            [v101 doubleValue];
            v103 = v102;

            if (v98 > v103)
            {
              maximumSingleShotConfidenceSeen3 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
              v105 = [maximumSingleShotConfidenceSeen3 objectForKeyedSubscript:v95];
              [v105 doubleValue];
              v93 = v98 - v106;

              maximumSingleShotConfidenceSeen4 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
              v108 = [maximumSingleShotConfidenceSeen4 objectForKeyedSubscript:v95];
              [v108 doubleValue];
              v98 = v109;
            }
          }
        }

        v110 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
        [v20 setObject:v110 forKeyedSubscript:v95];
      }

      v91 = [allKeys4 countByEnumeratingWithState:&v133 objects:v141 count:16];
    }

    while (v91);

    resultCopy = v131;
    v35 = v124;
    v39 = obj;
    if (v93 <= 0.0)
    {
      goto LABEL_57;
    }

    v111 = MEMORY[0x277CCABB0];
    allKeys4 = [v20 objectForKeyedSubscript:&unk_2845A0908];
    [allKeys4 doubleValue];
    v112 = [v111 numberWithDouble:v93 + v112];
    [v20 setObject:v112 forKeyedSubscript:&unk_2845A0908];
  }

  else
  {
    v35 = v124;
  }

LABEL_57:
  v28 = v125;
  poiConfidences2 = v123;
LABEL_58:

  v114 = objc_alloc(MEMORY[0x277D01158]);
  distanceToNearestAOILowerBound = [resultCopy distanceToNearestAOILowerBound];
  v116 = [distanceToNearestAOILowerBound copy];
  referenceLocation8 = [resultCopy referenceLocation];
  v118 = [referenceLocation8 copy];
  queryTime = [resultCopy queryTime];
  v120 = [queryTime copy];
  v121 = [v114 initWithPOIConfidences:v20 aoiConfidences:v126 distanceToNearestAOILowerBound:v116 referenceLocation:v118 queryTime:v120];

  if (v127)
  {
    currentPOIEstimate8 = [(RTBluePOIAggregator *)selfCopy currentPOIEstimate];
    [(RTBluePOIAggregator *)selfCopy collectMetricsWithPreaggregatedResult:resultCopy cachedResult:currentPOIEstimate8 aggregatedResult:v121 distance:v28 timeDifference:v35];
  }

  [(RTBluePOIAggregator *)selfCopy setCurrentPOIEstimate:v121];
  currentPOIEstimate9 = [(RTBluePOIAggregator *)selfCopy currentPOIEstimate];

LABEL_20:

  return currentPOIEstimate9;
}

- (void)collectMetricsWithPreaggregatedResult:(id)result cachedResult:(id)cachedResult aggregatedResult:(id)aggregatedResult distance:(double)distance timeDifference:(double)difference
{
  resultCopy = result;
  cachedResultCopy = cachedResult;
  aggregatedResultCopy = aggregatedResult;
  bluePOIMetricManager = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v98 = vcvtpd_u64_f64(distance);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
  [bluePOIMetricManager setEventMetricsValue:v15 forKey:@"aggregationDistancePOI"];

  bluePOIMetricManager2 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v99 = fmin(ceil(difference), 3600.0);
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99];
  [bluePOIMetricManager2 setEventMetricsValue:v17 forKey:@"aggregationDurationPOI"];

  mostConfidentPOI = [resultCopy mostConfidentPOI];
  v19 = cachedResultCopy;
  if (mostConfidentPOI)
  {
    mostConfidentPOI2 = [resultCopy mostConfidentPOI];
    poiConfidences = [resultCopy poiConfidences];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentPOI2];
    v23 = [poiConfidences objectForKeyedSubscript:v22];
    [v23 doubleValue];
    v25 = v24;

    v26 = v25 * 10000.0;
  }

  else
  {
    mostConfidentPOI2 = 0;
    v26 = -10000.0;
  }

  bluePOIMetricManager3 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentPOI != 0];
  [bluePOIMetricManager3 setEventMetricsValue:v28 forKey:@"preAggregatedInferenceAvailablePOI"];

  bluePOIMetricManager4 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:round(v26)];
  [bluePOIMetricManager4 setEventMetricsValue:v30 forKey:@"preAggregationConfidencePOI"];

  mostConfidentPOI3 = [cachedResultCopy mostConfidentPOI];
  if (mostConfidentPOI3)
  {
    mostConfidentPOI4 = [cachedResultCopy mostConfidentPOI];
    poiConfidences2 = [cachedResultCopy poiConfidences];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentPOI4];
    v35 = [poiConfidences2 objectForKeyedSubscript:v34];
    [v35 doubleValue];
  }

  else
  {
    mostConfidentPOI4 = 0;
  }

  v36 = mostConfidentPOI3 != 0;
  v37 = mostConfidentPOI2 == mostConfidentPOI4;
  bluePOIMetricManager5 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:v36];
  [bluePOIMetricManager5 setEventMetricsValue:v39 forKey:@"cachedInferenceAvailablePOI"];

  bluePOIMetricManager6 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:v37];
  [bluePOIMetricManager6 setEventMetricsValue:v41 forKey:@"preAggregationMatchesCachePOI"];

  mostConfidentPOI5 = [aggregatedResultCopy mostConfidentPOI];
  v43 = -10000.0;
  if (mostConfidentPOI5)
  {
    mostConfidentPOI6 = [aggregatedResultCopy mostConfidentPOI];
    poiConfidences3 = [aggregatedResultCopy poiConfidences];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentPOI6];
    v47 = [poiConfidences3 objectForKeyedSubscript:v46];
    [v47 doubleValue];
    v49 = v48;

    v50 = v49 * 10000.0;
  }

  else
  {
    mostConfidentPOI6 = 0;
    v50 = -10000.0;
  }

  v51 = v19;
  v52 = mostConfidentPOI5 != 0;
  bluePOIMetricManager7 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:v52];
  [bluePOIMetricManager7 setEventMetricsValue:v54 forKey:@"postAggregatedInferenceAvailablePOI"];

  bluePOIMetricManager8 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentPOI2 == mostConfidentPOI6];
  [bluePOIMetricManager8 setEventMetricsValue:v56 forKey:@"preAggregationMatchesPostAggregationPOI"];

  bluePOIMetricManager9 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:round(v50)];
  [bluePOIMetricManager9 setEventMetricsValue:v58 forKey:@"postAggregationConfidencePOI"];

  bluePOIMetricManager10 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
  [bluePOIMetricManager10 setEventMetricsValue:v60 forKey:@"aggregationDistanceAOI"];

  bluePOIMetricManager11 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99];
  [bluePOIMetricManager11 setEventMetricsValue:v62 forKey:@"aggregationDurationAOI"];

  mostConfidentAOI = [resultCopy mostConfidentAOI];
  if (mostConfidentAOI)
  {
    mostConfidentAOI2 = [resultCopy mostConfidentAOI];
    aoiConfidences = [resultCopy aoiConfidences];
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentAOI2];
    v67 = [aoiConfidences objectForKeyedSubscript:v66];
    [v67 doubleValue];
    v69 = v68;

    v43 = v69 * 10000.0;
  }

  else
  {
    mostConfidentAOI2 = 0;
  }

  bluePOIMetricManager12 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v71 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentAOI != 0];
  [bluePOIMetricManager12 setEventMetricsValue:v71 forKey:@"preAggregatedInferenceAvailableAOI"];

  bluePOIMetricManager13 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v73 = [MEMORY[0x277CCABB0] numberWithDouble:round(v43)];
  [bluePOIMetricManager13 setEventMetricsValue:v73 forKey:@"preAggregationConfidenceAOI"];

  mostConfidentAOI3 = [v51 mostConfidentAOI];
  if (mostConfidentAOI3)
  {
    mostConfidentAOI4 = [v51 mostConfidentAOI];
    aoiConfidences2 = [v51 aoiConfidences];
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentAOI4];
    v78 = [aoiConfidences2 objectForKeyedSubscript:v77];
    [v78 doubleValue];
  }

  else
  {
    mostConfidentAOI4 = 0;
  }

  bluePOIMetricManager14 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v80 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentAOI3 != 0];
  [bluePOIMetricManager14 setEventMetricsValue:v80 forKey:@"cachedInferenceAvailableAOI"];

  bluePOIMetricManager15 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v82 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentAOI2 == mostConfidentAOI4];
  [bluePOIMetricManager15 setEventMetricsValue:v82 forKey:@"preAggregationMatchesCacheAOI"];

  mostConfidentAOI5 = [aggregatedResultCopy mostConfidentAOI];
  if (mostConfidentAOI5)
  {
    mostConfidentAOI6 = [aggregatedResultCopy mostConfidentAOI];
    aoiConfidences3 = [aggregatedResultCopy aoiConfidences];
    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mostConfidentAOI6];
    v87 = [aoiConfidences3 objectForKeyedSubscript:v86];
    [v87 doubleValue];
    v89 = v88;

    v90 = v89 * 10000.0;
  }

  else
  {
    mostConfidentAOI6 = 0;
    v90 = -10000.0;
  }

  v91 = mostConfidentAOI2 == mostConfidentAOI6;
  bluePOIMetricManager16 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v93 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentAOI5 != 0];
  [bluePOIMetricManager16 setEventMetricsValue:v93 forKey:@"postAggregatedInferenceAvailableAOI"];

  bluePOIMetricManager17 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v95 = [MEMORY[0x277CCABB0] numberWithBool:v91];
  [bluePOIMetricManager17 setEventMetricsValue:v95 forKey:@"preAggregationMatchesPostAggregationAOI"];

  bluePOIMetricManager18 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:round(v90)];
  [bluePOIMetricManager18 setEventMetricsValue:v97 forKey:@"postAggregationConfidenceAOI"];
}

@end