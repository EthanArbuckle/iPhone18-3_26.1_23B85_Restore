@interface RTWorkoutRouteManager
+ (id)curveOrientationTypeToString:(unint64_t)a3;
- (BOOL)_areWorkoutsSimilarBetweenClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 error:(id *)a7;
- (BOOL)_clearDistanceMatrixWithError:(id *)a3;
- (BOOL)_clearInMemoryClusters;
- (BOOL)_computeAndSaveDistanceMatrixForWorkoutUUIDs:(id)a3 distanceMetric:(int64_t)a4 error:(id *)a5;
- (BOOL)_deleteAllClustersFromHealthKitError:(id *)a3;
- (BOOL)_initProcessWorkoutMetrics:(id *)a3;
- (BOOL)_initProcessWorkoutMetricsForClusteringWithError:(id *)a3;
- (BOOL)_initProcessWorkoutMetricsForDistanceMatrixWithError:(id *)a3;
- (BOOL)_initProcessWorkoutMetricsForSyncFromHealthKitWithError:(id *)a3;
- (BOOL)_initProcessWorkoutMetricsForSyncToHealthKitWithError:(id *)a3;
- (BOOL)_initProcessWorkoutMetricsForSyncToWatchKitWithError:(id *)a3;
- (BOOL)_isBoundingBoxAreaLessThanThresholdSubPrefilter:(CGRect)a3 verticesCount:(unint64_t)a4 stimulationDate:(id)a5 error:(id *)a6;
- (BOOL)_isEligibleForCurveOrientation:(CLLocationCoordinate2D *)a3 lastLocation:(CLLocationCoordinate2D *)a4 error:(id *)a5;
- (BOOL)_isPreFilteredCentroidBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8;
- (BOOL)_isPreFilteredCurveOrientationBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 error:(id *)a7;
- (BOOL)_isPreFilteredForWorkout:(id)a3 firstFewLocations:(CLLocationCoordinate2D *)a4 firstFewLocationsCount:(unint64_t)a5 cachedDictionary:(id)a6 otherWorkout:(id)a7 firstFewOtherLocations:(CLLocationCoordinate2D *)a8 firstFewOtherLocationsCount:(unint64_t)a9 cachedOtherDictionary:(id)a10 preFilteringResults:(id)a11 error:(id *)a12;
- (BOOL)_isPreFilteredForWorkout:(id)a3 otherWorkout:(id)a4 preFilteringResults:(id)a5 error:(id *)a6;
- (BOOL)_isPreFilteredIOUBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8;
- (BOOL)_isPreFilteredLastLocationBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8;
- (BOOL)_isPreFilteredLocationCountBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8;
- (BOOL)_isPreFilteredRunningTrackBasedForWorkout:(id)a3 cachedDictionary:(id)a4 error:(id *)a5;
- (BOOL)_preComputeCacheForWorkout:(id)a3 locations:(CLLocationCoordinate2D *)a4 locationsCount:(unint64_t)a5 decimatedLocations:(CLLocationCoordinate2D *)a6 decimatedLocationsCount:(unint64_t)a7 cachedDictionary:(id)a8 error:(id *)a9;
- (BOOL)_processWorkoutsUsingActivityTypeToWorkoutUUIDsMap:(id)a3 error:(id *)a4;
- (BOOL)_refreshWorkoutsCache:(id)a3 workoutUUIDs:(id)a4 startingIndex:(unint64_t)a5 error:(id *)a6;
- (BOOL)_saveToHealthKitClustersForCreation:(id)a3 remoteClustersForUpdationNewWorkouts:(id)a4 remoteClustersForUpdationWorkoutsToRemove:(id)a5 remoteClustersForDeletion:(id)a6 error:(id *)a7;
- (BOOL)_shouldDecimateWorkout:(id)a3;
- (BOOL)_storeWorkoutDistances:(id)a3 error:(id *)a4;
- (BOOL)_syncClustersToHealthKit:(id)a3 error:(id *)a4;
- (BOOL)_syncClustersToWatchWithLimit:(unint64_t)a3 error:(id *)a4;
- (BOOL)_syncWithRemoteClustersUsingLocalClusters:(id)a3 distanceMetric:(int64_t)a4 outLocalClustersForCreation:(id)a5 outRemoteClustersForUpdationNewWorkouts:(id)a6 outRemoteClustersForUpdationWorkoutsToRemove:(id)a7 outRemoteClustersForDeletion:(id)a8 error:(id *)a9;
- (BOOL)_updateMetricsForCurrentTime:(id)a3 distanceMatrixKey:(unint64_t)a4 error:(id *)a5;
- (BOOL)_updateMetricsForCurrentTime:(id)a3 minTimeKey:(id)a4 maxTimeKey:(id)a5 averageTimeKey:(id)a6 countKey:(id)a7 error:(id *)a8;
- (BOOL)_updateMetricsForCurrentTime:(id)a3 syncToHealthKitKey:(unint64_t)a4 error:(id *)a5;
- (BOOL)_updateWorkoutDistanceRecordsWithObjectIDs:(id)a3 isVisited:(BOOL)a4 error:(id *)a5;
- (BOOL)_validateWorkout:(id)a3 otherWorkout:(id)a4 error:(id *)a5;
- (CGRect)_getCGRectFromCoordinates:(CLLocationCoordinate2D *)a3 verticesCount:(unint64_t)a4 outError:(id *)a5;
- (CLLocationCoordinate2D)_getCoordinatesFromRTPairs:(id)a3;
- (RTWorkoutRouteManager)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 mapServiceManager:(id)a7 platform:(id)a8 workoutDistanceStore:(id)a9 workoutMetricsManager:(id)a10;
- (double)_getConstantValueForString:(id)a3 isDecimated:(BOOL)a4 workoutActivityType:(unint64_t)a5 error:(id *)a6;
- (double)_getMaxDistanceThresholdForMetric:(int64_t)a3 error:(id *)a4;
- (double)_relevanceScoreForWorkoutUUIDs:(id)a3 representativeWorkout:(id)a4 latestWorkoutAcrossAllWorkouts:(id)a5 countOfAllWorkouts:(unint64_t)a6 currentLocation:(id)a7 error:(id *)a8;
- (double)similarityDistanceUsingPreFilteringResults:(id)a3 error:(id *)a4;
- (id)_bestWorkoutFromWorkouts:(id)a3 error:(id *)a4;
- (id)_clusterizeWorkoutsWithError:(id *)a3;
- (id)_colorFromHexString:(id)a3;
- (id)_getActivityTypeToWorkoutUUIDsMapFilteredUsingDistanceThreshold:(double)a3 topN:(unint64_t)a4 error:(id *)a5;
- (id)_getConstantValueForDistanceThresholdUsingDistanceMetric:(int64_t)a3 isDecimated:(BOOL)a4 workoutActivityType:(unint64_t)a5 error:(id *)a6;
- (id)_getRTLocationUsingCLLocationCoordinate2D:(CLLocationCoordinate2D *)a3;
- (id)_getRTLocationUsingRTPair:(id)a3;
- (id)_getRTPairUsingCLLocationCoordinate2D:(CLLocationCoordinate2D *)a3;
- (id)_getRTPairsFromCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4;
- (id)_getRelevanceLocationWithError:(id *)a3;
- (id)_getRemoteWorkoutClustersForWorkoutUUIDs:(id)a3 error:(id *)a4;
- (id)_getWorkoutFromWorkouts:(id)a3 UUID:(id)a4 error:(id *)a5;
- (id)_getWorkoutRouteLabelForWorkout:(id)a3 error:(id *)a4;
- (id)_getWorkoutRouteSnapshotForWorkout:(id)a3 error:(id *)a4;
- (id)_getWorkoutUUIDsForCluster:(id)a3 error:(id *)a4;
- (id)_lastWorkoutFromWorkouts:(id)a3 error:(id *)a4;
- (id)_latestWorkoutUUIDAcrossWorkouts:(id)a3;
- (id)_mapWorkoutsToUUIDs:(id)a3 error:(id *)a4;
- (id)_paceFromWorkout:(id)a3 error:(id *)a4;
- (id)_readClustersFromHealthKitWithError:(id *)a3;
- (id)_retrieveUUIDsToPruneWithError:(id *)a3;
- (id)_sortWorkoutUUIDs:(id)a3 key:(id)a4 ascending:(BOOL)a5 error:(id *)a6;
- (id)_sortWorkoutUUIDsByDistance:(id)a3 error:(id *)a4;
- (id)_sortWorkouts:(id)a3 key:(id)a4 ascending:(BOOL)a5 error:(id *)a6;
- (unint64_t)_getCurveOrientationTypeForLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5;
- (void)_deleteWorkout:(id)a3 handler:(id)a4;
- (void)_getLocationsForWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(int64_t)a5 handler:(id)a6;
- (void)_logClusters:(id)a3 className:(id)a4 selectorName:(id)a5;
- (void)_processNewlyAddedWorkout:(id)a3 handler:(id)a4;
- (void)_processWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 handler:(id)a11;
- (void)_pruneDistanceMatrixWithHandler:(id)a3;
- (void)_stepCallerWithName:(id)a3 counter:(int64_t)a4 totalCount:(int64_t)a5;
- (void)_updateRelevanceScoresWithHandler:(id)a3;
- (void)deleteWorkout:(id)a3 handler:(id)a4;
- (void)displayWorkoutDistanceRecordsWithHandler:(id)a3;
- (void)processNewlyAddedWorkout:(id)a3 handler:(id)a4;
- (void)processWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 handler:(id)a11;
- (void)pruneDistanceMatrixWithHandler:(id)a3;
- (void)updateRelevanceScoresWithHandler:(id)a3;
@end

@implementation RTWorkoutRouteManager

+ (id)curveOrientationTypeToString:(unint64_t)a3
{
  v3 = @"curveOrientationUnknown";
  if (a3 == 1)
  {
    v3 = @"curveOrientationClockwise";
  }

  if (a3 == 2)
  {
    return @"curveOrientationCounterClockwise";
  }

  else
  {
    return v3;
  }
}

- (RTWorkoutRouteManager)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4 healthKitManager:(id)a5 locationManager:(id)a6 mapServiceManager:(id)a7 platform:(id)a8 workoutDistanceStore:(id)a9 workoutMetricsManager:(id)a10
{
  v16 = a3;
  v17 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v30 = a9;
  v18 = a10;
  v29 = v18;
  if (!v16)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: defaultsManager";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_29;
  }

  if (!v17)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_28;
  }

  if (!v34)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_28;
  }

  if (!v33)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_28;
  }

  if (!v32)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_28;
  }

  if (!v31)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: platform";
    goto LABEL_28;
  }

  if (!v30)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: workoutDistanceStore";
    goto LABEL_28;
  }

  if (!v18)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: workoutMetricsManager";
      goto LABEL_28;
    }

LABEL_29:

    v23 = 0;
    v22 = self;
    goto LABEL_30;
  }

  v35.receiver = self;
  v35.super_class = RTWorkoutRouteManager;
  v19 = [(RTNotifier *)&v35 init];
  if (v19)
  {
    v28 = v19;
    objc_storeStrong(&v19->_defaultsManager, a3);
    objc_storeStrong(&v28->_distanceCalculator, a4);
    objc_storeStrong(&v28->_healthKitManager, a5);
    objc_storeStrong(&v28->_locationManager, a6);
    objc_storeStrong(&v28->_mapServiceManager, a7);
    objc_storeStrong(&v28->_platform, a8);
    objc_storeStrong(&v28->_workoutDistanceStore, a9);
    objc_storeStrong(&v28->_workoutMetricsManager, a10);
    v28->_distanceMetric = 2;
    v20 = objc_opt_new();
    workoutActivityTypeToclustersSet = v28->_workoutActivityTypeToclustersSet;
    v28->_workoutActivityTypeToclustersSet = v20;

    v28->_isSchedulerTriggered = 1;
    [(RTService *)v28 setup];
    v19 = v28;
  }

  v22 = v19;
  v23 = v22;
LABEL_30:

  return v23;
}

- (void)processWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 handler:(id)a11
{
  v18 = a10;
  v50 = *MEMORY[0x277D85DE8];
  v19 = a11;
  v20 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      NSStringFromSelector(a2);
      v24 = v29 = a9;
      +[RTRuntime footprint];
      *buf = 138412802;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2048;
      v49 = v25;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "--------->%@, %@, start processing workouts, footprint, %.4f MB<---------", buf, 0x20u);

      a9 = v29;
      v18 = a10;
    }
  }

  v26 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __215__RTWorkoutRouteManager_processWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_handler___block_invoke;
  block[3] = &unk_2788D0398;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v35 = a8;
  v43 = v18;
  v33 = v20;
  v34 = v19;
  v36 = a9;
  v37 = a2;
  block[4] = self;
  v27 = v20;
  v28 = v19;
  dispatch_async(v26, block);
}

void __215__RTWorkoutRouteManager_processWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_handler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 81);
  v5 = *(a1 + 82);
  v6 = *(a1 + 83);
  v7 = *(a1 + 84);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 85);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __215__RTWorkoutRouteManager_processWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_handler___block_invoke_2;
  v15[3] = &unk_2788D0370;
  objc_copyWeak(v18, &location);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v11;
  v15[4] = v12;
  v18[1] = *(a1 + 72);
  v16 = v13;
  LOBYTE(v14) = v10;
  [v2 _processWorkoutsClearClusters:v3 clearExistingDistanceMatrix:v4 buildDistanceMatrix:v5 syncClustersToHealhtKit:v6 syncClustersToWatch:v7 filteringDistanceThreshold:v9 topNWorkouts:v8 isSchedulerTriggered:v14 handler:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __215__RTWorkoutRouteManager_processWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v15 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  if (v3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 64));
      v19 = 138412802;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = v3;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@, %@, %@", &v19, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 64));
      +[RTRuntime footprint];
      v11 = v10;
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSinceDate:*(a1 + 40)];
      v19 = 138413314;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v13;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "--------->%@, %@, finished processing workouts, error, %@, footprint, %.4f MB, latency, %.4f sec<---------", &v19, 0x34u);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(v14 + 16);
LABEL_13:
    v15();
  }
}

- (void)processNewlyAddedWorkout:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "--------->%@, %@, start processing newly added workout, footprint, %.4f MB<---------", buf, 0x20u);
    }
  }

  v15 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTWorkoutRouteManager_processNewlyAddedWorkout_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  block[4] = self;
  v20 = v7;
  v22 = v8;
  v23 = a2;
  v21 = v9;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  dispatch_async(v15, block);
}

void __58__RTWorkoutRouteManager_processNewlyAddedWorkout_handler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__RTWorkoutRouteManager_processNewlyAddedWorkout_handler___block_invoke_2;
  v6[3] = &unk_2788D0370;
  objc_copyWeak(v9, &location);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v6[4] = v5;
  v9[1] = *(a1 + 64);
  v7 = *(a1 + 48);
  [v2 _processNewlyAddedWorkout:v3 handler:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __58__RTWorkoutRouteManager_processNewlyAddedWorkout_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v14 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 64));
      +[RTRuntime footprint];
      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] date];
      [v11 timeIntervalSinceDate:*(a1 + 40)];
      v15 = 138413314;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "--------->%@, %@, finished processing newly added workout, error, %@, footprint, %.4f MB, latency, %.4f sec<---------", &v15, 0x34u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(v13 + 16);
LABEL_9:
    v14();
  }
}

- (void)updateRelevanceScoresWithHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "--------->%@, %@, start update relevance scores, footprint, %.4f MB<---------", buf, 0x20u);
    }
  }

  v12 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__RTWorkoutRouteManager_updateRelevanceScoresWithHandler___block_invoke;
  v15[3] = &unk_2788C6940;
  v17 = v5;
  v18 = a2;
  v15[4] = self;
  v16 = v6;
  v13 = v6;
  v14 = v5;
  dispatch_async(v12, v15);
}

void __58__RTWorkoutRouteManager_updateRelevanceScoresWithHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__RTWorkoutRouteManager_updateRelevanceScoresWithHandler___block_invoke_2;
  v6[3] = &unk_2788D0370;
  objc_copyWeak(v9, &location);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v9[1] = *(a1 + 56);
  v7 = v5;
  [v2 _updateRelevanceScoresWithHandler:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __58__RTWorkoutRouteManager_updateRelevanceScoresWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v14 = *(*(a1 + 48) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 64));
      +[RTRuntime footprint];
      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] date];
      [v11 timeIntervalSinceDate:*(a1 + 40)];
      v15 = 138413314;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "--------->%@, %@, finished update relevance scores, error, %@, footprint, %.4f MB, latency, %.4f sec<---------", &v15, 0x34u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(v13 + 16);
LABEL_9:
    v14();
  }
}

- (void)deleteWorkout:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412546;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "--------->%@, start deleting workout, footprint, %.4f MB<---------", buf, 0x16u);
    }
  }

  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTWorkoutRouteManager_deleteWorkout_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  block[4] = self;
  v18 = v7;
  v20 = v8;
  v21 = a2;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v13, block);
}

void __47__RTWorkoutRouteManager_deleteWorkout_handler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RTWorkoutRouteManager_deleteWorkout_handler___block_invoke_2;
  v6[3] = &unk_2788D03C0;
  objc_copyWeak(v9, &location);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = v4;
  v9[1] = v5;
  v7 = *(a1 + 48);
  [v2 _deleteWorkout:v3 handler:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __47__RTWorkoutRouteManager_deleteWorkout_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v12 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      +[RTRuntime footprint];
      v8 = v7;
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceDate:*(a1 + 32)];
      v13 = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "--------->%@, finished deleting workout, error, %@, footprint, %.4f MB, latency, %.4f sec<---------", &v13, 0x2Au);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(v11 + 16);
LABEL_9:
    v12();
  }
}

- (void)pruneDistanceMatrixWithHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "--------->%@, start pruning distance matrix, footprint, %.4f MB<---------", buf, 0x16u);
    }
  }

  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__RTWorkoutRouteManager_pruneDistanceMatrixWithHandler___block_invoke;
  v13[3] = &unk_2788C6940;
  v15 = v5;
  v16 = a2;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, v13);
}

void __56__RTWorkoutRouteManager_pruneDistanceMatrixWithHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__RTWorkoutRouteManager_pruneDistanceMatrixWithHandler___block_invoke_2;
  v5[3] = &unk_2788D03C0;
  objc_copyWeak(v8, &location);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8[1] = v4;
  v6 = *(a1 + 40);
  [v2 _pruneDistanceMatrixWithHandler:v5];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __56__RTWorkoutRouteManager_pruneDistanceMatrixWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v12 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      +[RTRuntime footprint];
      v8 = v7;
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceDate:*(a1 + 32)];
      v13 = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "--------->%@, finished pruning distance matrix, error, %@, footprint, %.4f MB, latency, %.4f sec<---------", &v13, 0x2Au);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(v11 + 16);
LABEL_9:
    v12();
  }
}

- (void)displayWorkoutDistanceRecordsWithHandler:(id)a3
{
  v114[1] = *MEMORY[0x277D85DE8];
  v68 = a3;
  v64 = [MEMORY[0x277CBEAA8] date];
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __66__RTWorkoutRouteManager_displayWorkoutDistanceRecordsWithHandler___block_invoke;
  v89[3] = &unk_2788C8028;
  v91 = &v92;
  v5 = v3;
  v90 = v5;
  [v4 fetchTotalWorkoutDistancesCountWithHandler:v89];

  dsema = v5;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
    v13 = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [v13 filteredArrayUsingPredicate:v12];
    v15 = [v14 firstObject];

    [v11 submitToCoreAnalytics:v15 type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v108 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v108 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  if (v21)
  {
    v22 = v21;
    v68[2](v68, v21);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v65 = *MEMORY[0x277D01448];
    v66 = *MEMORY[0x277CCA450];
    do
    {
      context = objc_autoreleasePoolPush();
      v25 = dispatch_semaphore_create(0);

      v108 = 0;
      v109 = &v108;
      v110 = 0x3032000000;
      v111 = __Block_byref_object_copy__153;
      v112 = __Block_byref_object_dispose__153;
      v113 = 0;
      v83 = 0;
      v84 = &v83;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__153;
      v87 = __Block_byref_object_dispose__153;
      v88 = 0;
      v26 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __66__RTWorkoutRouteManager_displayWorkoutDistanceRecordsWithHandler___block_invoke_128;
      v79[3] = &unk_2788C4490;
      v81 = &v108;
      v82 = &v83;
      v27 = v25;
      v80 = v27;
      [v26 fetchWorkoutDistancesWithOffset:v23 limit:5000 maxDistanceThreshold:0 includeVisitedRecords:v79 handler:1.79769313e308];

      dsema = v27;
      v28 = [MEMORY[0x277CBEAA8] now];
      v29 = dispatch_time(0, 3600000000000);
      v30 = v24;
      if (dispatch_semaphore_wait(dsema, v29))
      {
        v31 = [MEMORY[0x277CBEAA8] now];
        [v31 timeIntervalSinceDate:v28];
        v33 = v32;
        v34 = objc_opt_new();
        v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
        v36 = [MEMORY[0x277CCACC8] callStackSymbols];
        v37 = [v36 filteredArrayUsingPredicate:v35];
        v38 = [v37 firstObject];

        [v34 submitToCoreAnalytics:v38 type:1 duration:v33];
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v39, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v40 = MEMORY[0x277CCA9B8];
        v114[0] = v66;
        *buf = @"semaphore wait timeout";
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v114 count:1];
        v42 = [v40 errorWithDomain:v65 code:15 userInfo:v41];

        v30 = v24;
        if (v42)
        {
          v43 = v42;

          v30 = v42;
        }
      }

      v70 = v30;
      v44 = v70;
      if (v70 || (v44 = v84[5]) != 0)
      {
        v68[2](v68, v44);
        v45 = 0;
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        obj = v109[5];
        v46 = [obj countByEnumeratingWithState:&v75 objects:v107 count:16];
        if (v46)
        {
          v73 = *v76;
          do
          {
            v74 = v46;
            for (i = 0; i != v74; ++i)
            {
              if (*v76 != v73)
              {
                objc_enumerationMutation(obj);
              }

              v48 = *(*(&v75 + 1) + 8 * i);
              v49 = objc_autoreleasePoolPush();
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v50 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = v23;
                  v52 = [v48 firstWorkout];
                  v53 = [v48 secondWorkout];
                  [v48 distance];
                  v55 = v54;
                  v56 = +[RTHealthKitManager stringFromRTHealthKitWorkoutActivityType:](RTHealthKitManager, "stringFromRTHealthKitWorkoutActivityType:", [v48 workoutActivityType]);
                  if ([v48 areBothWorkoutsDecimated])
                  {
                    v57 = @"YES";
                  }

                  else
                  {
                    v57 = @"NO";
                  }

                  v58 = +[RTDistanceCalculator distanceMetricToString:](RTDistanceCalculator, "distanceMetricToString:", [v48 distanceMetric]);
                  *buf = 138413570;
                  *&buf[4] = v52;
                  v97 = 2112;
                  v98 = v53;
                  v99 = 2048;
                  v100 = v55;
                  v101 = 2112;
                  v102 = v56;
                  v103 = 2112;
                  v104 = v57;
                  v105 = 2112;
                  v106 = v58;
                  _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, %.8f, %@, %@, %@", buf, 0x3Eu);

                  v23 = v51;
                }
              }

              objc_autoreleasePoolPop(v49);
            }

            v46 = [obj countByEnumeratingWithState:&v75 objects:v107 count:16];
          }

          while (v46);
        }

        v59 = v109[5];
        v109[5] = 0;

        v23 += 5000;
        v45 = 1;
      }

      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(&v108, 8);

      objc_autoreleasePoolPop(context);
      if (!v45)
      {
        v22 = v70;
        goto LABEL_43;
      }

      if (!v23)
      {
        break;
      }

      v24 = v70;
    }

    while (v23 < v93[3]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = v93[3];
        v62 = [MEMORY[0x277CBEAA8] date];
        [v62 timeIntervalSinceDate:v64];
        *buf = 134218240;
        *&buf[4] = v61;
        v97 = 2048;
        v98 = v63;
        _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "totalWorkoutDistancesCount, %lu, latency, %.4f", buf, 0x16u);
      }
    }

    v68[2](v68, 0);
    v22 = v70;
  }

LABEL_43:

  _Block_object_dispose(&v92, 8);
}

void __66__RTWorkoutRouteManager_displayWorkoutDistanceRecordsWithHandler___block_invoke_128(uint64_t a1, void *a2, void *a3)
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

- (void)_processWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 handler:(id)a11
{
  v266 = a7;
  v273 = a6;
  v270 = a5;
  v13 = a4;
  v14 = a3;
  v325 = *MEMORY[0x277D85DE8];
  v16 = a11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      v306 = v19;
      v307 = 2112;
      v308 = v20;
      v309 = 2048;
      v310 = v21;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "--------->%@, %@, before autoreleasepool, footprint, %.4f MB<---------", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = v25;
      v27 = @"NO";
      *buf = 138414594;
      v306 = v24;
      v307 = 2112;
      if (v14)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v308 = v25;
      if (v13)
      {
        *&v29 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v29 = COERCE_DOUBLE(@"NO");
      }

      v309 = 2112;
      if (v270)
      {
        *&v30 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v30 = COERCE_DOUBLE(@"NO");
      }

      v310 = v28;
      if (v273)
      {
        *&v31 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v31 = COERCE_DOUBLE(@"NO");
      }

      v311 = 2112;
      if (v266)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v312 = *&v29;
      if (a10)
      {
        v27 = @"YES";
      }

      v313 = 2112;
      v314 = *&v30;
      v315 = 2112;
      v316 = *&v31;
      v317 = 2112;
      v318 = v32;
      v319 = 2048;
      v320 = a8;
      v321 = 2048;
      v322 = a9;
      v323 = 2112;
      v324 = v27;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, clearClusters, %@, clearExistingDistanceMatrix, %@, buildDistanceMatrix, %@, syncClustersToHealhtKit, %@, syncClustersToWatch, %@, filteringDistanceThreshold, %.3f, topNWorkouts, %lu, isSchedulerTriggered, %@", buf, 0x66u);
    }
  }

  v268 = a9;
  v33 = 0x277CBE000uLL;
  v34 = [MEMORY[0x277CBEAA8] date];
  [(RTWorkoutRouteManager *)self setIsSchedulerTriggered:a10];
  context = objc_autoreleasePoolPush();
  v35 = objc_opt_new();
  [(RTWorkoutRouteManager *)self setProcessWorkoutMetrics:v35];

  v36 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v37 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v37 setObject:v36 forKeyedSubscript:@"parameter_filter_size"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v39 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v39 setObject:v38 forKeyedSubscript:@"parameter_clearClusters"];

  v40 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v41 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v41 setObject:v40 forKeyedSubscript:@"parameter_distance_threshold"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:v266];
  v43 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v43 setObject:v42 forKeyedSubscript:@"parameter_syncClustersToWatch"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:v270];
  v45 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v45 setObject:v44 forKeyedSubscript:@"parameter_buildDistanceMatrix"];

  v46 = [MEMORY[0x277CCABB0] numberWithBool:v273];
  v47 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v47 setObject:v46 forKeyedSubscript:@"parameter_syncClustersToHealhtKit"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v49 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v49 setObject:v48 forKeyedSubscript:@"parameter_clearExistingDistanceMatrix"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:a10];
  v51 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v51 setObject:v50 forKeyedSubscript:@"is_scheduler_triggered"];

  v276 = self;
  if (v14)
  {
    v52 = [MEMORY[0x277CBEAA8] date];

    v300 = 0;
    v53 = [(RTWorkoutRouteManager *)self _deleteAllClustersFromHealthKitError:&v300];
    v54 = v300;
    v55 = 0x277CCA000;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v56 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = NSStringFromSelector(a2);
        if (v53)
        {
          v60 = @"YES";
        }

        else
        {
          v60 = @"NO";
        }

        v61 = [MEMORY[0x277CBEAA8] date];
        [v61 timeIntervalSinceDate:v52];
        v63 = v62;
        +[RTRuntime footprint];
        *buf = 138413314;
        v306 = v58;
        v307 = 2112;
        v308 = v59;
        v309 = 2112;
        v310 = v60;
        self = v276;
        v311 = 2048;
        v312 = v63;
        v313 = 2048;
        v314 = v64;
        _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, clear clusters in HealthKit, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);

        v33 = 0x277CBE000;
      }
    }

    if (v16 && v54)
    {
      v65 = v54;
LABEL_55:
      v16[2](v16, v65);
      objc_autoreleasePoolPop(context);
      v78 = 0;
      goto LABEL_56;
    }

    v299 = v54;
    [(RTWorkoutRouteManager *)self _updateWorkoutDistanceRecordsWithObjectIDs:0 isVisited:0 error:&v299];
    v65 = v299;

    if (v16 && v65)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v65 = 0;
    v52 = v34;
    v55 = 0x277CCA000;
  }

  if (v13)
  {
    v66 = [*(v33 + 2728) date];

    v298 = v65;
    v67 = [(RTWorkoutRouteManager *)self _clearDistanceMatrixWithError:&v298];
    v68 = v298;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v69 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        v72 = NSStringFromSelector(a2);
        if (v67)
        {
          v73 = @"YES";
        }

        else
        {
          v73 = @"NO";
        }

        v74 = [MEMORY[0x277CBEAA8] date];
        [v74 timeIntervalSinceDate:v66];
        v76 = v75;
        +[RTRuntime footprint];
        *buf = 138413314;
        v306 = v71;
        v307 = 2112;
        v308 = v72;
        v309 = 2112;
        v310 = v73;
        self = v276;
        v311 = 2048;
        v312 = v76;
        v313 = 2048;
        v314 = v77;
        _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, clear distance matrix, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);

        v33 = 0x277CBE000;
      }
    }

    if (v16)
    {
      v65 = v68;
      v52 = v66;
      if (v68)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v66 = v52;
    v68 = v65;
  }

  v297 = v68;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetrics:&v297];
  v65 = v297;

  if (v16 && v65)
  {
    v52 = v66;
    goto LABEL_55;
  }

  v79 = objc_opt_new();
  v256 = v16;
  if (v270)
  {
    v52 = [*(v33 + 2728) date];

    +[RTRuntime footprint];
    v81 = v80;
    v296 = v65;
    v82 = [(RTWorkoutRouteManager *)self _getActivityTypeToWorkoutUUIDsMapFilteredUsingDistanceThreshold:v268 topN:&v296 error:a8];
    v83 = v296;

    if (v16 && v83)
    {
      v16[2](v16, v83);
    }

    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v263 = v82;
    v84 = [v82 allValues];
    v85 = [v84 countByEnumeratingWithState:&v292 objects:v304 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v293;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v293 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v292 + 1) + 8 * i);
          v90 = objc_autoreleasePoolPush();
          [v79 addObjectsFromArray:v89];
          objc_autoreleasePoolPop(v90);
        }

        v86 = [v84 countByEnumeratingWithState:&v292 objects:v304 count:16];
      }

      while (v86);
    }

    v291 = v83;
    v91 = [(RTWorkoutRouteManager *)self _processWorkoutsUsingActivityTypeToWorkoutUUIDsMap:v263 error:&v291];
    v259 = v291;

    +[RTRuntime footprint];
    v93 = v92;
    v16 = v256;
    v33 = 0x277CBE000uLL;
    v55 = 0x277CCA000uLL;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v94 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v95 = objc_opt_class();
        v96 = NSStringFromClass(v95);
        v97 = NSStringFromSelector(a2);
        if (v91)
        {
          v98 = @"YES";
        }

        else
        {
          v98 = @"NO";
        }

        v271 = [MEMORY[0x277CBEAA8] date];
        [v271 timeIntervalSinceDate:v52];
        *buf = 138413314;
        v306 = v96;
        v307 = 2112;
        v308 = v97;
        v309 = 2112;
        v310 = v98;
        self = v276;
        v311 = 2048;
        v312 = v99;
        v313 = 2048;
        v314 = v93;
        _os_log_impl(&dword_2304B3000, v94, OS_LOG_TYPE_INFO, "%@, %@, process workouts using activity type to workout UUIDs map, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);
      }
    }

    v100 = [MEMORY[0x277CCABB0] numberWithBool:v91];
    v101 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v101 setObject:v100 forKeyedSubscript:@"distance_matrix_is_success"];

    v102 = [MEMORY[0x277CCABB0] numberWithDouble:v93 - v81];
    v103 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v103 setObject:v102 forKeyedSubscript:@"distance_matrix_footprint_delta"];

    v104 = MEMORY[0x277CCABB0];
    v105 = [MEMORY[0x277CBEAA8] date];
    [v105 timeIntervalSinceDate:v52];
    v106 = [v104 numberWithDouble:?];
    v107 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v107 setObject:v106 forKeyedSubscript:@"distance_matrix_time_elapsed"];

    v65 = v259;
    if (v259)
    {
      v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v259, "code")];
      v109 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v109 setObject:v108 forKeyedSubscript:@"distance_matrix_errorcode"];

      v110 = [v259 domain];
      v111 = [v110 description];
      v112 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v112 setObject:v111 forKeyedSubscript:@"distance_matrix_errordomain"];

      if (v256)
      {
        v256[2](v256, v259);
      }

      objc_autoreleasePoolPop(context);
      v78 = v263;
      goto LABEL_56;
    }

    v66 = v52;
    v113 = v263;
  }

  else
  {
    v113 = 0;
  }

  v114 = 0;
  v257 = *MEMORY[0x277D01448];
  while (1)
  {
    v115 = objc_autoreleasePoolPush();
    v264 = v115;
    if (!v273)
    {
      v172 = v115;
      goto LABEL_121;
    }

    v269 = [*(v33 + 2728) date];

    +[RTRuntime footprint];
    v117 = v116;
    v118 = [(RTWorkoutRouteManager *)self workoutActivityTypeToclustersSet];
    v119 = [v118 count];

    if (v119)
    {
      if (v65)
      {
        goto LABEL_85;
      }

LABEL_118:
      v289 = 0;
      v180 = [(RTWorkoutRouteManager *)self _clusterizeWorkoutsWithError:&v289];
      v65 = v289;

      v114 = v180;
      goto LABEL_85;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v173 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
      {
        v174 = objc_opt_class();
        v175 = NSStringFromClass(v174);
        NSStringFromSelector(a2);
        v177 = v176 = v65;
        *buf = 138412546;
        v306 = v175;
        v307 = 2112;
        v308 = v177;
        _os_log_impl(&dword_2304B3000, v173, OS_LOG_TYPE_INFO, "%@, %@, No clusters in memory. Reading clusters from HealthKit", buf, 0x16u);

        v65 = v176;
      }
    }

    v290 = v65;
    v178 = [(RTWorkoutRouteManager *)self _readClustersFromHealthKitWithError:&v290];
    v179 = v290;

    [(RTWorkoutRouteManager *)self setWorkoutActivityTypeToclustersSet:v178];
    v65 = v179;
    if (!v179)
    {
      goto LABEL_118;
    }

LABEL_85:
    v120 = [v114 objectIDs];
    v121 = [v120 count];

    if (!v121)
    {
      break;
    }

    v260 = v65;
    v122 = objc_opt_new();
    v285 = 0u;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v123 = [v114 clusters];
    v124 = [v123 countByEnumeratingWithState:&v285 objects:v303 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = *v286;
      do
      {
        for (j = 0; j != v125; ++j)
        {
          if (*v286 != v126)
          {
            objc_enumerationMutation(v123);
          }

          v128 = *(*(&v285 + 1) + 8 * j);
          v129 = objc_autoreleasePoolPush();
          [v122 addObjectsFromArray:v128];
          objc_autoreleasePoolPop(v129);
        }

        v125 = [v123 countByEnumeratingWithState:&v285 objects:v303 count:16];
      }

      while (v125);
    }

    self = v276;
    v55 = 0x277CCA000uLL;
    if ([v79 count])
    {
      v130 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v122, "count") * 100.0 / objc_msgSend(v79, "count")}];
      v131 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
      [v131 setObject:v130 forKeyedSubscript:@"clustering_percentage_workouts_clustered"];
    }

    +[RTRuntime footprint];
    v133 = v132;
    v134 = v260;
    v135 = [MEMORY[0x277CCABB0] numberWithInt:v260 == 0];
    v136 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
    [v136 setObject:v135 forKeyedSubscript:@"clustering_is_success"];

    v137 = [MEMORY[0x277CCABB0] numberWithDouble:v133 - v117];
    v138 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
    [v138 setObject:v137 forKeyedSubscript:@"clustering_footprint_delta"];

    v139 = MEMORY[0x277CCABB0];
    v33 = 0x277CBE000uLL;
    v140 = [MEMORY[0x277CBEAA8] date];
    [v140 timeIntervalSinceDate:v269];
    v141 = [v139 numberWithDouble:?];
    v142 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
    [v142 setObject:v141 forKeyedSubscript:@"clustering_time_elapsed"];

    if (v260)
    {
      v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v260, "code")];
      v144 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
      [v144 setObject:v143 forKeyedSubscript:@"clustering_errorcode"];

      v145 = [v260 domain];
      v146 = [v145 description];
      v147 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
      [v147 setObject:v146 forKeyedSubscript:@"clustering_errordomain"];

      v148 = [v260 domain];
      if (![v148 isEqualToString:v257])
      {

LABEL_169:
        if (v256)
        {
          v256[2](v256, v134);
        }

        objc_autoreleasePoolPop(v264);

        v244 = 0;
        v255 = v113;
        v52 = v269;
        v233 = v134;
        v16 = v256;
        v78 = v255;
LABEL_172:

        objc_autoreleasePoolPop(context);
        v65 = v233;
        goto LABEL_56;
      }

      v149 = [v260 code];

      if (v149 != 15)
      {
        goto LABEL_169;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v150 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
      {
        v151 = objc_opt_class();
        v152 = NSStringFromClass(v151);
        v153 = NSStringFromSelector(a2);
        v154 = [MEMORY[0x277CBEAA8] date];
        [v154 timeIntervalSinceDate:v269];
        *buf = 138413058;
        v306 = v152;
        v307 = 2112;
        v308 = v153;
        v309 = 2048;
        v310 = v155;
        v311 = 2048;
        v312 = v133;
        _os_log_impl(&dword_2304B3000, v150, OS_LOG_TYPE_INFO, "%@, %@, clustering workouts status, done, latency, %.4f, footprint, %.4f MB", buf, 0x2Au);

        v134 = v260;
      }
    }

    v66 = [MEMORY[0x277CBEAA8] date];

    v156 = [v114 clusters];
    v284 = v134;
    v157 = v134;
    v158 = [(RTWorkoutRouteManager *)v276 _syncClustersToHealthKit:v156 error:&v284];
    v159 = v284;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v160 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
      {
        v161 = objc_opt_class();
        v162 = NSStringFromClass(v161);
        v163 = NSStringFromSelector(a2);
        if (v158)
        {
          v164 = @"YES";
        }

        else
        {
          v164 = @"NO";
        }

        v165 = [MEMORY[0x277CBEAA8] date];
        [v165 timeIntervalSinceDate:v66];
        v167 = v166;
        +[RTRuntime footprint];
        *buf = 138413314;
        v306 = v162;
        v307 = 2112;
        v308 = v163;
        v309 = 2112;
        v310 = v164;
        self = v276;
        v311 = 2048;
        v312 = v167;
        v313 = 2048;
        v314 = v168;
        _os_log_impl(&dword_2304B3000, v160, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to HealthKit, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);

        v33 = 0x277CBE000uLL;
      }
    }

    if (v159)
    {
      v134 = v159;
      v269 = v66;
      goto LABEL_169;
    }

    v169 = [v114 objectIDs];
    v170 = [v169 count];

    if (v170)
    {
      v171 = [v114 objectIDs];
      v283 = 0;
      [(RTWorkoutRouteManager *)self _updateWorkoutDistanceRecordsWithObjectIDs:v171 isVisited:1 error:&v283];
      v65 = v283;

      v79 = 0;
    }

    else
    {
      v79 = 0;
      v65 = 0;
    }

    v172 = v264;
LABEL_121:

    if (v266)
    {
      v181 = [*(v33 + 2728) date];

      +[RTRuntime footprint];
      v183 = v182;
      v282 = v65;
      v184 = [(RTWorkoutRouteManager *)self _syncClustersToWatchWithLimit:100 error:&v282];
      v185 = v282;

      +[RTRuntime footprint];
      v187 = v186;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v188 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
        {
          v189 = objc_opt_class();
          v190 = NSStringFromClass(v189);
          v191 = NSStringFromSelector(a2);
          if (v184)
          {
            *&v192 = COERCE_DOUBLE(@"YES");
          }

          else
          {
            *&v192 = COERCE_DOUBLE(@"NO");
          }

          v193 = [*(v33 + 2728) date];
          [v193 timeIntervalSinceDate:v181];
          *buf = 138413570;
          v306 = v190;
          v307 = 2112;
          v308 = v191;
          v309 = 2048;
          v310 = 100;
          v311 = 2112;
          v312 = *&v192;
          self = v276;
          v313 = 2048;
          v314 = v194;
          v315 = 2048;
          v316 = v187;
          _os_log_impl(&dword_2304B3000, v188, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to watch with default limit, %lu, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x3Eu);

          v33 = 0x277CBE000uLL;
        }
      }

      v195 = [*(v55 + 2992) numberWithUnsignedInteger:100];
      v196 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v196 setObject:v195 forKeyedSubscript:@"sync_to_watch_count_clusters"];

      v197 = [*(v55 + 2992) numberWithBool:v184];
      v198 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v198 setObject:v197 forKeyedSubscript:@"sync_to_watch_is_success"];

      v199 = [*(v55 + 2992) numberWithDouble:v187 - v183];
      v200 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v200 setObject:v199 forKeyedSubscript:@"sync_to_watch_footprint_delta"];

      v201 = *(v55 + 2992);
      v202 = [*(v33 + 2728) date];
      [v202 timeIntervalSinceDate:v181];
      v203 = [v201 numberWithDouble:?];
      v204 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v204 setObject:v203 forKeyedSubscript:@"sync_to_watch_time_elapsed"];

      v269 = v181;
      if (v185)
      {
        v245 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v185, "code")];
        v246 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v246 setObject:v245 forKeyedSubscript:@"sync_to_watch_errorcode"];

        v247 = [v185 domain];
        v248 = [v247 description];
        v249 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v249 setObject:v248 forKeyedSubscript:@"sync_to_watch_errordomain"];

        v113 = 0;
        v134 = v185;
        goto LABEL_169;
      }

      v65 = 0;
      v66 = v181;
      v172 = v264;
    }

    else
    {
      v269 = v66;
    }

    objc_autoreleasePoolPop(v172);
    v205 = [v114 objectIDs];
    v206 = [v205 count];

    v79 = 0;
    v113 = 0;
    v207 = 0;
    v208 = 0;
    if (!v206)
    {
      goto LABEL_135;
    }
  }

  objc_autoreleasePoolPop(v264);
  v207 = v113;
  v208 = v79;
LABEL_135:
  v265 = v207;
  v267 = v208;
  v261 = v65;

  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v209 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v210 = [v209 allKeys];

  v211 = [v210 countByEnumeratingWithState:&v278 objects:v302 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = MEMORY[0x277D86220];
    v214 = RTLogFacilityWorkout;
    v215 = *v279;
    do
    {
      v216 = 0;
      v274 = v212;
      do
      {
        if (*v279 != v215)
        {
          objc_enumerationMutation(v210);
        }

        v217 = *(*(&v278 + 1) + 8 * v216);
        v218 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
        {
          v219 = _rt_log_facility_get_os_log(v214);
          if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
          {
            v220 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
            [v220 objectForKeyedSubscript:v217];
            v221 = v215;
            v222 = v213;
            v223 = v210;
            v225 = v224 = v214;
            *buf = 138412546;
            v306 = v217;
            v307 = 2112;
            v308 = v225;
            _os_log_impl(&dword_2304B3000, v219, OS_LOG_TYPE_INFO, "key, %@, value, %@", buf, 0x16u);

            v214 = v224;
            v210 = v223;
            v213 = v222;
            v215 = v221;
            v212 = v274;

            self = v276;
          }
        }

        objc_autoreleasePoolPop(v218);
        ++v216;
      }

      while (v212 != v216);
      v212 = [v210 countByEnumeratingWithState:&v278 objects:v302 count:16];
    }

    while (v212);
  }

  v226 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v227 = self;
  v228 = [v226 count];

  if (v228)
  {
    v52 = [MEMORY[0x277CBEAA8] date];

    v229 = [(RTWorkoutRouteManager *)v227 workoutMetricsManager];
    v230 = [(RTWorkoutRouteManager *)v227 processWorkoutMetrics];
    v301 = v230;
    v231 = [MEMORY[0x277CBEA60] arrayWithObjects:&v301 count:1];
    v277 = v261;
    v232 = [v229 submitMetricsForEvent:3 data:v231 error:&v277];
    v233 = v277;

    v78 = v265;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v234 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v234, OS_LOG_TYPE_INFO))
      {
        v235 = objc_opt_class();
        v236 = NSStringFromClass(v235);
        v237 = NSStringFromSelector(a2);
        v272 = [RTWorkoutMetricsManager stringFromWorkoutMetricsEvent:3];
        v275 = [(RTWorkoutRouteManager *)v276 processWorkoutMetrics];
        *&v238 = COERCE_DOUBLE([v275 count]);
        if (v232)
        {
          *&v239 = COERCE_DOUBLE(@"YES");
        }

        else
        {
          *&v239 = COERCE_DOUBLE(@"NO");
        }

        v78 = v265;
        v240 = [MEMORY[0x277CBEAA8] date];
        [v240 timeIntervalSinceDate:v52];
        v242 = v241;
        +[RTRuntime footprint];
        *buf = 138413826;
        v306 = v236;
        v307 = 2112;
        v308 = v237;
        v309 = 2112;
        v310 = v272;
        v311 = 2048;
        v312 = *&v238;
        v313 = 2112;
        v314 = *&v239;
        v315 = 2048;
        v316 = v242;
        v317 = 2048;
        v318 = v243;
        _os_log_impl(&dword_2304B3000, v234, OS_LOG_TYPE_INFO, "%@, %@, submitted metrics for event, %@, metrics count, %lu, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x48u);
      }
    }

    [(RTWorkoutRouteManager *)v276 setProcessWorkoutMetrics:0];
    if (v233)
    {
      v16 = v256;
      if (v256)
      {
        v256[2](v256, v233);
      }

      v244 = v267;
      goto LABEL_172;
    }

    v65 = 0;
    v16 = v256;
  }

  else
  {
    v52 = v269;
    v16 = v256;
    v65 = v261;
    v78 = v265;
  }

  objc_autoreleasePoolPop(context);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v250 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
    {
      v251 = objc_opt_class();
      v252 = NSStringFromClass(v251);
      v253 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      v306 = v252;
      v307 = 2112;
      v308 = v253;
      v309 = 2048;
      v310 = v254;
      _os_log_impl(&dword_2304B3000, v250, OS_LOG_TYPE_INFO, "--------->%@, %@, after autoreleasepool, footprint, %.4f MB<---------", buf, 0x20u);
    }

    v78 = v265;
  }

  if (v16)
  {
    v16[2](v16, v65);
  }

LABEL_56:
}

- (BOOL)_processWorkoutsUsingActivityTypeToWorkoutUUIDsMap:(id)a3 error:(id *)a4
{
  v174 = *MEMORY[0x277D85DE8];
  v131 = a3;
  if (v131)
  {
    v156 = 0;
    v157 = &v156;
    v158 = 0x3032000000;
    v159 = __Block_byref_object_copy__153;
    v160 = __Block_byref_object_dispose__153;
    v161 = 0;
    v133 = [MEMORY[0x277CBEAA8] date];
    v4 = objc_autoreleasePoolPush();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v163 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __82__RTWorkoutRouteManager__processWorkoutsUsingActivityTypeToWorkoutUUIDsMap_error___block_invoke;
    v152[3] = &unk_2788C4528;
    v154 = buf;
    v155 = &v156;
    v7 = v5;
    v153 = v7;
    [v6 fetchTotalWorkoutDistancesCountWithHandler:v152];

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [v16 filteredArrayUsingPredicate:v15];
      v18 = [v17 firstObject];

      [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *v173 = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v173, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v172 = *MEMORY[0x277CCA450];
      *v173 = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:&v172 count:1];
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

    v126 = v22;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*&buf[8] + 24)];
    v26 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v26 setObject:v25 forKeyedSubscript:@"distance_matrix_initial_size"];

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v4);
    if (a4 && v126)
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v106 = objc_opt_class();
        v107 = NSStringFromClass(v106);
        v108 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v107;
        *&buf[12] = 2112;
        *&buf[14] = v108;
        *&buf[22] = 2112;
        v163 = v126;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v28 = v126;
      v29 = v126;
      goto LABEL_17;
    }

    if (a4 && v157[5])
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v109 = objc_opt_class();
        v110 = NSStringFromClass(v109);
        v111 = NSStringFromSelector(a2);
        v112 = v157[5];
        *buf = 138412802;
        *&buf[4] = v110;
        *&buf[12] = 2112;
        *&buf[14] = v111;
        *&buf[22] = 2112;
        v163 = v112;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v30 = v157[5];
      goto LABEL_70;
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v32 = [v131 allKeys];
    v33 = [v32 countByEnumeratingWithState:&v148 objects:v171 count:16];
    obj = v32;
    if (!v33)
    {
      v130 = 1;
LABEL_65:

      if (!a4 || !v157[5])
      {
        v136 = objc_autoreleasePoolPush();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v163 = 0;
        v81 = dispatch_semaphore_create(0);
        v82 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __82__RTWorkoutRouteManager__processWorkoutsUsingActivityTypeToWorkoutUUIDsMap_error___block_invoke_149;
        v139[3] = &unk_2788C4528;
        v141 = buf;
        v142 = &v156;
        v83 = v81;
        v140 = v83;
        [v82 fetchTotalWorkoutDistancesCountWithHandler:v139];

        v84 = v83;
        v85 = [MEMORY[0x277CBEAA8] now];
        v86 = dispatch_time(0, 3600000000000);
        v87 = v126;
        if (dispatch_semaphore_wait(v84, v86))
        {
          v88 = [MEMORY[0x277CBEAA8] now];
          [v88 timeIntervalSinceDate:v85];
          v90 = v89;
          v91 = objc_opt_new();
          v92 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
          v93 = [MEMORY[0x277CCACC8] callStackSymbols];
          v94 = [v93 filteredArrayUsingPredicate:v92];
          v95 = [v94 firstObject];

          [v91 submitToCoreAnalytics:v95 type:1 duration:v90];
          v96 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
          {
            *v173 = 0;
            _os_log_fault_impl(&dword_2304B3000, v96, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v173, 2u);
          }

          v97 = MEMORY[0x277CCA9B8];
          v172 = *MEMORY[0x277CCA450];
          *v173 = @"semaphore wait timeout";
          v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:&v172 count:1];
          v99 = [v97 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v98];

          v87 = v126;
          if (v99)
          {
            v100 = v99;

            v87 = v99;
          }
        }

        v29 = v87;
        v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*&buf[8] + 24)];
        v102 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v102 setObject:v101 forKeyedSubscript:@"distance_matrix_final_size"];

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(v136);
        if (!a4 || !v29)
        {
          if (!a4 || !v157[5])
          {
            goto LABEL_72;
          }

          v105 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v120 = objc_opt_class();
            v121 = NSStringFromClass(v120);
            v122 = NSStringFromSelector(a2);
            v123 = v157[5];
            *buf = 138412802;
            *&buf[4] = v121;
            *&buf[12] = 2112;
            *&buf[14] = v122;
            *&buf[22] = 2112;
            v163 = v123;
            _os_log_error_impl(&dword_2304B3000, v105, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v30 = v157[5];
LABEL_71:
          v130 = 0;
          *a4 = v30;
LABEL_72:

          _Block_object_dispose(&v156, 8);
          goto LABEL_73;
        }

        v103 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v117 = objc_opt_class();
          v118 = NSStringFromClass(v117);
          v119 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v118;
          *&buf[12] = 2112;
          *&buf[14] = v119;
          *&buf[22] = 2112;
          v163 = v29;
          _os_log_error_impl(&dword_2304B3000, v103, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v104 = v29;
LABEL_17:
        v30 = v29;
        goto LABEL_71;
      }

      v79 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v113 = objc_opt_class();
        v114 = NSStringFromClass(v113);
        v115 = NSStringFromSelector(a2);
        v116 = v157[5];
        *buf = 138412802;
        *&buf[4] = v114;
        *&buf[12] = 2112;
        *&buf[14] = v115;
        *&buf[22] = 2112;
        v163 = v116;
        _os_log_error_impl(&dword_2304B3000, v79, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v30 = v157[5];
LABEL_70:
      v29 = v126;
      goto LABEL_71;
    }

    v129 = *v149;
    v124 = @"number_of_workouts_wheel_chair_run_pace";
    v130 = 1;
LABEL_25:
    v134 = 0;
    v34 = v133;
    v128 = v33;
    while (1)
    {
      if (*v149 != v129)
      {
        objc_enumerationMutation(obj);
      }

      v135 = *(*(&v148 + 1) + 8 * v134);
      context = objc_autoreleasePoolPush();
      v133 = [MEMORY[0x277CBEAA8] date];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = NSStringFromSelector(a2);
          v39 = [v131 objectForKeyedSubscript:v135];
          v40 = [v39 count];
          +[RTRuntime footprint];
          *buf = 138413314;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          *&buf[22] = 2112;
          v163 = v135;
          v164 = 2048;
          v165 = v40;
          v166 = 2048;
          v167 = v41;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, %@, activity type, %@, workout UUIDs count, %lu, footprint, %.4f MB", buf, 0x34u);
        }
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v42 = v131;
      v43 = [v42 countByEnumeratingWithState:&v144 objects:v170 count:16];
      if (v43)
      {
        v44 = 0;
        v45 = *v145;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v145 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v144 + 1) + 8 * i);
            v48 = objc_autoreleasePoolPush();
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v50 = objc_opt_class();
                v51 = NSStringFromClass(v50);
                v52 = NSStringFromSelector(a2);
                ++v44;
                *buf = 138413058;
                *&buf[4] = v51;
                *&buf[12] = 2112;
                *&buf[14] = v52;
                *&buf[22] = 2048;
                v163 = v44;
                v164 = 2112;
                v165 = v47;
                _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, %lu, workout UUID: %@", buf, 0x2Au);
              }
            }

            objc_autoreleasePoolPop(v48);
            ++v44;
          }

          v43 = [v42 countByEnumeratingWithState:&v144 objects:v170 count:16];
        }

        while (v43);
      }

      v53 = [v42 objectForKeyedSubscript:v135];
      v54 = [(RTWorkoutRouteManager *)self distanceMetric];
      v55 = (v157 + 5);
      v143 = v157[5];
      v56 = [(RTWorkoutRouteManager *)self _computeAndSaveDistanceMatrixForWorkoutUUIDs:v53 distanceMetric:v54 error:&v143];
      objc_storeStrong(v55, v143);

      v57 = v157[5];
      if (v57)
      {
        goto LABEL_59;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = NSStringFromSelector(a2);
          if (v56)
          {
            v62 = @"YES";
          }

          else
          {
            v62 = @"NO";
          }

          v63 = [MEMORY[0x277CBEAA8] date];
          [v63 timeIntervalSinceDate:v133];
          v65 = v64;
          +[RTRuntime footprint];
          *buf = 138413570;
          *&buf[4] = v60;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          *&buf[22] = 2112;
          v163 = v135;
          v164 = 2112;
          v165 = v62;
          v166 = 2048;
          v167 = v65;
          v168 = 2048;
          v169 = v66;
          _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%@, %@, updating distance matrix for activity type, %@, status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x3Eu);
        }
      }

      v67 = [RTHealthKitManager stringFromWorkoutActivityType:37, v124];
      v68 = [v135 isEqualToString:v67];

      if (v68)
      {
        break;
      }

      v73 = [RTHealthKitManager stringFromWorkoutActivityType:13];
      v74 = [v135 isEqualToString:v73];

      if (v74)
      {
        v75 = MEMORY[0x277CCABB0];
        v70 = [v42 objectForKeyedSubscript:v135];
        v71 = [v75 numberWithUnsignedInteger:{objc_msgSend(v70, "count")}];
        v72 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v72 setObject:v71 forKeyedSubscript:@"number_of_workouts_cycling"];
        goto LABEL_57;
      }

      v76 = [RTHealthKitManager stringFromWorkoutActivityType:71];
      v77 = [v135 isEqualToString:v76];

      if (v77)
      {
        v78 = MEMORY[0x277CCABB0];
        v70 = [v42 objectForKeyedSubscript:v135];
        v71 = [v78 numberWithUnsignedInteger:{objc_msgSend(v70, "count")}];
        v72 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v72 setObject:v71 forKeyedSubscript:v124];
        goto LABEL_57;
      }

LABEL_58:
      [v42 removeObjectForKey:v135];
      v130 &= v56;
LABEL_59:
      objc_autoreleasePoolPop(context);
      if (v57)
      {
        goto LABEL_65;
      }

      v34 = v133;
      if (++v134 == v128)
      {
        v33 = [obj countByEnumeratingWithState:&v148 objects:v171 count:16];
        if (!v33)
        {
          goto LABEL_65;
        }

        goto LABEL_25;
      }
    }

    v69 = MEMORY[0x277CCABB0];
    v70 = [v42 objectForKeyedSubscript:v135];
    v71 = [v69 numberWithUnsignedInteger:{objc_msgSend(v70, "count")}];
    v72 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v72 setObject:v71 forKeyedSubscript:@"number_of_workouts_running"];
LABEL_57:

    goto LABEL_58;
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: activityTypeToWorkoutUUIDsMap", buf, 2u);
  }

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"activityTypeToWorkoutUUIDsMap");
    *a4 = v130 = 0;
  }

  else
  {
    v130 = 0;
  }

LABEL_73:

  return v130 & 1;
}

void __82__RTWorkoutRouteManager__processWorkoutsUsingActivityTypeToWorkoutUUIDsMap_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __82__RTWorkoutRouteManager__processWorkoutsUsingActivityTypeToWorkoutUUIDsMap_error___block_invoke_149(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_processNewlyAddedWorkout:(id)a3 handler:(id)a4
{
  v521[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    aSelector = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v10;
        v507 = 2112;
        v508 = v11;
        v509 = 2112;
        v510 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, newly added workout uuid, %@", buf, 0x20u);
      }
    }

    v473 = 0;
    v474 = &v473;
    v475 = 0x3032000000;
    v476 = __Block_byref_object_copy__153;
    v477 = __Block_byref_object_dispose__153;
    v478 = 0;
    context = objc_autoreleasePoolPush();
    v420 = objc_opt_new();
    v419 = [MEMORY[0x277CBEAA8] date];
    +[RTRuntime footprint];
    v13 = v12;
    v421 = [MEMORY[0x277CBEAA8] date];
    v520 = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v520 count:1];
    v15 = (v474 + 5);
    obj = v474[5];
    v422 = [(RTWorkoutRouteManager *)self _getRemoteWorkoutClustersForWorkoutUUIDs:v14 error:&obj];
    objc_storeStrong(v15, obj);

    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

      goto LABEL_41;
    }

    if ([v422 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(aSelector);
          v21 = [v422 count];
          *buf = 138413058;
          *&buf[4] = v19;
          v507 = 2112;
          v508 = v20;
          v509 = 2112;
          v510 = v6;
          v511 = 2048;
          v512 = v21;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, existing cluster exists for newly added workout uuid, %@, count, %lu, further processing, skipped", buf, 0x2Au);
        }
      }

      if (v7)
      {
        (v7[2])(v7, v474[5]);
      }

      goto LABEL_42;
    }

    v466 = 0;
    v467 = &v466;
    v468 = 0x3032000000;
    v469 = __Block_byref_object_copy__153;
    v470 = __Block_byref_object_dispose__153;
    v471 = 0;
    v22 = dispatch_semaphore_create(0);
    v23 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
    v462[0] = MEMORY[0x277D85DD0];
    v462[1] = 3221225472;
    v462[2] = __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke;
    v462[3] = &unk_2788C4490;
    v464 = &v466;
    v465 = &v473;
    v24 = v22;
    v463 = v24;
    [v23 fetchWorkoutDistancesWithWorkout:v6 handler:v462];

    dsema = v24;
    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v26))
    {
      v27 = [MEMORY[0x277CBEAA8] now];
      [v27 timeIntervalSinceDate:v25];
      v29 = v28;
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v32 = [MEMORY[0x277CCACC8] callStackSymbols];
      v33 = [v32 filteredArrayUsingPredicate:v31];
      v34 = [v33 firstObject];

      [v30 submitToCoreAnalytics:v34 type:1 duration:v29];
      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v36 = MEMORY[0x277CCA9B8];
      v488 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v488 count:1];
      v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

      if (v38)
      {
        v39 = v38;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = v38;
    if (v40)
    {
      v41 = v40;
      if (v7)
      {
        (v7[2])(v7, v40);
      }

      goto LABEL_40;
    }

    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

LABEL_39:
      v41 = 0;
LABEL_40:

      _Block_object_dispose(&v466, 8);
LABEL_41:

LABEL_42:
      objc_autoreleasePoolPop(context);
      _Block_object_dispose(&v473, 8);

      goto LABEL_43;
    }

    if ([v467[5] count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = NSStringFromSelector(aSelector);
          v46 = [v467[5] count];
          *buf = 138413058;
          *&buf[4] = v44;
          v507 = 2112;
          v508 = v45;
          v509 = 2112;
          v510 = v6;
          v511 = 2048;
          v512 = v46;
          _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, %@, distance matrix records exists for newly added workout uuid, %@, count, %lu, further processing, skipped", buf, 0x2Au);
        }
      }

      v47 = v467[5];
      v467[5] = 0;

      if (v7)
      {
        (v7[2])(v7, v474[5]);
      }

      goto LABEL_39;
    }

    v48 = [(RTWorkoutRouteManager *)self healthKitManager];
    v519 = v6;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v519 count:1];
    v50 = (v474 + 5);
    v461 = v474[5];
    v51 = [v48 getWorkoutsWithUUIDs:v49 error:&v461];
    objc_storeStrong(v50, v461);

    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

LABEL_54:
      v41 = 0;
LABEL_55:

      goto LABEL_40;
    }

    if ([v51 count] != 1)
    {
      v56 = MEMORY[0x277CCA9B8];
      v517 = *MEMORY[0x277CCA450];
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"newlyAddedWorkoutUUID cannot be found in healthKit, %lu", objc_msgSend(v51, "count")];
      v518 = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v518 forKeys:&v517 count:1];
      v59 = [v56 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v58];
      v60 = v474[5];
      v474[5] = v59;

      if (v7)
      {
        (v7[2])(v7, v474[5]);
      }

      goto LABEL_54;
    }

    v415 = [v51 firstObject];

    v52 = [(RTWorkoutRouteManager *)self distanceMetric];
    v53 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v415];
    v54 = [v415 workoutActivityType];
    v55 = (v474 + 5);
    v460 = v474[5];
    v409 = [(RTWorkoutRouteManager *)self _getConstantValueForDistanceThresholdUsingDistanceMetric:v52 isDecimated:v53 workoutActivityType:v54 error:&v460];
    objc_storeStrong(v55, v460);
    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

      v413 = 0;
      v41 = 0;
      goto LABEL_189;
    }

    v61 = [v415 metadata];
    v404 = [v61 valueForKey:*MEMORY[0x277CCE0B0]];

    if (v404)
    {
      v408 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v404];
    }

    else
    {
      v408 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v62 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = NSStringFromSelector(aSelector);
        v66 = [MEMORY[0x277CBEAA8] date];
        [v66 timeIntervalSinceDate:v421];
        v68 = v67;
        +[RTRuntime footprint];
        *buf = 138413570;
        *&buf[4] = v64;
        v507 = 2112;
        v508 = v65;
        v509 = 2112;
        v510 = v6;
        v511 = 2112;
        v512 = v408;
        v513 = 2048;
        v514 = v68;
        v515 = 2048;
        v516 = v69;
        _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, %@, workout uuid, %@, reference workout uuid, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
      }
    }

    v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v408)
    {
      if (v70)
      {
        v71 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          v74 = NSStringFromSelector(aSelector);
          *buf = 138413058;
          *&buf[4] = v73;
          v507 = 2112;
          v508 = v74;
          v509 = 2112;
          v510 = v6;
          v511 = 2112;
          v512 = v408;
          _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, case 1/2, matching workout uuid, %@, with its reference workout uuid, %@,", buf, 0x2Au);
        }
      }

      v75 = [(RTWorkoutRouteManager *)self healthKitManager];
      v505 = v408;
      v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v505 count:1];
      v77 = (v474 + 5);
      v459 = v474[5];
      v413 = [v75 getWorkoutsWithUUIDs:v76 error:&v459];
      objc_storeStrong(v77, v459);

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

        v41 = 0;
        goto LABEL_188;
      }

      v410 = [v413 firstObject];

      v104 = [v410 workoutActivityType];
      if (v104 != [v415 workoutActivityType])
      {
        v109 = MEMORY[0x277CCA9B8];
        v503 = *MEMORY[0x277CCA450];
        v110 = MEMORY[0x277CCACA8];
        v111 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v410 workoutActivityType]);
        v112 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v415 workoutActivityType]);
        v113 = [v110 stringWithFormat:@"mismatched workout activity types, refrence workout UUID, %@, reference workout activity type, %@, refrence workout UUID, %@, newly added workout activity type, %@, ", v408, v111, v6, v112];
        v504 = v113;
        v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v504 forKeys:&v503 count:1];
        v115 = [v109 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v114];
        v116 = v474[5];
        v474[5] = v115;

        if (v7)
        {
          (v7[2])(v7, v474[5]);
        }

        v41 = 0;
        goto LABEL_151;
      }

      v502 = v408;
      v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v502 count:1];
      v106 = (v474 + 5);
      v458 = v474[5];
      v107 = [(RTWorkoutRouteManager *)self _getRemoteWorkoutClustersForWorkoutUUIDs:v105 error:&v458];
      objc_storeStrong(v106, v458);

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

LABEL_149:
        v41 = 0;
LABEL_150:

LABEL_151:
        v413 = 0;
LABEL_188:

LABEL_189:
        v51 = v413;
        goto LABEL_55;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
        {
          v142 = objc_opt_class();
          v143 = NSStringFromClass(v142);
          v144 = NSStringFromSelector(aSelector);
          v145 = [v107 count];
          *buf = 138412802;
          *&buf[4] = v143;
          v507 = 2112;
          v508 = v144;
          v509 = 2048;
          v510 = v145;
          _os_log_impl(&dword_2304B3000, v141, OS_LOG_TYPE_INFO, "%@, %@, reference clusters count, %lu", buf, 0x20u);
        }
      }

      if ([v107 count] != 1)
      {
        v158 = MEMORY[0x277CCA9B8];
        v500 = *MEMORY[0x277CCA450];
        v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"reference cluster count is invalid, %lu, should be 1", objc_msgSend(v107, "count")];
        v501 = v159;
        v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v501 forKeys:&v500 count:1];
        v161 = [v158 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v160];
        v162 = v474[5];
        v474[5] = v161;

        if (v7)
        {
          (v7[2])(v7, v474[5]);
        }

        goto LABEL_149;
      }

      v146 = MEMORY[0x277CBEC38];
      [v420 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"does_reference_route_exist"];
      v147 = [v107 firstObject];
      v148 = [v147 bestWorkoutUUID];
      v149 = [v148 isEqual:v408];

      v150 = MEMORY[0x277CBEC28];
      if (v149)
      {
        v151 = v146;
      }

      else
      {
        v151 = MEMORY[0x277CBEC28];
      }

      [v420 setObject:v151 forKeyedSubscript:@"is_reference_route_best_route"];
      v152 = [v107 firstObject];
      v153 = [v152 lastWorkoutUUID];
      v154 = [v153 isEqual:v408];

      if (v154)
      {
        v155 = v146;
      }

      else
      {
        v155 = v150;
      }

      [v420 setObject:v155 forKeyedSubscript:@"is_reference_route_last_route"];
      v156 = [v107 firstObject];
      v157 = (v474 + 5);
      v457 = v474[5];
      v414 = [(RTWorkoutRouteManager *)self _getWorkoutUUIDsForCluster:v156 error:&v457];
      objc_storeStrong(v157, v457);

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

LABEL_171:
        v41 = 0;
LABEL_172:

        goto LABEL_150;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v175 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          v176 = objc_opt_class();
          v177 = NSStringFromClass(v176);
          v178 = NSStringFromSelector(aSelector);
          v179 = [v414 count];
          *buf = 138412802;
          *&buf[4] = v177;
          v507 = 2112;
          v508 = v178;
          v509 = 2048;
          v510 = v179;
          _os_log_impl(&dword_2304B3000, v175, OS_LOG_TYPE_INFO, "%@, %@, reference cluster workout UUIDs count, %lu", buf, 0x20u);
        }
      }

      if ([v414 count] <= 1)
      {
        v180 = MEMORY[0x277CCA9B8];
        v498 = *MEMORY[0x277CCA450];
        v181 = MEMORY[0x277CCACA8];
        v182 = [v107 firstObject];
        v183 = [v182 clusterUUID];
        v184 = [v181 stringWithFormat:@"reference clusters with cluster uuid, %@, has %lu reference workout uuid, less than threshold, %lu", v183, objc_msgSend(v414, "count"), 2];
        v499 = v184;
        v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v499 forKeys:&v498 count:1];
        v186 = [v180 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v185];
        v187 = v474[5];
        v474[5] = v186;

        if (v7)
        {
          (v7[2])(v7, v474[5]);
        }

        goto LABEL_171;
      }

      v188 = objc_opt_new();
      [v188 addObjectsFromArray:v414];
      v189 = [v415 UUID];
      [v188 addObject:v189];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v190 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
        {
          v191 = objc_opt_class();
          v192 = NSStringFromClass(v191);
          v193 = NSStringFromSelector(aSelector);
          v194 = [v188 count];
          *buf = 138412802;
          *&buf[4] = v192;
          v507 = 2112;
          v508 = v193;
          v509 = 2048;
          v510 = v194;
          _os_log_impl(&dword_2304B3000, v190, OS_LOG_TYPE_INFO, "%@, %@, workout UUIDs for processing count, %lu", buf, 0x20u);
        }
      }

      v195 = (v474 + 5);
      v456 = v474[5];
      v406 = [(RTWorkoutRouteManager *)self _sortWorkoutUUIDsByDistance:v188 error:&v456];
      objc_storeStrong(v195, v456);
      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

        goto LABEL_266;
      }

      v200 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v415 workoutActivityType]);
      v496 = v200;
      v497 = v406;
      v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v497 forKeys:&v496 count:1];
      v202 = [v201 mutableCopy];
      v203 = (v474 + 5);
      v455 = v474[5];
      [(RTWorkoutRouteManager *)self _processWorkoutsUsingActivityTypeToWorkoutUUIDsMap:v202 error:&v455];
      objc_storeStrong(v203, v455);

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

LABEL_265:
        v188 = 0;
LABEL_266:
        v41 = 0;
LABEL_267:

        v107 = 0;
        goto LABEL_172;
      }

      v231 = [MEMORY[0x277CBEB58] setWithObject:v408];
      v232 = MEMORY[0x277CBEB58];
      v233 = [v415 UUID];
      v234 = [v232 setWithObject:v233];
      v235 = +[RTHealthKitManager RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:](RTHealthKitManager, "RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:", [v415 workoutActivityType]);
      [v409 doubleValue];
      v236 = (v474 + 5);
      v454 = v474[5];
      v237 = [(RTWorkoutRouteManager *)self _areWorkoutsSimilarBetweenClusterSet1:v231 clusterSet2:v234 workoutActivityType:v235 maxDistanceThreshold:&v454 error:?];
      objc_storeStrong(v236, v454);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v238 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
        {
          v239 = objc_opt_class();
          v240 = NSStringFromClass(v239);
          v241 = NSStringFromSelector(aSelector);
          v242 = v241;
          v243 = @"NO";
          *buf = 138412802;
          *&buf[4] = v240;
          v507 = 2112;
          if (v237)
          {
            v243 = @"YES";
          }

          v508 = v241;
          v509 = 2112;
          v510 = v243;
          _os_log_impl(&dword_2304B3000, v238, OS_LOG_TYPE_INFO, "%@, %@, isNewlyAddedWorkoutSimilarToReferenceWorkout, %@", buf, 0x20u);
        }
      }

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

        goto LABEL_265;
      }

      v289 = [MEMORY[0x277CBEB58] setWithArray:v414];
      v290 = MEMORY[0x277CBEB58];
      v291 = [v415 UUID];
      v292 = [v290 setWithObject:v291];
      v293 = +[RTHealthKitManager RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:](RTHealthKitManager, "RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:", [v415 workoutActivityType]);
      [v409 doubleValue];
      v294 = (v474 + 5);
      v453 = v474[5];
      v295 = [(RTWorkoutRouteManager *)self _areWorkoutsSimilarBetweenClusterSet1:v289 clusterSet2:v292 workoutActivityType:v293 maxDistanceThreshold:&v453 error:?];
      objc_storeStrong(v294, v453);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v296 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v296, OS_LOG_TYPE_INFO))
        {
          v297 = objc_opt_class();
          v298 = NSStringFromClass(v297);
          v299 = NSStringFromSelector(aSelector);
          v300 = v299;
          v301 = @"NO";
          *buf = 138412802;
          *&buf[4] = v298;
          v507 = 2112;
          if (v295)
          {
            v301 = @"YES";
          }

          v508 = v299;
          v509 = 2112;
          v510 = v301;
          _os_log_impl(&dword_2304B3000, v296, OS_LOG_TYPE_INFO, "%@, %@, isNewlyAddedWorkoutSimilarToReferenceWorkoutAndItsCluster, %@", buf, 0x20u);
        }
      }

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

        goto LABEL_265;
      }

      v304 = [MEMORY[0x277CCABB0] numberWithBool:v237];
      [v420 setObject:v304 forKeyedSubscript:@"is_new_workout_similar_to_reference_route"];

      v305 = [MEMORY[0x277CCABB0] numberWithBool:v295];
      [v420 setObject:v305 forKeyedSubscript:@"is_new_workout_clustered_reference_route"];

      if (v295)
      {
        v306 = [MEMORY[0x277CBEAA8] date];

        v495 = v406;
        v307 = [MEMORY[0x277CBEA60] arrayWithObjects:&v495 count:1];
        v308 = (v474 + 5);
        v452 = v474[5];
        v309 = [(RTWorkoutRouteManager *)self _syncClustersToHealthKit:v307 error:&v452];
        objc_storeStrong(v308, v452);

        if (v474[5])
        {
          if (v7)
          {
            v7[2](v7);
          }

          v188 = 0;
          v414 = 0;
          v41 = 0;
LABEL_286:
          v421 = v306;
          goto LABEL_267;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v346 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v346, OS_LOG_TYPE_INFO))
          {
            v347 = objc_opt_class();
            v348 = NSStringFromClass(v347);
            v349 = NSStringFromSelector(aSelector);
            if (v309)
            {
              v350 = @"YES";
            }

            else
            {
              v350 = @"NO";
            }

            v351 = [MEMORY[0x277CBEAA8] date];
            [v351 timeIntervalSinceDate:v306];
            v353 = v352;
            +[RTRuntime footprint];
            *buf = 138413314;
            *&buf[4] = v348;
            v507 = 2112;
            v508 = v349;
            v509 = 2112;
            v510 = v350;
            v511 = 2048;
            v512 = v353;
            v513 = 2048;
            v514 = v354;
            _os_log_impl(&dword_2304B3000, v346, OS_LOG_TYPE_INFO, "%@, %@, syncing clusters to HealthKit status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
          }
        }

        v421 = [MEMORY[0x277CBEAA8] date];

        v355 = dispatch_semaphore_create(0);
        v449[0] = MEMORY[0x277D85DD0];
        v449[1] = 3221225472;
        v449[2] = __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_169;
        v449[3] = &unk_2788C4618;
        v451 = &v473;
        v356 = v355;
        v450 = v356;
        [(RTWorkoutRouteManager *)self _updateRelevanceScoresWithHandler:v449];
        dsema = v356;
        v357 = [MEMORY[0x277CBEAA8] now];
        v358 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(dsema, v358))
        {
          v359 = [MEMORY[0x277CBEAA8] now];
          [v359 timeIntervalSinceDate:v357];
          v361 = v360;
          v362 = objc_opt_new();
          v363 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
          v364 = [MEMORY[0x277CCACC8] callStackSymbols];
          v365 = [v364 filteredArrayUsingPredicate:v363];
          v366 = [v365 firstObject];

          [v362 submitToCoreAnalytics:v366 type:1 duration:v361];
          v367 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v367, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v367, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v368 = MEMORY[0x277CCA9B8];
          v488 = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v369 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v488 count:1];
          v370 = [v368 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v369];

          if (v370)
          {
            v371 = v370;
          }
        }

        else
        {
          v370 = 0;
        }

        v372 = v370;
        v41 = v372;
        if (v372)
        {
          v373 = v372;
LABEL_318:
          if (v7)
          {
            (v7[2])(v7, v373);
          }

          v188 = 0;
          v414 = 0;
          goto LABEL_267;
        }

        v373 = v474[5];
        if (v373)
        {
          goto LABEL_318;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v379 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
          {
            v380 = objc_opt_class();
            v381 = NSStringFromClass(v380);
            v382 = NSStringFromSelector(aSelector);
            v383 = [MEMORY[0x277CBEAA8] date];
            [v383 timeIntervalSinceDate:v421];
            v385 = v384;
            +[RTRuntime footprint];
            *buf = 138413058;
            *&buf[4] = v381;
            v507 = 2112;
            v508 = v382;
            v509 = 2048;
            v510 = v385;
            v511 = 2048;
            v512 = v386;
            _os_log_impl(&dword_2304B3000, v379, OS_LOG_TYPE_INFO, "%@, %@, updateing relevance scores, status, done, latency, %.4f sec, footprint, %.4f MB", buf, 0x2Au);
          }
        }

        v306 = [MEMORY[0x277CBEAA8] date];

        v387 = (v474 + 5);
        v448 = v474[5];
        v388 = [(RTWorkoutRouteManager *)self _syncClustersToWatchWithLimit:100 error:&v448];
        objc_storeStrong(v387, v448);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v389 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v389, OS_LOG_TYPE_INFO))
          {
            v390 = objc_opt_class();
            v391 = NSStringFromClass(v390);
            v392 = NSStringFromSelector(aSelector);
            if (v388)
            {
              v393 = @"YES";
            }

            else
            {
              v393 = @"NO";
            }

            v394 = [MEMORY[0x277CBEAA8] date];
            [v394 timeIntervalSinceDate:v306];
            v396 = v395;
            +[RTRuntime footprint];
            *buf = 138413570;
            *&buf[4] = v391;
            v507 = 2112;
            v508 = v392;
            v509 = 2048;
            v510 = 100;
            v511 = 2112;
            v512 = v393;
            v513 = 2048;
            v514 = v396;
            v515 = 2048;
            v516 = v397;
            _os_log_impl(&dword_2304B3000, v389, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to watch with default limit, %lu, status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
          }
        }
      }

      else
      {
        v306 = v421;
      }

      v310 = MEMORY[0x277CCABB0];
      +[RTRuntime footprint];
      v312 = [v310 numberWithDouble:v311 - v13];
      [v420 setObject:v312 forKeyedSubscript:@"footprint_delta"];

      v313 = MEMORY[0x277CCABB0];
      v314 = [MEMORY[0x277CBEAA8] date];
      [v314 timeIntervalSinceDate:v419];
      v315 = [v313 numberWithDouble:?];
      [v420 setObject:v315 forKeyedSubscript:@"time_elapsed_reference_route_cluster_check"];

      v316 = [(RTWorkoutRouteManager *)self workoutMetricsManager];
      v494 = v420;
      v317 = [MEMORY[0x277CBEA60] arrayWithObjects:&v494 count:1];
      v318 = (v474 + 5);
      v447 = v474[5];
      v319 = [v316 submitMetricsForEvent:2 data:v317 error:&v447];
      objc_storeStrong(v318, v447);

      v320 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
      {
        v374 = objc_opt_class();
        v375 = NSStringFromClass(v374);
        v376 = NSStringFromSelector(aSelector);
        v377 = [v420 count];
        v378 = @"NO";
        *buf = 138413058;
        *&buf[4] = v375;
        v507 = 2112;
        if (v319)
        {
          v378 = @"YES";
        }

        v508 = v376;
        v509 = 2112;
        v510 = v378;
        v511 = 2048;
        v512 = v377;
        _os_log_error_impl(&dword_2304B3000, v320, OS_LOG_TYPE_ERROR, "%@, %@, metrics submission status, %@, metrics count, %lu", buf, 0x2Au);
      }

      if (v7)
      {
        (v7[2])(v7, v474[5]);
      }

      v188 = 0;
      v414 = 0;
      v41 = 0;
      v420 = 0;
      goto LABEL_286;
    }

    if (v70)
    {
      v78 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v80;
        v507 = 2112;
        v508 = v81;
        v509 = 2112;
        v510 = v6;
        _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, %@, case  2/2, reference workout UUID does not exist. Finding the next best cluster for workout uuid, %@", buf, 0x20u);
      }
    }

    v488 = 0;
    v489 = &v488;
    v490 = 0x3032000000;
    v491 = __Block_byref_object_copy__153;
    v492 = __Block_byref_object_dispose__153;
    v493 = [MEMORY[0x277CBEA60] array];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v82 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        *&buf[4] = v84;
        v507 = 2112;
        v508 = v85;
        _os_log_impl(&dword_2304B3000, v82, OS_LOG_TYPE_INFO, "%@, %@, fetching all clusters", buf, 0x16u);
      }
    }

    v86 = dispatch_semaphore_create(0);

    v87 = [(RTWorkoutRouteManager *)self healthKitManager];
    v443[0] = MEMORY[0x277D85DD0];
    v443[1] = 3221225472;
    v443[2] = __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_170;
    v443[3] = &unk_2788C4490;
    v445 = &v488;
    v446 = &v473;
    v88 = v86;
    v444 = v88;
    [v87 fetchWorkoutClustersWithHandler:v443];

    dsema = v88;
    v89 = [MEMORY[0x277CBEAA8] now];
    v90 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v90))
    {
      v91 = [MEMORY[0x277CBEAA8] now];
      [v91 timeIntervalSinceDate:v89];
      v93 = v92;
      v94 = objc_opt_new();
      v95 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v96 = [MEMORY[0x277CCACC8] callStackSymbols];
      v97 = [v96 filteredArrayUsingPredicate:v95];
      v98 = [v97 firstObject];

      [v94 submitToCoreAnalytics:v98 type:1 duration:v93];
      v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v99, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v100 = MEMORY[0x277CCA9B8];
      v521[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v521 count:1];
      v102 = [v100 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v101];

      if (v102)
      {
        v103 = v102;
      }
    }

    else
    {
      v102 = 0;
    }

    v108 = v102;
    if (v108)
    {
      v41 = v108;
      if (v7)
      {
        (v7[2])(v7, v108);
      }

      v413 = 0;
      goto LABEL_187;
    }

    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

      v413 = 0;
      v41 = 0;
      goto LABEL_187;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v117 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        v120 = NSStringFromSelector(aSelector);
        v121 = [v489[5] count];
        *buf = 138412802;
        *&buf[4] = v119;
        v507 = 2112;
        v508 = v120;
        v509 = 2048;
        v510 = v121;
        _os_log_impl(&dword_2304B3000, v117, OS_LOG_TYPE_INFO, "%@, %@, all clusters count, %lu", buf, 0x20u);
      }
    }

    v399 = objc_opt_new();
    v398 = objc_opt_new();
    v441 = 0u;
    v442 = 0u;
    v439 = 0u;
    v440 = 0u;
    v401 = v489[5];
    v402 = [v401 countByEnumeratingWithState:&v439 objects:v487 count:16];
    if (v402)
    {
      v413 = 0;
      v122 = *v440;
LABEL_107:
      v123 = 0;
      while (1)
      {
        if (*v440 != v122)
        {
          objc_enumerationMutation(v401);
        }

        v124 = *(*(&v439 + 1) + 8 * v123);
        v405 = objc_autoreleasePoolPush();
        v125 = (v474 + 5);
        v438 = v474[5];
        v411 = [(RTWorkoutRouteManager *)self _getWorkoutUUIDsForCluster:v124 error:&v438];
        objc_storeStrong(v125, v438);
        if (v474[5])
        {
          if (v7)
          {
            v7[2](v7);
          }

          v126 = 1;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v127 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
            {
              v128 = objc_opt_class();
              v129 = NSStringFromClass(v128);
              v130 = NSStringFromSelector(aSelector);
              v131 = [v124 clusterUUID];
              v132 = [v411 count];
              *buf = 138413058;
              *&buf[4] = v129;
              v507 = 2112;
              v508 = v130;
              v509 = 2112;
              v510 = v131;
              v511 = 2048;
              v512 = v132;
              _os_log_impl(&dword_2304B3000, v127, OS_LOG_TYPE_INFO, "%@, %@, cluster with cluster uuid, %@, count of workouts in the cluster, %lu", buf, 0x2Au);
            }
          }

          if ([v411 count])
          {
            v133 = [(RTWorkoutRouteManager *)self healthKitManager];
            v134 = [v411 firstObject];
            v486 = v134;
            v135 = [MEMORY[0x277CBEA60] arrayWithObjects:&v486 count:1];
            v136 = (v474 + 5);
            v437 = v474[5];
            v137 = [v133 getWorkoutsWithUUIDs:v135 error:&v437];
            objc_storeStrong(v136, v437);

            if (v474[5])
            {
              if (v7)
              {
                v7[2](v7);
              }

              v126 = 1;
            }

            else
            {
              v138 = [v137 firstObject];
              v139 = [v138 workoutActivityType];
              LODWORD(v139) = v139 == [v415 workoutActivityType];

              if (v139)
              {
                [v399 addObjectsFromArray:v411];
                v140 = [v124 clusterUUID];
                [v398 setObject:v411 forKeyedSubscript:v140];
              }

              v126 = 0;
            }

            v413 = v137;
          }

          else
          {
            v126 = 7;
          }
        }

        objc_autoreleasePoolPop(v405);
        if (v126 != 7)
        {
          if (v126)
          {
            goto LABEL_184;
          }
        }

        if (v402 == ++v123)
        {
          v402 = [v401 countByEnumeratingWithState:&v439 objects:v487 count:16];
          if (v402)
          {
            goto LABEL_107;
          }

          goto LABEL_153;
        }
      }
    }

    v413 = 0;
LABEL_153:

    if ([v399 count] <= 1)
    {
      v163 = MEMORY[0x277CCA9B8];
      v484 = *MEMORY[0x277CCA450];
      v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"workout uuids from cluster, %lu, is less than threshold, %lu", objc_msgSend(v399, "count"), 2];
      v485 = v164;
      v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v485 forKeys:&v484 count:1];
      v166 = [v163 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v165];
      v167 = v474[5];
      v474[5] = v166;

      if (v7)
      {
        (v7[2])(v7, v474[5]);
      }

      v41 = 0;
      goto LABEL_186;
    }

    v168 = [v415 UUID];
    [v399 addObject:v168];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v169 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
      {
        v170 = objc_opt_class();
        v171 = NSStringFromClass(v170);
        v172 = NSStringFromSelector(aSelector);
        v173 = [v399 count];
        *buf = 138412802;
        *&buf[4] = v171;
        v507 = 2112;
        v508 = v172;
        v509 = 2048;
        v510 = v173;
        _os_log_impl(&dword_2304B3000, v169, OS_LOG_TYPE_INFO, "%@, %@, processing workout UUIDs from clusters plus newlyAddedWorkout count, %lu", buf, 0x20u);
      }
    }

    v174 = (v474 + 5);
    v436 = v474[5];
    v401 = [(RTWorkoutRouteManager *)self _sortWorkoutUUIDsByDistance:v399 error:&v436];
    objc_storeStrong(v174, v436);
    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

LABEL_184:
      v41 = 0;
LABEL_185:

LABEL_186:
LABEL_187:

      _Block_object_dispose(&v488, 8);
      goto LABEL_188;
    }

    v196 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v415 workoutActivityType]);
    v482 = v196;
    v483 = v401;
    v197 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v483 forKeys:&v482 count:1];
    v198 = [v197 mutableCopy];
    v199 = (v474 + 5);
    v435 = v474[5];
    [(RTWorkoutRouteManager *)self _processWorkoutsUsingActivityTypeToWorkoutUUIDsMap:v198 error:&v435];
    objc_storeStrong(v199, v435);

    if (v474[5])
    {
      if (v7)
      {
        v7[2](v7);
      }

      v399 = 0;
      goto LABEL_184;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v204 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
      {
        v205 = objc_opt_class();
        v206 = NSStringFromClass(v205);
        v207 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        *&buf[4] = v206;
        v507 = 2112;
        v508 = v207;
        _os_log_impl(&dword_2304B3000, v204, OS_LOG_TYPE_INFO, "%@, %@, checking similarity", buf, 0x16u);
      }
    }

    v400 = objc_opt_new();
    v433 = 0u;
    v434 = 0u;
    v431 = 0u;
    v432 = 0u;
    v403 = [v398 allValues];
    v407 = [v403 countByEnumeratingWithState:&v431 objects:v481 count:16];
    if (v407)
    {
      v208 = *v432;
LABEL_199:
      v209 = 0;
      while (1)
      {
        if (*v432 != v208)
        {
          objc_enumerationMutation(v403);
        }

        v210 = *(*(&v431 + 1) + 8 * v209);
        v412 = objc_autoreleasePoolPush();
        v211 = [MEMORY[0x277CBEB58] setWithArray:v210];
        v212 = MEMORY[0x277CBEB58];
        v213 = [v415 UUID];
        v214 = [v212 setWithObject:v213];
        v215 = +[RTHealthKitManager RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:](RTHealthKitManager, "RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:", [v415 workoutActivityType]);
        [v409 doubleValue];
        v216 = (v474 + 5);
        v430 = v474[5];
        v217 = [(RTWorkoutRouteManager *)self _areWorkoutsSimilarBetweenClusterSet1:v211 clusterSet2:v214 workoutActivityType:v215 maxDistanceThreshold:&v430 error:?];
        objc_storeStrong(v216, v430);

        if (v474[5])
        {
          if (v7)
          {
            v7[2](v7);
          }

          v218 = 0;
          v219 = 1;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v220 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
            {
              v221 = objc_opt_class();
              v222 = NSStringFromClass(v221);
              v223 = NSStringFromSelector(aSelector);
              v224 = v223;
              *buf = 138412802;
              v225 = @"NO";
              if (v217)
              {
                v225 = @"YES";
              }

              *&buf[4] = v222;
              v507 = 2112;
              v508 = v223;
              v509 = 2112;
              v510 = v225;
              _os_log_impl(&dword_2304B3000, v220, OS_LOG_TYPE_INFO, "%@, %@, isNewlyAddedWorkoutSimilarToCluster,  %@", buf, 0x20u);
            }
          }

          if (v217)
          {
            v226 = [MEMORY[0x277CBEB18] arrayWithArray:v210];

            [v226 addObject:v6];
            v218 = 0;
            v219 = 8;
            v400 = v226;
          }

          else
          {
            v219 = 0;
            v218 = 1;
          }
        }

        objc_autoreleasePoolPop(v412);
        if (!v218)
        {
          break;
        }

        if (v407 == ++v209)
        {
          v407 = [v403 countByEnumeratingWithState:&v431 objects:v481 count:16];
          if (v407)
          {
            goto LABEL_199;
          }

          goto LABEL_218;
        }
      }

      if ((v219 | 8) == 8)
      {
        goto LABEL_220;
      }

      v41 = 0;
      goto LABEL_275;
    }

LABEL_218:

LABEL_220:
    if ([v400 count])
    {
      v227 = [MEMORY[0x277CBEAA8] date];

      v480 = v400;
      v228 = [MEMORY[0x277CBEA60] arrayWithObjects:&v480 count:1];
      v229 = (v474 + 5);
      v429 = v474[5];
      v230 = [(RTWorkoutRouteManager *)self _syncClustersToHealthKit:v228 error:&v429];
      objc_storeStrong(v229, v429);

      if (v474[5])
      {
        if (v7)
        {
          v7[2](v7);
        }

        v41 = 0;
        v421 = v227;
LABEL_275:

        v399 = 0;
        goto LABEL_185;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v263 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v263, OS_LOG_TYPE_INFO))
        {
          v264 = objc_opt_class();
          v265 = NSStringFromClass(v264);
          v266 = NSStringFromSelector(aSelector);
          if (v230)
          {
            v267 = @"YES";
          }

          else
          {
            v267 = @"NO";
          }

          v268 = [MEMORY[0x277CBEAA8] date];
          [v268 timeIntervalSinceDate:v227];
          v270 = v269;
          +[RTRuntime footprint];
          *buf = 138413314;
          *&buf[4] = v265;
          v507 = 2112;
          v508 = v266;
          v509 = 2112;
          v510 = v267;
          v511 = 2048;
          v512 = v270;
          v513 = 2048;
          v514 = v271;
          _os_log_impl(&dword_2304B3000, v263, OS_LOG_TYPE_INFO, "%@, %@, syncing clusters to HealthKit status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
        }
      }

      v421 = [MEMORY[0x277CBEAA8] date];

      v272 = dispatch_semaphore_create(0);
      v426[0] = MEMORY[0x277D85DD0];
      v426[1] = 3221225472;
      v426[2] = __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_174;
      v426[3] = &unk_2788C4618;
      v428 = &v473;
      v273 = v272;
      v427 = v273;
      [(RTWorkoutRouteManager *)self _updateRelevanceScoresWithHandler:v426];
      dsema = v273;
      v274 = [MEMORY[0x277CBEAA8] now];
      v275 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v275))
      {
        v276 = [MEMORY[0x277CBEAA8] now];
        [v276 timeIntervalSinceDate:v274];
        v278 = v277;
        v279 = objc_opt_new();
        v280 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
        v281 = [MEMORY[0x277CCACC8] callStackSymbols];
        v282 = [v281 filteredArrayUsingPredicate:v280];
        v283 = [v282 firstObject];

        [v279 submitToCoreAnalytics:v283 type:1 duration:v278];
        v284 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v284, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v284, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v285 = MEMORY[0x277CCA9B8];
        v521[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v286 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v521 count:1];
        v287 = [v285 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v286];

        if (v287)
        {
          v288 = v287;
        }
      }

      else
      {
        v287 = 0;
      }

      v302 = v287;
      v41 = v302;
      if (v302)
      {
        v303 = v302;
LABEL_272:
        if (v7)
        {
          (v7[2])(v7, v303);
        }

        v400 = 0;
        goto LABEL_275;
      }

      v303 = v474[5];
      if (v303)
      {
        goto LABEL_272;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v321 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_INFO))
        {
          v322 = objc_opt_class();
          v323 = NSStringFromClass(v322);
          v324 = NSStringFromSelector(aSelector);
          v325 = [MEMORY[0x277CBEAA8] date];
          [v325 timeIntervalSinceDate:v421];
          v327 = v326;
          +[RTRuntime footprint];
          *buf = 138413058;
          *&buf[4] = v323;
          v507 = 2112;
          v508 = v324;
          v509 = 2048;
          v510 = v327;
          v511 = 2048;
          v512 = v328;
          _os_log_impl(&dword_2304B3000, v321, OS_LOG_TYPE_INFO, "%@, %@, updating relevance scores, status, done, latency, %.4f sec, footprint, %.4f MB", buf, 0x2Au);
        }
      }

      v329 = [MEMORY[0x277CBEAA8] date];

      v330 = (v474 + 5);
      v425 = v474[5];
      v331 = [(RTWorkoutRouteManager *)self _syncClustersToWatchWithLimit:100 error:&v425];
      objc_storeStrong(v330, v425);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v332 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v332, OS_LOG_TYPE_INFO))
        {
          v333 = objc_opt_class();
          v334 = NSStringFromClass(v333);
          v335 = NSStringFromSelector(aSelector);
          if (v331)
          {
            v336 = @"YES";
          }

          else
          {
            v336 = @"NO";
          }

          v337 = [MEMORY[0x277CBEAA8] date];
          [v337 timeIntervalSinceDate:v329];
          v339 = v338;
          +[RTRuntime footprint];
          *buf = 138413570;
          *&buf[4] = v334;
          v507 = 2112;
          v508 = v335;
          v509 = 2048;
          v510 = 100;
          v511 = 2112;
          v512 = v336;
          v513 = 2048;
          v514 = v339;
          v515 = 2048;
          v516 = v340;
          _os_log_impl(&dword_2304B3000, v332, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to watch with default limit, %lu, status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
        }
      }

      [v420 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_new_workout_clustered_other"];

      v400 = 0;
      v421 = v329;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v244 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
        {
          v245 = objc_opt_class();
          v246 = NSStringFromClass(v245);
          v247 = NSStringFromSelector(aSelector);
          v248 = [MEMORY[0x277CBEAA8] date];
          [v248 timeIntervalSinceDate:v421];
          v250 = v249;
          +[RTRuntime footprint];
          *buf = 138413314;
          *&buf[4] = v246;
          v507 = 2112;
          v508 = v247;
          v509 = 2112;
          v510 = v6;
          v511 = 2048;
          v512 = v250;
          v513 = 2048;
          v514 = v251;
          _os_log_impl(&dword_2304B3000, v244, OS_LOG_TYPE_INFO, "%@, %@, couldn't find best cluster for the new workout, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
        }
      }

      [v420 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"is_new_workout_clustered_other"];
    }

    v252 = MEMORY[0x277CCABB0];
    +[RTRuntime footprint];
    v254 = [v252 numberWithDouble:v253 - v13];
    [v420 setObject:v254 forKeyedSubscript:@"footprint_delta"];

    v255 = MEMORY[0x277CCABB0];
    v256 = [MEMORY[0x277CBEAA8] date];
    [v256 timeIntervalSinceDate:v419];
    v257 = [v255 numberWithDouble:?];
    [v420 setObject:v257 forKeyedSubscript:@"time_elapsed_mini_worldbuild_check"];

    v258 = [(RTWorkoutRouteManager *)self workoutMetricsManager];
    v479 = v420;
    v259 = [MEMORY[0x277CBEA60] arrayWithObjects:&v479 count:1];
    v260 = (v474 + 5);
    v424 = v474[5];
    v261 = [v258 submitMetricsForEvent:2 data:v259 error:&v424];
    objc_storeStrong(v260, v424);

    v262 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
    {
      v341 = objc_opt_class();
      v342 = NSStringFromClass(v341);
      v343 = NSStringFromSelector(aSelector);
      v344 = [v420 count];
      v345 = @"NO";
      *buf = 138413058;
      *&buf[4] = v342;
      v507 = 2112;
      if (v261)
      {
        v345 = @"YES";
      }

      v508 = v343;
      v509 = 2112;
      v510 = v345;
      v511 = 2048;
      v512 = v344;
      _os_log_error_impl(&dword_2304B3000, v262, OS_LOG_TYPE_ERROR, "%@, %@, metrics submission status, %@, metrics count, %lu", buf, 0x2Au);
    }

    if (v7)
    {
      (v7[2])(v7, v474[5]);
    }

    v41 = 0;
    v420 = 0;
    goto LABEL_275;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: newlyAddedWorkoutUUID", buf, 2u);
  }

LABEL_43:
}

void __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_169(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_170(uint64_t a1, void *a2, void *a3)
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

void __59__RTWorkoutRouteManager__processNewlyAddedWorkout_handler___block_invoke_174(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateRelevanceScoresWithHandler:(id)a3
{
  v311[1] = *MEMORY[0x277D85DE8];
  v252 = a3;
  context = objc_autoreleasePoolPush();
  v248 = [MEMORY[0x277CBEAA8] date];
  v249 = [MEMORY[0x277CBEAA8] date];
  +[RTRuntime footprint];
  v4 = v3;
  v255 = objc_opt_new();
  v285 = 0;
  v286 = &v285;
  v287 = 0x3032000000;
  v288 = __Block_byref_object_copy__153;
  v289 = __Block_byref_object_dispose__153;
  v290 = objc_opt_new();
  v279 = 0;
  v280 = &v279;
  v281 = 0x3032000000;
  v282 = __Block_byref_object_copy__153;
  v283 = __Block_byref_object_dispose__153;
  v284 = 0;
  v257 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      *&buf[4] = v7;
      v293 = 2112;
      v294 = v8;
      v295 = 2048;
      v296 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, fetching workout clusters, footprint, %.4f MB", buf, 0x20u);
    }
  }

  v10 = dispatch_semaphore_create(0);
  v11 = [(RTWorkoutRouteManager *)self healthKitManager];
  v275[0] = MEMORY[0x277D85DD0];
  v275[1] = 3221225472;
  v275[2] = __59__RTWorkoutRouteManager__updateRelevanceScoresWithHandler___block_invoke;
  v275[3] = &unk_2788D03E8;
  v277 = &v279;
  v12 = v10;
  v276 = v12;
  v278 = &v285;
  [v11 fetchWorkoutClustersWithHandler:v275];

  dsema = v12;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v304 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v304 count:1];
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
    v29 = v28;
    v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v46;
      v293 = 2112;
      v294 = v47;
      v295 = 2112;
      v296 = v29;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    if (v252)
    {
      v252[2]();
    }

    goto LABEL_56;
  }

  if (v280[5])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = NSStringFromSelector(a2);
      v62 = v280[5];
      *buf = 138412802;
      *&buf[4] = v60;
      v293 = 2112;
      v294 = v61;
      v295 = 2112;
      v296 = v62;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    v32 = v252;
    if (!v252)
    {
      goto LABEL_38;
    }

    v33 = v280[5];
LABEL_37:
    (v32[2])(v32, v33);
LABEL_38:
    v29 = 0;
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v38 = [v286[5] count];
      *buf = 138412802;
      *&buf[4] = v36;
      v293 = 2112;
      v294 = v37;
      v295 = 2048;
      v296 = v38;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, clusters count, %lu", buf, 0x20u);
    }
  }

  if (![v286[5] count])
  {
    v33 = 0;
    v32 = v252;
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v41;
      v293 = 2112;
      v294 = v42;
      _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, getting current location", buf, 0x16u);
    }
  }

  v43 = (v280 + 5);
  obj = v280[5];
  v242 = [(RTWorkoutRouteManager *)self _getRelevanceLocationWithError:&obj];
  objc_storeStrong(v43, obj);
  if (v280[5])
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v175 = objc_opt_class();
      v176 = NSStringFromClass(v175);
      v177 = NSStringFromSelector(a2);
      v178 = v280[5];
      *buf = 138412802;
      *&buf[4] = v176;
      v293 = 2112;
      v294 = v177;
      v295 = 2112;
      v296 = v178;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    if (v252)
    {
      v252[2]();
    }

    v29 = 0;
    goto LABEL_55;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v50;
      v293 = 2112;
      v294 = v51;
      v295 = 2117;
      v296 = v242;
      _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, %@, current location, %{sensitive}@", buf, 0x20u);
    }
  }

  v52 = [(RTWorkoutRouteManager *)self healthKitManager];
  v53 = [(RTWorkoutRouteManager *)self healthKitManager];
  v54 = [v53 _getWorkoutDefaultStartDateForRaceRoute];
  v55 = [(RTWorkoutRouteManager *)self healthKitManager];
  v56 = [v55 _getRTWorkoutDefaultTypesForRaceRoute];
  v57 = (v280 + 5);
  v273 = v280[5];
  v241 = [v52 getLatestWorkoutWithStartDate:v54 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:v56 workoutTypes:&v273 error:1.79769313e308];
  objc_storeStrong(v57, v273);

  if (v280[5])
  {
    v58 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v217 = objc_opt_class();
      v218 = NSStringFromClass(v217);
      v219 = NSStringFromSelector(a2);
      v220 = v280[5];
      *buf = 138412802;
      *&buf[4] = v218;
      v293 = 2112;
      v294 = v219;
      v295 = 2112;
      v296 = v220;
      _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    if (v252)
    {
      v252[2]();
    }

LABEL_53:
    v29 = 0;
    v68 = v249;
    goto LABEL_54;
  }

  v63 = [(RTWorkoutRouteManager *)self healthKitManager];
  v64 = [(RTWorkoutRouteManager *)self healthKitManager];
  v65 = [v64 _getWorkoutDefaultStartDateForRaceRoute];
  v66 = (v280 + 5);
  v272 = v280[5];
  v240 = [v63 getWorkoutsCountWithStartDate:v65 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:&v272 error:1.79769313e308];
  objc_storeStrong(v66, v272);

  if (v280[5])
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v221 = objc_opt_class();
      v222 = NSStringFromClass(v221);
      v223 = NSStringFromSelector(a2);
      v224 = v280[5];
      *buf = 138412802;
      *&buf[4] = v222;
      v293 = 2112;
      v294 = v223;
      v295 = 2112;
      v296 = v224;
      _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    if (v252)
    {
      v252[2]();
    }

    goto LABEL_53;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v69 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = NSStringFromSelector(a2);
      v73 = [v241 UUID];
      *buf = 138412802;
      *&buf[4] = v71;
      v293 = 2112;
      v294 = v72;
      v295 = 2112;
      v296 = v73;
      _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, latest workout across all workouts, %@", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      v77 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v76;
      v293 = 2112;
      v294 = v77;
      v295 = 2048;
      v296 = v240;
      _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_INFO, "%@, %@, count of all workouts, %lu", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v78 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      v81 = NSStringFromSelector(a2);
      +[RTRuntime footprint];
      *buf = 138412802;
      *&buf[4] = v80;
      v293 = 2112;
      v294 = v81;
      v295 = 2048;
      v296 = v82;
      _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, %@, updating relevance score, footprint, %.4f MB", buf, 0x20u);
    }
  }

  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v286[5], "count")}];
  [v255 setObject:v83 forKeyedSubscript:@"count_clusters_existing"];

  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  [v255 setObject:&unk_28459F690 forKeyedSubscript:?];
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v243 = v286[5];
  v84 = [v243 countByEnumeratingWithState:&v268 objects:v310 count:16];
  if (!v84)
  {
    v238 = 0;
    v239 = 0;
    v29 = 0;
    goto LABEL_128;
  }

  v238 = 0;
  v239 = 0;
  v29 = 0;
  v250 = *v269;
  v245 = *MEMORY[0x277D01448];
  v246 = *MEMORY[0x277CCA450];
  do
  {
    v85 = 0;
    v86 = v29;
    v251 = v84;
    do
    {
      if (*v269 != v250)
      {
        objc_enumerationMutation(v243);
      }

      v254 = v85;
      v87 = *(*(&v268 + 1) + 8 * v85);
      v253 = objc_autoreleasePoolPush();
      v304 = 0;
      v305 = &v304;
      v306 = 0x3032000000;
      v307 = __Block_byref_object_copy__153;
      v308 = __Block_byref_object_dispose__153;
      v309 = [MEMORY[0x277CBEA60] array];
      v88 = dispatch_semaphore_create(0);

      v89 = [(RTWorkoutRouteManager *)self healthKitManager];
      v90 = [v87 clusterUUID];
      v264[0] = MEMORY[0x277D85DD0];
      v264[1] = 3221225472;
      v264[2] = __59__RTWorkoutRouteManager__updateRelevanceScoresWithHandler___block_invoke_176;
      v264[3] = &unk_2788C4490;
      v266 = &v279;
      v267 = &v304;
      v91 = v88;
      v265 = v91;
      [v89 fetchWorkoutUUIDsForClusterUUID:v90 handler:v264];

      dsema = v91;
      v92 = [MEMORY[0x277CBEAA8] now];
      v93 = dispatch_time(0, 3600000000000);
      v94 = v86;
      if (dispatch_semaphore_wait(dsema, v93))
      {
        v95 = [MEMORY[0x277CBEAA8] now];
        [v95 timeIntervalSinceDate:v92];
        v97 = v96;
        v98 = objc_opt_new();
        v99 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
        v100 = [MEMORY[0x277CCACC8] callStackSymbols];
        v101 = [v100 filteredArrayUsingPredicate:v99];
        v102 = [v101 firstObject];

        [v98 submitToCoreAnalytics:v102 type:1 duration:v97];
        v103 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v103, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v104 = MEMORY[0x277CCA9B8];
        v311[0] = v246;
        *buf = @"semaphore wait timeout";
        v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v311 count:1];
        v106 = [v104 errorWithDomain:v245 code:15 userInfo:v105];

        v94 = v86;
        if (v106)
        {
          v107 = v106;

          v94 = v106;
        }
      }

      v29 = v94;
      if (!v257 || !v280[5])
      {
        v110 = [(RTWorkoutRouteManager *)self healthKitManager];
        v111 = [v87 lastWorkoutUUID];
        v303 = v111;
        v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v303 count:1];
        v113 = (v280 + 5);
        v263 = v280[5];
        v109 = [v110 getWorkoutsWithUUIDs:v112 error:&v263];
        objc_storeStrong(v113, v263);

        if (v257 && v280[5])
        {
          v114 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            v163 = objc_opt_class();
            v164 = NSStringFromClass(v163);
            v165 = NSStringFromSelector(a2);
            v166 = v280[5];
            *buf = 138412802;
            *&buf[4] = v164;
            v293 = 2112;
            v294 = v165;
            v295 = 2112;
            v296 = v166;
            _os_log_error_impl(&dword_2304B3000, v114, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
          }

          [v257 addObject:v280[5]];
          v115 = v280[5];
          v280[5] = 0;
        }

        else
        {
          v115 = [v109 firstObject];
          v116 = v305[5];
          v117 = (v280 + 5);
          v262 = v280[5];
          [(RTWorkoutRouteManager *)self _relevanceScoreForWorkoutUUIDs:v116 representativeWorkout:v115 latestWorkoutAcrossAllWorkouts:v241 countOfAllWorkouts:v240 currentLocation:v242 error:&v262];
          v119 = v118;
          objc_storeStrong(v117, v262);
          if (v257 && v280[5])
          {
            v120 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v167 = objc_opt_class();
              v168 = NSStringFromClass(v167);
              v169 = NSStringFromSelector(a2);
              v170 = v280[5];
              *buf = 138412802;
              *&buf[4] = v168;
              v293 = 2112;
              v294 = v169;
              v295 = 2112;
              v296 = v170;
              _os_log_error_impl(&dword_2304B3000, v120, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }
          }

          else
          {
            [v87 relevanceValue];
            v121 = MEMORY[0x277CCABB0];
            if (v122 == 0.0)
            {
              v123 = [v255 objectForKeyedSubscript:@"count_clusters_existing_zero_relevance"];
              v124 = [v121 numberWithUnsignedInteger:{objc_msgSend(v123, "unsignedIntegerValue") + 1}];
              [v255 setObject:v124 forKeyedSubscript:@"count_clusters_existing_zero_relevance"];
            }

            else
            {
              v123 = [v255 objectForKeyedSubscript:@"count_clusters_existing_greaterthanzero_relevance"];
              v124 = [v121 numberWithUnsignedInteger:{objc_msgSend(v123, "unsignedIntegerValue") + 1}];
              [v255 setObject:v124 forKeyedSubscript:@"count_clusters_existing_greaterthanzero_relevance"];
            }

            [v87 relevanceValue];
            if (v125 == v119)
            {
              v126 = MEMORY[0x277CCABB0];
              v127 = [v255 objectForKeyedSubscript:@"count_clusters_relevance_score_not_updated"];
              v128 = [v126 numberWithUnsignedInteger:{objc_msgSend(v127, "unsignedIntegerValue") + 1}];
              [v255 setObject:v128 forKeyedSubscript:@"count_clusters_relevance_score_not_updated"];
            }

            else
            {
              [v87 relevanceValue];
              v129 = MEMORY[0x277CCABB0];
              if (v130 >= v119)
              {
                v131 = [v255 objectForKeyedSubscript:@"count_clusters_relevance_decreased"];
                v132 = [v129 numberWithUnsignedInteger:{objc_msgSend(v131, "unsignedIntegerValue") + 1}];
                [v255 setObject:v132 forKeyedSubscript:@"count_clusters_relevance_decreased"];
              }

              else
              {
                v131 = [v255 objectForKeyedSubscript:@"count_clusters_relevance_increased"];
                v132 = [v129 numberWithUnsignedInteger:{objc_msgSend(v131, "unsignedIntegerValue") + 1}];
                [v255 setObject:v132 forKeyedSubscript:@"count_clusters_relevance_increased"];
              }

              v133 = MEMORY[0x277CCABB0];
              v127 = [v255 objectForKeyedSubscript:@"count_clusters_relevance_score_updated"];
              v128 = [v133 numberWithUnsignedInteger:{objc_msgSend(v127, "unsignedIntegerValue") + 1}];
              [v255 setObject:v128 forKeyedSubscript:@"count_clusters_relevance_score_updated"];
            }

            v134 = MEMORY[0x277CCABB0];
            if (v119 == 0.0)
            {
              v135 = [v255 objectForKeyedSubscript:@"count_clusters_new_zero_relevance"];
              v136 = [v134 numberWithUnsignedInteger:{objc_msgSend(v135, "unsignedIntegerValue") + 1}];
              [v255 setObject:v136 forKeyedSubscript:@"count_clusters_new_zero_relevance"];
            }

            else
            {
              v135 = [v255 objectForKeyedSubscript:@"count_clusters_new_greaterthanzero_relevance"];
              v136 = [v134 numberWithUnsignedInteger:{objc_msgSend(v135, "unsignedIntegerValue") + 1}];
              [v255 setObject:v136 forKeyedSubscript:@"count_clusters_new_greaterthanzero_relevance"];
            }

            [v87 relevanceValue];
            if (v137 == 0.0 && v119 > 0.0)
            {
              v138 = MEMORY[0x277CCABB0];
              v139 = [v255 objectForKeyedSubscript:@"count_clusters_zero_to_relevance"];
              v140 = [v138 numberWithUnsignedInteger:{objc_msgSend(v139, "unsignedIntegerValue") + 1}];
              [v255 setObject:v140 forKeyedSubscript:@"count_clusters_zero_to_relevance"];
            }

            [v87 relevanceValue];
            if (v119 == 0.0 && v141 > 0.0)
            {
              v142 = MEMORY[0x277CCABB0];
              v143 = [v255 objectForKeyedSubscript:@"count_clusters_relevance_to_zero"];
              v144 = [v142 numberWithUnsignedInteger:{objc_msgSend(v143, "unsignedIntegerValue") + 1}];
              [v255 setObject:v144 forKeyedSubscript:@"count_clusters_relevance_to_zero"];
            }

            [v87 relevanceValue];
            if (v119 != v145)
            {
              v146 = [(RTWorkoutRouteManager *)self healthKitManager];
              v147 = [v87 clusterUUID];
              v148 = [MEMORY[0x277CCABB0] numberWithDouble:v119];
              v149 = (v280 + 5);
              v261 = v280[5];
              [v146 updateWorkoutClusterWithUUID:v147 newBestWorkoutUUID:0 newLastWorkoutUUID:0 newRelevance:v148 newWorkoutAssociations:0 workoutAssociationsToRemove:0 error:&v261];
              objc_storeStrong(v149, v261);

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v150 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
                {
                  v151 = objc_opt_class();
                  v152 = NSStringFromClass(v151);
                  v153 = NSStringFromSelector(a2);
                  v154 = [v87 clusterUUID];
                  [v87 relevanceValue];
                  v156 = v155;
                  +[RTRuntime footprint];
                  *buf = 138413570;
                  *&buf[4] = v152;
                  v293 = 2112;
                  v294 = v153;
                  v295 = 2112;
                  v296 = v154;
                  v297 = 2048;
                  v298 = v156;
                  v299 = 2048;
                  v300 = v119;
                  v301 = 2048;
                  v302 = v157;
                  _os_log_impl(&dword_2304B3000, v150, OS_LOG_TYPE_INFO, "%@, %@, relevance score updated for cluster with clusterUUID, %@, old relevance score, %.3f, new relevance score, %.3f, footprint, %.4f MB", buf, 0x3Eu);
                }
              }

              ++v239;
              v238 = 1;
            }

            if (!v257 || !v280[5])
            {
              goto LABEL_123;
            }

            v120 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              v171 = objc_opt_class();
              v172 = NSStringFromClass(v171);
              v173 = NSStringFromSelector(a2);
              v174 = v280[5];
              *buf = 138412802;
              *&buf[4] = v172;
              v293 = 2112;
              v294 = v173;
              v295 = 2112;
              v296 = v174;
              _os_log_error_impl(&dword_2304B3000, v120, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }
          }

          [v257 addObject:v280[5]];
          v158 = v280[5];
          v280[5] = 0;
        }

LABEL_123:

        goto LABEL_124;
      }

      v108 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v159 = objc_opt_class();
        v160 = NSStringFromClass(v159);
        v161 = NSStringFromSelector(a2);
        v162 = v280[5];
        *buf = 138412802;
        *&buf[4] = v160;
        v293 = 2112;
        v294 = v161;
        v295 = 2112;
        v296 = v162;
        _os_log_error_impl(&dword_2304B3000, v108, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
      }

      [v257 addObject:v280[5]];
      v109 = v280[5];
      v280[5] = 0;
LABEL_124:

      _Block_object_dispose(&v304, 8);
      objc_autoreleasePoolPop(v253);
      v85 = v254 + 1;
      v86 = v29;
    }

    while (v251 != v254 + 1);
    v84 = [v243 countByEnumeratingWithState:&v268 objects:v310 count:16];
  }

  while (v84);
LABEL_128:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v179 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
    {
      v180 = objc_opt_class();
      v181 = NSStringFromClass(v180);
      v182 = NSStringFromSelector(a2);
      v183 = [MEMORY[0x277CBEAA8] date];
      [v183 timeIntervalSinceDate:v249];
      v185 = v184;
      +[RTRuntime footprint];
      *buf = 138413314;
      *&buf[4] = v181;
      v293 = 2112;
      v294 = v182;
      v295 = 2048;
      v296 = v239;
      v297 = 2048;
      v298 = v185;
      v299 = 2048;
      v300 = v186;
      _os_log_impl(&dword_2304B3000, v179, OS_LOG_TYPE_INFO, "%@, %@, updated relevance score for %lu clusters, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
    }
  }

  v187 = v286[5];
  v286[5] = 0;

  if (v238)
  {
    v188 = objc_autoreleasePoolPush();
    v68 = [MEMORY[0x277CBEAA8] date];

    v189 = (v280 + 5);
    v260 = v280[5];
    v190 = [(RTWorkoutRouteManager *)self _syncClustersToWatchWithLimit:100 error:&v260];
    objc_storeStrong(v189, v260);
    if (v257 && v280[5])
    {
      v191 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
      {
        v234 = objc_opt_class();
        v235 = NSStringFromClass(v234);
        v236 = NSStringFromSelector(a2);
        v237 = v280[5];
        *buf = 138412802;
        *&buf[4] = v235;
        v293 = 2112;
        v294 = v236;
        v295 = 2112;
        v296 = v237;
        _os_log_error_impl(&dword_2304B3000, v191, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
      }

      [v257 addObject:v280[5]];
      v192 = v280[5];
      v280[5] = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v193 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
      {
        v194 = objc_opt_class();
        v195 = NSStringFromClass(v194);
        v196 = NSStringFromSelector(a2);
        if (v190)
        {
          v197 = @"YES";
        }

        else
        {
          v197 = @"NO";
        }

        v198 = [MEMORY[0x277CBEAA8] date];
        [v198 timeIntervalSinceDate:v68];
        v200 = v199;
        +[RTRuntime footprint];
        *buf = 138413570;
        *&buf[4] = v195;
        v293 = 2112;
        v294 = v196;
        v295 = 2048;
        v296 = 100;
        v297 = 2112;
        v298 = v197;
        v299 = 2048;
        v300 = v200;
        v301 = 2048;
        v302 = v201;
        _os_log_impl(&dword_2304B3000, v193, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to watch with default limit, %lu, status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
      }
    }

    objc_autoreleasePoolPop(v188);
  }

  else
  {
    v68 = v249;
  }

  if ([v257 count])
  {
    v202 = _RTSafeArray();
    v203 = _RTMultiErrorCreate();
    v204 = v280[5];
    v280[5] = v203;

    v205 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
    {
      v225 = objc_opt_class();
      v226 = NSStringFromClass(v225);
      v227 = NSStringFromSelector(a2);
      v228 = v280[5];
      *buf = 138412802;
      *&buf[4] = v226;
      v293 = 2112;
      v294 = v227;
      v295 = 2112;
      v296 = v228;
      _os_log_error_impl(&dword_2304B3000, v205, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
    }

    if (v252)
    {
      (v252[2])(v252);
    }
  }

  else
  {
    v206 = MEMORY[0x277CCABB0];
    +[RTRuntime footprint];
    v208 = [v206 numberWithDouble:v207 - v4];
    [v255 setObject:v208 forKeyedSubscript:@"footprint_delta"];

    v209 = MEMORY[0x277CCABB0];
    v210 = [MEMORY[0x277CBEAA8] date];
    [v210 timeIntervalSinceDate:v248];
    v211 = [v209 numberWithDouble:?];
    [v255 setObject:v211 forKeyedSubscript:@"time_elapsed"];

    v212 = [(RTWorkoutRouteManager *)self workoutMetricsManager];
    v291 = v255;
    v213 = [MEMORY[0x277CBEA60] arrayWithObjects:&v291 count:1];
    v214 = (v280 + 5);
    v259 = v280[5];
    v215 = [v212 submitMetricsForEvent:4 data:v213 error:&v259];
    objc_storeStrong(v214, v259);

    v216 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
    {
      v229 = objc_opt_class();
      v230 = NSStringFromClass(v229);
      v231 = NSStringFromSelector(a2);
      v232 = [v255 count];
      v233 = @"NO";
      *buf = 138413058;
      *&buf[4] = v230;
      v293 = 2112;
      if (v215)
      {
        v233 = @"YES";
      }

      v294 = v231;
      v295 = 2112;
      v296 = v233;
      v297 = 2048;
      v298 = v232;
      _os_log_error_impl(&dword_2304B3000, v216, OS_LOG_TYPE_ERROR, "%@, %@, metrics submission status, %@, metrics count, %lu", buf, 0x2Au);
    }

    if (v252)
    {
      v252[2]();
    }

    v255 = 0;
  }

LABEL_54:

  v249 = v68;
LABEL_55:

LABEL_56:
  _Block_object_dispose(&v279, 8);

  _Block_object_dispose(&v285, 8);
  objc_autoreleasePoolPop(context);
}

void __59__RTWorkoutRouteManager__updateRelevanceScoresWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTWorkoutRouteManager__updateRelevanceScoresWithHandler___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_deleteWorkout:(id)a3 handler:(id)a4
{
  v196[1] = *MEMORY[0x277D85DE8];
  v148 = a3;
  v146 = a4;
  v5 = [MEMORY[0x277CBEAA8] date];
  if (v148)
  {
    v166 = 0;
    v167 = &v166;
    v168 = 0x3032000000;
    v169 = __Block_byref_object_copy__153;
    v170 = __Block_byref_object_dispose__153;
    v171 = 0;
    [(RTWorkoutRouteManager *)self _clearInMemoryClusters];
    v6 = dispatch_semaphore_create(0);
    v7 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = __48__RTWorkoutRouteManager__deleteWorkout_handler___block_invoke;
    v163[3] = &unk_2788C4618;
    v165 = &v166;
    v8 = v6;
    v164 = v8;
    [v7 deleteWorkoutDistanceWithWorkoutUUID:v148 handler:v163];

    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
      v186 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v186 count:1];
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

    v28 = v23;
    if (v28)
    {
      objc_storeStrong(v167 + 5, v23);
    }

    if (v167[5])
    {
      v146[2]();
LABEL_85:

      _Block_object_dispose(&v166, 8);
      goto LABEL_86;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v33 = [MEMORY[0x277CBEAA8] date];
        [v33 timeIntervalSinceDate:v5];
        v35 = v34;
        +[RTRuntime footprint];
        *buf = 138413314;
        *&buf[4] = v31;
        v173 = 2112;
        v174 = v32;
        v175 = 2112;
        v176 = v148;
        v177 = 2048;
        v178 = v35;
        v179 = 2048;
        v180 = v36;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, deleted rows in distance matrix that has the workout UUID %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
      }
    }

    v136 = [MEMORY[0x277CBEAA8] date];

    v193 = v148;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v193 count:1];
    v38 = v167 + 5;
    obj = v167[5];
    v137 = [(RTWorkoutRouteManager *)self _getRemoteWorkoutClustersForWorkoutUUIDs:v37 error:&obj];
    objc_storeStrong(v38, obj);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = [v137 count];
        *buf = 138412802;
        *&buf[4] = v41;
        v173 = 2112;
        v174 = v42;
        v175 = 2048;
        v176 = v43;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, deletion clusters count, %lu", buf, 0x20u);
      }
    }

    if (v167[5] || ![v137 count])
    {
      if (v146)
      {
        v146[2]();
      }
    }

    else
    {
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v158 = 0u;
      v138 = v137;
      v44 = [v138 countByEnumeratingWithState:&v158 objects:v192 count:16];
      if (v44)
      {
        v142 = *v159;
        v139 = *MEMORY[0x277D01448];
        v140 = *MEMORY[0x277CCA450];
        do
        {
          v45 = 0;
          v46 = v28;
          v141 = v44;
          do
          {
            if (*v159 != v142)
            {
              objc_enumerationMutation(v138);
            }

            v145 = *(*(&v158 + 1) + 8 * v45);
            context = objc_autoreleasePoolPush();
            v186 = 0;
            v187 = &v186;
            v188 = 0x3032000000;
            v189 = __Block_byref_object_copy__153;
            v190 = __Block_byref_object_dispose__153;
            v191 = [MEMORY[0x277CBEA60] array];
            v47 = dispatch_semaphore_create(0);

            v48 = [(RTWorkoutRouteManager *)self healthKitManager];
            v49 = [v145 clusterUUID];
            v154[0] = MEMORY[0x277D85DD0];
            v154[1] = 3221225472;
            v154[2] = __48__RTWorkoutRouteManager__deleteWorkout_handler___block_invoke_177;
            v154[3] = &unk_2788C4490;
            v156 = &v166;
            v157 = &v186;
            v50 = v47;
            v155 = v50;
            [v48 fetchWorkoutUUIDsForClusterUUID:v49 handler:v154];

            v9 = v50;
            v51 = [MEMORY[0x277CBEAA8] now];
            v52 = dispatch_time(0, 3600000000000);
            v53 = v46;
            if (dispatch_semaphore_wait(v9, v52))
            {
              v54 = [MEMORY[0x277CBEAA8] now];
              [v54 timeIntervalSinceDate:v51];
              v56 = v55;
              v57 = objc_opt_new();
              v58 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
              v59 = [MEMORY[0x277CCACC8] callStackSymbols];
              v60 = [v59 filteredArrayUsingPredicate:v58];
              v61 = [v60 firstObject];

              [v57 submitToCoreAnalytics:v61 type:1 duration:v56];
              v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_2304B3000, v62, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
              }

              v63 = MEMORY[0x277CCA9B8];
              v196[0] = v140;
              *buf = @"semaphore wait timeout";
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v196 count:1];
              v65 = [v63 errorWithDomain:v139 code:15 userInfo:v64];

              v53 = v46;
              if (v65)
              {
                v66 = v65;

                v53 = v65;
              }
            }

            v28 = v53;
            v67 = v167;
            if (v28)
            {
              v68 = v28;
              v69 = 0;
              v70 = v67[5];
              v67[5] = v68;
LABEL_37:

              goto LABEL_40;
            }

            if (v167[5])
            {
              goto LABEL_39;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v71 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                v72 = objc_opt_class();
                v73 = NSStringFromClass(v72);
                v74 = NSStringFromSelector(a2);
                v75 = [v145 clusterUUID];
                v76 = [v187[5] count];
                *buf = 138413058;
                *&buf[4] = v73;
                v173 = 2112;
                v174 = v74;
                v175 = 2112;
                v176 = v75;
                v177 = 2048;
                v178 = v76;
                _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, cluster, %@, number of workouts, %lu", buf, 0x2Au);
              }
            }

            v77 = [v187[5] count];
            v78 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
            if (v77 > 2)
            {
              if (v78)
              {
                v96 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                {
                  v97 = objc_opt_class();
                  v98 = NSStringFromClass(v97);
                  v99 = NSStringFromSelector(a2);
                  v100 = [v145 clusterUUID];
                  *buf = 138412802;
                  *&buf[4] = v98;
                  v173 = 2112;
                  v174 = v99;
                  v175 = 2112;
                  v176 = v100;
                  _os_log_impl(&dword_2304B3000, v96, OS_LOG_TYPE_INFO, "%@, %@, case 2/2, updating the cluster with cluster UUID, %@", buf, 0x20u);
                }
              }

              v101 = v187[5];
              v102 = MEMORY[0x277CCAC30];
              v151[0] = MEMORY[0x277D85DD0];
              v151[1] = 3221225472;
              v151[2] = __48__RTWorkoutRouteManager__deleteWorkout_handler___block_invoke_182;
              v151[3] = &unk_2788C9270;
              v152 = v148;
              v103 = [v102 predicateWithBlock:v151];
              v104 = [v101 filteredArrayUsingPredicate:v103];

              v183 = v104;
              v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
              v106 = v167 + 5;
              v150 = v167[5];
              v107 = [(RTWorkoutRouteManager *)self _syncClustersToHealthKit:v105 error:&v150];
              objc_storeStrong(v106, v150);

              LOBYTE(v105) = v167[5] == 0;
              if (v105)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v108 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    v109 = objc_opt_class();
                    v110 = NSStringFromClass(v109);
                    v111 = NSStringFromSelector(a2);
                    if (v107)
                    {
                      v112 = @"YES";
                    }

                    else
                    {
                      v112 = @"NO";
                    }

                    v113 = [MEMORY[0x277CBEAA8] date];
                    [v113 timeIntervalSinceDate:v136];
                    v115 = v114;
                    +[RTRuntime footprint];
                    *buf = 138413314;
                    *&buf[4] = v110;
                    v173 = 2112;
                    v174 = v111;
                    v175 = 2112;
                    v176 = v112;
                    v177 = 2048;
                    v178 = v115;
                    v179 = 2048;
                    v180 = v116;
                    _os_log_impl(&dword_2304B3000, v108, OS_LOG_TYPE_INFO, "%@, %@, updated clusters to healthkit status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
                  }
                }

                v69 = 1;
              }

              else
              {
                v69 = 0;
              }

              v70 = v152;
              goto LABEL_37;
            }

            if (v78)
            {
              v79 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
              {
                v80 = objc_opt_class();
                v81 = NSStringFromClass(v80);
                v82 = NSStringFromSelector(a2);
                v83 = [v145 clusterUUID];
                *buf = 138412802;
                *&buf[4] = v81;
                v173 = 2112;
                v174 = v82;
                v175 = 2112;
                v176 = v83;
                _os_log_impl(&dword_2304B3000, v79, OS_LOG_TYPE_INFO, "%@, %@, case 1/2, deleting the entire cluster with cluster UUID, %@", buf, 0x20u);
              }
            }

            v84 = [(RTWorkoutRouteManager *)self healthKitManager];
            v85 = [v145 clusterUUID];
            v86 = v167 + 5;
            v153 = v167[5];
            v87 = [v84 deleteWorkoutCluster:v85 error:&v153];
            objc_storeStrong(v86, v153);

            if (v167[5])
            {
LABEL_39:
              v69 = 0;
            }

            else
            {
              if ((v87 & 1) == 0)
              {
                v117 = MEMORY[0x277CCA9B8];
                v184 = v140;
                v118 = MEMORY[0x277CCACA8];
                v70 = [v145 clusterUUID];
                v119 = [v118 stringWithFormat:@"workout cluster with clusterUUID, %@, not deleted", v70];
                v185 = v119;
                v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                v121 = [v117 errorWithDomain:v139 code:0 userInfo:v120];
                v122 = v167[5];
                v167[5] = v121;

                v69 = 0;
                goto LABEL_37;
              }

              v69 = 1;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v70 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  v88 = objc_opt_class();
                  v89 = NSStringFromClass(v88);
                  v90 = NSStringFromSelector(a2);
                  v91 = [v145 clusterUUID];
                  v92 = [MEMORY[0x277CBEAA8] date];
                  [v92 timeIntervalSinceDate:v136];
                  v94 = v93;
                  +[RTRuntime footprint];
                  *buf = 138413314;
                  *&buf[4] = v89;
                  v173 = 2112;
                  v174 = v90;
                  v175 = 2112;
                  v176 = v91;
                  v177 = 2048;
                  v178 = v94;
                  v179 = 2048;
                  v180 = v95;
                  _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%@, %@, deleted the entire cluster with cluster UUID, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);

                  v69 = 1;
                }

                goto LABEL_37;
              }
            }

LABEL_40:

            _Block_object_dispose(&v186, 8);
            objc_autoreleasePoolPop(context);
            if (!v69)
            {
              goto LABEL_74;
            }

            ++v45;
            v46 = v28;
          }

          while (v141 != v45);
          v44 = [v138 countByEnumeratingWithState:&v158 objects:v192 count:16];
        }

        while (v44);
      }

LABEL_74:

      if (v167[5])
      {
        v146[2]();
      }

      else
      {
        v123 = objc_autoreleasePoolPush();
        v124 = [MEMORY[0x277CBEAA8] date];

        v125 = v167 + 5;
        v149 = v167[5];
        v126 = [(RTWorkoutRouteManager *)self _syncClustersToWatchWithLimit:100 error:&v149];
        objc_storeStrong(v125, v149);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v127 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
          {
            v128 = objc_opt_class();
            v129 = NSStringFromClass(v128);
            v130 = NSStringFromSelector(a2);
            if (v126)
            {
              v131 = @"YES";
            }

            else
            {
              v131 = @"NO";
            }

            v132 = [MEMORY[0x277CBEAA8] date];
            [v132 timeIntervalSinceDate:v124];
            v134 = v133;
            +[RTRuntime footprint];
            *buf = 138413570;
            *&buf[4] = v129;
            v173 = 2112;
            v174 = v130;
            v175 = 2048;
            v176 = 100;
            v177 = 2112;
            v178 = v131;
            v179 = 2048;
            v180 = v134;
            v181 = 2048;
            v182 = v135;
            _os_log_impl(&dword_2304B3000, v127, OS_LOG_TYPE_INFO, "%@, %@, sync clusters to watch with default limit, %lu, status, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
          }
        }

        objc_autoreleasePoolPop(v123);
        (v146[2])(v146, v167[5]);
        v136 = v124;
      }
    }

    v5 = v136;
    goto LABEL_85;
  }

  v25 = MEMORY[0x277CCA9B8];
  v194 = *MEMORY[0x277CCA450];
  v195 = @"requires valid UUID.";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
  v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v26];
  (v146[2])(v146, v27);

LABEL_86:
}

void __48__RTWorkoutRouteManager__deleteWorkout_handler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __48__RTWorkoutRouteManager__deleteWorkout_handler___block_invoke_177(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_computeAndSaveDistanceMatrixForWorkoutUUIDs:(id)a3 distanceMetric:(int64_t)a4 error:(id *)a5
{
  v757[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v612 = v6;
  if (v6)
  {
    v7 = v6;
    v541 = a4;
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v719 = 0;
    v720 = &v719;
    v721 = 0x3032000000;
    v722 = __Block_byref_object_copy__153;
    v723 = __Block_byref_object_dispose__153;
    v724 = 0;
    v602 = v8;
    if ([v7 count] >= 2)
    {
      v542 = v9;
      v540 = objc_autoreleasePoolPush();
      v601 = [MEMORY[0x277CBEAA8] date];
      v14 = [MEMORY[0x277CBEAA8] date];
      [v14 timeIntervalSinceDate:v601];
      v16 = v15;
      v591 = objc_opt_new();
      v586 = objc_opt_new();
      v597 = objc_opt_new();
      v610 = 0;
      v715 = 0;
      v716 = &v715;
      v717 = 0x2020000000;
      v718 = 0;
      v711 = 0;
      v712 = &v711;
      v713 = 0x2020000000;
      v709 = 0x2020000000;
      v705 = 0x2020000000;
      v701 = 0x2020000000;
      v697 = 0x2020000000;
      v693 = 0x2020000000;
      v689 = 0x2020000000;
      v685 = 0x2020000000;
      v681 = 0x2020000000;
      v677 = 0x2020000000;
      v17 = 10000.0;
      v673 = 0x2020000000;
      v714 = 0;
      v707 = 0;
      v708 = &v707;
      v710 = 0;
      v703 = 0;
      v704 = &v703;
      v706 = 0;
      v699 = 0;
      v700 = &v699;
      v702 = 0;
      v695 = 0;
      v696 = &v695;
      v698 = 0;
      v691 = 0;
      v692 = &v691;
      v694 = 0;
      v687 = 0;
      v688 = &v687;
      v690 = 0;
      v683 = 0;
      v684 = &v683;
      v686 = 0;
      v679 = 0;
      v680 = &v679;
      v682 = 0;
      v675 = 0;
      v676 = &v675;
      v678 = 0;
      v671 = 0;
      v672 = &v671;
      v674 = 0;
      v571 = *MEMORY[0x277D01448];
      v573 = *MEMORY[0x277CCA450];
      for (i = 1; ; i = v595 + 1)
      {
        v595 = i;
        if (v610 >= [v612 count])
        {
          break;
        }

        v593 = objc_autoreleasePoolPush();
        v19 = v716;
        v20 = v716[3];
        if (v20)
        {
          free(v20);
          v19 = v716;
        }

        v19[3] = 0;
        v21 = v708;
        v22 = v708[3];
        if (v22)
        {
          free(v22);
          v21 = v708;
        }

        v21[3] = 0;
        v23 = v700;
        v24 = v700[3];
        if (v24)
        {
          free(v24);
          v23 = v700;
        }

        v23[3] = 0;
        v712[3] = 0;
        v696[3] = 0;
        v25 = [v612 objectAtIndexedSubscript:v610];
        v26 = [v597 containsObject:v25];

        if (!v26)
        {
          v33 = [v612 objectAtIndexedSubscript:v610];
          v34 = [v591 objectForKeyedSubscript:v33];
          v35 = v34 == 0;

          if (v35)
          {
            v36 = objc_opt_new();
            v37 = [v612 objectAtIndexedSubscript:v610];
            [v591 setObject:v36 forKeyedSubscript:v37];
          }

          v665 = 0;
          v666 = &v665;
          v667 = 0x3032000000;
          v668 = __Block_byref_object_copy__153;
          v669 = __Block_byref_object_dispose__153;
          v670 = 0;
          v38 = dispatch_semaphore_create(0);
          v39 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
          v40 = [v612 objectAtIndexedSubscript:v610];
          v661[0] = MEMORY[0x277D85DD0];
          v661[1] = 3221225472;
          v661[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke;
          v661[3] = &unk_2788C4490;
          v663 = &v665;
          v664 = &v719;
          v41 = v38;
          v662 = v41;
          [v39 fetchWorkoutDistancesWithWorkout:v40 handler:v661];

          dsema = v41;
          v42 = [MEMORY[0x277CBEAA8] now];
          v43 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v43))
          {
            v44 = [MEMORY[0x277CBEAA8] now];
            [v44 timeIntervalSinceDate:v42];
            v46 = v45;
            v47 = objc_opt_new();
            v48 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
            v49 = [MEMORY[0x277CCACC8] callStackSymbols];
            v50 = [v49 filteredArrayUsingPredicate:v48];
            v51 = [v50 firstObject];

            [v47 submitToCoreAnalytics:v51 type:1 duration:v46];
            v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v52, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v53 = MEMORY[0x277CCA9B8];
            v757[0] = v573;
            *buf = @"semaphore wait timeout";
            v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v757 count:1];
            v55 = [v53 errorWithDomain:v571 code:15 userInfo:v54];

            if (v55)
            {
              v56 = v55;
            }
          }

          else
          {
            v55 = 0;
          }

          v589 = v55;
          if (v589)
          {
            v57 = v602 != 0;
          }

          else
          {
            v57 = 0;
          }

          if (v57)
          {
            v58 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v492 = objc_opt_class();
              v493 = NSStringFromClass(v492);
              v494 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v493;
              v728 = 2112;
              v729 = v494;
              v730 = 2112;
              v731 = v589;
              _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            v59 = v589;
            [v602 addObject:v589];
            v27 = 0;
            v32 = 8;
            v589 = 0;
            goto LABEL_362;
          }

          if (v602 && v720[5])
          {
            v60 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v495 = objc_opt_class();
              v496 = NSStringFromClass(v495);
              v497 = NSStringFromSelector(a2);
              v498 = v720[5];
              *buf = 138412802;
              *&buf[4] = v496;
              v728 = 2112;
              v729 = v497;
              v730 = 2112;
              v731 = v498;
              _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            [v602 addObject:v720[5]];
            v27 = 0;
            v59 = v720[5];
            v720[5] = 0;
            v32 = 8;
            goto LABEL_362;
          }

          v61 = objc_opt_new();
          v660 = 0u;
          v659 = 0u;
          v658 = 0u;
          v657 = 0u;
          v62 = v666[5];
          v63 = [v62 countByEnumeratingWithState:&v657 objects:v756 count:16];
          if (v63)
          {
            v64 = *v658;
            do
            {
              for (j = 0; j != v63; ++j)
              {
                if (*v658 != v64)
                {
                  objc_enumerationMutation(v62);
                }

                v66 = *(*(&v657 + 1) + 8 * j);
                v67 = objc_autoreleasePoolPush();
                v68 = [v66 firstWorkout];
                [v61 addObject:v68];

                v69 = [v66 secondWorkout];
                [v61 addObject:v69];

                objc_autoreleasePoolPop(v67);
              }

              v63 = [v62 countByEnumeratingWithState:&v657 objects:v756 count:16];
            }

            while (v63);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v70 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
            {
              v71 = objc_opt_class();
              v72 = NSStringFromClass(v71);
              v73 = NSStringFromSelector(a2);
              v74 = [v61 count];
              +[RTRuntime footprint];
              *buf = 138413314;
              *&buf[4] = v72;
              v728 = 2112;
              v729 = v73;
              v730 = 2048;
              v731 = v610;
              v732 = 2048;
              v733 = v74;
              v734 = 2048;
              v735 = v75;
              _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%@, %@, i, %lu, computedDistanceMatrixUUIDs count, %lu, footprint, %.4f MB", buf, 0x34u);
            }
          }

          v76 = v666[5];
          v666[5] = 0;

          v27 = 0;
          v77 = v595;
          while (2)
          {
            v613 = v77;
            if (v77 >= [v612 count])
            {
LABEL_353:
              v483 = [v612 objectAtIndexedSubscript:v610];
              v484 = [v591 objectForKeyedSubscript:v483];

              if (v484)
              {
                v485 = [v612 objectAtIndexedSubscript:v610];
                [v591 removeObjectForKey:v485];
              }

              if (v16 > kRTMaxTimeIntervalPerFunction && [(RTWorkoutRouteManager *)self isSchedulerTriggered])
              {
                v486 = MEMORY[0x277CCA9B8];
                v725 = v573;
                v726 = @"max time for function exceeded";
                v487 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v726 forKeys:&v725 count:1];
                v59 = [v486 errorWithDomain:v571 code:15 userInfo:v487];

                [v602 addObject:v59];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v488 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v488, OS_LOG_TYPE_INFO))
                  {
                    v489 = objc_opt_class();
                    v490 = NSStringFromClass(v489);
                    v491 = NSStringFromSelector(a2);
                    *buf = 138413058;
                    *&buf[4] = v490;
                    v728 = 2112;
                    v729 = v491;
                    v730 = 2048;
                    v731 = v16;
                    v732 = 2048;
                    v733 = kRTMaxTimeIntervalPerFunction;
                    _os_log_impl(&dword_2304B3000, v488, OS_LOG_TYPE_INFO, "%@, %@, max time for function exceeded, current time taken by function, %lu, time threshold, %lu", buf, 0x2Au);
                  }
                }

                v32 = 6;
LABEL_362:
              }

              else
              {
                v32 = 0;
              }

              _Block_object_dispose(&v665, 8);
LABEL_365:

              goto LABEL_366;
            }

            context = objc_autoreleasePoolPush();
            v78 = v692;
            v79 = v692[3];
            if (v79)
            {
              free(v79);
              v78 = v692;
            }

            v78[3] = 0;
            v80 = v684;
            v81 = v684[3];
            if (v81)
            {
              free(v81);
              v80 = v684;
            }

            v80[3] = 0;
            v82 = v676;
            v83 = v676[3];
            if (v83)
            {
              free(v83);
              v82 = v676;
            }

            v82[3] = 0;
            v84 = [MEMORY[0x277CBEAA8] date];
            [v84 timeIntervalSinceDate:v601];
            v16 = v85;

            if (v16 > kRTMaxTimeIntervalPerFunction && [(RTWorkoutRouteManager *)self isSchedulerTriggered])
            {
              v86 = 17;
              goto LABEL_129;
            }

            v87 = [MEMORY[0x277CBEAA8] date];

            v603 = [MEMORY[0x277CBEAA8] date];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v88 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                v89 = objc_opt_class();
                v90 = NSStringFromClass(v89);
                v91 = NSStringFromSelector(a2);
                v92 = [v612 objectAtIndexedSubscript:v610];
                v93 = [v612 objectAtIndexedSubscript:v613];
                *buf = 138413570;
                *&buf[4] = v90;
                v728 = 2112;
                v729 = v91;
                v730 = 2048;
                v731 = v610;
                v732 = 2048;
                v733 = v613;
                v734 = 2112;
                v735 = v92;
                v736 = 2112;
                v737 = v93;
                _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_INFO, "%@, %@, comparing i, %lu, j, %lu, workout UUID, %@, other workout UUID, %@,", buf, 0x3Eu);
              }
            }

            v94 = [v612 objectAtIndexedSubscript:v613];
            v95 = [v61 containsObject:v94];

            if (v95)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v96 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
                {
                  v97 = objc_opt_class();
                  v98 = NSStringFromClass(v97);
                  v99 = NSStringFromSelector(a2);
                  v100 = [MEMORY[0x277CBEAA8] date];
                  [v100 timeIntervalSinceDate:v603];
                  v102 = v101;
                  +[RTRuntime footprint];
                  *buf = 138413570;
                  *&buf[4] = v98;
                  v728 = 2112;
                  v729 = v99;
                  v730 = 2048;
                  v731 = v610;
                  v732 = 2048;
                  v733 = v613;
                  v734 = 2048;
                  v735 = v102;
                  v736 = 2048;
                  v737 = v103;
                  _os_log_impl(&dword_2304B3000, v96, OS_LOG_TYPE_INFO, "%@, %@, workout exists, comparison skipped between i, %lu, j, %lu, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
                }
              }

              v104 = [v612 objectAtIndexedSubscript:v613];
              [v61 removeObject:v104];

              v105 = MEMORY[0x277CCABB0];
              log = [MEMORY[0x277CBEAA8] date];
              [log timeIntervalSinceDate:v87];
              v106 = [v105 numberWithDouble:?];
              v107 = (v720 + 5);
              obj = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v106 distanceMatrixKey:1 error:&obj];
              objc_storeStrong(v107, obj);

              goto LABEL_75;
            }

            v108 = [v612 objectAtIndexedSubscript:v613];
            v109 = [v597 containsObject:v108];

            if (v109)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                log = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  v110 = objc_opt_class();
                  v111 = NSStringFromClass(v110);
                  v112 = NSStringFromSelector(a2);
                  v113 = [v612 objectAtIndexedSubscript:v613];
                  *buf = 138413058;
                  *&buf[4] = v111;
                  v728 = 2112;
                  v729 = v112;
                  v730 = 2048;
                  v731 = v610;
                  v732 = 2112;
                  v733 = v113;
                  _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "%@, %@, skip comparison for j, %lu, workout UUID, %@; j is marked as contained in small bounding box", buf, 0x2Au);
                }

LABEL_75:
                v86 = 19;
LABEL_127:
              }

              else
              {
                v86 = 19;
              }

              v14 = v87;
LABEL_129:
              objc_autoreleasePoolPop(context);
              if (v86 != 19 && v86)
              {
                goto LABEL_353;
              }

              v77 = v613 + 1;
              continue;
            }

            break;
          }

          if (!v27)
          {
            v120 = (v720 + 5);
            v655 = v720[5];
            [(RTWorkoutRouteManager *)self _refreshWorkoutsCache:v586 workoutUUIDs:v612 startingIndex:v610 error:&v655];
            objc_storeStrong(v120, v655);
            if (v602 && v720[5])
            {
              v121 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
              {
                v198 = objc_opt_class();
                v199 = NSStringFromClass(v198);
                v200 = NSStringFromSelector(a2);
                v201 = v720[5];
                *buf = 138412802;
                *&buf[4] = v199;
                v728 = 2112;
                v729 = v200;
                v730 = 2112;
                v731 = v201;
                _os_log_error_impl(&dword_2304B3000, v121, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
              v27 = 0;
            }

            else
            {
              v126 = [v612 objectAtIndexedSubscript:v610];
              v127 = (v720 + 5);
              v654 = v720[5];
              v27 = [(RTWorkoutRouteManager *)self _getWorkoutFromWorkouts:v586 UUID:v126 error:&v654];
              objc_storeStrong(v127, v654);

              if (!v602 || !v720[5])
              {
                goto LABEL_81;
              }

              v128 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
              {
                v206 = objc_opt_class();
                v207 = NSStringFromClass(v206);
                v208 = NSStringFromSelector(a2);
                v209 = v720[5];
                *buf = 138412802;
                *&buf[4] = v207;
                v728 = 2112;
                v729 = v208;
                v730 = 2112;
                v731 = v209;
                _os_log_error_impl(&dword_2304B3000, v128, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
            }

            log = v720[5];
            v720[5] = 0;
            goto LABEL_75;
          }

LABEL_81:
          v114 = [v612 objectAtIndexedSubscript:v613];
          v115 = (v720 + 5);
          v653 = v720[5];
          log = [(RTWorkoutRouteManager *)self _getWorkoutFromWorkouts:v586 UUID:v114 error:&v653];
          objc_storeStrong(v115, v653);

          v116 = v720[5];
          if (v116)
          {
            v720[5] = 0;

            v117 = (v720 + 5);
            v652 = v720[5];
            [(RTWorkoutRouteManager *)self _refreshWorkoutsCache:v586 workoutUUIDs:v612 startingIndex:v613 error:&v652];
            objc_storeStrong(v117, v652);
            if (v602 && v720[5])
            {
              v118 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
              {
                v190 = objc_opt_class();
                v191 = NSStringFromClass(v190);
                v192 = NSStringFromSelector(a2);
                v193 = v720[5];
                *buf = 138412802;
                *&buf[4] = v191;
                v728 = 2112;
                v729 = v192;
                v730 = 2112;
                v731 = v193;
                _os_log_error_impl(&dword_2304B3000, v118, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
              v119 = v720[5];
              v720[5] = 0;
              v86 = 19;
              goto LABEL_126;
            }

            v122 = [v612 objectAtIndexedSubscript:v613];
            v123 = (v720 + 5);
            v651 = v720[5];
            v124 = [(RTWorkoutRouteManager *)self _getWorkoutFromWorkouts:v586 UUID:v122 error:&v651];
            objc_storeStrong(v123, v651);

            if (v602 && v720[5])
            {
              v125 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
              {
                v202 = objc_opt_class();
                v203 = NSStringFromClass(v202);
                v204 = NSStringFromSelector(a2);
                v205 = v720[5];
                *buf = 138412802;
                *&buf[4] = v203;
                v728 = 2112;
                v729 = v204;
                v730 = 2112;
                v731 = v205;
                _os_log_error_impl(&dword_2304B3000, v125, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
              v119 = v720[5];
              v720[5] = 0;
              v86 = 19;
              log = v124;
              goto LABEL_126;
            }

            log = v124;
          }

          [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v27];
          [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:log];
          v688[3] = 0;
          v672[3] = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v129 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
            {
              v543 = v129;
              v130 = objc_opt_class();
              v565 = NSStringFromClass(v130);
              v583 = NSStringFromSelector(a2);
              v548 = [v27 UUID];
              v561 = [objc_opt_class() stringFromWorkoutActivityType:{-[NSObject workoutActivityType](v27, "workoutActivityType")}];
              v557 = [v27 startDate];
              v578 = [v557 stringFromDate];
              v554 = [v27 sourceRevision];
              v551 = [v554 source];
              v545 = [v551 name];
              v131 = [log UUID];
              v132 = [objc_opt_class() stringFromWorkoutActivityType:{-[NSObject workoutActivityType](log, "workoutActivityType")}];
              v133 = [log startDate];
              v134 = [v133 stringFromDate];
              v135 = [log sourceRevision];
              v136 = [v135 source];
              v137 = [v136 name];
              *buf = 138414594;
              *&buf[4] = v565;
              v728 = 2112;
              v729 = v583;
              v730 = 2112;
              v731 = v548;
              v732 = 2112;
              v733 = v561;
              v734 = 2112;
              v735 = v578;
              v736 = 2112;
              v737 = v545;
              v738 = 2112;
              v739 = v131;
              v740 = 2112;
              v741 = v132;
              v742 = 2112;
              v743 = v134;
              v744 = 2112;
              v745 = v137;
              _os_log_impl(&dword_2304B3000, v543, OS_LOG_TYPE_INFO, "%@, %@, workout UUID, %@, activityType, %@, startDate, %@, source, %@, other workout UUID, %@, other activityType, %@, other startDate, %@, other source, %@,", buf, 0x66u);

              v129 = v543;
            }
          }

          if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v27])
          {
            v566 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:log];
          }

          else
          {
            v566 = 0;
          }

          v584 = objc_opt_new();
          v138 = [MEMORY[0x277CBEAA8] date];

          v139 = (v720 + 5);
          v650 = v720[5];
          v579 = v27;
          v140 = [(RTWorkoutRouteManager *)self _isPreFilteredForWorkout:v27 otherWorkout:log preFilteringResults:v584 error:&v650];
          objc_storeStrong(v139, v650);
          if (v602 && v720[5])
          {
            v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              v194 = objc_opt_class();
              v195 = NSStringFromClass(v194);
              v196 = NSStringFromSelector(a2);
              v197 = v720[5];
              *buf = 138412802;
              *&buf[4] = v195;
              v728 = 2112;
              v729 = v196;
              v730 = 2112;
              v731 = v197;
              _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            goto LABEL_122;
          }

          if (v140)
          {
            v142 = MEMORY[0x277CCABB0];
            v143 = [MEMORY[0x277CBEAA8] date];
            [v143 timeIntervalSinceDate:v138];
            v144 = [v142 numberWithDouble:?];
            v145 = (v720 + 5);
            v649 = v720[5];
            [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v144 distanceMatrixKey:2 error:&v649];
            objc_storeStrong(v145, v649);

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v227 = objc_opt_class();
                v228 = NSStringFromClass(v227);
                v229 = NSStringFromSelector(a2);
                v230 = v720[5];
                *buf = 138412802;
                *&buf[4] = v228;
                v728 = 2112;
                v729 = v229;
                v730 = 2112;
                v731 = v230;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_122;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v146 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
              {
                v170 = objc_opt_class();
                v171 = NSStringFromClass(v170);
                v172 = NSStringFromSelector(a2);
                v173 = [MEMORY[0x277CBEAA8] date];
                [v173 timeIntervalSinceDate:v603];
                v175 = v174;
                +[RTRuntime footprint];
                *buf = 138413570;
                *&buf[4] = v171;
                v728 = 2112;
                v729 = v172;
                v730 = 2048;
                v731 = v610;
                v732 = 2048;
                v733 = v613;
                v734 = 2048;
                v735 = v175;
                v736 = 2048;
                v737 = v176;
                _os_log_impl(&dword_2304B3000, v146, OS_LOG_TYPE_INFO, "%@, %@, comparison done between i, %lu, j, %lu, breaking the inner loop after prefiltered by metadata, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);
              }

              v86 = 17;
              goto LABEL_124;
            }

            v86 = 17;
LABEL_125:
            v87 = v138;
            v119 = v584;
LABEL_126:

            goto LABEL_127;
          }

          v147 = [v612 objectAtIndexedSubscript:v613];
          v148 = [v591 objectForKeyedSubscript:v147];
          v149 = v148 == 0;

          if (v149)
          {
            v150 = objc_opt_new();
            v151 = [v612 objectAtIndexedSubscript:v613];
            [v591 setObject:v150 forKeyedSubscript:v151];
          }

          v562 = [MEMORY[0x277CBEAA8] date];

          if (!v700[3])
          {
            v152 = [v612 objectAtIndexedSubscript:v610];
            v153 = [v591 objectForKeyedSubscript:v152];
            v154 = [v153 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
            v155 = v154 == 0;

            if (v155)
            {
              v648[0] = MEMORY[0x277D85DD0];
              v648[1] = 3221225472;
              v648[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_187;
              v648[3] = &unk_2788D0520;
              v648[4] = &v699;
              v648[5] = &v695;
              v648[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:v27 decimationLevel:3 limit:1 handler:v648];
              if (v602)
              {
                if (v720[5])
                {
                  v169 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                  {
                    v398 = objc_opt_class();
                    v399 = NSStringFromClass(v398);
                    v400 = NSStringFromSelector(a2);
                    v401 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v399;
                    v728 = 2112;
                    v729 = v400;
                    v730 = 2112;
                    v731 = v401;
                    _os_log_error_impl(&dword_2304B3000, v169, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

                  goto LABEL_142;
                }
              }
            }
          }

          if (!v676[3])
          {
            v156 = [v612 objectAtIndexedSubscript:v613];
            v157 = [v591 objectForKeyedSubscript:v156];
            v158 = [v157 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
            v159 = v158 == 0;

            if (v159)
            {
              v647[0] = MEMORY[0x277D85DD0];
              v647[1] = 3221225472;
              v647[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_189;
              v647[3] = &unk_2788D0520;
              v647[4] = &v675;
              v647[5] = &v671;
              v647[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:log decimationLevel:3 limit:1 handler:v647];
              if (v602)
              {
                if (v720[5])
                {
                  v169 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                  {
                    v402 = objc_opt_class();
                    v403 = NSStringFromClass(v402);
                    v404 = NSStringFromSelector(a2);
                    v405 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v403;
                    v728 = 2112;
                    v729 = v404;
                    v730 = 2112;
                    v731 = v405;
                    _os_log_error_impl(&dword_2304B3000, v169, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

                  goto LABEL_142;
                }
              }
            }
          }

          v160 = v700[3];
          v161 = v696[3];
          v162 = [v612 objectAtIndexedSubscript:v610];
          v163 = [v591 objectForKeyedSubscript:v162];
          v164 = v676[3];
          v165 = v672[3];
          v166 = [v612 objectAtIndexedSubscript:v613];
          v167 = [v591 objectForKeyedSubscript:v166];
          v168 = (v720 + 5);
          v646 = v720[5];
          v558 = [(RTWorkoutRouteManager *)self _isPreFilteredForWorkout:v579 firstFewLocations:v160 firstFewLocationsCount:v161 cachedDictionary:v163 otherWorkout:log firstFewOtherLocations:v164 firstFewOtherLocationsCount:v165 cachedOtherDictionary:v167 preFilteringResults:v584 error:&v646];
          objc_storeStrong(v168, v646);

          if (v602 && v720[5])
          {
            v169 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
            {
              v356 = objc_opt_class();
              v357 = NSStringFromClass(v356);
              v358 = NSStringFromSelector(a2);
              v359 = v720[5];
              *buf = 138412802;
              *&buf[4] = v357;
              v728 = 2112;
              v729 = v358;
              v730 = 2112;
              v731 = v359;
              _os_log_error_impl(&dword_2304B3000, v169, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

LABEL_142:

            [v602 addObject:v720[5]];
            v146 = v720[5];
            v720[5] = 0;
            v86 = 19;
            v138 = v562;
LABEL_123:
            v27 = v579;
            goto LABEL_124;
          }

          v177 = v676;
          v178 = v676[3];
          if (v178)
          {
            free(v178);
            v177 = v676;
          }

          v177[3] = 0;
          if (v558)
          {
            v179 = MEMORY[0x277CCABB0];
            v180 = [MEMORY[0x277CBEAA8] date];
            [v180 timeIntervalSinceDate:v562];
            v181 = [v179 numberWithDouble:?];
            v182 = (v720 + 5);
            v645 = v720[5];
            [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v181 distanceMatrixKey:3 error:&v645];
            v183 = v645;
            goto LABEL_212;
          }

          v138 = [MEMORY[0x277CBEAA8] date];

          if (!v716[3])
          {
            v184 = [v612 objectAtIndexedSubscript:v610];
            v185 = [v591 objectForKeyedSubscript:v184];
            v186 = [v185 count] < 2;

            v27 = v579;
            if (v186)
            {
              v187 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v579];
              v644[0] = MEMORY[0x277D85DD0];
              if (v187)
              {
                v188 = 1;
              }

              else
              {
                v188 = 3;
              }

              v644[1] = 3221225472;
              v644[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_190;
              v644[3] = &unk_2788D0520;
              v644[4] = &v715;
              v644[5] = &v711;
              v644[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:v579 decimationLevel:v188 limit:0 handler:v644];
              if (v602 && v720[5])
              {
                v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                {
                  v439 = objc_opt_class();
                  v440 = NSStringFromClass(v439);
                  v441 = NSStringFromSelector(a2);
                  v442 = v720[5];
                  *buf = 138412802;
                  *&buf[4] = v440;
                  v728 = 2112;
                  v729 = v441;
                  v730 = 2112;
                  v731 = v442;
                  _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                }

                goto LABEL_333;
              }

              v643[0] = MEMORY[0x277D85DD0];
              v643[1] = 3221225472;
              v643[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_191;
              v643[3] = &unk_2788D0520;
              v643[4] = &v707;
              v643[5] = &v703;
              v643[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:v579 decimationLevel:2 limit:0 handler:v643];
              if (v602)
              {
                if (v720[5])
                {
                  v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                  {
                    v451 = objc_opt_class();
                    v452 = NSStringFromClass(v451);
                    v453 = NSStringFromSelector(a2);
                    v454 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v452;
                    v728 = 2112;
                    v729 = v453;
                    v730 = 2112;
                    v731 = v454;
                    _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

                  goto LABEL_333;
                }
              }
            }
          }

          v210 = [v612 objectAtIndexedSubscript:v610];
          v211 = [v591 objectForKeyedSubscript:v210];
          v212 = [v211 count] < 2;

          if (v212)
          {
            v213 = v716[3];
            v214 = v712[3];
            v215 = v708[3];
            v216 = v704[3];
            v217 = [v612 objectAtIndexedSubscript:v610];
            v218 = [v591 objectForKeyedSubscript:v217];
            v219 = (v720 + 5);
            v642 = v720[5];
            [(RTWorkoutRouteManager *)self _preComputeCacheForWorkout:v579 locations:v213 locationsCount:v214 decimatedLocations:v215 decimatedLocationsCount:v216 cachedDictionary:v218 error:&v642];
            objc_storeStrong(v219, v642);

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v410 = objc_opt_class();
                v411 = NSStringFromClass(v410);
                v412 = NSStringFromSelector(a2);
                v413 = v720[5];
                *buf = 138412802;
                *&buf[4] = v411;
                v728 = 2112;
                v729 = v412;
                v730 = 2112;
                v731 = v413;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_122;
            }

            v220 = v708;
            v221 = v708[3];
            if (v221)
            {
              free(v221);
              v220 = v708;
            }

            v220[3] = 0;
            v704[3] = 0;
          }

          if (!v692[3])
          {
            v222 = [v612 objectAtIndexedSubscript:v613];
            v223 = [v591 objectForKeyedSubscript:v222];
            v224 = [v223 count] < 2;

            v27 = v579;
            if (v224)
            {
              v225 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:log];
              v641[0] = MEMORY[0x277D85DD0];
              if (v225)
              {
                v226 = 1;
              }

              else
              {
                v226 = 3;
              }

              v641[1] = 3221225472;
              v641[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_192;
              v641[3] = &unk_2788D0520;
              v641[4] = &v691;
              v641[5] = &v687;
              v641[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:log decimationLevel:v226 limit:0 handler:v641];
              if (v602 && v720[5])
              {
                v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                {
                  v443 = objc_opt_class();
                  v444 = NSStringFromClass(v443);
                  v445 = NSStringFromSelector(a2);
                  v446 = v720[5];
                  *buf = 138412802;
                  *&buf[4] = v444;
                  v728 = 2112;
                  v729 = v445;
                  v730 = 2112;
                  v731 = v446;
                  _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                }

                goto LABEL_333;
              }

              v640[0] = MEMORY[0x277D85DD0];
              v640[1] = 3221225472;
              v640[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_193;
              v640[3] = &unk_2788D0520;
              v640[4] = &v683;
              v640[5] = &v679;
              v640[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:log decimationLevel:2 limit:0 handler:v640];
              if (v602)
              {
                if (v720[5])
                {
                  v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                  {
                    v455 = objc_opt_class();
                    v456 = NSStringFromClass(v455);
                    v457 = NSStringFromSelector(a2);
                    v458 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v456;
                    v728 = 2112;
                    v729 = v457;
                    v730 = 2112;
                    v731 = v458;
                    _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

LABEL_333:

                  [v602 addObject:v720[5]];
                  v146 = v720[5];
                  v720[5] = 0;
LABEL_334:
                  v86 = 19;
                  goto LABEL_124;
                }
              }
            }
          }

          v231 = [v612 objectAtIndexedSubscript:v613];
          v232 = [v591 objectForKeyedSubscript:v231];
          v233 = [v232 count] < 2;

          if (v233)
          {
            v234 = v692[3];
            v235 = v688[3];
            v236 = v684[3];
            v237 = v680[3];
            v238 = [v612 objectAtIndexedSubscript:v613];
            v239 = [v591 objectForKeyedSubscript:v238];
            v240 = (v720 + 5);
            v639 = v720[5];
            [(RTWorkoutRouteManager *)self _preComputeCacheForWorkout:log locations:v234 locationsCount:v235 decimatedLocations:v236 decimatedLocationsCount:v237 cachedDictionary:v239 error:&v639];
            objc_storeStrong(v240, v639);

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v424 = objc_opt_class();
                v425 = NSStringFromClass(v424);
                v426 = NSStringFromSelector(a2);
                v427 = v720[5];
                *buf = 138412802;
                *&buf[4] = v425;
                v728 = 2112;
                v729 = v426;
                v730 = 2112;
                v731 = v427;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_122;
            }

            v241 = v684;
            v242 = v684[3];
            if (v242)
            {
              free(v242);
              v241 = v684;
            }

            v241[3] = 0;
            v680[3] = 0;
          }

          v243 = MEMORY[0x277CCABB0];
          v180 = [MEMORY[0x277CBEAA8] date];
          [v180 timeIntervalSinceDate:v138];
          v181 = [v243 numberWithDouble:?];
          v182 = (v720 + 5);
          v638 = v720[5];
          [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v181 distanceMatrixKey:5 error:&v638];
          v183 = v638;
          v562 = v138;
LABEL_212:
          v244 = v183;
          v245 = *v182;
          *v182 = v244;

          v138 = [MEMORY[0x277CBEAA8] date];

          if (v558)
          {
LABEL_222:
            v258 = 1;
          }

          else
          {
            v246 = [v612 objectAtIndexedSubscript:v610];
            v247 = [v591 objectForKeyedSubscript:v246];
            v248 = [v612 objectAtIndexedSubscript:v613];
            v249 = [v591 objectForKeyedSubscript:v248];
            v250 = (v720 + 5);
            v637 = v720[5];
            v251 = [(RTWorkoutRouteManager *)self _isPreFilteredLocationCountBasedForWorkout:v579 cachedDictionary:v247 otherWorkout:log cachedOtherDictionary:v249 preFilteringResults:v584 error:&v637];
            objc_storeStrong(v250, v637);

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v390 = objc_opt_class();
                v391 = NSStringFromClass(v390);
                v392 = NSStringFromSelector(a2);
                v393 = v720[5];
                *buf = 138412802;
                *&buf[4] = v391;
                v728 = 2112;
                v729 = v392;
                v730 = 2112;
                v731 = v393;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

LABEL_122:

              [v602 addObject:v720[5]];
              v146 = v720[5];
              v720[5] = 0;
              v86 = 19;
              goto LABEL_123;
            }

            if (v251)
            {
              v252 = MEMORY[0x277CCABB0];
              v253 = [MEMORY[0x277CBEAA8] date];
              [v253 timeIntervalSinceDate:v138];
              v254 = [v252 numberWithDouble:?];
              v255 = (v720 + 5);
              v636 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v254 distanceMatrixKey:7 error:&v636];
              objc_storeStrong(v255, v636);

              v256 = v692;
              v257 = v692[3];
              if (v257)
              {
                free(v257);
                v256 = v692;
              }

              v256[3] = 0;
              v688[3] = 0;
              goto LABEL_222;
            }

            v258 = 0;
          }

          v259 = [MEMORY[0x277CBEAA8] date];

          if (v258)
          {
LABEL_233:
            v273 = 1;
          }

          else
          {
            v260 = [v612 objectAtIndexedSubscript:v610];
            v261 = [v591 objectForKeyedSubscript:v260];
            v262 = [v612 objectAtIndexedSubscript:v613];
            v263 = [v591 objectForKeyedSubscript:v262];
            v264 = (v720 + 5);
            v635 = v720[5];
            v265 = [(RTWorkoutRouteManager *)self _isPreFilteredLastLocationBasedForWorkout:v579 cachedDictionary:v261 otherWorkout:log cachedOtherDictionary:v263 preFilteringResults:v584 error:&v635];
            objc_storeStrong(v264, v635);

            if (v602 && v720[5])
            {
              v266 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
              {
                v394 = objc_opt_class();
                v395 = NSStringFromClass(v394);
                v396 = NSStringFromSelector(a2);
                v397 = v720[5];
                *buf = 138412802;
                *&buf[4] = v395;
                v728 = 2112;
                v729 = v396;
                v730 = 2112;
                v731 = v397;
                _os_log_error_impl(&dword_2304B3000, v266, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
              v146 = v720[5];
              v720[5] = 0;
              v86 = 19;
              v138 = v259;
              goto LABEL_123;
            }

            if (v265)
            {
              v267 = MEMORY[0x277CCABB0];
              v268 = [MEMORY[0x277CBEAA8] date];
              [v268 timeIntervalSinceDate:v259];
              v269 = [v267 numberWithDouble:?];
              v270 = (v720 + 5);
              v634 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v269 distanceMatrixKey:4 error:&v634];
              objc_storeStrong(v270, v634);

              v271 = v692;
              v272 = v692[3];
              if (v272)
              {
                free(v272);
                v271 = v692;
              }

              v271[3] = 0;
              v688[3] = 0;
              goto LABEL_233;
            }

            v273 = 0;
          }

          v138 = [MEMORY[0x277CBEAA8] date];

          if (v273)
          {
LABEL_244:
            v286 = 1;
          }

          else
          {
            v274 = [v612 objectAtIndexedSubscript:v610];
            v275 = [v591 objectForKeyedSubscript:v274];
            v276 = [v612 objectAtIndexedSubscript:v613];
            v277 = [v591 objectForKeyedSubscript:v276];
            v278 = (v720 + 5);
            v633 = v720[5];
            v279 = [(RTWorkoutRouteManager *)self _isPreFilteredCentroidBasedForWorkout:v579 cachedDictionary:v275 otherWorkout:log cachedOtherDictionary:v277 preFilteringResults:v584 error:&v633];
            objc_storeStrong(v278, v633);

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v406 = objc_opt_class();
                v407 = NSStringFromClass(v406);
                v408 = NSStringFromSelector(a2);
                v409 = v720[5];
                *buf = 138412802;
                *&buf[4] = v407;
                v728 = 2112;
                v729 = v408;
                v730 = 2112;
                v731 = v409;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_122;
            }

            if (v279)
            {
              v280 = MEMORY[0x277CCABB0];
              v281 = [MEMORY[0x277CBEAA8] date];
              [v281 timeIntervalSinceDate:v138];
              v282 = [v280 numberWithDouble:?];
              v283 = (v720 + 5);
              v632 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v282 distanceMatrixKey:6 error:&v632];
              objc_storeStrong(v283, v632);

              v284 = v692;
              v285 = v692[3];
              if (v285)
              {
                free(v285);
                v284 = v692;
              }

              v284[3] = 0;
              v688[3] = 0;
              goto LABEL_244;
            }

            v286 = 0;
          }

          v287 = [MEMORY[0x277CBEAA8] date];

          if (v286)
          {
            goto LABEL_256;
          }

          v288 = [v612 objectAtIndexedSubscript:v610];
          v289 = [v591 objectForKeyedSubscript:v288];
          v290 = [v612 objectAtIndexedSubscript:v613];
          v291 = [v591 objectForKeyedSubscript:v290];
          v292 = (v720 + 5);
          v631 = v720[5];
          v293 = [(RTWorkoutRouteManager *)self _isPreFilteredIOUBasedForWorkout:v579 cachedDictionary:v289 otherWorkout:log cachedOtherDictionary:v291 preFilteringResults:v584 error:&v631];
          objc_storeStrong(v292, v631);

          if (v602 && v720[5])
          {
            v294 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
            {
              v414 = objc_opt_class();
              v415 = NSStringFromClass(v414);
              v416 = NSStringFromSelector(a2);
              v417 = v720[5];
              *buf = 138412802;
              *&buf[4] = v415;
              v728 = 2112;
              v729 = v416;
              v730 = 2112;
              v731 = v417;
              _os_log_error_impl(&dword_2304B3000, v294, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

LABEL_317:

            [v602 addObject:v720[5]];
            v146 = v720[5];
            v720[5] = 0;
            v86 = 19;
            v138 = v287;
            goto LABEL_123;
          }

          if (v293)
          {
            v295 = MEMORY[0x277CCABB0];
            v296 = [MEMORY[0x277CBEAA8] date];
            [v296 timeIntervalSinceDate:v287];
            v297 = [v295 numberWithDouble:?];
            v298 = (v720 + 5);
            v630 = v720[5];
            [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v297 distanceMatrixKey:8 error:&v630];
            objc_storeStrong(v298, v630);

            goto LABEL_253;
          }

          v319 = [v612 objectAtIndexedSubscript:v610];
          v320 = [v591 objectForKeyedSubscript:v319];
          v321 = (v720 + 5);
          v629 = v720[5];
          v322 = [(RTWorkoutRouteManager *)self _isPreFilteredRunningTrackBasedForWorkout:v579 cachedDictionary:v320 error:&v629];
          objc_storeStrong(v321, v629);

          if (v602 && v720[5])
          {
            v294 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
            {
              v447 = objc_opt_class();
              v448 = NSStringFromClass(v447);
              v449 = NSStringFromSelector(a2);
              v450 = v720[5];
              *buf = 138412802;
              *&buf[4] = v448;
              v728 = 2112;
              v729 = v449;
              v730 = 2112;
              v731 = v450;
              _os_log_error_impl(&dword_2304B3000, v294, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            goto LABEL_317;
          }

          if (v322)
          {
            v360 = [v579 UUID];
            v361 = [v597 containsObject:v360];

            if ((v361 & 1) == 0)
            {
              v362 = [v579 UUID];
              [v597 addObject:v362];
            }

            goto LABEL_253;
          }

          v367 = [v612 objectAtIndexedSubscript:v613];
          v368 = [v591 objectForKeyedSubscript:v367];
          v369 = (v720 + 5);
          v628 = v720[5];
          v370 = [(RTWorkoutRouteManager *)self _isPreFilteredRunningTrackBasedForWorkout:log cachedDictionary:v368 error:&v628];
          objc_storeStrong(v369, v628);

          if (v602 && v720[5])
          {
            v294 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
            {
              v467 = objc_opt_class();
              v468 = NSStringFromClass(v467);
              v469 = NSStringFromSelector(a2);
              v470 = v720[5];
              *buf = 138412802;
              *&buf[4] = v468;
              v728 = 2112;
              v729 = v469;
              v730 = 2112;
              v731 = v470;
              _os_log_error_impl(&dword_2304B3000, v294, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            goto LABEL_317;
          }

          if (v370)
          {
            v387 = [log UUID];
            v388 = [v597 containsObject:v387];

            if ((v388 & 1) == 0)
            {
              v389 = [log UUID];
              [v597 addObject:v389];
            }

LABEL_253:
            v299 = v692;
            v300 = v692[3];
            if (v300)
            {
              free(v300);
              v299 = v692;
            }

            v299[3] = 0;
            v688[3] = 0;
LABEL_256:
            v301 = 1;
          }

          else
          {
            v301 = 0;
          }

          v138 = [MEMORY[0x277CBEAA8] date];

          v27 = v579;
          if (v301)
          {
LABEL_269:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v314 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
              {
                v315 = objc_opt_class();
                v316 = NSStringFromClass(v315);
                v317 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v316;
                v728 = 2112;
                v729 = v317;
                _os_log_impl(&dword_2304B3000, v314, OS_LOG_TYPE_INFO, "%@, %@, final pre-filtered, YES", buf, 0x16u);
              }

              v318 = v17;
              goto LABEL_281;
            }

            v318 = v17;
          }

          else
          {
            v302 = [v612 objectAtIndexedSubscript:v610];
            v303 = [v591 objectForKeyedSubscript:v302];
            v304 = [v612 objectAtIndexedSubscript:v613];
            v305 = [v591 objectForKeyedSubscript:v304];
            v306 = (v720 + 5);
            v627 = v720[5];
            v307 = [(RTWorkoutRouteManager *)self _isPreFilteredCurveOrientationBasedForWorkout:v579 cachedDictionary:v303 otherWorkout:log cachedOtherDictionary:v305 error:&v627];
            objc_storeStrong(v306, v627);
            v27 = v579;

            if (v602 && v720[5])
            {
              v141 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
              {
                v428 = objc_opt_class();
                v429 = NSStringFromClass(v428);
                v430 = NSStringFromSelector(a2);
                v431 = v720[5];
                *buf = 138412802;
                *&buf[4] = v429;
                v728 = 2112;
                v729 = v430;
                v730 = 2112;
                v731 = v431;
                _os_log_error_impl(&dword_2304B3000, v141, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_122;
            }

            if (v307)
            {
              v308 = MEMORY[0x277CCABB0];
              v309 = [MEMORY[0x277CBEAA8] date];
              [v309 timeIntervalSinceDate:v138];
              v310 = [v308 numberWithDouble:?];
              v311 = (v720 + 5);
              v626 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v310 distanceMatrixKey:13 error:&v626];
              objc_storeStrong(v311, v626);
              v27 = v579;

              v312 = v692;
              v313 = v692[3];
              if (v313)
              {
                free(v313);
                v312 = v692;
              }

              v312[3] = 0;
              v688[3] = 0;
              goto LABEL_269;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v349 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v349, OS_LOG_TYPE_INFO))
              {
                v350 = objc_opt_class();
                v351 = NSStringFromClass(v350);
                v352 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v351;
                v728 = 2112;
                v729 = v352;
                _os_log_impl(&dword_2304B3000, v349, OS_LOG_TYPE_INFO, "%@, %@, final pre-filtered, NO", buf, 0x16u);
              }
            }

            if (!v716[3])
            {
              v371 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v579];
              v625[0] = MEMORY[0x277D85DD0];
              v372 = v371 ? 1 : 3;
              v625[1] = 3221225472;
              v625[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_194;
              v625[3] = &unk_2788D0520;
              v625[4] = &v715;
              v625[5] = &v711;
              v625[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:v579 decimationLevel:v372 limit:0 handler:v625];
              if (v602)
              {
                if (v720[5])
                {
                  v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                  {
                    v471 = objc_opt_class();
                    v472 = NSStringFromClass(v471);
                    v473 = NSStringFromSelector(a2);
                    v474 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v472;
                    v728 = 2112;
                    v729 = v473;
                    v730 = 2112;
                    v731 = v474;
                    _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

                  goto LABEL_333;
                }
              }
            }

            if (!v692[3])
            {
              v373 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:log];
              v624[0] = MEMORY[0x277D85DD0];
              v374 = v373 ? 1 : 3;
              v624[1] = 3221225472;
              v624[2] = __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_195;
              v624[3] = &unk_2788D0520;
              v624[4] = &v691;
              v624[5] = &v687;
              v624[6] = &v719;
              [(RTWorkoutRouteManager *)self _getLocationsForWorkout:log decimationLevel:v374 limit:0 handler:v624];
              if (v602)
              {
                if (v720[5])
                {
                  v189 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                  {
                    v475 = objc_opt_class();
                    v476 = NSStringFromClass(v475);
                    v477 = NSStringFromSelector(a2);
                    v478 = v720[5];
                    *buf = 138412802;
                    *&buf[4] = v476;
                    v728 = 2112;
                    v729 = v477;
                    v730 = 2112;
                    v731 = v478;
                    _os_log_error_impl(&dword_2304B3000, v189, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
                  }

                  goto LABEL_333;
                }
              }
            }

            v353 = [v579 workoutActivityType];
            v354 = (v720 + 5);
            v623 = v720[5];
            v314 = [(RTWorkoutRouteManager *)self _getConstantValueForDistanceThresholdUsingDistanceMetric:v541 isDecimated:v566 workoutActivityType:v353 error:&v623];
            objc_storeStrong(v354, v623);
            if (v602 && v720[5])
            {
              v355 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
              {
                v459 = objc_opt_class();
                v460 = NSStringFromClass(v459);
                v461 = NSStringFromSelector(a2);
                v462 = v720[5];
                *buf = 138412802;
                *&buf[4] = v460;
                v728 = 2112;
                v729 = v461;
                v730 = 2112;
                v731 = v462;
                _os_log_error_impl(&dword_2304B3000, v355, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              goto LABEL_340;
            }

            v363 = [MEMORY[0x277CBEAA8] date];

            v364 = (v720 + 5);
            v622 = v720[5];
            [(RTWorkoutRouteManager *)self similarityDistanceUsingPreFilteringResults:v584 error:&v622];
            v318 = v365;
            objc_storeStrong(v364, v622);
            if (v602 && v720[5])
            {
              v366 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
              {
                v463 = objc_opt_class();
                v464 = NSStringFromClass(v463);
                v465 = NSStringFromSelector(a2);
                v466 = v720[5];
                *buf = 138412802;
                *&buf[4] = v464;
                v728 = 2112;
                v729 = v465;
                v730 = 2112;
                v731 = v466;
                _os_log_error_impl(&dword_2304B3000, v366, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v720[5]];
              v138 = v363;
              goto LABEL_341;
            }

            v375 = MEMORY[0x277CCABB0];
            if (v318 == v17)
            {
              v376 = [MEMORY[0x277CBEAA8] date];
              [v376 timeIntervalSinceDate:v363];
              v377 = [v375 numberWithDouble:?];
              v378 = (v720 + 5);
              v621 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v377 distanceMatrixKey:10 error:&v621];
              objc_storeStrong(v378, v621);

              v138 = [MEMORY[0x277CBEAA8] date];

              v379 = [(RTWorkoutRouteManager *)self distanceCalculator];
              v380 = v716[3];
              v381 = v712[3];
              v382 = v692[3];
              v383 = v688[3];
              [v314 doubleValue];
              v384 = (v720 + 5);
              v620 = v720[5];
              [v379 distanceFromLocations:v380 countOfFromLocations:v381 toLocations:v382 countOfToLocations:v383 distanceMetric:v541 threshold:&v620 error:?];
              v318 = v385;
              objc_storeStrong(v384, v620);

              if (v602 && v720[5])
              {
                v355 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v355, OS_LOG_TYPE_ERROR))
                {
                  v479 = objc_opt_class();
                  v480 = NSStringFromClass(v479);
                  v481 = NSStringFromSelector(a2);
                  v482 = v720[5];
                  *buf = 138412802;
                  *&buf[4] = v480;
                  v728 = 2112;
                  v729 = v481;
                  v730 = 2112;
                  v731 = v482;
                  _os_log_error_impl(&dword_2304B3000, v355, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);

                  v27 = v579;
                }

LABEL_340:

                [v602 addObject:v720[5]];
LABEL_341:
                v386 = v720[5];
                v720[5] = 0;

                v86 = 19;
                v146 = v314;
                goto LABEL_124;
              }

              [v314 doubleValue];
              v418 = MEMORY[0x277CCABB0];
              if (v318 <= v419)
              {
                v420 = [MEMORY[0x277CBEAA8] date];
                [v420 timeIntervalSinceDate:v138];
                v421 = [v418 numberWithDouble:?];
                v422 = (v720 + 5);
                v618 = v720[5];
                [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v421 distanceMatrixKey:11 error:&v618];
                v423 = v618;
              }

              else
              {
                v420 = [MEMORY[0x277CBEAA8] date];
                [v420 timeIntervalSinceDate:v138];
                v421 = [v418 numberWithDouble:?];
                v422 = (v720 + 5);
                v619 = v720[5];
                [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v421 distanceMatrixKey:9 error:&v619];
                v423 = v619;
              }
            }

            else
            {
              v420 = [MEMORY[0x277CBEAA8] date];
              [v420 timeIntervalSinceDate:v363];
              v421 = [v375 numberWithDouble:?];
              v422 = (v720 + 5);
              v617 = v720[5];
              [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v421 distanceMatrixKey:12 error:&v617];
              v423 = v617;
              v138 = v363;
            }

            v435 = v423;
            v436 = *v422;
            *v422 = v435;

            v437 = v692;
            v438 = v692[3];
            if (v438)
            {
              free(v438);
              v437 = v692;
            }

            v437[3] = 0;
            v688[3] = 0;
LABEL_281:
          }

          v323 = [RTWorkoutDistance alloc];
          v324 = [v27 UUID];
          v325 = [log UUID];
          v326 = [objc_opt_class() RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:{-[NSObject workoutActivityType](v27, "workoutActivityType")}];
          v327 = [MEMORY[0x277CBEAA8] now];
          LOBYTE(v537) = 0;
          v146 = [(RTWorkoutDistance *)v323 initWithObjectID:0 firstWorkout:v324 secondWorkout:v325 distanceMetric:v541 workoutActivityType:v326 areBothWorkoutsDecimated:v566 distance:v318 isVisited:v537 date:v327];

          [v542 addObject:v146];
          if ([v542 count] >= 0x64)
          {
            v616 = 0;
            [(RTWorkoutRouteManager *)self _storeWorkoutDistances:v542 error:&v616];
            v328 = v616;
            [v542 removeAllObjects];
            if (v602 && v328)
            {
              v329 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
              {
                v432 = objc_opt_class();
                v433 = NSStringFromClass(v432);
                v434 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v433;
                v728 = 2112;
                v729 = v434;
                v730 = 2112;
                v731 = v328;
                _os_log_error_impl(&dword_2304B3000, v329, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
              }

              [v602 addObject:v328];
              goto LABEL_334;
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v330 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v330, OS_LOG_TYPE_INFO))
            {
              v538 = v138;
              v539 = v17;
              v331 = objc_opt_class();
              v567 = NSStringFromClass(v331);
              v580 = NSStringFromSelector(a2);
              v546 = [v27 UUID];
              v544 = [log UUID];
              v563 = [(RTWorkoutRouteManager *)self healthKitManager];
              v555 = [v563 _getTotalDistanceForWorkout:v27];
              v559 = [MEMORY[0x277CCDAB0] meterUnit];
              [v555 doubleValueForUnit:v559];
              v333 = v332;
              v552 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v552 _getDurationForWorkout:v27];
              v335 = v334;
              v336 = v712[3];
              v549 = [(RTWorkoutRouteManager *)self healthKitManager];
              v337 = [v549 _getTotalDistanceForWorkout:log];
              v338 = [MEMORY[0x277CCDAB0] meterUnit];
              [v337 doubleValueForUnit:v338];
              v340 = v339;
              v341 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v341 _getDurationForWorkout:log];
              v343 = v342;
              v344 = v688[3];
              v345 = [MEMORY[0x277CBEAA8] date];
              [v345 timeIntervalSinceDate:v603];
              v347 = v346;
              +[RTRuntime footprint];
              *buf = 138415874;
              *&buf[4] = v567;
              v728 = 2112;
              v729 = v580;
              v730 = 2048;
              v731 = v610;
              v732 = 2048;
              v733 = v613;
              v734 = 2112;
              v735 = v546;
              v736 = 2112;
              v737 = v544;
              v738 = 2112;
              v739 = v146;
              v740 = 2048;
              v741 = v333;
              v742 = 2048;
              v743 = v335;
              v744 = 2048;
              v745 = v336;
              v746 = 2048;
              v747 = v340;
              v748 = 2048;
              v749 = v343;
              v750 = 2048;
              v751 = v344;
              v752 = 2048;
              v753 = v347;
              v754 = 2048;
              v755 = v348;
              _os_log_impl(&dword_2304B3000, v330, OS_LOG_TYPE_INFO, "%@, %@, comparison done between i, %lu, j, %lu, workout, %@, other workout, %@, workout distance record, %@, workout distance, %.3f meters, workout duration, %.3f sec, locations count, %lu, other workout distance, %.3f meters, other workout duration, %.3f sec, other locations count, %lu, latency, %.4f sec, footprint, %.4f MB", buf, 0x98u);

              v17 = v539;
              v138 = v538;
            }
          }

          [v584 removeAllObjects];
          v86 = 0;
LABEL_124:

          goto LABEL_125;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = NSStringFromSelector(a2);
            v31 = [v612 objectAtIndexedSubscript:v610];
            *buf = 138413058;
            *&buf[4] = v29;
            v728 = 2112;
            v729 = v30;
            v730 = 2048;
            v731 = v610;
            v732 = 2112;
            v733 = v31;
            _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, skip comparisons for i, %lu, workout UUID, %@; i is marked as contained in a small bounding box", buf, 0x2Au);
          }

          v32 = 8;
          goto LABEL_365;
        }

        v32 = 8;
LABEL_366:
        objc_autoreleasePoolPop(v593);
        if ((v32 | 8) != 8)
        {
          break;
        }

        ++v610;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v499 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v499, OS_LOG_TYPE_INFO))
        {
          v575 = v499;
          v500 = objc_opt_class();
          v611 = NSStringFromClass(v500);
          v614 = NSStringFromSelector(a2);
          v574 = [v612 count];
          v572 = [v612 count];
          loga = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          contexta = [loga objectForKeyedSubscript:@"distance_matrix_count_prefiltered_metadata"];
          v570 = [contexta unsignedIntegerValue];
          v604 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          dsemaa = [v604 objectForKeyedSubscript:@"distance_matrix_count_prefiltered_firstlocation"];
          v568 = [dsemaa unsignedIntegerValue];
          v598 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v596 = [v598 objectForKeyedSubscript:@"distance_matrix_count_prefiltered_locationscount"];
          v564 = [v596 unsignedIntegerValue];
          v594 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v592 = [v594 objectForKeyedSubscript:@"distance_matrix_count_prefiltered_lastlocation"];
          v560 = [v592 unsignedIntegerValue];
          v590 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v587 = [v590 objectForKeyedSubscript:@"distance_matrix_count_prefiltered_centroid"];
          v556 = [v587 unsignedIntegerValue];
          v585 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v582 = [v585 objectForKeyedSubscript:@"distance_matrix_count_prefiltered_iou"];
          v553 = [v582 unsignedIntegerValue];
          v581 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v577 = [v581 objectForKeyedSubscript:@"distance_matrix_count_lessthan_orequal_quicksimilarity"];
          v550 = [v577 unsignedIntegerValue];
          v576 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v501 = [v576 objectForKeyedSubscript:@"distance_matrix_count_exceeded_quicksimilarity"];
          v547 = [v501 unsignedIntegerValue];
          v502 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v503 = [v502 objectForKeyedSubscript:@"distance_matrix_count_lessthan_orequal_dtw"];
          v504 = [v503 unsignedIntegerValue];
          v505 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          v506 = [v505 objectForKeyedSubscript:@"distance_matrix_count_exceeded_dtw"];
          v507 = [v506 unsignedIntegerValue];
          v508 = _RTSafeArray();
          v509 = _RTMultiErrorCreate();
          +[RTRuntime footprint];
          *buf = 138415874;
          *&buf[4] = v611;
          v728 = 2112;
          v729 = v614;
          v730 = 2048;
          v731 = (v572 * (v574 - 1)) >> 1;
          v732 = 2048;
          v733 = v570;
          v734 = 2048;
          v735 = v568;
          v736 = 2048;
          v737 = v564;
          v738 = 2048;
          v739 = v560;
          v740 = 2048;
          v741 = v556;
          v742 = 2048;
          v743 = v553;
          v744 = 2048;
          v745 = v550;
          v746 = 2048;
          v747 = v547;
          v748 = 2048;
          v749 = v504;
          v750 = 2048;
          v751 = v507;
          v752 = 2112;
          v753 = v509;
          v754 = 2048;
          v755 = v510;
          v499 = v575;
          _os_log_impl(&dword_2304B3000, v575, OS_LOG_TYPE_INFO, "%@, %@, summary statistics, total comparisons done, %lu, prefiltered by metadata, %lu, prefiltered by first location, %lu, prefiltered by locations count, %lu, prefiltered by last location, %lu, prefiltered by centroid, %lu, prefiltered by IOU, %lu, quick similarity, %lu, exceeded quick similarity, %lu, less than or equal to DTW threshold, %lu, exceeded DTW threshold, %lu, error, %@, footprint, %.4f MB", buf, 0x98u);
        }
      }

      v511 = MEMORY[0x277CCABB0];
      v512 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      v513 = [v512 objectForKeyedSubscript:@"distance_matrix_total_number_of_comparisons"];
      v514 = [v511 numberWithUnsignedInteger:{objc_msgSend(v513, "unsignedIntegerValue") + ((objc_msgSend(v612, "count") * (objc_msgSend(v612, "count") - 1)) >> 1)}];
      v515 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
      [v515 setObject:v514 forKeyedSubscript:@"distance_matrix_total_number_of_comparisons"];

      v516 = v716;
      v517 = v716[3];
      if (v517)
      {
        free(v517);
        v516 = v716;
      }

      v516[3] = 0;
      v518 = v708;
      v519 = v708[3];
      if (v519)
      {
        free(v519);
        v518 = v708;
      }

      v518[3] = 0;
      v520 = v700;
      v521 = v700[3];
      if (v521)
      {
        free(v521);
        v520 = v700;
      }

      v520[3] = 0;
      v522 = v692;
      v523 = v692[3];
      if (v523)
      {
        free(v523);
        v522 = v692;
      }

      v522[3] = 0;
      v524 = v684;
      v525 = v684[3];
      if (v525)
      {
        free(v525);
        v524 = v684;
      }

      v524[3] = 0;
      v526 = v676;
      v527 = v676[3];
      if (v527)
      {
        free(v527);
        v526 = v676;
      }

      v526[3] = 0;
      _Block_object_dispose(&v671, 8);
      _Block_object_dispose(&v675, 8);
      _Block_object_dispose(&v679, 8);
      _Block_object_dispose(&v683, 8);
      _Block_object_dispose(&v687, 8);
      _Block_object_dispose(&v691, 8);
      _Block_object_dispose(&v695, 8);
      _Block_object_dispose(&v699, 8);
      _Block_object_dispose(&v703, 8);
      _Block_object_dispose(&v707, 8);
      _Block_object_dispose(&v711, 8);
      _Block_object_dispose(&v715, 8);

      objc_autoreleasePoolPop(v540);
      v528 = v602;
      v10 = v542;
      if ([v542 count])
      {
        v615 = 0;
        [(RTWorkoutRouteManager *)self _storeWorkoutDistances:v542 error:&v615];
        v529 = v615;

        if (v529)
        {
          v530 = v602 != 0;
        }

        else
        {
          v530 = 0;
        }

        if (v530)
        {
          v531 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v531, OS_LOG_TYPE_ERROR))
          {
            v534 = objc_opt_class();
            v535 = NSStringFromClass(v534);
            v536 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v535;
            v728 = 2112;
            v729 = v536;
            v730 = 2112;
            v731 = v529;
            _os_log_error_impl(&dword_2304B3000, v531, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
          }

          [v602 addObject:v529];
          v529 = 0;
        }

        v10 = 0;
        v528 = v602;
      }

      if (a5)
      {
        v537 = 1;
        v532 = _RTSafeArray();
        *a5 = _RTMultiErrorCreate();

        v528 = v602;
      }

      v11 = [v528 count] == 0;
    }

    else
    {
      v10 = v9;
      v11 = 1;
    }

    _Block_object_dispose(&v719, 8);

    v13 = v602;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    }

    v13 = [MEMORY[0x277CBEAC0] dictionary];
    v11 = v13 != 0;
  }

  return v11;
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_187(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_189(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_190(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_191(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_192(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_193(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_194(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void __91__RTWorkoutRouteManager__computeAndSaveDistanceMatrixForWorkoutUUIDs_distanceMetric_error___block_invoke_195(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

- (BOOL)_clearDistanceMatrixWithError:(id *)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  [(RTWorkoutRouteManager *)self _clearInMemoryClusters];
  v5 = dispatch_semaphore_create(0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__153;
  v46 = __Block_byref_object_dispose__153;
  v47 = 0;
  v6 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__RTWorkoutRouteManager__clearDistanceMatrixWithError___block_invoke;
  v39[3] = &unk_2788C4618;
  v41 = &v42;
  v7 = v5;
  v40 = v7;
  [v6 clearWithHandler:v39];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v53[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v53 count:1];
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
  v25 = v24;
  if (a3 && v24)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v32;
      v49 = 2112;
      v50 = v33;
      v51 = 2112;
      v52 = v25;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v27 = v25;
  }

  else
  {
    if (!a3 || !v43[5])
    {
      v29 = 1;
      goto LABEL_19;
    }

    v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      v37 = v43[5];
      *buf = 138412802;
      *&buf[4] = v35;
      v49 = 2112;
      v50 = v36;
      v51 = 2112;
      v52 = v37;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v27 = v43[5];
  }

  v29 = 0;
  *a3 = v27;
LABEL_19:

  _Block_object_dispose(&v42, 8);
  return v29;
}

void __55__RTWorkoutRouteManager__clearDistanceMatrixWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_clearInMemoryClusters
{
  v3 = [(RTWorkoutRouteManager *)self workoutActivityTypeToclustersSet];

  if (v3)
  {
    v4 = [(RTWorkoutRouteManager *)self workoutActivityTypeToclustersSet];
    [v4 removeAllObjects];
  }

  else
  {
    v4 = objc_opt_new();
    [(RTWorkoutRouteManager *)self setWorkoutActivityTypeToclustersSet:v4];
  }

  return 1;
}

- (BOOL)_preComputeCacheForWorkout:(id)a3 locations:(CLLocationCoordinate2D *)a4 locationsCount:(unint64_t)a5 decimatedLocations:(CLLocationCoordinate2D *)a6 decimatedLocationsCount:(unint64_t)a7 cachedDictionary:(id)a8 error:(id *)a9
{
  v82 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a8;
  v18 = v17;
  if (v16)
  {
    if (v17 && 2 * kRTSmoothingNumberOfLocations + 4 <= a5)
    {
      aSelector = a2;
      context = objc_autoreleasePoolPush();
      v64 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      *v64 = a4[a5 - 1];
      v19 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v20 = [(RTWorkoutRouteManager *)self distanceCalculator];
      v67 = 0;
      [v20 computeCentroid:a6 locationsCount:a7 error:&v67];
      v22 = v21;
      v24 = v23;
      v25 = v67;
      *v19 = v22;
      v19[1] = v24;

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v35 = [(RTWorkoutRouteManager *)self distanceCalculator];
        v66 = 0;
        v26 = [v35 rectVerticesFromCoordinates:a4 locationsCount:a5 ignoreNFirstAndLastLocations:kRTSmoothingNumberOfLocations error:&v66];
        v25 = v66;

        if (!v25)
        {
          v65 = 0;
          v36 = [(RTWorkoutRouteManager *)self _getCurveOrientationTypeForLocations:a4 locationsCount:a5 error:&v65];
          v37 = v65;
          if (v37)
          {
            v25 = v37;
          }

          else
          {
            v61 = v36;
            v43 = objc_alloc(MEMORY[0x277D011C0]);
            v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
            v46 = [v43 initWithFirstObject:v44 secondObject:v45];
            v71 = v46;
            v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
            [v18 setObject:v47 forKeyedSubscript:@"kRTCacheKeyLocationsCount"];

            v48 = [(RTWorkoutRouteManager *)self _getRTPairUsingCLLocationCoordinate2D:v64];
            v70 = v48;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
            [v18 setObject:v49 forKeyedSubscript:@"kRTCacheKeyLastLocation"];

            v50 = [(RTWorkoutRouteManager *)self _getRTPairUsingCLLocationCoordinate2D:v19];
            v69 = v50;
            v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
            [v18 setObject:v51 forKeyedSubscript:@"kRTCacheKeyCentroid"];

            v52 = [(RTWorkoutRouteManager *)self _getRTPairsFromCoordinates:v26 count:4];
            [v18 setObject:v52 forKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];

            v53 = objc_alloc(MEMORY[0x277D011C0]);
            v54 = [MEMORY[0x277CCABB0] numberWithInteger:v61];
            v55 = [MEMORY[0x277CCABB0] numberWithInteger:v61];
            v56 = [v53 initWithFirstObject:v54 secondObject:v55];
            v68 = v56;
            v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
            [v18 setObject:v57 forKeyedSubscript:@"kRTCacheKeyCurveOrientation"];

            v25 = 0;
          }
        }
      }

      objc_autoreleasePoolPop(context);
      free(v64);
      free(v19);
      if (v26)
      {
        free(v26);
      }

      v38 = a9;
      if (a9)
      {
        v39 = v25 == 0;
      }

      else
      {
        v39 = 1;
      }

      v28 = v39;
      if (!v39)
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          v60 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v73 = v59;
          v74 = 2112;
          v75 = v60;
          v76 = 2112;
          v77 = v25;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

          v38 = a9;
        }

        v41 = v25;
        *v38 = v25;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = a2;
          v33 = v31;
          v34 = NSStringFromSelector(v32);
          *buf = 138413314;
          v73 = v33;
          v74 = 2112;
          v75 = v34;
          v76 = 2048;
          v77 = a5;
          v78 = 2048;
          v79 = 2 * kRTSmoothingNumberOfLocations + 4;
          v80 = 2048;
          v81 = [v18 count];
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, preComputing cache failed, locations count, %lu, expected count, %lu, cachedDictionary count, %lu, ", buf, 0x34u);
        }
      }

      v28 = 0;
    }
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a9)
    {
      *a9 = _RTErrorInvalidParameterCreate(@"workout");
    }

    v28 = 1;
  }

  return v28;
}

- (BOOL)_isPreFilteredForWorkout:(id)a3 otherWorkout:(id)a4 preFilteringResults:(id)a5 error:(id *)a6
{
  v107 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_29;
    }

    v45 = @"workout";
    goto LABEL_28;
  }

  if (!v12)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_29;
    }

    v45 = @"otherWorkout";
LABEL_28:
    *a6 = _RTErrorInvalidParameterCreate(v45);
LABEL_29:
    v47 = 1;
    goto LABEL_56;
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = [v11 workoutActivityType];
  v16 = [v12 workoutActivityType];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v83 = v13;
    v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v76 = NSStringFromClass(v18);
      v19 = NSStringFromSelector(a2);
      v20 = @"YES";
      if (v15 == v16)
      {
        v20 = @"NO";
      }

      v74 = v20;
      v75 = v19;
      v80 = v14;
      [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v11, "workoutActivityType")}];
      aSelectora = a2;
      v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v12, "workoutActivityType")}];
      v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v23 = [MEMORY[0x277CBEAA8] date];
      [v23 timeIntervalSinceDate:v80];
      *buf = 138413570;
      v88 = v76;
      v89 = 2112;
      v90 = v75;
      v91 = 2112;
      v92 = v74;
      v93 = 2112;
      v94 = v21;
      v95 = 2112;
      v96 = v22;
      v97 = 2048;
      v98 = v24;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, activityType mismatch, pre-filtered, %@, workout activityType, %@, other workout activityType, %@, latency, %.4f sec,", buf, 0x3Eu);

      v14 = v80;
      a2 = aSelectora;
    }

    v13 = v83;
  }

  if (v15 == v16)
  {
    aSelector = a2;
    v25 = [MEMORY[0x277CBEAA8] date];

    v26 = @"YES";
    if (+[RTHealthKitManager isPermittedWorkoutActivityType:](RTHealthKitManager, "isPermittedWorkoutActivityType:", [v11 workoutActivityType]))
    {
      if (+[RTHealthKitManager isPermittedWorkoutActivityType:](RTHealthKitManager, "isPermittedWorkoutActivityType:", [v12 workoutActivityType]))
      {
        v26 = @"NO";
      }

      else
      {
        v26 = @"YES";
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v79 = NSStringFromClass(v28);
        v78 = NSStringFromSelector(a2);
        [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v11, "workoutActivityType")}];
        v84 = v13;
        v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v12, "workoutActivityType")}];
        v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v30 = [MEMORY[0x277CBEAA8] date];
        [v30 timeIntervalSinceDate:v25];
        *buf = 138413570;
        v88 = v79;
        v89 = 2112;
        v90 = v78;
        v91 = 2112;
        v92 = v26;
        v93 = 2112;
        v94 = v77;
        v95 = 2112;
        v96 = v29;
        v97 = 2048;
        v98 = v31;
        _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, unsupported activity type, pre-filtered, %@, workout activityType, %@, other workout activityType, %@, latency, %.4f sec,", buf, 0x3Eu);

        v13 = v84;
      }
    }

    v32 = [MEMORY[0x277CBEAA8] date];

    v33 = [(RTWorkoutRouteManager *)self healthKitManager];
    v34 = [v33 _getTotalDistanceForWorkout:v11];
    v35 = [MEMORY[0x277CCDAB0] meterUnit];
    [v34 doubleValueForUnit:v35];
    v37 = v36;

    v38 = [(RTWorkoutRouteManager *)self healthKitManager];
    v39 = [v38 _getTotalDistanceForWorkout:v12];
    v40 = [MEMORY[0x277CCDAB0] meterUnit];
    [v39 doubleValueForUnit:v40];
    v42 = v41;

    if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v11])
    {
      v43 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v12];
    }

    else
    {
      v43 = 0;
    }

    v86 = 0;
    -[RTWorkoutRouteManager _getConstantValueForString:isDecimated:workoutActivityType:error:](self, "_getConstantValueForString:isDecimated:workoutActivityType:error:", @"kRTPreFilterTotalDistanceDifferenceThreshold", v43, [v11 workoutActivityType], &v86);
    v50 = v49;
    v51 = v86;
    v48 = v51;
    if (a6 && v51)
    {
      v52 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        v73 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v88 = v72;
        v89 = 2112;
        v90 = v73;
        v91 = 2112;
        v92 = v48;
        _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v53 = v48;
      *a6 = v48;
      v47 = 1;
    }

    else
    {
      if (v37 >= v42)
      {
        v54 = v37;
      }

      else
      {
        v54 = v42;
      }

      v55 = v54 * v50;
      if (v55 > v50 * 1000.0)
      {
        v56 = v55;
      }

      else
      {
        v56 = v50 * 1000.0;
      }

      v57 = vabdd_f64(v37, v42);
      v47 = v57 > v56;
      if (v13)
      {
        if (v37 >= v42)
        {
          v58 = v42;
        }

        else
        {
          v58 = v37;
        }

        v59 = [MEMORY[0x277CCABB0] numberWithInt:v58 > 15000.0];
        [v13 setObject:v59 forKeyedSubscript:@"kRTSimilarityIsLongWorkout"];

        v60 = [MEMORY[0x277CCABB0] numberWithDouble:v57];
        [v13 setObject:v60 forKeyedSubscript:@"kRTSimilarityDifferenceInTotalDistance"];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = NSStringFromSelector(aSelector);
          v65 = @"NO";
          if (v57 > v56)
          {
            v65 = @"YES";
          }

          v85 = v65;
          v66 = [MEMORY[0x277CBEAA8] date];
          [v66 timeIntervalSinceDate:v32];
          v68 = v67;
          +[RTRuntime footprint];
          *buf = 138414594;
          v88 = v63;
          v89 = 2112;
          v90 = v64;
          v91 = 2112;
          v92 = v85;
          v93 = 2048;
          v94 = v37;
          v95 = 2048;
          v96 = v42;
          v97 = 2048;
          v98 = v57;
          v99 = 2048;
          v100 = v50;
          v101 = 2048;
          v102 = v56;
          v103 = 2048;
          v104 = v68;
          v105 = 2048;
          v106 = v69;
          _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, difference in totalDistance is greater than threshold, pre-filtered, %@, workout total distance (in meters), %.3f, other workout total distance (in meters), %.3f, total distance difference, %.3f, total distance difference threshold percentage, %.2f %%, total distance difference threshold, %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x66u);
        }
      }
    }

    v14 = v32;
  }

  else
  {
    v48 = 0;
    v47 = 1;
  }

LABEL_56:
  return v47;
}

- (BOOL)_isPreFilteredForWorkout:(id)a3 firstFewLocations:(CLLocationCoordinate2D *)a4 firstFewLocationsCount:(unint64_t)a5 cachedDictionary:(id)a6 otherWorkout:(id)a7 firstFewOtherLocations:(CLLocationCoordinate2D *)a8 firstFewOtherLocationsCount:(unint64_t)a9 cachedOtherDictionary:(id)a10 preFilteringResults:(id)a11 error:(id *)a12
{
  v17 = a12;
  v122[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = a11;
  v23 = v22;
  if (!v18)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a12)
    {
      goto LABEL_15;
    }

    v25 = @"workout";
    goto LABEL_14;
  }

  if (v20)
  {
    v100 = v22;
    v98 = v20;
    v97 = [MEMORY[0x277CBEAA8] date];
    if (a5)
    {
      if (a9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = [v19 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
      if (!v28)
      {
        goto LABEL_29;
      }

      v23 = v28;
      if (a9)
      {

        goto LABEL_22;
      }
    }

    v29 = [v21 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];

    if (!a5)
    {
    }

    if (v29)
    {
LABEL_22:
      v30 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      v31 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      context = objc_autoreleasePoolPush();
      v99 = v30;
      if (v19)
      {
        v32 = [v19 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];

        if (!v32)
        {
          *v30 = *a4;
          v55 = v30;
          v41 = self;
          v56 = [(RTWorkoutRouteManager *)self _getRTPairUsingCLLocationCoordinate2D:v55];
          v122[0] = v56;
          v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
          [v19 setObject:v57 forKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];

          if (v21)
          {
LABEL_27:
            v42 = [v21 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];

            if (v42)
            {
              v43 = [v21 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
              v44 = [v43 firstObject];

              v45 = [v44 firstObject];
              [v45 doubleValue];
              v47 = v46;
              v48 = [v44 secondObject];
              [v48 doubleValue];
              *v31 = CLLocationCoordinate2DMake(v47, v49);
            }

            else
            {
              *v31 = *a8;
              v58 = [(RTWorkoutRouteManager *)v41 _getRTPairUsingCLLocationCoordinate2D:v31];
              v121 = v58;
              v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
              [v21 setObject:v59 forKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
            }

LABEL_36:
            v60 = [(RTWorkoutRouteManager *)v41 distanceCalculator];
            v104 = 0;
            [v60 distanceFromLocationCoordinate:v99 toLocationCoordinate:v31 error:&v104];
            v62 = v61;
            v54 = v104;

            if (!v54)
            {
              if (v100)
              {
                v63 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
                [v100 setObject:v63 forKeyedSubscript:@"kRTSimilarityDistanceBetweenFirstLocations"];
              }

              if ([(RTWorkoutRouteManager *)v41 _shouldDecimateWorkout:v18])
              {
                v64 = [(RTWorkoutRouteManager *)v41 _shouldDecimateWorkout:v20];
              }

              else
              {
                v64 = 0;
              }

              v103 = 0;
              -[RTWorkoutRouteManager _getConstantValueForString:isDecimated:workoutActivityType:error:](v41, "_getConstantValueForString:isDecimated:workoutActivityType:error:", @"kRTPreFilterFirstLocationsDistanceThreshold", v64, [v18 workoutActivityType], &v103);
              v66 = v65;
              v67 = v103;
              if (!v67)
              {
                v71 = [(RTWorkoutRouteManager *)v41 healthKitManager];
                v72 = [v71 _getTotalDistanceForWorkout:v18];
                v73 = [MEMORY[0x277CCDAB0] meterUnit];
                [v72 doubleValueForUnit:v73];
                v75 = v74;

                v76 = [(RTWorkoutRouteManager *)v41 healthKitManager];
                v77 = [v76 _getTotalDistanceForWorkout:v20];
                v78 = [MEMORY[0x277CCDAB0] meterUnit];
                [v77 doubleValueForUnit:v78];
                v80 = v79;

                if (v75 >= v80)
                {
                  v81 = v75;
                }

                else
                {
                  v81 = v80;
                }

                v82 = fmin(v66 * v81, 350.0);
                if (v82 >= 50.0)
                {
                  v83 = v82;
                }

                else
                {
                  v83 = 50.0;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v84 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                  {
                    v85 = objc_opt_class();
                    v86 = NSStringFromClass(v85);
                    v87 = NSStringFromSelector(a2);
                    if (v62 <= v83)
                    {
                      v88 = @"NO";
                    }

                    else
                    {
                      v88 = @"YES";
                    }

                    v89 = [MEMORY[0x277CBEAA8] date];
                    [v89 timeIntervalSinceDate:v97];
                    v91 = v90;
                    +[RTRuntime footprint];
                    *buf = 138414082;
                    v106 = v86;
                    v107 = 2112;
                    v108 = v87;
                    v109 = 2112;
                    v110 = v88;
                    v111 = 2048;
                    v112 = *&v62;
                    v113 = 2048;
                    v114 = *&v66;
                    v115 = 2048;
                    v116 = *&v83;
                    v117 = 2048;
                    v118 = v91;
                    v119 = 2048;
                    v120 = v92;
                    _os_log_impl(&dword_2304B3000, v84, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, distanceBetweenFirstLocations is greater than distance threshold, pre-filtered, %@, distanceBetweenFirstLocations (in meters), %.3f, distance threshold percentage, %.3f, distance threshold (in meters), %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x52u);
                  }
                }

                objc_autoreleasePoolPop(context);
                v54 = 0;
                v27 = v62 > v83;
                v20 = v98;
                goto LABEL_45;
              }

              v54 = v67;
            }

            objc_autoreleasePoolPop(context);
            v27 = 0;
LABEL_45:
            free(v99);
            free(v31);
            if (v17)
            {
              v23 = v100;
              if (v54)
              {
                v68 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  v93 = objc_opt_class();
                  v94 = NSStringFromClass(v93);
                  v95 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v106 = v94;
                  v107 = 2112;
                  v108 = v95;
                  v109 = 2112;
                  v110 = v54;
                  _os_log_error_impl(&dword_2304B3000, v68, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
                }

                v69 = v54;
                *v17 = v54;
                v27 = 1;
              }
            }

            else
            {
              v23 = v100;
            }

LABEL_52:

            goto LABEL_53;
          }

LABEL_34:
          *v31 = *a8;
          goto LABEL_36;
        }

        v33 = [v19 objectForKeyedSubscript:@"kRTCacheKeyFirstFewLocations"];
        v34 = [v33 firstObject];

        v35 = [v34 firstObject];
        [v35 doubleValue];
        v37 = v36;
        [v34 secondObject];
        v39 = v38 = v31;
        [v39 doubleValue];
        *v30 = CLLocationCoordinate2DMake(v37, v40);

        v31 = v38;
        v17 = a12;
      }

      else
      {
        *v30 = *a4;
      }

      v41 = self;
      if (v21)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

LABEL_29:
    v27 = 1;
    v23 = v100;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v50 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(a2);
        *buf = 138413826;
        v106 = v52;
        v107 = 2112;
        v108 = v53;
        v109 = 2112;
        v110 = @"YES";
        v111 = 2048;
        v112 = a5;
        v113 = 2048;
        v114 = a9;
        v115 = 2048;
        v116 = [v19 count];
        v117 = 2048;
        v118 = [v21 count];
        _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, locations count is zero, pre-filtered, %@, firstFewLocations count, %lu, firstFewOtherLocations count, %lu, cachedDictionary count, %lu, cachedOtherDictionary count, %lu", buf, 0x48u);
      }

      v54 = 0;
      v27 = 1;
    }

    else
    {
      v54 = 0;
    }

    goto LABEL_52;
  }

  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
  }

  if (a12)
  {
    v25 = @"otherWorkout";
LABEL_14:
    *a12 = _RTErrorInvalidParameterCreate(v25);
  }

LABEL_15:
  v27 = 1;
LABEL_53:

  return v27;
}

- (BOOL)_isPreFilteredLocationCountBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8
{
  v171 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v144 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  if (!v15)
  {
    v104 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v104, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_69;
    }

    v105 = @"workout";
    goto LABEL_68;
  }

  if (!v16)
  {
    v106 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v106, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_69;
    }

    v105 = @"otherWorkout";
LABEL_68:
    *a8 = _RTErrorInvalidParameterCreate(v105);
LABEL_69:
    LOBYTE(v25) = 1;
    goto LABEL_79;
  }

  v140 = v18;
  if (v144)
  {
    v20 = [v144 objectForKeyedSubscript:@"kRTCacheKeyLocationsCount"];
    v21 = v20;
    if (v17 && v20)
    {
      v22 = [v17 objectForKeyedSubscript:@"kRTCacheKeyLocationsCount"];

      if (v22)
      {
        aSelector = a2;
        v124 = a8;
        v23 = 0;
        v24 = 1;
        v135 = v17;
        while (1)
        {
          LOBYTE(v25) = v24;
          if ((v24 & 1) == 0)
          {
            goto LABEL_77;
          }

          context = objc_autoreleasePoolPush();
          v141 = [MEMORY[0x277CBEAA8] date];

          v26 = [v144 objectForKeyedSubscript:@"kRTCacheKeyLocationsCount"];
          v27 = [v26 firstObject];

          v138 = v27;
          v28 = [v27 firstObject];
          v143 = [v28 unsignedIntegerValue];

          v29 = [v17 objectForKeyedSubscript:@"kRTCacheKeyLocationsCount"];
          v30 = [v29 firstObject];

          v137 = v30;
          v31 = [v30 firstObject];
          v32 = [v31 unsignedIntegerValue];

          if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v15])
          {
            v33 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v16];
          }

          else
          {
            v33 = 0;
          }

          v34 = aSelector;
          v35 = [v15 workoutActivityType];
          v146 = 0;
          [(RTWorkoutRouteManager *)self _getConstantValueForString:@"kRTPreFilterDifferenceBetweenLocationsThreshold" isDecimated:v33 workoutActivityType:v35 error:&v146];
          v37 = v36;
          v38 = v146;
          if (v38)
          {
            v103 = v38;
            v23 = v141;
LABEL_93:

            objc_autoreleasePoolPop(context);
            v17 = v135;
            v25 = v124;
            if (!v124)
            {
              goto LABEL_78;
            }

            v119 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              v121 = objc_opt_class();
              v122 = NSStringFromClass(v121);
              v123 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v148 = v122;
              v149 = 2112;
              v150 = v123;
              v151 = 2112;
              v152 = v103;
              _os_log_error_impl(&dword_2304B3000, v119, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

              v25 = v124;
            }

            v120 = v103;
            *v25 = v103;
            goto LABEL_75;
          }

          v39 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v39 _getDurationForWorkout:v15];
          if (v40 == 0.0)
          {
            break;
          }

          v41 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v41 _getDurationForWorkout:v16];
          v43 = v42;

          v44 = 1;
          v45 = 0.0;
          if (v43 == 0.0 || !v143)
          {
            goto LABEL_30;
          }

          v46 = 0.0;
          if (v32)
          {
            v47 = [(RTWorkoutRouteManager *)self healthKitManager];
            v48 = v47;
            v49 = v143;
            if (v143 >= v32)
            {
              v50 = v32;
            }

            else
            {
              v50 = v143;
            }

            if (v143 <= v32)
            {
              v49 = v32;
            }

            if (v143 >= v32)
            {
              v51 = v16;
            }

            else
            {
              v51 = v15;
            }

            if (v143 >= v32)
            {
              v52 = v15;
            }

            else
            {
              v52 = v16;
            }

            v46 = v50 / v49;
            [v47 _getDurationForWorkout:v51];
            v54 = v53;
            v55 = [(RTWorkoutRouteManager *)self healthKitManager];
            [v55 _getDurationForWorkout:v52];
            v45 = v54 / v56;

            v44 = v46 - v45 > v37;
          }

LABEL_31:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v57 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v58 = objc_opt_class();
              NSStringFromClass(v58);
              v59 = v133 = v32;
              v60 = NSStringFromSelector(aSelector);
              v61 = @"NO";
              if (v44)
              {
                v61 = @"YES";
              }

              v127 = v60;
              v129 = v61;
              v132 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v132 _getDurationForWorkout:v15];
              v125 = v62;
              v63 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v63 _getDurationForWorkout:v16];
              v65 = v64;
              v66 = [MEMORY[0x277CBEAA8] date];
              [v66 timeIntervalSinceDate:v141];
              v68 = v67;
              +[RTRuntime footprint];
              *buf = 138415106;
              v148 = v59;
              v149 = 2112;
              v150 = v127;
              v151 = 2112;
              v152 = v129;
              v153 = 2048;
              v154 = v143;
              v155 = 2048;
              v156 = v133;
              v157 = 2048;
              v158 = *&v125;
              v159 = 2048;
              v160 = v65;
              v161 = 2048;
              v162 = v46;
              v163 = 2048;
              v164 = v45;
              v165 = 2048;
              v166 = v37;
              v167 = 2048;
              v168 = v68;
              v169 = 2048;
              v170 = v69;
              _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, difference in number of locations is greater than threshold, pre-filtered, %@, locations count, %lu, other locations count, %lu, workout duration, %lu, other workout duration, %lu, difference in number of locations percentage, %.3f, difference in duration percentage, %.3f, difference in number of locations percentage threshold, %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x7Au);

              v34 = aSelector;
              v32 = v133;
            }
          }

          if (v44)
          {
            goto LABEL_90;
          }

          if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v15]|| [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v16])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v112 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
              {
                v113 = objc_opt_class();
                v114 = NSStringFromClass(v113);
                v115 = NSStringFromSelector(v34);
                if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v15])
                {
                  v116 = @"YES";
                }

                else
                {
                  v116 = @"NO";
                }

                v117 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v16];
                *buf = 138413314;
                if (v117)
                {
                  v118 = @"YES";
                }

                else
                {
                  v118 = @"NO";
                }

                v148 = v114;
                v149 = 2112;
                v150 = v115;
                v151 = 2112;
                v152 = @"NO";
                v153 = 2112;
                v154 = v116;
                v155 = 2112;
                v156 = v118;
                _os_log_impl(&dword_2304B3000, v112, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, decimated workouts for rate check, pre-filtered, %@, workout decimated, %@, other workout decimated, %@", buf, 0x34u);
              }
            }

LABEL_90:

            objc_autoreleasePoolPop(context);
            v103 = 0;
            v23 = v141;
            LOBYTE(v25) = v44;
            v17 = v135;
            goto LABEL_78;
          }

          v23 = [MEMORY[0x277CBEAA8] date];

          v70 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v70 _getDurationForWorkout:v15];
          v72 = v71;
          v73 = v143;

          v74 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v74 _getDurationForWorkout:v15];
          v76 = v75;

          if (v143 && v72 < v73)
          {
            v77 = v76 / v73;
          }

          else
          {
            v77 = v73 / v76;
          }

          v78 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v78 _getDurationForWorkout:v16];
          v80 = v79;
          v81 = v32;

          v82 = [(RTWorkoutRouteManager *)self healthKitManager];
          [v82 _getDurationForWorkout:v16];
          v84 = v83;

          if (v32 && v80 < v81)
          {
            v85 = v84 / v81;
          }

          else
          {
            v85 = v81 / v84;
          }

          if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v15])
          {
            v86 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v16];
          }

          else
          {
            v86 = 0;
          }

          v87 = [v15 workoutActivityType];
          v145 = 0;
          [(RTWorkoutRouteManager *)self _getConstantValueForString:@"kRTPreFilterLocationsRateThreshold" isDecimated:v86 workoutActivityType:v87 error:&v145];
          v89 = v88;
          v90 = v145;
          if (v90)
          {
            v103 = v90;
            goto LABEL_93;
          }

          v91 = fmin(v77, v85) < v89;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v92 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
            {
              v93 = objc_opt_class();
              v94 = NSStringFromClass(v93);
              v95 = NSStringFromSelector(aSelector);
              v96 = @"NO";
              if (v91)
              {
                v96 = @"YES";
              }

              v130 = v95;
              v131 = v96;
              v142 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v142 _getDurationForWorkout:v15];
              v128 = v97;
              v134 = [(RTWorkoutRouteManager *)self healthKitManager];
              [v134 _getDurationForWorkout:v16];
              v126 = v98;
              v99 = [MEMORY[0x277CBEAA8] date];
              [v99 timeIntervalSinceDate:v23];
              v101 = v100;
              +[RTRuntime footprint];
              *buf = 138415106;
              v148 = v94;
              v149 = 2112;
              v150 = v130;
              v151 = 2112;
              v152 = v131;
              v153 = 2048;
              v154 = *&v77;
              v155 = 2048;
              v156 = *&v85;
              v157 = 2048;
              v158 = v89;
              v159 = 2048;
              v160 = v143;
              v161 = 2048;
              v162 = *&v128;
              v163 = 2048;
              v164 = *&v32;
              v165 = 2048;
              v166 = *&v126;
              v167 = 2048;
              v168 = v101;
              v169 = 2048;
              v170 = v102;
              _os_log_impl(&dword_2304B3000, v92, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, are workouts not 1 hertz, pre-filtered, %@, workout rate, %.3f, other workout rate, %.3f, 1 hertz threshold, %.3f, locations count, %lu, workout duration, %lu, other locations count, %lu, other workout duration, %lu latency, %.4f sec, footprint, %.4f MB", buf, 0x7Au);
            }
          }

          objc_autoreleasePoolPop(context);
          v24 = 0;
          v103 = 0;
          v17 = v135;
          if (v91)
          {
            goto LABEL_78;
          }
        }

        v44 = 1;
        v45 = 0.0;
LABEL_30:
        v46 = 0.0;
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  LOBYTE(v25) = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v107 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
    {
      v108 = objc_opt_class();
      v109 = NSStringFromClass(v108);
      v110 = NSStringFromSelector(a2);
      *buf = 138413314;
      v148 = v109;
      v149 = 2112;
      v150 = v110;
      v151 = 2112;
      v152 = @"YES";
      v153 = 2048;
      v154 = [v144 count];
      v155 = 2048;
      v156 = [v17 count];
      _os_log_impl(&dword_2304B3000, v107, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyLocationsCount doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu, cachedOtherDictionary count, %lu, ", buf, 0x34u);
    }

    v23 = 0;
    v103 = 0;
LABEL_75:
    LOBYTE(v25) = 1;
  }

  else
  {
    v23 = 0;
LABEL_77:
    v103 = 0;
  }

LABEL_78:

  v19 = v140;
LABEL_79:

  return v25 & 1;
}

- (BOOL)_isPreFilteredLastLocationBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8
{
  v116 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (!v15)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_25;
    }

    v53 = @"workout";
    goto LABEL_24;
  }

  if (v17)
  {
    v97 = self;
    if (v16)
    {
      v20 = [v16 objectForKeyedSubscript:@"kRTCacheKeyLastLocation"];
      v21 = v20;
      if (v18 && v20)
      {
        v22 = [v18 objectForKeyedSubscript:@"kRTCacheKeyLastLocation"];

        if (v22)
        {
          aSelector = a2;
          v23 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          v96 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          context = objc_autoreleasePoolPush();
          v95 = [MEMORY[0x277CBEAA8] date];
          v24 = [v16 objectForKeyedSubscript:@"kRTCacheKeyLastLocation"];
          v25 = [v24 firstObject];

          v26 = [v25 firstObject];
          [v26 doubleValue];
          v28 = v27;
          v29 = [v25 secondObject];
          [v29 doubleValue];
          *v23 = CLLocationCoordinate2DMake(v28, v30);

          v31 = [v18 objectForKeyedSubscript:@"kRTCacheKeyLastLocation"];
          v32 = [v31 firstObject];

          v33 = [v32 firstObject];
          [v33 doubleValue];
          v35 = v34;
          v36 = [v32 secondObject];
          [v36 doubleValue];
          *v96 = CLLocationCoordinate2DMake(v35, v37);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              v41 = NSStringFromSelector(aSelector);
              v42 = *v23;
              v43 = v23[1];
              v44 = *v96;
              v45 = *(v96 + 1);
              *buf = 138413571;
              v101 = v40;
              v102 = 2112;
              v103 = v41;
              v104 = 2053;
              v105 = v42;
              v106 = 2053;
              v107 = v43;
              v108 = 2053;
              v109 = v44;
              v110 = 2053;
              v111 = v45;
              _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, lastLocation, <%{sensitive}f, %{sensitive}f>, otherLastLocation, <%{sensitive}f, %{sensitive}f>,", buf, 0x3Eu);
            }
          }

          v46 = [(RTWorkoutRouteManager *)v97 distanceCalculator];
          v99 = 0;
          [v46 distanceFromLocationCoordinate:v23 toLocationCoordinate:v96 error:&v99];
          v48 = v47;
          v49 = v99;

          if (!v49)
          {
            if (v19)
            {
              v50 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
              [v19 setObject:v50 forKeyedSubscript:@"kRTSimilarityDistanceBetweenLastLocations"];
            }

            if ([(RTWorkoutRouteManager *)v97 _shouldDecimateWorkout:v15])
            {
              v51 = [(RTWorkoutRouteManager *)v97 _shouldDecimateWorkout:v17];
            }

            else
            {
              v51 = 0;
            }

            v98 = 0;
            -[RTWorkoutRouteManager _getConstantValueForString:isDecimated:workoutActivityType:error:](v97, "_getConstantValueForString:isDecimated:workoutActivityType:error:", @"kRTPreFilterLastLocationsDistanceThreshold", v51, [v15 workoutActivityType], &v98);
            v62 = v61;
            v63 = v98;
            if (!v63)
            {
              v67 = [(RTWorkoutRouteManager *)v97 healthKitManager];
              v68 = [v67 _getTotalDistanceForWorkout:v15];
              v69 = [MEMORY[0x277CCDAB0] meterUnit];
              [v68 doubleValueForUnit:v69];
              v71 = v70;

              v72 = [(RTWorkoutRouteManager *)v97 healthKitManager];
              v73 = [v72 _getTotalDistanceForWorkout:v17];
              v74 = [MEMORY[0x277CCDAB0] meterUnit];
              [v73 doubleValueForUnit:v74];
              v76 = v75;

              if (v71 >= v76)
              {
                v77 = v71;
              }

              else
              {
                v77 = v76;
              }

              v78 = fmin(v62 * v77, 350.0);
              if (v78 >= 50.0)
              {
                v79 = v78;
              }

              else
              {
                v79 = 50.0;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v80 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                {
                  v81 = objc_opt_class();
                  v82 = NSStringFromClass(v81);
                  v83 = NSStringFromSelector(aSelector);
                  v84 = @"NO";
                  if (v48 > v79)
                  {
                    v84 = @"YES";
                  }

                  v92 = [MEMORY[0x277CBEAA8] date];
                  [v92 timeIntervalSinceDate:v95];
                  v86 = v85;
                  +[RTRuntime footprint];
                  *buf = 138414082;
                  v101 = v82;
                  v102 = 2112;
                  v103 = v83;
                  v104 = 2112;
                  v105 = v91;
                  v106 = 2048;
                  v107 = *&v48;
                  v108 = 2048;
                  v109 = *&v62;
                  v110 = 2048;
                  v111 = v79;
                  v112 = 2048;
                  v113 = v86;
                  v114 = 2048;
                  v115 = v87;
                  _os_log_impl(&dword_2304B3000, v80, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, distanceBetweenLastLocations is greater than distance threshold, pre-filtered, %@, distanceBetweenLastLocations (in meters), %.3f, distance threshold percentage, %.3f, distance threshold (in meters), %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x52u);
                }
              }

              objc_autoreleasePoolPop(context);
              v49 = 0;
              if (v48 > v79)
              {
                v55 = 1;
LABEL_37:
                free(v23);
                free(v96);
                if (a8 && v49)
                {
                  v64 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    v88 = objc_opt_class();
                    v89 = NSStringFromClass(v88);
                    v90 = NSStringFromSelector(aSelector);
                    *buf = 138412802;
                    v101 = v89;
                    v102 = 2112;
                    v103 = v90;
                    v104 = 2112;
                    v105 = v49;
                    _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
                  }

                  v65 = v49;
                  *a8 = v49;
                  v55 = 1;
                }

                v60 = v95;
LABEL_43:

                goto LABEL_44;
              }

LABEL_36:
              v55 = 0;
              goto LABEL_37;
            }

            v49 = v63;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v55 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v56 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = NSStringFromSelector(a2);
        *buf = 138413314;
        v101 = v58;
        v102 = 2112;
        v103 = v59;
        v104 = 2112;
        v105 = @"YES";
        v106 = 2048;
        v107 = [v16 count];
        v108 = 2048;
        v109 = [v18 count];
        _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyLastLocation doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu, cachedOtherDictionary count, %lu, ", buf, 0x34u);
      }

      v60 = 0;
      v49 = 0;
      v55 = 1;
    }

    else
    {
      v60 = 0;
      v49 = 0;
    }

    goto LABEL_43;
  }

  v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
  }

  if (a8)
  {
    v53 = @"otherWorkout";
LABEL_24:
    *a8 = _RTErrorInvalidParameterCreate(v53);
  }

LABEL_25:
  v55 = 1;
LABEL_44:

  return v55;
}

- (BOOL)_isPreFilteredCentroidBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8
{
  v118 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (!v15)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_24;
    }

    v53 = @"workout";
    goto LABEL_23;
  }

  if (v17)
  {
    v99 = self;
    if (v16)
    {
      v20 = [v16 objectForKeyedSubscript:@"kRTCacheKeyCentroid"];
      v21 = v20;
      if (v18 && v20)
      {
        v22 = [v18 objectForKeyedSubscript:@"kRTCacheKeyCentroid"];

        if (v22)
        {
          aSelector = a2;
          v23 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          v98 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          context = objc_autoreleasePoolPush();
          v96 = [MEMORY[0x277CBEAA8] date];
          v24 = [v16 objectForKeyedSubscript:@"kRTCacheKeyCentroid"];
          v25 = [v24 firstObject];

          v26 = [v25 firstObject];
          [v26 doubleValue];
          v28 = v27;
          v29 = [v25 secondObject];
          [v29 doubleValue];
          *v23 = CLLocationCoordinate2DMake(v28, v30);
          v97 = v23;

          v31 = [v18 objectForKeyedSubscript:@"kRTCacheKeyCentroid"];
          v32 = [v31 firstObject];

          v33 = [v32 firstObject];
          [v33 doubleValue];
          v35 = v34;
          v36 = [v32 secondObject];
          [v36 doubleValue];
          *v98 = CLLocationCoordinate2DMake(v35, v37);

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              v41 = NSStringFromSelector(aSelector);
              v42 = *&v23->latitude;
              v43 = *&v23->longitude;
              v44 = *v98;
              v45 = *(v98 + 1);
              *buf = 138413571;
              v103 = v40;
              v104 = 2112;
              v105 = v41;
              v106 = 2053;
              v107 = v42;
              v108 = 2053;
              v109 = v43;
              v110 = 2053;
              v111 = v44;
              v112 = 2053;
              v113 = v45;
              _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, locationCentroid, <%{sensitive}f, %{sensitive}f>, otherLocationCentroid, <%{sensitive}f, %{sensitive}f>,", buf, 0x3Eu);
            }
          }

          v46 = [(RTWorkoutRouteManager *)v99 distanceCalculator];
          v101 = 0;
          [v46 distanceFromLocationCoordinate:v23 toLocationCoordinate:v98 error:&v101];
          v48 = v47;
          v49 = v101;

          if (v19)
          {
            v50 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
            [v19 setObject:v50 forKeyedSubscript:@"kRTSimilarityDistanceBetweenCentroids"];
          }

          if ([(RTWorkoutRouteManager *)v99 _shouldDecimateWorkout:v15])
          {
            v51 = [(RTWorkoutRouteManager *)v99 _shouldDecimateWorkout:v17];
          }

          else
          {
            v51 = 0;
          }

          v100 = v49;
          -[RTWorkoutRouteManager _getConstantValueForString:isDecimated:workoutActivityType:error:](v99, "_getConstantValueForString:isDecimated:workoutActivityType:error:", @"kRTPreFilterCentroidDistanceThreshold", v51, [v15 workoutActivityType], &v100);
          v63 = v62;
          v61 = v100;

          if (v61)
          {
            objc_autoreleasePoolPop(context);
          }

          else
          {
            v64 = [(RTWorkoutRouteManager *)v99 healthKitManager];
            v65 = [v64 _getTotalDistanceForWorkout:v15];
            v66 = [MEMORY[0x277CCDAB0] meterUnit];
            [v65 doubleValueForUnit:v66];
            v68 = v67;

            v69 = [(RTWorkoutRouteManager *)v99 healthKitManager];
            v70 = [v69 _getTotalDistanceForWorkout:v17];
            v71 = [MEMORY[0x277CCDAB0] meterUnit];
            [v70 doubleValueForUnit:v71];
            v73 = v72;

            if (v68 >= v73)
            {
              v74 = v68;
            }

            else
            {
              v74 = v73;
            }

            v75 = fmin(v63 * v74, 1000.0);
            if (v75 >= 100.0)
            {
              v76 = v75;
            }

            else
            {
              v76 = 100.0;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v77 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = objc_opt_class();
                v79 = NSStringFromClass(v78);
                v80 = NSStringFromSelector(aSelector);
                v81 = @"NO";
                if (v48 > v76)
                {
                  v81 = @"YES";
                }

                v93 = [MEMORY[0x277CBEAA8] date];
                [v93 timeIntervalSinceDate:v96];
                v83 = v82;
                +[RTRuntime footprint];
                *buf = 138414082;
                v103 = v79;
                v104 = 2112;
                v105 = v92;
                v106 = 2112;
                v107 = v91;
                v108 = 2048;
                v109 = *&v48;
                v110 = 2048;
                v111 = *&v63;
                v112 = 2048;
                v113 = v76;
                v114 = 2048;
                v115 = v83;
                v116 = 2048;
                v117 = v84;
                _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, distanceBetweenCentroids is greater than threshold, pre-filtered, %@, distance between centroids (in meters), %.3f, centroid distance threshold percentage, %.3f, centroid distance threshold (in meters), %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x52u);
              }
            }

            objc_autoreleasePoolPop(context);
            if (v48 > v76)
            {
              v55 = 1;
              goto LABEL_49;
            }
          }

          v55 = 0;
LABEL_49:
          free(v97);
          free(v98);
          if (a8 && v61)
          {
            v85 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              v88 = objc_opt_class();
              v89 = NSStringFromClass(v88);
              v90 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v103 = v89;
              v104 = 2112;
              v105 = v90;
              v106 = 2112;
              v107 = v61;
              _os_log_error_impl(&dword_2304B3000, v85, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
            }

            v86 = v61;
            *a8 = v61;
            v55 = 1;
          }

          v60 = v96;
LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
      }
    }

    v55 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v56 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = NSStringFromSelector(a2);
        *buf = 138413314;
        v103 = v58;
        v104 = 2112;
        v105 = v59;
        v106 = 2112;
        v107 = @"YES";
        v108 = 2048;
        v109 = [v16 count];
        v110 = 2048;
        v111 = [v18 count];
        _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyCentroid doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu, cachedOtherDictionary count, %lu, ", buf, 0x34u);
      }

      v60 = 0;
      v61 = 0;
      v55 = 1;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    goto LABEL_55;
  }

  v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
  }

  if (a8)
  {
    v53 = @"otherWorkout";
LABEL_23:
    *a8 = _RTErrorInvalidParameterCreate(v53);
  }

LABEL_24:
  v55 = 1;
LABEL_56:

  return v55;
}

- (BOOL)_isPreFilteredRunningTrackBasedForWorkout:(id)a3 cachedDictionary:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10 && ([v10 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      context = objc_autoreleasePoolPush();
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = [v11 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];
      v15 = [(RTWorkoutRouteManager *)self _getCoordinatesFromRTPairs:v14];

      v41 = 0;
      [(RTWorkoutRouteManager *)self _getCGRectFromCoordinates:v15 verticesCount:4 outError:&v41];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = v41;
      if (v24)
      {
        v25 = v24;
        v26 = 0;
      }

      else
      {
        v40 = 0;
        v32 = [(RTWorkoutRouteManager *)self _isBoundingBoxAreaLessThanThresholdSubPrefilter:4 verticesCount:v13 stimulationDate:&v40 error:v17, v19, v21, v23];
        v25 = v40;
        v26 = 0;
        if (!v25 && v32)
        {
          v26 = [(RTWorkoutRouteManager *)self _isBoundingBoxDimensionsWithinTrackThresholdsSubPrefilter:v17, v19, v21, v23];
          v25 = 0;
        }
      }

      objc_autoreleasePoolPop(context);
      if (v15)
      {
        free(v15);
      }

      if (a5 && v25)
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = NSStringFromSelector(a2);
          *buf = 138412802;
          v43 = v37;
          v44 = 2112;
          v45 = v38;
          v46 = 2112;
          v47 = v25;
          _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v34 = v25;
        *a5 = v25;
        v26 = 1;
      }
    }

    else
    {
      v26 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = NSStringFromSelector(a2);
          *buf = 138413058;
          v43 = v29;
          v44 = 2112;
          v45 = v30;
          v46 = 2112;
          v47 = @"YES";
          v48 = 2048;
          v49 = [v11 count];
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyBoundingBoxVertices doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu,", buf, 0x2Au);
        }
      }

      v13 = 0;
      v25 = 0;
    }
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"workout");
    }

    v26 = 1;
  }

  return v26;
}

- (BOOL)_isBoundingBoxAreaLessThanThresholdSubPrefilter:(CGRect)a3 verticesCount:(unint64_t)a4 stimulationDate:(id)a5 error:(id *)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = [(RTWorkoutRouteManager *)self distanceCalculator];
  v35 = 0;
  [v15 computeBoundingBoxArea:a4 locationsCount:&v35 error:{x, y, width, height}];
  v17 = v16;
  v18 = v35;

  if (a6 && v18)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v37 = v33;
      v38 = 2112;
      v39 = v34;
      v40 = 2112;
      v41 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v20 = v18;
    v21 = 0;
    *a6 = v18;
  }

  else
  {
    v21 = v17 < 40000.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        if (v17 >= 40000.0)
        {
          v26 = @"NO";
        }

        else
        {
          v26 = @"YES";
        }

        v27 = [MEMORY[0x277CBEAA8] date];
        [v27 timeIntervalSinceDate:v14];
        v29 = v28;
        +[RTRuntime footprint];
        *buf = 138413826;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v26;
        v42 = 2048;
        v43 = v17;
        v44 = 2048;
        v45 = 0x40E3880000000000;
        v46 = 2048;
        v47 = v29;
        v48 = 2048;
        v49 = v30;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, area is less than threshold, pre-filtered, %@, area, %.3f, threshold, %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x48u);
      }
    }
  }

  return v21;
}

- (BOOL)_isEligibleForCurveOrientation:(CLLocationCoordinate2D *)a3 lastLocation:(CLLocationCoordinate2D *)a4 error:(id *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: firstLocation", buf, 2u);
    }

    if (a5)
    {
      v19 = @"firstLocation";
LABEL_16:
      _RTErrorInvalidParameterCreate(v19);
      *a5 = v17 = 0;
      return v17;
    }

    return 0;
  }

  if (!a4)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lastLocation", buf, 2u);
    }

    if (a5)
    {
      v19 = @"lastLocation";
      goto LABEL_16;
    }

    return 0;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(RTWorkoutRouteManager *)self distanceCalculator];
  v34 = 0;
  [v11 distanceFromLocationCoordinate:a3 toLocationCoordinate:a4 error:&v34];
  v13 = v12;
  v14 = v34;

  if (a5 && v14)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *buf = 138412802;
      v36 = v32;
      v37 = 2112;
      v38 = v33;
      v39 = 2112;
      v40 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v16 = v14;
    v17 = 0;
    *a5 = v14;
  }

  else
  {
    v17 = v13 < 350.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        if (v13 >= 350.0)
        {
          v25 = @"NO";
        }

        else
        {
          v25 = @"YES";
        }

        v26 = [MEMORY[0x277CBEAA8] date];
        [v26 timeIntervalSinceDate:v10];
        v28 = v27;
        +[RTRuntime footprint];
        *buf = 138413826;
        v36 = v23;
        v37 = 2112;
        v38 = v24;
        v39 = 2112;
        v40 = v25;
        v41 = 2048;
        v42 = v13;
        v43 = 2048;
        v44 = 0x4075E00000000000;
        v45 = 2048;
        v46 = v28;
        v47 = 2048;
        v48 = v29;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, distanceBetweenFirstAndLastLocations is greater than distance threshold, %@, distanceBetweenFirstLocationAndLastLocations (in meters), %.3f, distance threshold (in meters), %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x48u);
      }
    }
  }

  return v17;
}

- (BOOL)_isPreFilteredCurveOrientationBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 error:(id *)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a7)
    {
      goto LABEL_32;
    }

    v42 = @"workout";
    goto LABEL_31;
  }

  if (!v14)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
    }

    if (!a7)
    {
      goto LABEL_32;
    }

    v42 = @"otherWorkout";
LABEL_31:
    *a7 = _RTErrorInvalidParameterCreate(v42);
LABEL_32:
    LOBYTE(v30) = 1;
    goto LABEL_38;
  }

  if (v13)
  {
    v16 = [v13 objectForKeyedSubscript:@"kRTCacheKeyCurveOrientation"];
    v17 = v16;
    if (v15 && v16)
    {
      v18 = [v15 objectForKeyedSubscript:@"kRTCacheKeyCurveOrientation"];

      if (v18)
      {
        aSelector = a2;
        context = objc_autoreleasePoolPush();
        v55 = [MEMORY[0x277CBEAA8] date];
        v19 = [v13 objectForKeyedSubscript:@"kRTCacheKeyCurveOrientation"];
        v20 = [v19 firstObject];
        v21 = [v20 firstObject];
        v22 = [v21 unsignedIntegerValue];

        v23 = [v15 objectForKeyedSubscript:@"kRTCacheKeyCurveOrientation"];
        v24 = [v23 firstObject];
        v25 = [v24 firstObject];
        v26 = [v25 unsignedIntegerValue];

        if (v22)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = v22;
        v30 = !v27 && v22 != v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            aSelectora = NSStringFromSelector(aSelector);
            v34 = @"NO";
            if (v30)
            {
              v34 = @"YES";
            }

            v51 = v34;
            v49 = [v12 UUID];
            v35 = [RTWorkoutRouteManager curveOrientationTypeToString:v28];
            v48 = [v14 UUID];
            v36 = [RTWorkoutRouteManager curveOrientationTypeToString:v26];
            v50 = [MEMORY[0x277CBEAA8] date];
            [v50 timeIntervalSinceDate:v55];
            v38 = v37;
            +[RTRuntime footprint];
            *buf = 138414338;
            v57 = v33;
            v58 = 2112;
            v59 = aSelectora;
            v60 = 2112;
            v61 = v51;
            v62 = 2112;
            v63 = v49;
            v64 = 2112;
            v65 = v35;
            v66 = 2112;
            v67 = v48;
            v68 = 2112;
            v69 = v36;
            v70 = 2048;
            v71 = v38;
            v72 = 2048;
            v73 = v39;
            _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, equal curve orientation, pre-filtered, %@, workout.UUID, %@, curveOrientation %@,  otherWorkout.UUID, %@, otherCurveOrientation, %@, latency, %.4f sec, footprint, %.4f MB", buf, 0x5Cu);
          }
        }

        objc_autoreleasePoolPop(context);
        v40 = v55;
LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  LOBYTE(v30) = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      *buf = 138413314;
      v57 = v45;
      v58 = 2112;
      v59 = v46;
      v60 = 2112;
      v61 = @"YES";
      v62 = 2048;
      v63 = [v13 count];
      v64 = 2048;
      v65 = [v15 count];
      LOBYTE(v30) = 1;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyCurveOrientation doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu, cachedOtherDictionary count, %lu, ", buf, 0x34u);
    }

    goto LABEL_37;
  }

LABEL_38:

  return v30;
}

- (BOOL)_isPreFilteredIOUBasedForWorkout:(id)a3 cachedDictionary:(id)a4 otherWorkout:(id)a5 cachedOtherDictionary:(id)a6 preFilteringResults:(id)a7 error:(id *)a8
{
  v84 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (!v15)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_21;
    }

    v36 = @"workout";
    goto LABEL_20;
  }

  if (v17)
  {
    if (v16)
    {
      v20 = [v16 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];
      v21 = v20;
      if (v18 && v20)
      {
        v22 = [v18 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];

        if (v22)
        {
          aSelector = a2;
          context = objc_autoreleasePoolPush();
          v67 = [MEMORY[0x277CBEAA8] date];
          v23 = [v16 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];
          v24 = [(RTWorkoutRouteManager *)self _getCoordinatesFromRTPairs:v23];

          v25 = [v18 objectForKeyedSubscript:@"kRTCacheKeyBoundingBoxVertices"];
          v26 = [(RTWorkoutRouteManager *)self _getCoordinatesFromRTPairs:v25];

          v27 = [(RTWorkoutRouteManager *)self distanceCalculator];
          v69 = 0;
          v66 = v24;
          v28 = v24;
          v29 = v26;
          [v27 computeIntersectionOverUnionUsingBoundingBoxBetweenLocations:v28 locationsCount:4 otherLocations:v26 otherLocationsCount:4 error:&v69];
          v31 = v30;
          v32 = v69;

          if (!v32)
          {
            if (v19)
            {
              v33 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
              [v19 setObject:v33 forKeyedSubscript:@"kRTSimilarityIOU"];
            }

            if ([(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v15])
            {
              v34 = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v17];
            }

            else
            {
              v34 = 0;
            }

            v68 = 0;
            -[RTWorkoutRouteManager _getConstantValueForString:isDecimated:workoutActivityType:error:](self, "_getConstantValueForString:isDecimated:workoutActivityType:error:", @"kRTPreFilterIntersectionOverUnionThreshold", v34, [v15 workoutActivityType], &v68);
            v45 = v44;
            v46 = v68;
            if (!v46)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v50 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = objc_opt_class();
                  v52 = NSStringFromClass(v51);
                  v53 = NSStringFromSelector(aSelector);
                  v54 = @"NO";
                  if (v31 < v45)
                  {
                    v54 = @"YES";
                  }

                  v63 = [MEMORY[0x277CBEAA8] date];
                  [v63 timeIntervalSinceDate:v67];
                  v56 = v55;
                  +[RTRuntime footprint];
                  *buf = 138413826;
                  v71 = v52;
                  v72 = 2112;
                  v73 = v62;
                  v74 = 2112;
                  v75 = v61;
                  v76 = 2048;
                  v77 = *&v31;
                  v78 = 2048;
                  v79 = *&v45;
                  v80 = 2048;
                  v81 = v56;
                  v82 = 2048;
                  v83 = v57;
                  _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, IOU is less than threshold, pre-filtered, %@, IOU, %.3f, Intersection Over Union Threshold percentage, %.3f, latency, %.4f sec, footprint, %.4f MB", buf, 0x48u);
                }
              }

              objc_autoreleasePoolPop(context);
              if (v31 >= v45)
              {
                v38 = 0;
                v32 = 0;
              }

              else
              {
                v32 = 0;
                v38 = 1;
              }

              goto LABEL_32;
            }

            v32 = v46;
          }

          objc_autoreleasePoolPop(context);
          v38 = 0;
LABEL_32:
          if (v66)
          {
            free(v66);
          }

          if (v29)
          {
            free(v29);
          }

          if (a8 && v32)
          {
            v47 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v58 = objc_opt_class();
              v59 = NSStringFromClass(v58);
              v60 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v71 = v59;
              v72 = 2112;
              v73 = v60;
              v74 = 2112;
              v75 = v32;
              _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
            }

            v48 = v32;
            *a8 = v32;
            v38 = 1;
          }

          v43 = v67;
LABEL_42:

          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v38 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        *buf = 138413314;
        v71 = v41;
        v72 = 2112;
        v73 = v42;
        v74 = 2112;
        v75 = @"YES";
        v76 = 2048;
        v77 = [v16 count];
        v78 = 2048;
        v79 = [v18 count];
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, pre-filtering criteria, kRTCacheKeyBoundingBoxVertices doesn't exist in cache dictionary, pre-filtered, %@, cachedDictionary count, %lu, cachedOtherDictionary count, %lu, ", buf, 0x34u);
      }

      v43 = 0;
      v32 = 0;
      v38 = 1;
    }

    else
    {
      v43 = 0;
      v32 = 0;
    }

    goto LABEL_42;
  }

  v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: otherWorkout", buf, 2u);
  }

  if (a8)
  {
    v36 = @"otherWorkout";
LABEL_20:
    *a8 = _RTErrorInvalidParameterCreate(v36);
  }

LABEL_21:
  v38 = 1;
LABEL_43:

  return v38;
}

- (double)similarityDistanceUsingPreFilteringResults:(id)a3 error:(id *)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v63 = self;
    aSelector = a2;
    v66 = 0;
    v65 = 0;
    v8 = 0;
    v9 = 1;
    v10 = 10000.0;
    v11 = @"kRTSimilarityDifferenceInTotalDistance";
    v12 = @"kRTSimilarityDistanceBetweenFirstLocations";
    v13 = @"kRTSimilarityDistanceBetweenLastLocations";
    v14 = 10000.0;
    v15 = 10000.0;
    v16 = 10000.0;
    v17 = 10000.0;
    while (1)
    {
      if ((v9 & 1) == 0)
      {
        v19 = v8;
        goto LABEL_38;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = [MEMORY[0x277CBEAA8] date];

      v20 = [v7 objectForKeyedSubscript:v11];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = [v7 objectForKeyedSubscript:v12];
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v67 = v19;
      v24 = [v7 objectForKeyedSubscript:v13];
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = v24;
      v26 = v18;
      v27 = v13;
      v28 = v12;
      v29 = v11;
      v30 = [v7 objectForKeyedSubscript:@"kRTSimilarityDistanceBetweenCentroids"];
      if (!v30)
      {

        v18 = v26;
LABEL_35:

        v19 = v67;
LABEL_36:

        break;
      }

      v31 = v30;
      v32 = [v7 objectForKeyedSubscript:@"kRTSimilarityIOU"];

      v19 = v67;
      v11 = v29;
      v12 = v28;
      v13 = v27;
      v18 = v26;
      if (!v32)
      {
        break;
      }

      v33 = [v7 objectForKeyedSubscript:@"kRTSimilarityIsLongWorkout"];
      v34 = [v33 BOOLValue];

      v35 = [v7 objectForKeyedSubscript:v11];
      [v35 doubleValue];
      v14 = v36;

      v37 = [v7 objectForKeyedSubscript:v12];
      [v37 doubleValue];
      v15 = v38;

      v39 = [v7 objectForKeyedSubscript:v13];
      [v39 doubleValue];
      v16 = v40;

      v41 = [v7 objectForKeyedSubscript:@"kRTSimilarityDistanceBetweenCentroids"];
      [v41 doubleValue];
      v17 = v42;

      v43 = [v7 objectForKeyedSubscript:@"kRTSimilarityIOU"];
      [v43 doubleValue];
      v10 = v44;

      v45 = (v14 <= 150.0) & ~v34;
      if (v15 > 150.0)
      {
        v45 = 0;
      }

      if (v16 > 150.0)
      {
        v45 = 0;
      }

      if (v14 <= 250.0)
      {
        v46 = v34;
      }

      else
      {
        v46 = 0;
      }

      if (v15 > 250.0)
      {
        v46 = 0;
      }

      if (v16 > 250.0)
      {
        v46 = 0;
      }

      if (v17 > 250.0)
      {
        v46 = 0;
      }

      if (v10 < 0.97)
      {
        v46 = 0;
      }

      v47 = v45 & (v17 <= 150.0);
      LOBYTE(v66) = v34;
      BYTE4(v66) = v47 & (v10 >= 0.97);
      v65 = v46;
      if (v47)
      {
        v48 = v10 >= 0.97;
      }

      else
      {
        v48 = v46;
      }

      objc_autoreleasePoolPop(v18);
      v9 = 0;
      v8 = v67;
      if (v48)
      {
        v49 = 0.0;
        goto LABEL_39;
      }
    }

    objc_autoreleasePoolPop(v18);
LABEL_38:
    v49 = 10000.0;
LABEL_39:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(aSelector);
        if (v66)
        {
          v55 = @"YES";
        }

        else
        {
          v55 = @"NO";
        }

        if ((v66 & 0x100000000) != 0)
        {
          v56 = @"YES";
        }

        else
        {
          v56 = @"NO";
        }

        if (v65)
        {
          v57 = @"YES";
        }

        else
        {
          v57 = @"NO";
        }

        v58 = [MEMORY[0x277CBEAA8] date];
        [v58 timeIntervalSinceDate:v19];
        v60 = v59;
        +[RTRuntime footprint];
        *buf = 138416642;
        v69 = v53;
        v70 = 2112;
        v71 = v54;
        v72 = 2048;
        v73 = v49;
        v74 = 2112;
        v75 = v55;
        v76 = 2112;
        v77 = v56;
        v78 = 2112;
        v79 = v57;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = 0x4062C00000000000;
        v84 = 2048;
        v85 = v15;
        v86 = 2048;
        v87 = 0x4062C00000000000;
        v88 = 2048;
        v89 = v16;
        v90 = 2048;
        v91 = 0x4062C00000000000;
        v92 = 2048;
        v93 = v17;
        v94 = 2048;
        v95 = 0x4062C00000000000;
        v96 = 2048;
        v97 = v10;
        v98 = 2048;
        v99 = 0x3FEF0A3D70A3D70ALL;
        v100 = 2048;
        v101 = v60;
        v102 = 2048;
        v103 = v61;
        _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, similarity distance, %.3f, isLongWorkout, %@, metShortWorkoutThresholds, %@, metLongWorkoutThresholds, %@, differenceInTotalDistance (in meters), %.4f, differenceInTotalDistance threshold (in meters), %.4f,  distanceBetweenFirstLocations (in meters), %.4f, distanceBetweenFirstLocations threshold (in meters), %.4f, distanceBetweenLastLocations (in meters), %.4f, distanceBetweenLastLocations threshold (in meters), %.4f, distanceBetweenCentroids (in meters), %.4f, distanceBetweenCentroids threshold (in meters), %.4f, iou (in percentage), %.4f, iou threshold (in percentage), %.4f, latency, %.4f sec, footprint, %.4f MB", buf, 0xB6u);
      }
    }
  }

  else
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: preFilteringResults", buf, 2u);
    }

    v49 = 1.0;
    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"preFilteringResults");
    }
  }

  return v49;
}

- (unint64_t)_getCurveOrientationTypeForLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4 > 1)
    {
      v16 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      *v16 = *a3;
      v17 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      *v17 = a3[a4 - 1];
      v27 = 0;
      v18 = [(RTWorkoutRouteManager *)self _isEligibleForCurveOrientation:v16 lastLocation:v17 error:&v27];
      v10 = v27;
      if (v18)
      {
        p_longitude = &a3->longitude;
        v20 = 0.0;
        v21 = 1;
        do
        {
          if (v21 == a4)
          {
            v22 = 0;
          }

          else
          {
            v22 = v21;
          }

          v20 = v20 + *p_longitude * a3[v22].latitude - a3[v22].longitude * *(p_longitude - 1);
          p_longitude += 2;
          ++v21;
        }

        while (v21 - a4 != 1);
        if (v16)
        {
          free(v16);
        }

        v23 = v20 * 0.5;
        if (v17)
        {
          free(v17);
        }

        v24 = fabs(v23);
        v25 = 2;
        if (v23 < 0.0)
        {
          v25 = 1;
        }

        if (v24 >= 0.000005)
        {
          v12 = v25;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"less number of locations than required";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v10 = [v7 errorWithDomain:v8 code:7 userInfo:v9];

      if (a5)
      {
        v11 = v10;
        v12 = 0;
        *a5 = v10;
LABEL_25:

        return v12;
      }
    }

    v12 = 0;
    goto LABEL_25;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", buf, 2u);
  }

  if (!a5)
  {
    return 0;
  }

  _RTErrorInvalidParameterCreate(@"locations");
  *a5 = v12 = 0;
  return v12;
}

- (id)_readClustersFromHealthKitWithError:(id *)a3
{
  v104 = a3;
  v159[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v113 = 0;
  v109 = *MEMORY[0x277D01448];
  v110 = *MEMORY[0x277CCA450];
  v4 = 1;
  v115 = v3;
  do
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_65;
    }

    v108 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, Fetching clusters from healthKit.", buf, 0x16u);
      }
    }

    v9 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v157 = __Block_byref_object_copy__153;
    *&v158 = __Block_byref_object_dispose__153;
    *(&v158 + 1) = 0;
    v136 = 0;
    v137 = &v136;
    v138 = 0x3032000000;
    v139 = __Block_byref_object_copy__153;
    v140 = __Block_byref_object_dispose__153;
    v141 = 0;
    v10 = [(RTWorkoutRouteManager *)self healthKitManager];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __61__RTWorkoutRouteManager__readClustersFromHealthKitWithError___block_invoke;
    v132[3] = &unk_2788C4490;
    v134 = buf;
    v135 = &v136;
    v11 = v9;
    v133 = v11;
    [v10 fetchWorkoutClustersWithHandler:v132];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v151 = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v151, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      *v143 = v110;
      *v151 = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v143 count:1];
      v26 = [v24 errorWithDomain:v109 code:15 userInfo:v25];

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
    v29 = v28;
    v30 = v137[5];
    if (v30)
    {
      v31 = v30;

      v32 = 0;
      v33 = 1;
      v113 = v31;
      goto LABEL_63;
    }

    if (v28)
    {
      v34 = v28;

      v32 = 0;
      v33 = 1;
      v113 = v34;
      goto LABEL_63;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v39 = [*(*&buf[8] + 40) count];
        *v151 = 138412802;
        *&v151[4] = v37;
        *&v151[12] = 2112;
        *&v151[14] = v38;
        *&v151[22] = 2048;
        v152 = v39;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, %@, fetched clusters from healthkit, fetchedClusters count, %lu", v151, 0x20u);
      }
    }

    if ([*(*&buf[8] + 40) count])
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      obj = *(*&buf[8] + 40);
      v40 = [obj countByEnumeratingWithState:&v128 objects:v155 count:16];
      v41 = 0;
      if (!v40)
      {
        goto LABEL_61;
      }

      v111 = *v129;
      while (1)
      {
        v42 = 0;
        v112 = v40;
        do
        {
          if (*v129 != v111)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v128 + 1) + 8 * v42);
          context = objc_autoreleasePoolPush();
          v44 = dispatch_semaphore_create(0);

          *v151 = 0;
          *&v151[8] = v151;
          *&v151[16] = 0x3032000000;
          v152 = __Block_byref_object_copy__153;
          v153 = __Block_byref_object_dispose__153;
          v154 = objc_opt_new();
          v45 = [(RTWorkoutRouteManager *)self healthKitManager];
          v46 = [v43 clusterUUID];
          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __61__RTWorkoutRouteManager__readClustersFromHealthKitWithError___block_invoke_224;
          v124[3] = &unk_2788C4490;
          v126 = v151;
          v127 = &v136;
          v47 = v44;
          v125 = v47;
          [v45 fetchWorkoutUUIDsForClusterUUID:v46 handler:v124];

          v12 = v47;
          v48 = [MEMORY[0x277CBEAA8] now];
          v49 = dispatch_time(0, 3600000000000);
          v50 = v41;
          if (dispatch_semaphore_wait(v12, v49))
          {
            v51 = [MEMORY[0x277CBEAA8] now];
            [v51 timeIntervalSinceDate:v48];
            v53 = v52;
            v54 = objc_opt_new();
            v55 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
            v56 = [MEMORY[0x277CCACC8] callStackSymbols];
            v57 = [v56 filteredArrayUsingPredicate:v55];
            v58 = [v57 firstObject];

            [v54 submitToCoreAnalytics:v58 type:1 duration:v53];
            v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              *v143 = 0;
              _os_log_fault_impl(&dword_2304B3000, v59, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v143, 2u);
            }

            v60 = MEMORY[0x277CCA9B8];
            v159[0] = v110;
            *v143 = @"semaphore wait timeout";
            v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v159 count:1];
            v62 = [v60 errorWithDomain:v109 code:15 userInfo:v61];

            v50 = v41;
            if (v62)
            {
              v63 = v62;

              v50 = v62;
            }
          }

          v64 = v50;
          v65 = v137[5];
          if (v65)
          {
            v41 = v64;
            v66 = v65;
LABEL_36:
            v67 = v113;
            v68 = 5;
            v113 = v66;
            goto LABEL_37;
          }

          if (v64)
          {
            v41 = v64;
            v66 = v64;
            goto LABEL_36;
          }

          v41 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v69 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = objc_opt_class();
              v71 = NSStringFromClass(v70);
              v72 = NSStringFromSelector(a2);
              v73 = [*(*&v151[8] + 40) count];
              *v143 = 138412802;
              *&v143[4] = v71;
              v144 = 2112;
              v145 = v72;
              v146 = 2048;
              v147 = v73;
              _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, fetched cluster's uuids, uuids count, %lu", v143, 0x20u);
            }
          }

          if (![*(*&v151[8] + 40) count])
          {
            v68 = 6;
            goto LABEL_38;
          }

          v74 = [(RTWorkoutRouteManager *)self healthKitManager];
          v75 = [*(*&v151[8] + 40) anyObject];
          v150 = v75;
          v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v150 count:1];
          v77 = (v137 + 5);
          v123 = v137[5];
          v67 = [v74 getWorkoutsWithUUIDs:v76 error:&v123];
          objc_storeStrong(v77, v123);

          v78 = v137[5];
          if (v78)
          {
            v79 = v113;
            v68 = 5;
            v113 = v78;
          }

          else
          {
            if (![v67 count])
            {
              v68 = 6;
              goto LABEL_37;
            }

            v80 = [v67 firstObject];
            v79 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v80 workoutActivityType]);

            v81 = [v115 objectForKeyedSubscript:v79];
            LODWORD(v80) = v81 == 0;

            if (v80)
            {
              v82 = objc_opt_new();
              [v115 setObject:v82 forKeyedSubscript:v79];
            }

            v83 = [v115 objectForKeyedSubscript:v79];
            [v83 addObject:*(*&v151[8] + 40)];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v84 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
              {
                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v87 = NSStringFromSelector(a2);
                v88 = [*(*&v151[8] + 40) count];
                *v143 = 138413058;
                *&v143[4] = v86;
                v144 = 2112;
                v145 = v87;
                v146 = 2112;
                v147 = v79;
                v148 = 2048;
                v149 = v88;
                _os_log_impl(&dword_2304B3000, v84, OS_LOG_TYPE_INFO, "%@, %@, added new cluster of activity type, %@, uuids count, %lu", v143, 0x2Au);
              }
            }

            v68 = 0;
          }

LABEL_37:
LABEL_38:

          _Block_object_dispose(v151, 8);
          objc_autoreleasePoolPop(context);
          if (v68 != 6 && v68)
          {
            goto LABEL_61;
          }

          ++v42;
        }

        while (v112 != v42);
        v40 = [obj countByEnumeratingWithState:&v128 objects:v155 count:16];
        if (!v40)
        {
LABEL_61:

          v89 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = 0;

          v33 = 0;
          v32 = 1;
          goto LABEL_63;
        }
      }
    }

    v106 = v115;
    v32 = 0;
    v33 = 0;
LABEL_63:

    _Block_object_dispose(&v136, 8);
    _Block_object_dispose(buf, 8);

    objc_autoreleasePoolPop(v108);
    v4 = 0;
    v3 = v115;
  }

  while ((v32 & 1) != 0);
  if (v33)
  {
LABEL_65:
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    contexta = [v3 allKeys];
    v90 = [contexta countByEnumeratingWithState:&v119 objects:v142 count:16];
    if (v90)
    {
      v91 = *v120;
      v92 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v120 != v91)
          {
            objc_enumerationMutation(contexta);
          }

          v94 = *(*(&v119 + 1) + 8 * i);
          v95 = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
          {
            v96 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v97 = objc_opt_class();
              v98 = NSStringFromClass(v97);
              v99 = NSStringFromSelector(a2);
              v100 = [v115 objectForKeyedSubscript:v94];
              v101 = [v100 count];
              *buf = 138413058;
              *&buf[4] = v98;
              *&buf[12] = 2112;
              *&buf[14] = v99;
              *&buf[22] = 2112;
              v157 = v94;
              LOWORD(v158) = 2048;
              *(&v158 + 2) = v101;
              _os_log_impl(&dword_2304B3000, v96, OS_LOG_TYPE_INFO, "%@, %@, workout activity type, %@, cluster count, %lu", buf, 0x2Au);
            }
          }

          objc_autoreleasePoolPop(v95);
        }

        v90 = [contexta countByEnumeratingWithState:&v119 objects:v142 count:16];
      }

      while (v90);
    }

    if (v105)
    {
      v102 = v113;
      *v105 = v113;
    }

    v3 = v115;
    v106 = v115;
  }

  return v106;
}

void __61__RTWorkoutRouteManager__readClustersFromHealthKitWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __61__RTWorkoutRouteManager__readClustersFromHealthKitWithError___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = [MEMORY[0x277CBEB58] setWithArray:v12];
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

- (id)_clusterizeWorkoutsWithError:(id *)a3
{
  v294[1] = *MEMORY[0x277D85DE8];
  v211 = objc_opt_new();
  v4 = objc_opt_new();
  v215 = objc_opt_new();
  v208 = [[RTClusterizeResults alloc] initWithClusters:v4 objectIDs:v215];
  v269 = 0;
  v219 = self;
  [(RTWorkoutRouteManager *)self _getMaxDistanceThresholdForMetric:[(RTWorkoutRouteManager *)self distanceMetric] error:&v269];
  v6 = v5;
  v7 = v269;
  if (a3 && v7)
  {
    v8 = v7;
    v9 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v185 = objc_opt_class();
      v186 = NSStringFromClass(v185);
      v187 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v186;
      v275 = 2112;
      v276 = v187;
      v277 = 2112;
      v278 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v10 = v8;
    *a3 = v8;
    goto LABEL_164;
  }

  v204 = v7;
  v203 = objc_autoreleasePoolPush();
  v265 = 0;
  v266 = &v265;
  v267 = 0x2020000000;
  v268 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = [(RTWorkoutRouteManager *)v219 workoutDistanceStore];
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = __54__RTWorkoutRouteManager__clusterizeWorkoutsWithError___block_invoke;
  v262[3] = &unk_2788C8028;
  v264 = &v265;
  v13 = v11;
  v263 = v13;
  [v12 fetchTotalWorkoutDistancesCountWithHandler:v262];

  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v288 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v288 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

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
    [v211 addObject:v30];
  }

  v258 = 0;
  v259 = &v258;
  v260 = 0x2020000000;
  v261 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      v35 = v266[3];
      *buf = 138413058;
      *&buf[4] = v33;
      v275 = 2112;
      v276 = v34;
      v277 = 2048;
      v278 = 5000;
      v279 = 2048;
      v280 = v35;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, %@, limit, %lu, totalWorkoutDistancesCount, %lu,", buf, 0x2Au);
    }
  }

  v36 = dispatch_semaphore_create(0);

  v288 = 0;
  v289 = &v288;
  v290 = 0x3032000000;
  v291 = __Block_byref_object_copy__153;
  v292 = __Block_byref_object_dispose__153;
  v293 = 0;
  v256[0] = 0;
  v256[1] = v256;
  v256[2] = 0x3032000000;
  v256[3] = __Block_byref_object_copy__153;
  v256[4] = __Block_byref_object_dispose__153;
  v257 = 0;
  v37 = [(RTWorkoutRouteManager *)v219 workoutDistanceStore];
  v251[0] = MEMORY[0x277D85DD0];
  v251[1] = 3221225472;
  v251[2] = __54__RTWorkoutRouteManager__clusterizeWorkoutsWithError___block_invoke_226;
  v251[3] = &unk_2788C47D0;
  v253 = &v288;
  v254 = &v258;
  v255 = v256;
  v38 = v36;
  v252 = v38;
  [v37 fetchWorkoutDistancesWithOffset:0 limit:5000 maxDistanceThreshold:0 includeVisitedRecords:v251 handler:v6];

  dsema = v38;
  v39 = [MEMORY[0x277CBEAA8] now];
  v40 = dispatch_time(0, 3600000000000);
  v41 = v30;
  if (dispatch_semaphore_wait(dsema, v40))
  {
    v42 = [MEMORY[0x277CBEAA8] now];
    [v42 timeIntervalSinceDate:v39];
    v44 = v43;
    v45 = objc_opt_new();
    v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
    v47 = [MEMORY[0x277CCACC8] callStackSymbols];
    v48 = [v47 filteredArrayUsingPredicate:v46];
    v49 = [v48 firstObject];

    [v45 submitToCoreAnalytics:v49 type:1 duration:v44];
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v51 = MEMORY[0x277CCA9B8];
    v294[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v294 count:1];
    v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v52];

    v41 = v30;
    if (v53)
    {
      v54 = v53;

      v41 = v53;
    }
  }

  v205 = v41;
  if (!v205)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v55 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        v59 = v259[3];
        +[RTRuntime footprint];
        *buf = 138413058;
        *&buf[4] = v57;
        v275 = 2112;
        v276 = v58;
        v277 = 2048;
        v278 = v59;
        v279 = 2048;
        v280 = v60;
        _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, workoutDistances count, %lu, footprint, %.4f MB", buf, 0x2Au);
      }
    }

    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    obj = v289[5];
    v61 = [obj countByEnumeratingWithState:&v247 objects:v287 count:16];
    v62 = 0;
    if (!v61)
    {
LABEL_119:

      v155 = v289[5];
      v289[5] = 0;

      if ([v211 count])
      {
        [(RTWorkoutRouteManager *)v219 setWorkoutActivityTypeToclustersSet:0];
      }

      else
      {
        v237 = 0u;
        v238 = 0u;
        v235 = 0u;
        v236 = 0u;
        v156 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
        v221 = [v156 allValues];

        v157 = [v221 countByEnumeratingWithState:&v235 objects:v272 count:16];
        if (v157)
        {
          v223 = *v236;
          do
          {
            v158 = 0;
            v225 = v157;
            do
            {
              if (*v236 != v223)
              {
                objc_enumerationMutation(v221);
              }

              v159 = *(*(&v235 + 1) + 8 * v158);
              v160 = objc_autoreleasePoolPush();
              v233 = 0u;
              v234 = 0u;
              v231 = 0u;
              v232 = 0u;
              v161 = v159;
              v162 = [v161 countByEnumeratingWithState:&v231 objects:v271 count:16];
              if (v162)
              {
                v163 = *v232;
                do
                {
                  for (i = 0; i != v162; ++i)
                  {
                    if (*v232 != v163)
                    {
                      objc_enumerationMutation(v161);
                    }

                    v165 = *(*(&v231 + 1) + 8 * i);
                    v166 = objc_autoreleasePoolPush();
                    v167 = [v165 allObjects];
                    [v4 addObject:v167];

                    objc_autoreleasePoolPop(v166);
                  }

                  v162 = [v161 countByEnumeratingWithState:&v231 objects:v271 count:16];
                }

                while (v162);
              }

              objc_autoreleasePoolPop(v160);
              ++v158;
            }

            while (v158 != v225);
            v157 = [v221 countByEnumeratingWithState:&v235 objects:v272 count:16];
          }

          while (v157);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v168 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
          {
            v169 = objc_opt_class();
            v170 = NSStringFromClass(v169);
            v171 = NSStringFromSelector(a2);
            v172 = [v4 count];
            +[RTRuntime footprint];
            *buf = 138413058;
            *&buf[4] = v170;
            v275 = 2112;
            v276 = v171;
            v277 = 2048;
            v278 = v172;
            v279 = 2048;
            v280 = v173;
            _os_log_impl(&dword_2304B3000, v168, OS_LOG_TYPE_INFO, "%@, %@, out clusters count, %lu, footprint, %.4f MB", buf, 0x2Au);
          }
        }

        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v226 = v4;
        v174 = 0;
        v175 = [v226 countByEnumeratingWithState:&v227 objects:v270 count:16];
        if (v175)
        {
          v176 = *v228;
          v177 = -1;
          v178 = -1;
          v179 = -1.0;
          do
          {
            v180 = 0;
            v181 = v174;
            v182 = v174 + 2;
            v224 = v175 + v181;
            do
            {
              if (*v228 != v176)
              {
                objc_enumerationMutation(v226);
              }

              v183 = *(*(&v227 + 1) + 8 * v180);
              v184 = objc_autoreleasePoolPush();
              if (v177 == -1 || [v183 count] < v177)
              {
                v177 = [v183 count];
              }

              if (v178 == -1 || [v183 count] > v178)
              {
                v178 = [v183 count];
              }

              if (v179 == -1.0)
              {
                v179 = [v183 count];
              }

              else
              {
                v179 = ([v183 count] + v179 * (v182 - 1)) / v182;
              }

              objc_autoreleasePoolPop(v184);
              ++v180;
              ++v182;
            }

            while (v175 != v180);
            v175 = [v226 countByEnumeratingWithState:&v227 objects:v270 count:16];
            v174 = v224;
          }

          while (v175);
        }

        else
        {
          v179 = -1.0;
          v177 = -1;
          v178 = -1;
        }

        v188 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v174];
        v189 = [(RTWorkoutRouteManager *)v219 processWorkoutMetrics];
        [v189 setObject:v188 forKeyedSubscript:@"clustering_count_clusters"];

        v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v177];
        v191 = [(RTWorkoutRouteManager *)v219 processWorkoutMetrics];
        [v191 setObject:v190 forKeyedSubscript:@"clustering_min_cluster_size"];

        v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178];
        v193 = [(RTWorkoutRouteManager *)v219 processWorkoutMetrics];
        [v193 setObject:v192 forKeyedSubscript:@"clustering_max_cluster_size"];

        v194 = [MEMORY[0x277CCABB0] numberWithDouble:v179];
        v195 = [(RTWorkoutRouteManager *)v219 processWorkoutMetrics];
        [v195 setObject:v194 forKeyedSubscript:@"clustering_average_cluster_size"];
      }

      goto LABEL_159;
    }

    v212 = 0;
    v214 = *v248;
LABEL_31:
    v216 = v61;
    v220 = 0;
    v63 = v62;
    while (1)
    {
      if (*v248 != v214)
      {
        objc_enumerationMutation(obj);
      }

      v64 = *(*(&v247 + 1) + 8 * v220);
      context = objc_autoreleasePoolPush();
      v65 = [v64 objectID];
      [v215 addObject:v65];

      v66 = [(RTWorkoutRouteManager *)v219 distanceMetric];
      v67 = [v64 areBothWorkoutsDecimated];
      v68 = [v64 workoutActivityType];
      v246 = v63;
      v218 = [(RTWorkoutRouteManager *)v219 _getConstantValueForDistanceThresholdUsingDistanceMetric:v66 isDecimated:v67 workoutActivityType:v68 error:&v246];
      v62 = v246;

      if (v62)
      {
        [v211 addObject:v62];
      }

      else
      {
        ++v212;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = objc_opt_class();
            v71 = NSStringFromClass(v70);
            v72 = NSStringFromSelector(a2);
            v73 = v259[3];
            [v218 doubleValue];
            v75 = v74;
            +[RTRuntime footprint];
            *buf = 138413826;
            *&buf[4] = v71;
            v275 = 2112;
            v276 = v72;
            v277 = 2048;
            v278 = v212;
            v279 = 2048;
            v280 = v73;
            v281 = 2112;
            v282 = v64;
            v283 = 2048;
            v284 = v75;
            v285 = 2048;
            v286 = v76;
            _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "%@, %@, record num, %lu, total count, %lu, workout distance record, %@, distanceThreshold, %.4f, footprint, %.4f MB", buf, 0x48u);
          }
        }

        [v64 distance];
        v78 = v77;
        [v218 doubleValue];
        if (v78 <= v79)
        {
          v213 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", +[RTHealthKitManager HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:](RTHealthKitManager, "HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:", [v64 workoutActivityType]));
          v81 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
          v82 = v81 == 0;

          if (v82)
          {
            v83 = objc_opt_new();
            [(RTWorkoutRouteManager *)v219 setWorkoutActivityTypeToclustersSet:v83];
          }

          v84 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
          v85 = [v84 objectForKeyedSubscript:v213];
          v86 = v85 == 0;

          if (v86)
          {
            v87 = objc_opt_new();
            v88 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
            [v88 setObject:v87 forKeyedSubscript:v213];
          }

          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          v89 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
          v90 = [v89 objectForKeyedSubscript:v213];

          v91 = [v90 countByEnumeratingWithState:&v242 objects:v273 count:16];
          if (v91)
          {
            v222 = 0uLL;
            v92 = *v243;
            while (2)
            {
              for (j = 0; j != v91; ++j)
              {
                if (*v243 != v92)
                {
                  objc_enumerationMutation(v90);
                }

                v94 = *(*(&v242 + 1) + 8 * j);
                v95 = objc_autoreleasePoolPush();
                v96 = [v64 firstWorkout];
                v97 = [v94 containsObject:v96];

                if (v97)
                {
                  v98 = v94;

                  *(&v222 + 1) = v98;
                }

                v99 = [v64 secondWorkout];
                v100 = [v94 containsObject:v99];

                if (v100)
                {
                  v101 = v94;

                  *&v222 = v101;
                }

                objc_autoreleasePoolPop(v95);
                if (*(&v222 + 1) && v222)
                {

                  v102 = *(&v222 + 1);
                  goto LABEL_64;
                }
              }

              v91 = [v90 countByEnumeratingWithState:&v242 objects:v273 count:16];
              if (v91)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v222 = 0uLL;
          }

          v102 = *(&v222 + 1);
          if (v222 == 0)
          {
            v110 = MEMORY[0x277CBEB58];
            v111 = [v64 firstWorkout];
            v112 = [v64 secondWorkout];
            v113 = [v110 setWithObjects:{v111, v112, 0}];

            v114 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
            v115 = [v114 objectForKeyedSubscript:v213];
            [v115 addObject:v113];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v116 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
              {
                v117 = objc_opt_class();
                v118 = NSStringFromClass(v117);
                v119 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v118;
                v275 = 2112;
                v276 = v119;
                v277 = 2112;
                v278 = v113;
                _os_log_impl(&dword_2304B3000, v116, OS_LOG_TYPE_INFO, "%@, %@, case 1/4, new cluster is created, %@", buf, 0x20u);
              }
            }

            *(&v222 + 1) = 0;
            goto LABEL_79;
          }

          if (*(&v222 + 1) && !v222)
          {
            v105 = MEMORY[0x277CBEB58];
            v106 = [v64 secondWorkout];
            v107 = [v105 setWithObject:v106];
            v108 = [v64 workoutActivityType];
            [v218 doubleValue];
            v241 = 0;
            v109 = [(RTWorkoutRouteManager *)v219 _areWorkoutsSimilarBetweenClusterSet1:*(&v222 + 1) clusterSet2:v107 workoutActivityType:v108 maxDistanceThreshold:&v241 error:?];
            v62 = v241;

            if (v62)
            {
              [v211 addObject:v62];
              *&v222 = 0;
              goto LABEL_115;
            }

            if (v109)
            {
              v139 = [v64 secondWorkout];
              [*(&v222 + 1) addObject:v139];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                {
                  v140 = objc_opt_class();
                  v141 = NSStringFromClass(v140);
                  v142 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v141;
                  v275 = 2112;
                  v276 = v142;
                  v277 = 2112;
                  v278 = *(&v222 + 1);
                  _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, case 2/4, added to clusterSetForUUID1, %@", buf, 0x20u);
                }

                goto LABEL_79;
              }

LABEL_108:
              *&v222 = 0;
LABEL_114:
              v62 = 0;
LABEL_115:

              v80 = *(&v222 + 1);
LABEL_116:

              goto LABEL_117;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_108;
            }

            v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
            {
              v147 = objc_opt_class();
              v148 = NSStringFromClass(v147);
              v149 = NSStringFromSelector(a2);
              v150 = [v64 secondWorkout];
              *buf = 138413058;
              *&buf[4] = v148;
              v275 = 2112;
              v276 = v149;
              v277 = 2112;
              v278 = v150;
              v279 = 2112;
              v280 = *(&v222 + 1);
              _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, workoutUUID, %@, not added to the cluster, %@, reason, not similar to entire cluster", buf, 0x2Au);
            }

LABEL_79:
            *&v222 = 0;
LABEL_80:
            v62 = 0;
            goto LABEL_89;
          }

          if (*(&v222 + 1) || !v222)
          {
LABEL_64:
            *(&v222 + 1) = v102;
            if (v102 == v222)
            {
              goto LABEL_114;
            }

            v103 = [v64 workoutActivityType];
            [v218 doubleValue];
            v239 = 0;
            v104 = [(RTWorkoutRouteManager *)v219 _areWorkoutsSimilarBetweenClusterSet1:v102 clusterSet2:v222 workoutActivityType:v103 maxDistanceThreshold:&v239 error:?];
            v62 = v239;
            if (v62)
            {
              [v211 addObject:v62];
            }

            else if (v104)
            {
              v120 = [v102 count];
              if (v120 <= [v222 count])
              {
                [v222 unionSet:v102];
                v134 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
                v135 = [v134 objectForKeyedSubscript:v213];
                [v135 removeObject:v102];

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  goto LABEL_114;
                }

                v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                {
                  v136 = objc_opt_class();
                  v137 = NSStringFromClass(v136);
                  v138 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v137;
                  v275 = 2112;
                  v276 = v138;
                  v277 = 2112;
                  v278 = v222;
                  _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, case 4.2/4, clusterSetForUUID1 and clusterSetForUUID2 merged, clusterSetForUUID2, %@, clusterSetForUUID1, removed", buf, 0x20u);
                }
              }

              else
              {
                [v102 unionSet:v222];
                v121 = [(RTWorkoutRouteManager *)v219 workoutActivityTypeToclustersSet];
                v122 = [v121 objectForKeyedSubscript:v213];
                [v122 removeObject:v222];

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  goto LABEL_114;
                }

                v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                {
                  v123 = objc_opt_class();
                  v124 = NSStringFromClass(v123);
                  v125 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v124;
                  v275 = 2112;
                  v276 = v125;
                  v277 = 2112;
                  v278 = v102;
                  _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, case 4.1/4, clusterSetForUUID1 and clusterSetForUUID2 merged, clusterSetForUUID1, %@, clusterSetForUUID2, removed", buf, 0x20u);
                }
              }

              goto LABEL_80;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_115;
            }

            v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
            {
              v126 = objc_opt_class();
              v127 = NSStringFromClass(v126);
              v128 = NSStringFromSelector(a2);
              *buf = 138413058;
              *&buf[4] = v127;
              v275 = 2112;
              v276 = v128;
              v277 = 2112;
              v278 = v102;
              v279 = 2112;
              v280 = v222;
              _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, cluster1, %@, cluster2, %@, not merged", buf, 0x2Au);
            }

LABEL_89:

            goto LABEL_115;
          }

          v129 = MEMORY[0x277CBEB58];
          v130 = [v64 firstWorkout];
          v131 = [v129 setWithObject:v130];
          v132 = [v64 workoutActivityType];
          [v218 doubleValue];
          v240 = 0;
          v133 = [(RTWorkoutRouteManager *)v219 _areWorkoutsSimilarBetweenClusterSet1:v131 clusterSet2:v222 workoutActivityType:v132 maxDistanceThreshold:&v240 error:?];
          v62 = v240;

          if (v62)
          {
            [v211 addObject:v62];
            *(&v222 + 1) = 0;
            goto LABEL_115;
          }

          if (v133)
          {
            v143 = [v64 firstWorkout];
            [v222 addObject:v143];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
              {
                v144 = objc_opt_class();
                v145 = NSStringFromClass(v144);
                v146 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v145;
                v275 = 2112;
                v276 = v146;
                v277 = 2112;
                v278 = v222;
                _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, case 3/4, added to clusterSetForUUID2, %@", buf, 0x20u);
              }

LABEL_112:
              *(&v222 + 1) = 0;
              goto LABEL_80;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v113 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
            {
              v151 = objc_opt_class();
              v152 = NSStringFromClass(v151);
              v153 = NSStringFromSelector(a2);
              v154 = [v64 firstWorkout];
              *buf = 138413058;
              *&buf[4] = v152;
              v275 = 2112;
              v276 = v153;
              v277 = 2112;
              v278 = v154;
              v279 = 2112;
              v280 = v222;
              _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@, %@, workoutUUID, %@, not added to the cluster, %@, reason, not similar to entire cluster", buf, 0x2Au);
            }

            goto LABEL_112;
          }

          *(&v222 + 1) = 0;
          goto LABEL_114;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v80 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v80, OS_LOG_TYPE_INFO, "skipping distance record as it is beyond threshold value", buf, 2u);
          }

          v62 = 0;
          goto LABEL_116;
        }

        v62 = 0;
      }

LABEL_117:

      objc_autoreleasePoolPop(context);
      v63 = v62;
      v220 = v220 + 1;
      if (v220 == v216)
      {
        v61 = [obj countByEnumeratingWithState:&v247 objects:v287 count:16];
        if (!v61)
        {
          goto LABEL_119;
        }

        goto LABEL_31;
      }
    }
  }

  [v211 addObject:?];
LABEL_159:

  _Block_object_dispose(v256, 8);
  _Block_object_dispose(&v288, 8);

  _Block_object_dispose(&v258, 8);
  _Block_object_dispose(&v265, 8);
  objc_autoreleasePoolPop(v203);
  v196 = objc_opt_class();
  v197 = NSStringFromClass(v196);
  v198 = NSStringFromSelector(a2);
  [(RTWorkoutRouteManager *)v219 _logClusters:v4 className:v197 selectorName:v198];

  v8 = v204;
  if (a3)
  {
    if ([v211 count])
    {
      v199 = _RTSafeArray();
      v200 = _RTMultiErrorCreate();
      *a3 = v200;
    }

    else
    {
      *a3 = 0;
    }

    v8 = v204;
  }

LABEL_164:
  v201 = v208;

  return v208;
}

void __54__RTWorkoutRouteManager__clusterizeWorkoutsWithError___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  *(*(*(a1 + 48) + 8) + 24) = [v12 count];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_syncClustersToHealthKit:(id)a3 error:(id *)a4
{
  v141[1] = *MEMORY[0x277D85DE8];
  v106 = a3;
  if (v106)
  {
    aSelector = a2;
    v126 = 0;
    v127 = &v126;
    v128 = 0x3032000000;
    v129 = __Block_byref_object_copy__153;
    v130 = __Block_byref_object_dispose__153;
    v131 = 0;
    v6 = [MEMORY[0x277CBEAA8] date];
    v107 = *MEMORY[0x277D01448];
    v108 = *MEMORY[0x277CCA450];
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        break;
      }

      context = objc_autoreleasePoolPush();
      v8 = [MEMORY[0x277CBEAA8] date];

      +[RTRuntime footprint];
      v10 = v9;
      v113 = objc_opt_new();
      v112 = objc_opt_new();
      v111 = objc_opt_new();
      v110 = objc_opt_new();
      v120 = 0;
      v121 = &v120;
      v122 = 0x3032000000;
      v123 = __Block_byref_object_copy__153;
      v124 = __Block_byref_object_dispose__153;
      v125 = 0;
      v11 = dispatch_semaphore_create(0);
      v12 = [(RTWorkoutRouteManager *)self healthKitManager];
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __56__RTWorkoutRouteManager__syncClustersToHealthKit_error___block_invoke;
      v116[3] = &unk_2788C4490;
      v118 = &v120;
      v119 = &v126;
      v13 = v11;
      v117 = v13;
      [v12 fetchWorkoutClustersWithHandler:v116];

      v14 = v13;
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v14, v16))
      {
        v17 = [MEMORY[0x277CBEAA8] now];
        [v17 timeIntervalSinceDate:v15];
        v19 = v18;
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
        v141[0] = v108;
        *buf = @"semaphore wait timeout";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v141 count:1];
        v28 = [v26 errorWithDomain:v107 code:15 userInfo:v27];

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
      if (v30 || v127[5])
      {
        v31 = 0;
      }

      else
      {
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v106, "count")}];
        v33 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v33 setObject:v32 forKeyedSubscript:@"sync_from_healthkit_count_local_clusters"];

        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v121[5], "count")}];
        v35 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v35 setObject:v34 forKeyedSubscript:@"sync_from_healthkit_count_remote_clusters"];

        v36 = v121[5];
        v121[5] = 0;

        v37 = [(RTWorkoutRouteManager *)self distanceMetric];
        v38 = v127;
        obj = v127[5];
        v39 = [(RTWorkoutRouteManager *)self _syncWithRemoteClustersUsingLocalClusters:v106 distanceMetric:v37 outLocalClustersForCreation:v113 outRemoteClustersForUpdationNewWorkouts:v112 outRemoteClustersForUpdationWorkoutsToRemove:v111 outRemoteClustersForDeletion:v110 error:&obj];
        objc_storeStrong(v38 + 5, obj);
        +[RTRuntime footprint];
        v41 = v40;
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v113, "count")}];
        v43 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v43 setObject:v42 forKeyedSubscript:@"sync_from_healthkit_count_final_local_clusters"];

        v44 = MEMORY[0x277CBEB58];
        v45 = [v112 allKeys];
        v46 = [v44 setWithArray:v45];

        v47 = [v111 allKeys];
        [v46 addObjectsFromArray:v47];

        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v46, "count")}];
        v49 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v49 setObject:v48 forKeyedSubscript:@"sync_from_healthkit_count_final_remote_clusters"];

        v50 = [MEMORY[0x277CCABB0] numberWithBool:v39];
        v51 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v51 setObject:v50 forKeyedSubscript:@"sync_from_healthkit_is_success"];

        v52 = [MEMORY[0x277CCABB0] numberWithDouble:v41 - v10];
        v53 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v53 setObject:v52 forKeyedSubscript:@"sync_from_healthkit_footprint_delta"];

        v54 = MEMORY[0x277CCABB0];
        v55 = [MEMORY[0x277CBEAA8] date];
        [v55 timeIntervalSinceDate:v8];
        v56 = [v54 numberWithDouble:?];
        v57 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
        [v57 setObject:v56 forKeyedSubscript:@"sync_from_healthkit_time_elapsed"];

        v58 = v127[5];
        if (v58)
        {
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v58, "code")];
          v60 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          [v60 setObject:v59 forKeyedSubscript:@"sync_from_healthkit_errorcode"];

          v61 = [v127[5] domain];
          v62 = [v61 description];
          v63 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          [v63 setObject:v62 forKeyedSubscript:@"sync_from_healthkit_errordomain"];
          v31 = 0;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v64 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              v65 = objc_opt_class();
              v66 = NSStringFromClass(v65);
              v67 = NSStringFromSelector(aSelector);
              if (v39)
              {
                v68 = @"YES";
              }

              else
              {
                v68 = @"NO";
              }

              v69 = [MEMORY[0x277CBEAA8] date];
              [v69 timeIntervalSinceDate:v8];
              *buf = 138413314;
              *&buf[4] = v66;
              v133 = 2112;
              v134 = v67;
              v135 = 2112;
              v136 = v68;
              v137 = 2048;
              v138 = v70;
              v139 = 2048;
              v140 = v41;
              _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@, %@, syncing clusters with remote clusters in HealthKit status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);
            }
          }

          v71 = [MEMORY[0x277CBEAA8] date];

          +[RTRuntime footprint];
          v73 = v72;
          v74 = v127;
          v114 = v127[5];
          v75 = [(RTWorkoutRouteManager *)self _saveToHealthKitClustersForCreation:v113 remoteClustersForUpdationNewWorkouts:v112 remoteClustersForUpdationWorkoutsToRemove:v111 remoteClustersForDeletion:v110 error:&v114];
          objc_storeStrong(v74 + 5, v114);
          +[RTRuntime footprint];
          v77 = v76;
          v78 = [MEMORY[0x277CCABB0] numberWithBool:v75];
          v79 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          [v79 setObject:v78 forKeyedSubscript:@"sync_to_healthkit_is_success"];

          v80 = [MEMORY[0x277CCABB0] numberWithDouble:v77 - v73];
          v81 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          [v81 setObject:v80 forKeyedSubscript:@"sync_to_healthkit_footprint_delta"];

          v82 = MEMORY[0x277CCABB0];
          v83 = [MEMORY[0x277CBEAA8] date];
          [v83 timeIntervalSinceDate:v71];
          v84 = [v82 numberWithDouble:?];
          v85 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
          [v85 setObject:v84 forKeyedSubscript:@"sync_to_healthkit_time_elapsed"];

          v86 = v127[5];
          if (v86)
          {
            v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v86, "code")];
            v88 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
            [v88 setObject:v87 forKeyedSubscript:@"sync_to_healthkit_errorcode"];

            v61 = [v127[5] domain];
            v62 = [v61 description];
            v63 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
            [v63 setObject:v62 forKeyedSubscript:@"sync_to_healthkit_errordomain"];
            v31 = 0;
            v106 = 0;
            v8 = v71;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v89 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
                v90 = objc_opt_class();
                v91 = NSStringFromClass(v90);
                v92 = NSStringFromSelector(aSelector);
                if (v75)
                {
                  v93 = @"YES";
                }

                else
                {
                  v93 = @"NO";
                }

                v94 = [MEMORY[0x277CBEAA8] date];
                [v94 timeIntervalSinceDate:v71];
                *buf = 138413314;
                *&buf[4] = v91;
                v133 = 2112;
                v134 = v92;
                v135 = 2112;
                v136 = v93;
                v137 = 2048;
                v138 = v95;
                v139 = 2048;
                v140 = v77;
                _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_INFO, "%@, %@, saving clusters to HealthKit status, %@, latency, %.4f, footprint, %.4f MB", buf, 0x34u);
              }
            }

            v106 = 0;
            v31 = 1;
            v62 = v111;
            v63 = v112;
            v61 = v110;
            v8 = v71;
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = 0;
          }
        }
      }

      v6 = v8;

      _Block_object_dispose(&v120, 8);
      objc_autoreleasePoolPop(context);
      v7 = 0;
    }

    while ((v31 & 1) != 0);
    if (a4 && v127[5])
    {
      v96 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v100 = objc_opt_class();
        v101 = NSStringFromClass(v100);
        v102 = NSStringFromSelector(aSelector);
        v103 = v127[5];
        *buf = 138412802;
        *&buf[4] = v101;
        v133 = 2112;
        v134 = v102;
        v135 = 2112;
        v136 = v103;
        _os_log_error_impl(&dword_2304B3000, v96, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v97 = 0;
      *a4 = v127[5];
    }

    else
    {
      v97 = 1;
    }

    _Block_object_dispose(&v126, 8);
  }

  else
  {
    v98 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v98, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusters", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"clusters");
      *a4 = v97 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v97;
}

void __56__RTWorkoutRouteManager__syncClustersToHealthKit_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_syncWithRemoteClustersUsingLocalClusters:(id)a3 distanceMetric:(int64_t)a4 outLocalClustersForCreation:(id)a5 outRemoteClustersForUpdationNewWorkouts:(id)a6 outRemoteClustersForUpdationWorkoutsToRemove:(id)a7 outRemoteClustersForDeletion:(id)a8 error:(id *)a9
{
  v240 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v180 = a6;
  v172 = a7;
  v15 = a8;
  v171 = v13;
  v173 = v14;
  v181 = v15;
  if (!v13)
  {
    v95 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v95, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: localClusters", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_95;
    }

    v96 = _RTErrorInvalidParameterCreate(@"localClusters");
    goto LABEL_94;
  }

  if (!v14)
  {
    v97 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v97, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outLocalClustersForCreation", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_95;
    }

    v96 = _RTErrorInvalidParameterCreate(@"outLocalClustersForCreation");
    goto LABEL_94;
  }

  if (!v180)
  {
    v98 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v98, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outRemoteClustersForUpdationNewWorkouts", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_95;
    }

    v96 = _RTErrorInvalidParameterCreate(@"outRemoteClustersForUpdationNewWorkouts");
    goto LABEL_94;
  }

  if (!v172)
  {
    v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v99, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outRemoteClustersForUpdationWorkoutsToRemove", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_95;
    }

    v96 = _RTErrorInvalidParameterCreate(@"outRemoteClustersForUpdationWorkoutsToRemove");
LABEL_94:
    v101 = 0;
    *a9 = v96;
    goto LABEL_139;
  }

  v16 = v15;
  if (!v15)
  {
    v100 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outRemoteClustersForDeletion", buf, 2u);
    }

    if (a9)
    {
      v96 = _RTErrorInvalidParameterCreate(@"outRemoteClustersForDeletion");
      goto LABEL_94;
    }

LABEL_95:
    v101 = 0;
    goto LABEL_139;
  }

  [v14 removeAllObjects];
  [v180 removeAllObjects];
  [v172 removeAllObjects];
  [v16 removeAllObjects];
  v211 = 0;
  v212 = &v211;
  v213 = 0x3032000000;
  v214 = __Block_byref_object_copy__153;
  v215 = __Block_byref_object_dispose__153;
  v216 = 0;
  v165 = [MEMORY[0x277CBEAA8] date];
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v207 objects:v237 count:16];
  if (!v17)
  {
    v167 = 0;
    goto LABEL_97;
  }

  v166 = 0;
  v167 = 0;
  v170 = *v208;
  v163 = *MEMORY[0x277D01448];
  v164 = *MEMORY[0x277CCA450];
  do
  {
    v177 = 0;
    v169 = v17;
    do
    {
      if (*v208 != v170)
      {
        objc_enumerationMutation(obj);
      }

      v176 = *(*(&v207 + 1) + 8 * v177);
      context = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          v22 = [obj count];
          *buf = 138413314;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          *&buf[22] = 2048;
          v222 = ++v166;
          *v223 = 2048;
          *&v223[2] = v22;
          *&v223[10] = 2112;
          *&v223[12] = v176;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, %lu / %lu localCluster, %@", buf, 0x34u);
        }
      }

      v23 = (v212 + 5);
      v206 = v212[5];
      v175 = [(RTWorkoutRouteManager *)self _getRemoteWorkoutClustersForWorkoutUUIDs:v176 error:&v206];
      objc_storeStrong(v23, v206);
      if (v212[5])
      {
        v24 = 22;
        goto LABEL_48;
      }

      v167 = (v167 + [v176 count]);
      if (![v175 count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v36 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = NSStringFromSelector(a2);
            *buf = 138412546;
            *&buf[4] = v38;
            *&buf[12] = 2112;
            *&buf[14] = v39;
            _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, case 1/4: no corresponding remote cluster, adding to outLocalClusters", buf, 0x16u);
          }
        }

LABEL_24:
        v35 = [MEMORY[0x277CBEB18] arrayWithArray:v176];
        [v173 addObject:v35];
LABEL_46:

LABEL_47:
        v24 = 0;
        goto LABEL_48;
      }

      if ([v175 count] != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = NSStringFromSelector(a2);
            *buf = 138412546;
            *&buf[4] = v42;
            *&buf[12] = 2112;
            *&buf[14] = v43;
            _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, case 4/4: multiple remote clusters for the given local Cluster (merge remote clusters case), marking remote clusters for deletion and creating new local cluster", buf, 0x16u);
          }
        }

        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v44 = v175;
        v45 = [v44 countByEnumeratingWithState:&v198 objects:v236 count:16];
        if (v45)
        {
          v46 = *v199;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v199 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v198 + 1) + 8 * i);
              v49 = objc_autoreleasePoolPush();
              [v181 addObject:v48];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v50 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = objc_opt_class();
                  v52 = NSStringFromClass(v51);
                  v53 = NSStringFromSelector(a2);
                  v54 = [v48 clusterUUID];
                  *buf = 138412802;
                  *&buf[4] = v52;
                  *&buf[12] = 2112;
                  *&buf[14] = v53;
                  *&buf[22] = 2112;
                  v222 = v54;
                  _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, cluster uuid marked for deletion, %@", buf, 0x20u);
                }
              }

              objc_autoreleasePoolPop(v49);
            }

            v45 = [v44 countByEnumeratingWithState:&v198 objects:v236 count:16];
          }

          while (v45);
        }

        v35 = [MEMORY[0x277CBEB18] arrayWithArray:v176];
        [v173 addObject:v35];
        goto LABEL_46;
      }

      v25 = [v175 firstObject];
      v26 = [v180 objectForKeyedSubscript:v25];
      v27 = v26 == 0;

      v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!v27)
      {
        if (v28)
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            v33 = [v175 firstObject];
            v34 = [v33 clusterUUID];
            *buf = 138412802;
            *&buf[4] = v31;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            *&buf[22] = 2112;
            v222 = v34;
            _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, case 3/4: one remote cluster & it has been already visited (split remote cluster case), cluster uuid, %@, adding to outLocalClusters", buf, 0x20u);
          }
        }

        goto LABEL_24;
      }

      if (v28)
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = NSStringFromSelector(a2);
          v59 = [v175 firstObject];
          v60 = [v59 clusterUUID];
          *buf = 138412802;
          *&buf[4] = v57;
          *&buf[12] = 2112;
          *&buf[14] = v58;
          *&buf[22] = 2112;
          v222 = v60;
          _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, case 2/4: one remote cluster & it hasn't been visited, cluster uuid, %@, setting uuids to outRemoteClustersForUpdation", buf, 0x20u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v222 = __Block_byref_object_copy__153;
      *v223 = __Block_byref_object_dispose__153;
      *&v223[8] = objc_opt_new();
      v61 = dispatch_semaphore_create(0);
      v62 = [(RTWorkoutRouteManager *)self healthKitManager];
      v63 = [v175 firstObject];
      v64 = [v63 clusterUUID];
      v202[0] = MEMORY[0x277D85DD0];
      v202[1] = 3221225472;
      v202[2] = __230__RTWorkoutRouteManager__syncWithRemoteClustersUsingLocalClusters_distanceMetric_outLocalClustersForCreation_outRemoteClustersForUpdationNewWorkouts_outRemoteClustersForUpdationWorkoutsToRemove_outRemoteClustersForDeletion_error___block_invoke;
      v202[3] = &unk_2788D03E8;
      v204 = &v211;
      v65 = v61;
      v203 = v65;
      v205 = buf;
      [v62 fetchWorkoutUUIDsForClusterUUID:v64 handler:v202];

      v66 = v65;
      v67 = [MEMORY[0x277CBEAA8] now];
      v68 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v66, v68))
      {
        v69 = [MEMORY[0x277CBEAA8] now];
        [v69 timeIntervalSinceDate:v67];
        v71 = v70;
        v72 = objc_opt_new();
        v73 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
        v74 = [MEMORY[0x277CCACC8] callStackSymbols];
        v75 = [v74 filteredArrayUsingPredicate:v73];
        v76 = [v75 firstObject];

        [v72 submitToCoreAnalytics:v76 type:1 duration:v71];
        v77 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          *v239 = 0;
          _os_log_fault_impl(&dword_2304B3000, v77, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v239, 2u);
        }

        v78 = MEMORY[0x277CCA9B8];
        v238 = v164;
        *v239 = @"semaphore wait timeout";
        v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v239 forKeys:&v238 count:1];
        v80 = [v78 errorWithDomain:v163 code:15 userInfo:v79];

        if (v80)
        {
          v81 = v80;
        }
      }

      else
      {
        v80 = 0;
      }

      v82 = v80;
      v83 = v82;
      v84 = v82 == 0;
      v85 = v212;
      if (v82)
      {
        v86 = v82;
        v87 = v85[5];
        v85[5] = v86;
        v24 = 22;
LABEL_63:

        goto LABEL_66;
      }

      if (!v212[5])
      {
        v87 = [MEMORY[0x277CBEB58] setWithArray:v176];
        if (![*(*&buf[8] + 40) isEqualToSet:v87] || (objc_msgSend(v175, "firstObject"), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "workoutRouteLabel"), v89 = objc_claimAutoreleasedReturnValue(), v90 = objc_msgSend(v89, "isEqualToString:", &stru_284528390), v89, v88, v90))
        {
          v91 = [v175 firstObject];
          [v180 setObject:v87 forKeyedSubscript:v91];

          [*(*&buf[8] + 40) minusSet:v87];
          v92 = *(*&buf[8] + 40);
          v93 = [v175 firstObject];
          [v172 setObject:v92 forKeyedSubscript:v93];

          v94 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = 0;
        }

        v24 = 0;
        goto LABEL_63;
      }

      v84 = 0;
      v24 = 22;
LABEL_66:

      _Block_object_dispose(buf, 8);
      if (v84)
      {
        goto LABEL_47;
      }

LABEL_48:

      objc_autoreleasePoolPop(context);
      if (v24)
      {
        goto LABEL_97;
      }

      ++v177;
    }

    while (v177 != v169);
    v17 = [obj countByEnumeratingWithState:&v207 objects:v237 count:16];
  }

  while (v17);
LABEL_97:

  if (a9 && v212[5])
  {
    v102 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v159 = objc_opt_class();
      v160 = NSStringFromClass(v159);
      v161 = NSStringFromSelector(a2);
      v162 = v212[5];
      *buf = 138412802;
      *&buf[4] = v160;
      *&buf[12] = 2112;
      *&buf[14] = v161;
      *&buf[22] = 2112;
      v222 = v162;
      _os_log_error_impl(&dword_2304B3000, v102, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v101 = 0;
    goto LABEL_137;
  }

  v103 = objc_autoreleasePoolPush();
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v104 = v173;
  v105 = 0;
  v106 = [v104 countByEnumeratingWithState:&v194 objects:v235 count:16];
  if (v106)
  {
    v107 = *v195;
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v195 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v194 + 1) + 8 * j);
        v110 = objc_autoreleasePoolPush();
        v111 = [MEMORY[0x277CBEB98] setWithArray:v109];
        v112 = [v111 count];

        objc_autoreleasePoolPop(v110);
        v105 += v112;
      }

      v106 = [v104 countByEnumeratingWithState:&v194 objects:v235 count:16];
    }

    while (v106);
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v113 = [v180 allKeys];
  v114 = [v113 countByEnumeratingWithState:&v190 objects:v234 count:16];
  if (v114)
  {
    v115 = *v191;
    do
    {
      for (k = 0; k != v114; ++k)
      {
        if (*v191 != v115)
        {
          objc_enumerationMutation(v113);
        }

        v117 = *(*(&v190 + 1) + 8 * k);
        v118 = objc_autoreleasePoolPush();
        v119 = [v180 objectForKeyedSubscript:v117];
        v120 = [v119 count];

        objc_autoreleasePoolPop(v118);
        v105 += v120;
      }

      v114 = [v113 countByEnumeratingWithState:&v190 objects:v234 count:16];
    }

    while (v114);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v121 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      v122 = objc_opt_class();
      v123 = NSStringFromClass(v122);
      v124 = NSStringFromSelector(a2);
      v125 = [v104 count];
      v126 = [v180 count];
      v127 = [v172 count];
      v128 = [v181 count];
      v129 = [MEMORY[0x277CBEAA8] date];
      [v129 timeIntervalSinceDate:v165];
      v131 = v130;
      +[RTRuntime footprint];
      *buf = 138414594;
      *&buf[4] = v123;
      *&buf[12] = 2112;
      *&buf[14] = v124;
      *&buf[22] = 2048;
      v222 = v167;
      *v223 = 2048;
      *&v223[2] = v105;
      *&v223[10] = 2048;
      *&v223[12] = v125;
      v224 = 2048;
      v225 = v126;
      v226 = 2048;
      v227 = v127;
      v228 = 2048;
      v229 = v128;
      v230 = 2048;
      v231 = v131;
      v232 = 2048;
      v233 = v132;
      _os_log_impl(&dword_2304B3000, v121, OS_LOG_TYPE_INFO, "%@, %@, after syncing remote and local clusters, totalInputUUIDsCount, %lu, totalOutputUUIDsCount, %lu, outLocalClustersForCreation, %lu, outRemoteClustersForUpdationNewWorkouts, %lu, outRemoteClustersForUpdationWorkoutsToRemove, %lu, outRemoteClustersForDeletion, %lu, latency, %.4f sec, footprint, %.4f MB", buf, 0x66u);
    }
  }

  v133 = MEMORY[0x277CBEB98];
  v134 = [v180 allKeys];
  v135 = [v133 setWithArray:v134];
  v136 = [v135 intersectsSet:v181];

  if (v136)
  {
    v137 = objc_opt_new();
    v138 = objc_opt_new();
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v139 = [v180 allKeys];
    v140 = [v139 countByEnumeratingWithState:&v186 objects:v220 count:16];
    if (v140)
    {
      v141 = *v187;
      do
      {
        for (m = 0; m != v140; ++m)
        {
          if (*v187 != v141)
          {
            objc_enumerationMutation(v139);
          }

          v143 = *(*(&v186 + 1) + 8 * m);
          v144 = objc_autoreleasePoolPush();
          v145 = [v143 clusterUUID];
          [v137 addObject:v145];

          objc_autoreleasePoolPop(v144);
        }

        v140 = [v139 countByEnumeratingWithState:&v186 objects:v220 count:16];
      }

      while (v140);
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v146 = v181;
    v147 = [v146 countByEnumeratingWithState:&v182 objects:v219 count:16];
    if (v147)
    {
      v148 = *v183;
      do
      {
        for (n = 0; n != v147; ++n)
        {
          if (*v183 != v148)
          {
            objc_enumerationMutation(v146);
          }

          v150 = *(*(&v182 + 1) + 8 * n);
          v151 = objc_autoreleasePoolPush();
          v152 = [v150 clusterUUID];
          [v138 addObject:v152];

          objc_autoreleasePoolPop(v151);
        }

        v147 = [v146 countByEnumeratingWithState:&v182 objects:v219 count:16];
      }

      while (v147);
    }

    v153 = MEMORY[0x277CCA9B8];
    v217 = *MEMORY[0x277CCA450];
    v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"updation and deletion remote clusters overlapped, updation cluster uuids, %@, deletion cluster uuids, %@", v137, v138];
    v218 = v154;
    v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
    v156 = [v153 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v155];
    v157 = v212[5];
    v212[5] = v156;
  }

  objc_autoreleasePoolPop(v103);
  v101 = v136 ^ 1;
  if (a9)
  {
LABEL_137:
    *a9 = v212[5];
  }

  _Block_object_dispose(&v211, 8);
LABEL_139:

  return v101;
}

void __230__RTWorkoutRouteManager__syncWithRemoteClustersUsingLocalClusters_distanceMetric_outLocalClustersForCreation_outRemoteClustersForUpdationNewWorkouts_outRemoteClustersForUpdationWorkoutsToRemove_outRemoteClustersForDeletion_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] setWithArray:a2];
    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_saveToHealthKitClustersForCreation:(id)a3 remoteClustersForUpdationNewWorkouts:(id)a4 remoteClustersForUpdationWorkoutsToRemove:(id)a5 remoteClustersForDeletion:(id)a6 error:(id *)a7
{
  v335 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  v272 = v12;
  if (!v12)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: localClustersForCreation", buf, 2u);
    }

    if (!a7)
    {
      goto LABEL_35;
    }

    v24 = @"localClustersForCreation";
    goto LABEL_34;
  }

  if (!v13)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: remoteClustersForUpdationNewWorkouts", buf, 2u);
    }

    if (!a7)
    {
      goto LABEL_35;
    }

    v24 = @"remoteClustersForUpdationNewWorkouts";
    goto LABEL_34;
  }

  if (!v14)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: remoteClustersForUpdationWorkoutsToRemove", buf, 2u);
    }

    if (!a7)
    {
      goto LABEL_35;
    }

    v24 = @"remoteClustersForUpdationWorkoutsToRemove";
LABEL_34:
    _RTErrorInvalidParameterCreate(v24);
    *a7 = v22 = 0;
    goto LABEL_49;
  }

  if (!v15)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: remoteClustersForDeletion", buf, 2u);
    }

    if (a7)
    {
      v24 = @"remoteClustersForDeletion";
      goto LABEL_34;
    }

LABEL_35:
    v22 = 0;
    goto LABEL_49;
  }

  location = 0;
  v258 = [MEMORY[0x277CBEAA8] date];
  v260 = v14;
  v262 = v16;
  v269 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      *buf = 138413570;
      v318 = v19;
      v319 = 2112;
      v320 = v20;
      v321 = 2048;
      v322 = [v12 count];
      v323 = 2048;
      v324 = [v13 count];
      v325 = 2048;
      v326 = [v260 count];
      v327 = 2048;
      v328 = [v16 count];
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, clusters to be created, %lu, clusters to be updated with new workouts, %lu, clusters to be updated with workouts to remove, %lu, clusters to be deleted, %lu", buf, 0x3Eu);

      v14 = v260;
    }
  }

  if ([v12 count] || objc_msgSend(v13, "count") || objc_msgSend(v14, "count") || objc_msgSend(v16, "count"))
  {
    obj = location;
    v266 = [(RTWorkoutRouteManager *)self _getRelevanceLocationWithError:&obj];
    objc_storeStrong(&location, obj);
    if (a7 && location)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v231 = objc_opt_class();
        v232 = NSStringFromClass(v231);
        v233 = NSStringFromSelector(a2);
        *buf = 138412802;
        v318 = v232;
        v319 = 2112;
        v320 = v233;
        v321 = 2112;
        v322 = location;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

        v14 = v260;
      }

      v22 = 0;
      *a7 = location;
      goto LABEL_46;
    }

    v28 = [(RTWorkoutRouteManager *)self healthKitManager];
    v29 = [(RTWorkoutRouteManager *)self healthKitManager];
    v30 = [v29 _getWorkoutDefaultStartDateForRaceRoute];
    v31 = [(RTWorkoutRouteManager *)self healthKitManager];
    v32 = [v31 _getRTWorkoutDefaultTypesForRaceRoute];
    v312 = location;
    v261 = [v28 getLatestWorkoutWithStartDate:v30 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:v32 workoutTypes:&v312 error:1.79769313e308];
    objc_storeStrong(&location, v312);

    v33 = v269;
    if (v269 && location)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        *buf = 138412802;
        v318 = v36;
        v319 = 2112;
        v320 = v37;
        v321 = 2112;
        v322 = location;
        goto LABEL_201;
      }
    }

    else
    {
      v38 = [(RTWorkoutRouteManager *)self healthKitManager];
      v39 = [(RTWorkoutRouteManager *)self healthKitManager];
      v40 = [v39 _getWorkoutDefaultStartDateForRaceRoute];
      v311 = location;
      v250 = [v38 getWorkoutsCountWithStartDate:v40 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:&v311 error:1.79769313e308];
      objc_storeStrong(&location, v311);

      if (!v269 || !location)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            v46 = NSStringFromSelector(a2);
            [v266 latitude];
            v48 = v47;
            [v266 longitude];
            *buf = 138413059;
            v318 = v45;
            v319 = 2112;
            v320 = v46;
            v321 = 2053;
            v322 = v48;
            v323 = 2053;
            v324 = v49;
            _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, currentLocation latitude, %{sensitive}f, longitude, %{sensitive}f", buf, 0x2Au);
          }
        }

        v50 = 1;
        v257 = v13;
        v270 = self;
        while (1)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_192;
          }

          v243 = objc_autoreleasePoolPush();
          v263 = objc_opt_new();
          v307 = 0u;
          v308 = 0u;
          v309 = 0u;
          v310 = 0u;
          v251 = v272;
          v244 = [v251 countByEnumeratingWithState:&v307 objects:v334 count:16];
          if (!v244)
          {
            goto LABEL_92;
          }

          v246 = *v308;
          while (2)
          {
            v51 = 0;
            do
            {
              if (*v308 != v246)
              {
                objc_enumerationMutation(v251);
              }

              v252 = v51;
              v52 = *(*(&v307 + 1) + 8 * v51);
              v53 = objc_autoreleasePoolPush();
              v54 = objc_opt_new();
              v267 = [MEMORY[0x277CBEAA8] date];
              v55 = [(RTWorkoutRouteManager *)v270 healthKitManager];
              v306 = location;
              v56 = [v55 getWorkoutsWithUUIDs:v52 error:&v306];
              objc_storeStrong(&location, v306);

              if (location)
              {
                goto LABEL_91;
              }

              v305 = 0;
              v57 = [(RTWorkoutRouteManager *)v270 _sortWorkouts:v56 key:@"startDate" ascending:0 error:&v305];
              objc_storeStrong(&location, v305);

              if (location)
              {
                v56 = v57;
                goto LABEL_91;
              }

              v304 = 0;
              v58 = [(RTWorkoutRouteManager *)v270 _bestWorkoutFromWorkouts:v57 error:&v304];
              objc_storeStrong(&location, v304);
              if (location)
              {
                goto LABEL_90;
              }

              v303 = 0;
              v59 = [(RTWorkoutRouteManager *)v270 _lastWorkoutFromWorkouts:v57 error:&v303];
              objc_storeStrong(&location, v303);
              if (location)
              {
                goto LABEL_89;
              }

              context = v53;
              v302 = 0;
              v60 = [(RTWorkoutRouteManager *)v270 _mapWorkoutsToUUIDs:v57 error:&v302];
              objc_storeStrong(&location, v302);
              if (location)
              {
                v63 = v60;
                v60 = v59;
                v59 = v58;
                v58 = v57;
                goto LABEL_88;
              }

              v301 = location;
              [(RTWorkoutRouteManager *)v270 _relevanceScoreForWorkoutUUIDs:v60 representativeWorkout:v59 latestWorkoutAcrossAllWorkouts:v261 countOfAllWorkouts:v250 currentLocation:v266 error:&v301];
              v62 = v61;
              objc_storeStrong(&location, v301);
              if (location)
              {
                v63 = v60;
                v60 = v59;
                v59 = v58;
                v58 = 0;
LABEL_88:
                v57 = v58;
                v58 = v59;

                v59 = v60;
                v53 = context;
LABEL_89:

LABEL_90:
                v56 = v57;
                v33 = v269;
LABEL_91:

                objc_autoreleasePoolPop(v53);
                self = v270;
                goto LABEL_92;
              }

              v63 = [MEMORY[0x277CBEAA8] date];
              v264 = [(RTWorkoutRouteManager *)v270 _getWorkoutRouteSnapshotForWorkout:v59 error:&location];
              if (location)
              {
                goto LABEL_87;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v64 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  v65 = objc_opt_class();
                  v66 = NSStringFromClass(v65);
                  v67 = NSStringFromSelector(a2);
                  v68 = [v264 length];
                  *buf = 138412802;
                  v318 = v66;
                  v319 = 2112;
                  v320 = v67;
                  v321 = 2048;
                  v322 = v68;
                  _os_log_impl(&dword_2304B3000, v64, OS_LOG_TYPE_INFO, "%@, %@, snapshot length, %lu", buf, 0x20u);
                }
              }

              v69 = MEMORY[0x277CCABB0];
              v70 = [MEMORY[0x277CBEAA8] date];
              [v70 timeIntervalSinceDate:v63];
              v71 = [v69 numberWithDouble:?];
              v300 = location;
              [(RTWorkoutRouteManager *)v270 _updateMetricsForCurrentTime:v71 syncToHealthKitKey:1 error:&v300];
              objc_storeStrong(&location, v300);

              if (location)
              {
                goto LABEL_87;
              }

              v299 = 0;
              v72 = [(RTWorkoutRouteManager *)v270 _getWorkoutRouteLabelForWorkout:v59 error:&v299];
              objc_storeStrong(&location, v299);
              if (location)
              {
                goto LABEL_86;
              }

              v73 = [(RTWorkoutRouteManager *)v270 healthKitManager];
              v74 = [v58 UUID];
              v75 = [v59 UUID];
              v298 = location;
              v76 = [v73 createWorkoutClusterWithWorkoutUUIDs:v60 bestWorkoutUUID:v74 lastWorkoutUUID:v75 relevanceValue:v264 workoutRouteSnapshot:v72 workoutRouteLabel:&v298 error:v62];
              objc_storeStrong(&location, v298);

              if (location)
              {
                goto LABEL_86;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v77 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                {
                  v78 = objc_opt_class();
                  v79 = NSStringFromClass(v78);
                  NSStringFromSelector(a2);
                  v80 = v248 = v60;
                  v241 = v72;
                  v81 = v63;
                  if (v76)
                  {
                    v82 = @"YES";
                  }

                  else
                  {
                    v82 = @"NO";
                  }

                  v239 = [v248 count];
                  v83 = [v58 UUID];
                  v84 = [v59 UUID];
                  *buf = 138413826;
                  v318 = v79;
                  v319 = 2112;
                  v320 = v80;
                  v321 = 2112;
                  v322 = v82;
                  v63 = v81;
                  v72 = v241;
                  v323 = 2048;
                  v324 = v239;
                  v325 = 2112;
                  v326 = v83;
                  v327 = 2112;
                  v328 = v84;
                  v329 = 2048;
                  v330 = v62;
                  _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, created cluster, status, %@, cluster size, %lu, bestWorkoutUUID, %@, lastWorkoutUUID, %@, relevance score, %.3f", buf, 0x48u);

                  v60 = v248;
                }
              }

              v85 = MEMORY[0x277CCABB0];
              v86 = [MEMORY[0x277CBEAA8] date];
              [v86 timeIntervalSinceDate:v267];
              v87 = [v85 numberWithDouble:?];
              v297 = location;
              [(RTWorkoutRouteManager *)v270 _updateMetricsForCurrentTime:v87 syncToHealthKitKey:3 error:&v297];
              objc_storeStrong(&location, v297);

              if (location)
              {
LABEL_86:

                v13 = v257;
LABEL_87:

                v16 = v262;
                goto LABEL_88;
              }

              v88 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v58 workoutActivityType]);
              [v54 setObject:v88 forKeyedSubscript:@"activity_type"];

              v89 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTWorkoutRouteManager _shouldDecimateWorkout:](v270, "_shouldDecimateWorkout:", v58)}];
              [v54 setObject:v89 forKeyedSubscript:@"is_decimated"];

              [v54 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_new_cluster"];
              v90 = MEMORY[0x277CCABB0];
              v91 = [v58 UUID];
              v92 = [v59 UUID];
              v93 = [v90 numberWithBool:{objc_msgSend(v91, "isEqual:", v92)}];
              [v54 setObject:v93 forKeyedSubscript:@"is_best_also_last_workout"];

              v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "count")}];
              [v54 setObject:v94 forKeyedSubscript:@"count_workouts"];

              v95 = MEMORY[0x277CCABB0];
              v96 = [(RTWorkoutRouteManager *)v270 healthKitManager];
              [v96 _getDurationForWorkout:v58];
              v97 = [v95 numberWithDouble:?];
              [v54 setObject:v97 forKeyedSubscript:@"duration"];

              v98 = MEMORY[0x277CCABB0];
              v99 = [(RTWorkoutRouteManager *)v270 healthKitManager];
              v100 = [v99 _getTotalDistanceForWorkout:v58];
              v101 = [MEMORY[0x277CCDAB0] meterUnit];
              [v100 doubleValueForUnit:v101];
              v102 = [v98 numberWithDouble:?];
              [v54 setObject:v102 forKeyedSubscript:@"total_distance"];

              [v263 addObject:v54];
              objc_autoreleasePoolPop(context);
              v51 = v252 + 1;
              v13 = v257;
              v16 = v262;
              v33 = v269;
            }

            while (v244 != v252 + 1);
            self = v270;
            v244 = [v251 countByEnumeratingWithState:&v307 objects:v334 count:16];
            if (v244)
            {
              continue;
            }

            break;
          }

LABEL_92:

          if (location)
          {
            goto LABEL_191;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v103 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              v104 = objc_opt_class();
              v105 = NSStringFromClass(v104);
              v106 = NSStringFromSelector(a2);
              v107 = [v251 count];
              v108 = [MEMORY[0x277CBEAA8] date];
              [v108 timeIntervalSinceDate:v258];
              v110 = v109;
              +[RTRuntime footprint];
              *buf = 138413314;
              v318 = v105;
              v319 = 2112;
              v320 = v106;
              v321 = 2048;
              v322 = v107;
              v33 = v269;
              v323 = 2048;
              v324 = v110;
              v325 = 2048;
              v326 = v111;
              _os_log_impl(&dword_2304B3000, v103, OS_LOG_TYPE_INFO, "%@, %@, created %lu new clusters to healthKit, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
            }
          }

          v242 = [MEMORY[0x277CBEAA8] date];

          v295 = 0u;
          v296 = 0u;
          v293 = 0u;
          v294 = 0u;
          v249 = [v13 allKeys];
          v245 = [v249 countByEnumeratingWithState:&v293 objects:v333 count:16];
          if (v245)
          {
            v247 = *v294;
            while (2)
            {
              v112 = 0;
              do
              {
                if (*v294 != v247)
                {
                  objc_enumerationMutation(v249);
                }

                v253 = v112;
                v113 = *(*(&v293 + 1) + 8 * v112);
                v114 = objc_autoreleasePoolPush();
                v115 = objc_opt_new();
                v265 = [MEMORY[0x277CBEAA8] date];
                v116 = [(RTWorkoutRouteManager *)self healthKitManager];
                v117 = [v13 objectForKeyedSubscript:v113];
                v118 = [v117 allObjects];
                v292 = location;
                v119 = [v116 getWorkoutsWithUUIDs:v118 error:&v292];
                objc_storeStrong(&location, v292);

                if (location)
                {
                  v33 = v269;
                  goto LABEL_148;
                }

                v120 = [v260 objectForKeyedSubscript:v113];

                if (v120)
                {
                  v121 = [v260 objectForKeyedSubscript:v113];
                  v268 = [v121 allObjects];
                }

                else
                {
                  v268 = 0;
                }

                v291 = location;
                v122 = [(RTWorkoutRouteManager *)self _sortWorkouts:v119 key:@"startDate" ascending:0 error:&v291];
                objc_storeStrong(&location, v291);

                v33 = v269;
                if (location)
                {
                  goto LABEL_147;
                }

                v259 = v114;
                v290 = 0;
                v123 = [(RTWorkoutRouteManager *)self _bestWorkoutFromWorkouts:v122 error:&v290];
                objc_storeStrong(&location, v290);
                if (location)
                {
                  goto LABEL_146;
                }

                v289 = 0;
                v124 = [(RTWorkoutRouteManager *)self _lastWorkoutFromWorkouts:v122 error:&v289];
                objc_storeStrong(&location, v289);
                if (location)
                {
                  v125 = v124;
                  goto LABEL_145;
                }

                v288 = 0;
                v125 = [(RTWorkoutRouteManager *)self _mapWorkoutsToUUIDs:v122 error:&v288];
                objc_storeStrong(&location, v288);
                if (location)
                {
                  goto LABEL_144;
                }

                v287 = location;
                [(RTWorkoutRouteManager *)self _relevanceScoreForWorkoutUUIDs:v125 representativeWorkout:v124 latestWorkoutAcrossAllWorkouts:v261 countOfAllWorkouts:v250 currentLocation:v266 error:&v287];
                v127 = v126;
                objc_storeStrong(&location, v287);
                if (location)
                {
                  v122 = 0;
                  goto LABEL_144;
                }

                v128 = [v113 workoutRouteLabel];
                v129 = [v128 isEqualToString:&stru_284528390];

                if (v129)
                {
                  v286 = location;
                  v122 = [(RTWorkoutRouteManager *)self _getWorkoutRouteLabelForWorkout:v124 error:&v286];
                  objc_storeStrong(&location, v286);
                  if (location)
                  {
                    v33 = v269;
                    goto LABEL_144;
                  }

                  if (([v122 isEqualToString:&stru_284528390] & 1) == 0)
                  {
                    v130 = [(RTWorkoutRouteManager *)v270 healthKitManager];
                    v131 = [v113 clusterUUID];
                    v285 = location;
                    v132 = [v130 updateWorkoutClusterWithUUID:v131 workoutRouteLabel:v122 error:&v285];
                    objc_storeStrong(&location, v285);

                    if (location)
                    {
                      v13 = v257;
                      v33 = v269;
                      self = v270;
                      goto LABEL_144;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      v133 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
                      {
                        v134 = objc_opt_class();
                        contexta = NSStringFromClass(v134);
                        v135 = NSStringFromSelector(a2);
                        v136 = [v113 clusterUUID];
                        v137 = v136;
                        *buf = 138413314;
                        v138 = @"NO";
                        if (v132)
                        {
                          v138 = @"YES";
                        }

                        v318 = contexta;
                        v319 = 2112;
                        v320 = v135;
                        v321 = 2112;
                        v322 = v136;
                        v323 = 2112;
                        v324 = v138;
                        v325 = 2112;
                        v326 = v122;
                        _os_log_impl(&dword_2304B3000, v133, OS_LOG_TYPE_INFO, "%@, %@, updated cluster with cluster uuid, %@, status, %@, new route label, %@,", buf, 0x34u);
                      }
                    }
                  }

                  self = v270;
                }

                v139 = [(RTWorkoutRouteManager *)self healthKitManager];
                v140 = [v113 clusterUUID];
                v141 = v123;
                v142 = [v123 UUID];
                contextb = v124;
                v143 = [v124 UUID];
                v144 = [MEMORY[0x277CCABB0] numberWithDouble:v127];
                v284 = location;
                v145 = [v139 updateWorkoutClusterWithUUID:v140 newBestWorkoutUUID:v142 newLastWorkoutUUID:v143 newRelevance:v144 newWorkoutAssociations:v125 workoutAssociationsToRemove:v268 error:&v284];
                objc_storeStrong(&location, v284);

                if (location)
                {
                  v122 = 0;
                  v13 = v257;
                  v33 = v269;
                  self = v270;
                  goto LABEL_139;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v146 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                  {
                    v147 = objc_opt_class();
                    v148 = NSStringFromClass(v147);
                    v149 = NSStringFromSelector(a2);
                    v150 = [v113 clusterUUID];
                    v151 = @"NO";
                    if (v145)
                    {
                      v151 = @"YES";
                    }

                    v240 = v151;
                    v152 = [v125 count];
                    v153 = [v141 UUID];
                    v154 = [contextb UUID];
                    *buf = 138414082;
                    v318 = v148;
                    v319 = 2112;
                    v320 = v149;
                    v321 = 2112;
                    v322 = v150;
                    v323 = 2112;
                    v324 = v240;
                    v325 = 2048;
                    v326 = v152;
                    v327 = 2112;
                    v328 = v153;
                    v329 = 2112;
                    v330 = *&v154;
                    v331 = 2048;
                    v332 = v127;
                    _os_log_impl(&dword_2304B3000, v146, OS_LOG_TYPE_INFO, "%@, %@, updated cluster with cluster uuid, %@, status, %@, cluster size, %lu, bestWorkoutUUID, %@, lastWorkoutUUID, %@, relevance score, %.3f", buf, 0x52u);
                  }
                }

                v155 = MEMORY[0x277CCABB0];
                v156 = [MEMORY[0x277CBEAA8] date];
                [v156 timeIntervalSinceDate:v265];
                v157 = [v155 numberWithDouble:?];
                v283 = location;
                self = v270;
                [(RTWorkoutRouteManager *)v270 _updateMetricsForCurrentTime:v157 syncToHealthKitKey:2 error:&v283];
                objc_storeStrong(&location, v283);

                if (location)
                {
                  v122 = 0;
                  v13 = v257;
                  v33 = v269;
LABEL_139:
                  v124 = contextb;
                  v123 = v141;
LABEL_144:

                  v122 = v268;
                  v268 = v123;
                  v123 = v124;
LABEL_145:

LABEL_146:
                  v114 = v259;
LABEL_147:

                  v119 = v122;
LABEL_148:

                  objc_autoreleasePoolPop(v114);
                  v16 = v262;
                  goto LABEL_149;
                }

                v158 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v141 workoutActivityType]);
                [v115 setObject:v158 forKeyedSubscript:@"activity_type"];

                v159 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTWorkoutRouteManager _shouldDecimateWorkout:](v270, "_shouldDecimateWorkout:", v141)}];
                [v115 setObject:v159 forKeyedSubscript:@"is_decimated"];

                [v115 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"is_new_cluster"];
                v160 = MEMORY[0x277CCABB0];
                v161 = [v141 UUID];
                v162 = [contextb UUID];
                v163 = [v160 numberWithBool:{objc_msgSend(v161, "isEqual:", v162)}];
                [v115 setObject:v163 forKeyedSubscript:@"is_best_also_last_workout"];

                v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v125, "count")}];
                [v115 setObject:v164 forKeyedSubscript:@"count_workouts"];

                v165 = MEMORY[0x277CCABB0];
                v166 = [(RTWorkoutRouteManager *)v270 healthKitManager];
                [v166 _getDurationForWorkout:v141];
                v167 = [v165 numberWithDouble:?];
                [v115 setObject:v167 forKeyedSubscript:@"duration"];

                v168 = MEMORY[0x277CCABB0];
                v169 = [(RTWorkoutRouteManager *)v270 healthKitManager];
                v170 = [v169 _getTotalDistanceForWorkout:v141];
                v171 = [MEMORY[0x277CCDAB0] meterUnit];
                [v170 doubleValueForUnit:v171];
                v172 = [v168 numberWithDouble:?];
                [v115 setObject:v172 forKeyedSubscript:@"total_distance"];

                [v263 addObject:v115];
                objc_autoreleasePoolPop(v259);
                v112 = v253 + 1;
                v13 = v257;
              }

              while (v245 != v253 + 1);
              v16 = v262;
              v33 = v269;
              v245 = [v249 countByEnumeratingWithState:&v293 objects:v333 count:16];
              if (v245)
              {
                continue;
              }

              break;
            }
          }

LABEL_149:

          if (location)
          {
            v258 = v242;
LABEL_191:

            objc_autoreleasePoolPop(v243);
            goto LABEL_192;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v173 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
            {
              v174 = objc_opt_class();
              v175 = NSStringFromClass(v174);
              v176 = NSStringFromSelector(a2);
              v177 = [v13 count];
              v178 = [MEMORY[0x277CBEAA8] date];
              [v178 timeIntervalSinceDate:v242];
              v180 = v179;
              +[RTRuntime footprint];
              *buf = 138413314;
              v318 = v175;
              v319 = 2112;
              v320 = v176;
              v321 = 2048;
              v322 = v177;
              v323 = 2048;
              v324 = v180;
              v325 = 2048;
              v326 = v181;
              _os_log_impl(&dword_2304B3000, v173, OS_LOG_TYPE_INFO, "%@, %@, updated %lu clusters to healthKit, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
            }
          }

          v258 = [MEMORY[0x277CBEAA8] date];

          v282 = 0u;
          v280 = 0u;
          v281 = 0u;
          v279 = 0u;
          v182 = v16;
          v183 = [v182 countByEnumeratingWithState:&v279 objects:v316 count:16];
          if (v183)
          {
            v184 = v183;
            v185 = *v280;
            while (2)
            {
              for (i = 0; i != v184; ++i)
              {
                if (*v280 != v185)
                {
                  objc_enumerationMutation(v182);
                }

                v187 = *(*(&v279 + 1) + 8 * i);
                v188 = objc_autoreleasePoolPush();
                v189 = [(RTWorkoutRouteManager *)self healthKitManager];
                v190 = [v187 clusterUUID];
                v278 = location;
                v191 = [v189 deleteWorkoutCluster:v190 error:&v278];
                objc_storeStrong(&location, v278);

                if (location)
                {
                  objc_autoreleasePoolPop(v188);
                  goto LABEL_170;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v192 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                  {
                    v193 = objc_opt_class();
                    v194 = NSStringFromClass(v193);
                    v195 = NSStringFromSelector(a2);
                    v196 = [v187 clusterUUID];
                    v197 = v196;
                    *buf = 138413058;
                    v198 = @"NO";
                    if (v191)
                    {
                      v198 = @"YES";
                    }

                    v318 = v194;
                    v319 = 2112;
                    v320 = v195;
                    v321 = 2112;
                    v322 = v196;
                    v323 = 2112;
                    v324 = v198;
                    _os_log_impl(&dword_2304B3000, v192, OS_LOG_TYPE_INFO, "%@, %@, deleted cluster with cluster uuid, %@, status, %@", buf, 0x2Au);

                    self = v270;
                  }
                }

                objc_autoreleasePoolPop(v188);
              }

              v184 = [v182 countByEnumeratingWithState:&v279 objects:v316 count:16];
              if (v184)
              {
                continue;
              }

              break;
            }
          }

LABEL_170:

          if (location)
          {
            v13 = v257;
            v16 = v262;
            v33 = v269;
            goto LABEL_191;
          }

          v13 = v257;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v199 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
            {
              v200 = objc_opt_class();
              v201 = NSStringFromClass(v200);
              v202 = NSStringFromSelector(a2);
              v203 = [v182 count];
              v204 = [MEMORY[0x277CBEAA8] date];
              [v204 timeIntervalSinceDate:v258];
              v206 = v205;
              +[RTRuntime footprint];
              *buf = 138413314;
              v318 = v201;
              v319 = 2112;
              v320 = v202;
              v321 = 2048;
              v322 = v203;
              v323 = 2048;
              v324 = v206;
              v325 = 2048;
              v326 = v207;
              _os_log_impl(&dword_2304B3000, v199, OS_LOG_TYPE_INFO, "%@, %@, deleted %lu clusters from healthKit, latency, %.4f sec, footprint, %.4f MB", buf, 0x34u);
            }
          }

          v208 = objc_opt_class();
          v209 = NSStringFromClass(v208);
          v210 = NSStringFromSelector(a2);
          [(RTWorkoutRouteManager *)self _logClusters:v251 className:v209 selectorName:v210];

          v211 = objc_opt_new();
          v274 = 0u;
          v275 = 0u;
          v276 = 0u;
          v277 = 0u;
          v212 = [v257 allValues];
          v213 = [v212 countByEnumeratingWithState:&v274 objects:v315 count:16];
          if (v213)
          {
            v214 = v213;
            v215 = *v275;
            do
            {
              for (j = 0; j != v214; ++j)
              {
                if (*v275 != v215)
                {
                  objc_enumerationMutation(v212);
                }

                v217 = *(*(&v274 + 1) + 8 * j);
                v218 = objc_autoreleasePoolPush();
                [v211 addObject:v217];
                objc_autoreleasePoolPop(v218);
              }

              v214 = [v212 countByEnumeratingWithState:&v274 objects:v315 count:16];
            }

            while (v214);
          }

          v219 = objc_opt_class();
          v220 = NSStringFromClass(v219);
          v221 = NSStringFromSelector(a2);
          [(RTWorkoutRouteManager *)self _logClusters:v211 className:v220 selectorName:v221];

          v222 = [(RTWorkoutRouteManager *)self workoutMetricsManager];
          v273 = location;
          v223 = [v222 submitMetricsForEvent:1 data:v263 error:&v273];
          objc_storeStrong(&location, v273);

          v224 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
          {
            v226 = objc_opt_class();
            v227 = NSStringFromClass(v226);
            v228 = NSStringFromSelector(a2);
            if (v223)
            {
              v229 = @"YES";
            }

            else
            {
              v229 = @"NO";
            }

            v230 = [v263 count];
            *buf = 138413058;
            v318 = v227;
            v319 = 2112;
            v320 = v228;
            v321 = 2112;
            v322 = v229;
            v323 = 2048;
            v324 = v230;
            _os_log_error_impl(&dword_2304B3000, v224, OS_LOG_TYPE_ERROR, "%@, %@, metrics submission status, %@, metrics count, %lu", buf, 0x2Au);
          }

          v225 = location;
          objc_autoreleasePoolPop(v243);
          v50 = 0;
          v16 = v262;
          v33 = v269;
          if (v225)
          {
LABEL_192:
            v22 = 1;
            if (v33)
            {
              v14 = v260;
              if (location)
              {
                v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v234 = objc_opt_class();
                  v36 = NSStringFromClass(v234);
                  v37 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v318 = v36;
                  v319 = 2112;
                  v320 = v37;
                  v321 = 2112;
                  v322 = location;
                  goto LABEL_201;
                }

LABEL_44:

                v22 = 0;
                *v33 = location;
              }
            }

            else
            {
              v14 = v260;
            }

LABEL_46:
            v41 = v266;
LABEL_47:

            goto LABEL_48;
          }
        }
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v238 = objc_opt_class();
        v36 = NSStringFromClass(v238);
        v37 = NSStringFromSelector(a2);
        *buf = 138412802;
        v318 = v36;
        v319 = 2112;
        v320 = v37;
        v321 = 2112;
        v322 = location;
LABEL_201:
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    v14 = v260;
    goto LABEL_44;
  }

  v22 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v235 = objc_opt_class();
      v236 = NSStringFromClass(v235);
      v237 = NSStringFromSelector(a2);
      *buf = 138412546;
      v318 = v236;
      v319 = 2112;
      v320 = v237;
      _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%@, %@, no clusters to save", buf, 0x16u);

      v14 = v260;
    }

    goto LABEL_47;
  }

LABEL_48:

LABEL_49:
  return v22;
}

- (BOOL)_syncClustersToWatchWithLimit:(unint64_t)a3 error:(id *)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__153;
  v49 = __Block_byref_object_dispose__153;
  v50 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTWorkoutRouteManager *)self healthKitManager];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __61__RTWorkoutRouteManager__syncClustersToWatchWithLimit_error___block_invoke;
  v40[3] = &unk_2788D0410;
  v42 = v51;
  v43 = &v45;
  v40[4] = self;
  v44 = a2;
  v8 = v6;
  v41 = v8;
  [v7 generateRaceRouteClustersWithLimit:100 handler:v40];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v58[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
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
  v26 = v25;
  if (a4 && v25)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v33;
      v54 = 2112;
      v55 = v34;
      v56 = 2112;
      v57 = v26;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v28 = v26;
  }

  else
  {
    if (!a4 || !v46[5])
    {
      v30 = 1;
      goto LABEL_19;
    }

    v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v38 = v46[5];
      *buf = 138412802;
      *&buf[4] = v36;
      v54 = 2112;
      v55 = v37;
      v56 = 2112;
      v57 = v38;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v28 = v46[5];
  }

  v30 = 0;
  *a4 = v28;
LABEL_19:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(v51, 8);
  return v30;
}

void __61__RTWorkoutRouteManager__syncClustersToWatchWithLimit_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 64));
      v11 = v10;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      v18 = 100;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, synced clusters with limit, %lu, status, %@", &v13, 0x2Au);
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_deleteAllClustersFromHealthKitError:(id *)a3
{
  v73[1] = *MEMORY[0x277D85DE8];
  [(RTWorkoutRouteManager *)self _clearInMemoryClusters];
  v4 = objc_opt_new();
  v5 = dispatch_semaphore_create(0);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__153;
  v65 = __Block_byref_object_dispose__153;
  v66 = 0;
  v6 = [(RTWorkoutRouteManager *)self healthKitManager];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __62__RTWorkoutRouteManager__deleteAllClustersFromHealthKitError___block_invoke;
  v57[3] = &unk_2788D0438;
  v51 = v4;
  v58 = v51;
  v7 = v5;
  v59 = v7;
  v60 = &v61;
  [v6 fetchWorkoutClustersWithHandler:v57];

  dsema = v7;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v73[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
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
  v24 = v23;
  if (v51 && v23)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v42;
      v69 = 2112;
      v70 = v43;
      v71 = 2112;
      v72 = v24;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
    }

    [v51 addObject:v24];
    v24 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = v62[5];
  v27 = [v26 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v27)
  {
    v28 = *v54;
    do
    {
      v29 = 0;
      v30 = v24;
      do
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v53 + 1) + 8 * v29);
        v32 = objc_autoreleasePoolPush();
        v33 = [(RTWorkoutRouteManager *)self healthKitManager];
        v34 = [v31 clusterUUID];
        v52 = v30;
        [v33 deleteWorkoutCluster:v34 error:&v52];
        v24 = v52;

        objc_autoreleasePoolPop(v32);
        ++v29;
        v30 = v24;
      }

      while (v27 != v29);
      v27 = [v26 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v27);
  }

  if (v24)
  {
    v35 = v51 != 0;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v45;
      v69 = 2112;
      v70 = v46;
      v71 = 2112;
      v72 = v24;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
    }

    [v51 addObject:v24];
    v24 = 0;
  }

  if (a3)
  {
    if ([v51 count])
    {
      v47 = 1;
      v37 = _RTSafeArray();
      v38 = _RTMultiErrorCreate();
      *a3 = v38;
    }

    else
    {
      *a3 = 0;
    }
  }

  v39 = [v51 count] == 0;

  _Block_object_dispose(&v61, 8);
  return v39;
}

void __62__RTWorkoutRouteManager__deleteAllClustersFromHealthKitError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) addObject:a3];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_storeWorkoutDistances:(id)a3 error:(id *)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__153;
  v50 = __Block_byref_object_dispose__153;
  v51 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __54__RTWorkoutRouteManager__storeWorkoutDistances_error___block_invoke;
  v42[3] = &unk_2788C46B8;
  v45 = &v46;
  v9 = v6;
  v43 = v9;
  v10 = v7;
  v44 = v10;
  [v8 storeWorkoutDistances:v9 handler:v42];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v57[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
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
  v28 = v27;
  if (a4 && v27)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v35;
      v53 = 2112;
      v54 = v36;
      v55 = 2112;
      v56 = v28;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v30 = v28;
  }

  else
  {
    if (!a4 || !v47[5])
    {
      v32 = 1;
      goto LABEL_19;
    }

    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      v40 = v47[5];
      *buf = 138412802;
      *&buf[4] = v38;
      v53 = 2112;
      v54 = v39;
      v55 = 2112;
      v56 = v40;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v30 = v47[5];
  }

  v32 = 0;
  *a4 = v30;
LABEL_19:

  _Block_object_dispose(&v46, 8);
  return v32;
}

void __54__RTWorkoutRouteManager__storeWorkoutDistances_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) count];
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v8 = 134218242;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Stored Distance Records, count, %lu, error, %@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_updateWorkoutDistanceRecordsWithObjectIDs:(id)a3 isVisited:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v61[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__153;
  v54 = __Block_byref_object_dispose__153;
  v55 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      *buf = 134218242;
      *&buf[4] = v9;
      v57 = 2112;
      v58 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "updating distance records with count, %lu, isVisited, %@", buf, 0x16u);
    }
  }

  v11 = dispatch_semaphore_create(0);
  v12 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __84__RTWorkoutRouteManager__updateWorkoutDistanceRecordsWithObjectIDs_isVisited_error___block_invoke;
  v46[3] = &unk_2788C8000;
  v48 = &v50;
  v49 = v6;
  v13 = v11;
  v47 = v13;
  [v12 updateWorkoutDistancesWithObjectIDs:v7 isVisited:v6 handler:v46];

  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v61[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v61 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

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
  v31 = v30;
  if (a5 && v30)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v38;
      v57 = 2112;
      v58 = v39;
      v59 = 2112;
      v60 = v31;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v33 = v31;
  }

  else
  {
    if (!a5 || !v51[5])
    {
      v35 = 1;
      goto LABEL_25;
    }

    v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      v43 = v51[5];
      *buf = 138412802;
      *&buf[4] = v41;
      v57 = 2112;
      v58 = v42;
      v59 = 2112;
      v60 = v43;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v33 = v51[5];
  }

  v35 = 0;
  *a5 = v33;
LABEL_25:

  _Block_object_dispose(&v50, 8);
  return v35;
}

void __84__RTWorkoutRouteManager__updateWorkoutDistanceRecordsWithObjectIDs_isVisited_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 48))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = 134218498;
      v11 = a2;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "updated distance records, count, %lu, isVisited, %@, error, %@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_bestWorkoutFromWorkouts:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[RTWorkoutRouteManager _bestWorkoutFromWorkouts:error:]";
      v43 = 1024;
      LODWORD(v44) = 5594;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workouts (in %s:%d)", buf, 0x12u);
    }
  }

  v31 = a4;
  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v9)
  {
    v11 = 0;
    v34 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v11 = 0;
  v34 = 0;
  v12 = *v38;
  v13 = 1.79769313e308;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v38 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      v16 = objc_autoreleasePoolPush();
      v36 = v11;
      v17 = [(RTWorkoutRouteManager *)self _paceFromWorkout:v15 error:&v36];
      v18 = v36;

      if (v8 && v18)
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          v33 = NSStringFromClass(v24);
          v25 = NSStringFromSelector(a2);
          *buf = 138412802;
          v42 = v33;
          v43 = 2112;
          v44 = v25;
          v26 = v25;
          v45 = 2112;
          v46 = v18;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
        }

        [v8 addObject:v18];
        v20 = v18;
        v18 = 0;
      }

      else
      {
        [v17 doubleValue];
        if (v21 >= v13)
        {
          goto LABEL_18;
        }

        [v17 doubleValue];
        v13 = v22;
        v23 = v15;
        v20 = v34;
        v34 = v23;
      }

LABEL_18:
      v11 = v18;

      objc_autoreleasePoolPop(v16);
    }

    v10 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v10);
LABEL_22:

  if ([v8 count])
  {
    if (v31)
    {
      v27 = _RTSafeArray();
      *v31 = _RTMultiErrorCreate();
    }

    v28 = 0;
    v29 = v34;
  }

  else
  {
    v29 = v34;
    v28 = v34;
  }

  return v28;
}

- (id)_lastWorkoutFromWorkouts:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[RTWorkoutRouteManager _lastWorkoutFromWorkouts:error:]";
      v31 = 1024;
      v32 = 5624;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workouts (in %s:%d)", buf, 0x12u);
    }
  }

  v22 = a4;
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 endDate];
        if ([v16 compare:v7] == 1)
        {
          v17 = v16;

          v18 = v14;
          v7 = v17;
          v11 = v18;
        }

        objc_autoreleasePoolPop(v15);
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if ([v23 count])
  {
    v19 = v22;
    if (v22)
    {
      v20 = _RTSafeArray();
      *v22 = _RTMultiErrorCreate();

      v19 = 0;
    }
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (id)_getRelevanceLocationWithError:(id *)a3
{
  v89[1] = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__153;
  v3 = 1;
  v82 = __Block_byref_object_dispose__153;
  v83 = 0;
  v60 = *MEMORY[0x277D01448];
  v61 = *MEMORY[0x277CCA450];
  while ((v3 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__153;
    v76 = __Block_byref_object_dispose__153;
    v77 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [(RTWorkoutRouteManager *)self locationManager];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __56__RTWorkoutRouteManager__getRelevanceLocationWithError___block_invoke;
    v68[3] = &unk_2788C8390;
    v70 = &v78;
    v71 = &v72;
    v6 = v4;
    v69 = v6;
    [v5 fetchCurrentLocationWithHandler:v68];

    v8 = (v79 + 5);
    v7 = v79[5];
    v9 = v6;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
      v89[0] = v61;
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v89 count:1];
      v23 = [v21 errorWithDomain:v60 code:15 userInfo:v22];

      if (v23)
      {
        v24 = v23;

        v7 = v23;
      }
    }

    objc_storeStrong(v8, v7);
    if (v79[5])
    {
      LODWORD(v25) = 2;
    }

    else
    {
      v25 = v73[5];
      if (v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v29 = NSStringFromSelector(a2);
            v30 = v73[5];
            *buf = 138412803;
            *&buf[4] = v28;
            v85 = 2112;
            v86 = v29;
            v87 = 2117;
            v88 = v30;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, current location, %{sensitive}@", buf, 0x20u);
          }

          v25 = v73[5];
        }

        v59 = v25;
        LODWORD(v25) = 1;
      }

      else
      {
        v31 = dispatch_semaphore_create(0);

        v32 = [(RTWorkoutRouteManager *)self locationManager];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __56__RTWorkoutRouteManager__getRelevanceLocationWithError___block_invoke_267;
        v64[3] = &unk_2788C8390;
        v66 = &v78;
        v67 = &v72;
        v33 = v31;
        v65 = v33;
        [v32 fetchLastLocationWithHandler:v64];

        v35 = (v79 + 5);
        v34 = v79[5];
        v9 = v33;
        v36 = [MEMORY[0x277CBEAA8] now];
        v37 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v9, v37))
        {
          v38 = [MEMORY[0x277CBEAA8] now];
          [v38 timeIntervalSinceDate:v36];
          v40 = v39;
          v41 = objc_opt_new();
          v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
          v43 = [MEMORY[0x277CCACC8] callStackSymbols];
          v44 = [v43 filteredArrayUsingPredicate:v42];
          v45 = [v44 firstObject];

          [v41 submitToCoreAnalytics:v45 type:1 duration:v40];
          v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v47 = MEMORY[0x277CCA9B8];
          v89[0] = v61;
          *buf = @"semaphore wait timeout";
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v89 count:1];
          v49 = [v47 errorWithDomain:v60 code:15 userInfo:v48];

          if (v49)
          {
            v50 = v49;

            v34 = v49;
          }
        }

        objc_storeStrong(v35, v34);
        if (v79[5])
        {
          LODWORD(v25) = 2;
        }

        else
        {
          v25 = v73[5];
          if (v25)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = objc_opt_class();
                v53 = NSStringFromClass(v52);
                v54 = NSStringFromSelector(a2);
                v55 = v73[5];
                *buf = 138412803;
                *&buf[4] = v53;
                v85 = 2112;
                v86 = v54;
                v87 = 2117;
                v88 = v55;
                _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, current location, %{sensitive}@", buf, 0x20u);
              }

              v25 = v73[5];
            }

            v59 = v25;
            LODWORD(v25) = 1;
          }
        }
      }
    }

    _Block_object_dispose(&v72, 8);
    objc_autoreleasePoolPop(context);
    v3 = 0;
    if (v25)
    {
      if (v25 != 2)
      {
        goto LABEL_34;
      }

      break;
    }
  }

  v59 = 0;
  if (a3)
  {
    *a3 = v79[5];
  }

LABEL_34:
  _Block_object_dispose(&v78, 8);

  return v59;
}

void __56__RTWorkoutRouteManager__getRelevanceLocationWithError___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v6];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __56__RTWorkoutRouteManager__getRelevanceLocationWithError___block_invoke_267(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v6];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (double)_relevanceScoreForWorkoutUUIDs:(id)a3 representativeWorkout:(id)a4 latestWorkoutAcrossAllWorkouts:(id)a5 countOfAllWorkouts:(unint64_t)a6 currentLocation:(id)a7 error:(id *)a8
{
  v139[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v98 = v17;
  v99 = a7;
  if (!v15)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    v35 = 0.0;
    if (!a8)
    {
      goto LABEL_63;
    }

    v36 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
LABEL_26:
    *a8 = v36;
    goto LABEL_63;
  }

  if (!v16)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: representativeWorkout", buf, 2u);
    }

    v35 = 0.0;
    if (!a8)
    {
      goto LABEL_63;
    }

    v36 = _RTErrorInvalidParameterCreate(@"representativeWorkout");
    goto LABEL_26;
  }

  if (!v17)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: latestWorkoutAcrossAllWorkouts", buf, 2u);
    }

    v35 = 0.0;
    if (!a8)
    {
      goto LABEL_63;
    }

    v36 = _RTErrorInvalidParameterCreate(@"latestWorkoutAcrossAllWorkouts");
    goto LABEL_26;
  }

  if (a6)
  {
    aSelector = a2;
    v114 = 0;
    v115 = &v114;
    v116 = 0x3032000000;
    v117 = __Block_byref_object_copy__153;
    v118 = __Block_byref_object_dispose__153;
    v119 = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    v18 = dispatch_semaphore_create(0);
    v19 = [(RTWorkoutRouteManager *)self healthKitManager];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __150__RTWorkoutRouteManager__relevanceScoreForWorkoutUUIDs_representativeWorkout_latestWorkoutAcrossAllWorkouts_countOfAllWorkouts_currentLocation_error___block_invoke;
    v101[3] = &unk_2788D0460;
    v103 = &v110;
    v104 = &v106;
    v105 = &v114;
    v20 = v18;
    v102 = v20;
    [v19 fetchRouteLocationsUsingWorkout:v16 decimationLevel:3 limit:1 shift:0 handler:v101];

    dsema = v20;
    v95 = [MEMORY[0x277CBEAA8] now];
    v21 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v21))
    {
      v94 = [MEMORY[0x277CBEAA8] now];
      [v94 timeIntervalSinceDate:v95];
      v23 = v22;
      v24 = objc_opt_new();
      v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
      v139[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v139 count:1];
      v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

      if (v32)
      {
        v33 = v32;
      }
    }

    else
    {
      v32 = 0;
    }

    v40 = v32;
    v41 = v40;
    if (a8 && v40)
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        v84 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v83;
        v121 = 2112;
        v122 = v84;
        v123 = 2112;
        v124 = *&v41;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v43 = v41;
      *a8 = v41;
    }

    else
    {
      if (!a8 || !v115[5])
      {
        if (v107[3])
        {
          v96 = [(RTWorkoutRouteManager *)self _getRTLocationUsingCLLocationCoordinate2D:v111[3]];
          v45 = [(RTWorkoutRouteManager *)self distanceCalculator];
          v46 = (v115 + 5);
          obj = v115[5];
          [v45 distanceFromLocation:v99 toLocation:v96 error:&obj];
          v48 = v47;
          objc_storeStrong(v46, obj);

          v49 = v111;
          v50 = v111[3];
          if (v50)
          {
            free(v50);
            v49 = v111;
          }

          v49[3] = 0;
          if (a8 && v115[5])
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v89 = objc_opt_class();
              v90 = NSStringFromClass(v89);
              v91 = NSStringFromSelector(aSelector);
              v92 = *(v115 + 5);
              *buf = 138412802;
              *&buf[4] = v90;
              v121 = 2112;
              v122 = v91;
              v123 = 2112;
              v124 = v92;
              _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
            }

            *a8 = v115[5];
            v35 = 0.0;
          }

          else if (v48 <= 80467.0)
          {
            v65 = [v15 count];
            v66 = [MEMORY[0x277CBEAA8] date];
            v67 = [v16 endDate];
            [v66 timeIntervalSinceDate:v67];
            v69 = v68;

            v70 = [v98 endDate];
            [v66 timeIntervalSinceDate:v70];
            v72 = v71;

            v73 = v65 / a6 * 50.0;
            v74 = v69 / 86400.0;
            v75 = v72 / 86400.0;
            v76 = v75 / (v69 / 86400.0) * 50.0;
            v35 = v73 + v76;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v77 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = objc_opt_class();
                v79 = NSStringFromClass(v78);
                v80 = NSStringFromSelector(aSelector);
                *buf = 138414338;
                *&buf[4] = v79;
                v121 = 2112;
                v122 = v80;
                v123 = 2048;
                v124 = v48;
                v125 = 2048;
                v126 = 0x40F3A53000000000;
                v127 = 2048;
                v128 = v73 + v76;
                v129 = 2048;
                v130 = v73;
                v131 = 2048;
                v132 = v76;
                v133 = 2048;
                v134 = v74;
                v135 = 2048;
                v136 = v75;
                _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, distanceFromCurrentLocationToCluster, %.5f, distance threshold, %.5f, relevanceScore, %.5f, clusterSizeScore, %.5f, daysSinceLastRunScore, %.5f, secondsSinceLastWorkout, %.5f, secondsSinceLatestWorkoutAcrossAllWorkouts, %.5f", buf, 0x5Cu);
              }
            }
          }

          else
          {
            v35 = 0.0;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v52 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = objc_opt_class();
                v54 = NSStringFromClass(v53);
                v55 = NSStringFromSelector(aSelector);
                *buf = 138413314;
                *&buf[4] = v54;
                v121 = 2112;
                v122 = v55;
                v123 = 2048;
                v124 = v48;
                v125 = 2048;
                v126 = 0x40F3A53000000000;
                v127 = 2048;
                v128 = 0.0;
                _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, "%@, %@, distanceFromCurrentLocationToCluster, %.5f, cluster is outside the distance threshold, %.5f, relevanceScore, %.5f", buf, 0x34u);
              }
            }
          }
        }

        else
        {
          v56 = MEMORY[0x277CCA9B8];
          v137 = *MEMORY[0x277CCA450];
          v57 = MEMORY[0x277CCACA8];
          v58 = [v16 UUID];
          v59 = [v57 stringWithFormat:@"no locations returned for workout UUID, %@", v58, aSelector];
          v138 = v59;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v61 = [v56 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v60];
          v62 = v115[5];
          v115[5] = v61;

          v63 = v111;
          v64 = v111[3];
          if (v64)
          {
            free(v64);
            v63 = v111;
          }

          v63[3] = 0;
          v35 = 0.0;
          if (a8)
          {
            *a8 = v115[5];
          }
        }

        goto LABEL_62;
      }

      v44 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        v87 = NSStringFromSelector(aSelector);
        v88 = *(v115 + 5);
        *buf = 138412802;
        *&buf[4] = v86;
        v121 = 2112;
        v122 = v87;
        v123 = 2112;
        v124 = v88;
        _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      *a8 = v115[5];
    }

    v35 = 0.0;
LABEL_62:

    _Block_object_dispose(&v106, 8);
    _Block_object_dispose(&v110, 8);
    _Block_object_dispose(&v114, 8);

    goto LABEL_63;
  }

  v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: countOfAllWorkouts", buf, 2u);
  }

  v35 = 0.0;
  if (a8)
  {
    v36 = _RTErrorInvalidParameterCreate(@"countOfAllWorkouts");
    goto LABEL_26;
  }

LABEL_63:

  return v35;
}

void __150__RTWorkoutRouteManager__relevanceScoreForWorkoutUUIDs_representativeWorkout_latestWorkoutAcrossAllWorkouts_countOfAllWorkouts_currentLocation_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getWorkoutRouteSnapshotForWorkout:(id)a3 error:(id *)a4
{
  v160[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v118 = objc_autoreleasePoolPush();
  v139 = 0;
  v140 = &v139;
  v141 = 0x3032000000;
  v142 = __Block_byref_object_copy__153;
  v143 = __Block_byref_object_dispose__153;
  v144 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v7 = dispatch_semaphore_create(0);
  v119 = v6;
  LODWORD(v6) = [(RTWorkoutRouteManager *)self _shouldDecimateWorkout:v6];
  v8 = [(RTWorkoutRouteManager *)self healthKitManager];
  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke;
  v126[3] = &unk_2788D0460;
  v128 = &v135;
  v129 = &v131;
  v130 = &v139;
  v10 = v7;
  v127 = v10;
  [v8 fetchRouteLocationsUsingWorkout:v119 decimationLevel:v9 limit:0 shift:1 handler:v126];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
    v150 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v150 count:1];
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
  v28 = v27;
  if (!a4 || !v27)
  {
    if (a4 && v140[5])
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v100 = objc_opt_class();
        v101 = NSStringFromClass(v100);
        v102 = NSStringFromSelector(a2);
        v103 = v140[5];
        *buf = 138412802;
        *&buf[4] = v101;
        *&buf[12] = 2112;
        *&buf[14] = v102;
        *&buf[22] = 2112;
        v157 = v103;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v30 = v140[5];
      goto LABEL_20;
    }

    if (!v132[3])
    {
      v32 = 0;
      goto LABEL_56;
    }

    v113 = [MEMORY[0x277CD4F28] polylineWithCoordinates:v136[3] count:?];
    v34 = objc_opt_new();
    [v34 _setUseSnapshotService:1];
    [v113 boundingMapRect];
    v166 = MKCoordinateRegionForMapRect(v165);
    latitude = v166.center.latitude;
    longitude = v166.center.longitude;
    if (v166.span.latitudeDelta >= v166.span.longitudeDelta)
    {
      latitudeDelta = v166.span.latitudeDelta;
    }

    else
    {
      latitudeDelta = v166.span.longitudeDelta;
    }

    v38 = latitudeDelta * 0.5;
    v162 = CLLocationCoordinate2DMake(latitude + latitudeDelta * 0.5, v166.center.longitude - latitudeDelta * 0.5);
    MKMapPointForCoordinate(v162);
    v163 = CLLocationCoordinate2DMake(latitude - v38, longitude + v38);
    MKMapPointForCoordinate(v163);
    _MKMapRectThatFits();
    [v34 setMapRect:{0x4044000000000000, 0x4044000000000000, 0x4044000000000000, 0x4044000000000000}];
    [v34 setSize:{157.0, 157.0}];
    [v34 setShowsBuildings:0];
    v39 = [MEMORY[0x277CD4F10] filterExcludingAllCategories];
    [v34 setPointOfInterestFilter:v39];
    v114 = v34;

    [v34 setMapType:5];
    v40 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [v34 setTraitCollection:v40];

    v41 = [objc_alloc(MEMORY[0x277CD4EC0]) initWithOptions:v34];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v157 = __Block_byref_object_copy__153;
    v158 = __Block_byref_object_dispose__153;
    v159 = 0;
    v150 = 0;
    v151 = &v150;
    v152 = 0x3032000000;
    v153 = __Block_byref_object_copy__153;
    v154 = __Block_byref_object_dispose__153;
    v155 = 0;
    v42 = dispatch_semaphore_create(0);
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke_285;
    v122[3] = &unk_2788D0488;
    v124 = &v150;
    v125 = buf;
    v43 = v42;
    v123 = v43;
    v112 = v41;
    [v41 startWithCompletionHandler:v122];
    dsema = v43;
    v44 = [MEMORY[0x277CBEAA8] now];
    v45 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v45))
    {
      v111 = [MEMORY[0x277CBEAA8] now];
      [v111 timeIntervalSinceDate:v44];
      v47 = v46;
      v48 = objc_opt_new();
      v49 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v50 = [MEMORY[0x277CCACC8] callStackSymbols];
      v51 = [v50 filteredArrayUsingPredicate:v49];
      v52 = [v51 firstObject];

      [v48 submitToCoreAnalytics:v52 type:1 duration:v47];
      v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        *v145 = 0;
        _os_log_fault_impl(&dword_2304B3000, v53, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v145, 2u);
      }

      v54 = MEMORY[0x277CCA9B8];
      v160[0] = *MEMORY[0x277CCA450];
      *v145 = @"semaphore wait timeout";
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v160 count:1];
      v56 = [v54 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v55];

      if (v56)
      {
        v57 = v56;
      }
    }

    else
    {
      v56 = 0;
    }

    v58 = v56;
    if (v58)
    {
      v59 = a4 != 0;
    }

    else
    {
      v59 = 0;
    }

    if (v59)
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v104 = objc_opt_class();
        v105 = NSStringFromClass(v104);
        v106 = NSStringFromSelector(a2);
        *v145 = 138412802;
        *&v145[4] = v105;
        v146 = 2112;
        v147 = v106;
        v148 = 2112;
        v149 = v58;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v145, 0x20u);
      }

      v61 = v58;
    }

    else
    {
      if (!a4 || !*(*&buf[8] + 40))
      {
        contexta = objc_autoreleasePoolPush();
        v65 = [v151[5] image];
        [v65 size];
        v67 = v66;
        v69 = v68;
        [v65 scale];
        v71 = v70;
        v164.width = v67;
        v164.height = v69;
        UIGraphicsBeginImageContextWithOptions(v164, 1, v71);
        [v65 drawAtPoint:{0.0, 0.0}];
        CurrentContext = UIGraphicsGetCurrentContext();
        v73 = [(RTWorkoutRouteManager *)self _colorFromHexString:@"00FFA8"];
        v74 = v73;
        v75 = [v73 CGColor];

        CGContextSetStrokeColorWithColor(CurrentContext, v75);
        CGContextSetLineWidth(CurrentContext, 2.0);
        CGContextSetLineCap(CurrentContext, kCGLineCapRound);
        CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
        CGContextBeginPath(CurrentContext);
        if (v132[3])
        {
          v76 = 0;
          v77 = 0;
          do
          {
            v78 = objc_autoreleasePoolPush();
            [v151[5] pointForCoordinate:{*(v136[3] + v76), *(v136[3] + v76 + 8)}];
            if (v77)
            {
              CGContextAddLineToPoint(CurrentContext, v79, v80);
            }

            else
            {
              CGContextMoveToPoint(CurrentContext, v79, v80);
            }

            objc_autoreleasePoolPop(v78);
            ++v77;
            v76 += 16;
          }

          while (v77 < v132[3]);
        }

        CGContextStrokePath(CurrentContext);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke_287;
        aBlock[3] = &__block_descriptor_48_e47_v40__0__CGContext__8_CGPoint_dd_16__CGColor__32l;
        v121 = xmmword_230B01AA0;
        v81 = _Block_copy(aBlock);
        v82 = v136[3] + 16 * v132[3];
        [v151[5] pointForCoordinate:{*(v82 - 16), *(v82 - 8)}];
        v84 = v83;
        v86 = v85;
        [v151[5] pointForCoordinate:{*v136[3], *(v136[3] + 8)}];
        v88 = v87;
        v90 = v89;
        v91 = [MEMORY[0x277D75348] systemRedColor];
        v92 = v91;
        v81[2](v81, CurrentContext, [v91 CGColor], v84, v86);

        v81[2](v81, CurrentContext, v75, v88, v90);
        v93 = v136;
        v94 = v136[3];
        if (v94)
        {
          free(v94);
          v93 = v136;
        }

        v93[3] = 0;
        v95 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v32 = UIImagePNGRepresentation(v95);

        objc_autoreleasePoolPop(contexta);
        goto LABEL_54;
      }

      v62 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v107 = objc_opt_class();
        v108 = NSStringFromClass(v107);
        v109 = NSStringFromSelector(a2);
        v110 = *(*&buf[8] + 40);
        *v145 = 138412802;
        *&v145[4] = v108;
        v146 = 2112;
        v147 = v109;
        v148 = 2112;
        v149 = v110;
        _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v145, 0x20u);
      }

      v61 = *(*&buf[8] + 40);
    }

    v63 = v61;
    v64 = *a4;
    *a4 = v63;

    v32 = 0;
LABEL_54:

    _Block_object_dispose(&v150, 8);
    _Block_object_dispose(buf, 8);

    v33 = v113;
    goto LABEL_55;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    v99 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v98;
    *&buf[12] = 2112;
    *&buf[14] = v99;
    *&buf[22] = 2112;
    v157 = v28;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
  }

  v30 = v28;
LABEL_20:
  v32 = 0;
  v33 = *a4;
  *a4 = v30;
LABEL_55:

LABEL_56:
  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);

  objc_autoreleasePoolPop(v118);

  return v32;
}

void __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke_285(uint64_t a1, void *a2, void *a3)
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

void __66__RTWorkoutRouteManager__getWorkoutRouteSnapshotForWorkout_error___block_invoke_287(uint64_t a1, CGContext *a2, CGColor *a3, double a4, double a5)
{
  v10 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(a2, [v10 CGColor]);

  v16.size.width = *(a1 + 32);
  v16.origin.x = a4 - v16.size.width * 0.5;
  v16.origin.y = a5 - v16.size.width * 0.5;
  v16.size.height = v16.size.width;
  CGContextFillEllipseInRect(a2, v16);
  CGContextSetFillColorWithColor(a2, a3);
  v11 = *(a1 + 40);
  v14 = v11;

  v12 = a4 - v11 * 0.5;
  v13 = a5 - v11 * 0.5;
  CGContextFillEllipseInRect(a2, *(&v11 - 2));
}

- (id)_getWorkoutRouteLabelForWorkout:(id)a3 error:(id *)a4
{
  v105[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workout");
    }

    goto LABEL_17;
  }

  v7 = [(RTWorkoutRouteManager *)self lastTimeRouteLabelFailed];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(RTWorkoutRouteManager *)self lastTimeRouteLabelFailed];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;
    v12 = kRTWorkoutRouteLabelBackOffDuration;

    if (v11 < v12)
    {
LABEL_17:
      v16 = &stru_284528390;
      goto LABEL_41;
    }
  }

  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__153;
  v90 = __Block_byref_object_dispose__153;
  v91 = 0;
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __63__RTWorkoutRouteManager__getWorkoutRouteLabelForWorkout_error___block_invoke;
  v85[3] = &unk_2788D04D0;
  v85[4] = &v92;
  v85[5] = &v86;
  [(RTWorkoutRouteManager *)self _getLocationsForWorkout:v6 decimationLevel:3 limit:1 handler:v85];
  if (v87[5])
  {
    v13 = v93;
    v14 = v93[3];
    if (v14)
    {
      free(v14);
      v13 = v93;
    }

    v13[3] = 0;
  }

  if (a4 && v87[5])
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = NSStringFromSelector(a2);
      v56 = v87[5];
      *buf = 138412802;
      *&buf[4] = v54;
      v97 = 2112;
      v98 = v55;
      v99 = 2112;
      v100 = v56;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    *a4 = v87[5];
    v16 = &stru_284528390;
    goto LABEL_40;
  }

  v67 = [(RTWorkoutRouteManager *)self _getRTLocationUsingCLLocationCoordinate2D:v93[3]];
  v18 = v93;
  v19 = v93[3];
  if (v19)
  {
    free(v19);
    v18 = v93;
  }

  v18[3] = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__153;
  v83 = __Block_byref_object_dispose__153;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__153;
  v77 = __Block_byref_object_dispose__153;
  v78 = 0;
  v20 = dispatch_semaphore_create(0);
  v21 = objc_alloc(MEMORY[0x277D011B0]);
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v66 = [v21 initWithUseBackgroundTraits:1 analyticsIdentifier:v23 clientIdentifier:@"com.apple.CoreRoutine.workoutRoute"];

  mapServiceManager = self->_mapServiceManager;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __63__RTWorkoutRouteManager__getWorkoutRouteLabelForWorkout_error___block_invoke_292;
  v69[3] = &unk_2788C4490;
  v71 = &v79;
  v72 = &v73;
  v25 = v20;
  v70 = v25;
  [(RTMapServiceManager *)mapServiceManager fetchMapItemsFromLocation:v67 options:v66 handler:v69];
  v26 = v25;
  v27 = [MEMORY[0x277CBEAA8] now];
  v28 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v26, v28))
  {
    v65 = [MEMORY[0x277CBEAA8] now];
    [v65 timeIntervalSinceDate:v27];
    v30 = v29;
    v31 = objc_opt_new();
    v32 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
    v33 = [MEMORY[0x277CCACC8] callStackSymbols];
    v34 = [v33 filteredArrayUsingPredicate:v32];
    v35 = [v34 firstObject];

    [v31 submitToCoreAnalytics:v35 type:1 duration:v30];
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v37 = MEMORY[0x277CCA9B8];
    v105[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v105 count:1];
    v39 = [v37 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v38];

    if (v39)
    {
      v40 = v39;
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = v39;
  if (v41)
  {
    v42 = a4 != 0;
  }

  else
  {
    v42 = 0;
  }

  if (v42)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v58;
      v97 = 2112;
      v98 = v59;
      v99 = 2112;
      v100 = v41;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v44 = v41;
    *a4 = v41;
  }

  else
  {
    v45 = v80[5];
    if (v45 && !v74[5])
    {
      v49 = [v45 address];
      v50 = [v49 locality];
      v51 = v50;
      v52 = &stru_284528390;
      if (v50)
      {
        v52 = v50;
      }

      v16 = v52;

      goto LABEL_39;
    }

    v46 = [MEMORY[0x277CBEAA8] date];
    [(RTWorkoutRouteManager *)self setLastTimeRouteLabelFailed:v46];

    v47 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = NSStringFromSelector(a2);
      v63 = v80[5];
      v64 = v74[5];
      *buf = 138413315;
      *&buf[4] = v61;
      v97 = 2112;
      v98 = v62;
      v99 = 2112;
      v100 = v67;
      v101 = 2117;
      v102 = v63;
      v103 = 2112;
      v104 = v64;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "%@, %@, Failed to reverse geocode start location of the workout, %@, reverseGeocodedMapItem, %{sensitive}@, reverseGeocodeError, %@", buf, 0x34u);
    }
  }

  v16 = &stru_284528390;
LABEL_39:

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

LABEL_40:
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
LABEL_41:

  return v16;
}

void __63__RTWorkoutRouteManager__getWorkoutRouteLabelForWorkout_error___block_invoke_292(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_areWorkoutsSimilarBetweenClusterSet1:(id)a3 clusterSet2:(id)a4 workoutActivityType:(int64_t)a5 maxDistanceThreshold:(double)a6 error:(id *)a7
{
  v147[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v116 = v10;
  v117 = v9;
  if (!v9)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inputClusterSet1", buf, 2u);
    }

    if (a7)
    {
      v29 = _RTErrorInvalidParameterCreate(@"inputClusterSet1");
LABEL_23:
      v27 = 0;
      *a7 = v29;
      goto LABEL_31;
    }

LABEL_24:
    v27 = 0;
    goto LABEL_31;
  }

  if (!v10)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inputClusterSet2", buf, 2u);
    }

    if (a7)
    {
      v29 = _RTErrorInvalidParameterCreate(@"inputClusterSet2");
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy__153;
  v134 = __Block_byref_object_dispose__153;
  v135 = 0;
  context = objc_autoreleasePoolPush();
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  if ([v9 count] || objc_msgSend(v116, "count"))
  {
    if ([v9 count] && objc_msgSend(v116, "count"))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = NSStringFromSelector(a2);
          v15 = [v117 count];
          v16 = [v116 count];
          *buf = 138413058;
          *&buf[4] = v13;
          v137 = 2112;
          v138 = v14;
          v139 = 2048;
          v140 = v15;
          v141 = 2048;
          v142 = v16;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, clusterSet1 count, %lu, clusterSet2 count, %lu", buf, 0x2Au);
        }
      }

      v17 = [v117 mutableCopy];
      v18 = [v116 mutableCopy];
      v19 = [v17 count];
      v20 = [v18 count];
      v21 = [v17 count];
      v22 = [v17 mutableCopy];
      [v17 minusSet:v18];
      [v18 minusSet:v22];
      v108 = v17;
      v23 = [v17 count];
      v24 = [v17 count];
      v106 = v18;
      if (v24 <= kRTSQLQueryMaxPredicatesCount && (v25 = [v18 count], v25 <= kRTSQLQueryMaxPredicatesCount))
      {
        v32 = [v17 count];
        v33 = [v18 count] * v32;
        v101 = v19;
        v102 = v22;
        v99 = v21;
        v100 = v20;
        v98 = v23;
        if (v33 <= kRTSQLQueryMaxPredicatesCount)
        {
          v69 = dispatch_semaphore_create(0);
          v70 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __122__RTWorkoutRouteManager__areWorkoutsSimilarBetweenClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_error___block_invoke_2;
          v118[3] = &unk_2788C4528;
          v120 = &v126;
          v121 = &v130;
          v71 = v69;
          v119 = v71;
          [v70 fetchTotalWorkoutDistancesCountWithClusterSet1:v108 clusterSet2:v18 workoutActivityType:a5 maxDistanceThreshold:v118 handler:a6];

          dsema = v71;
          v72 = [MEMORY[0x277CBEAA8] now];
          v73 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v73))
          {
            v74 = [MEMORY[0x277CBEAA8] now];
            [v74 timeIntervalSinceDate:v72];
            v76 = v75;
            v77 = objc_opt_new();
            v78 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
            v79 = [MEMORY[0x277CCACC8] callStackSymbols];
            v80 = [v79 filteredArrayUsingPredicate:v78];
            v81 = [v80 firstObject];

            [v77 submitToCoreAnalytics:v81 type:1 duration:v76];
            v82 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v82, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v83 = MEMORY[0x277CCA9B8];
            v147[0] = *MEMORY[0x277CCA450];
            *buf = @"semaphore wait timeout";
            v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v147 count:1];
            v85 = [v83 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v84];

            if (v85)
            {
              v86 = v85;
            }
          }

          else
          {
            v85 = 0;
          }

          v88 = v85;
          if (v88)
          {
            objc_storeStrong(v131 + 5, v85);
          }

          v87 = v119;
        }

        else
        {
          v34 = [v108 count];
          v35 = [v18 count];
          if (v34 >= v35)
          {
            v36 = v18;
          }

          else
          {
            v36 = v108;
          }

          if (v34 >= v35)
          {
            v37 = v108;
          }

          else
          {
            v37 = v18;
          }

          v38 = v36;
          v39 = v37;
          dsema = v38;
          v111 = [v38 allObjects];
          v40 = kRTSQLQueryMaxPredicatesCount;
          v107 = v39;
          v41 = [v39 count];
          v42 = 0;
          if (v41 > v40)
          {
            v43 = 1;
          }

          else
          {
            v43 = v40 / v41;
          }

          v104 = *MEMORY[0x277D01448];
          v105 = *MEMORY[0x277CCA450];
          do
          {
            if (v42 >= [v111 count])
            {
              break;
            }

            v109 = objc_autoreleasePoolPush();
            v44 = [v111 count];
            if (v44 - v42 < v43)
            {
              v43 = v44 - v42;
            }

            v45 = dispatch_semaphore_create(0);
            v46 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
            v47 = MEMORY[0x277CBEB98];
            v48 = [v111 subarrayWithRange:{v42, v43}];
            v49 = [v47 setWithArray:v48];
            v122[0] = MEMORY[0x277D85DD0];
            v122[1] = 3221225472;
            v122[2] = __122__RTWorkoutRouteManager__areWorkoutsSimilarBetweenClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_error___block_invoke;
            v122[3] = &unk_2788C4528;
            v124 = &v126;
            v125 = &v130;
            v50 = v45;
            v123 = v50;
            [v46 fetchTotalWorkoutDistancesCountWithClusterSet1:v49 clusterSet2:v107 workoutActivityType:a5 maxDistanceThreshold:v122 handler:a6];

            v51 = v50;
            v52 = [MEMORY[0x277CBEAA8] now];
            v53 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v51, v53))
            {
              v54 = [MEMORY[0x277CBEAA8] now];
              [v54 timeIntervalSinceDate:v52];
              v56 = v55;
              v57 = objc_opt_new();
              v58 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
              v59 = [MEMORY[0x277CCACC8] callStackSymbols];
              v60 = [v59 filteredArrayUsingPredicate:v58];
              v61 = [v60 firstObject];

              [v57 submitToCoreAnalytics:v61 type:1 duration:v56];
              v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_2304B3000, v62, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
              }

              v63 = MEMORY[0x277CCA9B8];
              v147[0] = v105;
              *buf = @"semaphore wait timeout";
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v147 count:1];
              v65 = [v63 errorWithDomain:v104 code:15 userInfo:v64];

              if (v65)
              {
                v66 = v65;
              }
            }

            else
            {
              v65 = 0;
            }

            v67 = v65;
            if (v67)
            {
              objc_storeStrong(v131 + 5, v65);
              v68 = 0;
            }

            else
            {
              v68 = v131[5] == 0;
            }

            objc_autoreleasePoolPop(v109);
            v42 += v43;
          }

          while (v68);

          v87 = v107;
        }

        v22 = v102;
        if (v131[5])
        {
          v27 = 0;
          v26 = 1;
        }

        else
        {
          v89 = v127[3];
          v90 = [v108 count];
          v91 = v89 + (v90 + v99 - v98 + [v106 count]) * (v99 - v98);
          v127[3] = v91;
          if (v100 * v101)
          {
            v92 = v91 / (v100 * v101);
          }

          else
          {
            v92 = 1.0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v93 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              v94 = objc_opt_class();
              v95 = NSStringFromClass(v94);
              v96 = NSStringFromSelector(a2);
              v97 = v127[3];
              *buf = 138413570;
              *&buf[4] = v95;
              v137 = 2112;
              v138 = v96;
              v139 = 2048;
              v140 = v97;
              v141 = 2048;
              v142 = v100 * v101;
              v143 = 2048;
              v144 = v92;
              v145 = 2048;
              v146 = 0x3FE0000000000000;
              _os_log_impl(&dword_2304B3000, v93, OS_LOG_TYPE_INFO, "%@, %@, totalCount, %lu, idealCount, %lu, percentage overlap, %.5f, cluster overlap threshold, %.5f", buf, 0x3Eu);
            }
          }

          v26 = 0;
          v27 = v92 >= 0.5;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    v26 = 0;
    v27 = 1;
  }

  _Block_object_dispose(&v126, 8);
  objc_autoreleasePoolPop(context);
  if (v26)
  {
    v27 = 0;
    if (a7)
    {
      *a7 = v131[5];
    }
  }

  _Block_object_dispose(&v130, 8);

LABEL_31:
  return v27;
}

void __122__RTWorkoutRouteManager__areWorkoutsSimilarBetweenClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) += a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __122__RTWorkoutRouteManager__areWorkoutsSimilarBetweenClusterSet1_clusterSet2_workoutActivityType_maxDistanceThreshold_error___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) += a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getWorkoutUUIDsForCluster:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    aSelector = a2;
    v8 = dispatch_semaphore_create(0);
    *v50 = 0;
    v51 = v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__153;
    v54 = __Block_byref_object_dispose__153;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__153;
    v48 = __Block_byref_object_dispose__153;
    v49 = 0;
    v9 = [(RTWorkoutRouteManager *)self healthKitManager];
    v10 = [v7 clusterUUID];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __58__RTWorkoutRouteManager__getWorkoutUUIDsForCluster_error___block_invoke;
    v40[3] = &unk_2788D03E8;
    v42 = v50;
    v11 = v8;
    v41 = v11;
    v43 = &v44;
    [v9 fetchWorkoutUUIDsForClusterUUID:v10 handler:v40];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
      v61[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v61 count:1];
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

    v30 = v26;
    v31 = v30;
    if (a4 && v30)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v37;
        v57 = 2112;
        v58 = v38;
        v59 = 2112;
        v60 = v31;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v33 = v31;
      *a4 = v31;
      v34 = objc_opt_new();
    }

    else
    {
      if (a4)
      {
        *a4 = *(v51 + 5);
      }

      v34 = v45[5];
    }

    v29 = v34;

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v50, 8);
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster", v50, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"cluster");
    }

    v29 = objc_opt_new();
  }

  return v29;
}

void __58__RTWorkoutRouteManager__getWorkoutUUIDsForCluster_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getRemoteWorkoutClustersForWorkoutUUIDs:(id)a3 error:(id *)a4
{
  v105[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    aSelector = a2;
    *v90 = 0;
    v91 = v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__153;
    v94 = __Block_byref_object_dispose__153;
    v95 = objc_opt_new();
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__153;
    v88 = __Block_byref_object_dispose__153;
    v89 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = [(RTWorkoutRouteManager *)self healthKitManager];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __72__RTWorkoutRouteManager__getRemoteWorkoutClustersForWorkoutUUIDs_error___block_invoke;
    v80[3] = &unk_2788D03E8;
    v82 = &v84;
    v9 = v7;
    v81 = v9;
    v83 = v90;
    [v8 fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:v6 handler:v80];

    v10 = v9;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
      *v96 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v96 count:1];
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

    v28 = v24;
    v29 = v28;
    if (a4 && v28)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        *&buf[22] = 2112;
        v102 = v29;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v31 = v29;
LABEL_23:
      *a4 = v31;
      v27 = objc_opt_new();
LABEL_45:

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(v90, 8);

      goto LABEL_46;
    }

    if (a4 && v85[5])
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = NSStringFromSelector(aSelector);
        v64 = v85[5];
        *buf = 138412802;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v63;
        *&buf[22] = 2112;
        v102 = v64;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v31 = v85[5];
      goto LABEL_23;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v102 = __Block_byref_object_copy__153;
    v103 = __Block_byref_object_dispose__153;
    v104 = objc_opt_new();
    v33 = dispatch_semaphore_create(0);

    v34 = [(RTWorkoutRouteManager *)self healthKitManager];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __72__RTWorkoutRouteManager__getRemoteWorkoutClustersForWorkoutUUIDs_error___block_invoke_302;
    v75[3] = &unk_2788D04F8;
    v77 = &v84;
    v35 = v33;
    v76 = v35;
    v78 = v90;
    v79 = buf;
    [v34 fetchWorkoutClustersWithHandler:v75];

    v10 = v35;
    v36 = [MEMORY[0x277CBEAA8] now];
    v37 = dispatch_time(0, 3600000000000);
    v38 = v29;
    if (dispatch_semaphore_wait(v10, v37))
    {
      v72 = [MEMORY[0x277CBEAA8] now];
      [v72 timeIntervalSinceDate:v36];
      v40 = v39;
      v41 = objc_opt_new();
      v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v43 = [MEMORY[0x277CCACC8] callStackSymbols];
      v44 = [v43 filteredArrayUsingPredicate:v42];
      v45 = [v44 firstObject];

      [v41 submitToCoreAnalytics:v45 type:1 duration:v40];
      v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *v96 = 0;
        _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v96, 2u);
      }

      v47 = MEMORY[0x277CCA9B8];
      v105[0] = *MEMORY[0x277CCA450];
      *v96 = @"semaphore wait timeout";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v105 count:1];
      v49 = [v47 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v48];

      v38 = v29;
      if (v49)
      {
        v50 = v49;

        v38 = v49;
      }
    }

    v51 = v38;
    if (v51)
    {
      v52 = a4 != 0;
    }

    else
    {
      v52 = 0;
    }

    if (v52)
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = NSStringFromSelector(aSelector);
        *v96 = 138412802;
        *&v96[4] = v66;
        v97 = 2112;
        v98 = v67;
        v99 = 2112;
        v100 = v51;
        _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v96, 0x20u);
      }

      v54 = v51;
LABEL_41:
      *a4 = v54;
      v56 = objc_opt_new();
LABEL_44:
      v27 = v56;

      _Block_object_dispose(buf, 8);
      v29 = v51;
      goto LABEL_45;
    }

    if (a4)
    {
      if (v85[5])
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          v70 = NSStringFromSelector(aSelector);
          v71 = v85[5];
          *v96 = 138412802;
          *&v96[4] = v69;
          v97 = 2112;
          v98 = v70;
          v99 = 2112;
          v100 = v71;
          _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v96, 0x20u);
        }

        v54 = v85[5];
        goto LABEL_41;
      }

      *a4 = 0;
    }

    v56 = *(*&buf[8] + 40);
    goto LABEL_44;
  }

  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v90 = 0;
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", v90, 2u);
  }

  if (a4)
  {
    *a4 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
  }

  v27 = objc_opt_new();
LABEL_46:

  return v27;
}

void __72__RTWorkoutRouteManager__getRemoteWorkoutClustersForWorkoutUUIDs_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:a2];
    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __72__RTWorkoutRouteManager__getRemoteWorkoutClustersForWorkoutUUIDs_error___block_invoke_302(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          v14 = *(*(*(a1 + 48) + 8) + 40);
          v15 = [v12 clusterUUID];
          LODWORD(v14) = [v14 containsObject:v15];

          if (v14)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    v5 = v16;
  }
}

- (id)_sortWorkoutUUIDsByDistance:(id)a3 error:(id *)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v56 = objc_opt_new();
    v54 = objc_autoreleasePoolPush();
    v65 = objc_opt_new();
    v63 = self;
    v57 = v6;
    if ([v6 count])
    {
      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x277D86220];
      do
      {
        context = objc_autoreleasePoolPush();
        v10 = [v6 count];
        if ((v10 - v8) >= 0x32)
        {
          v11 = 50;
        }

        else
        {
          v11 = v10 - v8;
        }

        v12 = [(RTWorkoutRouteManager *)self healthKitManager];
        v59 = v8;
        v13 = [v6 subarrayWithRange:{v8, v11}];
        v77 = v7;
        v14 = [v12 getWorkoutsWithUUIDs:v13 error:&v77];
        v60 = v77;

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v15 = v14;
        v16 = v65;
        v68 = [v15 countByEnumeratingWithState:&v73 objects:v87 count:16];
        if (v68)
        {
          v66 = *v74;
          v62 = v15;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v74 != v66)
              {
                objc_enumerationMutation(v15);
              }

              v18 = *(*(&v73 + 1) + 8 * i);
              v19 = objc_autoreleasePoolPush();
              v20 = [(RTWorkoutRouteManager *)self healthKitManager];
              v21 = [v20 _getTotalDistanceForWorkout:v18];
              v22 = [v18 UUID];
              [v16 setObject:v21 forKeyedSubscript:v22];

              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = objc_opt_class();
                  v25 = NSStringFromClass(v24);
                  NSStringFromSelector(a2);
                  v27 = v26 = v9;
                  v28 = [v18 UUID];
                  v29 = [v18 UUID];
                  v30 = [v16 objectForKeyedSubscript:v29];
                  v31 = [MEMORY[0x277CCDAB0] meterUnit];
                  [v30 doubleValueForUnit:v31];
                  *buf = 138413058;
                  v80 = v25;
                  v81 = 2112;
                  v82 = v27;
                  v83 = 2112;
                  v84 = v28;
                  v85 = 2048;
                  v86 = v32;
                  _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, before sorting, uuid, %@, distance, %.5f", buf, 0x2Au);

                  self = v63;
                  v16 = v65;

                  v9 = v26;
                  v15 = v62;
                }
              }

              objc_autoreleasePoolPop(v19);
            }

            v68 = [v15 countByEnumeratingWithState:&v73 objects:v87 count:16];
          }

          while (v68);
        }

        objc_autoreleasePoolPop(context);
        v8 = v59 + 50;
        v6 = v57;
        v33 = v60;
        v7 = v60;
      }

      while (v59 + 50 < [v57 count]);
    }

    else
    {
      v33 = 0;
    }

    if ([v65 count])
    {
      v61 = v33;
      v36 = [v65 keysSortedByValueUsingComparator:&__block_literal_global_126];

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v35 = v36;
      v37 = [v35 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v70;
        v40 = MEMORY[0x277D86220];
        v67 = *v70;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v70 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v69 + 1) + 8 * j);
            v43 = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v44 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = objc_opt_class();
                v46 = NSStringFromClass(v45);
                NSStringFromSelector(a2);
                v48 = v47 = v35;
                v49 = [v65 objectForKeyedSubscript:v42];
                [MEMORY[0x277CCDAB0] meterUnit];
                v51 = v50 = v38;
                [v49 doubleValueForUnit:v51];
                *buf = 138413058;
                v80 = v46;
                v81 = 2112;
                v82 = v48;
                v83 = 2112;
                v84 = v42;
                v85 = 2048;
                v86 = v52;
                _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, after sorting, uuid, %@, distance, %.5f", buf, 0x2Au);

                v38 = v50;
                v35 = v47;
                v39 = v67;
                v40 = MEMORY[0x277D86220];
              }
            }

            objc_autoreleasePoolPop(v43);
          }

          v38 = [v35 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v38);
      }

      v6 = v57;
      v33 = v61;
    }

    else
    {
      v35 = v56;
    }

    objc_autoreleasePoolPop(v55);
  }

  else
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    }

    v35 = objc_opt_new();
  }

  return v35;
}

- (void)_pruneDistanceMatrixWithHandler:(id)a3
{
  v83[1] = *MEMORY[0x277D85DE8];
  v54 = a3;
  v72 = 0;
  v63 = self;
  v55 = [(RTWorkoutRouteManager *)self _retrieveUUIDsToPruneWithError:&v72];
  v4 = v72;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v55 == 0;
  }

  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      *v79 = 138412802;
      *&v79[4] = v49;
      *&v79[12] = 2112;
      *&v79[14] = v50;
      *&v79[22] = 2112;
      v80 = v4;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, %@, %@, Error fetching prune UUIDs", v79, 0x20u);
    }

    v54[2](v54, v4);
  }

  else
  {
    if ([v55 count])
    {
      v61 = dispatch_semaphore_create(0);
      v64 = objc_opt_new();
      *v79 = 0;
      *&v79[8] = v79;
      *&v79[16] = 0x3032000000;
      v80 = __Block_byref_object_copy__153;
      v81 = __Block_byref_object_dispose__153;
      v82 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v55;
      v7 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
      v8 = 0;
      if (!v7)
      {
        goto LABEL_32;
      }

      v60 = *v69;
      v58 = *MEMORY[0x277D01448];
      v59 = *MEMORY[0x277CCA450];
      while (1)
      {
        v62 = v7;
        for (i = 0; i != v62; ++i)
        {
          if (*v69 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v68 + 1) + 8 * i);
          v11 = [(RTWorkoutRouteManager *)v63 workoutDistanceStore];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __57__RTWorkoutRouteManager__pruneDistanceMatrixWithHandler___block_invoke;
          v65[3] = &unk_2788C4618;
          v67 = v79;
          v12 = v61;
          v66 = v12;
          [v11 deleteWorkoutDistanceWithWorkoutUUID:v10 handler:v65];

          v13 = v12;
          v14 = [MEMORY[0x277CBEAA8] now];
          v15 = dispatch_time(0, 3600000000000);
          v16 = v8;
          if (dispatch_semaphore_wait(v13, v15))
          {
            v17 = [MEMORY[0x277CBEAA8] now];
            [v17 timeIntervalSinceDate:v14];
            v19 = v18;
            v20 = objc_opt_new();
            v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
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
            v83[0] = v59;
            *buf = @"semaphore wait timeout";
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v83 count:1];
            v28 = [v26 errorWithDomain:v58 code:15 userInfo:v27];

            v16 = v8;
            if (v28)
            {
              v29 = v28;

              v16 = v28;
            }
          }

          v30 = v16;
          if (v30 != 0 && v64 != 0)
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v35;
              v74 = 2112;
              v75 = v36;
              v76 = 2112;
              v77 = v30;
              _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            [v64 addObject:v30];
            v32 = v30;
            v30 = 0;
            goto LABEL_29;
          }

          if (v64 && *(*&v79[8] + 40))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              v39 = NSStringFromSelector(a2);
              v40 = *(*&v79[8] + 40);
              *buf = 138412802;
              *&buf[4] = v38;
              v74 = 2112;
              v75 = v39;
              v76 = 2112;
              v77 = v40;
              _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
            }

            [v64 addObject:*(*&v79[8] + 40)];
            v32 = *(*&v79[8] + 40);
            *(*&v79[8] + 40) = 0;
LABEL_29:
          }

          v8 = v30;
        }

        v7 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (!v7)
        {
LABEL_32:

          [(RTWorkoutRouteManager *)v63 _clearInMemoryClusters];
          if ([v64 count])
          {
            v41 = _RTSafeArray();
            v42 = _RTMultiErrorCreate();

            v43 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v51 = objc_opt_class();
              v52 = NSStringFromClass(v51);
              v53 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v52;
              v74 = 2112;
              v75 = v53;
              v76 = 2112;
              v77 = v42;
              _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
            }
          }

          else
          {
            v42 = 0;
          }

          v54[2](v54, v42);
          _Block_object_dispose(v79, 8);

          goto LABEL_43;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        *v79 = 138412546;
        *&v79[4] = v46;
        *&v79[12] = 2112;
        *&v79[14] = v47;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, No UUIDS to prune", v79, 0x16u);
      }
    }

    v54[2](v54, 0);
  }

LABEL_43:
}

void __57__RTWorkoutRouteManager__pruneDistanceMatrixWithHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_retrieveUUIDsToPruneWithError:(id *)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTWorkoutRouteManager *)self healthKitManager];
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [(RTWorkoutRouteManager *)self healthKitManager];
  v7 = [v6 getWorkoutDefaultSortDescriptors];
  v8 = [(RTWorkoutRouteManager *)self healthKitManager];
  v9 = [v8 _getRTWorkoutDefaultTypesForRaceRoute];
  v64 = 0;
  v10 = [v4 getWorkoutsWithStartDate:v5 limit:0 sortDescriptors:v7 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:1.79769313e308 workoutTypes:v9 error:&v64];
  v58 = v64;

  if (!v58)
  {
    goto LABEL_8;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v43;
    *&buf[12] = 2112;
    *&buf[14] = v44;
    *&buf[22] = 2112;
    v71 = v58;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, %@", buf, 0x20u);
  }

  if (a3)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v46;
      *&buf[12] = 2112;
      *&buf[14] = v47;
      *&buf[22] = 2112;
      v71 = v58;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v13 = v58;
    v14 = 0;
    *a3 = v58;
  }

  else
  {
LABEL_8:
    v15 = objc_opt_new();
    if ([v10 count])
    {
      v16 = 0;
      do
      {
        v17 = [v10 objectAtIndexedSubscript:v16];
        v18 = [v17 UUID];
        [v15 addObject:v18];

        ++v16;
      }

      while ([v10 count] > v16);
    }

    v19 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v71 = __Block_byref_object_copy__153;
    v72 = __Block_byref_object_dispose__153;
    v73 = objc_opt_new();
    v20 = [(RTWorkoutRouteManager *)self workoutDistanceStore];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __56__RTWorkoutRouteManager__retrieveUUIDsToPruneWithError___block_invoke;
    v59[3] = &unk_2788C9DA0;
    v59[4] = self;
    v63 = a2;
    v54 = v58;
    v60 = v54;
    v62 = buf;
    v21 = v19;
    v61 = v21;
    [v20 fetchUniqueWorkoutUUIDsWithHandler:v59];

    v22 = v21;
    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v22, v24))
    {
      v55 = [MEMORY[0x277CBEAA8] now];
      [v55 timeIntervalSinceDate:v23];
      v26 = v25;
      v27 = objc_opt_new();
      v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v29 = [MEMORY[0x277CCACC8] callStackSymbols];
      v30 = [v29 filteredArrayUsingPredicate:v28];
      v31 = [v30 firstObject];

      [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *v65 = 0;
        _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v65, 2u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v74[0] = *MEMORY[0x277CCA450];
      *v65 = @"semaphore wait timeout";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v74 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

      if (v35)
      {
        v36 = v35;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = v35;
    if (!v37)
    {
      goto LABEL_24;
    }

    v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(a2);
      *v65 = 138412802;
      *&v65[4] = v49;
      v66 = 2112;
      v67 = v50;
      v68 = 2112;
      v69 = v54;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, %@, %@", v65, 0x20u);
    }

    if (a3)
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(a2);
        *v65 = 138412802;
        *&v65[4] = v52;
        v66 = 2112;
        v67 = v53;
        v68 = 2112;
        v69 = v37;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v65, 0x20u);
      }

      v40 = v37;
      v14 = 0;
      *a3 = v37;
    }

    else
    {
LABEL_24:
      [*(*&buf[8] + 40) removeObjectsInArray:v15];
      v14 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  return v14;
}

void __56__RTWorkoutRouteManager__retrieveUUIDsToPruneWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 64));
      v12 = *(a1 + 40);
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, %@, %@", &v13, 0x20u);
    }
  }

  else
  {
    v5 = [a2 mutableCopy];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 48);

    dispatch_semaphore_signal(v8);
  }
}

- (BOOL)_initProcessWorkoutMetrics:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetricsForDistanceMatrixWithError:&v29];
  v6 = v29;
  v7 = v6;
  if (a3 && v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_4:

      v9 = v7;
      v10 = 0;
      *a3 = v7;
      goto LABEL_9;
    }

    v23 = objc_opt_class();
    v16 = NSStringFromClass(v23);
    v17 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v7;
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

    goto LABEL_4;
  }

  v28 = v6;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetricsForClusteringWithError:&v28];
  v11 = v28;

  if (a3 && v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v13 = v11;
      v10 = 0;
      *a3 = v11;
      v7 = v11;
      goto LABEL_9;
    }

    v24 = objc_opt_class();
    v19 = NSStringFromClass(v24);
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = v11;
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

    goto LABEL_8;
  }

  v27 = v11;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetricsForSyncFromHealthKitWithError:&v27];
  v7 = v27;

  if (a3 && v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v7;
    goto LABEL_26;
  }

  v26 = v7;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetricsForSyncToHealthKitWithError:&v26];
  v11 = v26;

  if (a3 && v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    v34 = 2112;
    v35 = v11;
    goto LABEL_28;
  }

  v25 = v11;
  [(RTWorkoutRouteManager *)self _initProcessWorkoutMetricsForSyncToWatchKitWithError:&v25];
  v7 = v25;

  if (a3 && v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v21 = objc_opt_class();
    v16 = NSStringFromClass(v21);
    v17 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v7;
    goto LABEL_26;
  }

  if (a3)
  {
    v22 = v7;
    *a3 = v7;
  }

  v10 = v7 == 0;
LABEL_9:

  return v10;
}

- (BOOL)_initProcessWorkoutMetricsForDistanceMatrixWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v5 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v5 setObject:v4 forKeyedSubscript:@"distance_matrix_initial_size"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v7 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v7 setObject:v6 forKeyedSubscript:@"distance_matrix_final_size"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v9 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v9 setObject:v8 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_metadata"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v11 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v11 setObject:v10 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_firstlocation"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v13 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v13 setObject:v12 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_locationscount"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v15 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v15 setObject:v14 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_lastlocation"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v17 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v17 setObject:v16 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_cache"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v19 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v19 setObject:v18 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_centroid"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v21 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v21 setObject:v20 forKeyedSubscript:@"distance_matrix_min_time_prefiltered_iou"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v23 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v23 setObject:v22 forKeyedSubscript:@"distance_matrix_min_time_lessthan_orequal_quicksimilarity"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v25 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v25 setObject:v24 forKeyedSubscript:@"distance_matrix_min_time_exceeded_quicksimilarity"];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v27 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v27 setObject:v26 forKeyedSubscript:@"distance_matrix_min_time_exceeded_dtw"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v29 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v29 setObject:v28 forKeyedSubscript:@"distance_matrix_min_time_lessthan_orequal_dtw"];

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v31 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v31 setObject:v30 forKeyedSubscript:@"distance_matrix_min_time_already_computed"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v33 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v33 setObject:v32 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_metadata"];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v35 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v35 setObject:v34 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_firstlocation"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v37 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v37 setObject:v36 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_locationscount"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v39 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v39 setObject:v38 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_lastlocation"];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v41 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v41 setObject:v40 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_cache"];

  v42 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v43 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v43 setObject:v42 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_centroid"];

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v45 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v45 setObject:v44 forKeyedSubscript:@"distance_matrix_max_time_prefiltered_iou"];

  v46 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v47 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v47 setObject:v46 forKeyedSubscript:@"distance_matrix_max_time_lessthan_orequal_quicksimilarity"];

  v48 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v49 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v49 setObject:v48 forKeyedSubscript:@"distance_matrix_max_time_exceeded_quicksimilarity"];

  v50 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v51 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v51 setObject:v50 forKeyedSubscript:@"distance_matrix_max_time_exceeded_dtw"];

  v52 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v53 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v53 setObject:v52 forKeyedSubscript:@"distance_matrix_max_time_lessthan_orequal_dtw"];

  v54 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v55 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v55 setObject:v54 forKeyedSubscript:@"distance_matrix_max_time_already_computed"];

  v56 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v57 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v57 setObject:v56 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_metadata"];

  v58 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v59 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v59 setObject:v58 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_firstlocation"];

  v60 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v61 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v61 setObject:v60 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_locationscount"];

  v62 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v63 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v63 setObject:v62 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_lastlocation"];

  v64 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v65 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v65 setObject:v64 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_cache"];

  v66 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v67 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v67 setObject:v66 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_centroid"];

  v68 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v69 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v69 setObject:v68 forKeyedSubscript:@"distance_matrix_average_time_prefiltered_iou"];

  v70 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v71 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v71 setObject:v70 forKeyedSubscript:@"distance_matrix_average_time_lessthan_orequal_quicksimilarity"];

  v72 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v73 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v73 setObject:v72 forKeyedSubscript:@"distance_matrix_average_time_exceeded_quicksimilarity"];

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v75 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v75 setObject:v74 forKeyedSubscript:@"distance_matrix_average_time_exceeded_dtw"];

  v76 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v77 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v77 setObject:v76 forKeyedSubscript:@"distance_matrix_average_time_lessthan_orequal_dtw"];

  v78 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v79 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v79 setObject:v78 forKeyedSubscript:@"distance_matrix_average_time_already_computed"];

  v80 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v80 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_metadata"];

  v81 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v81 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_firstlocation"];

  v82 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v82 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_locationscount"];

  v83 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v83 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_lastlocation"];

  v84 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v84 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matric_count_prefiltercache"];

  v85 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v85 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_centroid"];

  v86 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v86 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_prefiltered_iou"];

  v87 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v87 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_lessthan_orequal_quicksimilarity"];

  v88 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v88 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_exceeded_quicksimilarity"];

  v89 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v89 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_exceeded_dtw"];

  v90 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v90 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_lessthan_orequal_dtw"];

  v91 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v91 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_already_computed"];

  v92 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v92 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_no_workout_decimated"];

  v93 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v93 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_single_workout_decimated"];

  v94 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v94 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_count_both_workouts_decimated"];

  v95 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v95 setObject:&unk_28459F690 forKeyedSubscript:@"distance_matrix_total_number_of_comparisons"];

  v96 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v97 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v97 setObject:v96 forKeyedSubscript:@"distance_matrix_is_success"];

  v98 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v99 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v99 setObject:v98 forKeyedSubscript:@"distance_matrix_footprint_delta"];

  v100 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v101 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v101 setObject:v100 forKeyedSubscript:@"distance_matrix_time_elapsed"];

  v102 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v102 setObject:&unk_28459F690 forKeyedSubscript:@"number_of_workouts_running"];

  v103 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v103 setObject:&unk_28459F690 forKeyedSubscript:@"number_of_workouts_cycling"];

  v104 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v104 setObject:&unk_28459F690 forKeyedSubscript:@"number_of_workouts_wheel_chair_run_pace"];

  return 1;
}

- (BOOL)_initProcessWorkoutMetricsForClusteringWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v5 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v5 setObject:v4 forKeyedSubscript:@"clustering_percentage_workouts_clustered"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v7 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v7 setObject:v6 forKeyedSubscript:@"clustering_count_clusters"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v9 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v9 setObject:v8 forKeyedSubscript:@"clustering_min_cluster_size"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v11 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v11 setObject:v10 forKeyedSubscript:@"clustering_max_cluster_size"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v13 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v13 setObject:v12 forKeyedSubscript:@"clustering_average_cluster_size"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v15 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v15 setObject:v14 forKeyedSubscript:@"clustering_is_success"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v17 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v17 setObject:v16 forKeyedSubscript:@"clustering_footprint_delta"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v19 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v19 setObject:v18 forKeyedSubscript:@"clustering_time_elapsed"];

  return 1;
}

- (BOOL)_initProcessWorkoutMetricsForSyncFromHealthKitWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v5 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v5 setObject:v4 forKeyedSubscript:@"sync_from_healthkit_count_local_clusters"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v7 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v7 setObject:v6 forKeyedSubscript:@"sync_from_healthkit_count_remote_clusters"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v9 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v9 setObject:v8 forKeyedSubscript:@"sync_from_healthkit_count_final_local_clusters"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v11 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v11 setObject:v10 forKeyedSubscript:@"sync_from_healthkit_count_final_remote_clusters"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v13 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v13 setObject:v12 forKeyedSubscript:@"sync_from_healthkit_is_success"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v15 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v15 setObject:v14 forKeyedSubscript:@"sync_from_healthkit_footprint_delta"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v17 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v17 setObject:v16 forKeyedSubscript:@"sync_from_healthkit_time_elapsed"];

  return 1;
}

- (BOOL)_initProcessWorkoutMetricsForSyncToHealthKitWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v5 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v5 setObject:v4 forKeyedSubscript:@"sync_to_healthkit_min_time_snapshot"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v7 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v7 setObject:v6 forKeyedSubscript:@"sync_to_healthkit_min_time_update_cluster"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v9 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v9 setObject:v8 forKeyedSubscript:@"sync_to_healthkit_min_time_save_new_cluster"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v11 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v11 setObject:v10 forKeyedSubscript:@"sync_to_healthkit_max_time_snapshot"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v13 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v13 setObject:v12 forKeyedSubscript:@"sync_to_healthkit_max_time_update_cluster"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v15 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v15 setObject:v14 forKeyedSubscript:@"sync_to_healthkit_max_time_save_new_cluster"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v17 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v17 setObject:v16 forKeyedSubscript:@"sync_to_healthkit_average_time_snapshot"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v19 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v19 setObject:v18 forKeyedSubscript:@"sync_to_healthkit_average_time_update_cluster"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v21 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v21 setObject:v20 forKeyedSubscript:@"sync_to_healthkit_average_time_save_new_cluster"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v23 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v23 setObject:v22 forKeyedSubscript:@"sync_to_healthkit_is_success"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v25 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v25 setObject:v24 forKeyedSubscript:@"sync_to_healthkit_footprint_delta"];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v27 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v27 setObject:v26 forKeyedSubscript:@"sync_to_healthkit_time_elapsed"];

  return 1;
}

- (BOOL)_initProcessWorkoutMetricsForSyncToWatchKitWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v5 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v5 setObject:v4 forKeyedSubscript:@"sync_to_watch_count_clusters"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v7 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v7 setObject:v6 forKeyedSubscript:@"sync_to_watch_is_success"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v9 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v9 setObject:v8 forKeyedSubscript:@"sync_to_watch_footprint_delta"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v11 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v11 setObject:v10 forKeyedSubscript:@"sync_to_watch_time_elapsed"];

  return 1;
}

- (BOOL)_updateMetricsForCurrentTime:(id)a3 distanceMatrixKey:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (!v8)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: currentTime", buf, 2u);
    }

    if (a5)
    {
      _RTErrorInvalidParameterCreate(@"currentTime");
      *a5 = v18 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v18 = 0;
    goto LABEL_36;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v9;
  if (a4 > 6)
  {
    if (a4 <= 9)
    {
      if (a4 == 7)
      {
        v11 = @"distance_matrix_min_time_prefiltered_locationscount";
        v12 = @"distance_matrix_max_time_prefiltered_locationscount";
        v13 = @"distance_matrix_average_time_prefiltered_locationscount";
        v14 = @"distance_matrix_count_prefiltered_locationscount";
        v31 = 0;
        v15 = &v31;
        v16 = &v31;
      }

      else if (a4 == 8)
      {
        v11 = @"distance_matrix_min_time_prefiltered_iou";
        v12 = @"distance_matrix_max_time_prefiltered_iou";
        v13 = @"distance_matrix_average_time_prefiltered_iou";
        v14 = @"distance_matrix_count_prefiltered_iou";
        v26 = 0;
        v15 = &v26;
        v16 = &v26;
      }

      else
      {
        v11 = @"distance_matrix_min_time_exceeded_dtw";
        v12 = @"distance_matrix_max_time_exceeded_dtw";
        v13 = @"distance_matrix_average_time_exceeded_dtw";
        v14 = @"distance_matrix_count_exceeded_dtw";
        v25 = 0;
        v15 = &v25;
        v16 = &v25;
      }

      goto LABEL_31;
    }

    switch(a4)
    {
      case 0xAuLL:
        v11 = @"distance_matrix_min_time_exceeded_quicksimilarity";
        v12 = @"distance_matrix_max_time_exceeded_quicksimilarity";
        v13 = @"distance_matrix_average_time_exceeded_quicksimilarity";
        v14 = @"distance_matrix_count_exceeded_quicksimilarity";
        v23 = 0;
        v15 = &v23;
        v16 = &v23;
        goto LABEL_31;
      case 0xBuLL:
        v11 = @"distance_matrix_min_time_lessthan_orequal_dtw";
        v12 = @"distance_matrix_max_time_lessthan_orequal_dtw";
        v13 = @"distance_matrix_average_time_lessthan_orequal_dtw";
        v14 = @"distance_matrix_count_lessthan_orequal_dtw";
        v24 = 0;
        v15 = &v24;
        v16 = &v24;
        goto LABEL_31;
      case 0xCuLL:
        v11 = @"distance_matrix_min_time_lessthan_orequal_quicksimilarity";
        v12 = @"distance_matrix_max_time_lessthan_orequal_quicksimilarity";
        v13 = @"distance_matrix_average_time_lessthan_orequal_quicksimilarity";
        v14 = @"distance_matrix_count_lessthan_orequal_quicksimilarity";
        v22 = 0;
        v15 = &v22;
        v16 = &v22;
        goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v11 = @"distance_matrix_min_time_prefiltered_lastlocation";
      v12 = @"distance_matrix_max_time_prefiltered_lastlocation";
      v13 = @"distance_matrix_average_time_prefiltered_lastlocation";
      v14 = @"distance_matrix_count_prefiltered_lastlocation";
      v27 = 0;
      v15 = &v27;
      v16 = &v27;
    }

    else if (a4 == 5)
    {
      v11 = @"distance_matrix_min_time_prefiltered_cache";
      v12 = @"distance_matrix_max_time_prefiltered_cache";
      v13 = @"distance_matrix_average_time_prefiltered_cache";
      v14 = @"distance_matric_count_prefiltercache";
      v29 = 0;
      v15 = &v29;
      v16 = &v29;
    }

    else
    {
      v11 = @"distance_matrix_min_time_prefiltered_centroid";
      v12 = @"distance_matrix_max_time_prefiltered_centroid";
      v13 = @"distance_matrix_average_time_prefiltered_centroid";
      v14 = @"distance_matrix_count_prefiltered_centroid";
      v28 = 0;
      v15 = &v28;
      v16 = &v28;
    }

    goto LABEL_31;
  }

  if (a4 == 1)
  {
    v11 = @"distance_matrix_min_time_already_computed";
    v12 = @"distance_matrix_max_time_already_computed";
    v13 = @"distance_matrix_average_time_already_computed";
    v14 = @"distance_matrix_count_already_computed";
    v33 = 0;
    v15 = &v33;
    v16 = &v33;
    goto LABEL_31;
  }

  if (a4 == 2)
  {
    v11 = @"distance_matrix_min_time_prefiltered_metadata";
    v12 = @"distance_matrix_max_time_prefiltered_metadata";
    v13 = @"distance_matrix_average_time_prefiltered_metadata";
    v14 = @"distance_matrix_count_prefiltered_metadata";
    v32 = 0;
    v15 = &v32;
    v16 = &v32;
    goto LABEL_31;
  }

  if (a4 != 3)
  {
LABEL_34:
    objc_autoreleasePoolPop(v9);
    goto LABEL_35;
  }

  v11 = @"distance_matrix_min_time_prefiltered_firstlocation";
  v12 = @"distance_matrix_max_time_prefiltered_firstlocation";
  v13 = @"distance_matrix_average_time_prefiltered_firstlocation";
  v14 = @"distance_matrix_count_prefiltered_firstlocation";
  v30 = 0;
  v15 = &v30;
  v16 = &v30;
LABEL_31:
  [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v8 minTimeKey:v11 maxTimeKey:v12 averageTimeKey:v13 countKey:v14 error:v16, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33];
  v19 = *v15;
  objc_autoreleasePoolPop(v10);
  if (a5)
  {
    v20 = v19;
    *a5 = v19;
  }

  v18 = v19 != 0;

LABEL_36:
  return v18;
}

- (BOOL)_updateMetricsForCurrentTime:(id)a3 syncToHealthKitKey:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    switch(a4)
    {
      case 3uLL:
        v10 = @"sync_to_healthkit_min_time_save_new_cluster";
        v11 = @"sync_to_healthkit_max_time_save_new_cluster";
        v12 = @"sync_to_healthkit_average_time_save_new_cluster";
        v19 = 0;
        v13 = &v19;
        v14 = &v19;
        break;
      case 2uLL:
        v10 = @"sync_to_healthkit_min_time_update_cluster";
        v11 = @"sync_to_healthkit_max_time_update_cluster";
        v12 = @"sync_to_healthkit_average_time_update_cluster";
        v18 = 0;
        v13 = &v18;
        v14 = &v18;
        break;
      case 1uLL:
        v10 = @"sync_to_healthkit_min_time_snapshot";
        v11 = @"sync_to_healthkit_max_time_snapshot";
        v12 = @"sync_to_healthkit_average_time_snapshot";
        v20 = 0;
        v13 = &v20;
        v14 = &v20;
        break;
      default:
        v16 = 0;
        goto LABEL_14;
    }

    [(RTWorkoutRouteManager *)self _updateMetricsForCurrentTime:v8 minTimeKey:v10 maxTimeKey:v11 averageTimeKey:v12 countKey:0 error:v14];

    v16 = 1;
LABEL_14:
    objc_autoreleasePoolPop(v9);
    goto LABEL_15;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: currentTime", buf, 2u);
  }

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"currentTime");
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (BOOL)_updateMetricsForCurrentTime:(id)a3 minTimeKey:(id)a4 maxTimeKey:(id)a5 averageTimeKey:(id)a6 countKey:(id)a7 error:(id *)a8
{
  v82 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = v19;
  if (!v15)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: currentTime", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_33;
    }

    v26 = @"currentTime";
    goto LABEL_32;
  }

  if (!v16)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: minTimeKey", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_33;
    }

    v26 = @"minTimeKey";
    goto LABEL_32;
  }

  if (!v17)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: maxTimeKey", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_33;
    }

    v26 = @"maxTimeKey";
    goto LABEL_32;
  }

  if (!v18)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: averageTimeKey", buf, 2u);
    }

    if (!a8)
    {
      goto LABEL_33;
    }

    v26 = @"averageTimeKey";
LABEL_32:
    _RTErrorInvalidParameterCreate(v26);
    *a8 = v31 = 0;
    goto LABEL_44;
  }

  if (!v19)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: countKey", buf, 2u);
    }

    if (a8)
    {
      v26 = @"countKey";
      goto LABEL_32;
    }

LABEL_33:
    v31 = 0;
    goto LABEL_44;
  }

  v69 = v19;
  context = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      v65 = NSStringFromSelector(a2);
      *buf = 138413570;
      v71 = v64;
      v72 = 2112;
      v73 = v65;
      v74 = 2112;
      v75 = v16;
      v76 = 2112;
      v77 = v17;
      v78 = 2112;
      v79 = v18;
      v80 = 2112;
      v81 = v69;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, %@, updating metrics for minTimeKey, %@, maxTimeKey, %@, averageTimeKey, %@, countKey, %@", buf, 0x3Eu);
    }
  }

  v22 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v23 = [v22 objectForKeyedSubscript:v16];
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  if ([v23 isEqualToNumber:v24])
  {
  }

  else
  {
    v32 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    v33 = [v32 objectForKeyedSubscript:v16];
    v66 = [v33 compare:v15];

    if (v66 != 1)
    {
      goto LABEL_36;
    }
  }

  v34 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v34 setObject:v15 forKeyedSubscript:v16];

LABEL_36:
  v35 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v36 = [v35 objectForKeyedSubscript:v17];
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  if ([v36 isEqualToNumber:v37])
  {

LABEL_39:
    v40 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v40 setObject:v15 forKeyedSubscript:v17];

    goto LABEL_40;
  }

  v38 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v39 = [v38 objectForKeyedSubscript:v17];
  v67 = [v39 compare:v15];

  if (v67 == -1)
  {
    goto LABEL_39;
  }

LABEL_40:
  v41 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v42 = [v41 objectForKeyedSubscript:v18];
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:-1];
  v44 = [v42 isEqualToNumber:v43];

  v45 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v46 = v45;
  if (v44)
  {
    [v45 setObject:v15 forKeyedSubscript:v18];
    v20 = v69;
  }

  else
  {
    v47 = [v45 objectForKeyedSubscript:v18];
    [v47 doubleValue];
    v49 = v48;

    v50 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    v20 = v69;
    v51 = [v50 objectForKeyedSubscript:v69];
    [v51 doubleValue];
    v53 = v52;

    v54 = MEMORY[0x277CCABB0];
    [v15 doubleValue];
    v46 = [v54 numberWithDouble:(v55 + v49 * v53) / (v53 + 1.0)];
    v56 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
    [v56 setObject:v46 forKeyedSubscript:v18];
  }

  v57 = MEMORY[0x277CCABB0];
  v58 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  v59 = [v58 objectForKeyedSubscript:v20];
  v60 = [v57 numberWithUnsignedInteger:{objc_msgSend(v59, "unsignedIntegerValue") + 1}];
  v61 = [(RTWorkoutRouteManager *)self processWorkoutMetrics];
  [v61 setObject:v60 forKeyedSubscript:v20];

  objc_autoreleasePoolPop(context);
  v31 = 1;
LABEL_44:

  return v31;
}

- (double)_getMaxDistanceThresholdForMetric:(int64_t)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [&unk_2845A15C8 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (!v7)
  {
    v23 = 0;
    v10 = -1.79769313e308;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v35;
  v10 = -1.79769313e308;
  v31 = a4;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(&unk_2845A15C8);
      }

      v12 = *(*(&v34 + 1) + 8 * i);
      v13 = objc_autoreleasePoolPush();
      v14 = [v12 integerValue];
      v33 = 0;
      v15 = [(RTWorkoutRouteManager *)self _getConstantValueForDistanceThresholdUsingDistanceMetric:a3 isDecimated:1 workoutActivityType:v14 error:&v33];
      v16 = v33;
      if (v16)
      {
        v23 = v16;
LABEL_18:

        objc_autoreleasePoolPop(v13);
        a4 = v31;
        goto LABEL_19;
      }

      v17 = [v12 integerValue];
      v32 = 0;
      v18 = [(RTWorkoutRouteManager *)self _getConstantValueForDistanceThresholdUsingDistanceMetric:a3 isDecimated:0 workoutActivityType:v17 error:&v32];
      v19 = v32;
      if (v19)
      {
        v23 = v19;

        goto LABEL_18;
      }

      [v15 doubleValue];
      v21 = v20;
      [v18 doubleValue];
      if (v21 >= v22)
      {
        v22 = v21;
      }

      if (v10 < v22)
      {
        v10 = v22;
      }

      objc_autoreleasePoolPop(v13);
    }

    v8 = [&unk_2845A15C8 countByEnumeratingWithState:&v34 objects:v44 count:16];
    v23 = 0;
    a4 = v31;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2048;
      v43 = v10;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, max distance threshold, %.5f", buf, 0x20u);
    }
  }

  if (a4)
  {
    v28 = v23;
    *a4 = v23;
  }

  return v10;
}

- (id)_getRTPairsFromCoordinates:(CLLocationCoordinate2D *)a3 count:(unint64_t)a4
{
  for (i = objc_opt_new(); a4; --a4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(RTWorkoutRouteManager *)self _getRTPairUsingCLLocationCoordinate2D:a3];
    [i addObject:v9];

    objc_autoreleasePoolPop(v8);
    ++a3;
  }

  return i;
}

- (CGRect)_getCGRectFromCoordinates:(CLLocationCoordinate2D *)a3 verticesCount:(unint64_t)a4 outError:(id *)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4 > 3)
    {
      v18 = [(RTWorkoutRouteManager *)self distanceCalculator];
      v32 = 0;
      [v18 cgrectFromCoordinates:a3 locationsCount:a4 error:&v32];
      v12 = v19;
      v13 = v20;
      v14 = v21;
      v15 = v22;
      v10 = v32;

      if (!a5 || !v10)
      {
        goto LABEL_15;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        *buf = 138412802;
        v34 = v30;
        v35 = 2112;
        v36 = v31;
        v37 = 2112;
        v38 = v10;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D01448];
      v39 = *MEMORY[0x277CCA450];
      v40[0] = @"less number of locations than required";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v10 = [v7 errorWithDomain:v8 code:7 userInfo:v9];

      if (!a5)
      {
        goto LABEL_14;
      }
    }

    v24 = v10;
    *a5 = v10;
LABEL_14:
    v12 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 8);
    v14 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
LABEL_15:

    goto LABEL_16;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: verticesCoordinates", buf, 2u);
  }

  v12 = *MEMORY[0x277CBF398];
  v13 = *(MEMORY[0x277CBF398] + 8);
  v14 = *(MEMORY[0x277CBF398] + 16);
  v15 = *(MEMORY[0x277CBF398] + 24);
LABEL_16:
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CLLocationCoordinate2D)_getCoordinatesFromRTPairs:(id)a3
{
  v3 = a3;
  v4 = malloc_type_malloc(16 * [v3 count], 0x1000040451B5BE8uLL);
  if ([v3 count])
  {
    v5 = 0;
    p_longitude = &v4->longitude;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v3 objectAtIndexedSubscript:v5];
      v9 = [v8 firstObject];
      [v9 doubleValue];
      v11 = v10;
      v12 = [v3 objectAtIndexedSubscript:v5];
      v13 = [v12 secondObject];
      [v13 doubleValue];
      *(p_longitude - 1) = CLLocationCoordinate2DMake(v11, v14);

      objc_autoreleasePoolPop(v7);
      ++v5;
      p_longitude += 2;
    }

    while (v5 < [v3 count]);
  }

  return v4;
}

- (BOOL)_refreshWorkoutsCache:(id)a3 workoutUUIDs:(id)a4 startingIndex:(unint64_t)a5 error:(id *)a6
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (!v11)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutsCache", buf, 2u);
    }

    if (a6)
    {
      v39 = @"workoutsCache";
LABEL_28:
      _RTErrorInvalidParameterCreate(v39);
      *a6 = v37 = 0;
      goto LABEL_30;
    }

LABEL_29:
    v37 = 0;
    goto LABEL_30;
  }

  if (!v12)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (a6)
    {
      v39 = @"workoutUUIDs";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  aSelector = a2;
  v46 = a6;
  context = objc_autoreleasePoolPush();
  v47 = [MEMORY[0x277CBEAA8] date];
  [v11 removeAllObjects];
  v14 = [v13 count];
  if (v14 - a5 >= 0x32)
  {
    v15 = 50;
  }

  else
  {
    v15 = v14 - a5;
  }

  v16 = [(RTWorkoutRouteManager *)self healthKitManager];
  range = v15;
  v17 = [v13 subarrayWithRange:{a5, v15}];
  v52 = 0;
  v18 = [v16 getWorkoutsWithUUIDs:v17 error:&v52];
  v44 = v52;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v49;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        v25 = objc_autoreleasePoolPush();
        v26 = [v24 UUID];
        [v11 setObject:v24 forKeyedSubscript:v26];

        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(aSelector);
      v65.location = a5;
      v65.length = range;
      v31 = NSStringFromRange(v65);
      v32 = [MEMORY[0x277CBEAA8] date];
      [v32 timeIntervalSinceDate:v47];
      v34 = v33;
      +[RTRuntime footprint];
      *buf = 138413314;
      v54 = v29;
      v55 = 2112;
      v56 = v30;
      v57 = 2112;
      v58 = v31;
      v59 = 2048;
      v60 = v34;
      v61 = 2048;
      v62 = v35;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, refreshed workouts cache in the range %@, latency, %.4f, footprint, %.4f", buf, 0x34u);
    }
  }

  objc_autoreleasePoolPop(context);
  v36 = v44;
  if (v46)
  {
    v36 = v44;
    *v46 = v36;
  }

  v37 = 1;
LABEL_30:

  return v37;
}

- (id)_getWorkoutFromWorkouts:(id)a3 UUID:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = [v7 objectForKeyedSubscript:v8];

      if (v10)
      {
        v11 = [v7 objectForKeyedSubscript:v9];
        goto LABEL_18;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v23 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"workout UUID %@ not found in the workouts", v9];
      v24[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v19 = [v15 errorWithDomain:v16 code:7 userInfo:v18];

      if (a5)
      {
        v20 = v19;
        *a5 = v19;
      }

      goto LABEL_17;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUID", buf, 2u);
    }

    if (a5)
    {
      v13 = @"workoutUUID";
      goto LABEL_13;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutsCache", buf, 2u);
    }

    if (a5)
    {
      v13 = @"workoutsCache";
LABEL_13:
      _RTErrorInvalidParameterCreate(v13);
      *a5 = v11 = 0;
      goto LABEL_18;
    }
  }

LABEL_17:
  v11 = 0;
LABEL_18:

  return v11;
}

- (void)_getLocationsForWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(int64_t)a5 handler:(id)a6
{
  v85[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v51 = a6;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__153;
  v72 = __Block_byref_object_dispose__153;
  v73 = 0;
  v47 = *MEMORY[0x277D01448];
  v48 = *MEMORY[0x277CCA450];
  v52 = v7;
  if (!v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277CCA450];
    v84 = @"workout is nil";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v10 = [v8 errorWithDomain:v47 code:7 userInfo:v9];
    v11 = v69[5];
    v69[5] = v10;

    (*(v51 + 2))(v51, 0, 0, v69[5]);
  }

  v12 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v13 = 1;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  while ((v13 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v14 = dispatch_semaphore_create(0);
    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = [(RTWorkoutRouteManager *)self healthKitManager];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __79__RTWorkoutRouteManager__getLocationsForWorkout_decimationLevel_limit_handler___block_invoke;
    v55[3] = &unk_2788D0460;
    v57 = &v64;
    v58 = &v60;
    v59 = &v68;
    v17 = v14;
    v56 = v17;
    [v16 fetchRouteLocationsUsingWorkout:v52 decimationLevel:a4 limit:a5 shift:0 handler:v55];

    v18 = v17;
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = dispatch_time(0, 3600000000000);
    v21 = v12;
    if (dispatch_semaphore_wait(v18, v20))
    {
      v22 = [MEMORY[0x277CBEAA8] now];
      [v22 timeIntervalSinceDate:v19];
      v24 = v23;
      v25 = objc_opt_new();
      v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_599];
      v27 = [MEMORY[0x277CCACC8] callStackSymbols];
      v28 = [v27 filteredArrayUsingPredicate:v26];
      v29 = [v28 firstObject];

      [v25 submitToCoreAnalytics:v29 type:1 duration:v24];
      v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v31 = MEMORY[0x277CCA9B8];
      v85[0] = v48;
      *buf = @"semaphore wait timeout";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v85 count:1];
      v33 = [v31 errorWithDomain:v47 code:15 userInfo:v32];

      v21 = v12;
      if (v33)
      {
        v34 = v33;

        v21 = v33;
      }
    }

    v35 = v21;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v40 = v61[3];
        v41 = v69[5];
        v42 = [MEMORY[0x277CBEAA8] date];
        [v42 timeIntervalSinceDate:v15];
        *buf = 138413314;
        *&buf[4] = v38;
        v75 = 2112;
        v76 = v39;
        v77 = 2048;
        v78 = v40;
        v79 = 2112;
        v80 = v41;
        v81 = 2048;
        v82 = v43;
        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, locations count, %lu, error, %@, latency, %.4f sec", buf, 0x34u);
      }
    }

    v44 = v35;
    if (v35 || (v44 = v69[5]) != 0)
    {
      (*(v51 + 2))(v51, 0, 0, v44);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    objc_autoreleasePoolPop(context);
    v13 = 0;
    v12 = v35;
    if ((v45 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  (*(v51 + 2))(v51, v65[3], v61[3], v69[5]);
  v35 = v12;
LABEL_21:
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void __79__RTWorkoutRouteManager__getLocationsForWorkout_decimationLevel_limit_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getActivityTypeToWorkoutUUIDsMapFilteredUsingDistanceThreshold:(double)a3 topN:(unint64_t)a4 error:(id *)a5
{
  v198 = *MEMORY[0x277D85DE8];
  v129 = [MEMORY[0x277CBEAA8] date];
  v143 = objc_opt_new();
  v130 = a4;
  if (a4 == 0x7FFFFFFF)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v183 = v10;
        v184 = 2112;
        v185 = v11;
        v186 = 2048;
        v187 = 5000;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, top N is passed as Infinity. Manually reducing it to maximum count of %lu", buf, 0x20u);
      }
    }

    v130 = 5000;
  }

  v12 = [(RTWorkoutRouteManager *)self healthKitManager];
  v13 = [v12 _getWorkoutDefaultStartDateForRaceRoute];

  v174 = 0;
  v127 = [(RTWorkoutRouteManager *)self _getRelevanceLocationWithError:&v174];
  v14 = v174;
  v15 = v14;
  if (a5 && v14)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v118 = objc_opt_class();
      v119 = NSStringFromClass(v118);
      v120 = NSStringFromSelector(a2);
      *buf = 138412802;
      v183 = v119;
      v184 = 2112;
      v185 = v120;
      v186 = 2112;
      v187 = v15;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v17 = v15;
    *a5 = v15;
    v18 = [MEMORY[0x277CBEB38] dictionary];
    v19 = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v24 = [v13 stringFromDate];
        if (a3 == 1.79769313e308)
        {
          v25 = @"infinity";
        }

        else
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *&a3];
        }

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v130];
        +[RTRuntime footprint];
        *buf = 138414083;
        v183 = v22;
        v184 = 2112;
        v185 = v23;
        v186 = 2048;
        v187 = 50;
        v188 = 2112;
        v189 = v24;
        v190 = 2117;
        v191 = v127;
        v192 = 2112;
        v193 = v25;
        v194 = 2112;
        v195 = v26;
        v196 = 2048;
        v197 = v27;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, before beginning, batch size, %lu, startDate, %@, location, %{sensitive}@, distance threshold, %@, top N, %@, footprint, %.4f MB", buf, 0x52u);

        if (a3 != 1.79769313e308)
        {
        }
      }
    }

    v136 = a5;
    v28 = objc_opt_new();
    v29 = 0;
    v145 = v28;
    v30 = v13;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v31 = [(RTWorkoutRouteManager *)self healthKitManager];
      v32 = [(RTWorkoutRouteManager *)self healthKitManager];
      v33 = [v32 getWorkoutDefaultSortDescriptors];
      [(RTWorkoutRouteManager *)self healthKitManager];
      v35 = v34 = v29;
      v36 = [v35 _getRTWorkoutDefaultTypesForRaceRoute];
      v173 = v15;
      v141 = v30;
      v37 = [v31 getWorkoutsWithStartDate:v30 limit:50 sortDescriptors:v33 nearLocation:v127 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:a3 workoutTypes:v36 error:&v173];
      v128 = v173;

      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v29 = v37;
      v150 = [v29 countByEnumeratingWithState:&v169 objects:v181 count:16];
      v38 = 0;
      if (v150)
      {
        v147 = *v170;
        do
        {
          for (i = 0; i != v150; ++i)
          {
            if (*v170 != v147)
            {
              objc_enumerationMutation(v29);
            }

            v40 = *(*(&v169 + 1) + 8 * i);
            v41 = objc_autoreleasePoolPush();
            v42 = v29;
            v43 = [v29 count];
            v44 = [v40 UUID];
            v179 = v44;
            v45 = [(RTWorkoutRouteManager *)self healthKitManager];
            v46 = [v45 _getTotalDistanceForWorkout:v40];
            v180 = v46;
            v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
            [v143 addObject:v47];

            v48 = [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v40, "workoutActivityType")}];
            v28 = v145;
            v49 = [v145 objectForKeyedSubscript:v48];

            if (!v49)
            {
              v50 = objc_opt_new();
              v51 = [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v40, "workoutActivityType")}];
              [v145 setObject:v50 forKeyedSubscript:v51];
            }

            v38 += v43;
            v52 = [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v40, "workoutActivityType")}];
            v53 = [v145 objectForKeyedSubscript:v52];
            v54 = [v40 UUID];
            [v53 addObject:v54];

            objc_autoreleasePoolPop(v41);
            v29 = v42;
          }

          v150 = [v42 countByEnumeratingWithState:&v169 objects:v181 count:16];
        }

        while (v150);
      }

      v55 = MEMORY[0x277CBEAA8];
      v56 = [v29 lastObject];
      v57 = [v56 startDate];
      v58 = [v55 dateWithTimeInterval:v57 sinceDate:0.001];

      v19 = v128;
      if (v128)
      {
        break;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v59 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          v62 = NSStringFromSelector(a2);
          v63 = [v29 count];
          v64 = [v143 count];
          v65 = [v58 stringFromDate];
          +[RTRuntime footprint];
          *buf = 138413826;
          v183 = v61;
          v184 = 2112;
          v185 = v62;
          v186 = 2048;
          v187 = v63;
          v188 = 2048;
          v189 = v38;
          v190 = 2048;
          v191 = v64;
          v192 = 2112;
          v193 = v65;
          v194 = 2048;
          v195 = v66;
          _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%@, %@, workouts count, %lu, valid Workouts count, %lu, total workout UUIDs count, %lu, next startDate, %@, footprint, %.4f MB", buf, 0x48u);
        }
      }

      objc_autoreleasePoolPop(context);
      v15 = 0;
      v30 = v58;
      if (![v29 count])
      {
        goto LABEL_42;
      }
    }

    objc_autoreleasePoolPop(context);
    if (!v136)
    {
LABEL_42:
      v125 = v58;
      v124 = objc_autoreleasePoolPush();
      v69 = [v143 reverseObjectEnumerator];
      v70 = [v69 allObjects];

      v71 = [v70 count];
      if (v130 >= v71)
      {
        v72 = v71;
      }

      else
      {
        v72 = v130;
      }

      v73 = [v70 subarrayWithRange:{0, v72}];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v74 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          v77 = NSStringFromSelector(a2);
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v130];
          v79 = [v73 count];
          +[RTRuntime footprint];
          *buf = 138413314;
          v183 = v76;
          v184 = 2112;
          v185 = v77;
          v186 = 2112;
          v187 = v78;
          v188 = 2048;
          v189 = v79;
          v190 = 2048;
          v191 = v80;
          _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_INFO, "%@, %@, after filtering top N, %@, workout UUIDs count, %lu, footprint, %.4f MB", buf, 0x34u);
        }
      }

      v126 = v29;
      v81 = [v73 sortedArrayUsingComparator:&__block_literal_global_348];

      v82 = objc_opt_new();
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      obj = v81;
      v134 = [obj countByEnumeratingWithState:&v165 objects:v178 count:16];
      if (v134)
      {
        v133 = *v166;
        do
        {
          v83 = 0;
          do
          {
            if (*v166 != v133)
            {
              objc_enumerationMutation(obj);
            }

            v137 = v83;
            v84 = *(*(&v165 + 1) + 8 * v83);
            v135 = objc_autoreleasePoolPush();
            v161 = 0u;
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            contexta = [v84 allKeys];
            v144 = [contexta countByEnumeratingWithState:&v161 objects:v177 count:16];
            if (v144)
            {
              v142 = *v162;
              do
              {
                v85 = 0;
                do
                {
                  if (*v162 != v142)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v151 = v85;
                  v86 = *(*(&v161 + 1) + 8 * v85);
                  v148 = objc_autoreleasePoolPush();
                  v157 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  v160 = 0u;
                  v87 = v28;
                  v88 = [v87 countByEnumeratingWithState:&v157 objects:v176 count:16];
                  if (v88)
                  {
                    v89 = v88;
                    v90 = *v158;
                    do
                    {
                      for (j = 0; j != v89; ++j)
                      {
                        if (*v158 != v90)
                        {
                          objc_enumerationMutation(v87);
                        }

                        v92 = *(*(&v157 + 1) + 8 * j);
                        v93 = objc_autoreleasePoolPush();
                        v94 = [v87 objectForKeyedSubscript:v92];
                        v95 = [v94 containsObject:v86];

                        if (v95)
                        {
                          v96 = [v82 objectForKeyedSubscript:v92];

                          if (!v96)
                          {
                            v97 = objc_opt_new();
                            [v82 setObject:v97 forKeyedSubscript:v92];
                          }

                          v98 = [v82 objectForKeyedSubscript:v92];
                          [v98 addObject:v86];
                        }

                        objc_autoreleasePoolPop(v93);
                      }

                      v89 = [v87 countByEnumeratingWithState:&v157 objects:v176 count:16];
                    }

                    while (v89);
                  }

                  objc_autoreleasePoolPop(v148);
                  v85 = v151 + 1;
                  v28 = v145;
                }

                while (v151 + 1 != v144);
                v144 = [contexta countByEnumeratingWithState:&v161 objects:v177 count:16];
              }

              while (v144);
            }

            objc_autoreleasePoolPop(v135);
            v83 = v137 + 1;
          }

          while (v137 + 1 != v134);
          v134 = [obj countByEnumeratingWithState:&v165 objects:v178 count:16];
        }

        while (v134);
      }

      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v18 = v82;
      v99 = [v18 countByEnumeratingWithState:&v153 objects:v175 count:16];
      if (v99)
      {
        v100 = v99;
        v101 = MEMORY[0x277D86220];
        v102 = *v154;
        v146 = *v154;
        do
        {
          v103 = 0;
          v149 = v100;
          do
          {
            if (*v154 != v102)
            {
              objc_enumerationMutation(v18);
            }

            v104 = *(*(&v153 + 1) + 8 * v103);
            v105 = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
            {
              v106 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
              {
                v107 = objc_opt_class();
                v108 = NSStringFromClass(v107);
                v109 = NSStringFromSelector(a2);
                v152 = [v18 objectForKeyedSubscript:v104];
                v110 = v18;
                v111 = [v152 count];
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v130];
                +[RTRuntime footprint];
                v114 = v113;
                v115 = [MEMORY[0x277CBEAA8] date];
                [v115 timeIntervalSinceDate:v129];
                *buf = 138413826;
                v183 = v108;
                v184 = 2112;
                v185 = v109;
                v186 = 2112;
                v187 = v104;
                v188 = 2048;
                v189 = v111;
                v18 = v110;
                v101 = MEMORY[0x277D86220];
                v190 = 2112;
                v191 = v112;
                v192 = 2048;
                v193 = v114;
                v194 = 2048;
                v195 = v116;
                _os_log_impl(&dword_2304B3000, v106, OS_LOG_TYPE_INFO, "%@, %@, activity type, %@, workout UUIDs count, %lu, top N, %@, footprint, %.4f MB, latency, %.4f sec", buf, 0x48u);

                v100 = v149;
                v102 = v146;
              }
            }

            objc_autoreleasePoolPop(v105);
            ++v103;
          }

          while (v100 != v103);
          v100 = [v18 countByEnumeratingWithState:&v153 objects:v175 count:16];
        }

        while (v100);
      }

      objc_autoreleasePoolPop(v124);
      v143 = 0;
      v58 = v125;
      v29 = v126;
      v19 = v128;
      goto LABEL_86;
    }

    v67 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v123 = NSStringFromSelector(a2);
      *buf = 138412802;
      v183 = v122;
      v184 = 2112;
      v185 = v123;
      v186 = 2112;
      v187 = v128;
      _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v68 = v128;
    *v136 = v128;
    v18 = objc_opt_new();

LABEL_86:
    v13 = v58;
  }

  return v18;
}

uint64_t __100__RTWorkoutRouteManager__getActivityTypeToWorkoutUUIDsMapFilteredUsingDistanceThreshold_topN_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 allValues];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v4 allValues];

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)_getRTLocationUsingRTPair:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D01160]) initWithRTPair:v3];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pair", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_getRTLocationUsingCLLocationCoordinate2D:(CLLocationCoordinate2D *)a3
{
  if (a3)
  {
    v4 = objc_alloc(MEMORY[0x277D01160]);
    latitude = a3->latitude;
    longitude = a3->longitude;
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v4 initWithLatitude:v7 longitude:latitude horizontalUncertainty:longitude date:0.0];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinate", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_getRTPairUsingCLLocationCoordinate2D:(CLLocationCoordinate2D *)a3
{
  if (a3)
  {
    v4 = objc_alloc(MEMORY[0x277D011C0]);
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3->latitude];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3->longitude];
    v7 = [v4 initWithFirstObject:v5 secondObject:v6];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinate", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldDecimateWorkout:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", &v18, 2u);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v6 = [(RTWorkoutRouteManager *)self healthKitManager];
  [v6 _getDurationForWorkout:v5];
  v8 = v7 / 60.0;
  v9 = v7 / 60.0 > 90.0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = [v5 UUID];
      v15 = v14;
      v18 = 138413314;
      v16 = @"NO";
      v19 = v12;
      if (v8 > 90.0)
      {
        v16 = @"YES";
      }

      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, %@, workout UUID, %@, should decimate, %@, duration threshold exceeded, %@", &v18, 0x34u);
    }

LABEL_10:
  }

  return v9;
}

- (id)_mapWorkoutsToUUIDs:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
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
          v14 = [v12 UUID];
          [v6 addObject:v14];

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workouts", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workouts");
    }

    v6 = [MEMORY[0x277CBEA60] array];
  }

  return v6;
}

- (id)_sortWorkoutUUIDs:(id)a3 key:(id)a4 ascending:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (!v11)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_17;
    }

    v21 = @"workoutUUIDs";
    goto LABEL_16;
  }

  if (!v12)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_17;
    }

    v21 = @"key";
LABEL_16:
    *a6 = _RTErrorInvalidParameterCreate(v21);
LABEL_17:
    v19 = [MEMORY[0x277CBEA60] array];
    goto LABEL_32;
  }

  v14 = [(RTWorkoutRouteManager *)self healthKitManager];
  v43 = 0;
  v15 = [v14 getWorkoutsWithUUIDs:v11 error:&v43];
  v16 = v43;

  if (a6 && v16)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = v33;
      v46 = 2112;
      v47 = v34;
      v48 = 2112;
      v49 = v16;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v18 = v16;
    *a6 = v16;
    v19 = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v42 = v16;
    v23 = [(RTWorkoutRouteManager *)self _sortWorkouts:v15 key:v13 ascending:v7 error:&v42];
    v24 = v42;

    if (a6 && v24)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        *buf = 138412802;
        v45 = v36;
        v46 = 2112;
        v47 = v37;
        v48 = 2112;
        v49 = v24;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v26 = v24;
      *a6 = v24;
      v19 = [MEMORY[0x277CBEA60] array];
      v16 = v24;
    }

    else
    {
      v41 = v24;
      v27 = [(RTWorkoutRouteManager *)self _mapWorkoutsToUUIDs:v23 error:&v41];
      v16 = v41;

      if (a6 && v16)
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          *buf = 138412802;
          v45 = v39;
          v46 = 2112;
          v47 = v40;
          v48 = 2112;
          v49 = v16;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v29 = v16;
        *a6 = v16;
        v30 = [MEMORY[0x277CBEA60] array];
      }

      else
      {
        v30 = v27;
      }

      v19 = v30;
    }
  }

LABEL_32:

  return v19;
}

- (id)_sortWorkouts:(id)a3 key:(id)a4 ascending:(BOOL)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workouts", v19, 2u);
    }

    if (!a6)
    {
      goto LABEL_13;
    }

    v16 = @"workouts";
    goto LABEL_12;
  }

  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v10 ascending:0];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v14 = [v8 sortedArrayUsingDescriptors:v13];

    objc_autoreleasePoolPop(v11);
    goto LABEL_14;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key", v19, 2u);
  }

  if (a6)
  {
    v16 = @"key";
LABEL_12:
    *a6 = _RTErrorInvalidParameterCreate(v16);
  }

LABEL_13:
  v14 = [MEMORY[0x277CBEA60] array];
LABEL_14:

  return v14;
}

- (id)_paceFromWorkout:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(RTWorkoutRouteManager *)self healthKitManager];
    v8 = [v7 _getTotalDistanceForWorkout:v6];
    v9 = [MEMORY[0x277CCDAB0] meterUnit];
    [v8 doubleValueForUnit:v9];
    v11 = v10;

    v12 = [(RTWorkoutRouteManager *)self healthKitManager];
    [v12 _getDurationForWorkout:v6];
    v14 = v13;

    if (v11 == 0.0)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v37 = *MEMORY[0x277CCA450];
      v17 = MEMORY[0x277CCACA8];
      v18 = [v6 UUID];
      v19 = [v17 stringWithFormat:@"total distance for workout is 0, workout UUID, %@", v18];
      v38[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v21 = [v15 errorWithDomain:v16 code:7 userInfo:v20];

      if (a4)
      {
        v22 = v21;
        v23 = 0;
        *a4 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v6 UUID];
          v27 = [v26 UUIDString];
          *buf = 138413058;
          v30 = v27;
          v31 = 2048;
          v32 = v14;
          v33 = 2048;
          v34 = v11;
          v35 = 2048;
          v36 = v14 / v11;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "workout UUID, %@, totalSeconds, %.5f, totalDistance, %.5f, pace, %.5f", buf, 0x2Au);
        }
      }

      v23 = [MEMORY[0x277CCABB0] numberWithDouble:v14 / v11];
      v21 = 0;
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"workout");
      *a4 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (void)_logClusters:(id)a3 className:(id)a4 selectorName:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = a4;
  v30 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v43 = v31;
      v44 = 2112;
      v45 = v30;
      v46 = 2048;
      v47 = [v7 count];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, clusters count, %lu", buf, 0x20u);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v27)
  {
    v26 = *v38;
    v9 = MEMORY[0x277D86220];
    v32 = 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v11 count];
            +[RTRuntime footprint];
            *buf = 138413314;
            v43 = v31;
            v44 = 2112;
            v45 = v30;
            v46 = 2048;
            v47 = v32;
            v48 = 2048;
            v49 = v13;
            v50 = 2048;
            v51 = v14;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, cluster, %lu, workouts, %lu, footprint, %.4f MB", buf, 0x34u);
          }
        }

        v29 = v10;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          v19 = 1;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v33 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = [v21 UUIDString];
                  *buf = 138413314;
                  v43 = v31;
                  v44 = 2112;
                  v45 = v30;
                  v46 = 2048;
                  v47 = v32;
                  v48 = 2048;
                  v49 = v19;
                  v50 = 2112;
                  v51 = v24;
                  _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, cluster, %lu, workout, %lu, uuid, %@", buf, 0x34u);
                }
              }

              ++v19;
              objc_autoreleasePoolPop(v22);
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        ++v32;
        objc_autoreleasePoolPop(context);
        v10 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v27);
  }
}

- (id)_latestWorkoutUUIDAcrossWorkouts:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 endDate];
        v14 = [v4 compare:v13];

        if (v14 == -1)
        {
          v15 = [v11 endDate];

          v16 = v11;
          v8 = v16;
          v4 = v15;
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17 = [v8 UUID];

  return v17;
}

- (void)_stepCallerWithName:(id)a3 counter:(int64_t)a4 totalCount:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      +[RTRuntime footprint];
      v10 = 134218754;
      v11 = a4;
      v12 = 2048;
      v13 = a5;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Step %lu/%lu %@ done, footprint, %.4f MB", &v10, 0x2Au);
    }
  }
}

- (double)_getConstantValueForString:(id)a3 isDecimated:(BOOL)a4 workoutActivityType:(unint64_t)a5 error:(id *)a6
{
  v8 = a4;
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (!a5)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutActivityType", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_26;
    }

    v14 = @"workoutActivityType";
    goto LABEL_25;
  }

  if (v9)
  {
    if ([objc_opt_class() isPermittedWorkoutActivityType:a5])
    {
      if (v10 == @"kRTClusteringCentroidDistanceThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 500.0;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTClusteringDTWDistanceEuclideanThreshold" || v10 == @"kRTClusteringDTWDistanceFirstNormThreshold")
      {
        if (a5 == 13 || a5 == 71 || a5 == 37)
        {
          v11 = 0;
          if (v8)
          {
            v12 = 0.6;
          }

          else
          {
            v12 = 0.5;
          }

          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterCentroidDistanceThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 0.06;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterIntersectionOverUnionThreshold")
      {
        if (a5 == 13 || a5 == 71 || a5 == 37)
        {
          v11 = 0;
          if (v8)
          {
            v12 = 0.4;
          }

          else
          {
            v12 = 0.8;
          }

          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterTotalDistanceDifferenceThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 0.1;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterFirstLocationsDistanceThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 0.04;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterLastLocationsDistanceThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 0.03;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterDifferenceBetweenLocationsThreshold")
      {
        if (a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
        {
          v11 = 0;
          v12 = 0.4;
          goto LABEL_62;
        }
      }

      else if (v10 == @"kRTPreFilterLocationsRateThreshold" && a5 - 13 <= 0x3A && ((1 << (a5 - 13)) & 0x400000001000001) != 0)
      {
        v11 = 0;
        v12 = 0.85;
LABEL_62:

        goto LABEL_63;
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid constant string, %@", v10];
      v26 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [v19 errorWithDomain:v20 code:7 userInfo:v21];
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"invalid workout activity type";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v11 = [v16 errorWithDomain:v17 code:7 userInfo:v18];
    }

    if (a6)
    {
      v22 = v11;
      *a6 = v11;
    }

    v12 = 1.79769313e308;
    goto LABEL_62;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: constantString", buf, 2u);
  }

  if (a6)
  {
    v14 = @"constantString";
LABEL_25:
    *a6 = _RTErrorInvalidParameterCreate(v14);
  }

LABEL_26:
  v12 = 1.79769313e308;
LABEL_63:

  return v12;
}

- (id)_getConstantValueForDistanceThresholdUsingDistanceMetric:(int64_t)a3 isDecimated:(BOOL)a4 workoutActivityType:(unint64_t)a5 error:(id *)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    switch(a3)
    {
      case 3:
        [RTWorkoutRouteManager _getConstantValueForString:"_getConstantValueForString:isDecimated:workoutActivityType:error:" isDecimated:@"kRTClusteringDTWDistanceEuclideanThreshold" workoutActivityType:a4 error:?];
        v9 = v13;
        break;
      case 2:
        [RTWorkoutRouteManager _getConstantValueForString:"_getConstantValueForString:isDecimated:workoutActivityType:error:" isDecimated:@"kRTClusteringDTWDistanceFirstNormThreshold" workoutActivityType:a4 error:?];
        v9 = v12;
        break;
      case 1:
        [RTWorkoutRouteManager _getConstantValueForString:"_getConstantValueForString:isDecimated:workoutActivityType:error:" isDecimated:@"kRTClusteringCentroidDistanceThreshold" workoutActivityType:a4 error:?];
        v9 = v8;
        break;
      default:
        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277D01448];
        v31 = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid distance metric", a4];
        v32[0] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v14 = [v15 errorWithDomain:v16 code:7 userInfo:v18];

        v9 = 1.79769313e308;
        if (!a6)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
    }

    v14 = 0;
    if (!a6)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v14)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        v26 = v23;
        v27 = 2112;
        v28 = v24;
        v29 = 2112;
        v30 = v14;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v20 = v14;
      v11 = 0;
      *a6 = v14;
      goto LABEL_20;
    }

LABEL_19:
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
LABEL_20:

    goto LABEL_21;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutActivityType", buf, 2u);
  }

  if (a6)
  {
    _RTErrorInvalidParameterCreate(@"workoutActivityType");
    *a6 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)_colorFromHexString:(id)a3
{
  v6 = 0;
  v3 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  [v3 setScanLocation:0];
  [v3 scanHexInt:&v6];
  v4 = [MEMORY[0x277D75348] colorWithRed:BYTE2(v6) / 255.0 green:BYTE1(v6) / 255.0 blue:v6 / 255.0 alpha:1.0];

  return v4;
}

- (BOOL)_validateWorkout:(id)a3 otherWorkout:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 workoutActivityType];
  if (v9 != [v8 workoutActivityType])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v7 workoutActivityType]);
        v14 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v8 workoutActivityType]);
        *buf = 138412546;
        v35 = v13;
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "workout workoutActivityType, %@, otherWorkout workoutActivityType, %@", buf, 0x16u);
      }
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v17 = MEMORY[0x277CCACA8];
    v18 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v7 workoutActivityType]);
    v19 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v8 workoutActivityType]);
    v20 = [v17 stringWithFormat:@"workout activity type mismatch, workout workoutActivityType, %@, otherWorkout workoutActivityType, %@", v18, v19];
    v33 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v10 = [v15 errorWithDomain:v16 code:7 userInfo:v21];

    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!+[RTHealthKitManager isPermittedWorkoutActivityType:](RTHealthKitManager, "isPermittedWorkoutActivityType:", [v7 workoutActivityType]) || !+[RTHealthKitManager isPermittedWorkoutActivityType:](RTHealthKitManager, "isPermittedWorkoutActivityType:", objc_msgSend(v8, "workoutActivityType")))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v7 workoutActivityType]);
        v25 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v8 workoutActivityType]);
        *buf = 138412546;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "workout workoutActivityType, %@, otherWorkout workoutActivityType, %@", buf, 0x16u);
      }
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"workout activity type not permitted";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v10 = [v26 errorWithDomain:v27 code:7 userInfo:v28];

    if (!a5)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

LABEL_10:
    v22 = v10;
    v11 = 0;
    *a5 = v10;
    goto LABEL_17;
  }

  v10 = 0;
  v11 = 1;
LABEL_17:

  return v11;
}

@end