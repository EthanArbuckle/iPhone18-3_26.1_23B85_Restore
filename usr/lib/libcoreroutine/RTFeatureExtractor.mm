@interface RTFeatureExtractor
+ (id)countKeyForFeature:(id)a3;
+ (id)latencyKeyForFeature:(id)a3;
+ (id)successKeyForFeature:(id)a3;
+ (int64_t)metricCodeForFeatureExtractorOperationType:(unint64_t)a3;
+ (void)logFeatureExtractionForFeature:(id)a3 stimulationDate:(id)a4 featureArray:(id)a5 success:(BOOL)a6 toDict:(id)a7;
- (RTFeatureExtractor)initWithLearnedLocationManager:(id)a3 visitManager:(id)a4 locationManager:(id)a5 eventManager:(id)a6 navigationManager:(id)a7 mapsSupportManager:(id)a8 motionActivityManager:(id)a9 vehicleLocationProvider:(id)a10 visitConsolidator:(id)a11 healthKitManager:(id)a12 homeKitManager:(id)a13 tripLocationPropagator:(id)a14 metricsManager:(id)a15;
- (id)_extractFeatures:(unint64_t)a3 operationType:(unint64_t)a4 lookbackIntervals:(id)a5 outError:(id *)a6;
- (id)_fetchLocationOfInterestForMapItem:(id)a3 error:(id *)a4;
- (id)_getCalendarEventsWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getHomeKitHomesWithError:(id *)a3;
- (id)_getLOIsUUIDsFromVisits:(id)a3;
- (id)_getLocationHistoriesWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getLocationsOfInterestFromVisitedLOIsUUIDs:(id)a3 includeKnownPlaceType:(BOOL)a4 outError:(id *)a5;
- (id)_getLocationsOfInterestWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getMapsActiveNavigationWithError:(id *)a3;
- (id)_getMapsHistoricalNavigationsWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getMapsViewedPlacesWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getMotionActivitiesWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getParkedCarWithError:(id *)a3;
- (id)_getPropagatedLocationAtDistance:(double)a3;
- (id)_getTransitionsWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getVisitsWithDateInterval:(id)a3 outError:(id *)a4;
- (id)_getWorkoutsWithDateInterval:(id)a3 outError:(id *)a4;
- (id)extractFeaturesWithLookbackIntervals:(id)a3 operationType:(unint64_t)a4 outError:(id *)a5;
- (void)_fetchLocationsOfInterestWithPlaceTypes:(id)a3 handler:(id)a4;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_submitMetrics:(id)a3;
- (void)onNotification:(id)a3;
@end

@implementation RTFeatureExtractor

- (RTFeatureExtractor)initWithLearnedLocationManager:(id)a3 visitManager:(id)a4 locationManager:(id)a5 eventManager:(id)a6 navigationManager:(id)a7 mapsSupportManager:(id)a8 motionActivityManager:(id)a9 vehicleLocationProvider:(id)a10 visitConsolidator:(id)a11 healthKitManager:(id)a12 homeKitManager:(id)a13 tripLocationPropagator:(id)a14 metricsManager:(id)a15
{
  v39 = a3;
  v38 = a4;
  v29 = a5;
  v37 = a5;
  v30 = a6;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v40.receiver = self;
  v40.super_class = RTFeatureExtractor;
  v25 = [(RTNotifier *)&v40 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_learnedLocationManager, a3);
    objc_storeStrong(&v26->_visitManager, a4);
    objc_storeStrong(&v26->_locationManager, v29);
    objc_storeStrong(&v26->_eventManager, v30);
    objc_storeStrong(&v26->_navigationManager, a7);
    objc_storeStrong(&v26->_mapsSupportManager, a8);
    objc_storeStrong(&v26->_motionActivityManager, a9);
    objc_storeStrong(&v26->_vehicleLocationProvider, a10);
    objc_storeStrong(&v26->_visitConsolidator, a11);
    objc_storeStrong(&v26->_healthKitManager, a12);
    objc_storeStrong(&v26->_homeKitManager, a13);
    objc_storeStrong(&v26->_tripLocationPropagator, a14);
    objc_storeStrong(&v26->_metricsManager, a15);
  }

  [(RTService *)v26 setup];

  return v26;
}

- (void)onNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, notification, %@", &v7, 0x16u);
    }
  }
}

- (void)_setup
{
  v4 = [(RTFeatureExtractor *)self navigationManager];
  v3 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  [v4 addObserver:self selector:sel_onNotification_ name:v3];
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_submitMetrics:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v7 = [v5 now];
  v8 = [(RTFeatureExtractor *)self metricsManager];
  [v8 submitFeatureExtractorMetrics:v6];

  v9 = [MEMORY[0x277CBEAA8] now];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      [v9 timeIntervalSinceDate:v7];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, latency, %.2f", &v15, 0x20u);
    }
  }
}

- (id)extractFeaturesWithLookbackIntervals:(id)a3 operationType:(unint64_t)a4 outError:(id *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__175;
  v22 = __Block_byref_object_dispose__175;
  v23 = 0;
  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__RTFeatureExtractor_extractFeaturesWithLookbackIntervals_operationType_outError___block_invoke;
  block[3] = &unk_2788D1EA8;
  v15 = &v18;
  v16 = a4;
  block[4] = self;
  v14 = v8;
  v17 = a5;
  v10 = v8;
  dispatch_sync(v9, block);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __82__RTFeatureExtractor_extractFeaturesWithLookbackIntervals_operationType_outError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = 0;
  v5 = [v3 _extractFeatures:1527 operationType:v2 lookbackIntervals:v4 outError:&v9];
  v6 = v9;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6 && *(a1 + 64))
  {
    **(a1 + 64) = [v6 copy];
  }
}

- (id)_extractFeatures:(unint64_t)a3 operationType:(unint64_t)a4 lookbackIntervals:(id)a5 outError:(id *)a6
{
  v116[1] = *MEMORY[0x277D85DE8];
  v93 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "metricCodeForFeatureExtractorOperationType:", a4)}];
  [v9 setObject:v10 forKeyedSubscript:@"featureExtractorReason"];

  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = objc_alloc_init(MEMORY[0x277D3F870]);
  [v12 timeIntervalSinceReferenceDate];
  [v13 setCurrentTimeCFAbsolute:?];
  v89 = [MEMORY[0x277CBEBB0] localTimeZone];
  v14 = [v89 abbreviation];
  [v13 setCurrentTimeZoneAbbreviation:v14];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      [v13 currentTimeCFAbsolute];
      v18 = v17;
      v19 = [v13 currentTimeZoneAbbreviation];
      *buf = 138412802;
      v108 = v16;
      v109 = 2048;
      v110 = v18;
      v111 = 2112;
      v112 = v19;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, currentTimeCFAbsolute, %.2f, currentTimeZoneAbbreviation, %@", buf, 0x20u);
    }
  }

  v94 = v13;
  v90 = v12;
  if ((a3 & 1) == 0)
  {
    v92 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [v93 objectForKeyedSubscript:&unk_2845A02C0];
  v106 = 0;
  v22 = [(RTFeatureExtractor *)self _getVisitsWithDateInterval:v21 outError:&v106];
  v23 = v106;
  v92 = [(RTFeatureExtractor *)self _getLOIsUUIDsFromVisits:v22];
  if (v23)
  {
    [v11 addObject:v23];
  }

  [v13 setVisits:v22];
  [objc_opt_class() logFeatureExtractionForFeature:@"visits" stimulationDate:v20 featureArray:v22 success:v23 == 0 toDict:v9];

  if ((a3 & 2) != 0)
  {
LABEL_11:
    v24 = [MEMORY[0x277CBEAA8] date];
    v105 = 0;
    v25 = [(RTFeatureExtractor *)self _getLocationsOfInterestFromVisitedLOIsUUIDs:v92 includeKnownPlaceType:(a3 >> 10) & 1 outError:&v105];
    v26 = v105;
    if (v26)
    {
      [v11 addObject:v26];
    }

    [v13 setLocationOfInterests:v25];
    [objc_opt_class() logFeatureExtractionForFeature:@"LocationsOfInterest" stimulationDate:v24 featureArray:v25 success:v26 == 0 toDict:v9];
  }

LABEL_14:
  if ((a3 & 4) != 0)
  {
    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = [v93 objectForKeyedSubscript:&unk_2845A02D8];
    v104 = 0;
    v29 = [(RTFeatureExtractor *)self _getLocationHistoriesWithDateInterval:v28 outError:&v104];
    v30 = v104;
    if (v30)
    {
      [v11 addObject:v30];
    }

    [v13 setLocationHistorys:v29];
    [objc_opt_class() logFeatureExtractionForFeature:@"Location History" stimulationDate:v27 featureArray:v29 success:v30 == 0 toDict:v9];

    if ((a3 & 0x80) == 0)
    {
LABEL_16:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((a3 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  v31 = [MEMORY[0x277CBEAA8] date];
  v32 = [v93 objectForKeyedSubscript:&unk_2845A02F0];
  v103 = 0;
  v33 = [(RTFeatureExtractor *)self _getMotionActivitiesWithDateInterval:v32 outError:&v103];
  v34 = v103;
  if (v34)
  {
    [v11 addObject:v34];
  }

  [v13 setMotionActivitys:v33];
  [objc_opt_class() logFeatureExtractionForFeature:@"Motion History" stimulationDate:v31 featureArray:v33 success:v34 == 0 toDict:v9];

  if ((a3 & 0x20) == 0)
  {
LABEL_17:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_27:
  v35 = [MEMORY[0x277CBEAA8] date];
  v36 = [v93 objectForKeyedSubscript:&unk_2845A0308];
  v102 = 0;
  v37 = [(RTFeatureExtractor *)self _getCalendarEventsWithDateInterval:v36 outError:&v102];
  v38 = v102;
  if (v38)
  {
    [v11 addObject:v38];
  }

  [v13 setCalendarEvents:v37];
  [objc_opt_class() logFeatureExtractionForFeature:@"calendar" stimulationDate:v35 featureArray:v37 success:v38 == 0 toDict:v9];

  if ((a3 & 0x10) == 0)
  {
LABEL_18:
    if ((a3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_30:
  v39 = [MEMORY[0x277CBEAA8] date];
  v101 = 0;
  v40 = [(RTFeatureExtractor *)self _getMapsActiveNavigationWithError:&v101];
  v41 = v101;
  if (v41)
  {
    [v11 addObject:v41];
  }

  v88 = v11;
  [v13 setMapsActiveNavigation:v40];
  v85 = v40;
  if (v40)
  {
    v116[0] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:1];
  }

  else
  {
    v42 = MEMORY[0x277CBEBF8];
  }

  v84 = v41;
  v83 = v42;
  [objc_opt_class() logFeatureExtractionForFeature:@"mapsActiveNavigation" stimulationDate:v39 featureArray:v42 success:v41 == 0 toDict:v9];
  v43 = [MEMORY[0x277CBEAA8] date];

  v44 = [v93 objectForKeyedSubscript:&unk_2845A0320];
  v100 = 0;
  v45 = [(RTFeatureExtractor *)self _getMapsHistoricalNavigationsWithDateInterval:v44 outError:&v100];
  v46 = v100;
  if (v46)
  {
    [v11 addObject:v46];
  }

  [v94 setMapsHistoricalNavigations:v45];
  v82 = v45;
  [objc_opt_class() logFeatureExtractionForFeature:@"mapsHistoricalNavigation" stimulationDate:v43 featureArray:v45 success:v46 == 0 toDict:v9];
  v47 = [MEMORY[0x277CBEAA8] date];

  v99 = 0;
  v48 = [(RTFeatureExtractor *)self _getMapsViewedPlacesWithDateInterval:v44 outError:&v99];
  v49 = v99;
  if (v49)
  {
    [v11 addObject:v49];
  }

  [v94 setMapsViewedPlaces:v48];
  v86 = v9;
  [objc_opt_class() logFeatureExtractionForFeature:@"mapsViewedPlaces" stimulationDate:v47 featureArray:v48 success:v49 == 0 toDict:v9];
  v50 = [MEMORY[0x277CBEAA8] date];

  v98 = 0;
  v51 = [(RTFeatureExtractor *)self _getParkedCarWithError:&v98];
  v52 = v98;
  if (v52)
  {
    [v11 addObject:v52];
  }

  [v94 setParkedCar:v51];
  if (v51)
  {
    v115 = v51;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
  }

  else
  {
    v53 = MEMORY[0x277CBEBF8];
  }

  [objc_opt_class() logFeatureExtractionForFeature:@"parkedCar" stimulationDate:v50 featureArray:v53 success:v52 == 0 toDict:v86];

  v9 = v86;
  v11 = v88;
  v12 = v90;
  if ((a3 & 8) == 0)
  {
LABEL_19:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_45:
  v54 = [MEMORY[0x277CBEAA8] date];
  v55 = [v93 objectForKeyedSubscript:&unk_2845A0338];
  v97 = 0;
  v56 = [(RTFeatureExtractor *)self _getWorkoutsWithDateInterval:v55 outError:&v97];
  v57 = v97;
  if (v57)
  {
    [v11 addObject:v57];
  }

  [v94 setWorkouts:v56];
  [objc_opt_class() logFeatureExtractionForFeature:@"Workouts" stimulationDate:v54 featureArray:v56 success:v57 == 0 toDict:v9];

  if ((a3 & 0x40) != 0)
  {
LABEL_48:
    v58 = [MEMORY[0x277CBEAA8] date];
    v59 = [v93 objectForKeyedSubscript:&unk_2845A0350];
    v96 = 0;
    v60 = [(RTFeatureExtractor *)self _getTransitionsWithDateInterval:v59 outError:&v96];
    v61 = v96;
    if (v61)
    {
      [v11 addObject:v61];
    }

    [v94 setTransitions:v60];
    [objc_opt_class() logFeatureExtractionForFeature:@"Transitions" stimulationDate:v58 featureArray:v60 success:v61 == 0 toDict:v9];
  }

LABEL_51:
  if ((a3 & 0x100) != 0)
  {
    v62 = [MEMORY[0x277CBEAA8] date];
    v95 = 0;
    v63 = [(RTFeatureExtractor *)self _getHomeKitHomesWithError:&v95];
    v64 = v95;
    if (v64)
    {
      [v11 addObject:v64];
    }

    [v94 setHomeKitHomes:v63];
    [objc_opt_class() logFeatureExtractionForFeature:@"HomeKitHomes" stimulationDate:v62 featureArray:v63 success:v64 == 0 toDict:v9];
  }

  if ((~a3 & 0x201) == 0)
  {
    v65 = [v94 visits];
    v66 = [v65 lastObject];
    [v66 entryTimeCFAbsolute];
    if (v67 == 0.0)
    {
    }

    else
    {
      v68 = [v94 visits];
      v69 = [v68 lastObject];
      [v69 exitTimeCFAbsolute];
      v71 = v70;

      if (v71 != 0.0)
      {
        v72 = [MEMORY[0x277CBEAA8] date];
        v73 = [(RTFeatureExtractor *)self _getPropagatedLocationAtDistance:2000.0];
        [v94 setPropagatedLocations:v73];
        [objc_opt_class() logFeatureExtractionForFeature:@"PropagatedLocations" stimulationDate:v72 featureArray:v73 success:v73 != 0 toDict:v9];
        goto LABEL_63;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    v72 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      goto LABEL_64;
    }

    v73 = NSStringFromSelector(a2);
    *buf = 138412290;
    v108 = v73;
    _os_log_impl(&dword_2304B3000, v72, OS_LOG_TYPE_INFO, "%@, Device not in transit, we will not fetch the propogated locations", buf, 0xCu);
LABEL_63:

LABEL_64:
  }

LABEL_65:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = NSStringFromSelector(a2);
      v76 = [MEMORY[0x277CBEAA8] date];
      [v76 timeIntervalSinceDate:v12];
      v78 = v77;
      +[RTRuntime footprint];
      *buf = 138413058;
      v108 = v75;
      v109 = 2048;
      v110 = v78;
      v111 = 2048;
      v112 = v79;
      v113 = 2112;
      v114 = v11;
      _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_INFO, "%@, finished, latency, %.2f, footprint, %.4f MB, error(s), %@", buf, 0x2Au);
    }
  }

  [(RTFeatureExtractor *)self _submitMetrics:v9];
  if (a6)
  {
    v80 = _RTSafeArray();
    *a6 = _RTMultiErrorCreate();
  }

  return v94;
}

- (id)_getLOIsUUIDsFromVisits:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 loiIdentifier];

        if (v11)
        {
          v12 = objc_alloc(MEMORY[0x277CCAD78]);
          v13 = [v10 loiIdentifier];
          v14 = [v12 initWithUUIDBytes:{objc_msgSend(v13, "bytes")}];

          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)logFeatureExtractionForFeature:(id)a3 stimulationDate:(id)a4 featureArray:(id)a5 success:(BOOL)a6 toDict:(id)a7
{
  v8 = a6;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = MEMORY[0x277CBEAA8];
  v16 = a4;
  v17 = [v15 date];
  [v17 timeIntervalSinceDate:v16];
  v19 = v18;

  v20 = [v13 count];
  v21 = [a1 countKeyForFeature:v12];
  v22 = [a1 latencyKeyForFeature:v12];
  v23 = [a1 successKeyForFeature:v12];
  if (v21)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    [v14 setObject:v24 forKeyedSubscript:v21];
  }

  if (v22)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [v14 setObject:v25 forKeyedSubscript:v22];
  }

  if (v23)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v14 setObject:v26 forKeyedSubscript:v23];
  }

  v42 = v14;
  v27 = [v13 firstObject];
  v28 = [v27 description];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = &stru_284528390;
  }

  v31 = v30;

  v32 = [v13 lastObject];
  v33 = [v32 description];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = &stru_284528390;
  }

  v36 = v35;

  +[RTRuntime footprint];
  v38 = v37;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v44 = v12;
      v45 = 2048;
      v46 = v41;
      v47 = 2048;
      v48 = v19;
      v49 = 2048;
      v50 = v38;
      _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "Feature Extractor Summary for %@, count, %lu, latency, %.2f, footprint, %.4f MB", buf, 0x2Au);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v44 = v12;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = *&v36;
      _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "Feature Extractor Summary for %@, first, %@, last, %@", buf, 0x20u);
    }
  }
}

+ (id)countKeyForFeature:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"visits"])
  {
    v4 = kRTPredictedContextMetricsKeyVisitCount;
LABEL_27:
    v5 = *v4;
    goto LABEL_28;
  }

  if ([v3 isEqualToString:@"LocationsOfInterest"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationOfInterestCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Location History"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationsCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Motion History"])
  {
    v4 = kRTPredictedContextMetricsKeyMotionActivitiesCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"calendar"])
  {
    v4 = kRTPredictedContextMetricsKeyCalendarEventsCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsActiveNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsActiveNavigationCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsViewedPlaces"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsViewedPlacesCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsHistoricalNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsHistoricalNavigationCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"parkedCar"])
  {
    v4 = kRTPredictedContextMetricsKeyParkedCarCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Workouts"])
  {
    v4 = kRTPredictedContextMetricsKeyWorkoutsCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Transitions"])
  {
    v4 = kRTPredictedContextMetricsKeyTransitionsCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"HomeKitHomes"])
  {
    v4 = kRTPredictedContextMetricsKeyHomeKitHomesCount;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"PropagatedLocations"])
  {
    v4 = kRTPredictedContextMetricsKeyPropagatedLocationsCount;
    goto LABEL_27;
  }

  v5 = 0;
LABEL_28:

  return v5;
}

+ (id)latencyKeyForFeature:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"visits"])
  {
    v4 = kRTPredictedContextMetricsKeyVisitLatency;
LABEL_27:
    v5 = *v4;
    goto LABEL_28;
  }

  if ([v3 isEqualToString:@"LocationsOfInterest"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationOfInterestLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Location History"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Motion History"])
  {
    v4 = kRTPredictedContextMetricsKeyMotionActivitiesLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"calendar"])
  {
    v4 = kRTPredictedContextMetricsKeyCalendarEventsLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsActiveNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsActiveNavigationLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsViewedPlaces"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsViewedPlacesLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsHistoricalNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsHistoricalNavigationLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"parkedCar"])
  {
    v4 = kRTPredictedContextMetricsKeyParkedCarLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Workouts"])
  {
    v4 = kRTPredictedContextMetricsKeyWorkoutsLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Transitions"])
  {
    v4 = kRTPredictedContextMetricsKeyTransitionsLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"HomeKitHomes"])
  {
    v4 = kRTPredictedContextMetricsKeyHomeKitHomesLatency;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"PropagatedLocations"])
  {
    v4 = kRTPredictedContextMetricsKeyPropagatedLocationsLatency;
    goto LABEL_27;
  }

  v5 = 0;
LABEL_28:

  return v5;
}

+ (id)successKeyForFeature:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"visits"])
  {
    v4 = kRTPredictedContextMetricsKeyVisitSuccess;
LABEL_27:
    v5 = *v4;
    goto LABEL_28;
  }

  if ([v3 isEqualToString:@"LocationsOfInterest"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationsOfInterestSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Location History"])
  {
    v4 = kRTPredictedContextMetricsKeyLocationsSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Motion History"])
  {
    v4 = kRTPredictedContextMetricsKeyMotionActivitiesSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"calendar"])
  {
    v4 = kRTPredictedContextMetricsKeyCalendarEventsSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsActiveNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsActiveNavigationSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsViewedPlaces"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsViewedPlacesSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"mapsHistoricalNavigation"])
  {
    v4 = kRTPredictedContextMetricsKeyMapsHistoricalNavigationSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"parkedCar"])
  {
    v4 = kRTPredictedContextMetricsKeyParkedCarSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Workouts"])
  {
    v4 = kRTPredictedContextMetricsKeyWorkoutsSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"Transitions"])
  {
    v4 = kRTPredictedContextMetricsKeyTransitionsSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"HomeKitHomes"])
  {
    v4 = kRTPredictedContextMetricsKeyHomeKitHomesSuccess;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"PropagatedLocations"])
  {
    v4 = kRTPredictedContextMetricsKeyPropagatedLocationsSuccess;
    goto LABEL_27;
  }

  v5 = 0;
LABEL_28:

  return v5;
}

+ (int64_t)metricCodeForFeatureExtractorOperationType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_230B01F98[a3 - 1];
  }
}

- (id)_getVisitsWithDateInterval:(id)a3 outError:(id *)a4
{
  v78[1] = *MEMORY[0x277D85DE8];
  v50 = a3;
  v48 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__175;
  v67 = __Block_byref_object_dispose__175;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__175;
  v61 = __Block_byref_object_dispose__175;
  v62 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTFeatureExtractor *)self visitConsolidator];
  v8 = objc_alloc(MEMORY[0x277D01340]);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0368, &unk_2845A0380, 0}];
  LOWORD(v45) = 256;
  v11 = [v8 initWithAscending:1 confidence:v9 dateInterval:v50 labelVisit:1 limit:0 sources:v10 redact:v45 filterPairedVisitEntries:?];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __58__RTFeatureExtractor__getVisitsWithDateInterval_outError___block_invoke;
  v53[3] = &unk_2788C4490;
  v55 = &v63;
  v56 = &v57;
  v12 = v6;
  v54 = v12;
  [v7 fetchStoredVisitsWithOptions:v11 handler:v53];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v21 = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 firstObject];

    [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v78[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v78 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  if (v29)
  {
    [v5 addObject:v29];
  }

  if (v64[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v30 = _RTSafeArray();
    v31 = _RTMultiErrorCreate();
  }

  else
  {
    v31 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = NSStringFromSelector(a2);
      v34 = [v50 startDate];
      v35 = [v34 stringFromDate];
      v36 = [v50 endDate];
      v37 = [v36 stringFromDate];
      v38 = [v58[5] count];
      *buf = 138413314;
      *&buf[4] = v33;
      v70 = 2112;
      v71 = v35;
      v72 = 2112;
      v73 = v37;
      v74 = 2048;
      v75 = v38;
      v76 = 2112;
      v77 = v31;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched visits, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v39 = objc_alloc(MEMORY[0x277CBEB18]);
  v40 = [v39 initWithCapacity:{objc_msgSend(v58[5], "count")}];

  v41 = v58[5];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __58__RTFeatureExtractor__getVisitsWithDateInterval_outError___block_invoke_417;
  v51[3] = &unk_2788D1ED0;
  v42 = v40;
  v52 = v42;
  [v41 enumerateObjectsUsingBlock:v51];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v43 = v31;
    *a4 = v31;
  }

  return v42;
}

void __58__RTFeatureExtractor__getVisitsWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __58__RTFeatureExtractor__getVisitsWithDateInterval_outError___block_invoke_417(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8F0];
  v4 = a2;
  v5 = [[v3 alloc] initWithVisit:v4];

  [v2 addObject:v5];
}

- (id)_getTransitionsWithDateInterval:(id)a3 outError:(id *)a4
{
  v75[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v45 = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    v47 = [MEMORY[0x277CBEB18] array];
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__175;
    v64 = __Block_byref_object_dispose__175;
    v65 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__175;
    v58 = __Block_byref_object_dispose__175;
    v59 = [MEMORY[0x277CBEA60] array];
    v6 = dispatch_semaphore_create(0);
    v7 = [(RTFeatureExtractor *)self learnedLocationManager];
    v8 = [v5 startDate];
    v9 = [v5 endDate];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __63__RTFeatureExtractor__getTransitionsWithDateInterval_outError___block_invoke;
    v50[3] = &unk_2788C4490;
    v52 = &v60;
    v53 = &v54;
    v10 = v6;
    v51 = v10;
    [v7 fetchTransitionsBetweenStartDate:v8 endDate:v9 handler:v50];

    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v75[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v75 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;
      }
    }

    else
    {
      v25 = 0;
    }

    v29 = v25;
    if (v29)
    {
      [v47 addObject:v29];
    }

    if (v61[5])
    {
      [v47 addObject:?];
    }

    if ([v47 count])
    {
      v30 = _RTSafeArray();
      v27 = _RTMultiErrorCreate();
    }

    else
    {
      v27 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = NSStringFromSelector(a2);
        v33 = [v5 startDate];
        v34 = [v33 stringFromDate];
        v35 = [v5 endDate];
        v36 = [v35 stringFromDate];
        v37 = [v55[5] count];
        *buf = 138413314;
        *&buf[4] = v32;
        v67 = 2112;
        v68 = v34;
        v69 = 2112;
        v70 = v36;
        v71 = 2048;
        v72 = v37;
        v73 = 2112;
        v74 = v27;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched transitions, %lu, error(s), %@", buf, 0x34u);
      }
    }

    v38 = objc_alloc(MEMORY[0x277CBEB18]);
    v39 = [v38 initWithCapacity:{objc_msgSend(v55[5], "count")}];

    v40 = v55[5];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __63__RTFeatureExtractor__getTransitionsWithDateInterval_outError___block_invoke_419;
    v48[3] = &unk_2788D1EF8;
    v28 = v39;
    v49 = v28;
    [v40 enumerateObjectsUsingBlock:v48];

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v60, 8);

    objc_autoreleasePoolPop(context);
    if (a4)
    {
      v41 = v27;
      *a4 = v27;
    }
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    v28 = 0;
  }

  return v28;
}

void __63__RTFeatureExtractor__getTransitionsWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __63__RTFeatureExtractor__getTransitionsWithDateInterval_outError___block_invoke_419(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8E8];
  v4 = a2;
  v5 = [[v3 alloc] initWithTransition:v4];

  [v2 addObject:v5];
}

- (id)_getLocationsOfInterestFromVisitedLOIsUUIDs:(id)a3 includeKnownPlaceType:(BOOL)a4 outError:(id *)a5
{
  v62 = a4;
  v126[1] = *MEMORY[0x277D85DE8];
  v68 = a3;
  v64 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB18] array];
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__175;
  v107 = __Block_byref_object_dispose__175;
  v108 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__175;
  v101 = __Block_byref_object_dispose__175;
  v102 = [MEMORY[0x277CBEA60] array];
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTFeatureExtractor *)self learnedLocationManager];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke;
  v93[3] = &unk_2788C4490;
  v95 = &v103;
  v96 = &v97;
  v9 = v7;
  v94 = v9;
  [v8 fetchLocationsOfInterestWithIdentifiers:v68 handler:v93];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v116 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v116 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v67 = v24;
  if (v67)
  {
    [v6 addObject:v67];
  }

  if (v104[5])
  {
    [v6 addObject:?];
  }

  if ([v6 count])
  {
    v59 = 1;
    v26 = _RTSafeArray();
    v27 = _RTMultiErrorCreate();
  }

  else
  {
    v27 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = NSStringFromSelector(a2);
      v30 = [v98[5] count];
      *buf = 138412802;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v123 = v27;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, dateInterval, fetched lois count, %lu, error(s), %@", buf, 0x20u);
    }
  }

  v31 = v98[5];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_421;
  v91[3] = &unk_2788D1F20;
  v65 = v64;
  v92 = v65;
  [v31 enumerateObjectsUsingBlock:v91];
  if (v62)
  {
    v32 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v123 = __Block_byref_object_copy__175;
    v124 = __Block_byref_object_dispose__175;
    v125 = [MEMORY[0x277CBEB18] array];
    v116 = 0;
    v117 = &v116;
    v118 = 0x3032000000;
    v119 = __Block_byref_object_copy__175;
    v120 = __Block_byref_object_dispose__175;
    v121 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__175;
    v89 = __Block_byref_object_dispose__175;
    v90 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__175;
    v83 = __Block_byref_object_dispose__175;
    v84 = 0;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_425;
    v73[3] = &unk_2788D1F48;
    v75 = &v85;
    v76 = &v79;
    v77 = buf;
    v78 = &v116;
    v33 = v32;
    v74 = v33;
    [(RTFeatureExtractor *)self _fetchLocationsOfInterestWithPlaceTypes:&unk_2845A16D0 handler:v73];
    v34 = v33;
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v34, v36))
    {
      v63 = [MEMORY[0x277CBEAA8] now];
      [v63 timeIntervalSinceDate:v35];
      v38 = v37;
      v39 = objc_opt_new();
      v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
      v41 = [MEMORY[0x277CCACC8] callStackSymbols];
      v42 = [v41 filteredArrayUsingPredicate:v40];
      v43 = [v42 firstObject];

      [v39 submitToCoreAnalytics:v43 type:1 duration:v38];
      v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        *v109 = 0;
        _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v109, 2u);
      }

      v45 = MEMORY[0x277CCA9B8];
      v126[0] = *MEMORY[0x277CCA450];
      *v109 = @"semaphore wait timeout";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v126 count:1];
      v47 = [v45 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v46];

      if (v47)
      {
        v48 = v47;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = v47;
    if (v49)
    {
      [v6 addObject:v49];
    }

    if (v117[5])
    {
      [v6 addObject:?];
    }

    if ([v6 count])
    {
      v50 = _RTSafeArray();
      v51 = _RTMultiErrorCreate();

      v27 = v51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v52 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = NSStringFromSelector(a2);
        v54 = [v86[5] count];
        v55 = [v80[5] count];
        *v109 = 138413058;
        *&v109[4] = v53;
        v110 = 2048;
        v111 = v54;
        v112 = 2048;
        v113 = v55;
        v114 = 2112;
        v115 = v27;
        _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "%@, dateInterval, fetched with lois with placeType, home lois count, %lu, work lois count, %lu, error(s), %@", v109, 0x2Au);
      }
    }

    v56 = *(*&buf[8] + 40);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_427;
    v69[3] = &unk_2788C6E50;
    v70 = v68;
    v72 = a2;
    v71 = v65;
    [v56 enumerateObjectsUsingBlock:v69];

    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v85, 8);

    _Block_object_dispose(&v116, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);

  objc_autoreleasePoolPop(context);
  if (a5)
  {
    v57 = v27;
    *a5 = v27;
  }

  return v65;
}

void __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_421(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F898];
  v4 = a2;
  v5 = [[v3 alloc] initWithLocationOfInterest:v4];

  [v2 addObject:v5];
}

void __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKey:&unk_2845A02C0];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 objectForKey:&unk_2845A0398];

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:?];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:?];
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
  v15 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __97__RTFeatureExtractor__getLocationsOfInterestFromVisitedLOIsUUIDs_includeKnownPlaceType_outError___block_invoke_427(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  v7 = @"attaching known place type in protoLois";
  if (v6)
  {
    v7 = @" known place type loi already exists in protoLois";
  }

  v8 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = 138412802;
      v14 = v12;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, status, %@, locationOfInterest, %@", &v13, 0x20u);
    }
  }

  if ((v6 & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = [objc_alloc(MEMORY[0x277D3F898]) initWithLocationOfInterest:v3];
    [v10 addObject:v11];
  }
}

- (void)_fetchLocationsOfInterestWithPlaceTypes:(id)a3 handler:(id)a4
{
  v64[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v36 = v6;
  v37 = v5;
  if (!v5)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeTypes", v54, 2u);
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v54, 2u);
    }

LABEL_25:

    goto LABEL_32;
  }

  if ([v5 count])
  {
    v43 = [MEMORY[0x277CBEB38] dictionary];
    *v54 = 0;
    v55 = v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__175;
    v58 = __Block_byref_object_dispose__175;
    v59 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v7)
    {
      v42 = *v51;
      v40 = *MEMORY[0x277D01448];
      v41 = *MEMORY[0x277CCA450];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v50 + 1) + 8 * i);
          v10 = dispatch_semaphore_create(0);
          v11 = [v9 unsignedIntegerValue];
          learnedLocationManager = self->_learnedLocationManager;
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __70__RTFeatureExtractor__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke;
          v45[3] = &unk_2788C4640;
          v49 = v54;
          v46 = v43;
          v47 = v9;
          v13 = v10;
          v48 = v13;
          [(RTLearnedLocationManager *)learnedLocationManager fetchLocationsOfInterestWithPlaceType:v11 handler:v45];
          v14 = v13;
          v15 = [MEMORY[0x277CBEAA8] now];
          v16 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v14, v16))
          {
            v17 = [MEMORY[0x277CBEAA8] now];
            [v17 timeIntervalSinceDate:v15];
            v19 = v18;
            v20 = objc_opt_new();
            v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
            v22 = [MEMORY[0x277CCACC8] callStackSymbols];
            v23 = [v22 filteredArrayUsingPredicate:v21];
            v24 = [v23 firstObject];

            [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
            v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v26 = MEMORY[0x277CCA9B8];
            v64[0] = v41;
            *buf = @"semaphore wait timeout";
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v64 count:1];
            v28 = [v26 errorWithDomain:v40 code:15 userInfo:v27];

            if (v28)
            {
              v29 = v28;
            }
          }

          else
          {
            v28 = 0;
          }

          v30 = v28;
          if (v30)
          {
            [*(v55 + 5) addObject:v30];
            v31 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v32;
              v61 = 2112;
              v62 = v30;
              _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@ fetch query timed out, semaPlaceTypeLOIsError, %@", buf, 0x16u);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v7);
    }

    if ([*(v55 + 5) count])
    {
      v33 = _RTSafeArray();
      v34 = _RTMultiErrorCreate();
    }

    else
    {
      v34 = 0;
    }

    (v36)[2](v36, v43, v34);
    _Block_object_dispose(v54, 8);
  }

  else
  {
    v36[2](v36, MEMORY[0x277CBEC10], 0);
  }

LABEL_32:
}

void __70__RTFeatureExtractor__fetchLocationsOfInterestWithPlaceTypes_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  if ([v6 count])
  {
    [*(a1 + 32) setObject:v6 forKey:*(a1 + 40)];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)_getLocationsOfInterestWithDateInterval:(id)a3 outError:(id *)a4
{
  v69[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v42 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB18] array];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__175;
  v60 = __Block_byref_object_dispose__175;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__175;
  v54 = __Block_byref_object_dispose__175;
  v55 = [MEMORY[0x277CBEA60] array];
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTFeatureExtractor *)self learnedLocationManager];
  v9 = [v5 startDate];
  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __71__RTFeatureExtractor__getLocationsOfInterestWithDateInterval_outError___block_invoke;
  v46[3] = &unk_2788C4490;
  v48 = &v56;
  v49 = &v50;
  v11 = v7;
  v47 = v11;
  [v8 fetchLocationsOfInterestVisitedBetweenStartDate:v9 endDate:v10 includePlaceholders:1 includeVisits:0 includeTransitions:0 handler:v46];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
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
    v69[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v69 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = v26;
  if (v28)
  {
    [v6 addObject:v28];
  }

  if (v57[5])
  {
    [v6 addObject:?];
  }

  if ([v6 count])
  {
    v29 = _RTSafeArray();
    v30 = _RTMultiErrorCreate();
  }

  else
  {
    v30 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = NSStringFromSelector(a2);
      v33 = [v5 startDate];
      v34 = [v33 stringFromDate];
      v35 = [v51[5] count];
      *buf = 138413058;
      *&buf[4] = v32;
      v63 = 2112;
      v64 = v34;
      v65 = 2048;
      v66 = v35;
      v67 = 2112;
      v68 = v30;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, fetched lois count, %lu, error(s), %@", buf, 0x2Au);
    }
  }

  v36 = v51[5];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__RTFeatureExtractor__getLocationsOfInterestWithDateInterval_outError___block_invoke_434;
  v44[3] = &unk_2788D1F20;
  v37 = v42;
  v45 = v37;
  [v36 enumerateObjectsUsingBlock:v44];

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v38 = v30;
    *a4 = v30;
  }

  return v37;
}

void __71__RTFeatureExtractor__getLocationsOfInterestWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __71__RTFeatureExtractor__getLocationsOfInterestWithDateInterval_outError___block_invoke_434(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F898];
  v4 = a2;
  v5 = [[v3 alloc] initWithLocationOfInterest:v4];

  [v2 addObject:v5];
}

- (id)_getLocationHistoriesWithDateInterval:(id)a3 outError:(id *)a4
{
  v74[1] = *MEMORY[0x277D85DE8];
  v46 = a3;
  v44 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__175;
  v63 = __Block_byref_object_dispose__175;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__175;
  v57 = __Block_byref_object_dispose__175;
  v58 = [MEMORY[0x277CBEA60] array];
  LOBYTE(v40) = 1;
  v6 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v46 horizontalAccuracy:20 batchSize:0 boundingBoxLocation:14 type:1 smoothingRequired:1 downsampleRequired:60.0 smoothingErrorThreshold:5.0 ascending:v40];
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTFeatureExtractor *)self locationManager];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __69__RTFeatureExtractor__getLocationHistoriesWithDateInterval_outError___block_invoke;
  v49[3] = &unk_2788C4490;
  v51 = &v59;
  v52 = &v53;
  v9 = v7;
  v50 = v9;
  [v8 fetchStoredLocationsWithOptions:v6 handler:v49];
  v42 = v6;

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v74[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v74 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  if (v26)
  {
    [v5 addObject:v26];
  }

  if (v60[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v27 = _RTSafeArray();
    v28 = _RTMultiErrorCreate();
  }

  else
  {
    v28 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [v46 startDate];
      v32 = [v31 stringFromDate];
      v33 = [v46 endDate];
      v34 = [v33 stringFromDate];
      v35 = [v54[5] count];
      *buf = 138413314;
      *&buf[4] = v30;
      v66 = 2112;
      v67 = v32;
      v68 = 2112;
      v69 = v34;
      v70 = 2048;
      v71 = v35;
      v72 = 2112;
      v73 = v28;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched location histories, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v36 = v54[5];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __69__RTFeatureExtractor__getLocationHistoriesWithDateInterval_outError___block_invoke_436;
  v47[3] = &unk_2788C8170;
  v37 = v44;
  v48 = v37;
  [v36 enumerateObjectsUsingBlock:v47];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v38 = v28;
    *a4 = v28;
  }

  return v37;
}

void __69__RTFeatureExtractor__getLocationHistoriesWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__RTFeatureExtractor__getLocationHistoriesWithDateInterval_outError___block_invoke_436(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F890];
  v4 = a2;
  v5 = [[v3 alloc] initWithLocation:v4];

  [v2 addObject:v5];
}

- (id)_getCalendarEventsWithDateInterval:(id)a3 outError:(id *)a4
{
  v96[1] = *MEMORY[0x277D85DE8];
  v47 = a3;
  v45 = [MEMORY[0x277CBEB18] array];
  v44 = objc_autoreleasePoolPush();
  v54 = [MEMORY[0x277CBEB18] array];
  v51 = dispatch_semaphore_create(0);
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__175;
  v81 = __Block_byref_object_dispose__175;
  v82 = objc_opt_new();
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__175;
  v75 = __Block_byref_object_dispose__175;
  v76 = 0;
  v52 = [v47 endDate];
  v60 = 0;
  v57 = 0;
  v48 = *MEMORY[0x277D01448];
  v4 = 1;
  v49 = *MEMORY[0x277CCA450];
  v5 = -604800;
  do
  {
    context = objc_autoreleasePoolPush();
    v58 = *(v84 + 6);
    if (v58 < 1501)
    {
      v8 = [v52 dateByAddingTimeInterval:v5];
      v9 = [v52 dateByAddingTimeInterval:v60 * 604800.0];
      v10 = [(RTFeatureExtractor *)self eventManager];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __66__RTFeatureExtractor__getCalendarEventsWithDateInterval_outError___block_invoke;
      v63[3] = &unk_2788D1F70;
      v67 = &v71;
      v70 = a2;
      v6 = v8;
      v64 = v6;
      v11 = v9;
      v65 = v11;
      v68 = &v77;
      v69 = &v83;
      v12 = v51;
      v66 = v12;
      v56 = v11;
      [v10 fetchEventsBetweenStartDate:v6 andEndDate:v11 withHandler:v63];

      v13 = v12;
      v14 = [MEMORY[0x277CBEAA8] now];
      v15 = dispatch_time(0, 3600000000000);
      v16 = v57;
      if (dispatch_semaphore_wait(v13, v15))
      {
        v55 = [MEMORY[0x277CBEAA8] now];
        [v55 timeIntervalSinceDate:v14];
        v18 = v17;
        v19 = objc_opt_new();
        v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
        v21 = [MEMORY[0x277CCACC8] callStackSymbols];
        v22 = [v21 filteredArrayUsingPredicate:v20];
        v23 = [v22 firstObject];

        [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
        v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v25 = MEMORY[0x277CCA9B8];
        v96[0] = v49;
        *buf = @"semaphore wait timeout";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v96 count:1];
        v27 = [v25 errorWithDomain:v48 code:15 userInfo:v26];

        v16 = v57;
        if (v27)
        {
          v28 = v27;

          v16 = v27;
        }
      }

      v29 = v16;
      if (v29)
      {
        [v54 addObject:v29];
      }

      if (v72[5])
      {
        [v54 addObject:?];
      }

      v57 = v29;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v7;
        v88 = 1024;
        LODWORD(v89) = v4;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, fetched max number of calendar events, stopped week %d", buf, 0x12u);
      }
    }

LABEL_17:
    objc_autoreleasePoolPop(context);
    v30 = v58 > 1500 || v60 == -7;
    v5 -= 604800;
    ++v4;
    --v60;
  }

  while (!v30);
  if ([v54 count])
  {
    v31 = _RTSafeArray();
    v32 = _RTMultiErrorCreate();
  }

  else
  {
    v32 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = NSStringFromSelector(a2);
      v35 = [v47 startDate];
      v36 = [v35 stringFromDate];
      v37 = [v47 endDate];
      v38 = [v37 stringFromDate];
      v39 = *(v84 + 6);
      *buf = 138413314;
      *&buf[4] = v34;
      v88 = 2112;
      v89 = v36;
      v90 = 2112;
      v91 = v38;
      v92 = 2048;
      v93 = v39;
      v94 = 2112;
      v95 = v32;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, total fetched calendar events, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v40 = v78[5];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __66__RTFeatureExtractor__getCalendarEventsWithDateInterval_outError___block_invoke_438;
  v61[3] = &unk_2788D1F98;
  v41 = v45;
  v62 = v41;
  [v40 enumerateObjectsUsingBlock:v61];

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
  objc_autoreleasePoolPop(v44);
  if (a4)
  {
    v42 = v32;
    *a4 = v32;
  }

  return v41;
}

void __66__RTFeatureExtractor__getCalendarEventsWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 80));
        v9 = [*(a1 + 32) stringFromDate];
        v10 = [*(a1 + 40) stringFromDate];
        v11 = 138413058;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2048;
        v18 = [v5 count];
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched calender events, %lu", &v11, 0x2Au);
      }
    }

    [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v5];
    *(*(*(a1 + 72) + 8) + 24) += [v5 count];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __66__RTFeatureExtractor__getCalendarEventsWithDateInterval_outError___block_invoke_438(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F860];
  v4 = a2;
  v5 = [[v3 alloc] initWithEvent:v4];

  [v2 addObject:v5];
}

- (id)_getMapsActiveNavigationWithError:(id *)a3
{
  v66[1] = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__175;
  v59 = __Block_byref_object_dispose__175;
  v60 = 0;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB18] array];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__175;
  v53 = __Block_byref_object_dispose__175;
  v54 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(RTFeatureExtractor *)self navigationManager];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __56__RTFeatureExtractor__getMapsActiveNavigationWithError___block_invoke;
  v45[3] = &unk_2788C4490;
  v47 = &v55;
  v48 = &v49;
  v7 = v5;
  v46 = v7;
  [v6 fetchNavigationRouteSummaryWithHandler:v45];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
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
    v66[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v66 count:1];
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
  if (v24)
  {
    [v4 addObject:v24];
  }

  if (v50[5])
  {
    [v4 addObject:?];
  }

  v25 = v56[5];
  if (!v25 || ([v25 destinationMapItem], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
  {
    v29 = 0;
  }

  else
  {
    v28 = [v56[5] destinationMapItem];
    v44 = 0;
    v29 = [(RTFeatureExtractor *)self _fetchLocationOfInterestForMapItem:v28 error:&v44];
    v30 = v44;

    if (v30)
    {
      [v4 addObject:v30];
    }
  }

  if ([v4 count])
  {
    v31 = _RTSafeArray();
    v32 = _RTMultiErrorCreate();
  }

  else
  {
    v32 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = NSStringFromSelector(a2);
      v35 = v56[5] != 0;
      *buf = 138412802;
      *&buf[4] = v34;
      v62 = 2048;
      v63 = v35;
      v64 = 2112;
      v65 = v32;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, fetched active navigation, %lu, error(s), %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v49, 8);
  objc_autoreleasePoolPop(context);
  if (a3)
  {
    v36 = v32;
    *a3 = v32;
  }

  if (v29)
  {
    v37 = [v29 identifier];
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_alloc(MEMORY[0x277D3F8B0]);
  v39 = [v38 initWithRouteSummary:v56[5] loiIdentifier:v37];

  _Block_object_dispose(&v55, 8);

  return v39;
}

void __56__RTFeatureExtractor__getMapsActiveNavigationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = [v12 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getMapsHistoricalNavigationsWithDateInterval:(id)a3 outError:(id *)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v45 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__175;
  v62 = __Block_byref_object_dispose__175;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__175;
  v56 = __Block_byref_object_dispose__175;
  v57 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [[RTMapsSupportOptions alloc] initWithDateInterval:v45];
  v8 = [(RTFeatureExtractor *)self mapsSupportManager];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __77__RTFeatureExtractor__getMapsHistoricalNavigationsWithDateInterval_outError___block_invoke;
  v48[3] = &unk_2788C4490;
  v50 = &v58;
  v51 = &v52;
  v9 = v6;
  v49 = v9;
  [v8 fetchHistoryEntryRoutesWithOptions:v7 handler:v48];
  v41 = v7;

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v73[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  if (v26)
  {
    [v5 addObject:v26];
  }

  if (v53[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v27 = _RTSafeArray();
    v28 = _RTMultiErrorCreate();
  }

  else
  {
    v28 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [v45 startDate];
      v32 = [v31 stringFromDate];
      v33 = [v45 endDate];
      v34 = [v33 stringFromDate];
      v35 = [v59[5] count];
      *buf = 138413314;
      *&buf[4] = v30;
      v65 = 2112;
      v66 = v32;
      v67 = 2112;
      v68 = v34;
      v69 = 2048;
      v70 = v35;
      v71 = 2112;
      v72 = v28;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched historical maps navigations, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v36 = v59[5];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __77__RTFeatureExtractor__getMapsHistoricalNavigationsWithDateInterval_outError___block_invoke_441;
  v46[3] = &unk_2788D1FC0;
  v37 = v43;
  v47 = v37;
  [v36 enumerateObjectsUsingBlock:v46];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v38 = v28;
    *a4 = v28;
  }

  return v37;
}

void __77__RTFeatureExtractor__getMapsHistoricalNavigationsWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __77__RTFeatureExtractor__getMapsHistoricalNavigationsWithDateInterval_outError___block_invoke_441(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8B8];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryRoute:v4];

  [v2 addObject:v5];
}

- (id)_getMapsViewedPlacesWithDateInterval:(id)a3 outError:(id *)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v45 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__175;
  v62 = __Block_byref_object_dispose__175;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__175;
  v56 = __Block_byref_object_dispose__175;
  v57 = 0;
  v6 = [[RTMapsSupportOptions alloc] initWithDateInterval:v45];
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTFeatureExtractor *)self mapsSupportManager];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __68__RTFeatureExtractor__getMapsViewedPlacesWithDateInterval_outError___block_invoke;
  v48[3] = &unk_2788C4490;
  v50 = &v58;
  v51 = &v52;
  v9 = v7;
  v49 = v9;
  [v8 fetchHistoryEntryPlaceDisplaysWithOptions:v6 handler:v48];
  v41 = v6;

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v73[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  if (v26)
  {
    [v5 addObject:v26];
  }

  if (v53[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v27 = _RTSafeArray();
    v28 = _RTMultiErrorCreate();
  }

  else
  {
    v28 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [v45 startDate];
      v32 = [v31 stringFromDate];
      v33 = [v45 endDate];
      v34 = [v33 stringFromDate];
      v35 = [v59[5] count];
      *buf = 138413314;
      *&buf[4] = v30;
      v65 = 2112;
      v66 = v32;
      v67 = 2112;
      v68 = v34;
      v69 = 2048;
      v70 = v35;
      v71 = 2112;
      v72 = v28;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched maps viewed places, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v36 = v59[5];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __68__RTFeatureExtractor__getMapsViewedPlacesWithDateInterval_outError___block_invoke_443;
  v46[3] = &unk_2788D1FE8;
  v37 = v43;
  v47 = v37;
  [v36 enumerateObjectsUsingBlock:v46];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v38 = v28;
    *a4 = v28;
  }

  return v37;
}

void __68__RTFeatureExtractor__getMapsViewedPlacesWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __68__RTFeatureExtractor__getMapsViewedPlacesWithDateInterval_outError___block_invoke_443(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8C0];
  v4 = a2;
  v5 = [[v3 alloc] initWithViewedPlaceDisplay:v4];

  [v2 addObject:v5];
}

- (id)_getMotionActivitiesWithDateInterval:(id)a3 outError:(id *)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v45 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__175;
  v62 = __Block_byref_object_dispose__175;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__175;
  v56 = __Block_byref_object_dispose__175;
  v57 = [MEMORY[0x277CBEA60] array];
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTFeatureExtractor *)self motionActivityManager];
  v8 = [v45 startDate];
  v9 = [v45 endDate];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __68__RTFeatureExtractor__getMotionActivitiesWithDateInterval_outError___block_invoke;
  v48[3] = &unk_2788C4490;
  v50 = &v58;
  v51 = &v52;
  v10 = v6;
  v49 = v10;
  [v7 fetchMotionActivitiesFromStartDate:v8 endDate:v9 handler:v48];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v73[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = v25;
  if (v27)
  {
    [v5 addObject:v27];
  }

  if (v59[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v28 = _RTSafeArray();
    v29 = _RTMultiErrorCreate();
  }

  else
  {
    v29 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = NSStringFromSelector(a2);
      v32 = [v45 startDate];
      v33 = [v32 stringFromDate];
      v34 = [v45 endDate];
      v35 = [v34 stringFromDate];
      v36 = [v53[5] count];
      *buf = 138413314;
      *&buf[4] = v31;
      v65 = 2112;
      v66 = v33;
      v67 = 2112;
      v68 = v35;
      v69 = 2048;
      v70 = v36;
      v71 = 2112;
      v72 = v29;
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched motion activities, %lu, error(s), %@", buf, 0x34u);
    }
  }

  v37 = v53[5];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __68__RTFeatureExtractor__getMotionActivitiesWithDateInterval_outError___block_invoke_445;
  v46[3] = &unk_2788D2010;
  v38 = v43;
  v47 = v38;
  [v37 enumerateObjectsUsingBlock:v46];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  objc_autoreleasePoolPop(context);
  if (a4)
  {
    v39 = v29;
    *a4 = v29;
  }

  return v38;
}

void __68__RTFeatureExtractor__getMotionActivitiesWithDateInterval_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __68__RTFeatureExtractor__getMotionActivitiesWithDateInterval_outError___block_invoke_445(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8C8];
  v4 = a2;
  v5 = [[v3 alloc] initWithMotionActivity:v4];

  [v2 addObject:v5];
}

- (id)_getParkedCarWithError:(id *)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__175;
  v48 = __Block_byref_object_dispose__175;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__175;
  v42 = __Block_byref_object_dispose__175;
  v43 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTFeatureExtractor *)self vehicleLocationProvider];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __45__RTFeatureExtractor__getParkedCarWithError___block_invoke;
  v34[3] = &unk_2788C4490;
  v36 = &v44;
  v37 = &v38;
  v8 = v6;
  v35 = v8;
  [v7 fetchLastVehicleEventsWithHandler:v34];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v55[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    [v5 addObject:v25];
  }

  if (v39[5])
  {
    [v5 addObject:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      v28 = v45[5] != 0;
      *buf = 138412802;
      *&buf[4] = v27;
      v51 = 2048;
      v52 = v28;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, fetched parked car, %lu, error(s), %@", buf, 0x20u);
    }
  }

  if (a3)
  {
    v29 = _RTSafeArray();
    *a3 = _RTMultiErrorCreate();
  }

  v30 = objc_alloc(MEMORY[0x277D3F8D0]);
  v31 = [v30 initWithVehicleEvent:v45[5]];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v31;
}

void __45__RTFeatureExtractor__getParkedCarWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getWorkoutsWithDateInterval:(id)a3 outError:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = objc_autoreleasePoolPush();
  v10 = [(RTFeatureExtractor *)self healthKitManager];
  v11 = [v7 startDate];
  v12 = +[RTHealthKitManager getWorkoutAllPredictableTypes];
  v31 = 0;
  v13 = [v10 getRelevantWorkoutsWithStartDate:v11 limit:1000 workoutTypes:v12 error:&v31];
  v14 = v31;

  v15 = [v14 copy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      v26 = [v7 startDate];
      v18 = [v26 stringFromDate];
      [v7 endDate];
      v19 = v28 = v9;
      [v19 stringFromDate];
      v20 = v27 = v8;
      v21 = [v13 count];
      *buf = 138413314;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v20;
      v38 = 2048;
      v39 = v21;
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, dateInterval, startDate, %@, endDate, %@, fetched workouts, %lu, error(s), %@", buf, 0x34u);

      v9 = v28;
      v8 = v27;
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__RTFeatureExtractor__getWorkoutsWithDateInterval_outError___block_invoke;
  v29[3] = &unk_2788D2038;
  v22 = v8;
  v30 = v22;
  [v13 enumerateObjectsUsingBlock:v29];

  objc_autoreleasePoolPop(v9);
  if (a4)
  {
    v23 = v15;
    *a4 = v15;
  }

  v24 = v22;

  return v22;
}

void __60__RTFeatureExtractor__getWorkoutsWithDateInterval_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8F8];
  v4 = a2;
  v5 = [[v3 alloc] initWithWorkout:v4];

  [v2 addObject:v5];
}

- (id)_getHomeKitHomesWithError:(id *)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB18] array];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__175;
  v55 = __Block_byref_object_dispose__175;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__175;
  v49 = __Block_byref_object_dispose__175;
  v50 = [MEMORY[0x277CBEA60] array];
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTFeatureExtractor *)self homeKitManager];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __48__RTFeatureExtractor__getHomeKitHomesWithError___block_invoke;
  v41[3] = &unk_2788C4490;
  v43 = &v51;
  v44 = &v45;
  v8 = v6;
  v42 = v8;
  [v7 fetchHomesWithHandler:v41];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    [v5 addObject:v25];
  }

  if (v52[5])
  {
    [v5 addObject:?];
  }

  if ([v5 count])
  {
    v36 = 1;
    v26 = _RTSafeArray();
    v27 = _RTMultiErrorCreate();
  }

  else
  {
    v27 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = NSStringFromSelector(a2);
      v30 = [v46[5] count];
      *buf = 138412802;
      *&buf[4] = v29;
      v58 = 2048;
      v59 = v30;
      v60 = 2112;
      v61 = v27;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, fetched homeKit homes, %lu, error(s), %@", buf, 0x20u);
    }
  }

  v31 = [MEMORY[0x277CBEB18] array];
  v32 = v46[5];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __48__RTFeatureExtractor__getHomeKitHomesWithError___block_invoke_449;
  v39[3] = &unk_2788D2060;
  v33 = v31;
  v40 = v33;
  [v32 enumerateObjectsUsingBlock:v39];

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  objc_autoreleasePoolPop(context);
  if (a3)
  {
    v34 = v27;
    *a3 = v27;
  }

  return v33;
}

void __48__RTFeatureExtractor__getHomeKitHomesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __48__RTFeatureExtractor__getHomeKitHomesWithError___block_invoke_449(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F868];
  v4 = a2;
  v5 = [[v3 alloc] initWithHomeKitHome:v4];

  [v2 addObject:v5];
}

- (id)_getPropagatedLocationAtDistance:(double)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = objc_autoreleasePoolPush();
  v8 = [(RTFeatureExtractor *)self tripLocationPropagator];
  v9 = [(RTFeatureExtractor *)self locationManager];
  v10 = [v8 getPropagatedLocationWithLocationManager:v9 atDistance:a3];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__RTFeatureExtractor__getPropagatedLocationAtDistance___block_invoke;
  v16[3] = &unk_2788D2088;
  v11 = v6;
  v17 = v11;
  [v10 enumerateObjectsUsingBlock:v16];

  objc_autoreleasePoolPop(v7);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v11 count];
      *buf = 138412546;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, fetched propagated locations, %lu", buf, 0x16u);
    }
  }

  return v11;
}

void __55__RTFeatureExtractor__getPropagatedLocationAtDistance___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D3F8A0];
  v4 = a2;
  v5 = [[v3 alloc] initWithRTLocation:v4];

  [v2 addObject:v5];
}

- (id)_fetchLocationOfInterestForMapItem:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__175;
    v54 = __Block_byref_object_dispose__175;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__175;
    v48 = __Block_byref_object_dispose__175;
    v49 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = [(RTFeatureExtractor *)self learnedLocationManager];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __63__RTFeatureExtractor__fetchLocationOfInterestForMapItem_error___block_invoke;
    v38 = &unk_2788D20B0;
    v41 = &v50;
    v42 = &v44;
    v43 = a2;
    v39 = v7;
    v10 = v8;
    v40 = v10;
    [v9 fetchLocationOfInterestWithMapItem:v39 handler:&v35];

    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_143];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v58 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v27 = 0;
LABEL_12:

        v30 = v25;
        v31 = v30;
        if (v27)
        {
          if (a4)
          {
            v32 = v45[5];
            if (v32)
            {
              *a4 = v32;
            }
          }

          v29 = v51[5];
        }

        else if (a4)
        {
          v33 = v30;
          v29 = 0;
          *a4 = v31;
        }

        else
        {
          v29 = 0;
        }

        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v50, 8);

        goto LABEL_21;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 1;
    goto LABEL_12;
  }

  if (a4)
  {
    v56 = *MEMORY[0x277CCA450];
    v57 = @"requires a non nil map item.";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v28];
  }

  v29 = 0;
LABEL_21:

  return v29;
}

void __63__RTFeatureExtractor__fetchLocationOfInterestForMapItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, fetched LOI, %@ for mapItem, %@, error, %@", &v13, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end