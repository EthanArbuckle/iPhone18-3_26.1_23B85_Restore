@interface RTMapItemProviderBluePOI
+ (NSArray)preferredAOICategories;
- (BOOL)_hasMapItemInQueryResult:(id)result placeType:(unint64_t)type;
- (BOOL)_shouldPerformServerBluePOIForLocalBluePOIError:(id)error;
- (BOOL)chooseBestAoiInferredMapItem:(id *)item PoiInferredMapItem:(id *)mapItem fromSortedAveragedResults:(id)results error:(id *)error;
- (BOOL)skipForOptions:(id)options error:(id *)error;
- (BOOL)sortedQueryResult:(id)result correspondsToAoi:(id)aoi poi:(id)poi;
- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 parameters:(id)self3 placeInferenceQueryStore:(id)self4 platform:(id)self5;
- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 placeInferenceQueryStore:(id)self3 platform:(id)self4;
- (id)_adjustConfidencesOfTheSelectedResult:(id)result allQueryResults:(id)results;
- (id)_bestAOIFromAOIs:(id)is;
- (id)_bluePOIQueryFromFingerprint:(id)fingerprint fingerprintIdx:(unint64_t)idx referenceLocationArray:(id)array selected:(BOOL)selected endDate:(id)date totalAPsCount:(unint64_t *)count error:(id *)error;
- (id)_computeEarlyStopQueryResultFromResults:(id)results originalMaxNumberOfQueries:(unint64_t)queries aoiConfidencePassThroughThreshold:(double)threshold poiConfidencePassThroughThreshold:(double)throughThreshold;
- (id)_confidenceCoefficientsForAOI:(id)i AOIOccurenceCount:(unint64_t)count POIResults:(id)results;
- (id)_fetchAllFingerprintsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)_filterByCategories:(id)categories categories:(id)a4;
- (id)_filterByConfidence:(id)confidence aoiConfidencePassThroughThreshold:(double)threshold aoiConfidenceConsiderThreshold:(double)considerThreshold poiConfidencePassThroughThreshold:(double)throughThreshold poiConfidenceConsiderThreshold:(double)confidenceConsiderThreshold error:(id *)error;
- (id)_filterLessRelevantAOIsFromQueryResult:(id)result;
- (id)_filterOutEmptyFingerprintsFromFingerprints:(id)fingerprints endDate:(id)date;
- (id)_mapItemsFromBluePOIQuery:(id)query startDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)_mapItemsFromBluePOIServerQuery:(id)query startDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)_mapItemsWithFidelityPolicy:(unint64_t)policy locations:(id)locations accessPoints:(id)points referenceLocation:(id)location options:(id)options error:(id *)error;
- (id)_mapItemsWithinDistance:(double)distance location:(id)location startDate:(id)date endDate:(id)endDate maxQueryAttemps:(unint64_t)attemps error:(id *)error;
- (id)_selectFingerprintsStartDate:(id)date endDate:(id)endDate maxQueryAttemps:(unint64_t)attemps isTimeWindowFallback:(BOOL *)fallback fingerprintsTotalOut:(unint64_t *)out fingerprintsNonZeroAPsTotalOut:(unint64_t *)totalOut error:(id *)error;
- (id)_timeZoneFromLocation:(id)location;
- (id)bestQueryFromAggregatedQueries:(id)queries error:(id *)error;
- (id)bestQueryFromSortedQueryResults:(id)results bestAoiInferredMapItem:(id)item bestPoiInferredMapItem:(id)mapItem error:(id *)error;
- (id)bestQueryFromSortedQueryResults:(id)results bestInferredMapItem:(id)item error:(id *)error;
- (id)collapseDedupedInferredMapItems:(id)items inferredMapItemDeduperState:(id)state error:(id *)error;
- (id)dedupeQueryResults:(id)results error:(id *)error;
- (id)filterByDistance:(id)distance location:(id)location thresholdForUnknownLabel:(double)label error:(id *)error;
- (id)getAllBluePOIQuerriesForStartDate:(id)date endDate:(id)endDate location:(id)location error:(id *)error;
- (id)inferredMapItemsFromPlist:(id)plist error:(id *)error;
- (id)mapItemFromPlistDictionary:(id)dictionary;
- (id)mapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options error:(id *)error;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
- (id)sortQueryResults:(id)results error:(id *)error;
- (id)sortedAveragedQueryResults:(id)results baseDuration:(double)duration error:(id *)error;
- (unint64_t)numberOfRealtimeQueriesForInterval:(id)interval;
- (void)_submitPerformanceMetricsForResults:(id)results noFingerprints:(BOOL)fingerprints originalMaxNumberOfQueries:(unint64_t)queries aoiConfidencePassThroughThreshold:(double)threshold poiConfidencePassThroughThreshold:(double)throughThreshold fingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount nonZeroAccessPointsFingerprintsCount:(unint64_t)self0 queryCount:(unint64_t)self1 firstResultQueryCount:(unint64_t)self2 error:(id)self3 visitInterval:(double)self4 visitSource:(int64_t)self5;
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

- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 placeInferenceQueryStore:(id)self3 platform:(id)self4
{
  platformCopy = platform;
  storeCopy = store;
  activityManagerCopy = activityManager;
  serviceManagerCopy = serviceManager;
  itemManagerCopy = itemManager;
  locationManagerCopy = locationManager;
  fingerprintManagerCopy = fingerprintManager;
  calculatorCopy = calculator;
  tileManagerCopy = tileManager;
  monitorCopy = monitor;
  metricManagerCopy = metricManager;
  managerCopy = manager;
  v31 = [[RTMapItemProviderBluePOIParameters alloc] initWithDefaultsManager:managerCopy];
  v34 = [(RTMapItemProviderBluePOI *)self initWithDefaultsManager:managerCopy bluePOIMetricManager:metricManagerCopy bluePOIMonitor:monitorCopy bluePOITileManager:tileManagerCopy distanceCalculator:calculatorCopy fingerprintManager:fingerprintManagerCopy locationManager:locationManagerCopy mapItemManager:itemManagerCopy mapServiceManager:serviceManagerCopy motionActivityManager:activityManagerCopy parameters:v31 placeInferenceQueryStore:storeCopy platform:platformCopy];

  return v34;
}

- (RTMapItemProviderBluePOI)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator fingerprintManager:(id)fingerprintManager locationManager:(id)locationManager mapItemManager:(id)self0 mapServiceManager:(id)self1 motionActivityManager:(id)self2 parameters:(id)self3 placeInferenceQueryStore:(id)self4 platform:(id)self5
{
  v55 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  obj = metricManager;
  metricManagerCopy = metricManager;
  monitorCopy = monitor;
  monitorCopy2 = monitor;
  tileManagerCopy = tileManager;
  calculatorCopy = calculator;
  fingerprintManagerCopy = fingerprintManager;
  locationManagerCopy = locationManager;
  itemManagerCopy = itemManager;
  serviceManagerCopy = serviceManager;
  activityManagerCopy = activityManager;
  parametersCopy = parameters;
  storeCopy = store;
  platformCopy = platform;
  v42 = platformCopy;
  v43 = metricManagerCopy;
  if (!metricManagerCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v31 = 0;
    v25 = tileManagerCopy;
    selfCopy3 = self;
    goto LABEL_25;
  }

  if (!monitorCopy2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v25 = tileManagerCopy;
    selfCopy3 = self;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_24:

      v31 = 0;
LABEL_25:
      v26 = managerCopy;
      goto LABEL_50;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: bluePOIMonitor";
LABEL_39:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_24;
  }

  v25 = tileManagerCopy;
  selfCopy3 = self;
  if (!tileManagerCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v26 = managerCopy;
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

  v26 = managerCopy;
  if (!managerCopy)
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

  if (!fingerprintManagerCopy)
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

  if (!locationManagerCopy)
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

  if (!itemManagerCopy)
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

  if (!serviceManagerCopy)
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

  if (!activityManagerCopy)
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

  if (!parametersCopy)
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

  if (!storeCopy)
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

  if (!platformCopy)
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
  selfCopy3 = [(RTMapItemProviderBase *)&v52 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  if (selfCopy3)
  {
    v27 = [[RTInferredMapItemDeduper alloc] initWithDeduperFunction:&__block_literal_global_11];
    inferredMapItemDeduper = selfCopy3->_inferredMapItemDeduper;
    selfCopy3->_inferredMapItemDeduper = v27;

    if (selfCopy3->_inferredMapItemDeduper)
    {
      objc_storeStrong(&selfCopy3->_bluePOIMetricManager, obj);
      objc_storeStrong(&selfCopy3->_bluePOIMonitor, monitorCopy);
      objc_storeStrong(&selfCopy3->_bluePOITileManager, tileManager);
      objc_storeStrong(&selfCopy3->_fingerprintManager, fingerprintManager);
      objc_storeStrong(&selfCopy3->_locationManager, locationManager);
      objc_storeStrong(&selfCopy3->_mapItemManager, itemManager);
      objc_storeStrong(&selfCopy3->_mapServiceManager, serviceManager);
      objc_storeStrong(&selfCopy3->_motionActivityManager, activityManager);
      objc_storeStrong(&selfCopy3->_placeInferenceQueryStore, store);
      objc_storeStrong(&selfCopy3->_platform, platform);
      objc_storeStrong(&selfCopy3->_parameters, parameters);
      v26 = managerCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          parameters = selfCopy3->_parameters;
          *buf = 138412290;
          parametersCopy2 = parameters;
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
  selfCopy3 = selfCopy3;
  v31 = selfCopy3;
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

- (id)dedupeQueryResults:(id)results error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if (resultsCopy)
  {
    v8 = [[_RTMap alloc] initWithInput:resultsCopy];
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

      if (error)
      {
        v15 = v13;
        v16 = 0;
        *error = v13;
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

      if (error)
      {
        v21 = v19;
        v16 = 0;
        *error = v19;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v22 = [v18 count];
      if (v22 == [resultsCopy count])
      {
        v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
        if ([v18 count])
        {
          v36 = v12;
          v38 = v9;
          v23 = 0;
          do
          {
            v24 = objc_alloc(MEMORY[0x277D011C0]);
            v25 = [v18 objectAtIndexedSubscript:v23];
            v26 = [resultsCopy objectAtIndexedSubscript:v23];
            secondObject = [v26 secondObject];
            v28 = [v24 initWithFirstObject:v25 secondObject:secondObject];

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
      if (error)
      {
        v31 = v40;
        *error = v31;
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

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"queryResults");
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_31:

  return v16;
}

- (id)collapseDedupedInferredMapItems:(id)items inferredMapItemDeduperState:(id)state error:(id *)error
{
  v95 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  stateCopy = state;
  v10 = stateCopy;
  if (!itemsCopy)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: allDedupedInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v51 = @"allDedupedInferredMapItems";
LABEL_38:
      _RTErrorInvalidParameterCreate(v51);
      *error = v49 = 0;
      goto LABEL_50;
    }

LABEL_39:
    v49 = 0;
    goto LABEL_50;
  }

  if (!stateCopy)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemDeduperState", buf, 2u);
    }

    if (error)
    {
      v51 = @"inferredMapItemDeduperState";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  errorCopy = error;
  v11 = 0x277CBE000uLL;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v13 = itemsCopy;
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
              mapItem = [v24 mapItem];
              identifier = [mapItem identifier];

              v27 = [v18 objectForKeyedSubscript:identifier];

              v28 = MEMORY[0x277CCABB0];
              if (v27)
              {
                v29 = [v18 objectForKeyedSubscript:identifier];
                [v29 doubleValue];
                v31 = v30;
                [v24 confidence];
                v33 = [v28 numberWithDouble:v31 + v32];
                [v18 setObject:v33 forKeyedSubscript:identifier];
              }

              else
              {
                [v24 confidence];
                v29 = [v28 numberWithDouble:?];
                [v18 setObject:v29 forKeyedSubscript:identifier];
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
              if (errorCopy)
              {
                v60 = v57;
                *errorCopy = v57;
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

- (id)sortedAveragedQueryResults:(id)results baseDuration:(double)duration error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if (![resultsCopy count])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: correctedQueryResults.count != 0", buf, 2u);
    }

    if (error)
    {
      v10 = @"correctedQueryResults.count != 0";
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if (duration < 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: baseDuration >= 0", buf, 2u);
    }

    if (error)
    {
      v10 = @"baseDuration >= 0";
LABEL_11:
      _RTErrorInvalidParameterCreate(v10);
      *error = v12 = 0;
      goto LABEL_48;
    }

LABEL_30:
    v12 = 0;
    goto LABEL_48;
  }

  aSelector = a2;
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v70 = resultsCopy;
  obj = resultsCopy;
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
        secondObject = [v16 secondObject];
        [secondObject duration];
        v19 = v18;

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        firstObject = [v16 firstObject];
        v20 = [firstObject countByEnumeratingWithState:&v81 objects:v97 count:16];
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
                objc_enumerationMutation(firstObject);
              }

              v24 = *(*(&v81 + 1) + 8 * i);
              v25 = MEMORY[0x277CCABB0];
              mapItem = [v24 mapItem];
              v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(mapItem, "muid")}];

              v28 = [dictionary objectForKeyedSubscript:v27];

              if (v28)
              {
                mapItem2 = [dictionary objectForKeyedSubscript:v27];
                v30 = objc_alloc(MEMORY[0x277CCA980]);
                [v24 confidence];
                v32 = v31;
                secondObject2 = [v16 secondObject];
                [secondObject2 duration];
                v35 = [v30 initWithDouble:v32 * (v34 + duration)];
                v36 = [mapItem2 decimalNumberByAdding:v35];
                [dictionary setObject:v36 forKeyedSubscript:v27];
              }

              else
              {
                v37 = objc_alloc(MEMORY[0x277CCA980]);
                [v24 confidence];
                v39 = v38;
                secondObject3 = [v16 secondObject];
                [secondObject3 duration];
                v42 = [v37 initWithDouble:v39 * (v41 + duration)];
                [dictionary setObject:v42 forKeyedSubscript:v27];

                mapItem2 = [v24 mapItem];
                [dictionary2 setObject:mapItem2 forKeyedSubscript:v27];
              }
            }

            v21 = [firstObject countByEnumeratingWithState:&v81 objects:v97 count:16];
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

  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dictionary, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v44 = dictionary;
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
        v51 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:{v14 + duration * objc_msgSend(obj, "count")}];
        v52 = [v50 decimalNumberByDividingBy:v51];
        [v52 doubleValue];
        v54 = v53;

        v55 = objc_alloc(MEMORY[0x277D01128]);
        v56 = [dictionary2 objectForKeyedSubscript:v49];
        v57 = [dictionary2 objectForKeyedSubscript:v49];
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

          resultsCopy = v70;
          if (errorCopy)
          {
            v65 = v60;
            v12 = 0;
            *errorCopy = v60;
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
  resultsCopy = v70;
LABEL_47:

LABEL_48:

  return v12;
}

- (BOOL)chooseBestAoiInferredMapItem:(id *)item PoiInferredMapItem:(id *)mapItem fromSortedAveragedResults:(id)results error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v10 = resultsCopy;
  if (!item)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAoiInferredMapItem", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_30;
    }

    v21 = @"outAoiInferredMapItem";
    goto LABEL_29;
  }

  if (!mapItem)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outPoiInferredMapItem", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_30;
    }

    v21 = @"outPoiInferredMapItem";
LABEL_29:
    _RTErrorInvalidParameterCreate(v21);
    *error = v24 = 0;
    goto LABEL_31;
  }

  if (!resultsCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedAveragedResults", buf, 2u);
    }

    if (error)
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
  v11 = resultsCopy;
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
        mapItem = [v16 mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        if (mapItemPlaceType != 1)
        {
          v23 = v16;
          *mapItem = v16;
          goto LABEL_24;
        }

        if (!*item)
        {
          v19 = v16;
          *item = v16;
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

- (id)sortQueryResults:(id)results error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v7 = resultsCopy;
  if (resultsCopy)
  {
    aSelector = a2;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
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
          firstObject = [v13 firstObject];
          v51[0] = v14;
          v51[1] = v15;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
          v18 = [firstObject sortedArrayUsingDescriptors:v17];

          v19 = objc_alloc(MEMORY[0x277D011C0]);
          secondObject = [v13 secondObject];
          v21 = [v19 initWithFirstObject:v18 secondObject:secondObject];

          if (v21)
          {
            [v8 addObject:v21];
          }

          else
          {
            v22 = v8;
            errorCopy = error;
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

            error = errorCopy;
            if (errorCopy)
            {
              v28 = v26;
              *errorCopy = v26;
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

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"queryResults");
      *error = v30 = 0;
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

- (id)bestQueryFromSortedQueryResults:(id)results bestInferredMapItem:(id)item error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  itemCopy = item;
  if (!resultsCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_39;
    }

    v29 = @"sortedQueryResults";
    goto LABEL_38;
  }

  if (![resultsCopy count])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults.count > 0", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_39;
    }

    v29 = @"sortedQueryResults.count > 0";
LABEL_38:
    _RTErrorInvalidParameterCreate(v29);
    *error = firstObject2 = 0;
    goto LABEL_47;
  }

  if (!itemCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bestInferredMapItem", buf, 2u);
    }

    if (error)
    {
      v29 = @"bestInferredMapItem";
      goto LABEL_38;
    }

LABEL_39:
    firstObject2 = 0;
    goto LABEL_47;
  }

  aSelector = a2;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = resultsCopy;
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

    if (error)
    {
      v36 = v12;
      firstObject2 = 0;
      *error = v12;
    }

    else
    {
      firstObject2 = 0;
    }

    goto LABEL_46;
  }

  v41 = resultsCopy;
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
      firstObject = [v14 firstObject];
      v16 = [firstObject countByEnumeratingWithState:&v45 objects:v59 count:16];
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
              objc_enumerationMutation(firstObject);
            }

            if ([(RTInferredMapItemDeduper *)self->_inferredMapItemDeduper inferredMapItem:*(*(&v45 + 1) + 8 * j) dedupesToInferredMapItem:itemCopy error:0])
            {
              if (v12)
              {
                secondObject = [v14 secondObject];
                [secondObject duration];
                v22 = v21;
                secondObject2 = [v12 secondObject];
                [secondObject2 duration];
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

          v17 = [firstObject countByEnumeratingWithState:&v45 objects:v59 count:16];
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

  resultsCopy = v41;
  if (!v12)
  {
    goto LABEL_41;
  }

  firstObject2 = [v12 firstObject];
LABEL_46:

LABEL_47:

  return firstObject2;
}

- (BOOL)sortedQueryResult:(id)result correspondsToAoi:(id)aoi poi:(id)poi
{
  v35 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  aoiCopy = aoi;
  poiCopy = poi;
  v11 = poiCopy;
  if (!resultCopy)
  {
    firstObject = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: sortedQueryResult";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, firstObject, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_25;
  }

  if (!aoiCopy)
  {
    firstObject = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: bestAoiInferredMapItem";
    goto LABEL_21;
  }

  if (!poiCopy)
  {
    firstObject = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: bestPoiInferredMapItem";
      goto LABEL_21;
    }

LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

  firstObject = [resultCopy firstObject];
  v12FirstObject = [firstObject firstObject];

  if (!v12FirstObject)
  {
    goto LABEL_25;
  }

  inferredMapItemDeduper = self->_inferredMapItemDeduper;
  v12FirstObject2 = [firstObject firstObject];
  LODWORD(inferredMapItemDeduper) = [(RTInferredMapItemDeduper *)inferredMapItemDeduper inferredMapItem:aoiCopy dedupesToInferredMapItem:v12FirstObject2 error:0];

  if (!inferredMapItemDeduper)
  {
    goto LABEL_25;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  firstObject = firstObject;
  v16 = [firstObject countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = 48;
    selfCopy = self;
    v18 = *v30;
LABEL_8:
    v19 = 0;
    while (1)
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(firstObject);
      }

      v20 = *(*(&v29 + 1) + 8 * v19);
      mapItem = [v20 mapItem];
      mapItemPlaceType = [mapItem mapItemPlaceType];

      if (mapItemPlaceType != 1)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [firstObject countByEnumeratingWithState:&v29 objects:v34 count:16];
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

    v23 = [*(&selfCopy->super.super.isa + v27) inferredMapItem:v11 dedupesToInferredMapItem:v24 error:0];
  }

  else
  {
LABEL_14:
    v23 = 0;
    v24 = firstObject;
  }

LABEL_26:
  return v23;
}

- (id)bestQueryFromSortedQueryResults:(id)results bestAoiInferredMapItem:(id)item bestPoiInferredMapItem:(id)mapItem error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  itemCopy = item;
  mapItemCopy = mapItem;
  if (!resultsCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_35;
    }

    v30 = @"sortedQueryResults";
    goto LABEL_29;
  }

  if (![resultsCopy count])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sortedQueryResults.count > 0", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_35;
    }

    v30 = @"sortedQueryResults.count > 0";
LABEL_29:
    _RTErrorInvalidParameterCreate(v30);
    *error = firstObject = 0;
    goto LABEL_36;
  }

  if (!(itemCopy | mapItemCopy))
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

    if (error)
    {
      v37 = v35;
      *error = v35;
    }

LABEL_35:
    firstObject = 0;
    goto LABEL_36;
  }

  v54 = itemCopy;
  if (itemCopy && mapItemCopy)
  {
    aSelector = a2;
    errorCopy = error;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = resultsCopy;
    v15 = [v14 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v52 = resultsCopy;
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
          if ([(RTMapItemProviderBluePOI *)self sortedQueryResult:v20 correspondsToAoi:itemCopy poi:mapItemCopy, aSelector])
          {
            if (v17)
            {
              secondObject = [v20 secondObject];
              [secondObject duration];
              v23 = v22;
              secondObject2 = [v17 secondObject];
              [secondObject2 duration];
              v26 = v25;

              if (v23 > v26)
              {
                v27 = v20;

                v17 = v27;
              }

              itemCopy = v54;
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

      resultsCopy = v52;
      if (v17)
      {
        firstObject = [v17 firstObject];
LABEL_59:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v56 = 0;
    aSelector = [(RTMapItemProviderBluePOI *)self bestQueryFromSortedQueryResults:v14 bestInferredMapItem:itemCopy error:&v56, aSelector];
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

        itemCopy = v54;
      }

      if (errorCopy)
      {
        v46 = v17;
        firstObject = 0;
        *errorCopy = v17;
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = aSelector;
    }

    goto LABEL_59;
  }

  if (itemCopy)
  {
    v39 = itemCopy;
  }

  else
  {
    v39 = mapItemCopy;
  }

  v55 = 0;
  v40 = [(RTMapItemProviderBluePOI *)self bestQueryFromSortedQueryResults:resultsCopy bestInferredMapItem:v39 error:&v55];
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

      itemCopy = v54;
    }

    if (error)
    {
      v43 = v41;
      firstObject = 0;
      *error = v41;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = v40;
  }

LABEL_36:

  return firstObject;
}

- (id)bestQueryFromAggregatedQueries:(id)queries error:(id *)error
{
  v119 = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  v7 = queriesCopy;
  if (!queriesCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aggregatedQueries", buf, 2u);
    }

    if (error)
    {
      v30 = @"aggregatedQueries";
LABEL_29:
      _RTErrorInvalidParameterCreate(v30);
      *error = v28 = 0;
      goto LABEL_107;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_107;
  }

  if (![queriesCopy count])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: aggregatedQueries.count > 0", buf, 2u);
    }

    if (error)
    {
      v30 = @"aggregatedQueries.count > 0";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  errorCopy = error;
  selfCopy = self;
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
          secondObject = [v10 secondObject];
          [secondObject duration];
          *buf = 138412802;
          v114 = v12;
          v115 = 2048;
          v116 = v8;
          v117 = 2048;
          v118 = v14;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, query, %lu, duration %.3f", buf, 0x20u);
        }
      }

      firstObject = [v10 firstObject];
      v16 = [firstObject count];

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
              firstObject2 = [v10 firstObject];
              v21 = [firstObject2 objectAtIndexedSubscript:v17];
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
          firstObject3 = [v10 firstObject];
          v23 = [firstObject3 count];
        }

        while (v17 < v23);
      }

      ++v8;
      v7 = v103;
    }

    while (v8 < [v103 count]);
  }

  v112 = 0;
  v24 = [(RTMapItemProviderBluePOI *)selfCopy dedupeQueryResults:v7 error:&v112];
  v25 = v112;
  v26 = v25;
  if (v25)
  {
    if (errorCopy)
    {
      v27 = v25;
      v28 = 0;
      *errorCopy = v26;
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
            secondObject2 = [v34 secondObject];
            [secondObject2 duration];
            *buf = 138412802;
            v114 = v36;
            v115 = 2048;
            v116 = v32;
            v117 = 2048;
            v118 = v38;
            _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, corrected query, %lu, duration %.3f", buf, 0x20u);
          }
        }

        firstObject4 = [v34 firstObject];
        v40 = [firstObject4 count];

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
                firstObject5 = [v34 firstObject];
                v45 = [firstObject5 objectAtIndexedSubscript:v41];
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
            firstObject6 = [v34 firstObject];
            v47 = [firstObject6 count];
          }

          while (v41 < v47);
        }

        ++v32;
        v24 = v101;
      }

      while (v32 < [v101 count]);
    }

    [(RTMapItemProviderBluePOIParameters *)selfCopy->_parameters baseDuration];
    v111 = 0;
    v48 = [(RTMapItemProviderBluePOI *)selfCopy sortedAveragedQueryResults:v24 baseDuration:&v111 error:?];
    v49 = v111;
    v50 = v49;
    if (v49)
    {
      if (errorCopy)
      {
        v51 = v49;
        v28 = 0;
        *errorCopy = v50;
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
      [(RTMapItemProviderBluePOI *)selfCopy chooseBestAoiInferredMapItem:&v110 PoiInferredMapItem:&v109 fromSortedAveragedResults:v48 error:&v108];
      v57 = v110;
      v58 = v109;
      v59 = v108;
      v60 = v59;
      if (v59)
      {
        v7 = v104;
        v24 = v102;
        if (errorCopy)
        {
          v61 = v59;
          v28 = 0;
          *errorCopy = v60;
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
        v98 = [(RTMapItemProviderBluePOI *)selfCopy sortQueryResults:v102 error:&v107];
        v64 = v107;
        v65 = v64;
        if (v64)
        {
          v50 = 0;
          if (errorCopy)
          {
            v66 = v64;
            v28 = 0;
            *errorCopy = v65;
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
                  secondObject3 = [v70 secondObject];
                  [secondObject3 duration];
                  *buf = 138412802;
                  v114 = v72;
                  v115 = 2048;
                  v116 = v68;
                  v117 = 2048;
                  v118 = v74;
                  _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, sorted query, %lu, duration %.3f", buf, 0x20u);
                }
              }

              firstObject7 = [v70 firstObject];
              v76 = [firstObject7 count];

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
                      firstObject8 = [v70 firstObject];
                      v81 = [firstObject8 objectAtIndexedSubscript:v77];
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
                  firstObject9 = [v70 firstObject];
                  v83 = [firstObject9 count];
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
          v84 = [(RTMapItemProviderBluePOI *)selfCopy bestQueryFromSortedQueryResults:v67 bestAoiInferredMapItem:v57 bestPoiInferredMapItem:v96 error:&v106, v94];
          v85 = v106;
          v86 = v85;
          if (v85)
          {
            v24 = v102;
            v60 = 0;
            if (errorCopy)
            {
              v87 = v85;
              v28 = 0;
              *errorCopy = v86;
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

- (id)mapItemsFromLocations:(id)locations accessPoints:(id)points startDate:(id)date endDate:(id)endDate options:(id)options error:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  pointsCopy = points;
  dateCopy = date;
  endDateCopy = endDate;
  optionsCopy = options;
  [pointsCopy enumerateObjectsUsingBlock:&__block_literal_global_95_0];
  [locationsCopy enumerateObjectsUsingBlock:&__block_literal_global_99_0];
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
  mapServiceManager = [(RTMapItemProviderBluePOI *)self mapServiceManager];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __95__RTMapItemProviderBluePOI_mapItemsFromLocations_accessPoints_startDate_endDate_options_error___block_invoke_100;
  v49[3] = &unk_2788C4490;
  v51 = &v59;
  v52 = &v53;
  v17 = v15;
  v50 = v17;
  [mapServiceManager fetchMapItemsFromLocations:locationsCopy accessPoints:pointsCopy startDate:dateCopy endDate:endDateCopy options:optionsCopy handler:v49];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
    firstObject = [v27 firstObject];

    [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
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
      firstObject2 = [locationsCopy firstObject];
      v38 = [pointsCopy count];
      v39 = [v60[5] count];
      v40 = v54[5];
      *buf = 138740739;
      *&buf[4] = firstObject2;
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
  if (error)
  {
    *error = v54[5];
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

- (id)mapItemFromPlistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"name"];
  v37 = [dictionaryCopy objectForKey:@"category"];
  v36 = [dictionaryCopy objectForKey:@"categoryMUID"];
  v5 = [dictionaryCopy objectForKey:@"mapItemPlaceType"];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"mapItemPlaceType"];
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1000;
  }

  v7 = [dictionaryCopy objectForKey:@"muid"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [dictionaryCopy objectForKey:@"resultProviderID"];
  integerValue = [v9 integerValue];

  v10 = [dictionaryCopy objectForKey:@"latitude"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [dictionaryCopy objectForKey:@"longitude"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [dictionaryCopy objectForKey:@"labelType"];
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

  date = [MEMORY[0x277CBEAA8] date];
  v19 = [date dateByAddingTimeInterval:4838400.0];
  v20 = objc_alloc(MEMORY[0x277D01060]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v29) = 0;
  v31 = [v20 initWithIdentifier:uUID geoAddressData:0 subPremises:0 subThoroughfare:0 thoroughfare:v4 subLocality:0 locality:0 subAdministrativeArea:0 administrativeArea:0 administrativeAreaCode:0 postalCode:0 country:0 countryCode:0 inlandWater:0 ocean:0 areasOfInterest:0 isIsland:v29 creationDate:date expirationDate:v19 iso3166CountryCode:0 iso3166SubdivisionCode:0];

  v22 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:date longitude:v12 horizontalUncertainty:v15 date:1.0];
  v23 = [objc_alloc(MEMORY[0x277D011A8]) initWithAddressIdentifier:0 isMe:0 wifiConfidence:v17 wifiFingerprintLabelType:1.0];
  v24 = objc_alloc(MEMORY[0x277D011A0]);
  [MEMORY[0x277CCAD78] UUID];
  v26 = v25 = v4;
  data = [MEMORY[0x277CBEA90] data];
  LOBYTE(v30) = 0;
  v35 = [v24 initWithIdentifier:v26 name:v25 category:v37 categoryMUID:v36 address:v31 location:v22 source:0x4000 mapItemPlaceType:intValue muid:unsignedIntegerValue resultProviderID:integerValue geoMapItemHandle:data geoMapItemIdentifier:0 creationDate:date expirationDate:v19 extendedAttributes:v23 displayLanguage:0 disputed:v30];

  return v35;
}

- (id)inferredMapItemsFromPlist:(id)plist error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v27 = 1;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:plistCopy isDirectory:&v27];

  if (v9 && (v27 & 1) == 0)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:plistCopy];
    v12 = v11;
    if (v11)
    {
      plistCopy = [v11 objectForKey:@"Inferred Map Items"];
      array = [MEMORY[0x277CBEB18] array];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __60__RTMapItemProviderBluePOI_inferredMapItemsFromPlist_error___block_invoke;
      v25[3] = &unk_2788C4A48;
      v25[4] = self;
      v15 = array;
      v26 = v15;
      [plistCopy enumerateObjectsUsingBlock:v25];
      v16 = v26;
      v17 = v15;

      v10 = v17;
    }

    else
    {
      plistCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create dictionary from plist file, %@", plistCopy];
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = plistCopy;
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

      if (error)
      {
        v22 = v17;
        v10 = 0;
        *error = v17;
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

- (BOOL)_shouldPerformServerBluePOIForLocalBluePOIError:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __76__RTMapItemProviderBluePOI__shouldPerformServerBluePOIForLocalBluePOIError___block_invoke;
  v36[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
  aSelector = a2;
  v36[4] = a2;
  [userInfo enumerateKeysAndObjectsUsingBlock:v36];

  [errorCopy flattenErrors];
  obj = v28 = errorCopy;
  v32 = 0u;
  v33 = 0u;
  v8 = errorCopy != 0;
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
        userInfo2 = [v13 userInfo];
        v15 = [userInfo2 objectForKey:v11];
        if (v15)
        {
          userInfo3 = [v13 userInfo];
          v3 = [userInfo3 objectForKey:v11];
          if ([v3 isEqual:&unk_28459CF90])
          {
            v16 = 1;
LABEL_17:

            goto LABEL_18;
          }
        }

        domain = [v13 domain];
        if ([domain isEqualToString:@"NSURLErrorDomain"] && objc_msgSend(v13, "code") == -1009)
        {
          v16 = 1;
        }

        else
        {
          v31 = v8;
          v18 = v3;
          v19 = userInfo3;
          v20 = v10;
          v21 = v11;
          domain2 = [v13 domain];
          if ([domain2 isEqualToString:@"GEOErrorDomain"])
          {
            v16 = [v13 code] == -2000;
          }

          else
          {
            v16 = 0;
          }

          v11 = v21;
          v10 = v20;
          userInfo3 = v19;
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

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  v114 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    injectedPlistPath = [(RTMapItemProviderBluePOIParameters *)self->_parameters injectedPlistPath];

    if (injectedPlistPath)
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

      injectedPlistPath2 = [(RTMapItemProviderBluePOIParameters *)self->_parameters injectedPlistPath];
      v105 = 0;
      v11 = [(RTMapItemProviderBluePOI *)self inferredMapItemsFromPlist:injectedPlistPath2 error:&v105];
      v12 = v105;

      if (v12)
      {
        if (error)
        {
          v13 = v12;
          v14 = 0;
          *error = v12;
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

  locations = [optionsCopy locations];
  if (!locations || ([optionsCopy accessPoints], v16 = objc_claimAutoreleasedReturnValue(), v16, locations, !v16))
  {
    startDate = [optionsCopy startDate];
    if (startDate)
    {
      endDate = [optionsCopy endDate];
      if (endDate)
      {
        startDate2 = [optionsCopy startDate];
        endDate2 = [optionsCopy endDate];
        v45 = [startDate2 isAfterDate:endDate2];

        if (!v45)
        {
          v46 = objc_alloc(MEMORY[0x277CCA970]);
          startDate3 = [optionsCopy startDate];
          endDate3 = [optionsCopy endDate];
          v11 = [v46 initWithStartDate:startDate3 endDate:endDate3];

          v49 = [(RTMapItemProviderBluePOI *)self numberOfRealtimeQueriesForInterval:v11];
          v50 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries]- v49;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = NSStringFromSelector(a2);
              maxNumberOfQueries = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries];
              *buf = 138413058;
              *&buf[4] = v52;
              *&buf[12] = 2048;
              *&buf[14] = maxNumberOfQueries;
              *&buf[22] = 2048;
              v107 = v49;
              v108 = 2048;
              v109 = v50;
              _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, maxNumberOfQueries, %lu, realtime usage, %lu, hindsight usage, %lu", buf, 0x2Au);
            }
          }

          [optionsCopy distance];
          v55 = v54;
          location = [optionsCopy location];
          startDate4 = [optionsCopy startDate];
          endDate4 = [optionsCopy endDate];
          v14 = [(RTMapItemProviderBluePOI *)self _mapItemsWithinDistance:location location:startDate4 startDate:endDate4 endDate:v50 maxQueryAttemps:error error:v55];

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
          v66 = [(RTMapItemProviderBluePOI *)self _filterByConfidence:v14 aoiConfidencePassThroughThreshold:error aoiConfidenceConsiderThreshold:v60 poiConfidencePassThroughThreshold:v62 poiConfidenceConsiderThreshold:v64 error:v65];

          goto LABEL_48;
        }
      }

      else
      {
      }
    }

    if (!error)
    {
      v14 = 0;
      goto LABEL_60;
    }

    v79 = MEMORY[0x277CCA9B8];
    v110 = *MEMORY[0x277CCA450];
    v111 = @"requires a valid date range.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    [v79 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    *error = v14 = 0;
    goto LABEL_59;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = objc_opt_new();
    location2 = [optionsCopy location];

    if (location2)
    {
      location3 = [optionsCopy location];
      [v17 addObject:location3];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v107) = 0;
    locations2 = [optionsCopy locations];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __54__RTMapItemProviderBluePOI_mapItemsWithOptions_error___block_invoke;
    v102[3] = &unk_2788C8148;
    v104 = buf;
    v99 = v17;
    v103 = v99;
    [locations2 enumerateObjectsUsingBlock:v102];

    bluePOIMetricManager = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    requestCollectQueryEvent = [bluePOIMetricManager requestCollectQueryEvent];

    bluePOIMonitor = [(RTMapItemProviderBluePOI *)self bluePOIMonitor];
    location4 = [optionsCopy location];
    accessPoints = [optionsCopy accessPoints];
    v26 = *(*&buf[8] + 24);
    v101 = 0;
    v27 = [bluePOIMonitor fetchLocalMapItemsFromReferenceLocation:location4 locations:v99 accessPoints:accessPoints signalEnv:v26 skipAggregation:objc_msgSend(optionsCopy collectMetrics:"fidelityPolicy") == 64 error:{requestCollectQueryEvent, &v101}];
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
    v30 = ([optionsCopy fidelityPolicy] != 64) & v29;
    if (requestCollectQueryEvent)
    {
      bluePOIMetricManager2 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      [bluePOIMetricManager2 setEventMetricsValue:@"unknown" forKey:@"appIdentifier"];

      clientIdentifier = [optionsCopy clientIdentifier];
      if (clientIdentifier)
      {
        clientIdentifier2 = [optionsCopy clientIdentifier];
        v34 = [clientIdentifier2 hasPrefix:@"com.apple"];

        if (v34)
        {
          bluePOIMetricManager3 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
          clientIdentifier3 = [optionsCopy clientIdentifier];
          [bluePOIMetricManager3 setEventMetricsValue:clientIdentifier3 forKey:@"appIdentifier"];
        }
      }

      bluePOIMetricManager4 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      v38 = [MEMORY[0x277CCABB0] numberWithBool:v30];
      [bluePOIMetricManager4 setEventMetricsValue:v38 forKey:@"serverFallback"];

      bluePOIMetricManager5 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
      [bluePOIMetricManager5 stopCollectQueryEvent];
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
  useBackground = [optionsCopy useBackground];
  v69 = objc_opt_class();
  v70 = NSStringFromClass(v69);
  clientIdentifier4 = [optionsCopy clientIdentifier];
  v72 = [v67 initWithUseBackgroundTraits:useBackground analyticsIdentifier:v70 clientIdentifier:clientIdentifier4];

  fidelityPolicy = [optionsCopy fidelityPolicy];
  locations3 = [optionsCopy locations];
  accessPoints2 = [optionsCopy accessPoints];
  location5 = [optionsCopy location];
  v77 = [(RTMapItemProviderBluePOI *)self _mapItemsWithFidelityPolicy:fidelityPolicy locations:locations3 accessPoints:accessPoints2 referenceLocation:location5 options:v72 error:error];

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
  v66 = [(RTMapItemProviderBluePOI *)self _filterByConfidence:v40 aoiConfidencePassThroughThreshold:error aoiConfidenceConsiderThreshold:v81 poiConfidencePassThroughThreshold:v83 poiConfidenceConsiderThreshold:v85 error:v86];

LABEL_48:
  if (!v66)
  {
    goto LABEL_56;
  }

  parameters = [(RTMapItemProviderBluePOI *)self parameters];
  aoiCategoriesToSuppressContainingPOIs = [parameters aoiCategoriesToSuppressContainingPOIs];
  v14 = [(RTMapItemProviderBluePOI *)self _filterByCategories:v66 categories:aoiCategoriesToSuppressContainingPOIs];

  if (v14)
  {
    [optionsCopy distance];
    if (v89 > 0.0)
    {
      location6 = [optionsCopy location];
      v91 = location6 == 0;

      if (!v91)
      {
        location7 = [optionsCopy location];
        [optionsCopy distance];
        v93 = [(RTMapItemProviderBluePOI *)self filterByDistance:v14 location:location7 thresholdForUnknownLabel:error error:?];

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

- (id)_mapItemsWithFidelityPolicy:(unint64_t)policy locations:(id)locations accessPoints:(id)points referenceLocation:(id)location options:(id)options error:(id *)error
{
  v67[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  pointsCopy = points;
  locationCopy = location;
  optionsCopy = options;
  if ([locationsCopy count])
  {
    aSelector = a2;
    v55 = optionsCopy;
    firstObject = [locationsCopy firstObject];
    timestamp = [firstObject timestamp];

    lastObject = [locationsCopy lastObject];
    timestamp2 = [lastObject timestamp];

    [timestamp2 timeIntervalSinceDate:timestamp];
    v22 = v21;
    v52 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v65 = v52;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v24 = [pointsCopy sortedArrayUsingDescriptors:v23];

    firstObject2 = [v24 firstObject];
    date = [firstObject2 date];
    [timestamp timeIntervalSinceDate:date];
    v28 = v27;

    lastObject2 = [v24 lastObject];
    date2 = [lastObject2 date];
    [timestamp timeIntervalSinceDate:date2];
    v32 = v31;

    +[RTMapItemProviderBluePOIWiFiScanMetrics submitBluePOIWiFiScanMetricsWithFingerprintsCount:fingerprintsZeroAccessPointsCount:fingerprintsNonZeroAccessPointsCount:isFingerprintWindowFallback:timeIntervalSinceEarliestFingerprint:timeIntervalSinceLatestFingerprint:totalAccessPointsCount:visitInterval:visitSource:](RTMapItemProviderBluePOIWiFiScanMetrics, "submitBluePOIWiFiScanMetricsWithFingerprintsCount:fingerprintsZeroAccessPointsCount:fingerprintsNonZeroAccessPointsCount:isFingerprintWindowFallback:timeIntervalSinceEarliestFingerprint:timeIntervalSinceLatestFingerprint:totalAccessPointsCount:visitInterval:visitSource:", [pointsCopy count], 0, objc_msgSend(pointsCopy, "count"), 0, objc_msgSend(pointsCopy, "count"), 1, v28, v32, v22);
    if ([pointsCopy count])
    {
      v33 = objc_opt_new();
      v34 = v33;
      if (locationCopy)
      {
        [v33 addObject:locationCopy];
      }

      v51 = locationCopy;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __111__RTMapItemProviderBluePOI__mapItemsWithFidelityPolicy_locations_accessPoints_referenceLocation_options_error___block_invoke;
      v57[3] = &unk_2788C8170;
      v35 = v34;
      v58 = v35;
      [locationsCopy enumerateObjectsUsingBlock:v57];
      v56 = 0;
      v36 = [(RTMapItemProviderBluePOI *)self mapItemsFromLocations:v35 accessPoints:pointsCopy startDate:timestamp endDate:timestamp2 options:v55 error:&v56];
      v37 = v56;
      v38 = v37;
      if (v37)
      {
        if (error)
        {
          v39 = v37;
          *error = v38;
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
      if (!error)
      {
        v41 = 0;
        goto LABEL_18;
      }

      v51 = locationCopy;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277D01448];
      v63 = *MEMORY[0x277CCA450];
      v64 = @"requires accessPoints.";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      [v44 errorWithDomain:v45 code:7 userInfo:v35];
      *error = v41 = 0;
    }

    locationCopy = v51;
LABEL_18:

    optionsCopy = v55;
    goto LABEL_19;
  }

  if (error)
  {
    v42 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277D01448];
    v66 = *MEMORY[0x277CCA450];
    v67[0] = @"requires locations.";
    timestamp = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    [v42 errorWithDomain:v43 code:7 userInfo:timestamp];
    *error = v41 = 0;
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

- (id)_filterOutEmptyFingerprintsFromFingerprints:(id)fingerprints endDate:(id)date
{
  dateCopy = date;
  v7 = MEMORY[0x277CCAC30];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __80__RTMapItemProviderBluePOI__filterOutEmptyFingerprintsFromFingerprints_endDate___block_invoke;
  v16 = &unk_2788C8198;
  v17 = dateCopy;
  selfCopy = self;
  v8 = dateCopy;
  fingerprintsCopy = fingerprints;
  v10 = [v7 predicateWithBlock:&v13];
  v11 = [fingerprintsCopy filteredArrayUsingPredicate:{v10, v13, v14, v15, v16}];

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

- (unint64_t)numberOfRealtimeQueriesForInterval:(id)interval
{
  v69[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
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
  placeInferenceQueryStore = [(RTMapItemProviderBluePOI *)self placeInferenceQueryStore];
  v45 = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __63__RTMapItemProviderBluePOI_numberOfRealtimeQueriesForInterval___block_invoke;
  v48 = &unk_2788C4490;
  v50 = &v58;
  v51 = &v52;
  v7 = v5;
  v49 = v7;
  [placeInferenceQueryStore fetchPlaceInferenceQueriesWithDateInterval:intervalCopy ascending:1 limit:&unk_28459CFA8 handler:&v45];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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
    sourceIdentifier = [v32 sourceIdentifier];
    v30 = sourceIdentifier == @"com.apple.CoreRoutine.visitManager";

    for (i = 1; i < [v59[5] count]; ++i)
    {
      v35 = [v59[5] objectAtIndexedSubscript:i];
      sourceIdentifier2 = [v35 sourceIdentifier];
      v37 = sourceIdentifier2 == @"com.apple.CoreRoutine.visitManager";

      if (v37)
      {
        v38 = [v59[5] objectAtIndexedSubscript:i];
        date = [v38 date];
        v40 = [v59[5] objectAtIndexedSubscript:i - 1];
        date2 = [v40 date];
        [date timeIntervalSinceDate:date2];
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

- (id)_bestAOIFromAOIs:(id)is
{
  v63 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  isCopy = is;
  v5 = [isCopy countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    aSelector = a2;
    v7 = 0;
    v8 = 0;
    v9 = *v47;
    v10 = 0.0;
    v11 = 0.0;
    obj = isCopy;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        preferredAOICategories = [objc_opt_class() preferredAOICategories];
        mapItem = [v13 mapItem];
        category = [mapItem category];
        v17 = [preferredAOICategories containsObject:category];

        if (v17)
        {
          isCopy = obj;
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

      isCopy = obj;
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
        v61 = isCopy;
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

- (id)_filterLessRelevantAOIsFromQueryResult:(id)result
{
  v49 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = resultCopy;
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
        mapItem = [v12 mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        v15 = v4;
        if (mapItemPlaceType != 1)
        {
          mapItem2 = [v12 mapItem];
          mapItemPlaceType2 = [mapItem2 mapItemPlaceType];

          v15 = v5;
          if (mapItemPlaceType2 != 2)
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

- (id)_fetchAllFingerprintsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v34 = 0;
  fingerprintManager = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v33 = 0;
  v12 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:dateCopy endDate:endDateCopy isTimeWindowFallback:&v34 settledState:2 fingerprintManager:fingerprintManager error:&v33];
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

    if (error)
    {
      v15 = v13;
      *error = v13;
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v32 = 0;
    fingerprintManager2 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
    v31 = 0;
    v18 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:dateCopy endDate:endDateCopy isTimeWindowFallback:&v32 settledState:1 fingerprintManager:fingerprintManager2 error:&v31];
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

      if (error)
      {
        v20 = v13;
        *error = v13;
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

- (id)getAllBluePOIQuerriesForStartDate:(id)date endDate:(id)endDate location:(id)location error:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  locationCopy = location;
  v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];
  v13 = [(RTMapItemProviderBluePOI *)self numberOfRealtimeQueriesForInterval:v12];
  v14 = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries]- v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      NSStringFromSelector(a2);
      v17 = v16 = error;
      maxNumberOfQueries = [(RTMapItemProviderBluePOIParameters *)self->_parameters maxNumberOfQueries];
      *buf = 138413058;
      v92 = v17;
      v93 = 2048;
      v94 = maxNumberOfQueries;
      v95 = 2048;
      v96 = v13;
      v97 = 2048;
      v98 = v14;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, maxNumberOfQueries, %lu, realtime usage, %lu, hindsight usage, %lu", buf, 0x2Au);

      error = v16;
    }
  }

  v88 = 0;
  v19 = [(RTMapItemProviderBluePOI *)self _fetchAllFingerprintsBetweenStartDate:dateCopy endDate:endDateCopy error:&v88];
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

    if (error)
    {
      v22 = v20;
      *error = v20;
    }

    goto LABEL_16;
  }

  if (![v19 count])
  {
LABEL_16:
    v27 = MEMORY[0x277CBEBF8];
    v28 = locationCopy;
    goto LABEL_45;
  }

  v87 = 0;
  v23 = [(RTMapItemProviderBluePOI *)self _selectFingerprintsStartDate:dateCopy endDate:endDateCopy maxQueryAttemps:v14 isTimeWindowFallback:0 fingerprintsTotalOut:0 fingerprintsNonZeroAPsTotalOut:0 error:&v87];
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

    if (error)
    {
      v25 = v71;
      v26 = v71;
      *error = v71;
      v27 = MEMORY[0x277CBEBF8];
      v28 = locationCopy;
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
      v28 = locationCopy;
      v25 = v71;
    }
  }

  else
  {
    errorCopy = error;
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

          identifier = [*(*(&v83 + 1) + 8 * i) identifier];
          [v29 addObject:identifier];
        }

        v32 = [v30 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v32);
    }

    v76 = endDateCopy;

    v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    array = [MEMORY[0x277CBEB18] array];
    v37 = objc_alloc(MEMORY[0x277D01160]);
    [locationCopy latitude];
    v39 = v38;
    [locationCopy longitude];
    v41 = v40;
    [locationCopy horizontalUncertainty];
    v43 = [v37 initWithLatitude:dateCopy longitude:objc_msgSend(locationCopy horizontalUncertainty:"referenceFrame") date:v39 referenceFrame:{v41, v42}];
    if (v43)
    {
      [array addObject:v43];
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
          identifier2 = [v48 identifier];
          v50 = [v29 containsObject:identifier2];
          v78 = 0;
          v51 = array;
          v52 = [(RTMapItemProviderBluePOI *)self _bluePOIQueryFromFingerprint:v48 fingerprintIdx:0 referenceLocationArray:array selected:v50 endDate:v76 totalAPsCount:0 error:&v78];
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

            if (errorCopy)
            {
              v56 = v53;
              *errorCopy = v53;
            }

            v27 = MEMORY[0x277CBEBF8];
            v28 = locationCopy;
            v19 = v69;
            v25 = 0;
            v54 = v74;
            array = v51;
            goto LABEL_43;
          }

          if (v52)
          {
            [v74 addObject:v52];
          }

          array = v51;
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
    v28 = locationCopy;
    v19 = v69;
LABEL_43:

    v12 = v70;
    v20 = 0;
    endDateCopy = v76;
  }

LABEL_45:

  return v27;
}

- (id)_selectFingerprintsStartDate:(id)date endDate:(id)endDate maxQueryAttemps:(unint64_t)attemps isTimeWindowFallback:(BOOL *)fallback fingerprintsTotalOut:(unint64_t *)out fingerprintsNonZeroAPsTotalOut:(unint64_t *)totalOut error:(id *)error
{
  v93[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v81 = 0;
  fingerprintManager = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v80 = 0;
  v77 = dateCopy;
  v18 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:dateCopy endDate:endDateCopy isTimeWindowFallback:&v81 settledState:2 fingerprintManager:fingerprintManager error:&v80];
  v19 = v80;

  if (!v19)
  {
    fallbackCopy = fallback;
    outCopy = out;
    aSelector = a2;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"start" ascending:1];
    v93[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
    v26 = [v18 sortedArrayUsingDescriptors:v25];

    v74 = [v26 count];
    v27 = endDateCopy;
    v28 = [(RTMapItemProviderBluePOI *)self _filterOutEmptyFingerprintsFromFingerprints:v26 endDate:endDateCopy];

    v29 = [v28 count];
    v30 = [v28 count] > attemps;
    v31 = [v28 count];
    if (v31 >= attemps)
    {
      attempsCopy = attemps;
    }

    else
    {
      attempsCopy = v31;
    }

    v18 = [v28 subarrayWithRange:{v30, attempsCopy}];

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
    if ([v18 count] >= attemps)
    {
      v39 = 0;
      v40 = 0;
      v21 = v27;
      v41 = v74;
    }

    else
    {
      v70 = v29;
      fingerprintManager2 = [(RTMapItemProviderBluePOI *)self fingerprintManager];
      v78 = 0;
      v21 = endDateCopy;
      v36 = [RTPOIHarvestUtilities fingerprintsBetweenStartDate:v77 endDate:endDateCopy isTimeWindowFallback:&v79 settledState:1 fingerprintManager:fingerprintManager2 error:&v78];
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

        if (error)
        {
          v38 = v19;
          *error = v19;
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
      v45 = [(RTMapItemProviderBluePOI *)self _filterOutEmptyFingerprintsFromFingerprints:v44 endDate:endDateCopy];

      v39 = [v45 count];
      v46 = [v45 count];
      v47 = [v18 count];
      if (attemps - v47 > v46)
      {
        v48 = 1;
      }

      else
      {
        v48 = v46 / (attemps - v47);
      }

      if ([v45 count])
      {
        v49 = 0;
        do
        {
          if ([v34 count] >= attemps)
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

    if (fallbackCopy)
    {
      *fallbackCopy = (v81 | v79) & 1;
    }

    if (outCopy)
    {
      *outCopy = v40 + v41;
    }

    if (totalOut)
    {
      *totalOut = v39 + v29;
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

  v21 = endDateCopy;
  if (error)
  {
    v22 = v19;
    *error = v19;
  }

  v23 = MEMORY[0x277CBEBF8];
LABEL_44:

  return v23;
}

- (id)_bluePOIQueryFromFingerprint:(id)fingerprint fingerprintIdx:(unint64_t)idx referenceLocationArray:(id)array selected:(BOOL)selected endDate:(id)date totalAPsCount:(unint64_t *)count error:(id *)error
{
  selectedCopy = selected;
  v87[1] = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  arrayCopy = array;
  dateCopy = date;
  fingerprintManager = [(RTMapItemProviderBluePOI *)self fingerprintManager];
  v70 = 0;
  v18 = [RTPOIHarvestUtilities accessPointsForFingerprint:fingerprintCopy endDate:dateCopy fingerprintManager:fingerprintManager error:&v70];

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
      v76 = fingerprintCopy;
      v77 = 2112;
      v78 = v19;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, fetching access points for fingerprint, %@, encountered an error, %@", buf, 0x2Au);
    }

    if (error)
    {
      v21 = v19;
      v22 = 0;
      *error = v19;
    }

    else
    {
      v22 = 0;
    }

    v24 = v18;
    v33 = arrayCopy;
  }

  else
  {
    idxCopy = idx;
    v60 = selectedCopy;
    v64 = fingerprintCopy;
    v63 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v87[0] = v63;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
    v24 = [v18 sortedArrayUsingDescriptors:v23];

    if (count)
    {
      v25 = *count;
      *count = [v24 count] + v25;
    }

    parameters = [(RTMapItemProviderBluePOI *)self parameters];
    harvestParameters = [parameters harvestParameters];
    locationManager = [(RTMapItemProviderBluePOI *)self locationManager];
    v69 = 0;
    v29 = [RTPOIHarvestUtilities locationsForAccessPoints:v24 harvestParameters:harvestParameters locationManager:locationManager error:&v69];
    v30 = v69;

    if (v30)
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      fingerprintCopy = v64;
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

      if (error)
      {
        v32 = v30;
        v22 = 0;
        *error = v30;
      }

      else
      {
        v22 = 0;
      }

      v33 = arrayCopy;
    }

    else
    {
      fingerprintCopy = v64;
      v33 = arrayCopy;
      if ([v29 count])
      {
        v34 = [arrayCopy arrayByAddingObjectsFromArray:v29];
      }

      else
      {
        v34 = arrayCopy;
      }

      v67 = v34;
      v35 = idxCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_opt_class();
          v62 = NSStringFromClass(v37);
          v59 = NSStringFromSelector(a2);
          v38 = (v35 + 1);
          identifier = [v64 identifier];
          aSelectora = [v64 start];
          stringFromDate = [aSelectora stringFromDate];
          v40 = +[RTScenarioTriggerManager settledStateName:](RTScenarioTriggerManager, "settledStateName:", [v64 settledState]);
          v57 = [v24 count];
          v41 = [v67 count];
          *buf = 138414082;
          v72 = v62;
          v73 = 2112;
          v74 = v59;
          v75 = 2048;
          v76 = v38;
          v33 = arrayCopy;
          v77 = 2112;
          v78 = identifier;
          v79 = 2112;
          v80 = stringFromDate;
          v42 = stringFromDate;
          v81 = 2112;
          v82 = v40;
          v83 = 2048;
          v84 = v57;
          v85 = 2048;
          v86 = v41;
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, fingerprint, %lu, identifier, %@, start, %@, settled state, %@, number of accessPoints, %lu, number of locations, %lu", buf, 0x52u);

          fingerprintCopy = v64;
        }
      }

      if ([v24 count])
      {
        v43 = [RTBluePOIQuery alloc];
        identifier2 = [fingerprintCopy identifier];
        v45 = [v33 objectAtIndexedSubscript:0];
        settledState = [v64 settledState];
        start = [v64 start];
        v48 = v43;
        v49 = v67;
        v22 = [(RTBluePOIQuery *)v48 initWithIdentifier:identifier2 accessPoints:v24 locations:v67 referenceLocation:v45 settledState:settledState selectedToLabel:v60 date:start];

        fingerprintCopy = v64;
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

- (id)_mapItemsFromBluePOIServerQuery:(id)query startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v10 = MEMORY[0x277D011B0];
  endDateCopy = endDate;
  dateCopy = date;
  queryCopy = query;
  v14 = [v10 alloc];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 initWithUseBackgroundTraits:1 analyticsIdentifier:v16];

  locations = [queryCopy locations];
  accessPoints = [queryCopy accessPoints];

  v24 = 0;
  v20 = [(RTMapItemProviderBluePOI *)self mapItemsFromLocations:locations accessPoints:accessPoints startDate:dateCopy endDate:endDateCopy options:v17 error:&v24];

  v21 = v24;
  if (error)
  {
    v22 = v21;
    *error = v21;
  }

  return v20;
}

- (id)_timeZoneFromLocation:(id)location
{
  v3 = MEMORY[0x277CE41F8];
  locationCopy = location;
  v5 = [v3 alloc];
  [locationCopy latitude];
  v7 = v6;
  [locationCopy longitude];
  v9 = v8;

  v10 = [v5 initWithLatitude:v7 longitude:v9];
  v11 = [MEMORY[0x277CBFBE8] _timeZoneAtLocation:v10];

  return v11;
}

- (id)_mapItemsFromBluePOIQuery:(id)query startDate:(id)date endDate:(id)endDate error:(id *)error
{
  v175[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  dateCopy = date;
  endDateCopy = endDate;
  v124 = endDateCopy;
  v125 = queryCopy;
  v123 = dateCopy;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v51 = [(RTMapItemProviderBluePOI *)self _mapItemsFromBluePOIServerQuery:queryCopy startDate:dateCopy endDate:endDateCopy error:error];
    goto LABEL_59;
  }

  errorCopy = error;
  selfCopy = self;
  bluePOIMetricManager = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
  requestCollectQueryEvent = [bluePOIMetricManager requestCollectQueryEvent];

  v120 = requestCollectQueryEvent;
  if (requestCollectQueryEvent)
  {
    bluePOIMetricManager2 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    [bluePOIMetricManager2 setEventMetricsValue:@"com.apple.CoreRoutine.internal" forKey:@"appIdentifier"];

    bluePOIMetricManager3 = [(RTMapItemProviderBluePOI *)self bluePOIMetricManager];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    [bluePOIMetricManager3 setEventMetricsValue:v17 forKey:@"queryType"];

    v18 = 1;
    v19 = MEMORY[0x277CBEC28];
    do
    {
      bluePOIMetricManager4 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", v18];
      [bluePOIMetricManager4 setEventMetricsValue:v19 forKey:v21];

      ++v18;
    }

    while (v18 != 14);
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    accessPoints = [v125 accessPoints];
    v23 = [accessPoints countByEnumeratingWithState:&v165 objects:v174 count:16];
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
            objc_enumerationMutation(accessPoints);
          }

          v27 = *(*(&v165 + 1) + 8 * i);
          if ([v27 channel] && objc_msgSend(v27, "channel") <= 0xD)
          {
            bluePOIMetricManager5 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"kRTBluePOIQueryEventHasResultWiFiChannel%lu", objc_msgSend(v27, "channel")];
            [bluePOIMetricManager5 setEventMetricsValue:v25 forKey:v29];
          }
        }

        v23 = [accessPoints countByEnumeratingWithState:&v165 objects:v174 count:16];
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
  bluePOITileManager = [(RTMapItemProviderBluePOI *)selfCopy bluePOITileManager];
  referenceLocation = [v125 referenceLocation];
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
  [bluePOITileManager fetchBluePOITileAtLocation:referenceLocation priority:3 validateTile:1 collectMetrics:v120 handler:v141];

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
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v43 = [callStackSymbols filteredArrayUsingPredicate:v41];
  firstObject = [v43 firstObject];

  [v40 submitToCoreAnalytics:firstObject type:1 duration:v39];
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
  mapServiceManager = [(RTMapItemProviderBluePOI *)selfCopy mapServiceManager];
  referenceLocation2 = [v122 referenceLocation];
  locations = [v122 locations];
  accessPoints2 = [v122 accessPoints];
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
  [mapServiceManager inferLocalBluePOIWithReferenceLocation:referenceLocation2 locations:locations accessPoints:accessPoints2 bluePOITile:v58 signalEnv:0 refreshAOI:1 handler:v136];

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
  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v69 = [callStackSymbols2 filteredArrayUsingPredicate:v67];
  firstObject2 = [v69 firstObject];

  [v66 submitToCoreAnalytics:firstObject2 type:1 duration:v65];
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

  v77 = selfCopy;
  if (!v148[5] || [v154[5] mostConfidentPOI] || objc_msgSend(v154[5], "mostConfidentAOI"))
  {
    mapItemManager = [(RTMapItemProviderBluePOI *)selfCopy mapItemManager];
    v79 = v154[5];
    v80 = v148 + 5;
    obj = v148[5];
    v81 = [mapItemManager mapItemsFromLocalBluePOIResult:v79 withConfidenceThreshold:&obj error:0.5];
    objc_storeStrong(v80, obj);

    if ([RTBluePOIHelper shouldFilterByBusinessHours:[(RTPlatform *)selfCopy->_platform internalInstall]])
    {
      v82 = [[_RTMap alloc] initWithInput:v81];
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __78__RTMapItemProviderBluePOI__mapItemsFromBluePOIQuery_startDate_endDate_error___block_invoke_220;
      v131[3] = &unk_2788C82A8;
      v131[4] = selfCopy;
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
      v130 = selfCopy;
      v83 = [(_RTMap *)v84 withBlock:v127];
    }

    v77 = selfCopy;
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

    v77 = selfCopy;
  }

  v89 = [(RTMapItemProviderBluePOI *)v77 _shouldPerformServerBluePOIForLocalBluePOIError:v148[5]];
  if (v120)
  {
    mostConfidentPOI = [v154[5] mostConfidentPOI];
    if (mostConfidentPOI)
    {
      poiConfidences = [v154[5] poiConfidences];
      v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v154[5], "mostConfidentPOI")}];
      v93 = [poiConfidences objectForKeyedSubscript:v92];
      [v93 doubleValue];
      v95 = v94;

      v96 = v95 * 10000.0;
      v77 = selfCopy;
    }

    else
    {
      v96 = -10000.0;
    }

    bluePOIMetricManager6 = [(RTMapItemProviderBluePOI *)v77 bluePOIMetricManager];
    v98 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentPOI != 0];
    [bluePOIMetricManager6 setEventMetricsValue:v98 forKey:@"preAggregatedInferenceAvailablePOI"];

    bluePOIMetricManager7 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
    v100 = [MEMORY[0x277CCABB0] numberWithDouble:round(v96)];
    [bluePOIMetricManager7 setEventMetricsValue:v100 forKey:@"preAggregationConfidencePOI"];

    mostConfidentAOI = [v154[5] mostConfidentAOI];
    v102 = selfCopy;
    if (mostConfidentAOI)
    {
      aoiConfidences = [v154[5] aoiConfidences];
      v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v154[5], "mostConfidentAOI")}];
      v105 = [aoiConfidences objectForKeyedSubscript:v104];
      [v105 doubleValue];
      v107 = v106;

      v108 = v107 * 10000.0;
      v102 = selfCopy;
    }

    else
    {
      v108 = -10000.0;
    }

    bluePOIMetricManager8 = [(RTMapItemProviderBluePOI *)v102 bluePOIMetricManager];
    v110 = [MEMORY[0x277CCABB0] numberWithBool:mostConfidentAOI != 0];
    [bluePOIMetricManager8 setEventMetricsValue:v110 forKey:@"preAggregatedInferenceAvailableAOI"];

    bluePOIMetricManager9 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
    v112 = [MEMORY[0x277CCABB0] numberWithDouble:round(v108)];
    [bluePOIMetricManager9 setEventMetricsValue:v112 forKey:@"preAggregationConfidenceAOI"];

    bluePOIMetricManager10 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
    v114 = [MEMORY[0x277CCABB0] numberWithBool:v89];
    [bluePOIMetricManager10 setEventMetricsValue:v114 forKey:@"serverFallback"];

    bluePOIMetricManager11 = [(RTMapItemProviderBluePOI *)selfCopy bluePOIMetricManager];
    [bluePOIMetricManager11 stopCollectQueryEvent];

    v77 = selfCopy;
  }

  if (v89)
  {
    v116 = [(RTMapItemProviderBluePOI *)v77 _mapItemsFromBluePOIServerQuery:v122 startDate:v123 endDate:v124 error:errorCopy];
  }

  else
  {
    if (errorCopy)
    {
      *errorCopy = v148[5];
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

- (id)_mapItemsWithinDistance:(double)distance location:(id)location startDate:(id)date endDate:(id)endDate maxQueryAttemps:(unint64_t)attemps error:(id *)error
{
  v173[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  endDateCopy = endDate;
  v17 = endDateCopy;
  if (!locationCopy)
  {
    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v172 = *MEMORY[0x277CCA450];
      v173[0] = @"requires a valid location.";
      array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:&v172 count:1];
      v20 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:array];
      goto LABEL_9;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_53;
  }

  if (dateCopy && endDateCopy && ![dateCopy isAfterDate:endDateCopy])
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = objc_alloc(MEMORY[0x277D01160]);
    [locationCopy latitude];
    v25 = v24;
    [locationCopy longitude];
    v27 = v26;
    [locationCopy horizontalUncertainty];
    v29 = [v23 initWithLatitude:dateCopy longitude:objc_msgSend(locationCopy horizontalUncertainty:"referenceFrame") date:v25 referenceFrame:{v27, v28}];
    if (v29)
    {
      [array addObject:v29];
    }

    v106 = v29;
    [v17 timeIntervalSinceDate:dateCopy];
    v31 = v30;
    v157 = 0;
    v156 = 0;
    v155 = 0;
    v154 = 0;
    v107 = [(RTMapItemProviderBluePOI *)self _selectFingerprintsStartDate:dateCopy endDate:v17 maxQueryAttemps:attemps isTimeWindowFallback:&v157 fingerprintsTotalOut:&v156 fingerprintsNonZeroAPsTotalOut:&v155 error:&v154];
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

      if (error)
      {
        v36 = v108;
        *error = v108;
      }

      v22 = MEMORY[0x277CBEBF8];
      goto LABEL_51;
    }

    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
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
    v90 = array;
    v113 = v90;
    v94 = v17;
    v114 = v94;
    v118 = &v146;
    v103 = array3;
    v115 = v103;
    v98 = dateCopy;
    v116 = v98;
    v119 = &v130;
    v105 = array2;
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
      if (error)
      {
        v22 = 0;
        *error = v38;
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
          parameters = [(RTMapItemProviderBluePOI *)self parameters];
          harvestParameters = [parameters harvestParameters];
          locationManager = [(RTMapItemProviderBluePOI *)self locationManager];
          v111 = 0;
          v86 = [RTPOIHarvestUtilities locationsInDateInterval:v89 harvestParameters:harvestParameters locationManager:locationManager error:&v111];
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
            uUID = [MEMORY[0x277CCAD78] UUID];
            firstObject = [v86 firstObject];
            v63 = [MEMORY[0x277CBEAA8] now];
            v85 = [(RTBluePOIQuery *)v84 initWithIdentifier:uUID accessPoints:0 locations:v86 referenceLocation:firstObject settledState:0 selectedToLabel:1 date:v63];

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

        if (error && [v103 count])
        {
          v83 = 1;
          v55 = _RTSafeArray();
          *error = _RTMultiErrorCreate();
        }

        v56 = [(RTMapItemProviderBluePOI *)self _filterLessRelevantAOIsFromQueryResult:v53, v83];
        v22 = [(RTMapItemProviderBluePOI *)self _adjustConfidencesOfTheSelectedResult:v56 allQueryResults:v105];

        goto LABEL_50;
      }

      if (error && [v103 count])
      {
        v57 = _RTSafeArray();
        *error = _RTMultiErrorCreate();
      }
    }

    v22 = 0;
    goto LABEL_50;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v18 = MEMORY[0x277CCA9B8];
  v170 = *MEMORY[0x277CCA450];
  v171 = @"requires a valid date range.";
  array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:array];
LABEL_9:
  v22 = 0;
  *error = v20;
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

- (id)_computeEarlyStopQueryResultFromResults:(id)results originalMaxNumberOfQueries:(unint64_t)queries aoiConfidencePassThroughThreshold:(double)threshold poiConfidencePassThroughThreshold:(double)throughThreshold
{
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [resultsCopy count];
  if (v10 >= queries)
  {
    queriesCopy = queries;
  }

  else
  {
    queriesCopy = v10;
  }

  v12 = [resultsCopy count];
  if (v12 >= queries)
  {
    queriesCopy2 = queries;
  }

  else
  {
    queriesCopy2 = v12;
  }

  if (queriesCopy2)
  {
    v14 = 1;
    while (1)
    {
      v15 = [resultsCopy objectAtIndexedSubscript:v14 - 1];
      [array addObject:v15];
      firstObject = [v15 firstObject];
      v17 = [firstObject objectAtIndex:0];

      mapItem = [v17 mapItem];
      mapItemPlaceType = [mapItem mapItemPlaceType];

      [v17 confidence];
      v21 = v20;
      parameters = self->_parameters;
      if (mapItemPlaceType == 1)
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

      v24 = [resultsCopy count];
      if (v24 >= queries)
      {
        queriesCopy3 = queries;
      }

      else
      {
        queriesCopy3 = v24;
      }

      if (queriesCopy3 <= v14++)
      {
        goto LABEL_19;
      }
    }

    queriesCopy = v14;
  }

LABEL_19:
  if ([array count])
  {
    null = [(RTMapItemProviderBluePOI *)self bestQueryFromAggregatedQueries:array error:0];
    v28 = objc_alloc(MEMORY[0x277D011C0]);
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277D011C0]);
    null = [MEMORY[0x277CBEB68] null];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:queriesCopy];
  v30 = [v28 initWithFirstObject:null secondObject:v29];

  return v30;
}

- (void)_submitPerformanceMetricsForResults:(id)results noFingerprints:(BOOL)fingerprints originalMaxNumberOfQueries:(unint64_t)queries aoiConfidencePassThroughThreshold:(double)threshold poiConfidencePassThroughThreshold:(double)throughThreshold fingerprintsCount:(unint64_t)count zeroAccessPointsFingerprintsCount:(unint64_t)fingerprintsCount nonZeroAccessPointsFingerprintsCount:(unint64_t)self0 queryCount:(unint64_t)self1 firstResultQueryCount:(unint64_t)self2 error:(id)self3 visitInterval:(double)self4 visitSource:(int64_t)self5
{
  fingerprintsCopy = fingerprints;
  resultsCopy = results;
  errorCopy = error;
  if (fingerprintsCopy)
  {
    firstObject2 = 0;
    unsignedIntegerValue = 1;
  }

  else
  {
    fingerprintsCountCopy = fingerprintsCount;
    countCopy = count;
    v28 = [(RTMapItemProviderBluePOI *)self _computeEarlyStopQueryResultFromResults:resultsCopy originalMaxNumberOfQueries:queries aoiConfidencePassThroughThreshold:threshold poiConfidencePassThroughThreshold:throughThreshold];
    firstObject = [v28 firstObject];
    null = [MEMORY[0x277CBEB68] null];
    if (firstObject == null)
    {
      firstObject2 = 0;
    }

    else
    {
      firstObject2 = [v28 firstObject];
    }

    secondObject = [v28 secondObject];
    unsignedIntegerValue = [secondObject unsignedIntegerValue];

    count = countCopy;
    fingerprintsCount = fingerprintsCountCopy;
  }

  v38 = resultsCopy;
  if ([v38 count])
  {
    if (fingerprintsCopy)
    {
      [v38 firstObject];
      fingerprintsCountCopy2 = fingerprintsCount;
      v34 = v33 = count;
      firstObject3 = [v34 firstObject];

      count = v33;
      fingerprintsCount = fingerprintsCountCopy2;
    }

    else
    {
      firstObject3 = [(RTMapItemProviderBluePOI *)self bestQueryFromAggregatedQueries:v38 error:0];
    }
  }

  else
  {
    firstObject3 = 0;
  }

  [RTMapItemProviderBluePOIPerformanceMetrics submitMetricsWithNonZeroAccessPointsFingerprintsCount:pointsFingerprintsCount zeroAccessPointsFingerprintsCount:fingerprintsCount fingerprintsCount:count queryCount:queryCount firstResultQueryCount:resultQueryCount results:v38 earlyStopQueryCount:interval earlyStopQueryResult:unsignedIntegerValue bestQueryResult:firstObject2 error:firstObject3 visitInterval:errorCopy visitSource:source];
}

- (BOOL)_hasMapItemInQueryResult:(id)result placeType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  resultCopy = result;
  v6 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(resultCopy);
        }

        mapItem = [*(*(&v14 + 1) + 8 * i) mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        if (mapItemPlaceType == type)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_adjustConfidencesOfTheSelectedResult:(id)result allQueryResults:(id)results
{
  v81 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  resultsCopy = results;
  if ([(RTMapItemProviderBluePOI *)self _hasMapItemInQueryResult:resultCopy placeType:1])
  {
    v57 = resultCopy;
    [RTMapItemProviderBluePOIPerformanceMetrics _mapItemDictionaryforResults:resultsCopy placeType:2];
    v56 = v55 = resultsCopy;
    [RTMapItemProviderBluePOIPerformanceMetrics _mapItemDictionaryforResults:resultsCopy placeType:1];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v60 = v70 = 0u;
    allKeys = [v60 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v67 objects:v80 count:16];
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
            objc_enumerationMutation(allKeys);
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

        v11 = [allKeys countByEnumeratingWithState:&v67 objects:v80 count:16];
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
        unsignedIntegerValue = [v61 unsignedIntegerValue];
        *buf = 138413058;
        v73 = v23;
        v74 = 2112;
        v75 = v24;
        v76 = 2048;
        v77 = unsignedIntegerValue;
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
          mapItem = [v28 mapItem];
          mapItemPlaceType = [mapItem mapItemPlaceType];

          if (mapItemPlaceType == 2)
          {
            v31 = MEMORY[0x277CCABB0];
            mapItem2 = [v28 mapItem];
            v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(mapItem2, "muid")}];

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
                selfCopy = self;
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
                self = selfCopy;
                v20 = v43;
                v19 = v42;
                v26 = v58;
              }
            }

            v47 = objc_alloc(MEMORY[0x277D01128]);
            mapItem3 = [v28 mapItem];
            v49 = [v47 initWithMapItem:mapItem3 confidence:objc_msgSend(v28 source:{"source"), v38}];

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

    resultCopy = v57;
    resultsCopy = v55;
  }

  else
  {
    v19 = resultCopy;
  }

  return v19;
}

- (id)_confidenceCoefficientsForAOI:(id)i AOIOccurenceCount:(unint64_t)count POIResults:(id)results
{
  v25 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [resultsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    countCopy = count;
    v12 = *v21;
    v13 = vcvtd_n_f64_u64(count, 1uLL);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [resultsCopy objectForKeyedSubscript:v15];
        v17 = [v16 count];

        if (v13 >= v17)
        {
          countCopy = [MEMORY[0x277CCABB0] numberWithDouble:v17 / countCopy];
          [dictionary setObject:countCopy forKeyedSubscript:v15];
        }

        else
        {
          [dictionary setObject:&unk_2845A1958 forKeyedSubscript:v15];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return dictionary;
}

- (id)filterByDistance:(id)distance location:(id)location thresholdForUnknownLabel:(double)label error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  distanceCopy = distance;
  locationCopy = location;
  if ([distanceCopy count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(distanceCopy, "count")}];
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_239];
    v14 = [distanceCopy filteredArrayUsingPredicate:v13];

    if ([v14 count])
    {
      [v12 addObjectsFromArray:v14];
    }

    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241];
    v16 = [distanceCopy filteredArrayUsingPredicate:v15];

    [(RTMapItemProviderBluePOIParameters *)self->_parameters poiDistanceThreshold];
    v33 = 0;
    v17 = [(RTMapItemProviderBase *)self filterInferredMapItems:v16 byDistance:locationCopy fromLocation:0 andAppendSource:&v33 error:?];
    v18 = v33;

    if (v18)
    {
      if (error)
      {
        v19 = v18;
        v20 = 0;
        *error = v18;
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
      v22 = [distanceCopy filteredArrayUsingPredicate:v21];

      v32 = 0;
      v23 = [(RTMapItemProviderBase *)self filterInferredMapItems:v22 byDistance:locationCopy fromLocation:0 andAppendSource:&v32 error:label];
      v18 = v32;

      if (v18)
      {
        if (error)
        {
          v24 = v18;
          v20 = 0;
          *error = v18;
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
            firstObject = [v23 firstObject];
            mapItem = [firstObject mapItem];
            mapItemPlaceType = [mapItem mapItemPlaceType];
            *buf = 138412546;
            v35 = v28;
            v36 = 2048;
            v37 = mapItemPlaceType;
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

- (id)_filterByCategories:(id)categories categories:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v7 = a4;
  if ([categoriesCopy count])
  {
    aSelector = a2;
    v26 = categoriesCopy;
    v27 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = categoriesCopy;
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
          mapItem = [v13 mapItem];
          if ([mapItem mapItemPlaceType] == 1)
          {
            mapItem2 = [v13 mapItem];
            category = [mapItem2 category];
            v17 = [v7 containsObject:category];

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
        firstObject = [v27 firstObject];
        *buf = 138413059;
        v33 = v20;
        v34 = 2112;
        v35 = v7;
        v36 = 2048;
        v37 = v21;
        v38 = 2117;
        v39 = firstObject;
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

    categoriesCopy = v26;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_filterByConfidence:(id)confidence aoiConfidencePassThroughThreshold:(double)threshold aoiConfidenceConsiderThreshold:(double)considerThreshold poiConfidencePassThroughThreshold:(double)throughThreshold poiConfidenceConsiderThreshold:(double)confidenceConsiderThreshold error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  confidenceCopy = confidence;
  if ([confidenceCopy count])
  {
    v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(confidenceCopy, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = confidenceCopy;
    v13 = confidenceCopy;
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
        mapItem = [v21 mapItem];
        mapItemPlaceType = [mapItem mapItemPlaceType];

        if (mapItemPlaceType == 1)
        {
          if (v19)
          {
            [v21 confidence];
            if (v24 < threshold)
            {
              goto LABEL_19;
            }

            LOBYTE(v41) = 1;
            confidenceConsiderThresholdCopy = threshold;
          }

          else
          {
            if ((v41 & 1) == 0)
            {
              goto LABEL_19;
            }

            [v21 confidence];
            if (v27 < considerThreshold)
            {
              goto LABEL_19;
            }

            LOBYTE(v41) = 1;
            confidenceConsiderThresholdCopy = considerThreshold;
          }
        }

        else if (v18)
        {
          [v21 confidence];
          if (v26 < throughThreshold)
          {
            goto LABEL_19;
          }

          BYTE4(v41) = 1;
          confidenceConsiderThresholdCopy = throughThreshold;
        }

        else
        {
          if ((v41 & 0x100000000) == 0 || ([v21 confidence], v28 < confidenceConsiderThreshold))
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
            thresholdCopy2 = threshold;
            v50 = 2117;
            v51 = v21;
            v31 = v29;
            v32 = "%@, filtered mapItem by confidence %0.2f, %{sensitive}@";
            goto LABEL_26;
          }

          BYTE4(v41) = 1;
          confidenceConsiderThresholdCopy = confidenceConsiderThreshold;
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
          thresholdCopy2 = confidenceConsiderThresholdCopy;
          v50 = 2117;
          v51 = v21;
          v31 = v29;
          v32 = "%@, passed mapItem by confidence %0.2f, %{sensitive}@";
LABEL_26:
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, v32, buf, 0x20u);
        }

LABEL_27:

LABEL_28:
        mapItem2 = [v21 mapItem];
        mapItemPlaceType2 = [mapItem2 mapItemPlaceType];
        v35 = mapItemPlaceType2 != 1;
        v36 = mapItemPlaceType2 == 1;

        v18 &= v36;
        v19 &= v35;
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (!v15)
      {
LABEL_30:

        confidenceCopy = v38;
        goto LABEL_32;
      }
    }
  }

  v40 = 0;
LABEL_32:

  return v40;
}

- (BOOL)skipForOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  endDate = [optionsCopy endDate];
  startDate = [optionsCopy startDate];

  [endDate timeIntervalSinceDate:startDate];
  v9 = v8;

  [(RTMapItemProviderBluePOIParameters *)self->_parameters minVisitLength];
  return v9 <= v10;
}

@end