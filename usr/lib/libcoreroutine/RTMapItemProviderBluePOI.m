@interface RTMapItemProviderBluePOI
+ (NSArray)preferredAOICategories;
- (BOOL)_hasMapItemInQueryResult:(id)a3 placeType:(unint64_t)a4;
- (BOOL)_shouldPerformServerBluePOIForLocalBluePOIError:(id)a3;
- (BOOL)chooseBestAoiInferredMapItem:(id *)a3 PoiInferredMapItem:(id *)a4 fromSortedAveragedResults:(id)a5 error:(id *)a6;
- (BOOL)skipForOptions:(id)a3 error:(id *)a4;
- (BOOL)sortedQueryResult:(id)a3 correspondsToAoi:(id)a4 poi:(id)a5;
- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 motionActivityManager:(id)a12 parameters:(id)a13 placeInferenceQueryStore:(id)a14 platform:(id)a15;
- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 motionActivityManager:(id)a12 placeInferenceQueryStore:(id)a13 platform:(id)a14;
- (id)_adjustConfidencesOfTheSelectedResult:(id)a3 allQueryResults:(id)a4;
- (id)_bestAOIFromAOIs:(id)a3;
- (id)_bluePOIQueryFromFingerprint:(id)a3 fingerprintIdx:(unint64_t)a4 referenceLocationArray:(id)a5 selected:(BOOL)a6 endDate:(id)a7 totalAPsCount:(unint64_t *)a8 error:(id *)a9;
- (id)_computeEarlyStopQueryResultFromResults:(id)a3 originalMaxNumberOfQueries:(unint64_t)a4 aoiConfidencePassThroughThreshold:(double)a5 poiConfidencePassThroughThreshold:(double)a6;
- (id)_confidenceCoefficientsForAOI:(id)a3 AOIOccurenceCount:(unint64_t)a4 POIResults:(id)a5;
- (id)_fetchAllFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (id)_filterByCategories:(id)a3 categories:(id)a4;
- (id)_filterByConfidence:(id)a3 aoiConfidencePassThroughThreshold:(double)a4 aoiConfidenceConsiderThreshold:(double)a5 poiConfidencePassThroughThreshold:(double)a6 poiConfidenceConsiderThreshold:(double)a7 error:(id *)a8;
- (id)_filterLessRelevantAOIsFromQueryResult:(id)a3;
- (id)_filterOutEmptyFingerprintsFromFingerprints:(id)a3 endDate:(id)a4;
- (id)_mapItemsFromBluePOIQuery:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6;
- (id)_mapItemsFromBluePOIServerQuery:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6;
- (id)_mapItemsWithFidelityPolicy:(unint64_t)a3 locations:(id)a4 accessPoints:(id)a5 referenceLocation:(id)a6 options:(id)a7 error:(id *)a8;
- (id)_mapItemsWithinDistance:(double)a3 location:(id)a4 startDate:(id)a5 endDate:(id)a6 maxQueryAttemps:(unint64_t)a7 error:(id *)a8;
- (id)_selectFingerprintsStartDate:(id)a3 endDate:(id)a4 maxQueryAttemps:(unint64_t)a5 isTimeWindowFallback:(BOOL *)a6 fingerprintsTotalOut:(unint64_t *)a7 fingerprintsNonZeroAPsTotalOut:(unint64_t *)a8 error:(id *)a9;
- (id)_timeZoneFromLocation:(id)a3;
- (id)bestQueryFromAggregatedQueries:(id)a3 error:(id *)a4;
- (id)bestQueryFromSortedQueryResults:(id)a3 bestAoiInferredMapItem:(id)a4 bestPoiInferredMapItem:(id)a5 error:(id *)a6;
- (id)bestQueryFromSortedQueryResults:(id)a3 bestInferredMapItem:(id)a4 error:(id *)a5;
- (id)collapseDedupedInferredMapItems:(id)a3 inferredMapItemDeduperState:(id)a4 error:(id *)a5;
- (id)dedupeQueryResults:(id)a3 error:(id *)a4;
- (id)filterByDistance:(id)a3 location:(id)a4 thresholdForUnknownLabel:(double)a5 error:(id *)a6;
- (id)getAllBluePOIQuerriesForStartDate:(id)a3 endDate:(id)a4 location:(id)a5 error:(id *)a6;
- (id)inferredMapItemsFromPlist:(id)a3 error:(id *)a4;
- (id)mapItemFromPlistDictionary:(id)a3;
- (id)mapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 error:(id *)a8;
- (id)mapItemsWithOptions:(id)a3 error:(id *)a4;
- (id)sortQueryResults:(id)a3 error:(id *)a4;
- (id)sortedAveragedQueryResults:(id)a3 baseDuration:(double)a4 error:(id *)a5;
- (unint64_t)numberOfRealtimeQueriesForInterval:(id)a3;
- (void)_submitPerformanceMetricsForResults:(id)a3 noFingerprints:(BOOL)a4 originalMaxNumberOfQueries:(unint64_t)a5 aoiConfidencePassThroughThreshold:(double)a6 poiConfidencePassThroughThreshold:(double)a7 fingerprintsCount:(unint64_t)a8 zeroAccessPointsFingerprintsCount:(unint64_t)a9 nonZeroAccessPointsFingerprintsCount:(unint64_t)a10 queryCount:(unint64_t)a11 firstResultQueryCount:(unint64_t)a12 error:(id)a13 visitInterval:(double)a14 visitSource:(int64_t)a15;
@end

@implementation RTMapItemProviderBluePOI

+ (NSArray)preferredAOICategories
{
  if (qword_27DB59E78 != -1)
  {
    dispatch_once(&qword_27DB59E78, &__block_literal_global_30);
  }

  v3 = _MergedGlobals_13;

  return v3;
}

void __50__RTMapItemProviderBluePOI_preferredAOICategories__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  if (!_MergedGlobals_13)
  {
    v2[0] = *MEMORY[0x277D0E7F0];
    v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
    v1 = _MergedGlobals_13;
    _MergedGlobals_13 = v0;
  }
}

- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 motionActivityManager:(id)a12 placeInferenceQueryStore:(id)a13 platform:(id)a14
{
  v32 = a14;
  v29 = a13;
  v27 = a12;
  v26 = a11;
  v25 = a10;
  v23 = a9;
  v24 = a8;
  v35 = a7;
  v22 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v31 = [[RTMapItemProviderBluePOIParameters alloc] initWithDefaultsManager:v20];
  v34 = [(RTMapItemProviderBluePOI *)self initWithDefaultsManager:v20 bluePOIMetricManager:v19 bluePOIMonitor:v18 bluePOITileManager:v22 distanceCalculator:v35 fingerprintManager:v24 locationManager:v23 mapItemManager:v25 mapServiceManager:v26 motionActivityManager:v27 parameters:v31 placeInferenceQueryStore:v29 platform:v32];

  return v34;
}

- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 fingerprintManager:(id)a8 locationManager:(id)a9 mapItemManager:(id)a10 mapServiceManager:(id)a11 motionActivityManager:(id)a12 parameters:(id)a13 placeInferenceQueryStore:(id)a14 platform:(id)a15
{
  v55 = *MEMORY[0x277D85DE8];
  v44 = a3;
  obj = a4;
  v20 = a4;
  v39 = a5;
  v21 = a5;
  v40 = a6;
  v22 = a7;
  v51 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a11;
  v47 = a12;
  v46 = a13;
  v45 = a14;
  v23 = a15;
  v42 = v23;
  v43 = v20;
  if (!v20)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v31 = 0;
    v25 = v40;
    v24 = self;
    goto LABEL_25;
  }

  if (!v21)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v25 = v40;
    v24 = self;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_24:

      v31 = 0;
LABEL_25:
      v26 = v44;
      goto LABEL_50;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: bluePOIMonitor";
LABEL_39:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_24;
  }

  v25 = v40;
  v24 = self;
  if (!v40)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = v44;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: bluePOITileManager";
LABEL_48:
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_49;
  }

  v26 = v44;
  if (!v44)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_48;
  }

  if (!v51)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: fingerprintManager";
    goto LABEL_48;
  }

  if (!v50)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_48;
  }

  if (!v49)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: mapItemManager";
    goto LABEL_48;
  }

  if (!v48)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_48;
  }

  if (!v47)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_48;
  }

  if (!v46)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: parameters";
    goto LABEL_48;
  }

  if (!v45)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: placeInferenceQueryStore";
    goto LABEL_48;
  }

  if (!v23)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: platform";
      goto LABEL_48;
    }

LABEL_49:

    v31 = 0;
    goto LABEL_50;
  }

  v52.receiver = self;
  v52.super_class = RTMapItemProviderBluePOI;
  v24 = [(RTMapItemProviderBase *)&v52 initWithDefaultsManager:v44 distanceCalculator:v22];
  if (v24)
  {
    v27 = [[RTInferredMapItemDeduper alloc] initWithDeduperFunction:&__block_literal_global_11];
    inferredMapItemDeduper = v24->_inferredMapItemDeduper;
    v24->_inferredMapItemDeduper = v27;

    if (v24->_inferredMapItemDeduper)
    {
      objc_storeStrong(&v24->_bluePOIMetricManager, obj);
      objc_storeStrong(&v24->_bluePOIMonitor, v39);
      objc_storeStrong(&v24->_bluePOITileManager, a6);
      objc_storeStrong(&v24->_fingerprintManager, a8);
      objc_storeStrong(&v24->_locationManager, a9);
      objc_storeStrong(&v24->_mapItemManager, a10);
      objc_storeStrong(&v24->_mapServiceManager, a11);
      objc_storeStrong(&v24->_motionActivityManager, a12);
      objc_storeStrong(&v24->_placeInferenceQueryStore, a14);
      objc_storeStrong(&v24->_platform, a15);
      objc_storeStrong(&v24->_parameters, a13);
      v26 = v44;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          parameters = v24->_parameters;
          *buf = 138412290;
          v54 = parameters;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderBluePOI with parameters: %@", buf, 0xCu);
        }
      }

      goto LABEL_19;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: _inferredMapItemDeduper";
    goto LABEL_39;
  }

LABEL_19:
  v24 = v24;
  v31 = v24;
LABEL_50:

  return v31;
}

uint64_t __261__RTMapItemProviderBluePOI_initWithDefaultsManager_bluePOIMetricManager_bluePOIMonitor_bluePOITileManager_distanceCalculator_fingerprintManager_locationManager_mapItemManager_mapServiceManager_motionActivityManager_parameters_placeInferenceQueryStore_platform___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 mapItem];
  v7 = [v4 mapItem];
  v8 = [v6 isEqualToMapItem:v7];

  v9 = [v5 mapItem];

  v10 = [v9 mapItemPlaceType];
  v11 = [v4 mapItem];

  v12 = [v11 mapItemPlaceType];
  if (v10 == v12)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (id)dedupeQueryResults:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = [[_RTMap alloc] initWithInput:v7];
    v9 = [(_RTMap *)v8 withBlock:&__block_literal_global_18];

    v10 = objc_alloc_init(RTInferredMapItemDeduperState);
    inferredMapItemDeduper = self->_inferredMapItemDeduper;
    v42 = 0;
    v12 = [(RTInferredMapItemDeduper *)inferredMapItemDeduper dedupeDoubleArrayOfInferredMapItems:v9 state:v10 error:&v42];
    v13 = v42;
    if (v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(a2);
        *buf = 138412546;
        v46 = v33;
        v47 = 2112;
        v48 = v13;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (a4)
      {
        v15 = v13;
        v16 = 0;
        *a4 = v13;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_30;
    }

    v41 = 0;
    v18 = [(RTMapItemProviderBluePOI *)self collapseDedupedInferredMapItems:v12 inferredMapItemDeduperState:v10 error:&v41];
    v19 = v41;
    if (v19)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        *buf = 138412546;
        v46 = v34;
        v47 = 2112;
        v48 = v19;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (a4)
      {
        v21 = v19;
        v16 = 0;
        *a4 = v19;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v22 = [v18 count];
      if (v22 == [v7 count])
      {
        v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        if ([v18 count])
        {
          v36 = v12;
          v38 = v9;
          v23 = 0;
          do
          {
            v24 = objc_alloc(MEMORY[0x277D011C0]);
            v25 = [v18 objectAtIndexedSubscript:v23];
            v26 = [v7 objectAtIndexedSubscript:v23];
            v27 = [v26 secondObject];
            v28 = [v24 initWithFirstObject:v25 secondObject:v27];

            [v16 addObject:v28];
            ++v23;
          }

          while (v23 < [v18 count]);
          v9 = v38;
          v19 = 0;
          v12 = v36;
        }

        goto LABEL_29;
      }

      v39 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D01448];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"collapsedDedupedInferredMapItems.count != queryResults.count";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v40 = [v39 errorWithDomain:v37 code:0 userInfo:v29];

      v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412546;
        v46 = v35;
        v47 = 2112;
        v48 = v40;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v31 = v40;
      if (a4)
      {
        v31 = v40;
        *a4 = v31;
      }
    }

    v16 = 0;
    goto LABEL_29;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queryResults", buf, 2u);
  }

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"queryResults");
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_31:

  return v16;
}

- (id)collapseDedupedInferredMapItems:(id)a3 inferredMapItemDeduperState:(id)a4 error:(id *)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: allDedupedInferredMapItems", buf, 2u);
    }

    if (a5)
    {
      v51 = @"allDedupedInferredMapItems";
LABEL_38:
      _RTErrorInvalidParameterCreate(v51);
      *a5 = v49 = 0;
      goto LABEL_50;
    }

LABEL_39:
    v49 = 0;
    goto LABEL_50;
  }

  if (!v9)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }

    if (a5)
    {
      v51 = @"inferredMapItemDeduperState";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v68 = a5;
  v11 = 0x277CBE000uLL;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v13 = v8;
  v66 = [v13 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v66)
  {
    v14 = *v83;
    v15 = 0x277CBE000uLL;
    v71 = v10;
    v69 = v13;
    v70 = v12;
    aSelector = a2;
    v65 = *v83;
    do
    {
      v16 = 0;
      do
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v67 = v16;
        v17 = *(*(&v82 + 1) + 8 * v16);
        v72 = [*(v11 + 2840) arrayWithCapacity:{objc_msgSend(v17, "count")}];
        v18 = [*(v15 + 2872) dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v78 objects:v93 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v79;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v79 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v78 + 1) + 8 * i);
              v25 = [v24 mapItem];
              v26 = [v25 identifier];

              v27 = [v18 objectForKeyedSubscript:v26];

              v28 = MEMORY[0x277CCABB0];
              if (v27)
              {
                v29 = [v18 objectForKeyedSubscript:v26];
                [v29 doubleValue];
                v31 = v30;
                [v24 confidence];
                v33 = [v28 numberWithDouble:v31 + v32];
                [v18 setObject:v33 forKeyedSubscript:v26];
              }

              else
              {
                [v24 confidence];
                v29 = [v28 numberWithDouble:?];
                [v18 setObject:v29 forKeyedSubscript:v26];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v78 objects:v93 count:16];
          }

          while (v21);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v34 = v18;
        v35 = [v34 countByEnumeratingWithState:&v74 objects:v92 count:16];
        v10 = v71;
        if (!v35)
        {
          goto LABEL_27;
        }

        v36 = v35;
        v37 = *v75;
        while (2)
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v75 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v74 + 1) + 8 * j);
            v40 = [v34 objectForKeyedSubscript:v39];
            [v40 doubleValue];
            v42 = v41;

            if (v42 > 1.0)
            {
              v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"confidence for uuid %@ was greater than 1", v39];
              v54 = MEMORY[0x277CCA9B8];
              v55 = *MEMORY[0x277D01448];
              v90 = *MEMORY[0x277CCA450];
              v91 = v53;
              v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              v57 = [v54 errorWithDomain:v55 code:0 userInfo:v56];

              v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                v62 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v87 = v62;
                v88 = 2112;
                v89 = v57;
                _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
              }

              v43 = v57;
              goto LABEL_46;
            }

            v73 = 0;
            v43 = [v71 mapItemForDedupedUUID:v39 error:&v73];
            v44 = v73;
            if (v44)
            {
              v57 = v44;
              v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v63 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v87 = v63;
                v88 = 2112;
                v89 = v57;
                _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
              }

              v53 = v57;
LABEL_46:
              v12 = v70;
              if (v68)
              {
                v60 = v57;
                *v68 = v57;
              }

              v49 = 0;
              v10 = v71;
              goto LABEL_49;
            }

            v45 = objc_alloc(MEMORY[0x277D01128]);
            v46 = [v34 objectForKeyedSubscript:v39];
            [v46 doubleValue];
            v48 = [v45 initWithMapItem:v43 confidence:objc_msgSend(v43 source:{"source"), v47}];

            [v72 addObject:v48];
          }

          v36 = [v34 countByEnumeratingWithState:&v74 objects:v92 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }

LABEL_27:

        v12 = v70;
        [v70 addObject:v72];

        v16 = v67 + 1;
        v13 = v69;
        v11 = 0x277CBE000;
        v14 = v65;
        v15 = 0x277CBE000;
      }

      while (v67 + 1 != v66);
      v66 = [v69 countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v66);
  }

  v49 = v12;
LABEL_49:

LABEL_50:

  return v49;
}

- (id)sortedAveragedQueryResults:(id)a3 baseDuration:(double)a4 error:(id *)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (![v8 count])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: correctedQueryResults.count != 0", buf, 2u);
    }

    if (a5)
    {
      v10 = @"correctedQueryResults.count != 0";
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (a4 < 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: baseDuration >= 0", buf, 2u);
    }

    if (a5)
    {
      v10 = @"baseDuration >= 0";
LABEL_11:
      _RTErrorInvalidParameterCreate(v10);
      *a5 = v12 = 0;
      goto LABEL_48;
    }

LABEL_30:
    v12 = 0;
    goto LABEL_48;
  }

  aSelector = a2;
  v69 = a5;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v75 = [MEMORY[0x277CBEB38] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v70 = v8;
  obj = v8;
  v73 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
  if (v73)
  {
    v72 = *v86;
    v14 = 0.0;
    do
    {
      v15 = 0;
      do
      {
        if (*v86 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v74 = v15;
        v16 = *(*(&v85 + 1) + 8 * v15);
        v17 = [v16 secondObject];
        [v17 duration];
        v19 = v18;

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v76 = [v16 firstObject];
        v20 = [v76 countByEnumeratingWithState:&v81 objects:v97 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v82;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v82 != v22)
              {
                objc_enumerationMutation(v76);
              }

              v24 = *(*(&v81 + 1) + 8 * i);
              v25 = MEMORY[0x277CCABB0];
              v26 = [v24 mapItem];
              v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "muid")}];

              v28 = [v13 objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = [v13 objectForKeyedSubscript:v27];
                v30 = objc_alloc(MEMORY[0x277CCA980]);
                [v24 confidence];
                v32 = v31;
                v33 = [v16 secondObject];
                [v33 duration];
                v35 = [v30 initWithDouble:v32 * (v34 + a4)];
                v36 = [v29 decimalNumberByAdding:v35];
                [v13 setObject:v36 forKeyedSubscript:v27];
              }

              else
              {
                v37 = objc_alloc(MEMORY[0x277CCA980]);
                [v24 confidence];
                v39 = v38;
                v40 = [v16 secondObject];
                [v40 duration];
                v42 = [v37 initWithDouble:v39 * (v41 + a4)];
                [v13 setObject:v42 forKeyedSubscript:v27];

                v29 = [v24 mapItem];
                [v75 setObject:v29 forKeyedSubscript:v27];
              }
            }

            v21 = [v76 countByEnumeratingWithState:&v81 objects:v97 count:16];
          }

          while (v21);
        }

        v14 = v14 + v19;

        v15 = v74 + 1;
      }

      while (v74 + 1 != v73);
      v73 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
    }

    while (v73);
  }

  else
  {
    v14 = 0.0;
  }

  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v44 = v13;
  v45 = [v44 countByEnumeratingWithState:&v77 objects:v96 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v78;
    while (2)
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v78 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v77 + 1) + 8 * j);
        v50 = [v44 objectForKeyedSubscript:v49];
        v51 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:{v14 + a4 * objc_msgSend(obj, "count")}];
        v52 = [v50 decimalNumberByDividingBy:v51];
        [v52 doubleValue];
        v54 = v53;

        v55 = objc_alloc(MEMORY[0x277D01128]);
        v56 = [v75 objectForKeyedSubscript:v49];
        v57 = [v75 objectForKeyedSubscript:v49];
        v58 = [v55 initWithMapItem:v56 confidence:objc_msgSend(v57 source:{"source"), v54}];

        if (!v58)
        {
          v61 = MEMORY[0x277CCA9B8];
          v62 = *MEMORY[0x277D01448];
          v94 = *MEMORY[0x277CCA450];
          v95 = @"inferredMapItem was nil";
          v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v60 = [v61 errorWithDomain:v62 code:0 userInfo:v63];

          v64 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v67 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v91 = v67;
            v92 = 2112;
            v93 = v60;
            _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          v8 = v70;
          if (v69)
          {
            v65 = v60;
            v12 = 0;
            *v69 = v60;
          }

          else
          {
            v12 = 0;
          }

          v59 = v44;
          goto LABEL_47;
        }

        [v43 addObject:v58];
      }

      v46 = [v44 countByEnumeratingWithState:&v77 objects:v96 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v59 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:0];
  v89 = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v12 = [v43 sortedArrayUsingDescriptors:v60];
  v8 = v70;
LABEL_47:

LABEL_48:

  return v12;
}

- (BOOL)chooseBestAoiInferredMapItem:(id *)a3 PoiInferredMapItem:(id *)a4 fromSortedAveragedResults:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = v9;
  if (!a3)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAoiInferredMapItem", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_30;
    }

    v21 = @"outAoiInferredMapItem";
    goto LABEL_29;
  }

  if (!a4)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outPoiInferredMapItem", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_30;
    }

    v21 = @"outPoiInferredMapItem";
LABEL_29:
    _RTErrorInvalidParameterCreate(v21);
    *a6 = v24 = 0;
    goto LABEL_31;
  }

  if (!v9)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedAveragedResults", buf, 2u);
    }

    if (a6)
    {
      v21 = @"sortedAveragedResults";
      goto LABEL_29;
    }

LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 mapItem];
        v18 = [v17 mapItemPlaceType];

        if (v18 != 1)
        {
          v23 = v16;
          *a4 = v16;
          goto LABEL_24;
        }

        if (!*a3)
        {
          v19 = v16;
          *a3 = v16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v24 = 1;
LABEL_31:

  return v24;
}

- (id)sortQueryResults:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    aSelector = a2;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v9)
    {
      v11 = v9;
      v40 = *v42;
      v36 = *MEMORY[0x277CCA450];
      v37 = *MEMORY[0x277D01448];
      *&v10 = 138412546;
      v33 = v10;
      while (2)
      {
        v12 = 0;
        v38 = v11;
        do
        {
          if (*v42 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:{0, v33}];
          v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"mapItem" ascending:0 comparator:&__block_literal_global_68];
          v16 = [v13 firstObject];
          v51[0] = v14;
          v51[1] = v15;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
          v18 = [v16 sortedArrayUsingDescriptors:v17];

          v19 = objc_alloc(MEMORY[0x277D011C0]);
          v20 = [v13 secondObject];
          v21 = [v19 initWithFirstObject:v18 secondObject:v20];

          if (v21)
          {
            [v8 addObject:v21];
          }

          else
          {
            v22 = v8;
            v23 = a4;
            v24 = MEMORY[0x277CCA9B8];
            v49 = v36;
            v50 = @"sortedQueryResult was nil";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            v26 = [v24 errorWithDomain:v37 code:0 userInfo:v25];

            v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v29 = NSStringFromSelector(aSelector);
              *buf = v33;
              v46 = v29;
              v47 = 2112;
              v48 = v26;
              _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
            }

            a4 = v23;
            if (v23)
            {
              v28 = v26;
              *v23 = v26;
            }

            v8 = v22;
            v11 = v38;
          }

          if (!v21)
          {

            v30 = 0;
            goto LABEL_19;
          }

          ++v12;
        }

        while (v11 != v12);
        v11 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v30 = v8;
LABEL_19:

    v7 = v35;
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queryResults", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"queryResults");
      *a4 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

uint64_t __51__RTMapItemProviderBluePOI_sortQueryResults_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mapItemPlaceType];
  v6 = [v4 mapItemPlaceType];

  v7 = 1;
  v8 = -1;
  v9 = 1;
  if (v5 != 2)
  {
    v9 = -1;
  }

  if (v6 != 1)
  {
    v8 = v9;
  }

  if (v5 != 1)
  {
    v7 = v8;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)bestQueryFromSortedQueryResults:(id)a3 bestInferredMapItem:(id)a4 error:(id *)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_39;
    }

    v29 = @"sortedQueryResults";
    goto LABEL_38;
  }

  if (![v9 count])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults.count > 0", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_39;
    }

    v29 = @"sortedQueryResults.count > 0";
LABEL_38:
    _RTErrorInvalidParameterCreate(v29);
    *a5 = v27 = 0;
    goto LABEL_47;
  }

  if (!v10)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bestInferredMapItem", buf, 2u);
    }

    if (a5)
    {
      v29 = @"bestInferredMapItem";
      goto LABEL_38;
    }

LABEL_39:
    v27 = 0;
    goto LABEL_47;
  }

  aSelector = a2;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v9;
  v44 = [v11 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (!v44)
  {

LABEL_41:
    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D01448];
    v57 = *MEMORY[0x277CCA450];
    v58 = @"bestQuery is nil";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:{1, aSelector}];
    v12 = [v32 errorWithDomain:v33 code:0 userInfo:v34];

    v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(aSelectora);
      *buf = 138412546;
      v54 = v38;
      v55 = 2112;
      v56 = v12;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (a5)
    {
      v36 = v12;
      v27 = 0;
      *a5 = v12;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_46;
  }

  v41 = v9;
  v12 = 0;
  obj = v11;
  v43 = *v50;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v50 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v49 + 1) + 8 * i);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = [v14 firstObject];
      v16 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v46;
        while (2)
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if ([(RTInferredMapItemDeduper *)self->_inferredMapItemDeduper inferredMapItem:*(*(&v45 + 1) + 8 * j) dedupesToInferredMapItem:v10 error:0])
            {
              if (v12)
              {
                v20 = [v14 secondObject];
                [v20 duration];
                v22 = v21;
                v23 = [v12 secondObject];
                [v23 duration];
                v25 = v24;

                if (v22 > v25)
                {
                  v26 = v14;

                  v12 = v26;
                }
              }

              else
              {
                v12 = v14;
              }

              goto LABEL_22;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }

    v44 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  }

  while (v44);

  v9 = v41;
  if (!v12)
  {
    goto LABEL_41;
  }

  v27 = [v12 firstObject];
LABEL_46:

LABEL_47:

  return v27;
}

- (BOOL)sortedQueryResult:(id)a3 correspondsToAoi:(id)a4 poi:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: sortedQueryResult";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_25;
  }

  if (!v9)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: bestAoiInferredMapItem";
    goto LABEL_21;
  }

  if (!v10)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: bestPoiInferredMapItem";
      goto LABEL_21;
    }

LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

  v12 = [v8 firstObject];
  v13 = [v12 firstObject];

  if (!v13)
  {
    goto LABEL_25;
  }

  inferredMapItemDeduper = self->_inferredMapItemDeduper;
  v15 = [v12 firstObject];
  LODWORD(inferredMapItemDeduper) = [(RTInferredMapItemDeduper *)inferredMapItemDeduper inferredMapItem:v9 dedupesToInferredMapItem:v15 error:0];

  if (!inferredMapItemDeduper)
  {
    goto LABEL_25;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v12;
  v16 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = 48;
    v28 = self;
    v18 = *v30;
LABEL_8:
    v19 = 0;
    while (1)
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v29 + 1) + 8 * v19);
      v21 = [v20 mapItem];
      v22 = [v21 mapItemPlaceType];

      if (v22 != 1)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v17)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v24 = v20;

    if (!v24)
    {
      goto LABEL_25;
    }

    v23 = [*(&v28->super.super.isa + v27) inferredMapItem:v11 dedupesToInferredMapItem:v24 error:0];
  }

  else
  {
LABEL_14:
    v23 = 0;
    v24 = v12;
  }

LABEL_26:
  return v23;
}

- (id)bestQueryFromSortedQueryResults:(id)a3 bestAoiInferredMapItem:(id)a4 bestPoiInferredMapItem:(id)a5 error:(id *)a6
{
  v67[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_35;
    }

    v30 = @"sortedQueryResults";
    goto LABEL_29;
  }

  if (![v11 count])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults.count > 0", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_35;
    }

    v30 = @"sortedQueryResults.count > 0";
LABEL_29:
    _RTErrorInvalidParameterCreate(v30);
    *a6 = v28 = 0;
    goto LABEL_36;
  }

  if (!(v12 | v13))
  {
    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D01448];
    v66 = *MEMORY[0x277CCA450];
    v67[0] = @"both bestAoiInferredMapItem and bestPoiInferredMapItem are nil.";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v35 = [v32 errorWithDomain:v33 code:0 userInfo:v34];

    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v47;
      v64 = 2112;
      v65 = v35;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    if (a6)
    {
      v37 = v35;
      *a6 = v35;
    }

LABEL_35:
    v28 = 0;
    goto LABEL_36;
  }

  v54 = v12;
  if (v12 && v13)
  {
    aSelector = a2;
    v53 = a6;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v52 = v11;
      v17 = 0;
      v18 = *v58;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v57 + 1) + 8 * i);
          if ([(RTMapItemProviderBluePOI *)self sortedQueryResult:v20 correspondsToAoi:v12 poi:v13, aSelector])
          {
            if (v17)
            {
              v21 = [v20 secondObject];
              [v21 duration];
              v23 = v22;
              v24 = [v17 secondObject];
              [v24 duration];
              v26 = v25;

              if (v23 > v26)
              {
                v27 = v20;

                v17 = v27;
              }

              v12 = v54;
            }

            else
            {
              v17 = v20;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v16);

      v11 = v52;
      if (v17)
      {
        v28 = [v17 firstObject];
LABEL_59:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v56 = 0;
    v44 = [(RTMapItemProviderBluePOI *)self bestQueryFromSortedQueryResults:v14 bestInferredMapItem:v12 error:&v56, aSelector];
    v17 = v56;
    if (v17)
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(aSelectora);
        *buf = 138412546;
        v63 = v49;
        v64 = 2112;
        v65 = v17;
        _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

        v12 = v54;
      }

      if (v53)
      {
        v46 = v17;
        v28 = 0;
        *v53 = v17;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = v44;
    }

    goto LABEL_59;
  }

  if (v12)
  {
    v39 = v12;
  }

  else
  {
    v39 = v13;
  }

  v55 = 0;
  v40 = [(RTMapItemProviderBluePOI *)self bestQueryFromSortedQueryResults:v11 bestInferredMapItem:v39 error:&v55];
  v41 = v55;
  if (v41)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v48;
      v64 = 2112;
      v65 = v41;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

      v12 = v54;
    }

    if (a6)
    {
      v43 = v41;
      v28 = 0;
      *a6 = v41;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = v40;
  }

LABEL_36:

  return v28;
}

- (id)bestQueryFromAggregatedQueries:(id)a3 error:(id *)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aggregatedQueries", buf, 2u);
    }

    if (a4)
    {
      v30 = @"aggregatedQueries";
LABEL_29:
      _RTErrorInvalidParameterCreate(v30);
      *a4 = v28 = 0;
      goto LABEL_107;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_107;
  }

  if (![v6 count])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aggregatedQueries.count > 0", buf, 2u);
    }

    if (a4)
    {
      v30 = @"aggregatedQueries.count > 0";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v99 = a4;
  v100 = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v7 count])
  {
    v8 = 0;
    v9 = MEMORY[0x277D86220];
    v103 = v7;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v8];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = NSStringFromSelector(a2);
          v13 = [v10 secondObject];
          [v13 duration];
          *buf = 138412802;
          v114 = v12;
          v115 = 2048;
          v116 = v8;
          v117 = 2048;
          v118 = v14;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, query, %lu, duration %.3f", buf, 0x20u);
        }
      }

      v15 = [v10 firstObject];
      v16 = [v15 count];

      if (v16)
      {
        v17 = 0;
        do
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = NSStringFromSelector(a2);
              v20 = [v10 firstObject];
              v21 = [v20 objectAtIndexedSubscript:v17];
              *buf = 138412803;
              v114 = v19;
              v115 = 2048;
              v116 = v17;
              v117 = 2117;
              v118 = v21;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, inferredMapItem %lu, inferredMapItem %{sensitive}@", buf, 0x20u);
            }
          }

          ++v17;
          v22 = [v10 firstObject];
          v23 = [v22 count];
        }

        while (v17 < v23);
      }

      ++v8;
      v7 = v103;
    }

    while (v8 < [v103 count]);
  }

  v112 = 0;
  v24 = [(RTMapItemProviderBluePOI *)v100 dedupeQueryResults:v7 error:&v112];
  v25 = v112;
  v26 = v25;
  if (v25)
  {
    if (v99)
    {
      v27 = v25;
      v28 = 0;
      *v99 = v26;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v104 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v24 count])
    {
      v32 = 0;
      v33 = MEMORY[0x277D86220];
      v101 = v24;
      do
      {
        v34 = [v24 objectAtIndexedSubscript:v32];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = NSStringFromSelector(a2);
            v37 = [v34 secondObject];
            [v37 duration];
            *buf = 138412802;
            v114 = v36;
            v115 = 2048;
            v116 = v32;
            v117 = 2048;
            v118 = v38;
            _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, corrected query, %lu, duration %.3f", buf, 0x20u);
          }
        }

        v39 = [v34 firstObject];
        v40 = [v39 count];

        if (v40)
        {
          v41 = 0;
          do
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = NSStringFromSelector(a2);
                v44 = [v34 firstObject];
                v45 = [v44 objectAtIndexedSubscript:v41];
                *buf = 138412803;
                v114 = v43;
                v115 = 2048;
                v116 = v41;
                v117 = 2117;
                v118 = v45;
                _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, inferredMapItem %lu, inferredMapItem %{sensitive}@", buf, 0x20u);
              }
            }

            ++v41;
            v46 = [v34 firstObject];
            v47 = [v46 count];
          }

          while (v41 < v47);
        }

        ++v32;
        v24 = v101;
      }

      while (v32 < [v101 count]);
    }

    [(RTMapItemProviderBluePOIParameters *)v100->_parameters baseDuration];
    v111 = 0;
    v48 = [(RTMapItemProviderBluePOI *)v100 sortedAveragedQueryResults:v24 baseDuration:&v111 error:?];
    v49 = v111;
    v50 = v49;
    if (v49)
    {
      if (v99)
      {
        v51 = v49;
        v28 = 0;
        *v99 = v50;
      }

      else
      {
        v28 = 0;
      }

      v7 = v104;
    }

    else
    {
      v102 = v24;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v48 count])
      {
        v52 = 0;
        v53 = MEMORY[0x277D86220];
        do
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = NSStringFromSelector(a2);
              v56 = [v48 objectAtIndexedSubscript:v52];
              *buf = 138412803;
              v114 = v55;
              v115 = 2048;
              v116 = v52;
              v117 = 2117;
              v118 = v56;
              _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%@, averaged inferredMapItem, %lu, %{sensitive}@", buf, 0x20u);
            }
          }

          ++v52;
        }

        while (v52 < [v48 count]);
      }

      v109 = 0;
      v110 = 0;
      v108 = 0;
      [(RTMapItemProviderBluePOI *)v100 chooseBestAoiInferredMapItem:&v110 PoiInferredMapItem:&v109 fromSortedAveragedResults:v48 error:&v108];
      v57 = v110;
      v58 = v109;
      v59 = v108;
      v60 = v59;
      if (v59)
      {
        v7 = v104;
        v24 = v102;
        if (v99)
        {
          v61 = v59;
          v28 = 0;
          *v99 = v60;
        }

        else
        {
          v28 = 0;
        }

        v50 = 0;
      }

      else
      {
        v7 = v104;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v62 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = NSStringFromSelector(a2);
            *buf = 138412803;
            v114 = v63;
            v115 = 2117;
            v116 = v57;
            v117 = 2117;
            v118 = v58;
            _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, bestAoiInferredMapItem, %{sensitive}@, bestPoiInferredMapItem, %{sensitive}@", buf, 0x20u);
          }
        }

        v107 = 0;
        v24 = v102;
        v98 = [(RTMapItemProviderBluePOI *)v100 sortQueryResults:v102 error:&v107];
        v64 = v107;
        v65 = v64;
        if (v64)
        {
          v50 = 0;
          if (v99)
          {
            v66 = v64;
            v28 = 0;
            *v99 = v65;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v94 = v48;
          v96 = v58;
          v97 = v57;
          v67 = v98;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v98 count])
          {
            v68 = 0;
            v69 = MEMORY[0x277D86220];
            do
            {
              v70 = [v67 objectAtIndexedSubscript:{v68, v94}];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                v71 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  v72 = NSStringFromSelector(a2);
                  v73 = [v70 secondObject];
                  [v73 duration];
                  *buf = 138412802;
                  v114 = v72;
                  v115 = 2048;
                  v116 = v68;
                  v117 = 2048;
                  v118 = v74;
                  _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, sorted query, %lu, duration %.3f", buf, 0x20u);
                }
              }

              v75 = [v70 firstObject];
              v76 = [v75 count];

              if (v76)
              {
                v77 = 0;
                do
                {
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                  {
                    v78 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                    {
                      v79 = NSStringFromSelector(a2);
                      v80 = [v70 firstObject];
                      v81 = [v80 objectAtIndexedSubscript:v77];
                      *buf = 138412803;
                      v114 = v79;
                      v115 = 2048;
                      v116 = v77;
                      v117 = 2117;
                      v118 = v81;
                      _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, inferredMapItem %lu, inferredMapItem %{sensitive}@", buf, 0x20u);
                    }
                  }

                  ++v77;
                  v82 = [v70 firstObject];
                  v83 = [v82 count];
                }

                while (v77 < v83);
              }

              ++v68;
              v67 = v98;
            }

            while (v68 < [v98 count]);
          }

          v106 = 0;
          v58 = v96;
          v84 = [(RTMapItemProviderBluePOI *)v100 bestQueryFromSortedQueryResults:v67 bestAoiInferredMapItem:v57 bestPoiInferredMapItem:v96 error:&v106, v94];
          v85 = v106;
          v86 = v85;
          if (v85)
          {
            v24 = v102;
            v60 = 0;
            if (v99)
            {
              v87 = v85;
              v28 = 0;
              *v99 = v86;
            }

            else
            {
              v28 = 0;
            }

            v65 = 0;
            v48 = v95;
          }

          else
          {
            v65 = 0;
            v48 = v95;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO) && [v84 count])
            {
              v88 = 0;
              v89 = MEMORY[0x277D86220];
              do
              {
                if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                {
                  v90 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                  {
                    v91 = NSStringFromSelector(a2);
                    v92 = [v84 objectAtIndexedSubscript:v88];
                    *buf = 138412803;
                    v114 = v91;
                    v115 = 2048;
                    v116 = v88;
                    v117 = 2117;
                    v118 = v92;
                    _os_log_impl(&dword_2304B3000, v90, OS_LOG_TYPE_INFO, "%@, best inferredMapItems, %lu, %{sensitive}@", buf, 0x20u);

                    v65 = 0;
                  }
                }

                ++v88;
              }

              while (v88 < [v84 count]);
            }

            v28 = v84;
            v24 = v102;
            v58 = v96;
            v57 = v97;
            v60 = 0;
          }

          v7 = v104;
          v50 = 0;
        }
      }
    }

    v26 = 0;
  }

LABEL_107:

  return v28;
}

- (id)mapItemsFromLocations:(id)a3 accessPoints:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(id)a7 error:(id *)a8
{
  v72[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  [v14 enumerateObjectsUsingBlock:&__block_literal_global_95_0];
  [v13 enumerateObjectsUsingBlock:&__block_literal_global_99_0];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__36;
  v63 = __Block_byref_object_dispose__36;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__36;
  v57 = __Block_byref_object_dispose__36;
  v58 = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = [(RTMapItemProviderBluePOI *)self mapServiceManager];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_100;
  v49[3] = &unk_2788C4490;
  v51 = &v59;
  v52 = &v53;
  v17 = v15;
  v50 = v17;
  [v16 fetchMapItemsFromLocations:v13 accessPoints:v14 startDate:v46 endDate:v47 options:v48 handler:v49];

  v18 = v17;
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v18, v20))
  {
    v21 = [MEMORY[0x277CBEAA8] now];
    [v21 timeIntervalSinceDate:v19];
    v23 = v22;
    v24 = objc_opt_new();
    v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_430];
    v26 = [MEMORY[0x277CCACC8] callStackSymbols];
    v27 = [v26 filteredArrayUsingPredicate:v25];
    v28 = [v27 firstObject];

    [v24 submitToCoreAnalytics:v28 type:1 duration:v23];
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v30 = MEMORY[0x277CCA9B8];
    v72[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v72 count:1];
    v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

    if (v32)
    {
      v33 = v32;

      v34 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = 1;
LABEL_8:

  v35 = v32;
  if ((v34 & 1) == 0)
  {
    objc_storeStrong(v54 + 5, v32);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [v13 firstObject];
      v38 = [v14 count];
      v39 = [v60[5] count];
      v40 = v54[5];
      *buf = 138740739;
      *&buf[4] = v37;
      v66 = 2048;
      v67 = v38;
      v68 = 2048;
      v69 = v39;
      v70 = 2112;
      v71 = v40;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "blue poi request at location, %{sensitive}@, access points, %lu, mapItems, %lu, error, %@", buf, 0x2Au);
    }
  }

  [v60[5] enumerateObjectsUsingBlock:&__block_literal_global_105];
  if (a8)
  {
    *a8 = v54[5];
  }

  v41 = [_RTMap alloc];
  v42 = [(_RTMap *)v41 initWithInput:v60[5]];
  v43 = [(_RTMap *)v42 withBlock:&__block_literal_global_109];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  return v43;
}

void __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "accessPoint %lu, %@", &v6, 0x16u);
    }
  }
}

void __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "location %lu, %@", &v6, 0x16u);
    }
  }
}

void __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_100(uint64_t a1, void *a2, void *a3)
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

void __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_102(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a3 + 1;
      v7 = [v4 extendedAttributes];
      [v7 wifiConfidence];
      v9 = v8;
      v10 = [v4 extendedAttributes];
      v11 = 134218755;
      v12 = v6;
      v13 = 2117;
      v14 = v4;
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = [v10 wifiFingerprintLabelType];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "mapItem, %lu, %{sensitive}@, confidence, %lf, type, %ld", &v11, 0x2Au);
    }
  }
}

id __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_106(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01128];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extendedAttributes];
  [v5 wifiConfidence];
  v7 = [v4 initWithMapItem:v3 confidence:objc_msgSend(v3 source:{"source"), v6}];

  return v7;
}

- (id)mapItemFromPlistDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"name"];
  v37 = [v3 objectForKey:@"category"];
  v36 = [v3 objectForKey:@"categoryMUID"];
  v5 = [v3 objectForKey:@"mapItemPlaceType"];
  if (v5)
  {
    v6 = [v3 objectForKey:@"mapItemPlaceType"];
    v32 = [v6 intValue];
  }

  else
  {
    v32 = 1000;
  }

  v7 = [v3 objectForKey:@"muid"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v3 objectForKey:@"resultProviderID"];
  v34 = [v9 integerValue];

  v10 = [v3 objectForKey:@"latitude"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 objectForKey:@"longitude"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 objectForKey:@"labelType"];
  v33 = v16;
  if ([v16 caseInsensitiveCompare:@"unknown"])
  {
    if ([v16 caseInsensitiveCompare:@"poi"])
    {
      v17 = 2 * ([v16 caseInsensitiveCompare:@"aoi"] == 0);
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [v18 dateByAddingTimeInterval:4838400.0];
  v20 = objc_alloc(MEMORY[0x277D01060]);
  v21 = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v29) = 0;
  v31 = [v20 initWithIdentifier:v21 geoAddressData:0 subPremises:0 subThoroughfare:0 thoroughfare:v4 subLocality:0 locality:0 subAdministrativeArea:0 administrativeArea:0 administrativeAreaCode:0 postalCode:0 country:0 countryCode:0 inlandWater:0 ocean:0 areasOfInterest:0 isIsland:v29 creationDate:v18 expirationDate:v19 iso3166CountryCode:0 iso3166SubdivisionCode:0];

  v22 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:v18 longitude:v12 horizontalUncertainty:v15 date:1.0];
  v23 = [objc_alloc(MEMORY[0x277D011A8]) initWithAddressIdentifier:0 isMe:0 wifiConfidence:v17 wifiFingerprintLabelType:1.0];
  v24 = objc_alloc(MEMORY[0x277D011A0]);
  [MEMORY[0x277CCAD78] UUID];
  v26 = v25 = v4;
  v27 = [MEMORY[0x277CBEA90] data];
  LOBYTE(v30) = 0;
  v35 = [v24 initWithIdentifier:v26 name:v25 category:v37 categoryMUID:v36 address:v31 location:v22 source:0x4000 mapItemPlaceType:v32 muid:v8 resultProviderID:v34 geoMapItemHandle:v27 geoMapItemIdentifier:0 creationDate:v18 expirationDate:v19 extendedAttributes:v23 displayLanguage:0 disputed:v30];

  return v35;
}

- (id)inferredMapItemsFromPlist:(id)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = 1;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:&v27];

  if (v9 && (v27 & 1) == 0)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v7];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKey:@"Inferred Map Items"];
      v14 = [MEMORY[0x277CBEB18] array];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __60__RTMapItemProviderBluePOI_inferredMapItemsFromPlist_error___block_invoke;
      v25[3] = &unk_2788C4A48;
      v25[4] = self;
      v15 = v14;
      v26 = v15;
      [v13 enumerateObjectsUsingBlock:v25];
      v16 = v26;
      v17 = v15;

      v10 = v17;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create dictionary from plist file, %@", v7];
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = v13;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v17 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

      v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        v29 = v24;
        v30 = 2112;
        v31 = v17;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (a4)
      {
        v22 = v17;
        v10 = 0;
        *a4 = v17;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__RTMapItemProviderBluePOI_inferredMapItemsFromPlist_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectForKeyedSubscript:@"mapItem"];
  v4 = [*(a1 + 32) mapItemFromPlistDictionary:v9];
  v5 = [v3 objectForKey:@"confidence"];

  [v5 doubleValue];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x277D01128]) initWithMapItem:v4 confidence:0x4000 source:v7];
  [*(a1 + 40) addObject:v8];
}

- (BOOL)_shouldPerformServerBluePOIForLocalBluePOIError:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 userInfo];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __76__RTMapItemProviderBluePOI__shouldPerformServerBluePOIForLocalBluePOIError___block_invoke;
  v36[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
  aSelector = a2;
  v36[4] = a2;
  [v7 enumerateKeysAndObjectsUsingBlock:v36];

  [v6 flattenErrors];
  obj = v28 = v6;
  v32 = 0u;
  v33 = 0u;
  v8 = v6 != 0;
  v34 = 0u;
  v35 = 0u;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = *v33;
    v11 = @"HTTPStatus";
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 userInfo];
        v15 = [v14 objectForKey:v11];
        if (v15)
        {
          v4 = [v13 userInfo];
          v3 = [v4 objectForKey:v11];
          if ([v3 isEqual:&unk_28459CF90])
          {
            v16 = 1;
LABEL_17:

            goto LABEL_18;
          }
        }

        v17 = [v13 domain];
        if ([v17 isEqualToString:@"NSURLErrorDomain"] && objc_msgSend(v13, "code") == -1009)
        {
          v16 = 1;
        }

        else
        {
          v31 = v8;
          v18 = v3;
          v19 = v4;
          v20 = v10;
          v21 = v11;
          v22 = [v13 domain];
          if ([v22 isEqualToString:@"GEOErrorDomain"])
          {
            v16 = [v13 code] == -2000;
          }

          else
          {
            v16 = 0;
          }

          v11 = v21;
          v10 = v20;
          v4 = v19;
          v3 = v18;
          v8 = v31;
        }

        if (v15)
        {
          goto LABEL_17;
        }

LABEL_18:

        v8 &= !v16;
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(aSelector);
      v25 = @"NO";
      *buf = 138412802;
      v38 = v24;
      v39 = 2112;
      if (v8)
      {
        v25 = @"YES";
      }

      v40 = v25;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, shouldPerformServerBluePOI, %@, error, %@", buf, 0x20u);
    }
  }

  return v8;
}

void __76__RTMapItemProviderBluePOI__shouldPerformServerBluePOIForLocalBluePOIError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 32));
      v10 = 138413058;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = objc_opt_class();
      v9 = v17;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, userInfo, key, %@, value, %@, type, %@", &v10, 0x2Au);
    }
  }
}

- (id)mapItemsWithOptions:(id)a3 error:(id *)a4
{
  v114 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    v7 = [(RTMapItemProviderBluePOIParameters *)self->_parameters injectedPlistPath];

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = NSStringFromSelector(a2);
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "~~~ %@, EVAL MODE ~~~", buf, 0xCu);
        }
      }

      v10 = [(RTMapItemProviderBluePOIParameters *)self->_parameters injectedPlistPath];
      v105 = 0;
      v11 = [(RTMapItemProviderBluePOI *)self inferredMapItemsFromPlist:v10 error:&v105];
      v12 = v105;

      if (v12)
      {
        if (a4)
        {
          v13 = v12;
          v14 = 0;
          *a4 = v12;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = v11;
      }

      goto LABEL_59;
    }
  }

  v15 = [v6 locations];
  if (!v15 || ([v6 accessPoints], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v41 = [v6 startDate];
    if (v41)
    {
      v42 = [v6 endDate];
      if (v42)
      {
        v43 = [v6 startDate];
        v44 = [v6 endDate];
        v45 = [v43 isAfterDate:v44];

        if (!v45)
        {
          v46 = objc_alloc(MEMORY[0x277CCA970]);
          v47 = [v6 startDate];
          v48 = [v6 endDate];
          v11 = [v46 initWithStartDate:v47 endDate:v48];

          v49 = [(RTMapItemProviderBluePOI *)self numberOfRealtimeQueriesForInterval:v11];
          v50 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries]- v49;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = NSStringFromSelector(a2);
              v53 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries];
              *buf = 138413058;
              *&buf[4] = v52;
              *&buf[12] = 2048;
              *&buf[14] = v53;
              *&buf[22] = 2048;
              v107 = v49;
              v108 = 2048;
              v109 = v50;
              _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, maxNumberOfQueries, %lu, realtime usage, %lu, hindsight usage, %lu", buf, 0x2Au);
            }
          }

          [v6 distance];
          v55 = v54;
          v56 = [v6 location];
          v57 = [v6 startDate];
          v58 = [v6 endDate];
          v14 = [(RTMapItemProviderBluePOI *)self _mapItemsWithinDistance:v56 location:v57 startDate:v58 endDate:v50 maxQueryAttemps:a4 error:v55];

          if (!v14)
          {
            goto LABEL_59;
          }

          [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidencePassThroughThreshold];
          v60 = v59;
          [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidenceConsiderThreshold];
          v62 = v61;
          [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidencePassThroughThreshold];
          v64 = v63;
          [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidenceConsiderThreshold];
          v66 = [(RTMapItemProviderBluePOI *)self _filterByConfidence:v14 aoiConfidencePassThroughThreshold:a4 aoiConfidenceConsiderThreshold:v60 poiConfidencePassThroughThreshold:v62 poiConfidenceConsiderThreshold:v64 error:v65];

          goto LABEL_48;
        }
      }

      else
      {
      }
    }

    if (!a4)
    {
      v14 = 0;
      goto LABEL_60;
    }

    v79 = MEMORY[0x277CCA9B8];
    v110 = *MEMORY[0x277CCA450];
    v111 = @"requires a valid date range.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    [v79 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    *a4 = v14 = 0;
    goto LABEL_59;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = objc_opt_new();
    v18 = [v6 location];

    if (v18)
    {
      v19 = [v6 location];
      [v17 addObject:v19];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v107) = 0;
    v20 = [v6 locations];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __54__RTMapItemProviderBluePOI_mapItemsWithOptions_error___block_invoke;
    v102[3] = &unk_2788C8148;
    v104 = buf;
    v99 = v17;
    v103 = v99;
    [v20 enumerateObjectsUsingBlock:v102];

    v21 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    v22 = [v21 requestCollectQueryEvent];

    v23 = [(RTMapItemProviderBluePOI *)self bluePOIMonitor];
    v24 = [v6 location];
    v25 = [v6 accessPoints];
    v26 = *(*&buf[8] + 24);
    v101 = 0;
    v27 = [v23 fetchLocalMapItemsFromReferenceLocation:v24 locations:v99 accessPoints:v25 signalEnv:v26 skipAggregation:objc_msgSend(v6 collectMetrics:"fidelityPolicy") == 64 error:{v22, &v101}];
    v11 = v101;

    if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *v112 = 138412290;
        v113 = v11;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "localBluePOIError, %@", v112, 0xCu);
      }
    }

    v29 = [(RTMapItemProviderBluePOI *)self _shouldPerformServerBluePOIForLocalBluePOIError:v11];
    v30 = ([v6 fidelityPolicy] != 64) & v29;
    if (v22)
    {
      v31 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      [v31 setEventMetricsValue:@"unknown" forKey:@"appIdentifier"];

      v32 = [v6 clientIdentifier];
      if (v32)
      {
        v33 = [v6 clientIdentifier];
        v34 = [v33 hasPrefix:@"com.apple"];

        if (v34)
        {
          v35 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
          v36 = [v6 clientIdentifier];
          [v35 setEventMetricsValue:v36 forKey:@"appIdentifier"];
        }
      }

      v37 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      v38 = [MEMORY[0x277CCABB0] numberWithBool:v30];
      [v37 setEventMetricsValue:v38 forKey:@"serverFallback"];

      v39 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      [v39 stopCollectQueryEvent];
    }

    _Block_object_dispose(buf, 8);
    v40 = v27;
    if (!v30)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v27 = 0;
    v11 = 0;
  }

  v67 = objc_alloc(MEMORY[0x277D011B0]);
  v68 = [v6 useBackground];
  v69 = objc_opt_class();
  v70 = NSStringFromClass(v69);
  v71 = [v6 clientIdentifier];
  v72 = [v67 initWithUseBackgroundTraits:v68 analyticsIdentifier:v70 clientIdentifier:v71];

  v73 = [v6 fidelityPolicy];
  v74 = [v6 locations];
  v75 = [v6 accessPoints];
  v76 = [v6 location];
  v77 = [(RTMapItemProviderBluePOI *)self _mapItemsWithFidelityPolicy:v73 locations:v74 accessPoints:v75 referenceLocation:v76 options:v72 error:a4];

  if ([v27 count])
  {
    v78 = [v27 arrayByAddingObjectsFromArray:v77];
  }

  else
  {
    v78 = v77;
  }

  v40 = v78;

LABEL_46:
  if (!v40)
  {
LABEL_56:
    v14 = 0;
LABEL_59:

    goto LABEL_60;
  }

  [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidencePassThroughThreshold];
  v81 = v80;
  [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidenceConsiderThreshold];
  v83 = v82;
  [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidencePassThroughThreshold];
  v85 = v84;
  [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidenceConsiderThreshold];
  v66 = [(RTMapItemProviderBluePOI *)self _filterByConfidence:v40 aoiConfidencePassThroughThreshold:a4 aoiConfidenceConsiderThreshold:v81 poiConfidencePassThroughThreshold:v83 poiConfidenceConsiderThreshold:v85 error:v86];

LABEL_48:
  if (!v66)
  {
    goto LABEL_56;
  }

  v87 = [(RTMapItemProviderBluePOI *)self parameters];
  v88 = [v87 aoiCategoriesToSuppressContainingPOIs];
  v14 = [(RTMapItemProviderBluePOI *)self _filterByCategories:v66 categories:v88];

  if (v14)
  {
    [v6 distance];
    if (v89 > 0.0)
    {
      v90 = [v6 location];
      v91 = v90 == 0;

      if (!v91)
      {
        v92 = [v6 location];
        [v6 distance];
        v93 = [(RTMapItemProviderBluePOI *)self filterByDistance:v14 location:v92 thresholdForUnknownLabel:a4 error:?];

        v14 = v93;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v94 = objc_opt_class();
        v95 = NSStringFromClass(v94);
        v96 = NSStringFromSelector(a2);
        v97 = [v14 count];
        *buf = 138412802;
        *&buf[4] = v95;
        *&buf[12] = 2112;
        *&buf[14] = v96;
        *&buf[22] = 2048;
        v107 = v97;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, inferredMapItems.count, %lu", buf, 0x20u);
      }

      goto LABEL_59;
    }
  }

LABEL_60:

  return v14;
}

void __54__RTMapItemProviderBluePOI_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!*(*(*(a1 + 40) + 8) + 24) && [v4 signalEnvironmentType])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v4 signalEnvironmentType];
  }

  v3 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v4];
  [*(a1 + 32) addObject:v3];
}

- (id)_mapItemsWithFidelityPolicy:(unint64_t)a3 locations:(id)a4 accessPoints:(id)a5 referenceLocation:(id)a6 options:(id)a7 error:(id *)a8
{
  v67[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 count])
  {
    aSelector = a2;
    v55 = v16;
    v17 = [v13 firstObject];
    v18 = [v17 timestamp];

    v19 = [v13 lastObject];
    v20 = [v19 timestamp];

    [v20 timeIntervalSinceDate:v18];
    v22 = v21;
    v52 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v65 = v52;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v24 = [v14 sortedArrayUsingDescriptors:v23];

    v25 = [v24 firstObject];
    v26 = [v25 date];
    [v18 timeIntervalSinceDate:v26];
    v28 = v27;

    v29 = [v24 lastObject];
    v30 = [v29 date];
    [v18 timeIntervalSinceDate:v30];
    v32 = v31;

    +[RTMapItemProviderBluePOIWiFiScanMetrics submitBluePOIWiFiScanMetricsWithFingerprintsCount:fingerprintsZeroAccessPointsCount:fingerprintsNonZeroAccessPointsCount:isFingerprintWindowFallback:timeIntervalSinceEarliestFingerprint:timeIntervalSinceLatestFingerprint:totalAccessPointsCount:visitInterval:visitSource:](RTMapItemProviderBluePOIWiFiScanMetrics, "submitBluePOIWiFiScanMetricsWithFingerprintsCount:fingerprintsZeroAccessPointsCount:fingerprintsNonZeroAccessPointsCount:isFingerprintWindowFallback:timeIntervalSinceEarliestFingerprint:timeIntervalSinceLatestFingerprint:totalAccessPointsCount:visitInterval:visitSource:", [v14 count], 0, objc_msgSend(v14, "count"), 0, objc_msgSend(v14, "count"), 1, v28, v32, v22);
    if ([v14 count])
    {
      v33 = objc_opt_new();
      v34 = v33;
      if (v15)
      {
        [v33 addObject:v15];
      }

      v51 = v15;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __111__RTMapItemProviderBluePOI__mapItemsWithFidelityPolicy_locations_accessPoints_referenceLocation_options_error___block_invoke;
      v57[3] = &unk_2788C8170;
      v35 = v34;
      v58 = v35;
      [v13 enumerateObjectsUsingBlock:v57];
      v56 = 0;
      v36 = [(RTMapItemProviderBluePOI *)self mapItemsFromLocations:v35 accessPoints:v14 startDate:v18 endDate:v20 options:v55 error:&v56];
      v37 = v56;
      v38 = v37;
      if (v37)
      {
        if (a8)
        {
          v39 = v37;
          *a8 = v38;
        }

        v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v54 = NSStringFromClass(v47);
          v48 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v60 = v54;
          v61 = 2112;
          v62 = v48;
          v49 = v48;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, %@, mapItemsFromLocationsAccessPointsErrors", buf, 0x16u);
        }

        v41 = 0;
      }

      else
      {
        v41 = v36;
      }
    }

    else
    {
      if (!a8)
      {
        v41 = 0;
        goto LABEL_18;
      }

      v51 = v15;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277D01448];
      v63 = *MEMORY[0x277CCA450];
      v64 = @"requires accessPoints.";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      [v44 errorWithDomain:v45 code:7 userInfo:v35];
      *a8 = v41 = 0;
    }

    v15 = v51;
LABEL_18:

    v16 = v55;
    goto LABEL_19;
  }

  if (a8)
  {
    v42 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277D01448];
    v66 = *MEMORY[0x277CCA450];
    v67[0] = @"requires locations.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    [v42 errorWithDomain:v43 code:7 userInfo:v18];
    *a8 = v41 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v41 = 0;
LABEL_20:

  return v41;
}

void __111__RTMapItemProviderBluePOI__mapItemsWithFidelityPolicy_locations_accessPoints_referenceLocation_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01160];
  v4 = a2;
  v5 = [[v3 alloc] initWithCLLocation:v4];

  [*(a1 + 32) addObject:v5];
}

- (id)_filterOutEmptyFingerprintsFromFingerprints:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAC30];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __80__RTMapItemProviderBluePOI__filterOutEmptyFingerprintsFromFingerprints_endDate___block_invoke;
  v16 = &unk_2788C8198;
  v17 = v6;
  v18 = self;
  v8 = v6;
  v9 = a3;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [v9 filteredArrayUsingPredicate:{v10, v13, v14, v15, v16}];

  return v11;
}

BOOL __80__RTMapItemProviderBluePOI__filterOutEmptyFingerprintsFromFingerprints_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 fingerprintManager];
  v6 = [RTPOIHarvestUtilities accessPointsForFingerprint:v4 endDate:v2 fingerprintManager:v5 error:0];

  v7 = [v6 count] != 0;
  return v7;
}

- (unint64_t)numberOfRealtimeQueriesForInterval:(id)a3
{
  v69[1] = *MEMORY[0x277D85DE8];
  v44 = a3;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__36;
  v62 = __Block_byref_object_dispose__36;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__36;
  v56 = __Block_byref_object_dispose__36;
  v57 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(RTMapItemProviderBluePOI *)self placeInferenceQueryStore];
  v45 = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __63__RTMapItemProviderBluePOI_numberOfRealtimeQueriesForInterval___block_invoke;
  v48 = &unk_2788C4490;
  v50 = &v58;
  v51 = &v52;
  v7 = v5;
  v49 = v7;
  [v6 fetchPlaceInferenceQueriesWithDateInterval:v44 ascending:1 limit:&unk_28459CFA8 handler:&v45];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_430];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v69[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v69 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v53 + 5, v22);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      v28 = [v59[5] count];
      v29 = v53[5];
      *buf = 138412802;
      *&buf[4] = v27;
      v65 = 2048;
      v66 = v28;
      v67 = 2112;
      v68 = v29;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, fetched place inference queries, %lu, error, %@", buf, 0x20u);
    }
  }

  if (v53[5] || ![v59[5] count])
  {
    v30 = 0;
  }

  else
  {
    v32 = [v59[5] objectAtIndexedSubscript:0];
    v33 = [v32 sourceIdentifier];
    v30 = v33 == @"com.apple.CoreRoutine.visitManager";

    for (i = 1; i < [v59[5] count]; ++i)
    {
      v35 = [v59[5] objectAtIndexedSubscript:i];
      v36 = [v35 sourceIdentifier];
      v37 = v36 == @"com.apple.CoreRoutine.visitManager";

      if (v37)
      {
        v38 = [v59[5] objectAtIndexedSubscript:i];
        v39 = [v38 date];
        v40 = [v59[5] objectAtIndexedSubscript:i - 1];
        v41 = [v40 date];
        [v39 timeIntervalSinceDate:v41];
        v43 = v42 > 1.0;

        if (v43)
        {
          ++v30;
        }
      }
    }
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v30;
}

void __63__RTMapItemProviderBluePOI_numberOfRealtimeQueriesForInterval___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_bestAOIFromAOIs:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    aSelector = a2;
    v7 = 0;
    v8 = 0;
    v9 = *v47;
    v10 = 0.0;
    v11 = 0.0;
    obj = v4;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        v14 = [objc_opt_class() preferredAOICategories];
        v15 = [v13 mapItem];
        v16 = [v15 category];
        v17 = [v14 containsObject:v16];

        if (v17)
        {
          v4 = obj;
          v29 = v8;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = NSStringFromSelector(aSelector);
              *buf = 138413058;
              v51 = v36;
              v52 = 2112;
              v53 = v37;
              v54 = 2112;
              v55 = v13;
              v56 = 2112;
              v57 = obj;
              _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@, %@, selecting preferred AOI, %@, from AOIs, %@.", buf, 0x2Au);
            }
          }

          v31 = v13;

          goto LABEL_35;
        }

        [v13 confidence];
        if (v18 >= 0.9)
        {
          if (!v8 || ([v13 confidence], v11 > v19))
          {
            v20 = v13;

            [v20 confidence];
            v11 = v21;
            v8 = v20;
          }
        }

        [v13 confidence];
        if (v22 < 0.9)
        {
          if (!v7 || ([v13 confidence], v10 < v23))
          {
            v24 = v13;

            [v24 confidence];
            v10 = v25;
            v7 = v24;
          }
        }
      }

      v4 = obj;
      v6 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    if (!v8)
    {
      v32 = v7;
      a2 = aSelector;
      goto LABEL_29;
    }

    v26 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(aSelector);
        *buf = 138413570;
        v51 = v42;
        v52 = 2112;
        v53 = v43;
        v54 = 2112;
        v55 = v26;
        v56 = 2112;
        v57 = v7;
        v58 = 2048;
        v59 = 0x3FECCCCCCCCCCCCDLL;
        v60 = 2112;
        v61 = obj;
        _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "%@, %@, selecting innerNestedAOI, %@, higherOverlapConflictedAOI, %@, threshold, %f, AOIs, %@.", buf, 0x3Eu);
      }
    }

    v28 = v26;
    v29 = v28;
  }

  else
  {

    v32 = 0;
LABEL_29:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = NSStringFromSelector(a2);
        *buf = 138413570;
        v51 = v39;
        v52 = 2112;
        v53 = v40;
        v54 = 2112;
        v55 = v32;
        v56 = 2112;
        v57 = 0;
        v58 = 2048;
        v59 = 0x3FECCCCCCCCCCCCDLL;
        v60 = 2112;
        v61 = v4;
        _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "%@, %@, selecting higherOverlapConflictedAOI, %@, innerNestedAOI, %@, threshold, %f, AOIs, %@.", buf, 0x3Eu);
      }
    }

    v28 = v32;
    v7 = v28;
    v29 = 0;
  }

  v31 = v28;
LABEL_35:

  return v31;
}

- (id)_filterLessRelevantAOIsFromQueryResult:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    *&v8 = 138412803;
    v29 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 mapItem];
        v14 = [v13 mapItemPlaceType];

        v15 = v4;
        if (v14 != 1)
        {
          v16 = [v12 mapItem];
          v17 = [v16 mapItemPlaceType];

          v15 = v5;
          if (v17 != 2)
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              v21 = NSStringFromSelector(a2);
              *buf = v29;
              v37 = v20;
              v38 = 2112;
              v39 = v21;
              v40 = 2117;
              v41 = v12;
              _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, %@, the inferred map item, %{sensitive}@, is neither an AOI or a POI.", buf, 0x20u);
            }

            v15 = v5;
          }
        }

        [v15 addObject:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v9);
  }

  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if ([v4 count] < 2)
  {
    [v22 addObjectsFromArray:v6];
  }

  else
  {
    v23 = [(RTMapItemProviderBluePOI *)self _bestAOIFromAOIs:v4];
    [v22 addObject:v23];
    [v22 addObjectsFromArray:v5];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138413570;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v4;
      v44 = 2112;
      v45 = v5;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, queryResult, %@, aois, %@, pois, %@, selectedResults, %@.", buf, 0x3Eu);
    }
  }

  return v22;
}

- (id)_fetchAllFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v34 = 0;
  v11 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v33 = 0;
  v12 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:v9 endDate:v10 isTimeWindowFallback:&v34 settledState:2 fingerprintManager:v11 error:&v33];
  v13 = v33;

  if (v13)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v13;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, fetching fingerprints from settled points encountered an error, %@", buf, 0x20u);
    }

    if (a5)
    {
      v15 = v13;
      *a5 = v13;
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v32 = 0;
    v17 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
    v31 = 0;
    v18 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:v9 endDate:v10 isTimeWindowFallback:&v32 settledState:1 fingerprintManager:v17 error:&v31];
    v13 = v31;

    if (v13)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        *buf = 138412802;
        v37 = v29;
        v38 = 2112;
        v39 = v30;
        v40 = 2112;
        v41 = v13;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, fetching fingerprints from unsettled points encountered an error, %@", buf, 0x20u);
      }

      if (a5)
      {
        v20 = v13;
        *a5 = v13;
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v21 = [v12 arrayByAddingObjectsFromArray:v18];
      v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"start" ascending:1];
      v35 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v16 = [v21 sortedArrayUsingDescriptors:v23];
    }
  }

  return v16;
}

- (id)getAllBluePOIQuerriesForStartDate:(id)a3 endDate:(id)a4 location:(id)a5 error:(id *)a6
{
  v99 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v77 = a5;
  v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v11];
  v13 = [(RTMapItemProviderBluePOI *)self numberOfRealtimeQueriesForInterval:v12];
  v14 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries]- v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      NSStringFromSelector(a2);
      v17 = v16 = a6;
      v18 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries];
      *buf = 138413058;
      v92 = v17;
      v93 = 2048;
      v94 = v18;
      v95 = 2048;
      v96 = v13;
      v97 = 2048;
      v98 = v14;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, maxNumberOfQueries, %lu, realtime usage, %lu, hindsight usage, %lu", buf, 0x2Au);

      a6 = v16;
    }
  }

  v88 = 0;
  v19 = [(RTMapItemProviderBluePOI *)self _fetchAllFingerprintsBetweenStartDate:v10 endDate:v11 error:&v88];
  v20 = v88;
  if (v20)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = NSStringFromSelector(a2);
      *buf = 138412802;
      v92 = v59;
      v93 = 2112;
      v94 = v60;
      v95 = 2112;
      v96 = v20;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, fetching all fingerprints encountered an error, %@", buf, 0x20u);
    }

    if (a6)
    {
      v22 = v20;
      *a6 = v20;
    }

    goto LABEL_16;
  }

  if (![v19 count])
  {
LABEL_16:
    v27 = MEMORY[0x277CBEBF8];
    v28 = v77;
    goto LABEL_45;
  }

  v87 = 0;
  v23 = [(RTMapItemProviderBluePOI *)self _selectFingerprintsStartDate:v10 endDate:v11 maxQueryAttemps:v14 isTimeWindowFallback:0 fingerprintsTotalOut:0 fingerprintsNonZeroAPsTotalOut:0 error:&v87];
  v71 = v87;
  v72 = v23;
  if (v71)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = NSStringFromSelector(a2);
      *buf = 138412802;
      v92 = v62;
      v93 = 2112;
      v94 = v63;
      v95 = 2112;
      v96 = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, %@, fetching selected fingerprints encountered an error, %@", buf, 0x20u);
    }

    if (a6)
    {
      v25 = v71;
      v26 = v71;
      *a6 = v71;
      v27 = MEMORY[0x277CBEBF8];
      v28 = v77;
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
      v28 = v77;
      v25 = v71;
    }
  }

  else
  {
    v67 = a6;
    v70 = v12;
    v29 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v23, "count")}];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v30 = v23;
    v31 = [v30 countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v84;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v84 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v83 + 1) + 8 * i) identifier];
          [v29 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v32);
    }

    v76 = v11;

    v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v36 = [MEMORY[0x277CBEB18] array];
    v37 = objc_alloc(MEMORY[0x277D01160]);
    [v77 latitude];
    v39 = v38;
    [v77 longitude];
    v41 = v40;
    [v77 horizontalUncertainty];
    v43 = [v37 initWithLatitude:v10 longitude:objc_msgSend(v77 horizontalUncertainty:"referenceFrame") date:v39 referenceFrame:{v41, v42}];
    if (v43)
    {
      [v36 addObject:v43];
    }

    v68 = v43;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v69 = v19;
    obj = v19;
    v44 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v80;
      while (2)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v80 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v79 + 1) + 8 * j);
          v49 = [v48 identifier];
          v50 = [v29 containsObject:v49];
          v78 = 0;
          v51 = v36;
          v52 = [(RTMapItemProviderBluePOI *)self _bluePOIQueryFromFingerprint:v48 fingerprintIdx:0 referenceLocationArray:v36 selected:v50 endDate:v76 totalAPsCount:0 error:&v78];
          v53 = v78;

          if (v53)
          {
            v55 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v64 = objc_opt_class();
              v65 = NSStringFromClass(v64);
              v66 = NSStringFromSelector(a2);
              *buf = 138412802;
              v92 = v65;
              v93 = 2112;
              v94 = v66;
              v95 = 2112;
              v96 = 0;
              _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, %@, fetching selected fingerprints encountered an error, %@", buf, 0x20u);
            }

            if (v67)
            {
              v56 = v53;
              *v67 = v53;
            }

            v27 = MEMORY[0x277CBEBF8];
            v28 = v77;
            v19 = v69;
            v25 = 0;
            v54 = v74;
            v36 = v51;
            goto LABEL_43;
          }

          if (v52)
          {
            [v74 addObject:v52];
          }

          v36 = v51;
        }

        v45 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

    v54 = v74;
    v27 = v74;
    v25 = 0;
    v28 = v77;
    v19 = v69;
LABEL_43:

    v12 = v70;
    v20 = 0;
    v11 = v76;
  }

LABEL_45:

  return v27;
}

- (id)_selectFingerprintsStartDate:(id)a3 endDate:(id)a4 maxQueryAttemps:(unint64_t)a5 isTimeWindowFallback:(BOOL *)a6 fingerprintsTotalOut:(unint64_t *)a7 fingerprintsNonZeroAPsTotalOut:(unint64_t *)a8 error:(id *)a9
{
  v93[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v81 = 0;
  v17 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v80 = 0;
  v77 = v15;
  v18 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:v15 endDate:v16 isTimeWindowFallback:&v81 settledState:2 fingerprintManager:v17 error:&v80];
  v19 = v80;

  if (!v19)
  {
    v71 = a6;
    v72 = a7;
    aSelector = a2;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"start" ascending:1];
    v93[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
    v26 = [v18 sortedArrayUsingDescriptors:v25];

    v74 = [v26 count];
    v27 = v16;
    v28 = [(RTMapItemProviderBluePOI *)self _filterOutEmptyFingerprintsFromFingerprints:v26 endDate:v16];

    v29 = [v28 count];
    v30 = [v28 count] > a5;
    v31 = [v28 count];
    if (v31 >= a5)
    {
      v32 = a5;
    }

    else
    {
      v32 = v31;
    }

    v18 = [v28 subarrayWithRange:{v30, v32}];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v60 = NSStringFromSelector(aSelector);
        v61 = [v18 count];
        *buf = 138413314;
        v84 = v60;
        if (v81)
        {
          v62 = @"YES";
        }

        else
        {
          v62 = @"NO";
        }

        v85 = 2048;
        v86 = v74;
        v87 = 2048;
        v88 = v29;
        v89 = 2048;
        v90 = v61;
        v91 = 2112;
        v92 = v62;
        _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "%@, fingerprints from settled points, total count, %lu, non zero AP count, %lu, filtered count, %lu, is time window fallback, %@.", buf, 0x34u);
      }
    }

    v34 = [MEMORY[0x277CBEB18] arrayWithArray:v18];
    v79 = 0;
    if ([v18 count] >= a5)
    {
      v39 = 0;
      v40 = 0;
      v21 = v27;
      v41 = v74;
    }

    else
    {
      v70 = v29;
      v35 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
      v78 = 0;
      v21 = v16;
      v36 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:v77 endDate:v16 isTimeWindowFallback:&v79 settledState:1 fingerprintManager:v35 error:&v78];
      v19 = v78;

      if (v19)
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v84 = v64;
          v85 = 2112;
          v86 = v65;
          v87 = 2112;
          v88 = v19;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, fetching fingerprints from unsettled points encountered an error, %@", buf, 0x20u);
        }

        if (a9)
        {
          v38 = v19;
          *a9 = v19;
        }

        v23 = MEMORY[0x277CBEBF8];
LABEL_43:

        goto LABEL_44;
      }

      v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"start" ascending:1];
      v82 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v44 = [v36 sortedArrayUsingDescriptors:v43];

      v76 = [v44 count];
      v45 = [(RTMapItemProviderBluePOI *)self _filterOutEmptyFingerprintsFromFingerprints:v44 endDate:v16];

      v39 = [v45 count];
      v46 = [v45 count];
      v47 = [v18 count];
      if (a5 - v47 > v46)
      {
        v48 = 1;
      }

      else
      {
        v48 = v46 / (a5 - v47);
      }

      if ([v45 count])
      {
        v49 = 0;
        do
        {
          if ([v34 count] >= a5)
          {
            break;
          }

          v50 = [v45 objectAtIndex:v49];
          [v34 addObject:v50];

          v49 += v48;
        }

        while (v49 < [v45 count]);
      }

      v41 = v74;
      v29 = v70;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v66 = NSStringFromSelector(aSelector);
          v67 = [v34 count];
          v68 = v67 - [v18 count];
          v29 = v70;
          v69 = @"NO";
          *buf = 138413314;
          v84 = v66;
          v85 = 2048;
          if (v81)
          {
            v69 = @"YES";
          }

          v86 = v76;
          v87 = 2048;
          v88 = v39;
          v89 = 2048;
          v90 = v68;
          v91 = 2112;
          v92 = v69;
          _os_log_debug_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEBUG, "%@, fingerprints from unsettled points, total count, %lu, non zero AP count, %lu, filtered count, %lu, is time window fallback, %@.", buf, 0x34u);
        }
      }

      v40 = v76;
    }

    if (v71)
    {
      *v71 = (v81 | v79) & 1;
    }

    if (v72)
    {
      *v72 = v40 + v41;
    }

    if (a8)
    {
      *a8 = v39 + v29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v52 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = NSStringFromSelector(aSelector);
        v54 = [v18 count];
        v55 = [v34 count];
        *buf = 138412802;
        v84 = v53;
        v85 = 2048;
        v86 = v54;
        v87 = 2048;
        v88 = v55;
        _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "%@, fingerprints from settled points count, %lu, total fingerprints count, %lu", buf, 0x20u);
      }
    }

    v23 = v34;
    v19 = 0;
    goto LABEL_43;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    v59 = NSStringFromSelector(a2);
    *buf = 138412802;
    v84 = v58;
    v85 = 2112;
    v86 = v59;
    v87 = 2112;
    v88 = v19;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, fetching fingerprints from settled points encountered an error, %@", buf, 0x20u);
  }

  v21 = v16;
  if (a9)
  {
    v22 = v19;
    *a9 = v19;
  }

  v23 = MEMORY[0x277CBEBF8];
LABEL_44:

  return v23;
}

- (id)_bluePOIQueryFromFingerprint:(id)a3 fingerprintIdx:(unint64_t)a4 referenceLocationArray:(id)a5 selected:(BOOL)a6 endDate:(id)a7 totalAPsCount:(unint64_t *)a8 error:(id *)a9
{
  v11 = a6;
  v87[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v68 = a5;
  v16 = a7;
  v17 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v70 = 0;
  v18 = [RTPOIHarvestUtilities accessPointsForFingerprint:v15 endDate:v16 fingerprintManager:v17 error:&v70];

  v19 = v70;
  if (v19)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = NSStringFromSelector(a2);
      *buf = 138413058;
      v72 = v52;
      v73 = 2112;
      v74 = v53;
      v75 = 2112;
      v76 = v15;
      v77 = 2112;
      v78 = v19;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, fetching access points for fingerprint, %@, encountered an error, %@", buf, 0x2Au);
    }

    if (a9)
    {
      v21 = v19;
      v22 = 0;
      *a9 = v19;
    }

    else
    {
      v22 = 0;
    }

    v24 = v18;
    v33 = v68;
  }

  else
  {
    v61 = a4;
    v60 = v11;
    v64 = v15;
    v63 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v87[0] = v63;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
    v24 = [v18 sortedArrayUsingDescriptors:v23];

    if (a8)
    {
      v25 = *a8;
      *a8 = [v24 count] + v25;
    }

    v26 = [(RTMapItemProviderBluePOI *)self parameters];
    v27 = [v26 harvestParameters];
    v28 = [(RTMapItemProviderBluePOI *)self locationManager];
    v69 = 0;
    v29 = [RTPOIHarvestUtilities locationsForAccessPoints:v24 harvestParameters:v27 locationManager:v28 error:&v69];
    v30 = v69;

    if (v30)
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      v15 = v64;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = NSStringFromSelector(a2);
        *buf = 138413058;
        v72 = v55;
        v73 = 2112;
        v74 = v56;
        v75 = 2112;
        v76 = v64;
        v77 = 2112;
        v78 = v30;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, fetching access points for fingerprint, %@, encountered an error, %@", buf, 0x2Au);
      }

      if (a9)
      {
        v32 = v30;
        v22 = 0;
        *a9 = v30;
      }

      else
      {
        v22 = 0;
      }

      v33 = v68;
    }

    else
    {
      v15 = v64;
      v33 = v68;
      if ([v29 count])
      {
        v34 = [v68 arrayByAddingObjectsFromArray:v29];
      }

      else
      {
        v34 = v68;
      }

      v67 = v34;
      v35 = v61;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v62 = NSStringFromClass(v37);
          v59 = NSStringFromSelector(a2);
          v38 = (v35 + 1);
          v58 = [v64 identifier];
          aSelectora = [v64 start];
          v39 = [aSelectora stringFromDate];
          v40 = +[RTScenarioTriggerManager settledStateName:](RTScenarioTriggerManager, "settledStateName:", [v64 settledState]);
          v57 = [v24 count];
          v41 = [v67 count];
          *buf = 138414082;
          v72 = v62;
          v73 = 2112;
          v74 = v59;
          v75 = 2048;
          v76 = v38;
          v33 = v68;
          v77 = 2112;
          v78 = v58;
          v79 = 2112;
          v80 = v39;
          v42 = v39;
          v81 = 2112;
          v82 = v40;
          v83 = 2048;
          v84 = v57;
          v85 = 2048;
          v86 = v41;
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, fingerprint, %lu, identifier, %@, start, %@, settled state, %@, number of accessPoints, %lu, number of locations, %lu", buf, 0x52u);

          v15 = v64;
        }
      }

      if ([v24 count])
      {
        v43 = [RTBluePOIQuery alloc];
        v44 = [v15 identifier];
        v45 = [v33 objectAtIndexedSubscript:0];
        v46 = [v64 settledState];
        v47 = [v64 start];
        v48 = v43;
        v49 = v67;
        v22 = [(RTBluePOIQuery *)v48 initWithIdentifier:v44 accessPoints:v24 locations:v67 referenceLocation:v45 settledState:v46 selectedToLabel:v60 date:v47];

        v15 = v64;
      }

      else
      {
        v22 = 0;
        v49 = v67;
      }
    }
  }

  return v22;
}

- (id)_mapItemsFromBluePOIServerQuery:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277D011B0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 initWithUseBackgroundTraits:1 analyticsIdentifier:v16];

  v18 = [v13 locations];
  v19 = [v13 accessPoints];

  v24 = 0;
  v20 = [(RTMapItemProviderBluePOI *)self mapItemsFromLocations:v18 accessPoints:v19 startDate:v12 endDate:v11 options:v17 error:&v24];

  v21 = v24;
  if (a6)
  {
    v22 = v21;
    *a6 = v21;
  }

  return v20;
}

- (id)_timeZoneFromLocation:(id)a3
{
  v3 = MEMORY[0x277CE41F8];
  v4 = a3;
  v5 = [v3 alloc];
  [v4 latitude];
  v7 = v6;
  [v4 longitude];
  v9 = v8;

  v10 = [v5 initWithLatitude:v7 longitude:v9];
  v11 = [MEMORY[0x277CBFBE8] _timeZoneAtLocation:v10];

  return v11;
}

- (id)_mapItemsFromBluePOIQuery:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6
{
  v175[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v124 = v12;
  v125 = v10;
  v123 = v11;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v51 = [(RTMapItemProviderBluePOI *)self _mapItemsFromBluePOIServerQuery:v10 startDate:v11 endDate:v12 error:a6];
    goto LABEL_59;
  }

  v119 = a6;
  v126 = self;
  v13 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
  v14 = [v13 requestCollectQueryEvent];

  v120 = v14;
  if (v14)
  {
    v15 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    [v15 setEventMetricsValue:@"com.apple.CoreRoutine.internal" forKey:@"appIdentifier"];

    v16 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    [v16 setEventMetricsValue:v17 forKey:@"queryType"];

    v18 = 1;
    v19 = MEMORY[0x277CBEC28];
    do
    {
      v20 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", v18];
      [v20 setEventMetricsValue:v19 forKey:v21];

      ++v18;
    }

    while (v18 != 14);
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v22 = [v125 accessPoints];
    v23 = [v22 countByEnumeratingWithState:&v165 objects:v174 count:16];
    if (v23)
    {
      v24 = *v166;
      v25 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v166 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v165 + 1) + 8 * i);
          if ([v27 channel] && objc_msgSend(v27, "channel") <= 0xD)
          {
            v28 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", objc_msgSend(v27, "channel")];
            [v28 setEventMetricsValue:v25 forKey:v29];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v165 objects:v174 count:16];
      }

      while (v23);
    }
  }

  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = __Block_byref_object_copy__36;
  v163 = __Block_byref_object_dispose__36;
  v164 = 0;
  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__36;
  v157 = __Block_byref_object_dispose__36;
  v158 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x3032000000;
  v150 = __Block_byref_object_copy__36;
  v151 = __Block_byref_object_dispose__36;
  v152 = 0;
  v30 = dispatch_semaphore_create(0);
  v31 = [(RTMapItemProviderBluePOI *)v126 bluePOITileManager];
  v32 = [v125 referenceLocation];
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke;
  v141[3] = &unk_2788C8258;
  v146 = a2;
  v122 = v125;
  v142 = v122;
  v144 = &v159;
  v145 = &v147;
  v33 = v30;
  v143 = v33;
  [v31 fetchBluePOITileAtLocation:v32 priority:3 validateTile:1 collectMetrics:v120 handler:v141];

  v34 = v33;
  v35 = [MEMORY[0x277CBEAA8] now];
  v36 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v34, v36))
  {
    v48 = 0;
LABEL_23:
    v50 = 1;
    goto LABEL_24;
  }

  v37 = [MEMORY[0x277CBEAA8] now];
  [v37 timeIntervalSinceDate:v35];
  v39 = v38;
  v40 = objc_opt_new();
  v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_430];
  v42 = [MEMORY[0x277CCACC8] callStackSymbols];
  v43 = [v42 filteredArrayUsingPredicate:v41];
  v44 = [v43 firstObject];

  [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
  v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v46 = MEMORY[0x277CCA9B8];
  v175[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v175 count:1];
  v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

  if (!v48)
  {
    goto LABEL_23;
  }

  v49 = v48;

  v50 = 0;
LABEL_24:

  v52 = v48;
  if ((v50 & 1) == 0)
  {
    objc_storeStrong(v148 + 5, v48);
  }

  v53 = dispatch_semaphore_create(0);
  v54 = [(RTMapItemProviderBluePOI *)v126 mapServiceManager];
  v55 = [v122 referenceLocation];
  v56 = [v122 locations];
  v57 = [v122 accessPoints];
  v58 = v160[5];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_217;
  v136[3] = &unk_2788C81C0;
  v138 = &v153;
  v139 = &v147;
  v140 = a2;
  v59 = v53;
  v137 = v59;
  [v54 inferLocalBluePOIWithReferenceLocation:v55 locations:v56 accessPoints:v57 bluePOITile:v58 signalEnv:0 refreshAOI:1 handler:v136];

  v60 = v59;
  v61 = [MEMORY[0x277CBEAA8] now];
  v62 = dispatch_time(0, 15000000000);
  if (!dispatch_semaphore_wait(v60, v62))
  {
    goto LABEL_31;
  }

  v63 = [MEMORY[0x277CBEAA8] now];
  [v63 timeIntervalSinceDate:v61];
  v65 = v64;
  v66 = objc_opt_new();
  v67 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_430];
  v68 = [MEMORY[0x277CCACC8] callStackSymbols];
  v69 = [v68 filteredArrayUsingPredicate:v67];
  v70 = [v69 firstObject];

  [v66 submitToCoreAnalytics:v70 type:1 duration:v65];
  v71 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v71, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v72 = MEMORY[0x277CCA9B8];
  v175[0] = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v175 count:1];
  v74 = [v72 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v73];

  if (v74)
  {
    v75 = v74;

    v76 = 0;
  }

  else
  {
LABEL_31:
    v76 = 1;
    v74 = v52;
  }

  v118 = v74;
  if ((v76 & 1) == 0)
  {
    objc_storeStrong(v148 + 5, v74);
  }

  v77 = v126;
  if (!v148[5] || [v154[5] mostConfidentPOI] || objc_msgSend(v154[5], "mostConfidentAOI"))
  {
    v78 = [(RTMapItemProviderBluePOI *)v126 mapItemManager];
    v79 = v154[5];
    v80 = v148 + 5;
    obj = v148[5];
    v81 = [v78 mapItemsFromLocalBluePOIResult:v79 withConfidenceThreshold:&obj error:0.5];
    objc_storeStrong(v80, obj);

    if ([RTBluePOIHelper shouldFilterByBusinessHours:[(RTPlatform *)v126->_platform internalInstall]])
    {
      v82 = [[_RTMap alloc] initWithInput:v81];
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_220;
      v131[3] = &unk_2788C82A8;
      v131[4] = v126;
      v132 = v123;
      v133 = v124;
      v134 = &v147;
      v83 = [(_RTMap *)v82 withBlock:v131];
    }

    else
    {
      v84 = [[_RTMap alloc] initWithInput:v81];
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_3;
      v127[3] = &unk_2788C81E8;
      v128 = v123;
      v129 = v124;
      v130 = v126;
      v83 = [(_RTMap *)v84 withBlock:v127];
    }

    v77 = v126;
  }

  else
  {
    v83 = 0;
    v81 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v85 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      v86 = NSStringFromSelector(a2);
      v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v83, "count")}];
      v88 = v148[5];
      *buf = 138412802;
      *&buf[4] = v86;
      v170 = 2112;
      v171 = v87;
      v172 = 2112;
      v173 = v88;
      _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "%@, local inferred MapItems count, %@, error, %@", buf, 0x20u);
    }

    v77 = v126;
  }

  v89 = [(RTMapItemProviderBluePOI *)v77 _shouldPerformServerBluePOIForLocalBluePOIError:v148[5]];
  if (v120)
  {
    v90 = [v154[5] mostConfidentPOI];
    if (v90)
    {
      v91 = [v154[5] poiConfidences];
      v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v154[5], "mostConfidentPOI")}];
      v93 = [v91 objectForKeyedSubscript:v92];
      [v93 doubleValue];
      v95 = v94;

      v96 = v95 * 10000.0;
      v77 = v126;
    }

    else
    {
      v96 = -10000.0;
    }

    v97 = [(RTMapItemProviderBluePOI *)v77 bluePOIMetricManager];
    v98 = [MEMORY[0x277CCABB0] numberWithBool:v90 != 0];
    [v97 setEventMetricsValue:v98 forKey:@"preAggregatedInferenceAvailablePOI"];

    v99 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
    v100 = [MEMORY[0x277CCABB0] numberWithDouble:round(v96)];
    [v99 setEventMetricsValue:v100 forKey:@"preAggregationConfidencePOI"];

    v101 = [v154[5] mostConfidentAOI];
    v102 = v126;
    if (v101)
    {
      v103 = [v154[5] aoiConfidences];
      v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v154[5], "mostConfidentAOI")}];
      v105 = [v103 objectForKeyedSubscript:v104];
      [v105 doubleValue];
      v107 = v106;

      v108 = v107 * 10000.0;
      v102 = v126;
    }

    else
    {
      v108 = -10000.0;
    }

    v109 = [(RTMapItemProviderBluePOI *)v102 bluePOIMetricManager];
    v110 = [MEMORY[0x277CCABB0] numberWithBool:v101 != 0];
    [v109 setEventMetricsValue:v110 forKey:@"preAggregatedInferenceAvailableAOI"];

    v111 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
    v112 = [MEMORY[0x277CCABB0] numberWithDouble:round(v108)];
    [v111 setEventMetricsValue:v112 forKey:@"preAggregationConfidenceAOI"];

    v113 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
    v114 = [MEMORY[0x277CCABB0] numberWithBool:v89];
    [v113 setEventMetricsValue:v114 forKey:@"serverFallback"];

    v115 = [(RTMapItemProviderBluePOI *)v126 bluePOIMetricManager];
    [v115 stopCollectQueryEvent];

    v77 = v126;
  }

  if (v89)
  {
    v116 = [(RTMapItemProviderBluePOI *)v77 _mapItemsFromBluePOIServerQuery:v122 startDate:v123 endDate:v124 error:v119];
  }

  else
  {
    if (v119)
    {
      *v119 = v148[5];
    }

    v116 = v83;
  }

  v51 = v116;

  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v153, 8);

  _Block_object_dispose(&v159, 8);
LABEL_59:

  return v51;
}

void __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = [*(a1 + 32) referenceLocation];
      v16 = 138413059;
      v17 = v8;
      v18 = 2117;
      v19 = v9;
      v20 = 2117;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, tile, %{sensitive}@, error, %@", &v16, 0x2Au);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = 138412803;
      v11 = v9;
      v12 = 2117;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, localBluePOIResult, %{sensitive}@, error, %@", &v10, 0x20u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_220(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc(MEMORY[0x277D011B0]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v35 = [v5 initWithUseBackgroundTraits:1 analyticsIdentifier:v7];

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0x3FF0000000000000;
  v8 = [*(a1 + 32) mapServiceManager];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_2;
  v36[3] = &unk_2788C8280;
  v38 = &v39;
  v11 = v4;
  v37 = v11;
  [v8 fetchConfidenceWeightForMapItem:v3 startDate:v9 endDate:v10 options:v35 handler:v36];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_430];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v43 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v28 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = 1;
LABEL_8:

  v29 = v26;
  if ((v28 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v26);
  }

  v30 = objc_alloc(MEMORY[0x277D01128]);
  v31 = [v3 extendedAttributes];
  [v31 wifiConfidence];
  v33 = [v30 initWithMapItem:v3 confidence:0x100000 source:v32 * v40[3]];

  _Block_object_dispose(&v39, 8);

  return v33;
}

intptr_t __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

id __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v5 location];
  v7 = [v4 _timeZoneFromLocation:v6];
  v8 = [v5 category];
  [RTBluePOIHelper weightBasedOnDurationWithStartDate:v2 endDate:v3 timeZone:v7 poiCategory:v8];
  v10 = v9;

  v11 = objc_alloc(MEMORY[0x277D01128]);
  v12 = [v5 extendedAttributes];
  [v12 wifiConfidence];
  v14 = [v11 initWithMapItem:v5 confidence:0x100000 source:v10 * v13];

  return v14;
}

- (id)_mapItemsWithinDistance:(double)a3 location:(id)a4 startDate:(id)a5 endDate:(id)a6 maxQueryAttemps:(unint64_t)a7 error:(id *)a8
{
  v173[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if (!v14)
  {
    if (a8)
    {
      v21 = MEMORY[0x277CCA9B8];
      v172 = *MEMORY[0x277CCA450];
      v173[0] = @"requires a valid location.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:&v172 count:1];
      v20 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v19];
      goto LABEL_9;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_53;
  }

  if (v15 && v16 && ![v15 isAfterDate:v16])
  {
    v19 = [MEMORY[0x277CBEB18] array];
    v23 = objc_alloc(MEMORY[0x277D01160]);
    [v14 latitude];
    v25 = v24;
    [v14 longitude];
    v27 = v26;
    [v14 horizontalUncertainty];
    v29 = [v23 initWithLatitude:v15 longitude:objc_msgSend(v14 horizontalUncertainty:"referenceFrame") date:v25 referenceFrame:{v27, v28}];
    if (v29)
    {
      [v19 addObject:v29];
    }

    v106 = v29;
    [v17 timeIntervalSinceDate:v15];
    v31 = v30;
    v157 = 0;
    v156 = 0;
    v155 = 0;
    v154 = 0;
    v107 = [(RTMapItemProviderBluePOI *)self _selectFingerprintsStartDate:v15 endDate:v17 maxQueryAttemps:a7 isTimeWindowFallback:&v157 fingerprintsTotalOut:&v156 fingerprintsNonZeroAPsTotalOut:&v155 error:&v154];
    v108 = v154;
    if (v108)
    {
      [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidencePassThroughThreshold];
      v33 = v32;
      [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidencePassThroughThreshold];
      [(RTMapItemProviderBluePOI *)self _submitPerformanceMetricsForResults:MEMORY[0x277CBEBF8] noFingerprints:0 originalMaxNumberOfQueries:3 aoiConfidencePassThroughThreshold:0 poiConfidencePassThroughThreshold:0 fingerprintsCount:0 zeroAccessPointsFingerprintsCount:v33 nonZeroAccessPointsFingerprintsCount:v34 queryCount:v31 firstResultQueryCount:0 error:0 visitInterval:v108 visitSource:3];
      v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = v61;
        *&buf[22] = 2112;
        v167 = v108;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, fetching fingerprints for BluePOI encountered an error, %@", buf, 0x20u);
      }

      if (a8)
      {
        v36 = v108;
        *a8 = v108;
      }

      v22 = MEMORY[0x277CBEBF8];
      goto LABEL_51;
    }

    v104 = [MEMORY[0x277CBEB18] array];
    v102 = [MEMORY[0x277CBEB18] array];
    v149 = 0;
    v150 = 0;
    v151 = &v150;
    v152 = 0x2020000000;
    v153 = 0;
    v146 = 0;
    v147 = &v146;
    v148 = 0x2020000000;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v167 = __Block_byref_object_copy__36;
    v168 = __Block_byref_object_dispose__36;
    v169 = 0;
    v140 = 0;
    v141 = &v140;
    v142 = 0x3032000000;
    v143 = __Block_byref_object_copy__36;
    v144 = __Block_byref_object_dispose__36;
    v145 = objc_opt_new();
    v134 = 0;
    v135 = &v134;
    v136 = 0x3032000000;
    v137 = __Block_byref_object_copy__36;
    v138 = __Block_byref_object_dispose__36;
    v139 = objc_opt_new();
    v130 = 0;
    v131 = &v130;
    v132 = 0x2020000000;
    v133 = 0;
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v129 = 0;
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __101__RTMapItemProviderBluePOI__mapItemsWithinDistance_location_startDate_endDate_maxQueryAttemps_error___block_invoke;
    v112[3] = &unk_2788C8210;
    v112[4] = self;
    v90 = v19;
    v113 = v90;
    v94 = v17;
    v114 = v94;
    v118 = &v146;
    v103 = v102;
    v115 = v103;
    v98 = v15;
    v116 = v98;
    v119 = &v130;
    v105 = v104;
    v117 = v105;
    v120 = &v126;
    v121 = &v140;
    v122 = &v134;
    v123 = buf;
    v124 = &v150;
    v125 = a2;
    [v107 enumerateObjectsUsingBlock:v112];
    v101 = [v141[5] valueForKeyPath:@"@min.self"];
    [v135[5] valueForKeyPath:@"@max.self"];
    v97 = v37 = v98;
    [v98 timeIntervalSinceDate:?];
    [v98 timeIntervalSinceDate:v101];
    [RTMapItemProviderBluePOIWiFiScanMetrics submitBluePOIWiFiScanMetricsWithFingerprintsCount:"submitBluePOIWiFiScanMetricsWithFingerprintsCount:fingerprintsZeroAccessPointsCount:fingerprintsNonZeroAccessPointsCount:isFingerprintWindowFallback:timeIntervalSinceEarliestFingerprint:timeIntervalSinceLatestFingerprint:totalAccessPointsCount:visitInterval:visitSource:" fingerprintsZeroAccessPointsCount:v156 fingerprintsNonZeroAccessPointsCount:v156 - v155 isFingerprintWindowFallback:v155 timeIntervalSinceEarliestFingerprint:v157 timeIntervalSinceLatestFingerprint:v147[3] totalAccessPointsCount:3 visitInterval:? visitSource:?];
    v38 = *(*&buf[8] + 40);
    if (v38)
    {
      if (a8)
      {
        v22 = 0;
        *a8 = v38;
LABEL_50:

        _Block_object_dispose(&v126, 8);
        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(&v134, 8);

        _Block_object_dispose(&v140, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v146, 8);
        _Block_object_dispose(&v150, 8);

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if ((v151[3] & 1) == 0 && ![v103 count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v80 = *(v151 + 24);
            v81 = [v103 count];
            v82 = @"NO";
            *v158 = 138412802;
            if (v80)
            {
              v82 = @"YES";
            }

            v159 = *&v82;
            v160 = 2048;
            v161 = v31;
            v162 = 2048;
            v163 = v81;
            _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "fingerprintFound, %@, visit duration, %f, error count, %lu", v158, 0x20u);
          }

          v37 = v98;
        }

        if ([(RTMapItemProviderBluePOI *)self _fallbackToLocationBasedLookupForVisitDuration:v31])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *v158 = 134217984;
              v159 = v31;
              _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "no fingerprints with access points - falling back to location based lookup, visit duration, %f", v158, 0xCu);
            }

            v37 = v98;
          }

          v89 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v37 endDate:v94];
          v41 = [(RTMapItemProviderBluePOI *)self parameters];
          v42 = [v41 harvestParameters];
          v43 = [(RTMapItemProviderBluePOI *)self locationManager];
          v111 = 0;
          v86 = [RTPOIHarvestUtilities locationsInDateInterval:v89 harvestParameters:v42 locationManager:v43 error:&v111];
          v87 = v111;

          if (v87)
          {
            [v103 addObject:?];
            v44 = v86;
          }

          else
          {
            if ([v86 count])
            {
              [v90 addObjectsFromArray:v86];
            }

            v84 = [RTBluePOIQuery alloc];
            v92 = [MEMORY[0x277CCAD78] UUID];
            v62 = [v86 firstObject];
            v63 = [MEMORY[0x277CBEAA8] now];
            v85 = [(RTBluePOIQuery *)v84 initWithIdentifier:v92 accessPoints:0 locations:v86 referenceLocation:v62 settledState:0 selectedToLabel:1 date:v63];

            v110 = 0;
            v22 = [(RTMapItemProviderBluePOI *)self _mapItemsFromBluePOIQuery:v85 startDate:v98 endDate:v94 error:&v110];
            v64 = v110;
            ++v131[3];
            if (![v105 count] && !objc_msgSend(v22, "count"))
            {
              ++v127[3];
            }

            if ([v22 count])
            {
              v93 = v64;
              v65 = objc_alloc(MEMORY[0x277D011C0]);
              v66 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v98 endDate:v94];
              v100 = [v65 initWithFirstObject:v22 secondObject:v66];

              [v105 addObject:v100];
              [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidencePassThroughThreshold];
              v68 = v67;
              [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidencePassThroughThreshold];
              v70 = v69;
              v71 = v156;
              v72 = v155;
              v96 = v131[3];
              v88 = v127[3];
              v73 = _RTSafeArray();
              v74 = _RTMultiErrorCreate();
              [(RTMapItemProviderBluePOI *)self _submitPerformanceMetricsForResults:v105 noFingerprints:1 originalMaxNumberOfQueries:3 aoiConfidencePassThroughThreshold:v71 poiConfidencePassThroughThreshold:v71 - v72 fingerprintsCount:v72 zeroAccessPointsFingerprintsCount:v68 nonZeroAccessPointsFingerprintsCount:v70 queryCount:v31 firstResultQueryCount:v96 error:v88 visitInterval:v74 visitSource:3];

              goto LABEL_50;
            }

            if (v103 && v64)
            {
              [v103 addObject:v64];
            }

            v44 = v86;
          }
        }
      }

      [(RTMapItemProviderBluePOIParameters *)self->_parameters aoiConfidencePassThroughThreshold];
      v46 = v45;
      [(RTMapItemProviderBluePOIParameters *)self->_parameters poiConfidencePassThroughThreshold];
      v48 = v47;
      v49 = v156;
      v50 = v155;
      v91 = v127[3];
      v95 = v131[3];
      v99 = _RTSafeArray();
      v51 = _RTMultiErrorCreate();
      [(RTMapItemProviderBluePOI *)self _submitPerformanceMetricsForResults:v105 noFingerprints:0 originalMaxNumberOfQueries:3 aoiConfidencePassThroughThreshold:v49 poiConfidencePassThroughThreshold:v49 - v50 fingerprintsCount:v50 zeroAccessPointsFingerprintsCount:v46 nonZeroAccessPointsFingerprintsCount:v48 queryCount:v31 firstResultQueryCount:v95 error:v91 visitInterval:v51 visitSource:3];

      if ([v105 count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v75 = objc_opt_class();
            v76 = NSStringFromClass(v75);
            v77 = NSStringFromSelector(a2);
            v78 = [v107 count];
            v79 = v131[3];
            *v158 = 138413058;
            v159 = *&v76;
            v160 = 2112;
            v161 = *&v77;
            v162 = 2048;
            v163 = v78;
            v164 = 2048;
            v165 = v79;
            _os_log_debug_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEBUG, "%@, %@, fingerprintsCount, %lu, numberOfBPQueries, %lu", v158, 0x2Au);
          }
        }

        v109 = 0;
        v53 = [(RTMapItemProviderBluePOI *)self bestQueryFromAggregatedQueries:v105 error:&v109];
        v54 = v109;
        if (v54)
        {
          [v103 addObject:v54];
        }

        if (a8 && [v103 count])
        {
          v83 = 1;
          v55 = _RTSafeArray();
          *a8 = _RTMultiErrorCreate();
        }

        v56 = [(RTMapItemProviderBluePOI *)self _filterLessRelevantAOIsFromQueryResult:v53, v83];
        v22 = [(RTMapItemProviderBluePOI *)self _adjustConfidencesOfTheSelectedResult:v56 allQueryResults:v105];

        goto LABEL_50;
      }

      if (a8 && [v103 count])
      {
        v57 = _RTSafeArray();
        *a8 = _RTMultiErrorCreate();
      }
    }

    v22 = 0;
    goto LABEL_50;
  }

  if (!a8)
  {
    goto LABEL_10;
  }

  v18 = MEMORY[0x277CCA9B8];
  v170 = *MEMORY[0x277CCA450];
  v171 = @"requires a valid date range.";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v19];
LABEL_9:
  v22 = 0;
  *a8 = v20;
LABEL_52:

LABEL_53:

  return v22;
}

void __101__RTMapItemProviderBluePOI__mapItemsWithinDistance_location_startDate_endDate_maxQueryAttemps_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(a1 + 80) + 8);
  v56 = 0;
  v10 = [v6 _bluePOIQueryFromFingerprint:a2 fingerprintIdx:a3 referenceLocationArray:v7 selected:1 endDate:v8 totalAPsCount:v9 + 24 error:&v56];
  v11 = v56;
  if (!v11)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 64);
    v14 = *(a1 + 48);
    v55 = 0;
    v15 = [v12 _mapItemsFromBluePOIQuery:v10 startDate:v13 endDate:v14 error:&v55];
    v16 = v55;
    ++*(*(*(a1 + 88) + 8) + 24);
    if (![*(a1 + 72) count] && !objc_msgSend(v15, "count"))
    {
      ++*(*(*(a1 + 96) + 8) + 24);
    }

    v17 = [v10 accessPoints];
    v18 = [v17 firstObject];
    v19 = [v18 date];

    v20 = [v10 accessPoints];
    v21 = [v20 lastObject];
    v22 = [v21 date];

    if (v19)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23 || [v19 isAfterDate:v22])
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(*(a1 + 136));
        *buf = 138412802;
        v60 = v49;
        v61 = 2112;
        v62 = v19;
        v63 = 2112;
        v64 = v22;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, invalid date range, queryStartDate, %@, queryEndDate, %@", buf, 0x20u);
      }

      *a4 = 1;
      goto LABEL_31;
    }

    v52 = v16;
    v54 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v22];
    v25 = *(*(*(a1 + 104) + 8) + 40);
    v26 = [v10 accessPoints];
    v27 = [v26 firstObject];
    [v27 date];
    v28 = v53 = v15;
    [v25 addObject:v28];

    v29 = *(*(*(a1 + 112) + 8) + 40);
    v30 = [v10 accessPoints];
    v31 = [v30 lastObject];
    v32 = [v31 date];
    v33 = v29;
    v15 = v53;
    [v33 addObject:v32];

    if ([v53 count])
    {
      v34 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v53 secondObject:v54];
      if (!v34)
      {
        v42 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277D01448];
        v57 = *MEMORY[0x277CCA450];
        v58 = @"queryResult was nil";
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v45 = [v42 errorWithDomain:v43 code:0 userInfo:v44];

        v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v50 = NSStringFromSelector(*(a1 + 136));
          *buf = 138412546;
          v60 = v50;
          v61 = 2112;
          v62 = v45;
          _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v47 = *(*(a1 + 120) + 8);
        v48 = *(v47 + 40);
        *(v47 + 40) = v45;

        *a4 = 1;
        v16 = v52;
        v15 = v53;
        goto LABEL_30;
      }

      v35 = v34;
      [*(a1 + 72) addObject:v34];
      if ([*(*(a1 + 32) + 112) earlyStop])
      {
        v36 = [v53 objectAtIndex:0];
        v37 = [v36 mapItem];
        v51 = [v37 mapItemPlaceType];

        [v36 confidence];
        v39 = v38;
        v40 = *(*(a1 + 32) + 112);
        if (v51 == 1)
        {
          [v40 aoiConfidencePassThroughThreshold];
        }

        else
        {
          [v40 poiConfidencePassThroughThreshold];
        }

        if (v39 >= v41)
        {
          *a4 = 1;
        }

        v15 = v53;
      }
    }

    v16 = v52;
    if (v52)
    {
      [*(a1 + 56) addObject:v52];
    }

    *(*(*(a1 + 128) + 8) + 24) = 1;
LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  [*(a1 + 56) addObject:v11];
  *a4 = 1;
LABEL_32:
}

- (id)_computeEarlyStopQueryResultFromResults:(id)a3 originalMaxNumberOfQueries:(unint64_t)a4 aoiConfidencePassThroughThreshold:(double)a5 poiConfidencePassThroughThreshold:(double)a6
{
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [v8 count];
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 count];
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    v14 = 1;
    while (1)
    {
      v15 = [v8 objectAtIndexedSubscript:v14 - 1];
      [v9 addObject:v15];
      v16 = [v15 firstObject];
      v17 = [v16 objectAtIndex:0];

      v18 = [v17 mapItem];
      v19 = [v18 mapItemPlaceType];

      [v17 confidence];
      v21 = v20;
      parameters = self->_parameters;
      if (v19 == 1)
      {
        [(RTMapItemProviderBluePOIParameters *)parameters aoiConfidencePassThroughThreshold];
      }

      else
      {
        [(RTMapItemProviderBluePOIParameters *)parameters poiConfidencePassThroughThreshold];
      }

      if (v21 >= v23)
      {
        break;
      }

      v24 = [v8 count];
      if (v24 >= a4)
      {
        v25 = a4;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= v14++)
      {
        goto LABEL_19;
      }
    }

    v11 = v14;
  }

LABEL_19:
  if ([v9 count])
  {
    v27 = [(RTMapItemProviderBluePOI *)self bestQueryFromAggregatedQueries:v9 error:0];
    v28 = objc_alloc(MEMORY[0x277D011C0]);
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277D011C0]);
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v30 = [v28 initWithFirstObject:v27 secondObject:v29];

  return v30;
}

- (void)_submitPerformanceMetricsForResults:(id)a3 noFingerprints:(BOOL)a4 originalMaxNumberOfQueries:(unint64_t)a5 aoiConfidencePassThroughThreshold:(double)a6 poiConfidencePassThroughThreshold:(double)a7 fingerprintsCount:(unint64_t)a8 zeroAccessPointsFingerprintsCount:(unint64_t)a9 nonZeroAccessPointsFingerprintsCount:(unint64_t)a10 queryCount:(unint64_t)a11 firstResultQueryCount:(unint64_t)a12 error:(id)a13 visitInterval:(double)a14 visitSource:(int64_t)a15
{
  v21 = a4;
  v23 = a3;
  v24 = a13;
  if (v21)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v37 = a9;
    v27 = a8;
    v28 = [(RTMapItemProviderBluePOI *)self _computeEarlyStopQueryResultFromResults:v23 originalMaxNumberOfQueries:a5 aoiConfidencePassThroughThreshold:a6 poiConfidencePassThroughThreshold:a7];
    v29 = [v28 firstObject];
    v30 = [MEMORY[0x277CBEB68] null];
    if (v29 == v30)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v28 firstObject];
    }

    v31 = [v28 secondObject];
    v26 = [v31 unsignedIntegerValue];

    a8 = v27;
    a9 = v37;
  }

  v38 = v23;
  if ([v38 count])
  {
    if (v21)
    {
      [v38 firstObject];
      v32 = a9;
      v34 = v33 = a8;
      v35 = [v34 firstObject];

      a8 = v33;
      a9 = v32;
    }

    else
    {
      v35 = [(RTMapItemProviderBluePOI *)self bestQueryFromAggregatedQueries:v38 error:0];
    }
  }

  else
  {
    v35 = 0;
  }

  [RTMapItemProviderBluePOIPerformanceMetrics submitMetricsWithNonZeroAccessPointsFingerprintsCount:a10 zeroAccessPointsFingerprintsCount:a9 fingerprintsCount:a8 queryCount:a11 firstResultQueryCount:a12 results:v38 earlyStopQueryCount:a14 earlyStopQueryResult:v26 bestQueryResult:v25 error:v35 visitInterval:v24 visitSource:a15];
}

- (BOOL)_hasMapItemInQueryResult:(id)a3 placeType:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) mapItem];
        v11 = [v10 mapItemPlaceType];

        if (v11 == a4)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_adjustConfidencesOfTheSelectedResult:(id)a3 allQueryResults:(id)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RTMapItemProviderBluePOI *)self _hasMapItemInQueryResult:v7 placeType:1])
  {
    v57 = v7;
    [RTMapItemProviderBluePOIPerformanceMetrics _mapItemDictionaryforResults:v8 placeType:2];
    v56 = v55 = v8;
    [RTMapItemProviderBluePOIPerformanceMetrics _mapItemDictionaryforResults:v8 placeType:1];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v60 = v70 = 0u;
    v9 = [v60 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v61 = 0;
      v13 = *v68;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v68 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v67 + 1) + 8 * i);
          v16 = [v60 objectForKeyedSubscript:v15];
          v17 = [v16 count];

          if (v12 < v17)
          {
            v18 = v15;

            v12 = v17;
            v61 = v18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v61 = 0;
    }

    v20 = [(RTMapItemProviderBluePOI *)self _confidenceCoefficientsForAOI:v61 AOIOccurenceCount:v12 POIResults:v56];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        v25 = [v61 unsignedIntegerValue];
        *buf = 138413058;
        v73 = v23;
        v74 = 2112;
        v75 = v24;
        v76 = 2048;
        v77 = v25;
        v78 = 2048;
        v79 = *&v12;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, AOI MUID with the largest number of occurrences, %lu, largest number of occurrences, %lu.", buf, 0x2Au);
      }
    }

    [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v57, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v19 = v66 = 0u;
    v26 = v57;
    v62 = [v26 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v62)
    {
      v59 = *v64;
      v58 = v26;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v64 != v59)
          {
            objc_enumerationMutation(v26);
          }

          v28 = *(*(&v63 + 1) + 8 * j);
          v29 = [v28 mapItem];
          v30 = [v29 mapItemPlaceType];

          if (v30 == 2)
          {
            v31 = MEMORY[0x277CCABB0];
            v32 = [v28 mapItem];
            v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "muid")}];

            [v28 confidence];
            v35 = v34;
            v36 = [v20 objectForKeyedSubscript:v33];
            [v36 doubleValue];
            v38 = v35 * v37;

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v39 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = objc_opt_class();
                v41 = NSStringFromClass(v40);
                NSStringFromSelector(a2);
                v42 = v19;
                v43 = v20;
                v44 = self;
                v46 = v45 = a2;
                *buf = 138413059;
                v73 = v41;
                v74 = 2112;
                v75 = v46;
                v76 = 2117;
                v77 = v28;
                v78 = 2048;
                v79 = v38;
                _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, confidence for map item, %{sensitive}@, was changed to, %f.", buf, 0x2Au);

                a2 = v45;
                self = v44;
                v20 = v43;
                v19 = v42;
                v26 = v58;
              }
            }

            v47 = objc_alloc(MEMORY[0x277D01128]);
            v48 = [v28 mapItem];
            v49 = [v47 initWithMapItem:v48 confidence:objc_msgSend(v28 source:{"source"), v38}];

            [v19 addObject:v49];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                v51 = objc_opt_class();
                v52 = NSStringFromClass(v51);
                v53 = NSStringFromSelector(a2);
                *buf = 138412803;
                v73 = v52;
                v74 = 2112;
                v75 = v53;
                v76 = 2117;
                v77 = v28;
                _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, confidence for map item, %{sensitive}@, remains unchanged.", buf, 0x20u);
              }
            }

            [v19 addObject:v28];
          }
        }

        v62 = [v26 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v62);
    }

    v7 = v57;
    v8 = v55;
  }

  else
  {
    v19 = v7;
  }

  return v19;
}

- (id)_confidenceCoefficientsForAOI:(id)a3 AOIOccurenceCount:(unint64_t)a4 POIResults:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = a4;
    v12 = *v21;
    v13 = vcvtd_n_f64_u64(a4, 1uLL);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v6 objectForKeyedSubscript:v15];
        v17 = [v16 count];

        if (v13 >= v17)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17 / v11];
          [v7 setObject:v18 forKeyedSubscript:v15];
        }

        else
        {
          [v7 setObject:&unk_2845A1958 forKeyedSubscript:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)filterByDistance:(id)a3 location:(id)a4 thresholdForUnknownLabel:(double)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v10 count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239];
    v14 = [v10 filteredArrayUsingPredicate:v13];

    if ([v14 count])
    {
      [v12 addObjectsFromArray:v14];
    }

    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241];
    v16 = [v10 filteredArrayUsingPredicate:v15];

    [(RTMapItemProviderBluePOIParameters *)self->_parameters poiDistanceThreshold];
    v33 = 0;
    v17 = [(RTMapItemProviderBase *)self filterInferredMapItems:v16 byDistance:v11 fromLocation:0 andAppendSource:&v33 error:?];
    v18 = v33;

    if (v18)
    {
      if (a6)
      {
        v19 = v18;
        v20 = 0;
        *a6 = v18;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      if ([v17 count])
      {
        [v12 addObjectsFromArray:v17];
      }

      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_243];
      v22 = [v10 filteredArrayUsingPredicate:v21];

      v32 = 0;
      v23 = [(RTMapItemProviderBase *)self filterInferredMapItems:v22 byDistance:v11 fromLocation:0 andAppendSource:&v32 error:a5];
      v18 = v32;

      if (v18)
      {
        if (a6)
        {
          v24 = v18;
          v20 = 0;
          *a6 = v18;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        if ([v23 count])
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v31 = [v23 firstObject];
            v29 = [v31 mapItem];
            v30 = [v29 mapItemPlaceType];
            *buf = 138412546;
            v35 = v28;
            v36 = 2048;
            v37 = v30;
            _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, unknown label type, %ld", buf, 0x16u);
          }

          [v12 addObjectsFromArray:v23];
        }

        v20 = v12;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL __85__RTMapItemProviderBluePOI_filterByDistance_location_thresholdForUnknownLabel_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 mapItemPlaceType] == 1;

  return v3;
}

BOOL __85__RTMapItemProviderBluePOI_filterByDistance_location_thresholdForUnknownLabel_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mapItem];
  v3 = [v2 mapItemPlaceType] == 2;

  return v3;
}

BOOL __85__RTMapItemProviderBluePOI_filterByDistance_location_thresholdForUnknownLabel_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mapItem];
  if ([v3 mapItemPlaceType] == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 mapItem];
    v4 = [v5 mapItemPlaceType] != 1;
  }

  return v4;
}

- (id)_filterByCategories:(id)a3 categories:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    aSelector = a2;
    v26 = v6;
    v27 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 mapItem];
          if ([v14 mapItemPlaceType] == 1)
          {
            v15 = [v13 mapItem];
            v16 = [v15 category];
            v17 = [v7 containsObject:v16];

            if (v17)
            {
              [v27 addObject:v13];
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v10);
    }

LABEL_15:

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = NSStringFromSelector(aSelector);
        v21 = [v27 count];
        v22 = [v27 firstObject];
        *buf = 138413059;
        v33 = v20;
        v34 = 2112;
        v35 = v7;
        v36 = 2048;
        v37 = v21;
        v38 = 2117;
        v39 = v22;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, categories, %@, filteredMapItems count, %lu, filteredMapItem, %{sensitive}@", buf, 0x2Au);
      }
    }

    if ([v27 count])
    {
      v23 = v27;
    }

    else
    {
      v23 = v8;
    }

    v18 = v23;

    v6 = v26;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_filterByConfidence:(id)a3 aoiConfidencePassThroughThreshold:(double)a4 aoiConfidenceConsiderThreshold:(double)a5 poiConfidencePassThroughThreshold:(double)a6 poiConfidenceConsiderThreshold:(double)a7 error:(id *)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if ([v12 count])
  {
    v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = v12;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (!v14)
    {
      goto LABEL_30;
    }

    v15 = v14;
    v41 = 0;
    v16 = *v43;
    v17 = MEMORY[0x277D86220];
    v18 = 1;
    v19 = 1;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [v21 mapItem];
        v23 = [v22 mapItemPlaceType];

        if (v23 == 1)
        {
          if (v19)
          {
            [v21 confidence];
            if (v24 < a4)
            {
              goto LABEL_19;
            }

            LOBYTE(v41) = 1;
            v25 = a4;
          }

          else
          {
            if ((v41 & 1) == 0)
            {
              goto LABEL_19;
            }

            [v21 confidence];
            if (v27 < a5)
            {
              goto LABEL_19;
            }

            LOBYTE(v41) = 1;
            v25 = a5;
          }
        }

        else if (v18)
        {
          [v21 confidence];
          if (v26 < a6)
          {
            goto LABEL_19;
          }

          BYTE4(v41) = 1;
          v25 = a6;
        }

        else
        {
          if ((v41 & 0x100000000) == 0 || ([v21 confidence], v28 < a7))
          {
LABEL_19:
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              goto LABEL_28;
            }

            v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              goto LABEL_27;
            }

            v30 = NSStringFromSelector(a2);
            *buf = 138412803;
            v47 = v30;
            v48 = 2048;
            v49 = a4;
            v50 = 2117;
            v51 = v21;
            v31 = v29;
            v32 = "%@, filtered mapItem by confidence %0.2f, %{sensitive}@";
            goto LABEL_26;
          }

          BYTE4(v41) = 1;
          v25 = a7;
        }

        [v40 addObject:v21];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = NSStringFromSelector(a2);
          *buf = 138412803;
          v47 = v30;
          v48 = 2048;
          v49 = v25;
          v50 = 2117;
          v51 = v21;
          v31 = v29;
          v32 = "%@, passed mapItem by confidence %0.2f, %{sensitive}@";
LABEL_26:
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, v32, buf, 0x20u);
        }

LABEL_27:

LABEL_28:
        v33 = [v21 mapItem];
        v34 = [v33 mapItemPlaceType];
        v35 = v34 != 1;
        v36 = v34 == 1;

        v18 &= v36;
        v19 &= v35;
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (!v15)
      {
LABEL_30:

        v12 = v38;
        goto LABEL_32;
      }
    }
  }

  v40 = 0;
LABEL_32:

  return v40;
}

- (BOOL)skipForOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 endDate];
  v7 = [v5 startDate];

  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  [(RTMapItemProviderBluePOIParameters *)self->_parameters minVisitLength];
  return v9 <= v10;
}

@end