@interface RTMapItemProviderBluePOIPerformanceMetrics
+ (id)_bestMapItemForQuery:(id)query placeType:(unint64_t)type;
+ (id)_mapItemDictionaryforResults:(id)results placeType:(unint64_t)type;
+ (void)_getDominantStreakForResults:(id)results dominantKey:(id *)key largestSameResultCount:(unint64_t *)count hasDominantResult:(BOOL *)result;
+ (void)submitMetricsWithNonZeroAccessPointsFingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount fingerprintsCount:(unint64_t)a5 queryCount:(unint64_t)queryCount firstResultQueryCount:(unint64_t)resultQueryCount results:(id)results earlyStopQueryCount:(unint64_t)stopQueryCount earlyStopQueryResult:(id)self0 bestQueryResult:(id)self1 error:(id)self2 visitInterval:(double)self3 visitSource:(int64_t)self4;
- (RTMapItemProviderBluePOIPerformanceMetrics)initWithNonZeroAccessPointsFingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount fingerprintsCount:(unint64_t)a5 queryCount:(unint64_t)queryCount firstResultQueryCount:(unint64_t)resultQueryCount results:(id)results earlyStopQueryCount:(unint64_t)stopQueryCount earlyStopQueryResult:(id)self0 bestQueryResult:(id)self1 error:(id)self2 visitInterval:(double)self3 visitSource:(int64_t)self4;
- (void)submitMetrics;
@end

@implementation RTMapItemProviderBluePOIPerformanceMetrics

+ (id)_bestMapItemForQuery:(id)query placeType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v6 = queryCopy;
  if (!queryCopy || (v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, (v7 = [queryCopy countByEnumeratingWithState:&v19 objects:v23 count:16]) == 0))
  {
    v9 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      mapItem = [v12 mapItem];
      if ([mapItem mapItemPlaceType] != type)
      {
        goto LABEL_13;
      }

      if (!v9)
      {

LABEL_12:
        mapItem = v9;
        v9 = v12;
LABEL_13:

        continue;
      }

      [v9 confidence];
      v15 = v14;
      [v12 confidence];
      v17 = v16;

      if (v15 < v17)
      {
        goto LABEL_12;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
LABEL_18:

  return v9;
}

+ (id)_mapItemDictionaryforResults:(id)results placeType:(unint64_t)type
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([resultsCopy count])
  {
    v7 = 0;
    v32 = resultsCopy;
    do
    {
      v33 = v7;
      v8 = [resultsCopy objectAtIndexedSubscript:v7];
      firstObject = [v8 firstObject];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = firstObject;
      v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            mapItem = [v14 mapItem];
            mapItemPlaceType = [mapItem mapItemPlaceType];

            if (mapItemPlaceType == type)
            {
              v17 = MEMORY[0x277CCABB0];
              mapItem2 = [v14 mapItem];
              v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(mapItem2, "muid")}];
              v20 = [dictionary objectForKeyedSubscript:v19];

              if (!v20)
              {
                array = [MEMORY[0x277CBEB18] array];
                v22 = MEMORY[0x277CCABB0];
                mapItem3 = [v14 mapItem];
                v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(mapItem3, "muid")}];
                [dictionary setObject:array forKeyedSubscript:v24];
              }

              v25 = MEMORY[0x277CCABB0];
              mapItem4 = [v14 mapItem];
              v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(mapItem4, "muid")}];
              v28 = [dictionary objectForKeyedSubscript:v27];
              v29 = MEMORY[0x277CCABB0];
              [v14 confidence];
              v30 = [v29 numberWithDouble:?];
              [v28 addObject:v30];
            }
          }

          v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v11);
      }

      resultsCopy = v32;
      v7 = v33 + 1;
    }

    while ([v32 count] > (v33 + 1));
  }

  return dictionary;
}

+ (void)_getDominantStreakForResults:(id)results dominantKey:(id *)key largestSameResultCount:(unint64_t *)count hasDominantResult:(BOOL *)result
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [resultsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (!v10)
        {
          v10 = [MEMORY[0x277CBEB18] arrayWithObject:*(*(&v26 + 1) + 8 * i)];
          v15 = [resultsCopy objectForKeyedSubscript:v14];
          v11 = [v15 count];
        }

        v16 = [resultsCopy objectForKeyedSubscript:v14];
        if (v11 == [v16 count])
        {
          v17 = [v10 containsObject:v14];

          if ((v17 & 1) == 0)
          {
            [v10 addObject:v14];
          }
        }

        else
        {
        }

        v18 = [resultsCopy objectForKeyedSubscript:v14];
        v19 = [v18 count];

        if (v11 < v19)
        {
          v20 = [MEMORY[0x277CBEB18] arrayWithObject:v14];

          v21 = [resultsCopy objectForKeyedSubscript:v14];
          v11 = [v21 count];

          v10 = v20;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if ([v10 count])
  {
    *key = [v10 firstObject];
    *count = v11;
    v22 = [v10 count] == 1;
  }

  else
  {
    v22 = 0;
    *key = 0;
    *count = 0;
  }

  *result = v22;
}

- (RTMapItemProviderBluePOIPerformanceMetrics)initWithNonZeroAccessPointsFingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount fingerprintsCount:(unint64_t)a5 queryCount:(unint64_t)queryCount firstResultQueryCount:(unint64_t)resultQueryCount results:(id)results earlyStopQueryCount:(unint64_t)stopQueryCount earlyStopQueryResult:(id)self0 bestQueryResult:(id)self1 error:(id)self2 visitInterval:(double)self3 visitSource:(int64_t)self4
{
  resultsCopy = results;
  resultCopy = result;
  queryResultCopy = queryResult;
  errorCopy = error;
  v124.receiver = self;
  v124.super_class = RTMapItemProviderBluePOIPerformanceMetrics;
  v23 = [(RTMapItemProviderBluePOIPerformanceMetrics *)&v124 init];
  if (v23)
  {
    v114 = queryResultCopy;
    v115 = resultCopy;
    if ([resultsCopy count])
    {
      firstObject = [resultsCopy firstObject];
      v24FirstObject = [firstObject firstObject];
    }

    else
    {
      v24FirstObject = 0;
    }

    v116 = [objc_opt_class() _mapItemDictionaryforResults:resultsCopy placeType:2];
    v113 = [objc_opt_class() _mapItemDictionaryforResults:resultsCopy placeType:1];
    v110 = resultsCopy;
    v26 = [resultsCopy count];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metrics = v23->_metrics;
    v23->_metrics = dictionary;

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [(NSMutableDictionary *)v23->_metrics setObject:v29 forKeyedSubscript:@"fingerprintsCount"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fingerprintsCount];
    [(NSMutableDictionary *)v23->_metrics setObject:v30 forKeyedSubscript:@"zeroAccessPointsFingerprintsCount"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    [(NSMutableDictionary *)v23->_metrics setObject:v31 forKeyedSubscript:@"nonZeroAccessPointsFingerprintsCount"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:source];
    [(NSMutableDictionary *)v23->_metrics setObject:v32 forKeyedSubscript:@"visitSource"];

    v33 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    [(NSMutableDictionary *)v23->_metrics setObject:v33 forKeyedSubscript:@"visitDuration"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:queryCount];
    [(NSMutableDictionary *)v23->_metrics setObject:v34 forKeyedSubscript:@"queryCount"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
    [(NSMutableDictionary *)v23->_metrics setObject:v35 forKeyedSubscript:@"resultCount"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:resultQueryCount];
    [(NSMutableDictionary *)v23->_metrics setObject:v36 forKeyedSubscript:@"firstResultQueryCount"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stopQueryCount];
    [(NSMutableDictionary *)v23->_metrics setObject:v37 forKeyedSubscript:@"earlyStopQueryCount"];

    v38 = [objc_opt_class() _bestMapItemForQuery:v115 placeType:2];
    v39 = MEMORY[0x277CCABB0];
    [v38 confidence];
    v40 = [v39 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v40 forKeyedSubscript:@"earlyStopPOIConfidence"];

    v41 = [objc_opt_class() _bestMapItemForQuery:v115 placeType:1];
    v42 = MEMORY[0x277CCABB0];
    [v41 confidence];
    v43 = [v42 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v43 forKeyedSubscript:@"earlyStopAOIConfidence"];

    v44 = [objc_opt_class() _bestMapItemForQuery:v114 placeType:2];
    v45 = MEMORY[0x277CCABB0];
    [v44 confidence];
    v46 = [v45 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v46 forKeyedSubscript:@"bestPOIConfidence"];

    v47 = [objc_opt_class() _bestMapItemForQuery:v114 placeType:1];
    v48 = MEMORY[0x277CCABB0];
    [v47 confidence];
    v49 = [v48 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v49 forKeyedSubscript:@"bestAOIConfidence"];

    v50 = [objc_opt_class() _bestMapItemForQuery:v24FirstObject placeType:2];
    v51 = MEMORY[0x277CCABB0];
    v107 = v50;
    [v50 confidence];
    v52 = [v51 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v52 forKeyedSubscript:@"firstResultPOIConfidence"];

    v53 = [objc_opt_class() _bestMapItemForQuery:v24FirstObject placeType:1];
    v54 = MEMORY[0x277CCABB0];
    v106 = v53;
    [v53 confidence];
    v55 = [v54 numberWithDouble:?];
    [(NSMutableDictionary *)v23->_metrics setObject:v55 forKeyedSubscript:@"firstResultAOIConfidence"];

    v56 = [MEMORY[0x277CCABB0] numberWithInt:v47 != 0];
    [(NSMutableDictionary *)v23->_metrics setObject:v56 forKeyedSubscript:@"hasAOIResult"];

    v57 = [MEMORY[0x277CCABB0] numberWithInt:v44 != 0];
    [(NSMutableDictionary *)v23->_metrics setObject:v57 forKeyedSubscript:@"hasPOIResult"];

    if (v41 && v47)
    {
      [v47 confidence];
      v59 = v58;
      [v41 confidence];
      v61 = v59 - v60;
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
      [(NSMutableDictionary *)v23->_metrics setObject:v62 forKeyedSubscript:@"bestEarlyStopAOIConfidenceDiference"];

      v63 = [MEMORY[0x277CCABB0] numberWithInt:v61 < 0.001];
      [(NSMutableDictionary *)v23->_metrics setObject:v63 forKeyedSubscript:@"earlyStopConfidenceEqualsBestConfidenceAOI"];
    }

    v109 = v24FirstObject;
    if (v38 && v44)
    {
      [v44 confidence];
      v65 = v64;
      [v38 confidence];
      v67 = v65 - v66;
      v68 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
      [(NSMutableDictionary *)v23->_metrics setObject:v68 forKeyedSubscript:@"bestEarlyStopPOIConfidenceDiference"];

      v69 = [MEMORY[0x277CCABB0] numberWithInt:v67 < 0.001];
      [(NSMutableDictionary *)v23->_metrics setObject:v69 forKeyedSubscript:@"earlyStopConfidenceEqualsBestConfidencePOI"];
    }

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v113, "count")}];
    [(NSMutableDictionary *)v23->_metrics setObject:v70 forKeyedSubscript:@"uniqueAOIResultCount"];

    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v116, "count")}];
    [(NSMutableDictionary *)v23->_metrics setObject:v71 forKeyedSubscript:@"uniquePOIResultCount"];

    v123 = 0;
    v122 = 0;
    v121 = 0;
    [objc_opt_class() _getDominantStreakForResults:v113 dominantKey:&v121 largestSameResultCount:&v123 hasDominantResult:&v122];
    v72 = v121;
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v123];
    [(NSMutableDictionary *)v23->_metrics setObject:v73 forKeyedSubscript:@"largestSameResultAOICount"];

    mapItem = [MEMORY[0x277CCABB0] numberWithBool:v122];
    [(NSMutableDictionary *)v23->_metrics setObject:mapItem forKeyedSubscript:@"hasDominantAOIResult"];

    v75 = MEMORY[0x277CCABB0];
    v76 = v122;
    v112 = v38;
    if (v122 == 1)
    {
      mapItem = [v41 mapItem];
      muid = [mapItem muid];
      v78 = muid == [v72 unsignedIntegerValue];
    }

    else
    {
      v78 = 0;
    }

    v79 = [v75 numberWithInt:v78];
    [(NSMutableDictionary *)v23->_metrics setObject:v79 forKeyedSubscript:@"isEarlyStopDominantAOIResult"];

    if (v76)
    {
    }

    v80 = MEMORY[0x277CCABB0];
    v81 = v122;
    if (v122 == 1)
    {
      mapItem = [v47 mapItem];
      muid2 = [mapItem muid];
      v83 = muid2 == [v72 unsignedIntegerValue];
    }

    else
    {
      v83 = 0;
    }

    v108 = v41;
    v84 = [v80 numberWithInt:v83];
    [(NSMutableDictionary *)v23->_metrics setObject:v84 forKeyedSubscript:@"isBestResultDominantAOIResult"];

    if (v81)
    {
    }

    v120 = 0;
    v119 = 0;
    v118 = 0;
    [objc_opt_class() _getDominantStreakForResults:v116 dominantKey:&v118 largestSameResultCount:&v120 hasDominantResult:&v119];
    v85 = v118;
    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v120];
    [(NSMutableDictionary *)v23->_metrics setObject:v86 forKeyedSubscript:@"largestSameResultPOICount"];

    mapItem2 = [MEMORY[0x277CCABB0] numberWithBool:v119];
    [(NSMutableDictionary *)v23->_metrics setObject:mapItem2 forKeyedSubscript:@"hasDominantPOIResult"];

    v88 = MEMORY[0x277CCABB0];
    v89 = v119;
    if (v119 == 1)
    {
      mapItem2 = [v112 mapItem];
      muid3 = [mapItem2 muid];
      v91 = muid3 == [v85 unsignedIntegerValue];
    }

    else
    {
      v91 = 0;
    }

    v92 = [v88 numberWithInt:v91];
    [(NSMutableDictionary *)v23->_metrics setObject:v92 forKeyedSubscript:@"isEarlyStopDominantPOIResult"];

    if (v89)
    {
    }

    v93 = MEMORY[0x277CCABB0];
    v94 = v119;
    if (v119 == 1)
    {
      mapItem2 = [v44 mapItem];
      muid4 = [mapItem2 muid];
      v96 = muid4 == [v85 unsignedIntegerValue];
    }

    else
    {
      v96 = 0;
    }

    v97 = [v93 numberWithInt:v96];
    [(NSMutableDictionary *)v23->_metrics setObject:v97 forKeyedSubscript:@"isBestResultDominantPOIResult"];

    if (v94)
    {
    }

    if (errorCopy)
    {
      domain = [errorCopy domain];
      [(NSMutableDictionary *)v23->_metrics setObject:domain forKeyedSubscript:@"errorDomain"];

      v99 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      [(NSMutableDictionary *)v23->_metrics setObject:v99 forKeyedSubscript:@"errorCode"];

      userInfo = [errorCopy userInfo];
      v101 = *MEMORY[0x277D0E7D8];
      v102 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D0E7D8]];

      if (v102)
      {
        userInfo2 = [errorCopy userInfo];
        v104 = [userInfo2 objectForKeyedSubscript:v101];
        [(NSMutableDictionary *)v23->_metrics setObject:v104 forKeyedSubscript:@"httpCode"];
      }
    }

    resultsCopy = v110;
    queryResultCopy = v114;
    resultCopy = v115;
  }

  return v23;
}

- (void)submitMetrics
{
  v24 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__RTMapItemProviderBluePOIPerformanceMetrics_submitMetrics__block_invoke;
  aBlock[3] = &unk_2788CC8F0;
  objc_copyWeak(&v18, &location);
  v4 = _Block_copy(aBlock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      metrics = self->_metrics;
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = metrics;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, submitting, BluePOIPerformanceMetrics, %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v8 initWithCString:RTAnalyticsEventBluePOIPerformanceMetrics encoding:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__RTMapItemProviderBluePOIPerformanceMetrics_submitMetrics__block_invoke_118;
  v14[3] = &unk_2788C8D18;
  v10 = v4;
  v16 = v10;
  v11 = v9;
  v15 = v11;
  v12 = _Block_copy(v14);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v11];
  AnalyticsSendEventLazy();

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

id __59__RTMapItemProviderBluePOIPerformanceMetrics_submitMetrics__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained metrics];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __59__RTMapItemProviderBluePOIPerformanceMetrics_submitMetrics__block_invoke_118(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

+ (void)submitMetricsWithNonZeroAccessPointsFingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount fingerprintsCount:(unint64_t)a5 queryCount:(unint64_t)queryCount firstResultQueryCount:(unint64_t)resultQueryCount results:(id)results earlyStopQueryCount:(unint64_t)stopQueryCount earlyStopQueryResult:(id)self0 bestQueryResult:(id)self1 error:(id)self2 visitInterval:(double)self3 visitSource:(int64_t)self4
{
  errorCopy = error;
  queryResultCopy = queryResult;
  resultCopy = result;
  resultsCopy = results;
  v25 = [[RTMapItemProviderBluePOIPerformanceMetrics alloc] initWithNonZeroAccessPointsFingerprintsCount:count zeroAccessPointsFingerprintsCount:fingerprintsCount fingerprintsCount:a5 queryCount:queryCount firstResultQueryCount:resultQueryCount results:resultsCopy earlyStopQueryCount:interval earlyStopQueryResult:stopQueryCount bestQueryResult:resultCopy error:queryResultCopy visitInterval:errorCopy visitSource:source];

  [(RTMapItemProviderBluePOIPerformanceMetrics *)v25 submitMetrics];
}

@end