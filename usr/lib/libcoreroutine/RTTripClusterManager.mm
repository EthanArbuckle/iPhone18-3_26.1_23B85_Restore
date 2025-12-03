@interface RTTripClusterManager
+ (int64_t)periodicPurgePolicy;
- (BOOL)_addTripSegmentToCompoundRoute:(id)route outLocationsArray:(id)array maxDistanceAllowedBetweenDriveSegments:(double)segments tripSegmentRoadTransitionsStore:(id)store outRoadTransitionArray:(id)transitionArray compoundTripSegmentID:(id)d compoundTripSegmentStartDate:(id)date compoundRouteMetric:(id)self0;
- (BOOL)_shouldMockLearnedRoutesSPI;
- (BOOL)_significantNonDriveClusterForFetchSPI:(id)i;
- (BOOL)_supportsRouteCompoundingWithoutVisitAggregation;
- (BOOL)areOriginAndDestinationTooClose:(id)close;
- (BOOL)areTripSegmentsSpatiallyAligned:(id)aligned withTrip:(id)trip;
- (BOOL)areTwoPointsTooClose:(id)close location2:(id)location2;
- (BOOL)processTripSegments:(id)segments outLocationsArray:(id *)array;
- (RTTripClusterManager)initWithTripSegmentManager:(id)manager tripClusterStore:(id)store tripClusterRouteStore:(id)routeStore tripClusterRouteRoadTransitionsStore:(id)transitionsStore tripClusterRecencyStore:(id)recencyStore tripClusterScheduleStore:(id)scheduleStore tripSegmentRoadTransitionsStore:(id)roadTransitionsStore tripClusterWaypointStore:(id)self0 defaultsManager:(id)self1;
- (double)maximumInterTripSegmentDistanceAllowedForCompoundRoute;
- (id)_createNonDriveRTLearnedRouteTravelMode:(id)mode totalNumberOfRoutes:(int)routes sumOfTraversalCountOfAllRoutes:(int)allRoutes;
- (id)_createUnionOfLocations:(id)locations decimatedLocations:(id)decimatedLocations;
- (id)_getClusterLikelihoods:(id)likelihoods routeDate:(id)date;
- (id)_getPurgePolicyOverrideDaysToPersistTripClusterData:(id)data;
- (id)_getPurgePolicyOverrideDaysToPersistTripClusterDataShort:(id)short;
- (id)_learnedRouteForDriveCluster:(id)cluster tripClusters:(id)clusters routeStartLocation:(id)location routeEndLocation:(id)endLocation fetchAllRouteLocations:(BOOL)locations metricsCollector:(id)collector excludeRouteLocations:(BOOL)routeLocations;
- (id)_learnedRouteForNoDriveCluster:(id)cluster routeStartLocation:(id)location routeEndLocation:(id)endLocation metricsCollector:(id)collector;
- (id)_odPairMetricsPerClusterOrder:(id)order;
- (id)_readMockSPIDataFile;
- (id)_removeEmptyWaypointClusters:(id)clusters;
- (id)attemptCreatingACompoundRoute:(id)route compoundTripSegmentLocations:(id *)locations numberOfDriveSegments:(unint64_t)segments tripSegmentRoadTransitionsStore:(id)store compoundTripSegmentRoadTransitions:(id *)transitions driveTripDuration:(double *)duration;
- (id)createMockTripWithSequence:(int)sequence sequenceMax:(int)max commuteID:(id)d originLat:(double)lat originLon:(double)lon destLat:(double)destLat destLon:(double)destLon mode:(int64_t)self0;
- (id)getWaypointsFromOldStore:(id)store;
- (int)_maximumTravelDistanceForSignificantNonDriveCluster:(signed __int16)cluster;
- (int)_maximumTravelTimeForSignificantNonDriveCluster:(signed __int16)cluster;
- (int)_minimumTravelDistanceForSignificantNonDriveCluster;
- (int)_minimumTravelTimeForSignificantNonDriveCluster;
- (int)maximumLocationsInALearnedRoute;
- (int)minimumTraversalCountForLearnedRoutes;
- (int64_t)_fetchLearnedRoutesForFetchTypeAny:(id)any handler:(id)handler;
- (int64_t)_fetchLearnedRoutesWithOptions:(id)options handler:(id)handler;
- (unint64_t)_bestRoute:(id)route routeDate:(id)date;
- (unint64_t)_bestScheduleRoute:(id)route routeDate:(id)date;
- (unint64_t)_mostTravelledRoute:(id)route;
- (void)_computeSPIStatisticMetrics:(id)metrics learnedRoutes:(id)routes error:(id)error spiStatisticReasonCode:(int64_t)code fetchRequestTime:(id)time;
- (void)_deleteAllTripClusterDataForClusterID:(id)d;
- (void)_fetchLearnedRoutesWithOptionsDefault:(id)default handler:(id)handler;
- (void)_fetchLearnedRoutesWithOptionsMock:(id)mock handler:(id)handler;
- (void)_fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler;
- (void)_findNonDriveClusterForCommuteID:(id)d tripClusters:(id)clusters beforeDriveCluster:(id *)cluster afterDriveCluster:(id *)driveCluster;
- (void)_findRouteFromCurrentLocation:(id)location options:(id)options queryStartTime:(id)time handler:(id)handler;
- (void)_getRoadDataFromFetchedRoutes:(id)routes roadData:(id)data;
- (void)_groupTripSegmentsByCommuteID:(id)d tripSegmentByCommuteID:(id)iD;
- (void)_learnClusters;
- (void)_markTripSegmentsAsProcessedByClustering:(id)clustering;
- (void)_mockLearnedRouteTravelModeConfiguration:(int64_t *)configuration driveTravelMode:(int64_t *)mode postDriveTravelMode:(int64_t *)travelMode;
- (void)_processAllFetchedRouteClustersForIndexRange:(id)range handler:(id)handler tripClusters:(id)clusters originLatitude:(double)latitude originLongitude:(double)longitude destLatitude:(double)destLatitude destLongitude:(double)destLongitude startIndexIncluded:(unint64_t)self0 endIndexExcluded:(unint64_t)self1 queryStartTime:(id)self2 excludeRouteLocations:(BOOL)self3;
- (void)_processAllTripSegmentsGroupedByOD:(id)d inCommuteGroups:(id)groups;
- (void)_routeLocationsForCluster:(id)cluster inRouteLocations:(id)locations learnedRouteLocations:(id)routeLocations fetchAllRouteLocations:(BOOL)allRouteLocations;
- (void)_routeScoreForDate:(id)date learnedRouteLastDate:(id)lastDate distanceInWeekday:(unint64_t *)weekday distanceInHour:(unint64_t *)hour;
- (void)_setup;
- (void)_topListRoutes:(id)routes routeDate:(id)date handler:(id)handler;
- (void)_updateSPIMetricReasonCodeAndSubmit:(int64_t)submit;
- (void)computeCloudSyncMetric;
- (void)deferClusterProcessing:(BOOL)processing;
- (void)fetchLearnedRoutesWithOptions:(id)options handler:(id)handler;
- (void)fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler;
- (void)generateMissingRoutesForClusters;
- (void)groupTripSegments:(id)segments inOriginDestPair:(id *)pair;
- (void)learnClusters;
- (void)outputLearnedRouteSPICallDebuggingData:(id)data options:(id)options queryStartTime:(id)time queryResponseTimeMSec:(double)sec learnedRoutes:(id)routes type:(id)type;
- (void)outputTripSegmentsInDebugLogLine:(id)line;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)purgeClusterDatabasesPredating:(id)predating handler:(id)handler;
- (void)purgeClustersDatabaseWithTripClusterStore:(id)store tripClusterRouteStore:(id)routeStore tripClusterRoadTransitionStore:(id)transitionStore;
- (void)purgeTripClusterTable:(int)table handler:(id)handler;
- (void)purgeTripClusterWithClusterID:(id)d handler:(id)handler;
- (void)setup;
- (void)unlockAllRouteClusters;
- (void)validateAndProcessCommute:(id)commute;
@end

@implementation RTTripClusterManager

- (RTTripClusterManager)initWithTripSegmentManager:(id)manager tripClusterStore:(id)store tripClusterRouteStore:(id)routeStore tripClusterRouteRoadTransitionsStore:(id)transitionsStore tripClusterRecencyStore:(id)recencyStore tripClusterScheduleStore:(id)scheduleStore tripSegmentRoadTransitionsStore:(id)roadTransitionsStore tripClusterWaypointStore:(id)self0 defaultsManager:(id)self1
{
  v59 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  storeCopy = store;
  storeCopy2 = store;
  routeStoreCopy = routeStore;
  routeStoreCopy2 = routeStore;
  transitionsStoreCopy = transitionsStore;
  transitionsStoreCopy2 = transitionsStore;
  recencyStoreCopy = recencyStore;
  recencyStoreCopy2 = recencyStore;
  scheduleStoreCopy = scheduleStore;
  scheduleStoreCopy2 = scheduleStore;
  roadTransitionsStoreCopy = roadTransitionsStore;
  waypointStoreCopy = waypointStore;
  v54 = managerCopy;
  defaultsManagerCopy = defaultsManager;
  if (!managerCopy)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegmentManager", buf, 2u);
    }

    v39 = 0;
    v24 = waypointStoreCopy;
    goto LABEL_22;
  }

  if (!storeCopy2)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = waypointStoreCopy;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusterStore", buf, 2u);
    }

    v39 = 0;
LABEL_22:
    v25 = defaultsManagerCopy;
LABEL_39:
    selfCopy = self;
    goto LABEL_40;
  }

  v24 = waypointStoreCopy;
  if (!routeStoreCopy2)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v25 = defaultsManagerCopy;
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripClusterRouteStore";
LABEL_37:
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_38;
  }

  v25 = defaultsManagerCopy;
  if (!transitionsStoreCopy2)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripClusterRouteRoadTransitionsStore";
    goto LABEL_37;
  }

  if (!recencyStoreCopy2)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripClusterRecencyStore";
    goto LABEL_37;
  }

  if (!scheduleStoreCopy2)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripClusterScheduleStore";
    goto LABEL_37;
  }

  if (!roadTransitionsStoreCopy)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripSegmentRoadTransitionsStore";
    goto LABEL_37;
  }

  if (!v24)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: tripClusterWaypointStore";
    goto LABEL_37;
  }

  if (!defaultsManagerCopy)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v43 = "Invalid parameter not satisfying: defaultsManager";
      goto LABEL_37;
    }

LABEL_38:

    v39 = 0;
    goto LABEL_39;
  }

  v56.receiver = self;
  v56.super_class = RTTripClusterManager;
  v26 = [(RTNotifier *)&v56 init];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
    objc_storeStrong(&v26->_tripSegmentManager, manager);
    objc_storeStrong(&v28->_tripClusterStore, storeCopy);
    objc_storeStrong(&v28->_tripClusterRouteStore, routeStoreCopy);
    objc_storeStrong(&v28->_tripClusterRouteRoadTransitionsStore, transitionsStoreCopy);
    objc_storeStrong(&v28->_tripClusterRecencyStore, recencyStoreCopy);
    objc_storeStrong(&v28->_tripClusterScheduleStore, scheduleStoreCopy);
    objc_storeStrong(&v28->_tripSegmentRoadTransitionsStore, roadTransitionsStore);
    objc_storeStrong(&v28->_tripClusterWaypointStore, waypointStore);
    objc_storeStrong(&v28->_defaultsManager, defaultsManager);
    v29 = [[RTTripClusterProcessorOptions alloc] initWithDefaultsManager:defaultsManagerCopy];
    options = v28->_options;
    v28->_options = v29;

    v28->_isClusterLearningInProgress = 0;
    v28->_accumulatedDistance = 0.0;
    v28->_accumulatedDuration = 0.0;
    multiModalStartDate = v28->_multiModalStartDate;
    v28->_multiModalStartDate = 0;

    multiModalEndDate = v28->_multiModalEndDate;
    v28->_multiModalEndDate = 0;

    pendingDrivingTripSegment = v28->_pendingDrivingTripSegment;
    v28->_pendingDrivingTripSegment = 0;

    [(RTTripClusterManager *)v28 setShouldDeferClusterProcessing:0];
    v34 = [[RTTripClusterProcessor alloc] initWithOptions:v28->_options defaultsManager:defaultsManagerCopy];
    tripClusterProcessor = v28->_tripClusterProcessor;
    v28->_tripClusterProcessor = v34;

    v28->_clustersUnlockedAfterStartUp = 0;
    [(RTTripClusterManager *)v28 setup];
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    v27 = v28;
    if (v36)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138412290;
        v58 = v46;
        _os_log_debug_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEBUG, "%@,RTTripClusterManager successfully initialized", buf, 0xCu);

        v25 = defaultsManagerCopy;
      }

      v27 = v28;
    }
  }

  selfCopy = v27;
  v39 = selfCopy;
LABEL_40:

  return v39;
}

- (void)setup
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTTripClusterManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __29__RTTripClusterManager_setup__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setup];
  v2 = *(a1 + 32);

  return [v2 unlockAllRouteClusters];
}

- (void)_setup
{
  v32 = *MEMORY[0x277D85DE8];
  options = [(RTTripClusterManager *)self options];
  enableClusterProcessing = [options enableClusterProcessing];

  if ((enableClusterProcessing & 1) == 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v23 = 138412546;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v18 = "%@:%@,enableClusterProcessing is disabled";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v18, &v23, 0x16u);

    goto LABEL_16;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v19 = objc_opt_class();
    v16 = NSStringFromClass(v19);
    v17 = NSStringFromSelector(a2);
    v23 = 138412546;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v18 = "%@:%@,feature flag is disabled";
    goto LABEL_12;
  }

  self->_isTripSegmentClusteringEnabled = 0;
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentClusteringEnablement"];

  if (v7)
  {
    defaultsManager2 = [(RTTripClusterManager *)self defaultsManager];
    v9 = [defaultsManager2 objectForKey:@"RTDefaultsTripSegmentClusteringEnablement"];

    if (v9)
    {
      self->_isTripSegmentClusteringEnabled = [v9 BOOLValue];
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      isTripSegmentClusteringEnabled = self->_isTripSegmentClusteringEnabled;
      v23 = 138413314;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2114;
      *v28 = v9;
      *&v28[8] = 1026;
      v29 = isTripSegmentClusteringEnabled;
      v30 = 1026;
      v31 = _os_feature_enabled_impl();
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@,defaultsValueSet tripSegmentClusteringEnabled,%{public}@,_isTripSegmentClusteringEnabled,%{public}d,featureFlag,%{public}d", &v23, 0x2Cu);
    }

    goto LABEL_15;
  }

  self->_isTripSegmentClusteringEnabled = 1;
  v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v10 = NSStringFromClass(v20);
    v21 = NSStringFromSelector(a2);
    v22 = self->_isTripSegmentClusteringEnabled;
    v23 = 138413058;
    v24 = v10;
    v25 = 2112;
    v26 = v21;
    v27 = 1026;
    *v28 = v22;
    *&v28[4] = 1026;
    *&v28[6] = _os_feature_enabled_impl();
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,defaultsValue Not set _isTripSegmentClusteringEnabled,%{public}d,featureFlag,%{public}d", &v23, 0x22u);

LABEL_15:
  }

LABEL_16:
}

- (void)unlockAllRouteClusters
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self->_clustersUnlockedAfterStartUp && self->_isTripSegmentClusteringEnabled)
  {
    v4 = [objc_alloc(MEMORY[0x277D01368]) initWithbatchSize:3000];
    v5 = [(RTTripClusterStore *)self->_tripClusterStore getTripClustersWithOptions:v4];
    if ([v5 count])
    {
      v20 = v4;
      array = [MEMORY[0x277CBEB18] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            if ([v12 isLocked])
            {
              [v12 unlockCluster];
              [array addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v35 count:16];
        }

        while (v9);
      }

      self->_clustersUnlockedAfterStartUp = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = NSStringFromSelector(a2);
          v17 = [array count];
          v18 = [v7 count];
          clustersUnlockedAfterStartUp = self->_clustersUnlockedAfterStartUp;
          *buf = 138413314;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          v29 = 1024;
          v30 = v17;
          v31 = 1024;
          v32 = v18;
          v33 = 1024;
          v34 = clustersUnlockedAfterStartUp;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@:%@,found,%d/%d,locked clusters,_clustersUnlockedAfterStartUp,%d", buf, 0x28u);
        }
      }

      v4 = v20;
      if ([array count])
      {
        [(RTTripClusterStore *)self->_tripClusterStore storeTripClusters:array];
      }
    }
  }
}

- (void)deferClusterProcessing:(BOOL)processing
{
  processingCopy = processing;
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = processingCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "RTTripClusterManager:defer,ClusterProcessing,%d", v6, 8u);
    }
  }

  [(RTTripClusterManager *)self setShouldDeferClusterProcessing:processingCopy];
  [(RTTripClusterProcessor *)self->_tripClusterProcessor deferClusterProcessing:processingCopy];
}

- (void)generateMissingRoutesForClusters
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_isClusterLearningInProgress)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    *v28 = 138412546;
    *&v28[4] = v6;
    *&v28[12] = 2112;
    *&v28[14] = v7;
    v8 = "%@,%@,Cluster learning is already in progress. Skipping new request";
LABEL_13:
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, v8, v28, 0x16u);

LABEL_14:
    return;
  }

  options = [(RTTripClusterManager *)self options];
  enableClusterProcessing = [options enableClusterProcessing];

  if ((enableClusterProcessing & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v18 = objc_opt_class();
    v6 = NSStringFromClass(v18);
    v7 = NSStringFromSelector(a2);
    *v28 = 138412546;
    *&v28[4] = v6;
    *&v28[12] = 2112;
    *&v28[14] = v7;
    v8 = "%@,%@,Trip cluster processing is disabled";
    goto LABEL_13;
  }

  self->_isClusterLearningInProgress = 1;
  options2 = [(RTTripClusterManager *)self options];
  rehydrateRouteLocationsFromWaypoints = [options2 rehydrateRouteLocationsFromWaypoints];

  if (rehydrateRouteLocationsFromWaypoints)
  {
    [(RTTripClusterProcessor *)self->_tripClusterProcessor fillInRouteLocationsForClustersInStore:self->_tripClusterStore tripClusterRouteStore:self->_tripClusterRouteStore tripClusterWaypointStore:self->_tripClusterWaypointStore tripClusterRoadTransitionsStore:self->_tripClusterRouteRoadTransitionsStore minimumTraversalCountForLearnedRoutes:[(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes]];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    *v28 = 138412546;
    *&v28[4] = v15;
    *&v28[12] = 2112;
    *&v28[14] = v16;
    v17 = "%@,%@,Route generation process finished successfully";
    goto LABEL_18;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_20;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v15 = NSStringFromClass(v19);
    v16 = NSStringFromSelector(a2);
    *v28 = 138412546;
    *&v28[4] = v15;
    *&v28[12] = 2112;
    *&v28[14] = v16;
    v17 = "%@,%@,Route generation process disabled by default";
LABEL_18:
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, v17, v28, 0x16u);
  }

LABEL_19:

LABEL_20:
  v20 = [(RTTripClusterManager *)self options:*v28];
  rehydrateRouteLocationsFromWaypoints2 = [v20 rehydrateRouteLocationsFromWaypoints];

  if (rehydrateRouteLocationsFromWaypoints2)
  {
    [(RTTripClusterProcessor *)self->_tripClusterProcessor deleteWaypointsForClustersWithDuplicateWaypoints:self->_tripClusterStore tripClusterWaypointStore:self->_tripClusterWaypointStore tripClusterRouteStore:self->_tripClusterRouteStore tripClusterRouteTransitionsStore:self->_tripClusterRouteRoadTransitionsStore minimumTraversalCountForLearnedRoutes:[(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        *v28 = 138412546;
        *&v28[4] = v24;
        *&v28[12] = 2112;
        *&v28[14] = v25;
        v26 = "%@,%@,Duplicate waypoint cleanup process finished successfully";
LABEL_27:
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, v26, v28, 0x16u);

        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v24 = NSStringFromClass(v27);
      v25 = NSStringFromSelector(a2);
      *v28 = 138412546;
      *&v28[4] = v24;
      *&v28[12] = 2112;
      *&v28[14] = v25;
      v26 = "%@,%@,Duplicate waypoint cleanup process disabled by default";
      goto LABEL_27;
    }

LABEL_28:
  }

  self->_isClusterLearningInProgress = 0;
}

- (void)learnClusters
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isClusterLearningInProgress)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v13 = 138412290;
    v14 = v5;
    v6 = "%@,Cluster learning is already in progress. Skipping new request";
LABEL_14:
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, v6, &v13, 0xCu);

LABEL_15:
    return;
  }

  options = [(RTTripClusterManager *)self options];
  enableClusterProcessing = [options enableClusterProcessing];

  if ((enableClusterProcessing & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v5 = NSStringFromClass(v12);
    v13 = 138412290;
    v14 = v5;
    v6 = "%@,Trip cluster processing is disabled";
    goto LABEL_14;
  }

  self->_isClusterLearningInProgress = 1;
  [(RTTripClusterManager *)self _learnClusters];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Cluster learning is complete", &v13, 0xCu);
    }
  }

  self->_isClusterLearningInProgress = 0;
}

- (BOOL)processTripSegments:(id)segments outLocationsArray:(id *)array
{
  v48 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  if (!array)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v42 = 136315394;
      v43 = "[RTTripClusterManager processTripSegments:outLocationsArray:]";
      v44 = 1024;
      LODWORD(v45) = 297;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outLocationsArray (in %s:%d)", &v42, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      identifier = [segmentsCopy identifier];
      uUIDString = [identifier UUIDString];
      v42 = 138412546;
      v43 = v10;
      v44 = 2112;
      v45 = uUIDString;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,Fetching locations for tripID,%@", &v42, 0x16u);
    }
  }

  if (segmentsCopy)
  {
    identifier2 = [segmentsCopy identifier];
    uUIDString2 = [identifier2 UUIDString];

    if (!uUIDString2 || [uUIDString2 hasPrefix:@"00000000"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        startDate = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(startDate, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = v17;
          v19 = @"Unknown";
          if (uUIDString2)
          {
            v19 = uUIDString2;
          }

          v42 = 138412546;
          v43 = v17;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_2304B3000, startDate, OS_LOG_TYPE_INFO, "%@,Skipping invalid or temporary trip segment with ID,%@", &v42, 0x16u);
        }

        v20 = 0;
        goto LABEL_41;
      }

LABEL_21:
      v20 = 0;
LABEL_42:

      goto LABEL_43;
    }

    dateInterval = [segmentsCopy dateInterval];
    startDate = [dateInterval startDate];

    dateInterval2 = [segmentsCopy dateInterval];
    endDate = [dateInterval2 endDate];

    if (startDate && endDate)
    {
      v26 = [objc_alloc(MEMORY[0x277D01190]) initWithTripSegment:segmentsCopy preferredDownsamplingLevel:0 batchSize:0 offset:0];
      tripSegmentManager = [(RTTripClusterManager *)self tripSegmentManager];
      v28 = [tripSegmentManager getLocationsCountForTripSegmentWithOptions:v26];

      v29 = v28 > 0;
      if (v28 > 0)
      {
        tripSegmentManager2 = [(RTTripClusterManager *)self tripSegmentManager];
        *array = [tripSegmentManager2 getLocationsForTripSegment:segmentsCopy withCount:v28];

        v20 = 1;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_39:

          goto LABEL_40;
        }

        v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [*array count];
          v42 = 138412802;
          v43 = v33;
          v44 = 2112;
          v45 = uUIDString2;
          v46 = 1024;
          v47 = v34;
          v35 = "%@,Locations fetched for tripID,%@,count,%d";
          v36 = v31;
          v37 = 28;
LABEL_36:
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, v35, &v42, v37);

          goto LABEL_37;
        }

        goto LABEL_37;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v40 = objc_opt_class();
          v33 = NSStringFromClass(v40);
          v42 = 138412546;
          v43 = v33;
          v44 = 2112;
          v45 = uUIDString2;
          v35 = "%@,Error fetching location count for tripID,%@";
          v36 = v31;
          v37 = 22;
          goto LABEL_36;
        }

LABEL_37:

        v20 = v29;
        goto LABEL_39;
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = 0;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v42 = 138412546;
        v43 = v39;
        v44 = 2112;
        v45 = uUIDString2;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@,Error,missing start or end date for tripID,%@", &v42, 0x16u);
      }
    }

    v20 = 0;
    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    uUIDString2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(uUIDString2, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v42 = 138412290;
      v43 = v22;
      _os_log_impl(&dword_2304B3000, uUIDString2, OS_LOG_TYPE_INFO, "%@,Error,null trip segment provided", &v42, 0xCu);
    }

    goto LABEL_21;
  }

  v20 = 0;
LABEL_43:

  return v20;
}

- (BOOL)areOriginAndDestinationTooClose:(id)close
{
  v61 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v4 = objc_alloc_init(RTDistanceCalculator);
  [closeCopy originLatitude];
  v6 = v5;
  [closeCopy originLongitude];
  v44 = CLLocationCoordinate2DMake(v6, v7);
  [closeCopy destinationLatitude];
  v9 = v8;
  [closeCopy destinationLongitude];
  v43 = CLLocationCoordinate2DMake(v9, v10);
  v42 = 0;
  [(RTDistanceCalculator *)v4 distanceFromLocationCoordinate:&v44 toLocationCoordinate:&v43 error:&v42];
  v12 = v11;
  v13 = v42;
  v14 = v13;
  v16 = v12 < 250.0 && v13 == 0;
  v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        identifier = [closeCopy identifier];
        uUIDString = [identifier UUIDString];
        [closeCopy originLatitude];
        v24 = v23;
        [closeCopy originLongitude];
        v26 = v25;
        [closeCopy destinationLatitude];
        v28 = v27;
        [closeCopy destinationLongitude];
        *buf = 138413827;
        v46 = v20;
        v47 = 2112;
        v48 = uUIDString;
        v49 = 2053;
        v50 = v24;
        v51 = 2053;
        v52 = v26;
        v53 = 2053;
        v54 = v28;
        v55 = 2053;
        v56 = v29;
        v57 = 2048;
        v58 = v12;
        v30 = "%@,tripID,%@,skipped as origin,%{sensitive}.7lf,%{sensitive}.7lf,and destination,%{sensitive}.7lf,%{sensitive}.7lf, are too close to each other,distance,%.2lf";
        v31 = v18;
        v32 = 72;
LABEL_14:
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v20 = NSStringFromClass(v33);
      identifier = [closeCopy identifier];
      uUIDString = [identifier UUIDString];
      [closeCopy originLatitude];
      v35 = v34;
      [closeCopy originLongitude];
      v37 = v36;
      [closeCopy destinationLatitude];
      v39 = v38;
      [closeCopy destinationLongitude];
      *buf = 138414083;
      v46 = v20;
      v47 = 2112;
      v48 = uUIDString;
      v49 = 2053;
      v50 = v35;
      v51 = 2053;
      v52 = v37;
      v53 = 2053;
      v54 = v39;
      v55 = 2053;
      v56 = v40;
      v57 = 2048;
      v58 = v12;
      v59 = 2048;
      v60 = 0x406F400000000000;
      v30 = "%@,tripID,%@,processing as origin,%{sensitive}.7lf,%{sensitive}.7lf,and destination,%{sensitive}.7lf,%{sensitive}.7lf,distance,%.2lf,is over threshold,%.1lf";
      v31 = v18;
      v32 = 82;
      goto LABEL_14;
    }

LABEL_15:
  }

  return v16;
}

- (void)outputTripSegmentsInDebugLogLine:(id)line
{
  v64 = *MEMORY[0x277D85DE8];
  lineCopy = line;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [lineCopy countByEnumeratingWithState:&v35 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v7 = MEMORY[0x277D86220];
    v28 = *v36;
    v29 = lineCopy;
    do
    {
      v8 = 0;
      v30 = v5;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(lineCopy);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            identifier = [v9 identifier];
            uUIDString = [identifier UUIDString];
            modeOfTransportation = [v9 modeOfTransportation];
            isConsumedByClustering = [v9 isConsumedByClustering];
            tripSegmentSequence = [v9 tripSegmentSequence];
            tripSegmentSequenceMax = [v9 tripSegmentSequenceMax];
            dateInterval = [v9 dateInterval];
            startDate = [dateInterval startDate];
            dateInterval2 = [v9 dateInterval];
            endDate = [dateInterval2 endDate];
            [v9 originLatitude];
            v20 = v19;
            [v9 originLongitude];
            v22 = v21;
            [v9 destinationLatitude];
            v24 = v23;
            [v9 destinationLongitude];
            *buf = 138415107;
            v25 = v12;
            v40 = v12;
            v41 = 2112;
            v42 = uUIDString;
            v26 = uUIDString;
            v43 = 2048;
            v44 = modeOfTransportation;
            v45 = 2048;
            v46 = isConsumedByClustering;
            v7 = MEMORY[0x277D86220];
            v47 = 1024;
            v48 = tripSegmentSequence;
            v49 = 1024;
            v50 = tripSegmentSequenceMax;
            v51 = 2112;
            v52 = startDate;
            v53 = 2112;
            v54 = endDate;
            v55 = 2053;
            v56 = v20;
            v57 = 2053;
            v58 = v22;
            v59 = 2053;
            v60 = v24;
            v61 = 2053;
            v62 = v27;
            _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Unprocessed tripID,%@,mode,%lu,isConsumed,%lu,sequence,%d/%d,startDate,%@,endDate,%@,startLL,%{sensitive}.7lf,%{sensitive}.7lf,endLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x72u);

            v5 = v30;
            v6 = v28;

            lineCopy = v29;
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [lineCopy countByEnumeratingWithState:&v35 objects:v63 count:16];
    }

    while (v5);
  }
}

- (void)groupTripSegments:(id)segments inOriginDestPair:(id *)pair
{
  v63 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = segments;
  v5 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = MEMORY[0x277D86220];
    v9 = *v48;
    *&v6 = 138412802;
    v33 = v6;
    v40 = *v48;
    do
    {
      v10 = 0;
      v41 = v7;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        identifier = [v11 identifier];
        uUIDString = [identifier UUIDString];

        if (v11 && (-[__CFString hasPrefix:](uUIDString, "hasPrefix:", @"00000000") & 1) == 0 && ([v11 isConsumedByClustering] & 1) == 0 && objc_msgSend(v11, "tripSegmentSequence") > 0)
        {
          if (![(RTTripClusterManager *)self areOriginAndDestinationTooClose:v11])
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v14 = *pair;
            v23 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v44;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v44 != v25)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v27 = *(*(&v43 + 1) + 8 * i);
                  firstObject = [v27 firstObject];
                  if ([(RTTripClusterManager *)self areTripSegmentsSpatiallyAligned:firstObject withTrip:v11])
                  {
                    v8 = MEMORY[0x277D86220];
                    v7 = v41;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      v38 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                      {
                        v29 = objc_opt_class();
                        v37 = NSStringFromClass(v29);
                        identifier2 = [firstObject identifier];
                        uUIDString2 = [identifier2 UUIDString];
                        identifier3 = [v11 identifier];
                        uUIDString3 = [identifier3 UUIDString];
                        *buf = v33;
                        v53 = v37;
                        v54 = 2112;
                        v55 = uUIDString2;
                        v56 = 2112;
                        v57 = uUIDString3;
                        v31 = uUIDString3;
                        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@,Representative tripID,%@,and tripID,%@,are spatially aligned", buf, 0x20u);
                      }
                    }

                    [v27 addObject:v11];

                    v9 = v40;
                    goto LABEL_21;
                  }
                }

                v24 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v14 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
            [*pair addObject:v14];
            v8 = MEMORY[0x277D86220];
            v9 = v40;
            v7 = v41;
            goto LABEL_21;
          }

          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }

          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = 138412290;
          v53 = v16;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Trip skipped as origin and destination coordinate are too close to each other", buf, 0xCu);
          goto LABEL_20;
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v16 = NSStringFromClass(v17);
          if (uUIDString)
          {
            v18 = uUIDString;
          }

          else
          {
            v18 = @"Unknown";
          }

          isConsumedByClustering = [v11 isConsumedByClustering];
          tripSegmentSequence = [v11 tripSegmentSequence];
          dateInterval = [v11 dateInterval];
          startDate = [dateInterval startDate];
          *buf = 138413314;
          v53 = v16;
          v54 = 2112;
          v55 = v18;
          v8 = MEMORY[0x277D86220];
          v56 = 2048;
          v57 = isConsumedByClustering;
          v58 = 1024;
          v59 = tripSegmentSequence;
          v9 = v40;
          v7 = v41;
          v60 = 2112;
          v61 = startDate;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@,Skipping tripID,%@,isTripConsumedByClustering,%lu,tripSequence,%d,tripDate,%@", buf, 0x30u);

LABEL_20:
        }

LABEL_21:

LABEL_22:
        ++v10;
      }

      while (v10 != v7);
      v32 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      v7 = v32;
    }

    while (v32);
  }
}

- (void)_groupTripSegmentsByCommuteID:(id)d tripSegmentByCommuteID:(id)iD
{
  v68 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v9;
      v64 = 2112;
      v65 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@:%@", buf, 0x16u);
    }
  }

  if ([dCopy count])
  {
    v11 = 0;
    if ([dCopy count])
    {
      v12 = 0;
      v13 = MEMORY[0x277D86220];
      v14 = RTLogFacilityTripSegment;
      v52 = 138412802;
      v54 = a2;
      do
      {
        v15 = [dCopy objectAtIndexedSubscript:{v12, v52}];
        tripCommuteID = [v15 tripCommuteID];

        if (!tripCommuteID)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v17 = _rt_log_facility_get_os_log(v14);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              v20 = NSStringFromSelector(a2);
              [dCopy objectAtIndexedSubscript:v12];
              v22 = v21 = dCopy;
              [v22 identifier];
              v23 = v14;
              v24 = v13;
              v26 = v25 = v11;
              *buf = v52;
              v63 = v19;
              v64 = 2112;
              v65 = v20;
              v66 = 2112;
              v67 = v26;
              _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@:%@,Skipping tripID,%@,with nil commuteID", buf, 0x20u);

              v11 = v25;
              v13 = v24;
              v14 = v23;

              dCopy = v21;
              a2 = v54;
            }
          }

          if (v11)
          {
            [v11 addIndex:v12];
          }

          else
          {
            v11 = [MEMORY[0x277CCAB58] indexSetWithIndex:v12];
          }
        }

        ++v12;
      }

      while (v12 < [dCopy count]);
      if (v11)
      {
        [dCopy removeObjectsAtIndexes:v11];
      }
    }

    if ([dCopy count])
    {
      v53 = v11;
      [dCopy sortUsingComparator:&__block_literal_global_55];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = dCopy;
      v27 = dCopy;
      v28 = [v27 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v58;
        v31 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v58 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v57 + 1) + 8 * i);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                tripCommuteID2 = [v33 tripCommuteID];
                identifier = [v33 identifier];
                tripSegmentSequence = [v33 tripSegmentSequence];
                *buf = 138412802;
                v63 = tripCommuteID2;
                v64 = 2112;
                v65 = identifier;
                v66 = 1024;
                LODWORD(v67) = tripSegmentSequence;
                _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "commuteID,%@,tripID,%@,sequence,%d", buf, 0x1Cu);
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v29);
      }

      array = [MEMORY[0x277CBEB18] array];
      v39 = [v27 objectAtIndexedSubscript:0];
      [array addObject:v39];

      if ([v27 count] >= 2)
      {
        v40 = 1;
        do
        {
          v41 = [v27 objectAtIndexedSubscript:v40];
          tripCommuteID3 = [v41 tripCommuteID];
          lastObject = [array lastObject];
          tripCommuteID4 = [lastObject tripCommuteID];
          v45 = [tripCommuteID3 isEqual:tripCommuteID4];

          if ((v45 & 1) == 0)
          {
            [iDCopy addObject:array];
            array2 = [MEMORY[0x277CBEB18] array];

            array = array2;
          }

          v47 = [v27 objectAtIndexedSubscript:v40];
          [array addObject:v47];

          ++v40;
        }

        while (v40 < [v27 count]);
      }

      [iDCopy addObject:array];

      dCopy = v55;
      v11 = v53;
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      NSStringFromSelector(a2);
      v51 = v50 = v11;
      *buf = 138412546;
      v63 = v49;
      v64 = 2112;
      v65 = v51;
      _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@:%@ nil odTripSegments", buf, 0x16u);

      v11 = v50;
    }
  }

LABEL_38:
}

uint64_t __77__RTTripClusterManager__groupTripSegmentsByCommuteID_tripSegmentByCommuteID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 tripCommuteID];
  v6 = [v4 tripCommuteID];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_processAllTripSegmentsGroupedByOD:(id)d inCommuteGroups:(id)groups
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  groupsCopy = groups;
  v8 = groupsCopy;
  if (dCopy)
  {
    if (groupsCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "[RTTripClusterManager _processAllTripSegmentsGroupedByOD:inCommuteGroups:]";
    v64 = 1024;
    LODWORD(v65) = 496;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: odGroups (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v63 = "[RTTripClusterManager _processAllTripSegmentsGroupedByOD:inCommuteGroups:]";
      v64 = 1024;
      LODWORD(v65) = 497;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegmentByCommuteID (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v13;
      v64 = 2112;
      v65 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@:%@", buf, 0x16u);
    }
  }

  if ([dCopy count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = dCopy;
    v40 = [v15 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v40)
    {
      v37 = v8;
      v35 = dCopy;
      v16 = 0;
      v39 = *v56;
      v17 = MEMORY[0x277D86220];
      obj = v15;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v56 != v39)
          {
            v20 = v18;
            objc_enumerationMutation(obj);
            v18 = v20;
          }

          v42 = v18;
          v16 = *(*(&v55 + 1) + 8 * v18);

          if ([v16 count])
          {
            v41 = v16;
            [(RTTripClusterManager *)self _groupTripSegmentsByCommuteID:v16 tripSegmentByCommuteID:v37];
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v43 = v37;
            v45 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (v45)
            {
              v44 = *v52;
              do
              {
                v21 = 0;
                do
                {
                  if (*v52 != v44)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v46 = v21;
                  v22 = *(*(&v51 + 1) + 8 * v21);
                  [v22 sortUsingComparator:{&__block_literal_global_237, v35}];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "Sorted by CommuteID, seq number, one TripSegment Array - print start -", buf, 2u);
                    }
                  }

                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v24 = v22;
                  v25 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = *v48;
                    do
                    {
                      for (i = 0; i != v26; ++i)
                      {
                        if (*v48 != v27)
                        {
                          objc_enumerationMutation(v24);
                        }

                        v29 = *(*(&v47 + 1) + 8 * i);
                        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                        {
                          v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412290;
                            v63 = v29;
                            _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                          }
                        }
                      }

                      v26 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
                    }

                    while (v26);
                  }

                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "Sorted by CommuteID, seq number, one TripSegment Array - print end -", buf, 2u);
                    }
                  }

                  v21 = v46 + 1;
                }

                while (v46 + 1 != v45);
                v45 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
              }

              while (v45);
            }

            v16 = v41;
          }

          v18 = v42 + 1;
          v19 = v16;
        }

        while (v42 + 1 != v40);
        v15 = obj;
        v40 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v40);

      dCopy = v35;
      v8 = v37;
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_52;
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v33;
      v64 = 2112;
      v65 = v34;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@:%@,Empty OD group", buf, 0x16u);
    }
  }

LABEL_52:
}

uint64_t __75__RTTripClusterManager__processAllTripSegmentsGroupedByOD_inCommuteGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 tripSegmentSequence];
  if (v6 >= [v5 tripSegmentSequence])
  {
    v8 = [v4 tripSegmentSequence];
    v7 = v8 > [v5 tripSegmentSequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)computeCloudSyncMetric
{
  v64[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(RTLearnedRouteCloudKitSyncStatisticsMetrics);
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D01368]) initWithbatchSize:3000];
    v7 = [(RTTripClusterStore *)self->_tripClusterStore getTripClustersWithOptions:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 count];
    }

    else
    {
      v9 = 0;
    }

    [(RTLearnedRouteCloudKitSyncStatisticsMetrics *)v5 setNumEntriesTripClusterMO:v9];
    v13 = objc_alloc_init(MEMORY[0x277D01388]);
    tripClusterRecencyStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
    v15 = [tripClusterRecencyStore getTripClusterRecencyWithOptions:v13];

    aSelector = a2;
    v55 = v15;
    if (v15)
    {
      v16 = [v15 count];
    }

    else
    {
      v16 = 0;
    }

    [(RTLearnedRouteCloudKitSyncStatisticsMetrics *)v5 setNumEntriesTripClusterRecencyMO:v16];
    v17 = dispatch_semaphore_create(0);
    v18 = objc_alloc_init(MEMORY[0x277D013B8]);
    tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterScheduleStore];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __46__RTTripClusterManager_computeCloudSyncMetric__block_invoke;
    v56[3] = &unk_2788C99C0;
    v53 = v5;
    v57 = v53;
    v20 = v17;
    v58 = v20;
    v54 = v18;
    [tripClusterScheduleStore fetchTripClusterScheduleWithOptions:v18 handler:v56];

    v21 = v20;
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v21, v23))
    {
      v48 = v13;
      v49 = v6;
      v50 = v4;
      v51 = v8;
      v47 = [MEMORY[0x277CBEAA8] now];
      [v47 timeIntervalSinceDate:v22];
      v25 = v24;
      v26 = objc_opt_new();
      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v29 = [callStackSymbols filteredArrayUsingPredicate:v27];
      firstObject = [v29 firstObject];

      [v26 submitToCoreAnalytics:firstObject type:1 duration:v25];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277D01448];
      v64[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v64 count:1];
      v35 = [v32 errorWithDomain:v33 code:15 userInfo:v34];

      if (v35)
      {
        v36 = v35;
      }

      v6 = v49;
      v4 = v50;
      v8 = v51;
      v13 = v48;
    }

    else
    {
      v35 = 0;
    }

    v37 = v35;
    if (v37)
    {
      v38 = v37;
      v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        NSStringFromClass(v42);
        v43 = v52 = v8;
        NSStringFromSelector(aSelector);
        v45 = v44 = v13;
        *buf = 138412802;
        *&buf[4] = v43;
        v60 = 2112;
        v61 = v45;
        v62 = 2112;
        v63 = v38;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@:%@,fetchTripClusterSchedule,semaError,%@", buf, 0x20u);

        v13 = v44;
        v8 = v52;
      }
    }

    defaultsManager = [(RTTripClusterManager *)self defaultsManager];
    v41 = [RTClusterLearnedRouteMetrics sharedInstance:defaultsManager];

    if (v41)
    {
      [v41 setCloudKitSyncMetrics:v53];
    }

LABEL_25:
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v11;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@:%@,invalid cloud sync instance", buf, 0x16u);
    }

    goto LABEL_25;
  }

LABEL_26:

  objc_autoreleasePoolPop(v4);
}

intptr_t __46__RTTripClusterManager_computeCloudSyncMetric__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(a1 + 32) setNumEntriesTripClusterScheduleMO:{objc_msgSend(a2, "count")}];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)_learnClusters
{
  v68 = *MEMORY[0x277D85DE8];
  shouldDeferClusterProcessing = [(RTTripClusterManager *)self shouldDeferClusterProcessing];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!shouldDeferClusterProcessing)
  {
    if (v5)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412290;
        v62 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Starting cluster learning", buf, 0xCu);
      }
    }

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v14 = objc_alloc(MEMORY[0x277D01328]);
    v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:distantPast endDate:distantFuture];
    v16 = [v14 initWithAscending:1 dateInterval:v15 limit:0];

    tripSegmentManager = [(RTTripClusterManager *)self tripSegmentManager];
    v18 = [tripSegmentManager getTripSegmentsWithOptions:v16];

    v19 = [v18 count];
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!v19)
    {
      if (v20)
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v29 = objc_opt_class();
          v27 = NSStringFromClass(v29);
          *buf = 138412290;
          v62 = v27;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@,Trip Segments not available for clustering", buf, 0xCu);
          goto LABEL_21;
        }

LABEL_48:
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v20)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v18 count];
        *buf = 138412546;
        v62 = v23;
        v63 = 2048;
        *v64 = v24;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@,loaded trip segments,%lu", buf, 0x16u);
      }
    }

    [(RTTripClusterManager *)self outputTripSegmentsInDebugLogLine:v18];
    if ([(RTTripClusterManager *)self shouldDeferClusterProcessing])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = NSStringFromSelector(a2);
          *buf = 138412546;
          v62 = v27;
          v63 = 2112;
          *v64 = v28;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@,%@,Defer cluster learning before generating origin-destination Groups.", buf, 0x16u);

LABEL_21:
          goto LABEL_48;
        }

        goto LABEL_48;
      }

      goto LABEL_49;
    }

    array = [MEMORY[0x277CBEB18] array];
    v60 = array;
    [(RTTripClusterManager *)self groupTripSegments:v18 inOriginDestPair:&v60];
    v25 = v60;

    if ([(RTTripClusterManager *)self shouldDeferClusterProcessing])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_47:
        v18 = 0;
        goto LABEL_48;
      }

      v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        *buf = 138412546;
        v62 = v33;
        v63 = 2112;
        *v64 = v34;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@,%@,Defer cluster learning before generating commuteGroups.", buf, 0x16u);
      }
    }

    else
    {
      v55 = distantFuture;
      array2 = [MEMORY[0x277CBEB18] array];
      [(RTTripClusterManager *)self _processAllTripSegmentsGroupedByOD:v25 inCommuteGroups:array2];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v31 = array2;
      v36 = [v31 countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = *v57;
        v54 = v25;
        while (2)
        {
          v40 = 0;
          v41 = v38;
          v53 = v38 + v37;
          do
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(v31);
            }

            v42 = *(*(&v56 + 1) + 8 * v40);
            if ([(RTTripClusterManager *)self shouldDeferClusterProcessing])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v43 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                v25 = v54;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = objc_opt_class();
                  v45 = NSStringFromClass(v44);
                  v46 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v62 = v45;
                  v63 = 2112;
                  *v64 = v46;
                  _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@,%@,Defer cluster learning before processing a commute.", buf, 0x16u);
                }

                v38 = v41;
              }

              else
              {
                v38 = v41;
                v25 = v54;
              }

              goto LABEL_41;
            }

            [(RTTripClusterManager *)self validateAndProcessCommute:v42];
            ++v41;
            ++v40;
          }

          while (v37 != v40);
          v37 = [v31 countByEnumeratingWithState:&v56 objects:v67 count:16];
          v25 = v54;
          v38 = v53;
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v38 = 0;
      }

LABEL_41:

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v47 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        distantFuture = v55;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = v38;
          v51 = [v31 count];
          shouldDeferClusterProcessing2 = [(RTTripClusterManager *)self shouldDeferClusterProcessing];
          *buf = 138413058;
          v62 = v49;
          v63 = 1024;
          *v64 = v50;
          *&v64[4] = 1024;
          *&v64[6] = v51;
          v65 = 1024;
          v66 = shouldDeferClusterProcessing2;
          _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@,trip segments processed,%d/%d,exitByDefer,%d", buf, 0x1Eu);
        }
      }

      else
      {
        distantFuture = v55;
      }
    }

    goto LABEL_47;
  }

  if (!v5)
  {
    return;
  }

  distantPast = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(distantPast, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v62 = v8;
    v63 = 2112;
    *v64 = v9;
    _os_log_impl(&dword_2304B3000, distantPast, OS_LOG_TYPE_INFO, "%@,%@,Defer cluster learning.", buf, 0x16u);
  }

LABEL_50:
}

- (BOOL)areTripSegmentsSpatiallyAligned:(id)aligned withTrip:(id)trip
{
  alignedCopy = aligned;
  tripCopy = trip;
  [alignedCopy originLatitude];
  v8 = v7;
  [tripCopy originLatitude];
  if (vabdd_f64(v8, v9) <= 0.0000001 && ([alignedCopy originLongitude], v11 = v10, objc_msgSend(tripCopy, "originLongitude"), vabdd_f64(v11, v12) <= 0.0000001) && (objc_msgSend(alignedCopy, "destinationLatitude"), v14 = v13, objc_msgSend(tripCopy, "destinationLatitude"), vabdd_f64(v14, v15) <= 0.0000001))
  {
    [alignedCopy destinationLongitude];
    v19 = v18;
    [tripCopy destinationLongitude];
    v16 = vabdd_f64(v19, v20) <= 0.0000001;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_addTripSegmentToCompoundRoute:(id)route outLocationsArray:(id)array maxDistanceAllowedBetweenDriveSegments:(double)segments tripSegmentRoadTransitionsStore:(id)store outRoadTransitionArray:(id)transitionArray compoundTripSegmentID:(id)d compoundTripSegmentStartDate:(id)date compoundRouteMetric:(id)self0
{
  v172 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  arrayCopy = array;
  storeCopy = store;
  transitionArrayCopy = transitionArray;
  dCopy = d;
  dateCopy = date;
  metricCopy = metric;
  if (routeCopy)
  {
    if (arrayCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v163 = "[RTTripClusterManager _addTripSegmentToCompoundRoute:outLocationsArray:maxDistanceAllowedBetweenDriveSegments:tripSegmentRoadTransitionsStore:outRoadTransitionArray:compoundTripSegmentID:compoundTripSegmentStartDate:compoundRouteMetric:]";
      v164 = 1024;
      LODWORD(v165) = 673;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegment (in %s:%d)", buf, 0x12u);
    }

    if (arrayCopy)
    {
LABEL_3:
      if (storeCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v163 = "[RTTripClusterManager _addTripSegmentToCompoundRoute:outLocationsArray:maxDistanceAllowedBetweenDriveSegments:tripSegmentRoadTransitionsStore:outRoadTransitionArray:compoundTripSegmentID:compoundTripSegmentStartDate:compoundRouteMetric:]";
    v164 = 1024;
    LODWORD(v165) = 674;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outLocationsArray (in %s:%d)", buf, 0x12u);
  }

  if (storeCopy)
  {
LABEL_4:
    if (transitionArrayCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v163 = "[RTTripClusterManager _addTripSegmentToCompoundRoute:outLocationsArray:maxDistanceAllowedBetweenDriveSegments:tripSegmentRoadTransitionsStore:outRoadTransitionArray:compoundTripSegmentID:compoundTripSegmentStartDate:compoundRouteMetric:]";
    v164 = 1024;
    LODWORD(v165) = 675;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegmentRoadTransitionsStore (in %s:%d)", buf, 0x12u);
  }

  if (!transitionArrayCopy)
  {
LABEL_15:
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v163 = "[RTTripClusterManager _addTripSegmentToCompoundRoute:outLocationsArray:maxDistanceAllowedBetweenDriveSegments:tripSegmentRoadTransitionsStore:outRoadTransitionArray:compoundTripSegmentID:compoundTripSegmentStartDate:compoundRouteMetric:]";
      v164 = 1024;
      LODWORD(v165) = 676;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outRoadTransitionArray (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      identifier = [routeCopy identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138412290;
      v163 = uUIDString;
      _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "Route compounding,tripID,%@", buf, 0xCu);
    }
  }

  identifier2 = [routeCopy identifier];
  [identifier2 UUIDString];
  v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v28 != 0.0 && ![*&v28 hasPrefix:@"00000000"])
  {
    dateInterval = [routeCopy dateInterval];
    startDate = [dateInterval startDate];

    dateInterval2 = [routeCopy dateInterval];
    endDate = [dateInterval2 endDate];

    if (!startDate || !endDate)
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v79 = objc_opt_class();
        NSStringFromClass(v79);
        v81 = v80 = v51;
        *buf = 138412546;
        v163 = v81;
        v164 = 2112;
        v165 = v28;
        _os_log_error_impl(&dword_2304B3000, v80, OS_LOG_TYPE_ERROR, "%@,Route compounding not possible,missing start or end date for tripID,%@", buf, 0x16u);

        v51 = v80;
      }

      v34 = 0;
      goto LABEL_57;
    }

    v146 = endDate;
    v144 = startDate;
    v38 = [objc_alloc(MEMORY[0x277D01190]) initWithTripSegment:routeCopy preferredDownsamplingLevel:0 batchSize:0 offset:0];
    tripSegmentManager = [(RTTripClusterManager *)self tripSegmentManager];
    v145 = v38;
    v40 = [tripSegmentManager getLocationsCountForTripSegmentWithOptions:v38];

    if (v40 <= 0)
    {
      v147 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        *buf = 138412546;
        v163 = v85;
        v164 = 2112;
        v165 = v28;
        _os_log_error_impl(&dword_2304B3000, v147, OS_LOG_TYPE_ERROR, "%@,Route compounding not possible,Error fetching location count for tripID,%@", buf, 0x16u);
      }

      v34 = 0;
      startDate = v144;
    }

    else
    {
      tripSegmentManager2 = [(RTTripClusterManager *)self tripSegmentManager];
      v42 = [tripSegmentManager2 getLocationsForTripSegment:routeCopy withCount:v40];

      v147 = v42;
      if (v42 && [v42 count])
      {
        v143 = metricCopy;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v86 = objc_opt_class();
            v87 = NSStringFromClass(v86);
            v88 = [v147 count];
            *buf = 138412802;
            v163 = v87;
            v164 = 2112;
            v165 = v28;
            v166 = 2048;
            *v167 = v88;
            _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@,Route compounding,locations fetched for tripID,%@,count,%lu", buf, 0x20u);
          }

          v42 = v147;
        }

        if ([arrayCopy count])
        {
          v140 = v28;
          [arrayCopy lastObject];
          v45 = v44 = v42;
          [v45 latitude];
          lastObject = [arrayCopy lastObject];
          [lastObject longitude];
          firstObject = [v44 firstObject];
          [firstObject latitude];
          firstObject2 = [v44 firstObject];
          [firstObject2 longitude];
          RTCommonCalculateDistanceHighPrecision();
          v50 = v49;

          v51 = v145;
          endDate = v146;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v120 = objc_opt_class();
              lastObject4 = NSStringFromClass(v120);
              [arrayCopy lastObject];
              v121 = v153 = transitionArrayCopy;
              [v121 latitude];
              v123 = v122;
              lastObject2 = [arrayCopy lastObject];
              [lastObject2 longitude];
              v126 = v125;
              firstObject3 = [v147 firstObject];
              [firstObject3 latitude];
              v129 = v128;
              firstObject4 = [v147 firstObject];
              [firstObject4 longitude];
              *buf = 138413827;
              v163 = lastObject4;
              v164 = 2053;
              v165 = v123;
              v166 = 2053;
              *v167 = v126;
              *&v167[8] = 2053;
              *&v167[10] = v129;
              *&v167[18] = 2053;
              *&v167[20] = v131;
              v168 = 2048;
              v169 = v50;
              v170 = 2048;
              segmentsCopy = segments;
              _os_log_debug_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEBUG, "%@,Route compounding,last loc of previous drive tripSegment,%{sensitive}.7lf,%{sensitive}.7lf,first loc of current drive tripSegment,%{sensitive}.7lf,%{sensitive}.7lf,loc distance,%.7lf,allowed,%.7f", buf, 0x48u);

              v51 = v145;
              endDate = v146;

              transitionArrayCopy = v153;
            }
          }

          v28 = v140;
          if (v50 > segments)
          {
            metricCopy = v143;
            startDate = v144;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v76 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                v77 = objc_opt_class();
                v78 = NSStringFromClass(v77);
                *buf = 138412802;
                v163 = v78;
                v164 = 2048;
                v165 = v50;
                v166 = 2048;
                *v167 = segments;
                _os_log_impl(&dword_2304B3000, v76, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,loc distance,%.7lf,allowed,%.7f", buf, 0x20u);

                startDate = v144;
              }

              v51 = v145;
              endDate = v146;
            }

            if (v143)
            {
              [v143 setCompoundRoutesNumFailureTripSegments:{objc_msgSend(v143, "compoundRoutesNumFailureTripSegments") + 1}];
              [v143 setCompoundRoutesNumFailureDrivesTooFar:{objc_msgSend(v143, "compoundRoutesNumFailureDrivesTooFar") + 1}];
            }

            v34 = 0;
            goto LABEL_56;
          }

          [arrayCopy addObjectsFromArray:v147];
          metricCopy = v143;
          if (v143)
          {
            [v143 compoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg];
            v54 = v50 + v53;
            *&v54 = v54;
            [v143 setCompoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg:v54];
            [v143 setCompoundRoutesNumSuccessTripSegments:{objc_msgSend(v143, "compoundRoutesNumSuccessTripSegments") + 1}];
          }
        }

        else
        {
          [arrayCopy addObjectsFromArray:v42];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v59 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v132 = objc_opt_class();
              v133 = NSStringFromClass(v132);
              *&v134 = COERCE_DOUBLE([arrayCopy count]);
              *buf = 138412546;
              v163 = v133;
              v164 = 2048;
              v165 = *&v134;
              _os_log_debug_impl(&dword_2304B3000, v59, OS_LOG_TYPE_DEBUG, "%@,total compound route locations,%lu", buf, 0x16u);
            }
          }
        }

        v152 = transitionArrayCopy;
        tripSegmentRoadTransitionsStore = self->_tripSegmentRoadTransitionsStore;
        identifier3 = [routeCopy identifier];
        v62 = [(RTTripClusterRoadTransitionsStore *)tripSegmentRoadTransitionsStore getRoadTransitionsWithID:identifier3];

        if (v62 && [v62 count])
        {
          v160 = v62;
          [RTTripClusterProcessor sortRoadTransitionStoreBySequenceNumberAscending:&v160];
          v63 = v160;

          v64 = [v63 objectAtIndexedSubscript:0];
          roadSequenceNumber = [v64 roadSequenceNumber];

          startDate = v144;
          if ([v152 count])
          {
            lastObject3 = [v152 lastObject];
            roadSequenceNumber = [lastObject3 roadSequenceNumber] + 1;
          }

          v51 = v145;
          endDate = v146;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v67 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v141 = v28;
              v136 = storeCopy;
              v68 = [v63 count];
              v138 = routeCopy;
              [routeCopy identifier];
              v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v70 = [v152 count];
              if (v70)
              {
                lastObject4 = [v152 lastObject];
                clRoadIDFrom = [lastObject4 clRoadIDFrom];
              }

              else
              {
                clRoadIDFrom = 0;
              }

              v89 = [v63 objectAtIndexedSubscript:0];
              clRoadIDFrom2 = [v89 clRoadIDFrom];
              *buf = 134219010;
              v163 = v68;
              v164 = 2112;
              v165 = v69;
              v166 = 1024;
              *v167 = roadSequenceNumber;
              *&v167[4] = 2048;
              *&v167[6] = clRoadIDFrom;
              *&v167[14] = 2048;
              *&v167[16] = clRoadIDFrom2;
              _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_INFO, "Route compounding,tripSegmentRoadTransitions count,%lu for tripSegmentID,%@,startSeqNum,%d,prevFromRoad,%llu,nextFromRoad,%llu", buf, 0x30u);

              if (v70)
              {
              }

              storeCopy = v136;
              routeCopy = v138;
              v28 = v141;
              startDate = v144;
              v51 = v145;
              endDate = v146;
            }
          }

          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v91 = v63;
          v92 = [v91 countByEnumeratingWithState:&v156 objects:v161 count:16];
          if (v92)
          {
            v93 = v92;
            v139 = routeCopy;
            v142 = v28;
            v135 = arrayCopy;
            v137 = storeCopy;
            loga = v91;
            v151 = *v157;
            do
            {
              for (i = 0; i != v93; ++i)
              {
                if (*v157 != v151)
                {
                  objc_enumerationMutation(loga);
                }

                v95 = *(*(&v156 + 1) + 8 * i);
                v96 = [RTTripClusterRoadTransitions alloc];
                clRoadIDFrom3 = [v95 clRoadIDFrom];
                clRoadIDTo = [v95 clRoadIDTo];
                [v95 fromStartLatitude];
                v100 = v99;
                [v95 fromStartLongitude];
                v102 = v101;
                [v95 fromEndLatitude];
                v104 = v103;
                [v95 fromEndLongitude];
                v106 = v105;
                [v95 toStartLatitude];
                v108 = v107;
                [v95 toStartLongitude];
                v110 = v109;
                [v95 toEndLatitude];
                v112 = v111;
                [v95 toEndLongitude];
                v114 = v113;
                v115 = [v95 count];
                startRoadCount = [v95 startRoadCount];
                endRoadCount = [v95 endRoadCount];
                [v95 familiarityMetric];
                v119 = [(RTTripClusterRoadTransitions *)v96 initWithclusterID:dCopy clRoadIDFrom:clRoadIDFrom3 clRoadIDTo:clRoadIDTo fromStartLatitude:v115 fromStartLongitude:dateCopy fromEndLatitude:startRoadCount fromEndLongitude:v100 toStartLatitude:v102 toStartLongitude:v104 toEndLatitude:v106 toEndLongitude:v108 count:v110 startDate:v112 startRoadCount:v114 endRoadCount:__PAIR64__(roadSequenceNumber++ roadSequenceNumber:endRoadCount) familiarityMetric:v118];
                [v152 addObject:v119];
              }

              v93 = [loga countByEnumeratingWithState:&v156 objects:v161 count:16];
            }

            while (v93);
            v34 = 1;
            v75 = loga;
            v62 = loga;
            storeCopy = v137;
            routeCopy = v139;
            arrayCopy = v135;
            v28 = v142;
            metricCopy = v143;
            startDate = v144;
            v51 = v145;
            endDate = v146;
          }

          else
          {
            v34 = 1;
            v62 = v91;
            v75 = v91;
            metricCopy = v143;
          }
        }

        else
        {
          startDate = v144;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v34 = 0;
            v51 = v145;
            endDate = v146;
LABEL_99:

            transitionArrayCopy = v152;
            goto LABEL_56;
          }

          log = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            [routeCopy identifier];
            v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v163 = v73;
            v164 = 2112;
            v165 = v74;
            _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,tripSegmentRoadTransitions nil for tripSegment,%@", buf, 0x16u);

            startDate = v144;
          }

          v34 = 0;
          v51 = v145;
          endDate = v146;
          v75 = log;
        }

        goto LABEL_99;
      }

      v55 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      startDate = v144;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        *buf = 138412546;
        v163 = v83;
        v164 = 2112;
        v165 = v28;
        _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@,Route compounding not possible,No locations for tripSegment,tripID,%@", buf, 0x16u);

        startDate = v144;
      }

      v34 = 0;
    }

    v51 = v145;
LABEL_56:

LABEL_57:
LABEL_58:

    goto LABEL_59;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    startDate = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(startDate, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      [routeCopy identifier];
      v32 = startDate;
      v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v163 = v31;
      v164 = 2112;
      v165 = v33;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,Invalid tripSegment,%@", buf, 0x16u);

      startDate = v32;
    }

    v34 = 0;
    goto LABEL_58;
  }

  v34 = 0;
LABEL_59:

  return v34;
}

- (id)attemptCreatingACompoundRoute:(id)route compoundTripSegmentLocations:(id *)locations numberOfDriveSegments:(unint64_t)segments tripSegmentRoadTransitionsStore:(id)store compoundTripSegmentRoadTransitions:(id *)transitions driveTripDuration:(double *)duration
{
  v140 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  storeCopy = store;
  if (routeCopy)
  {
    if (locations)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v135 = "[RTTripClusterManager attemptCreatingACompoundRoute:compoundTripSegmentLocations:numberOfDriveSegments:tripSegmentRoadTransitionsStore:compoundTripSegmentRoadTransitions:driveTripDuration:]";
      v136 = 1024;
      *v137 = 807;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: commuteTrips (in %s:%d)", buf, 0x12u);
    }

    if (locations)
    {
LABEL_3:
      if (storeCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v135 = "[RTTripClusterManager attemptCreatingACompoundRoute:compoundTripSegmentLocations:numberOfDriveSegments:tripSegmentRoadTransitionsStore:compoundTripSegmentRoadTransitions:driveTripDuration:]";
    v136 = 1024;
    *v137 = 808;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: compoundTripSegmentLocations (in %s:%d)", buf, 0x12u);
  }

  if (storeCopy)
  {
LABEL_4:
    if (transitions)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v135 = "[RTTripClusterManager attemptCreatingACompoundRoute:compoundTripSegmentLocations:numberOfDriveSegments:tripSegmentRoadTransitionsStore:compoundTripSegmentRoadTransitions:driveTripDuration:]";
    v136 = 1024;
    *v137 = 809;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegmentRoadTransitionsStore (in %s:%d)", buf, 0x12u);
  }

  if (transitions)
  {
LABEL_5:
    if (duration)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v135 = "[RTTripClusterManager attemptCreatingACompoundRoute:compoundTripSegmentLocations:numberOfDriveSegments:tripSegmentRoadTransitionsStore:compoundTripSegmentRoadTransitions:driveTripDuration:]";
    v136 = 1024;
    *v137 = 810;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: compoundTripSegmentRoadTransitions (in %s:%d)", buf, 0x12u);
  }

  if (!duration)
  {
LABEL_19:
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v135 = "[RTTripClusterManager attemptCreatingACompoundRoute:compoundTripSegmentLocations:numberOfDriveSegments:tripSegmentRoadTransitionsStore:compoundTripSegmentRoadTransitions:driveTripDuration:]";
      v136 = 1024;
      *v137 = 811;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: driveTripDuration (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_22:
  [(RTTripClusterManager *)self maximumInterTripSegmentDistanceAllowedForCompoundRoute];
  v22 = v21;
  _supportsRouteCompoundingWithoutVisitAggregation = [(RTTripClusterManager *)self _supportsRouteCompoundingWithoutVisitAggregation];
  if (_supportsRouteCompoundingWithoutVisitAggregation)
  {
    if ([routeCopy count])
    {
      v24 = [routeCopy count];
      if (segments <= 4 && v24 < 0xA)
      {
        locationsCopy = locations;
        transitionsCopy = transitions;
        durationCopy = duration;
        v129 = storeCopy;
        v125 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v127 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v126 = objc_opt_new();
        if (![routeCopy count])
        {
          v130 = 0;
          startDate = 0;
          v30 = 0.0;
          v29 = 0.0;
          v27 = 0.0;
LABEL_64:
          v91 = objc_opt_new();
          v92 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v130];
          v93 = objc_alloc(MEMORY[0x277D013D0]);
          v94 = [routeCopy objectAtIndexedSubscript:0];
          [v94 originLatitude];
          v96 = v95;
          v97 = [routeCopy objectAtIndexedSubscript:0];
          [v97 originLongitude];
          v99 = v98;
          v100 = [routeCopy objectAtIndexedSubscript:0];
          [v100 destinationLatitude];
          v102 = v101;
          [routeCopy objectAtIndexedSubscript:0];
          v104 = v103 = startDate;
          [v104 destinationLongitude];
          v105 = v93;
          v106 = v126;
          v90 = [v105 initWithTripSegmentIdentifier:v126 dateInterval:v92 tripDistance:2 tripDistanceUncertainty:0 modeOfTransportation:2 isConsumedByClustering:3 tripSegmentSequence:v29 tripSegmentSequenceMax:sqrt(v30) / v29 originLatitude:v96 originLongitude:v99 destinationLatitude:v102 destinationLongitude:v107 tripCommuteID:v91];

          startDate = v103;
          v36 = v125;
          v108 = v125;
          *locationsCopy = v125;
          v109 = v127;
          *transitionsCopy = v127;
          *durationCopy = v27;

          v110 = v130;
          storeCopy = v129;
          goto LABEL_65;
        }

        startDate = 0;
        v130 = 0;
        v124 = 0;
        v128 = 0;
        v26 = 0;
        v27 = 0.0;
        v28 = MEMORY[0x277D86220];
        v29 = 0.0;
        v30 = 0.0;
        segmentsCopy = segments;
        while (1)
        {
          v31 = [routeCopy objectAtIndexedSubscript:v26];
          dateInterval = [v31 dateInterval];
          if (!dateInterval)
          {
            goto LABEL_31;
          }

          v33 = dateInterval;
          v34 = [routeCopy objectAtIndexedSubscript:v26];
          [v34 tripDistance];
          if (v35 < 0.0)
          {
            break;
          }

          v50 = [routeCopy objectAtIndexedSubscript:v26];
          [v50 tripDistanceUncertainty];
          v52 = v51;

          if (v52 >= 0.0)
          {
            v36 = objc_alloc_init(RTLearnedRouteCompoundRouteMetrics);
            v53 = [routeCopy objectAtIndexedSubscript:v26];
            modeOfTransportation = [v53 modeOfTransportation];

            storeCopy = v129;
            if (modeOfTransportation == 2)
            {
              if (++v124 > segments)
              {

                v110 = v130;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v112 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
                  {
                    v113 = objc_opt_class();
                    v114 = NSStringFromClass(v113);
                    *buf = 138412546;
                    v135 = v114;
                    v136 = 2050;
                    *v137 = v124;
                    _os_log_impl(&dword_2304B3000, v112, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,drive trips count,%{public}lu", buf, 0x16u);
                  }
                }

                if (v36)
                {
                  [(RTLearnedRouteCompoundRouteMetrics *)v36 setCompoundRoutesNumFailureDrivesTooMany:[(RTLearnedRouteCompoundRouteMetrics *)v36 compoundRoutesNumFailureDrivesTooMany]+ 1];
                  [(RTLearnedRouteCompoundRouteMetrics *)v36 setCompoundRoutesNumFailureTripSegments:[(RTLearnedRouteCompoundRouteMetrics *)v36 compoundRoutesNumFailureTripSegments]+ 1];
                }

                goto LABEL_87;
              }

              v55 = [routeCopy objectAtIndexedSubscript:v26];
              dateInterval2 = [v55 dateInterval];
              [dateInterval2 duration];
              v27 = v27 + v57;

              if (v27 > 14400.0)
              {

                v110 = v130;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v115 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
                  {
                    v116 = objc_opt_class();
                    v117 = NSStringFromClass(v116);
                    *buf = 138412546;
                    v135 = v117;
                    v136 = 2050;
                    *v137 = v27;
                    _os_log_impl(&dword_2304B3000, v115, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,drive trips duration,%{public}.2f sec", buf, 0x16u);
                  }
                }

                v106 = v126;
                if (v36)
                {
                  [(RTLearnedRouteCompoundRouteMetrics *)v36 setCompoundRoutesNumFailureDrivesTooLong:[(RTLearnedRouteCompoundRouteMetrics *)v36 compoundRoutesNumFailureDrivesTooLong]+ 1];
                  [(RTLearnedRouteCompoundRouteMetrics *)v36 setCompoundRoutesNumFailureTripSegments:[(RTLearnedRouteCompoundRouteMetrics *)v36 compoundRoutesNumFailureTripSegments]+ 1];
                }

                v90 = 0;
                goto LABEL_65;
              }

              v58 = [routeCopy objectAtIndexedSubscript:v26];
              v59 = [(RTTripClusterManager *)self _addTripSegmentToCompoundRoute:v58 outLocationsArray:v125 maxDistanceAllowedBetweenDriveSegments:v129 tripSegmentRoadTransitionsStore:v127 outRoadTransitionArray:v126 compoundTripSegmentID:startDate compoundTripSegmentStartDate:v22 compoundRouteMetric:v36];

              if (!v59)
              {

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v118 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  v110 = v130;
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
                  {
                    v119 = objc_opt_class();
                    v120 = NSStringFromClass(v119);
                    *buf = 138412290;
                    v135 = v120;
                    _os_log_impl(&dword_2304B3000, v118, OS_LOG_TYPE_INFO, "%@,Route compounding _addTripSegmentToCompoundRoute failed", buf, 0xCu);
                  }

LABEL_87:
                  v90 = 0;
                  v106 = v126;
                  goto LABEL_65;
                }

                v90 = 0;
                v106 = v126;
                v110 = v130;
LABEL_65:

LABEL_66:
                goto LABEL_67;
              }

              if (v36)
              {
                v60 = [v127 count];
                [(RTLearnedRouteCompoundRouteMetrics *)v36 compoundRoutesNumDriveSegmentsCompoundedAvg];
                *&v62 = v61 + v60;
                [(RTLearnedRouteCompoundRouteMetrics *)v36 setCompoundRoutesNumDriveSegmentsCompoundedAvg:v62];
                defaultsManager = [(RTTripClusterManager *)self defaultsManager];
                v64 = [RTClusterLearnedRouteMetrics sharedInstance:defaultsManager];

                if (v64)
                {
                  compoundRoutesArray = [v64 compoundRoutesArray];

                  if (!compoundRoutesArray)
                  {
                    array = [MEMORY[0x277CBEB18] array];
                    [v64 setCompoundRoutesArray:array];
                  }

                  compoundRoutesArray2 = [v64 compoundRoutesArray];
                  [compoundRoutesArray2 addObject:v36];
                }
              }

              v68 = [routeCopy objectAtIndexedSubscript:v26];
              [v68 tripDistance];
              v70 = v69;
              v71 = [routeCopy objectAtIndexedSubscript:v26];
              [v71 tripDistanceUncertainty];
              v73 = v72;
              v74 = [routeCopy objectAtIndexedSubscript:v26];
              [v74 tripDistanceUncertainty];
              v76 = v75;

              v77 = [routeCopy objectAtIndexedSubscript:v26];
              [v77 tripDistance];
              v79 = v78;

              if (!startDate)
              {
                v80 = [routeCopy objectAtIndexedSubscript:v26];
                dateInterval3 = [v80 dateInterval];
                startDate = [dateInterval3 startDate];
              }

              v30 = v30 + v70 * v73 * v76;
              v29 = v29 + v79;
              v82 = [routeCopy objectAtIndexedSubscript:v26];
              dateInterval4 = [v82 dateInterval];
              endDate = [dateInterval4 endDate];

              v128 = 0;
              v130 = endDate;
LABEL_49:
              v28 = MEMORY[0x277D86220];
              goto LABEL_52;
            }

            ++v128;
            v28 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v82 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                *buf = 138412546;
                v135 = v86;
                v136 = 2048;
                *v137 = v128;
                _os_log_debug_impl(&dword_2304B3000, v82, OS_LOG_TYPE_DEBUG, "%@,Route compounding numOfContiguousNonDriveSegments,%lu", buf, 0x16u);

                goto LABEL_49;
              }

LABEL_52:

LABEL_53:
              segments = segmentsCopy;
            }

LABEL_54:

            goto LABEL_55;
          }

LABEL_32:
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v36 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(&v36->super, OS_LOG_TYPE_INFO))
            {
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              v132 = [routeCopy objectAtIndexedSubscript:v26];
              [v132 identifier];
              v40 = p_super = &v36->super;
              [routeCopy objectAtIndexedSubscript:v26];
              v41 = v133 = startDate;
              dateInterval5 = [v41 dateInterval];
              v43 = [routeCopy objectAtIndexedSubscript:v26];
              [v43 tripDistance];
              v45 = v44;
              [routeCopy objectAtIndexedSubscript:v26];
              v46 = routeCopy;
              v48 = v47 = self;
              [v48 tripDistanceUncertainty];
              *buf = 138413314;
              v135 = v38;
              v136 = 2112;
              *v137 = v40;
              *&v137[8] = 2114;
              *&v137[10] = dateInterval5;
              *&v137[18] = 2050;
              *&v137[20] = v45;
              v138 = 2050;
              v139 = v49;
              _os_log_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_INFO, "%@,Route compounding,skipping trip,%@ for compounding,dateInterval,%{public}@,tripDist,%{public}0.2f,distUnc,%{public}0.2f", buf, 0x34u);

              self = v47;
              routeCopy = v46;

              v28 = MEMORY[0x277D86220];
              startDate = v133;

              v36 = p_super;
              goto LABEL_53;
            }

            goto LABEL_54;
          }

LABEL_55:
          if (++v26 >= [routeCopy count])
          {
            goto LABEL_64;
          }
        }

LABEL_31:
        goto LABEL_32;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    startDate = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(startDate, OS_LOG_TYPE_INFO))
    {
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v89 = [routeCopy count];
      *buf = 138413058;
      v135 = v88;
      v136 = 1024;
      *v137 = _supportsRouteCompoundingWithoutVisitAggregation;
      *&v137[4] = 2048;
      *&v137[6] = v89;
      *&v137[14] = 2048;
      *&v137[16] = segments;
      _os_log_impl(&dword_2304B3000, startDate, OS_LOG_TYPE_INFO, "%@,Route compounding not possible,feature allowed?,%d,total trips,%lu,drive trips,%lu", buf, 0x26u);
    }

    v90 = 0;
    goto LABEL_66;
  }

  v90 = 0;
LABEL_67:

  return v90;
}

- (void)validateAndProcessCommute:(id)commute
{
  v249 = *MEMORY[0x277D85DE8];
  commuteCopy = commute;
  if ([commuteCopy count] && objc_msgSend(commuteCopy, "count") < 0xA)
  {
    aSelector = a2;
    v194 = commuteCopy;
    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    obj = commuteCopy;
    v9 = [obj countByEnumeratingWithState:&v227 objects:v248 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v228;
      v12 = MEMORY[0x277D86220];
      selfCopy = self;
      do
      {
        v13 = 0;
        v198 = v10;
        do
        {
          if (*v228 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v227 + 1) + 8 * v13);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v207 = NSStringFromClass(v16);
              identifier = [v14 identifier];
              uUIDString = [identifier UUIDString];
              *&v203 = COERCE_DOUBLE([v14 modeOfTransportation]);
              tripSegmentSequence = [v14 tripSegmentSequence];
              v18 = v11;
              tripSegmentSequenceMax = [v14 tripSegmentSequenceMax];
              dateInterval = [v14 dateInterval];
              startDate = [dateInterval startDate];
              dateInterval2 = [v14 dateInterval];
              endDate = [dateInterval2 endDate];
              [v14 originLatitude];
              v25 = v24;
              [v14 originLongitude];
              v27 = v26;
              [v14 destinationLatitude];
              v29 = v28;
              [v14 destinationLongitude];
              *buf = 138414851;
              v233 = v207;
              v234 = 2112;
              *v235 = uUIDString;
              *&v235[8] = 2048;
              v236 = *&v203;
              *v237 = 1024;
              *&v237[2] = tripSegmentSequence;
              *&v237[6] = 1024;
              *&v237[8] = tripSegmentSequenceMax;
              v11 = v18;
              v10 = v198;
              *v238 = 2112;
              *&v238[2] = startDate;
              *v239 = 2112;
              *&v239[2] = endDate;
              v240 = 2053;
              v241 = v25;
              v242 = 2053;
              v243 = v27;
              v244 = 2053;
              v245 = v29;
              v246 = 2053;
              v247 = v30;
              _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,Commute group contains trip ID,%@,Mode,%lu,Sequence,%d/%d,StartDate,%@,EndDate,%@,StartLocation,(%{sensitive}.7lf, %{sensitive}.7lf),EndLocation,(%{sensitive}.7lf, %{sensitive}.7lf)", buf, 0x68u);

              v12 = MEMORY[0x277D86220];
              self = selfCopy;
            }
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v227 objects:v248 count:16];
      }

      while (v10);
    }

    if ([obj count] < 2)
    {
      v31 = obj;
    }

    else
    {
      v31 = [obj sortedArrayUsingComparator:&__block_literal_global_251];
    }

    v32 = v31;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v32 count];
        *buf = 138412546;
        v233 = v35;
        v234 = 2048;
        *v235 = v36;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@,Validating commute with,%lu,trips (after sorting).", buf, 0x16u);
      }
    }

    if ([v32 count])
    {
      v37 = [v32 objectAtIndexedSubscript:0];
      tripSegmentSequence2 = [v37 tripSegmentSequence];

      if (tripSegmentSequence2 == 1)
      {
        commuteCopy = v194;
        if ([v32 count])
        {
          firstObject = [v32 firstObject];
          tripSegmentSequenceMax2 = [firstObject tripSegmentSequenceMax];

          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          *&v6 = COERCE_DOUBLE(v32);
          v41 = [v6 countByEnumeratingWithState:&v223 objects:v231 count:16];
          if (v41)
          {
            v42 = v41;
            tripSegmentSequence3 = 0;
            v44 = *v224;
LABEL_29:
            v45 = 0;
            while (1)
            {
              if (*v224 != v44)
              {
                objc_enumerationMutation(v6);
              }

              v46 = *(*(&v223 + 1) + 8 * v45);
              if ([v46 tripSegmentSequence] < 1 || objc_msgSend(v46, "tripSegmentSequence") > tripSegmentSequenceMax2 || objc_msgSend(v46, "tripSegmentSequence") - tripSegmentSequence3 != 1)
              {
                break;
              }

              tripSegmentSequence3 = [v46 tripSegmentSequence];
              if (v42 == ++v45)
              {
                v42 = [v6 countByEnumeratingWithState:&v223 objects:v231 count:16];
                commuteCopy = v194;
                if (v42)
                {
                  goto LABEL_29;
                }

                goto LABEL_49;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_90;
            }

            v53 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = objc_opt_class();
              v55 = NSStringFromClass(v54);
              tripSegmentSequence4 = [v46 tripSegmentSequence];
              *buf = 138413314;
              v233 = v55;
              v234 = 1024;
              *v235 = 1;
              *&v235[4] = 1024;
              *&v235[6] = tripSegmentSequenceMax2;
              LOWORD(v236) = 1024;
              *(&v236 + 2) = tripSegmentSequence4;
              HIWORD(v236) = 1024;
              *v237 = tripSegmentSequence3;
              _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@,Invalid or missing TripSegment sequence,min,%d,max,%d,seq,%d,prev,%d", buf, 0x24u);
            }

            goto LABEL_89;
          }

          tripSegmentSequence3 = 0;
LABEL_49:

          if (tripSegmentSequence3 != tripSegmentSequenceMax2)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
LABEL_140:

              goto LABEL_141;
            }

            _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
            {
              goto LABEL_90;
            }

            v109 = objc_opt_class();
            v53 = NSStringFromClass(v109);
            *buf = 138413058;
            v233 = v53;
            v234 = 1024;
            *v235 = 1;
            *&v235[4] = 1024;
            *&v235[6] = tripSegmentSequenceMax2;
            LOWORD(v236) = 1024;
            *(&v236 + 2) = tripSegmentSequence3;
            _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,Missing terminal tripSegment/s,min,%d,max,%d,last tripSegment seq,%d", buf, 0x1Eu);
LABEL_89:

LABEL_90:
            commuteCopy = v194;
            goto LABEL_138;
          }
        }

        selfCopy2 = self;
        if ([v32 count]!= 1)
        {
          v57 = 0;
          v58 = MEMORY[0x277D86220];
          while (1)
          {
            [v32 objectAtIndexedSubscript:v57];
            *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            [v32 objectAtIndexedSubscript:++v57];
            *&v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v60 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = objc_opt_class();
                v62 = NSStringFromClass(v61);
                identifier2 = [v6 identifier];
                uUIDString2 = [identifier2 UUIDString];
                [(RTTripClusterWalkAndBikeTripStats *)v59 identifier];
                v213 = v6;
                v65 = v32;
                v67 = v66 = v58;
                [v67 UUIDString];
                v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412802;
                v233 = v62;
                v234 = 2112;
                *v235 = uUIDString2;
                *&v235[8] = 2112;
                v236 = v68;
                _os_log_impl(&dword_2304B3000, v60, OS_LOG_TYPE_INFO, "%@,currentTrip with ID,%@,nextTrip with ID,%@", buf, 0x20u);

                v58 = v66;
                v32 = v65;
                v6 = v213;
              }
            }

            dateInterval3 = [v6 dateInterval];
            endDate2 = [dateInterval3 endDate];
            dateInterval4 = [(RTTripClusterWalkAndBikeTripStats *)v59 dateInterval];
            startDate2 = [dateInterval4 startDate];
            v73 = [endDate2 compare:startDate2];

            if (v73 == 1)
            {
              break;
            }

            commuteCopy = v194;
            if (v57 >= [v32 count]- 1)
            {
              goto LABEL_58;
            }
          }

          commuteCopy = v194;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v102 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
            {
              v103 = objc_opt_class();
              v104 = NSStringFromClass(v103);
              identifier3 = [v6 identifier];
              uUIDString3 = [identifier3 UUIDString];
              identifier4 = [(RTTripClusterWalkAndBikeTripStats *)v59 identifier];
              [identifier4 UUIDString];
              v108 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412802;
              v233 = v104;
              v234 = 2112;
              *v235 = uUIDString3;
              *&v235[8] = 2112;
              v236 = v108;
              _os_log_impl(&dword_2304B3000, v102, OS_LOG_TYPE_INFO, "%@,Invalid time continuity in commute: Trip ID,%@,->,%@", buf, 0x20u);

              commuteCopy = v194;
            }
          }

          goto LABEL_137;
        }

LABEL_58:
        if ([v32 count])
        {
          v74 = 0;
          while (1)
          {
            [v32 objectAtIndexedSubscript:v74];
            *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            if (![v6 modeOfTransportation])
            {
              break;
            }

            if (++v74 >= [v32 count])
            {
              goto LABEL_62;
            }
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_138;
          }

          v48 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            goto LABEL_44;
          }

          v110 = objc_opt_class();
          v51 = NSStringFromClass(v110);
          tripCommuteID = [v6 tripCommuteID];
          uUIDString4 = [tripCommuteID UUIDString];
          *buf = 138412546;
          v233 = v51;
          v234 = 2112;
          *v235 = uUIDString4;
          _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@,Unknown mode of transport in commute ID,%@,dropping this commute", buf, 0x16u);

          goto LABEL_43;
        }

LABEL_62:
        v222 = 0.0;
        *&v59 = COERCE_DOUBLE(objc_alloc_init(RTTripClusterWalkAndBikeTripStats));
        if ([v32 count])
        {
          v75 = 0;
          *&v76 = 0.0;
          v77 = 0;
          do
          {
            v78 = [v32 objectAtIndexedSubscript:v77];
            modeOfTransportation = [v78 modeOfTransportation];

            if (modeOfTransportation == 2)
            {
              ++v75;
              v80 = [v32 objectAtIndexedSubscript:v77];

              v81 = [v32 objectAtIndexedSubscript:v77];
              dateInterval5 = [v81 dateInterval];
              [dateInterval5 duration];
              v222 = v83;

              v76 = v80;
            }

            else
            {
              v81 = [v32 objectAtIndexedSubscript:v77];
              [(RTTripClusterWalkAndBikeTripStats *)v59 updateWalkAndBikeStats:v81 isTripSegmentBeforeDriving:v75 == 0];
            }

            ++v77;
          }

          while (v77 < [v32 count]);
          if (v75 <= 1)
          {
            v91 = 0;
            v90 = 0;
            v6 = v76;
            commuteCopy = v194;
          }

          else
          {
            commuteCopy = v194;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v84 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
              {
                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v87 = [v32 objectAtIndexedSubscript:0];
                [v87 tripCommuteID];
                v88 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412802;
                v233 = v86;
                v234 = 2048;
                *v235 = v75;
                *&v235[8] = 2112;
                v236 = v88;
                _os_log_impl(&dword_2304B3000, v84, OS_LOG_TYPE_INFO, "%@,Commute with > 1,(%lu) drive segments, attempting route compounding, commuteID,%@", buf, 0x20u);

                commuteCopy = v194;
              }
            }

            v221 = 0;
            v222 = 0.0;
            tripSegmentRoadTransitionsStore = selfCopy2->_tripSegmentRoadTransitionsStore;
            v220 = 0;
            [(RTTripClusterManager *)selfCopy2 attemptCreatingACompoundRoute:v32 compoundTripSegmentLocations:&v221 numberOfDriveSegments:v75 tripSegmentRoadTransitionsStore:tripSegmentRoadTransitionsStore compoundTripSegmentRoadTransitions:&v220 driveTripDuration:&v222];
            *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v90 = v221;
            v91 = v220;

            v92 = v222;
            v93 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
            if (*&v6 == 0.0 || !v90 || !v91 || v92 <= 0.0)
            {
              if (v93)
              {
                v163 = v90;
                v164 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                {
                  v216 = v91;
                  v165 = objc_opt_class();
                  v166 = NSStringFromClass(v165);
                  v167 = [v32 objectAtIndexedSubscript:0];
                  tripCommuteID2 = [v167 tripCommuteID];
                  if (v163)
                  {
                    v169 = [v163 count];
                  }

                  else
                  {
                    v169 = 0;
                  }

                  v189 = v216;
                  if (v216)
                  {
                    v189 = [v216 count];
                  }

                  *buf = 138413570;
                  v233 = v166;
                  v234 = 2112;
                  *v235 = tripCommuteID2;
                  *&v235[8] = 2112;
                  v236 = *&v6;
                  *v237 = 2048;
                  *&v237[2] = v169;
                  *&v237[10] = 2048;
                  *v238 = v189;
                  *&v238[8] = 2048;
                  *v239 = v222;
                  _os_log_impl(&dword_2304B3000, v164, OS_LOG_TYPE_INFO, "%@,Route compounding not successful, commuteID,%@,driveSegment,%@,loc count,%lu,road transitions count,%lu,duration,%.2f", buf, 0x3Eu);

                  commuteCopy = v194;
                  v91 = v216;
                }

                v121 = 0;
                v90 = v163;
              }

              else
              {
                v121 = 0;
              }

              goto LABEL_136;
            }

            if (v93)
            {
              v94 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
              {
                v95 = objc_opt_class();
                v96 = NSStringFromClass(v95);
                v204 = [v32 objectAtIndexedSubscript:0];
                [v204 tripCommuteID];
                v208 = v90;
                v97 = v214 = v91;
                [v6 tripCommuteID];
                v98 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                v99 = v222;
                v100 = [v208 count];
                v101 = [v214 count];
                *buf = 138413570;
                v233 = v96;
                v234 = 2112;
                *v235 = v97;
                *&v235[8] = 2112;
                v236 = v98;
                *v237 = 2048;
                *&v237[2] = v99;
                *&v237[10] = 2048;
                *v238 = v100;
                commuteCopy = v194;
                *&v238[8] = 2048;
                *v239 = v101;
                _os_log_impl(&dword_2304B3000, v94, OS_LOG_TYPE_INFO, "%@,Route compounding successful, from commuteID,%@,compound tripsegment commuteID,%@,duration,%.2f,location count,%lu,road transition count,%lu", buf, 0x3Eu);

                v91 = v214;
                v90 = v208;
              }
            }

            v91 = v91;
          }
        }

        else
        {
          v91 = 0;
          v90 = 0;
          *&v6 = 0.0;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v113 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            v114 = objc_opt_class();
            v115 = NSStringFromClass(v114);
            [v32 objectAtIndexedSubscript:0];
            v117 = v116 = v90;
            [v117 tripCommuteID];
            v119 = v118 = v91;
            *buf = 138412802;
            v233 = v115;
            v234 = 2112;
            *v235 = v119;
            *&v235[8] = 2112;
            v236 = *&v59;
            _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_INFO, "%@,walkAndBikeTripStats for commute,%@,%@", buf, 0x20u);

            v91 = v118;
            v90 = v116;

            commuteCopy = v194;
          }
        }

        if (*&v6 == 0.0)
        {
          [(RTTripClusterManager *)selfCopy2 _markTripSegmentsAsProcessedByClustering:obj];
          tripClusterStore = selfCopy2->_tripClusterStore;
          tripClusterProcessor = selfCopy2->_tripClusterProcessor;
          v215 = v91;
          tripClusterRouteStore = selfCopy2->_tripClusterRouteStore;
          v210 = [obj objectAtIndexedSubscript:0];
          [v210 originLatitude];
          v137 = v136;
          v138 = [obj objectAtIndexedSubscript:0];
          [v138 originLongitude];
          v140 = v139;
          v141 = [obj objectAtIndexedSubscript:0];
          [v141 destinationLatitude];
          v143 = v142;
          v144 = [obj objectAtIndexedSubscript:0];
          [v144 destinationLongitude];
          v146 = v145;
          v147 = [obj objectAtIndexedSubscript:0];
          dateInterval6 = [v147 dateInterval];
          [dateInterval6 endDate];
          v150 = v149 = v90;
          v151 = tripClusterRouteStore;
          v91 = v215;
          [(RTTripClusterProcessor *)tripClusterProcessor processTripSegmentStatsWithNoDrive:v59 tripClusterStore:tripClusterStore tripClusterRouteStore:v151 originLatitude:v150 originLongitude:v137 destLatitude:v140 destLongitude:v143 lastTimeTaken:v146];

          v90 = v149;
          commuteCopy = v194;

          *&v6 = 0.0;
        }

        else
        {
          if (v90 || (v219 = 0, v120 = [(RTTripClusterManager *)selfCopy2 processTripSegments:v6 outLocationsArray:&v219], v90 = v219, v120))
          {
            v121 = v91;
            if (!v91)
            {
              v122 = selfCopy2->_tripSegmentRoadTransitionsStore;
              identifier5 = [v6 identifier];
              v121 = [(RTTripClusterRoadTransitionsStore *)v122 getRoadTransitionsWithID:identifier5];

              commuteCopy = v194;
            }

            v124 = v222;
            options = [(RTTripClusterManager *)selfCopy2 options];
            maxTripSegmentTimeForClustering = [options maxTripSegmentTimeForClustering];

            if (v124 <= maxTripSegmentTimeForClustering)
            {
              [v6 tripDistance];
              v153 = v152;
              options2 = [(RTTripClusterManager *)selfCopy2 options];
              maxTripSegmentDistanceForClustering = [options2 maxTripSegmentDistanceForClustering];

              v156 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
              if (v153 <= maxTripSegmentDistanceForClustering)
              {
                if (v156)
                {
                  v217 = v91;
                  v170 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                  {
                    v171 = objc_opt_class();
                    v206 = NSStringFromClass(v171);
                    identifier6 = [v6 identifier];
                    uUIDString5 = [identifier6 UUIDString];
                    *&v195 = COERCE_DOUBLE([v6 modeOfTransportation]);
                    aSelectora = [v6 tripSegmentSequence];
                    tripSegmentSequenceMax3 = [v6 tripSegmentSequenceMax];
                    dateInterval7 = [v6 dateInterval];
                    startDate3 = [dateInterval7 startDate];
                    [v6 dateInterval];
                    v173 = v211 = v90;
                    endDate3 = [v173 endDate];
                    [v6 originLatitude];
                    v176 = v175;
                    [v6 originLongitude];
                    v178 = v177;
                    [v6 destinationLatitude];
                    v180 = v179;
                    [v6 destinationLongitude];
                    *buf = 138414851;
                    v233 = v206;
                    v234 = 2112;
                    *v235 = uUIDString5;
                    *&v235[8] = 2048;
                    v236 = *&v195;
                    *v237 = 1024;
                    *&v237[2] = aSelectora;
                    *&v237[6] = 1024;
                    *&v237[8] = tripSegmentSequenceMax3;
                    *v238 = 2112;
                    *&v238[2] = startDate3;
                    *v239 = 2112;
                    *&v239[2] = endDate3;
                    v240 = 2053;
                    v241 = v176;
                    v242 = 2053;
                    v243 = v178;
                    v244 = 2053;
                    v245 = v180;
                    v246 = 2053;
                    v247 = v181;
                    _os_log_impl(&dword_2304B3000, v170, OS_LOG_TYPE_INFO, "%@,Processing tripID,%@,mode,%lu,sequence,%d/%d,startDate,%@,endDate,%@,startLL,%{sensitive}.7lf, %{sensitive}.7lf,endLL,%{sensitive}.7lf, %{sensitive}.7lf", buf, 0x68u);

                    v90 = v211;
                    commuteCopy = v194;
                  }

                  v91 = v217;
                }

                [(RTTripClusterManager *)selfCopy2 _markTripSegmentsAsProcessedByClustering:obj];
                [(RTTripClusterProcessor *)selfCopy2->_tripClusterProcessor processTripSegment:v6 locationsArray:v90 tripClusterStore:selfCopy2->_tripClusterStore tripClusterRouteStore:selfCopy2->_tripClusterRouteStore tripClusterWaypointStore:selfCopy2->_tripClusterWaypointStore tripClusterRouteRoadTransitionsStore:selfCopy2->_tripClusterRouteRoadTransitionsStore tripClusterRecencyStore:v222 tripClusterScheduleStore:selfCopy2->_tripClusterRecencyStore tripSegmentRoadTransitionsStore:selfCopy2->_tripClusterScheduleStore walkAndBikeTripStats:selfCopy2->_tripSegmentRoadTransitionsStore tripSegmentRoadTransitions:v59 tripDuration:v121];
                goto LABEL_136;
              }

              if (v156)
              {
                v127 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                {
                  v157 = objc_opt_class();
                  v129 = NSStringFromClass(v157);
                  NSStringFromSelector(aSelector);
                  v130 = v209 = v90;
                  [v6 tripDistance];
                  v159 = v158;
                  [(RTTripClusterManager *)selfCopy2 options];
                  v161 = v160 = v91;
                  maxTripSegmentDistanceForClustering2 = [v161 maxTripSegmentDistanceForClustering];
                  *buf = 138413058;
                  v233 = v129;
                  v234 = 2112;
                  *v235 = v130;
                  *&v235[8] = 2048;
                  v236 = v159;
                  *v237 = 2048;
                  *&v237[2] = maxTripSegmentDistanceForClustering2;
                  _os_log_impl(&dword_2304B3000, v127, OS_LOG_TYPE_INFO, "%@,%@,Skipping commute, duration too long,%lf,threshold,%lu", buf, 0x2Au);

                  v91 = v160;
                  goto LABEL_115;
                }

LABEL_116:
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v127 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
              {
                v128 = objc_opt_class();
                v129 = NSStringFromClass(v128);
                NSStringFromSelector(aSelector);
                v130 = v209 = v90;
                v131 = v222;
                [(RTTripClusterManager *)selfCopy2 options];
                v133 = v132 = v91;
                maxTripSegmentTimeForClustering2 = [v133 maxTripSegmentTimeForClustering];
                *buf = 138413058;
                v233 = v129;
                v234 = 2112;
                *v235 = v130;
                *&v235[8] = 2048;
                v236 = v131;
                *v237 = 2048;
                *&v237[2] = maxTripSegmentTimeForClustering2;
                _os_log_impl(&dword_2304B3000, v127, OS_LOG_TYPE_INFO, "%@,%@,Skipping commute, duration too long,%f,threshold,%lu", buf, 0x2Au);

                v91 = v132;
LABEL_115:

                v90 = v209;
                commuteCopy = v194;
                goto LABEL_116;
              }

              goto LABEL_116;
            }

LABEL_136:

LABEL_137:
            goto LABEL_138;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v182 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
            {
              v183 = objc_opt_class();
              v184 = NSStringFromClass(v183);
              [v6 identifier];
              v186 = v185 = v90;
              [v186 UUIDString];
              v188 = v187 = v91;
              *buf = 138412546;
              v233 = v184;
              v234 = 2112;
              *v235 = v188;
              _os_log_impl(&dword_2304B3000, v182, OS_LOG_TYPE_INFO, "%@,Skipping commute, unable to fetch locations,tripID,%@", buf, 0x16u);

              v91 = v187;
              v90 = v185;

              commuteCopy = v194;
            }
          }
        }

        v121 = v91;
        goto LABEL_136;
      }

      commuteCopy = v194;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_139:
        v6 = v32;
        goto LABEL_140;
      }

      _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v48 = NSStringFromClass(v50);
        v51 = [v32 objectAtIndexedSubscript:0];
        tripSegmentSequence5 = [v51 tripSegmentSequence];
        *buf = 138412802;
        v233 = v48;
        v234 = 1024;
        *v235 = 1;
        *&v235[4] = 1024;
        *&v235[6] = tripSegmentSequence5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,missing TripSegment sequence,expectedSeq,%d,seq,%d", buf, 0x18u);
LABEL_43:

        commuteCopy = v194;
        goto LABEL_44;
      }
    }

    else
    {
      _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      commuteCopy = v194;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = [obj count];
        *buf = 138412546;
        v233 = v48;
        v234 = 2048;
        *v235 = v49;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@,sorted TripSegment count is 0,expected,%lu", buf, 0x16u);
LABEL_44:
      }
    }

LABEL_138:

    goto LABEL_139;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    *&v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      v233 = v8;
      v234 = 2048;
      *v235 = 9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,Skipping an empty commute group, or commutes that have more than %lu trips", buf, 0x16u);
    }

    goto LABEL_140;
  }

LABEL_141:
}

uint64_t __50__RTTripClusterManager_validateAndProcessCommute___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 tripSegmentSequence];
  if (v6 <= [v5 tripSegmentSequence])
  {
    v8 = [v4 tripSegmentSequence];
    if (v8 >= [v5 tripSegmentSequence])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_markTripSegmentsAsProcessedByClustering:(id)clustering
{
  v18 = *MEMORY[0x277D85DE8];
  clusteringCopy = clustering;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [clusteringCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(clusteringCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 modeOfTransportation] == 2 || objc_msgSend(v9, "modeOfTransportation") == 1 || objc_msgSend(v9, "modeOfTransportation") == 3)
        {
          tripSegmentStore = [(RTTripSegmentManager *)self->_tripSegmentManager tripSegmentStore];
          identifier = [v9 identifier];
          [tripSegmentStore deleteTripSegmentWithUUID:identifier];

          [v9 setIsConsumedByClustering:1];
          tripSegmentStore2 = [(RTTripSegmentManager *)self->_tripSegmentManager tripSegmentStore];
          [tripSegmentStore2 storeTripSegment:v9];
        }
      }

      v6 = [clusteringCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)createMockTripWithSequence:(int)sequence sequenceMax:(int)max commuteID:(id)d originLat:(double)lat originLon:(double)lon destLat:(double)destLat destLon:(double)destLon mode:(int64_t)self0
{
  v15 = *&max;
  v16 = *&sequence;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {
      date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-21600.0];
      goto LABEL_10;
    }

    if (v16 == 2)
    {
      date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-18000.0];
      v20 = date;
      v21 = 2700.0;
      goto LABEL_12;
    }

LABEL_8:
    date = [MEMORY[0x277CBEAA8] date];
LABEL_10:
    v20 = date;
    v21 = 1800.0;
    goto LABEL_12;
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10800.0];
      v20 = date;
      v21 = 1200.0;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-14400.0];
  v20 = date;
  v21 = 3600.0;
LABEL_12:
  v22 = [date dateByAddingTimeInterval:v21];
  v23 = objc_alloc(MEMORY[0x277D013D0]);
  v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 endDate:v22];
  v25 = [v23 initWithTripSegmentIdentifier:uUID dateInterval:v24 tripDistance:mode tripDistanceUncertainty:0 modeOfTransportation:v16 isConsumedByClustering:v15 tripSegmentSequence:10.0 tripSegmentSequenceMax:0.1 originLatitude:lat originLongitude:lon destinationLatitude:destLat destinationLongitude:destLon tripCommuteID:uUID2];

  return v25;
}

+ (int64_t)periodicPurgePolicy
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      v6 = 138412546;
      v7 = v4;
      v8 = 1024;
      v9 = 3;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@,%d", &v6, 0x12u);
    }
  }

  return 3;
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  if (dateCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(a2);
        getFormattedDateString = [dateCopy getFormattedDateString];
        *buf = 138412802;
        v23 = v12;
        v24 = 1024;
        typeCopy = type;
        v26 = 2112;
        v27 = getFormattedDateString;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@,type,%d,referenceDate,%@", buf, 0x1Cu);
      }
    }

    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__RTTripClusterManager_performPurgeOfType_referenceDate_completion___block_invoke;
    block[3] = &unk_2788C47A8;
    typeCopy2 = type;
    v17 = dateCopy;
    selfCopy = self;
    v19 = completionCopy;
    v21 = a2;
    dispatch_async(queue, block);

    v15 = v17;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
    }
  }
}

void __68__RTTripClusterManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 1uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__RTTripClusterManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v8[3] = &unk_2788CA990;
    v6 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = v6;
    v9 = v4;
    [v5 purgeClusterDatabasesPredating:v3 handler:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __68__RTTripClusterManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 48);
      v7 = 138412802;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@,type,%d,error,%@", &v7, 0x1Cu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_shouldMockLearnedRoutesSPI
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMockLearnedRoutesSPI"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int)minimumTraversalCountForLearnedRoutes
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsTripClusterSPIMinTraversalCountInternalDebug"];

  if (v4)
  {
    intValue = [v4 intValue];
    if (intValue >= 0)
    {
      v6 = intValue;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    defaultsManager2 = [(RTTripClusterManager *)self defaultsManager];
    v8 = [defaultsManager2 objectForKey:@"RTDefaultsTripClusterSPIMinTraversalCount"];

    v6 = 3;
    if (v8)
    {
      intValue2 = [v8 intValue];
      if (intValue2 <= 3)
      {
        v6 = 3;
      }

      else
      {
        v6 = intValue2;
      }
    }
  }

  return v6;
}

- (int)maximumLocationsInALearnedRoute
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMaxLocationCountPerRouteSPI"];

  v4 = 3600;
  if (v3)
  {
    intValue = [v3 intValue];
    if (intValue >= 0)
    {
      v4 = intValue;
    }

    else
    {
      v4 = 3600;
    }
  }

  return v4;
}

- (int)_minimumTravelTimeForSignificantNonDriveCluster
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsLearnedRoutesMinTravelTimeSecNonDriveCluster"];

  if (v3 && [v3 intValue] >= 1)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 120;
  }

  return intValue;
}

- (int)_minimumTravelDistanceForSignificantNonDriveCluster
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsLearnedRoutesMinTravelDistanceMeterNonDriveCluster"];

  if (v3 && [v3 intValue] >= 1)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 100;
  }

  return intValue;
}

- (int)_maximumTravelTimeForSignificantNonDriveCluster:(signed __int16)cluster
{
  clusterCopy = cluster;
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsLearnedRoutesMaxTravelTimeSecNonDriveClusterInADriveTrip"];

  if (clusterCopy == 3)
  {
    defaultsManager2 = [(RTTripClusterManager *)self defaultsManager];
    v8 = [defaultsManager2 objectForKey:@"RTDefaultsLearnedRoutesMaxTravelTimeSecNonDriveCluster"];

    intValue = 7200;
    v6 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    intValue = 1800;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if ([v6 intValue] >= 1)
  {
    intValue = [v6 intValue];
  }

LABEL_7:

  return intValue;
}

- (int)_maximumTravelDistanceForSignificantNonDriveCluster:(signed __int16)cluster
{
  clusterCopy = cluster;
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsLearnedRoutesMaxTravelDistanceMeterNonDriveClusterInADriveTrip"];

  if (clusterCopy == 3)
  {
    defaultsManager2 = [(RTTripClusterManager *)self defaultsManager];
    v8 = [defaultsManager2 objectForKey:@"RTDefaultsLearnedRoutesMaxTravelDistanceMeterNonDriveCluster"];

    intValue = 20000;
    v6 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    intValue = 1000;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if ([v6 intValue] >= 1)
  {
    intValue = [v6 intValue];
  }

LABEL_7:

  return intValue;
}

- (BOOL)_supportsRouteCompoundingWithoutVisitAggregation
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerRouteCompoundingNoVisitAggregation"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (double)maximumInterTripSegmentDistanceAllowedForCompoundRoute
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMaxInterTripSgmtDstForCompounding"];

  if (!v3 || ([v3 doubleValue], v5 = v4, v4 < 0.0))
  {
    v5 = 500.0;
  }

  return v5;
}

- (void)_mockLearnedRouteTravelModeConfiguration:(int64_t *)configuration driveTravelMode:(int64_t *)mode postDriveTravelMode:(int64_t *)travelMode
{
  v34 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v10 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMockLearnedRouteTravelModeConfig"];

  if (!v10 || [v10 intValue] < 112 || objc_msgSend(v10, "intValue") > 323)
  {
    intValue = 222;
    v12 = 2;
    goto LABEL_7;
  }

  intValue = [v10 intValue];
  v12 = intValue % 10;
  if ((intValue % 100 - 20) <= 9)
  {
LABEL_7:
    *mode = 2;
  }

  if (v12 == 2)
  {
    v13 = 1;
  }

  else
  {
    if (v12 != 3)
    {
      goto LABEL_13;
    }

    v13 = 3;
  }

  *travelMode = v13;
LABEL_13:
  if ((intValue - 200) >= 0x64)
  {
    if ((intValue - 300) > 0x63)
    {
      goto LABEL_18;
    }

    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  *configuration = v14;
LABEL_18:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = *configuration;
      v20 = *mode;
      v21 = *travelMode;
      v22 = 138413570;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 1024;
      v27 = intValue;
      v28 = 1024;
      v29 = v19;
      v30 = 1024;
      v31 = v20;
      v32 = 1024;
      v33 = v21;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@:%@,cfg,%d,preDrive,%d,drive,%d,postDrive,%d", &v22, 0x2Eu);
    }
  }
}

- (id)_readMockSPIDataFile
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v6 = [v4 stringWithFormat:@"%@/mockSPIData.txt", routineCacheDirectoryPath];

  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v8 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMockLearnedRoutesSPIDataFilePath"];

  if (v8)
  {
    stringValue = [v8 stringValue];

    v6 = stringValue;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v53 = v12;
      v54 = 2112;
      v55 = v13;
      v56 = 2112;
      v57 = v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,%@, reading mock SPI data from file:%@", buf, 0x20u);
    }
  }

  v47 = 0;
  v14 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v6 encoding:4 error:&v47];
  v15 = v47;
  if (v15)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v15 localizedDescription];
      *buf = 138412290;
      v53 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, "Error reading file: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v33 = v14;
    v34 = v8;
    v35 = v6;
    v17 = [v14 componentsSeparatedByString:@"\n"];
    array = [MEMORY[0x277CBEB18] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v17;
    v38 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v38)
    {
      v37 = *v44;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          if ([v20 length])
          {
            v21 = [v20 componentsSeparatedByString:{@", "}];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v40;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v40 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v39 + 1) + 8 * j);
                  [v26 doubleValue];
                  v28 = v27;
                  if (v27 != 0.0 || ([v26 isEqualToString:@"0.0"] & 1) != 0 || objc_msgSend(v26, "isEqualToString:", @"0"))
                  {
                    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
                    [array addObject:v29];
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
              }

              while (v23);
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v38);
    }

    v48 = @"waypoints";
    v49 = array;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    if ([array count])
    {
      v16 = v30;
    }

    else
    {
      v16 = 0;
    }

    v8 = v34;
    v15 = 0;

    v6 = v35;
    v14 = v33;
  }

  return v16;
}

- (void)_fetchLearnedRoutesWithOptionsDefault:(id)default handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager _fetchLearnedRoutesWithOptionsDefault:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1558;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@:%@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__72;
  v30 = __Block_byref_object_dispose__72;
  array = [MEMORY[0x277CBEB18] array];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__72;
  v26[4] = __Block_byref_object_dispose__72;
  v11 = objc_alloc(MEMORY[0x277D01148]);
  v12 = [MEMORY[0x277CBEAA8] now];
  v27 = [v11 initWithAllRoutesCountForThisODPair:2 allTraversalCountBetweenThisODPair:4 routeTraversalCount:3 routeTraversalCountOnTravelDayOfWeek:2 routeTravelCountOnTravelDayOfWeekHourOfDay:1 lastTravelledDate:v12];

  v13 = -3;
  v14 = &qword_230AFE650;
  do
  {
    v15 = [objc_alloc(MEMORY[0x277D01140]) initWithLatitude:0 longitude:1 course:*(v14 - 2) followedByUTurn:*(v14 - 1) locationReferenceFrame:*v14];
    [*(*&buf[8] + 40) addObject:v15];

    v13 += 3;
    v14 += 3;
  }

  while (v13 < 0x51);
  queue = [(RTNotifier *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__RTTripClusterManager__fetchLearnedRoutesWithOptionsDefault_handler___block_invoke;
  v21[3] = &unk_2788CA9B8;
  v22 = handlerCopy;
  v23 = buf;
  v24 = v26;
  v25 = a2;
  v17 = handlerCopy;
  dispatch_async(queue, v21);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(buf, 8);
}

void __70__RTTripClusterManager__fetchLearnedRoutesWithOptionsDefault_handler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.7792831 longitude:-122.419239];
  v4 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.3329419 longitude:-122.005359];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277D01150]);
  LODWORD(v7) = 1162346496;
  LODWORD(v8) = 1162141696;
  LODWORD(v9) = 1201103616;
  LODWORD(v10) = 1201101056;
  LODWORD(v11) = 1162264576;
  LODWORD(v12) = 1201102336;
  v13 = [v6 initWithRouteTravelMode:2 maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:*(*(*(a1 + 40) + 8) + 40) meanTravelTimeEstimateInSeconds:*(*(*(a1 + 48) + 8) + 40) maxTravelledDistanceEstimateInMeters:v7 minTravelledDistanceEstimateInMeters:v8 meanTravelledDistanceEstimateInMeters:v11 routeLocations:v9 learnedRouteLocations:v10 learnedRouteMetrics:v12];
  if (v13)
  {
    [v5 addObject:v13];
  }

  v14 = objc_alloc(MEMORY[0x277D01140]);
  [v3 coordinate];
  v16 = v15;
  [v3 coordinate];
  v18 = v17;
  [v3 course];
  v20 = [v14 initWithLatitude:0 longitude:1 course:v16 followedByUTurn:v18 locationReferenceFrame:v19];
  v21 = objc_alloc(MEMORY[0x277D01140]);
  [v4 coordinate];
  v23 = v22;
  [v4 coordinate];
  v25 = v24;
  [v4 course];
  v27 = [v21 initWithLatitude:0 longitude:1 course:v23 followedByUTurn:v25 locationReferenceFrame:v26];
  v28 = objc_alloc(MEMORY[0x277D01130]);
  v35 = v2;
  LODWORD(v29) = 1162264576;
  LODWORD(v30) = 1201102336;
  v31 = [v28 initWithLearnedRouteId:v2 routeStartLocation:v3 routeEndLocation:v4 travelTimeEntireRouteSec:v5 travelDistanceEntireRouteMeter:v20 travelModeRoutes:v27 routeStartLocationWithReferenceFrame:v29 routeEndLocationWithReferenceFrame:v30];
  v32 = [MEMORY[0x277CBEB18] array];
  [v32 addObject:v31];
  (*(*(a1 + 32) + 16))();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v37 = v34;
      _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "LearnedRoute:%@", buf, 0xCu);
    }
  }
}

- (void)_fetchLearnedRoutesWithOptionsMock:(id)mock handler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  mockCopy = mock;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager _fetchLearnedRoutesWithOptionsMock:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1665;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@:%@", buf, 0x16u);
    }
  }

  _readMockSPIDataFile = [(RTTripClusterManager *)self _readMockSPIDataFile];
  array = [MEMORY[0x277CBEB18] array];
  if (_readMockSPIDataFile)
  {
    v10 = [_readMockSPIDataFile objectForKey:@"waypoints"];
    [array addObjectsFromArray:v10];
  }

  else
  {
    for (i = 0; i != 1210; ++i)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:dbl_230AFE8E0[i]];
      [array addObject:v12];
    }
  }

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  [(RTTripClusterManager *)self _mockLearnedRouteTravelModeConfiguration:&v59 driveTravelMode:&v57 postDriveTravelMode:&v53];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__72;
  v62 = __Block_byref_object_dispose__72;
  v63 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__72;
  v50[4] = __Block_byref_object_dispose__72;
  v13 = objc_alloc(MEMORY[0x277D01148]);
  v14 = [MEMORY[0x277CBEAA8] now];
  v51 = [v13 initWithAllRoutesCountForThisODPair:2 allTraversalCountBetweenThisODPair:4 routeTraversalCount:3 routeTraversalCountOnTravelDayOfWeek:2 routeTravelCountOnTravelDayOfWeekHourOfDay:1 lastTravelledDate:v14];

  if (v55[3] == 2)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v16 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = array2;

    for (j = 0; [array count] > j; j = v29 + 3)
    {
      v18 = j + 4;
      v19 = [array objectAtIndex:v18];
      [v19 doubleValue];
      v21 = v20;

      v22 = objc_alloc(MEMORY[0x277D01140]);
      v18 -= 4;
      v23 = [array objectAtIndex:v18];
      [v23 doubleValue];
      v25 = v24;
      v26 = [array objectAtIndex:++v18];
      [v26 doubleValue];
      v28 = v27;
      v29 = v18 + 1;
      v30 = [array objectAtIndex:v18 + 1];
      [v30 doubleValue];
      v32 = [v22 initWithLatitude:fabs(v21 + -1.0) < 2.22044605e-16 longitude:1 course:v25 followedByUTurn:v28 locationReferenceFrame:v31];

      [*(*&buf[8] + 40) addObject:v32];
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTTripClusterManager__fetchLearnedRoutesWithOptionsMock_handler___block_invoke;
  block[3] = &unk_2788CA9E0;
  v45 = buf;
  v46 = v50;
  v47 = v58;
  v48 = v52;
  v43 = handlerCopy;
  v44 = &v54;
  v49 = a2;
  v34 = handlerCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v58, 8);
}

void __67__RTTripClusterManager__fetchLearnedRoutesWithOptionsMock_handler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v55 = [MEMORY[0x277CCAD78] UUID];
  v2 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.31619 longitude:-122.051062];
  v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.258431 longitude:-121.887807];
  v4 = [MEMORY[0x277CBEB18] array];
  if (*(*(*(a1 + 40) + 8) + 24) == 2)
  {
    v5 = objc_alloc(MEMORY[0x277D01150]);
    LODWORD(v6) = 1161115615;
    LODWORD(v7) = 1160970871;
    LODWORD(v8) = 1161067368;
    LODWORD(v9) = 1187464182;
    LODWORD(v10) = 1187438021;
    LODWORD(v11) = 1187446742;
    v12 = [v5 initWithRouteTravelMode:2 maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:*(*(*(a1 + 48) + 8) + 40) meanTravelTimeEstimateInSeconds:*(*(*(a1 + 56) + 8) + 40) maxTravelledDistanceEstimateInMeters:v6 minTravelledDistanceEstimateInMeters:v7 meanTravelledDistanceEstimateInMeters:v8 routeLocations:v9 learnedRouteLocations:v10 learnedRouteMetrics:v11];
    v13 = 2887.713;
    v14 = 25471.918;
  }

  else
  {
    v12 = 0;
    v14 = 0.0;
    v13 = 0.0;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v15 = objc_alloc(MEMORY[0x277D01150]);
    LODWORD(v16) = 1126659719;
    LODWORD(v17) = 1139021414;
    LODWORD(v18) = -1.0;
    LODWORD(v19) = -1.0;
    LODWORD(v20) = -1.0;
    LODWORD(v21) = -1.0;
    v22 = [v15 initWithRouteTravelMode:*(*(*(a1 + 64) + 8) + 24) maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:0 meanTravelTimeEstimateInSeconds:*(*(*(a1 + 56) + 8) + 40) maxTravelledDistanceEstimateInMeters:v18 minTravelledDistanceEstimateInMeters:v19 meanTravelledDistanceEstimateInMeters:v16 routeLocations:v20 learnedRouteLocations:v21 learnedRouteMetrics:v17];
    v13 = v13 + 167.463;
    v14 = v14 + 456.175;
  }

  else
  {
    v22 = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v23 = objc_alloc(MEMORY[0x277D01150]);
    LODWORD(v24) = 1133903872;
    LODWORD(v25) = 1140457472;
    LODWORD(v26) = -1.0;
    LODWORD(v27) = -1.0;
    LODWORD(v28) = -1.0;
    LODWORD(v29) = -1.0;
    v30 = [v23 initWithRouteTravelMode:*(*(*(a1 + 72) + 8) + 24) maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:0 meanTravelTimeEstimateInSeconds:*(*(*(a1 + 56) + 8) + 40) maxTravelledDistanceEstimateInMeters:v26 minTravelledDistanceEstimateInMeters:v27 meanTravelledDistanceEstimateInMeters:v24 routeLocations:v28 learnedRouteLocations:v29 learnedRouteMetrics:v25];
    v13 = v13 + 300.0;
    v14 = v14 + 500.0;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v30 = 0;
  if (v22)
  {
LABEL_9:
    [v4 addObject:v22];
  }

LABEL_10:
  if (v12)
  {
    [v4 addObject:v12];
  }

  v53 = v22;
  v54 = v12;
  if (v30)
  {
    [v4 addObject:v30];
  }

  v31 = objc_alloc(MEMORY[0x277D01140]);
  [v2 coordinate];
  v33 = v32;
  [v2 coordinate];
  v35 = v34;
  [v2 course];
  v37 = [v31 initWithLatitude:0 longitude:1 course:v33 followedByUTurn:v35 locationReferenceFrame:v36];
  v38 = objc_alloc(MEMORY[0x277D01140]);
  [v3 coordinate];
  v40 = v39;
  [v3 coordinate];
  v42 = v41;
  [v3 course];
  v44 = [v38 initWithLatitude:0 longitude:1 course:v40 followedByUTurn:v42 locationReferenceFrame:v43];
  v45 = objc_alloc(MEMORY[0x277D01130]);
  *&v46 = v13;
  *&v47 = v14;
  v48 = v4;
  v49 = [v45 initWithLearnedRouteId:v55 routeStartLocation:v2 routeEndLocation:v3 travelTimeEntireRouteSec:v4 travelDistanceEntireRouteMeter:v37 travelModeRoutes:v44 routeStartLocationWithReferenceFrame:v46 routeEndLocationWithReferenceFrame:v47];
  v50 = [MEMORY[0x277CBEB18] array];
  [v50 addObject:v49];
  (*(*(a1 + 32) + 16))();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v52 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412290;
      v57 = v52;
      _os_log_debug_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEBUG, "LearnedRoute:%@", buf, 0xCu);
    }
  }
}

- (unint64_t)_mostTravelledRoute:(id)route
{
  v30 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  queue = [(RTNotifier *)self queue];

  if (queue)
  {
    if (routeCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315394;
    v23 = "[RTTripClusterManager _mostTravelledRoute:]";
    v24 = 1024;
    LODWORD(v25) = 2061;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", &v22, 0x12u);
  }

  if (!routeCopy)
  {
LABEL_7:
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "[RTTripClusterManager _mostTravelledRoute:]";
      v24 = 1024;
      LODWORD(v25) = 2062;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusters (in %s:%d)", &v22, 0x12u);
    }
  }

LABEL_10:
  v9 = [routeCopy objectAtIndexedSubscript:0];
  countOfTraversal = [v9 countOfTraversal];

  v11 = 0;
  if ([routeCopy count])
  {
    v12 = 0;
    do
    {
      v13 = [routeCopy objectAtIndexedSubscript:v12];
      countOfTraversal2 = [v13 countOfTraversal];

      if (countOfTraversal2 > countOfTraversal)
      {
        v15 = [routeCopy objectAtIndexedSubscript:v12];
        countOfTraversal = [v15 countOfTraversal];

        v11 = v12;
      }

      ++v12;
    }

    while (v12 < [routeCopy count]);
  }

  if (v11 >= [routeCopy count])
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      v21 = [routeCopy count];
      v22 = 138413058;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v21;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@:%@,Unexpected!!,selectedClusterIndex is out of range,index,%lu,cluster count,%lu", &v22, 0x2Au);
    }

    v11 = 0;
  }

  return v11;
}

- (void)_getRoadDataFromFetchedRoutes:(id)routes roadData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  dataCopy = data;
  v7 = dataCopy;
  if (routesCopy)
  {
    if (dataCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTTripClusterManager _getRoadDataFromFetchedRoutes:roadData:]";
    v29 = 1024;
    v30 = 2085;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fetchedRoutes (in %s:%d)", buf, 0x12u);
  }

  if (!v7)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTTripClusterManager _getRoadDataFromFetchedRoutes:roadData:]";
      v29 = 1024;
      v30 = 2086;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: roadData (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v10 = [routesCopy sortedArrayUsingComparator:&__block_literal_global_325];

  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([array count])
        {
          clRoadID = [v17 clRoadID];
          lastObject = [array lastObject];
          clRoadID2 = [lastObject clRoadID];

          if (clRoadID != clRoadID2)
          {
            v21 = [RTTripClusterProcessor getCLTripSegmentRoadDataFromArrayOfRTTripClusterRoute:array];
            [v7 addObject:v21];

            [array removeAllObjects];
          }
        }

        [array addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }
}

uint64_t __63__RTTripClusterManager__getRoadDataFromFetchedRoutes_roadData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sequence];
  if (v6 >= [v5 sequence])
  {
    v8 = [v4 sequence];
    v7 = v8 > [v5 sequence];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)getWaypointsFromOldStore:(id)store
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = [RTTripClusterProcessor getWaypointIDFromClusterID:store];
  v4 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:v24];
  tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
  v23 = v4;
  v6 = [tripClusterRouteStore getTripClusterRouteWithOptions:v4];

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [RTTripClusterWaypoint alloc];
        clusterID = [v12 clusterID];
        clRoadID = [v12 clRoadID];
        [v12 latitude];
        v17 = v16;
        [v12 longitude];
        v19 = v18;
        [v12 course];
        v21 = -[RTTripClusterWaypoint initWithClusterID:clRoadID:latitude:longitude:course:sequence:followedByUTurn:](v13, "initWithClusterID:clRoadID:latitude:longitude:course:sequence:followedByUTurn:", clusterID, clRoadID, [v12 sequence], objc_msgSend(v12, "followedByUTurn"), v17, v19, v20);
        [array addObject:v21];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)_findRouteFromCurrentLocation:(id)location options:(id)options queryStartTime:(id)time handler:(id)handler
{
  v380 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v272 = COERCE_DOUBLE(options);
  timeCopy = time;
  handlerCopy = handler;
  selfCopy = self;
  queue = [(RTNotifier *)self queue];

  if (!queue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v348 = "[RTTripClusterManager _findRouteFromCurrentLocation:options:queryStartTime:handler:]";
      v349 = 1024;
      LODWORD(v350) = 2141;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", buf, 0x12u);
    }
  }

  if (!locationCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v348 = "[RTTripClusterManager _findRouteFromCurrentLocation:options:queryStartTime:handler:]";
      v349 = 1024;
      LODWORD(v350) = 2142;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusters (in %s:%d)", buf, 0x12u);
    }
  }

  if (v272 == 0.0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v348 = "[RTTripClusterManager _findRouteFromCurrentLocation:options:queryStartTime:handler:]";
      v349 = 1024;
      LODWORD(v350) = 2143;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v348 = "[RTTripClusterManager _findRouteFromCurrentLocation:options:queryStartTime:handler:]";
      v349 = 1024;
      LODWORD(v350) = 2144;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16 = objc_alloc(MEMORY[0x277CE41F8]);
  originVisit = [*&v272 originVisit];
  [originVisit coordinate];
  v19 = v18;
  originVisit2 = [*&v272 originVisit];
  [originVisit2 coordinate];
  v269 = [v16 initWithLatitude:v19 longitude:?];

  v21 = objc_alloc(MEMORY[0x277CE41F8]);
  destinationVisit = [*&v272 destinationVisit];
  [destinationVisit coordinate];
  v24 = v23;
  destinationVisit2 = [*&v272 destinationVisit];
  [destinationVisit2 coordinate];
  v268 = [v21 initWithLatitude:v24 longitude:?];

  v26 = objc_alloc(MEMORY[0x277D01140]);
  [v269 coordinate];
  v28 = v27;
  [v269 coordinate];
  v30 = v29;
  [v269 course];
  v264 = [v26 initWithLatitude:0 longitude:1 course:v28 followedByUTurn:v30 locationReferenceFrame:v31];
  v32 = objc_alloc(MEMORY[0x277D01140]);
  [v268 coordinate];
  v34 = v33;
  [v268 coordinate];
  v36 = v35;
  [v268 course];
  v263 = [v32 initWithLatitude:0 longitude:1 course:v34 followedByUTurn:v36 locationReferenceFrame:v37];
  v38 = objc_alloc(MEMORY[0x277CBFC98]);
  originVisit3 = [*&v272 originVisit];
  [originVisit3 coordinate];
  v41 = v40;
  originVisit4 = [*&v272 originVisit];
  [originVisit4 coordinate];
  v266 = [v38 initWithLatitude:v41 longitude:? altitude:?];

  v284 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v266, 0}];
  v346[0] = 0;
  v346[1] = v346;
  v346[2] = 0x2020000000;
  v346[3] = 0xBFF0000000000000;
  v340 = 0;
  v341 = &v340;
  v342 = 0x3032000000;
  v343 = __Block_byref_object_copy__72;
  v344 = __Block_byref_object_dispose__72;
  v345 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v334 = 0;
  v335 = &v334;
  v336 = 0x3032000000;
  v337 = __Block_byref_object_copy__72;
  v338 = __Block_byref_object_dispose__72;
  v339 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v328 = 0;
  v329 = &v328;
  v330 = 0x3032000000;
  v331 = __Block_byref_object_copy__72;
  v332 = __Block_byref_object_dispose__72;
  v333 = objc_alloc_init(MEMORY[0x277CBEB38]);
  maximumLocationsInALearnedRoute = [(RTTripClusterManager *)self maximumLocationsInALearnedRoute];
  array = [MEMORY[0x277CBEB18] array];
  v286 = objc_alloc_init(MEMORY[0x277CBFCB0]);
  v285 = objc_alloc_init(MEMORY[0x277CBFCA8]);
  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  obj = locationCopy;
  v43 = [obj countByEnumeratingWithState:&v324 objects:v379 count:16];
  if (v43)
  {
    v287 = 0;
    v289 = *v325;
    do
    {
      v291 = v43;
      for (i = 0; i != v291; i = i + 1)
      {
        if (*v325 != v289)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v324 + 1) + 8 * i);
        v46 = objc_autoreleasePoolPush();
        countOfTraversal = [v45 countOfTraversal];
        if (countOfTraversal >= [(RTTripClusterManager *)selfCopy minimumTraversalCountForLearnedRoutes])
        {
          if ([v45 modeOfTransport] == 2)
          {
            v48 = objc_alloc(MEMORY[0x277D013A8]);
            clusterID = [v45 clusterID];
            v50 = [v48 initWithClusterID:clusterID];

            tripClusterRouteStore = [(RTTripClusterManager *)selfCopy tripClusterRouteStore];
            v52 = [tripClusterRouteStore getTripClusterRouteWithOptions:v50];

            array2 = [MEMORY[0x277CBEB18] array];
            [(RTTripClusterManager *)selfCopy _getRoadDataFromFetchedRoutes:v52 roadData:array2];
            if (array2 && [array2 count])
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __85__RTTripClusterManager__findRouteFromCurrentLocation_options_queryStartTime_handler___block_invoke;
              aBlock[3] = &unk_2788CAA28;
              v320 = &v340;
              v321 = &v334;
              v323 = 0x3FF0000000000000;
              v322 = &v328;
              v319 = v346;
              aBlock[4] = v45;
              v54 = array2;
              v318 = v54;
              v55 = _Block_copy(aBlock);
              clusterID2 = [v45 clusterID];
              v57 = [v285 matchLocations:v284 toRoute:v54 withOptions:v286 andRouteID:clusterID2 modeOfTransport:1 outputHandler:v55];

              if (v57 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v58 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  v59 = objc_opt_class();
                  v280 = NSStringFromClass(v59);
                  [v57 localizedDescription];
                  v276 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  clusterID3 = [v45 clusterID];
                  [clusterID3 UUIDString];
                  v60 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v61 = [MEMORY[0x277CBEAA8] now];
                  [v61 timeIntervalSinceDate:timeCopy];
                  *buf = 138413058;
                  v348 = v280;
                  v349 = 2112;
                  v350 = v276;
                  v351 = 2112;
                  v352 = v60;
                  v353 = 2048;
                  v354 = v62 * 1000.0;
                  _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%@,matchLocations,returned error,%@,for clusterID,%@,queryResponseTimeMSec,%.2lf", buf, 0x2Au);
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v63 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                NSStringFromSelector(a2);
                v66 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                [v45 clusterID];
                v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412802;
                v348 = v65;
                v349 = 2112;
                v350 = v66;
                v351 = 2112;
                v352 = v67;
                _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "%@:%@,Zero roads fetched for clusterID,%@", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          v287 = 1;
        }

        objc_autoreleasePoolPop(v46);
      }

      v43 = [obj countByEnumeratingWithState:&v324 objects:v379 count:16];
    }

    while (v43);
  }

  else
  {
    v287 = 0;
  }

  v68 = v341[5];
  if (!v68 || ![v68 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        NSStringFromSelector(a2);
        v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v75 = [MEMORY[0x277CBEAA8] now];
        [v75 timeIntervalSinceDate:timeCopy];
        *buf = 138413058;
        v348 = v73;
        v349 = 2112;
        v350 = v74;
        v351 = 2112;
        v352 = v272;
        v353 = 2048;
        v354 = v76 * 1000.0;
        _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@:%@,Zero TripClusters fetched,options,%@,queryResponseTimeMSec,%.2lf", buf, 0x2Au);
      }
    }

    v77 = MEMORY[0x277CCA9B8];
    v377 = *MEMORY[0x277CCA450];
    v378 = @"Did not match to any route clusters.";
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
    array3 = [v77 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v78];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, array3);
    v290 = [MEMORY[0x277CBEAA8] now];
    [v290 timeIntervalSinceDate:timeCopy];
    [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:0 learnedRoutes:@"CL-ZeroMatchedCluster" type:v79 * 1000.0];
    goto LABEL_103;
  }

  array3 = [MEMORY[0x277CBEB18] array];
  routeDate = [*&v272 routeDate];
  if (!routeDate)
  {
    goto LABEL_54;
  }

  if ([*&v272 routeFetchType] != 1)
  {
    v80 = [*&v272 routeFetchType] == 3;

    if (v80)
    {
      goto LABEL_53;
    }

LABEL_54:
    v315 = 0u;
    v316 = 0u;
    v313 = 0u;
    v314 = 0u;
    routeDate2 = v341[5];
    v84 = [routeDate2 countByEnumeratingWithState:&v313 objects:v376 count:16];
    if (v84)
    {
      v85 = *v314;
      do
      {
        for (j = 0; j != v84; ++j)
        {
          if (*v314 != v85)
          {
            objc_enumerationMutation(routeDate2);
          }

          v87 = [[RTTripClusterWithLikelihood alloc] initWithCluster:*(*(&v313 + 1) + 8 * j) likelihood:1.0];
          [array3 addObject:v87];
        }

        v84 = [routeDate2 countByEnumeratingWithState:&v313 objects:v376 count:16];
      }

      while (v84);
    }

    goto LABEL_61;
  }

LABEL_53:
  v81 = v341[5];
  routeDate2 = [*&v272 routeDate];
  v83 = [(RTTripClusterManager *)selfCopy _getClusterLikelihoods:v81 routeDate:routeDate2];

  array3 = v83;
LABEL_61:

  if ([v341[5] count] < 2)
  {
    *&v89 = 0.0;
  }

  else
  {
    routeFetchType = [*&v272 routeFetchType];
    if (routeFetchType == 1 || routeFetchType == 3)
    {
      routeDate3 = [*&v272 routeDate];
      *&v89 = COERCE_DOUBLE([(RTTripClusterManager *)selfCopy _bestScheduleRoute:array3 routeDate:routeDate3]);
    }

    else
    {
      *&v89 = COERCE_DOUBLE([(RTTripClusterManager *)selfCopy _mostTravelledRoute:array3]);
    }
  }

  if (v89 < [v341[5] count])
  {
    v290 = [v341[5] objectAtIndex:v89];
    clusterID4 = [v290 clusterID];
    uUIDString = [clusterID4 UUIDString];

    allKeys = [v335[5] allKeys];
    v93 = [allKeys containsObject:uUIDString];

    if (v93)
    {
      v279 = [v335[5] valueForKey:uUIDString];
    }

    else
    {
      v279 = 0;
    }

    allKeys2 = [v329[5] allKeys];
    v99 = [allKeys2 containsObject:uUIDString];

    if (v99)
    {
      v100 = [v329[5] valueForKey:uUIDString];
      v101 = v100;
      if (!v100)
      {
        goto LABEL_99;
      }

      if (!v279)
      {
        goto LABEL_99;
      }

      tripLocations = [v100 tripLocations];
      if (!tripLocations)
      {
        goto LABEL_99;
      }

      routeRoads = [v101 routeRoads];
      if (routeRoads)
      {
        tripLocations2 = [v101 tripLocations];
        if ([tripLocations2 count])
        {
          routeRoads2 = [v101 routeRoads];
          v277 = v101;
          v106 = [routeRoads2 count] == 0;

          if (!v106)
          {
            v107 = objc_alloc(MEMORY[0x277D013C8]);
            clusterID5 = [v290 clusterID];
            v281 = [v107 initWithClusterID:clusterID5];

            array4 = [MEMORY[0x277CBEB18] array];
            tripClusterWaypointStore = [(RTTripClusterManager *)selfCopy tripClusterWaypointStore];
            v111 = [tripClusterWaypointStore getTripClusterWaypointWithOptions:v281];
            [array4 addObjectsFromArray:v111];

            if (![array4 count])
            {
              clusterID6 = [v290 clusterID];
              v113 = [(RTTripClusterManager *)selfCopy getWaypointsFromOldStore:clusterID6];
              [array4 addObjectsFromArray:v113];
            }

            array5 = [MEMORY[0x277CBEB18] array];
            v311 = 0u;
            v312 = 0u;
            v309 = 0u;
            v310 = 0u;
            v292 = array4;
            v115 = [v292 countByEnumeratingWithState:&v309 objects:v371 count:16];
            if (v115)
            {
              v116 = *v310;
              do
              {
                for (k = 0; k != v115; ++k)
                {
                  if (*v310 != v116)
                  {
                    objc_enumerationMutation(v292);
                  }

                  v118 = *(*(&v309 + 1) + 8 * k);
                  v119 = objc_alloc(MEMORY[0x277CBFC98]);
                  [v118 latitude];
                  v121 = v120;
                  [v118 longitude];
                  v123 = [v119 initWithLatitude:v121 longitude:v122 altitude:0.0];
                  [v123 setCLRoadID:{objc_msgSend(v118, "clRoadID")}];
                  if ([v118 followedByUTurn])
                  {
                    [v118 course];
                    [v123 updateCourse:? andCourseAccuracy:?];
                    [v123 setLocationDataMask:2];
                  }

                  else
                  {
                    [v118 course];
                    [v123 updateCourse:? andCourseAccuracy:?];
                  }

                  [array5 addObject:v123];
                }

                v115 = [v292 countByEnumeratingWithState:&v309 objects:v371 count:16];
              }

              while (v115);
            }

            v303 = 0;
            v304 = &v303;
            v305 = 0x3032000000;
            v306 = __Block_byref_object_copy__72;
            v307 = __Block_byref_object_dispose__72;
            v308 = 0;
            v302[0] = MEMORY[0x277D85DD0];
            v302[1] = 3221225472;
            v302[2] = __85__RTTripClusterManager__findRouteFromCurrentLocation_options_queryStartTime_handler___block_invoke_355;
            v302[3] = &unk_2788CAA50;
            v302[4] = &v303;
            v258 = _Block_copy(v302);
            tripLocations3 = [v277 tripLocations];
            firstObject = [tripLocations3 firstObject];
            routeRoads3 = [v277 routeRoads];
            firstObject2 = [routeRoads3 firstObject];
            clusterID7 = [v290 clusterID];
            v259 = [v285 getWaypointsSubsetFromSnapPointOnRoute:v279 modeOfTransport:1 snapLocation:firstObject snapRoad:firstObject2 waypoints:array5 routeID:clusterID7 withOptions:v286 outputHandler:v258];

            if (v259)
            {
              v129 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                v236 = objc_opt_class();
                v237 = NSStringFromClass(v236);
                [v259 localizedDescription];
                v238 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                v239 = [MEMORY[0x277CBEAA8] now];
                [v239 timeIntervalSinceDate:timeCopy];
                *buf = 138412802;
                v348 = v237;
                v349 = 2112;
                v350 = v238;
                v351 = 2048;
                v352 = v240 * 1000.0;
                _os_log_error_impl(&dword_2304B3000, v129, OS_LOG_TYPE_ERROR, "%@,getWaypointsSubsetFromSnapPointOnRoute returned error,%@,queryResponseTimeMSec,%.2lf", buf, 0x20u);
              }

              v130 = MEMORY[0x277CCA9B8];
              v369 = *MEMORY[0x277CCA450];
              v370 = @"Internal error in processing selected cluster (1)";
              v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
              tripLocations4 = [v130 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v131];

              (*(handlerCopy + 2))(handlerCopy, 0, 0, tripLocations4);
              array6 = [MEMORY[0x277CBEAA8] now];
              [array6 timeIntervalSinceDate:timeCopy];
              [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:0 learnedRoutes:@"CL-WPReturnedError" type:v132 * 1000.0];
            }

            else
            {
              v148 = v304[5];
              if (v148 && ([v148 tripLocations], (v149 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v304[5], "tripLocations"), v150 = objc_claimAutoreleasedReturnValue(), v151 = objc_msgSend(v150, "count") == 0, v150, v149, !v151))
              {
                tripLocations4 = [v304[5] tripLocations];
                array6 = [MEMORY[0x277CBEB18] array];
                v152 = [tripLocations4 count];
                if (maximumLocationsInALearnedRoute && v152 > maximumLocationsInALearnedRoute)
                {
                  v270 = [MEMORY[0x277CBEAA8] now];
                  array7 = [MEMORY[0x277CBEB18] array];
                  v296 = 0u;
                  v297 = 0u;
                  v294 = 0u;
                  v295 = 0u;
                  v154 = tripLocations4;
                  v155 = [v154 countByEnumeratingWithState:&v294 objects:v365 count:16];
                  if (v155)
                  {
                    v156 = *v295;
                    do
                    {
                      for (m = 0; m != v155; ++m)
                      {
                        if (*v295 != v156)
                        {
                          objc_enumerationMutation(v154);
                        }

                        v158 = *(*(&v294 + 1) + 8 * m);
                        [v158 latitude];
                        v160 = v159;
                        [v158 longitude];
                        v162 = CLLocationCoordinate2DMake(v160, v161);
                        v163 = objc_alloc(MEMORY[0x277CE41F8]);
                        [v158 course];
                        v165 = v164;
                        [v158 courseAccuracy];
                        v167 = [v163 initWithCoordinate:v270 altitude:v162.latitude horizontalAccuracy:v162.longitude verticalAccuracy:-1.0 course:-1.0 courseAccuracy:-1.0 speed:v165 speedAccuracy:v166 timestamp:{-1.0, 0xBFF0000000000000}];
                        [array7 addObject:v167];
                      }

                      v155 = [v154 countByEnumeratingWithState:&v294 objects:v365 count:16];
                    }

                    while (v155);
                  }

                  v168 = [MEMORY[0x277D01168] downsampleLocations:array7 outputSize:maximumLocationsInALearnedRoute];
                  v169 = v168;
                  if (!v168 || ![v168 count])
                  {
                    v170 = array7;

                    v169 = v170;
                  }

                  for (n = 0; n < [v169 count]; ++n)
                  {
                    v172 = [v169 objectAtIndexedSubscript:n];
                    [v172 courseAccuracy];
                    v173 = [RTTripClusterProcessor uTurnFlagFromCourseAccuracy:?];

                    v174 = objc_alloc(MEMORY[0x277D01140]);
                    v175 = [v169 objectAtIndexedSubscript:n];
                    [v175 coordinate];
                    v177 = v176;
                    v178 = [v169 objectAtIndexedSubscript:n];
                    [v178 coordinate];
                    v180 = v179;
                    v181 = [v169 objectAtIndexedSubscript:n];
                    [v181 course];
                    v183 = [v174 initWithLatitude:v173 longitude:1 course:v177 followedByUTurn:v180 locationReferenceFrame:v182];

                    [array6 addObject:v183];
                  }
                }

                else
                {
                  v300 = 0u;
                  v301 = 0u;
                  v298 = 0u;
                  v299 = 0u;
                  v169 = tripLocations4;
                  v188 = [v169 countByEnumeratingWithState:&v298 objects:v366 count:16];
                  if (v188)
                  {
                    v189 = *v299;
                    do
                    {
                      for (ii = 0; ii != v188; ++ii)
                      {
                        if (*v299 != v189)
                        {
                          objc_enumerationMutation(v169);
                        }

                        v191 = *(*(&v298 + 1) + 8 * ii);
                        [v191 courseAccuracy];
                        v192 = [RTTripClusterProcessor uTurnFlagFromCourseAccuracy:?];
                        v193 = objc_alloc(MEMORY[0x277D01140]);
                        [v191 latitude];
                        v195 = v194;
                        [v191 longitude];
                        v197 = v196;
                        [v191 course];
                        v199 = [v193 initWithLatitude:v192 longitude:1 course:v195 followedByUTurn:v197 locationReferenceFrame:v198];
                        [array6 addObject:v199];
                      }

                      v188 = [v169 countByEnumeratingWithState:&v298 objects:v366 count:16];
                    }

                    while (v188);
                  }
                }

                v200 = [(RTTripClusterManager *)selfCopy _odPairMetricsPerClusterOrder:array3];
                v201 = objc_alloc(MEMORY[0x277D01148]);
                clusterOrderDefault_totalNumberOfRoutes = [v200 clusterOrderDefault_totalNumberOfRoutes];
                clusterOrderDefault_sumOfTraversalCountOfAllRoutes = [v200 clusterOrderDefault_sumOfTraversalCountOfAllRoutes];
                countOfTraversal2 = [v290 countOfTraversal];
                lastTimeTaken = [v290 lastTimeTaken];
                v271 = [v201 initWithAllRoutesCountForThisODPair:clusterOrderDefault_totalNumberOfRoutes allTraversalCountBetweenThisODPair:clusterOrderDefault_sumOfTraversalCountOfAllRoutes routeTraversalCount:countOfTraversal2 routeTraversalCountOnTravelDayOfWeek:0 routeTravelCountOnTravelDayOfWeekHourOfDay:0 lastTravelledDate:lastTimeTaken];
                v262 = v200;

                v206 = objc_alloc(MEMORY[0x277D01150]);
                modeOfTransport = [v290 modeOfTransport];
                [v290 maxTripTime];
                v209 = v208;
                [v290 minTripTime];
                v211 = v210;
                [v290 avgTripTime];
                v213 = v212;
                [v290 maxTripDistance];
                v215 = v214;
                [v290 minTripDistance];
                v217 = v216;
                [v290 avgTripDistance];
                v218 = v209;
                *&v219 = v211;
                *&v220 = v213;
                *&v221 = v215;
                *&v222 = v217;
                *&v224 = v223;
                *&v223 = v218;
                v225 = [v206 initWithRouteTravelMode:modeOfTransport maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:array6 meanTravelTimeEstimateInSeconds:v271 maxTravelledDistanceEstimateInMeters:v223 minTravelledDistanceEstimateInMeters:v219 meanTravelledDistanceEstimateInMeters:v220 routeLocations:v221 learnedRouteLocations:v222 learnedRouteMetrics:v224];
                array8 = [MEMORY[0x277CBEB18] array];
                [array8 addObject:v225];
                v257 = v225;
                v227 = objc_alloc(MEMORY[0x277D01130]);
                clusterID8 = [v290 clusterID];
                [v290 avgTripTime];
                v230 = v229;
                [v290 avgTripDistance];
                v231 = v230;
                *&v233 = v232;
                *&v232 = v231;
                v234 = [v227 initWithLearnedRouteId:clusterID8 routeStartLocation:v269 routeEndLocation:v268 travelTimeEntireRouteSec:array8 travelDistanceEntireRouteMeter:v264 travelModeRoutes:v263 routeStartLocationWithReferenceFrame:v232 routeEndLocationWithReferenceFrame:v233];

                [array addObject:v234];
                if ([array6 count])
                {
                  v235 = 0.0;
                }

                else
                {
                  v241 = MEMORY[0x277CCA9B8];
                  v242 = *MEMORY[0x277D01448];
                  if (v287)
                  {
                    v363 = *MEMORY[0x277CCA450];
                    v364 = @"Insufficient learning for all routes.";
                    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                  }

                  else
                  {
                    v361 = *MEMORY[0x277CCA450];
                    v362 = @"No routes found.";
                    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
                  }
                  v243 = ;
                  [v241 errorWithDomain:v242 code:5 userInfo:v243];
                  v235 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                }

                v244 = [MEMORY[0x277CBEAA8] now];
                [v244 timeIntervalSinceDate:timeCopy];
                v246 = v245 * 1000.0;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v247 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    v248 = objc_opt_class();
                    v249 = NSStringFromClass(v248);
                    NSStringFromSelector(a2);
                    v250 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *&v251 = COERCE_DOUBLE([array count]);
                    v252 = [obj count];
                    *buf = 138413826;
                    v348 = v249;
                    v349 = 2112;
                    v350 = v250;
                    v351 = 2048;
                    v352 = *&v251;
                    v353 = 2112;
                    v354 = v235;
                    v355 = 2112;
                    v356 = *&v272;
                    v357 = 2048;
                    v358 = v246;
                    v359 = 1024;
                    v360 = v252;
                    _os_log_impl(&dword_2304B3000, v247, OS_LOG_TYPE_INFO, "%@:%@,Learned route count,%lu,error,%@,options,%@,queryResponseTimeMSec,%.2lf,type,CurrentLoc,clusterCount,%d", buf, 0x44u);
                  }
                }

                (*(handlerCopy + 2))(handlerCopy, array, 0, COERCE_DOUBLE(*&v235));
                [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:array learnedRoutes:@"CurentLoc" type:v246];
              }

              else
              {
                v184 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
                {
                  v253 = objc_opt_class();
                  v254 = NSStringFromClass(v253);
                  v255 = [MEMORY[0x277CBEAA8] now];
                  [v255 timeIntervalSinceDate:timeCopy];
                  *buf = 138412546;
                  v348 = v254;
                  v349 = 2048;
                  v350 = v256 * 1000.0;
                  _os_log_error_impl(&dword_2304B3000, v184, OS_LOG_TYPE_ERROR, "%@,waypoint subset received data is invalid,queryResponseTimeMSec,%.2lf", buf, 0x16u);
                }

                v185 = MEMORY[0x277CCA9B8];
                v367 = *MEMORY[0x277CCA450];
                v368 = @"Internal error in processing selected cluster (2)";
                v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
                tripLocations4 = [v185 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v186];

                (*(handlerCopy + 2))(handlerCopy, 0, 0, tripLocations4);
                array6 = [MEMORY[0x277CBEAA8] now];
                [array6 timeIntervalSinceDate:timeCopy];
                [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:0 learnedRoutes:@"CL-InvalidWP" type:v187 * 1000.0];
              }
            }

            _Block_object_dispose(&v303, 8);
LABEL_102:

            goto LABEL_103;
          }

          v101 = v277;
LABEL_99:
          v133 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          v277 = v101;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v143 = objc_opt_class();
            v144 = NSStringFromClass(v143);
            NSStringFromSelector(a2);
            v145 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v146 = [MEMORY[0x277CBEAA8] now];
            [v146 timeIntervalSinceDate:timeCopy];
            *buf = 138413058;
            v348 = v144;
            v349 = 2112;
            v350 = v145;
            v351 = 2112;
            v352 = v272;
            v353 = 2048;
            v354 = v147 * 1000.0;
            _os_log_error_impl(&dword_2304B3000, v133, OS_LOG_TYPE_ERROR, "%@:%@,outputData or clusterRoadData is nil,options,%@,queryResponseTimeMSec,%.2lf", buf, 0x2Au);
          }

          v134 = MEMORY[0x277CCA9B8];
          v372 = *MEMORY[0x277CCA450];
          v373 = @"Internal error in cluster selection (2).";
          v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v373 forKeys:&v372 count:1];
          v281 = [v134 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v135];

          (*(handlerCopy + 2))(handlerCopy, 0, 0, v281);
          v292 = [MEMORY[0x277CBEAA8] now];
          [v292 timeIntervalSinceDate:timeCopy];
          [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:0 learnedRoutes:@"CL-InvalidSelectedClusterData" type:v136 * 1000.0];
          goto LABEL_102;
        }
      }

      goto LABEL_99;
    }

    v101 = 0;
    goto LABEL_99;
  }

  v94 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    v137 = objc_opt_class();
    v138 = NSStringFromClass(v137);
    NSStringFromSelector(a2);
    v139 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v140 = [obj count];
    v141 = [MEMORY[0x277CBEAA8] now];
    [v141 timeIntervalSinceDate:timeCopy];
    *buf = 138413570;
    v348 = v138;
    v349 = 2112;
    v350 = v139;
    v351 = 2112;
    v352 = v272;
    v353 = 2048;
    v354 = *&v89;
    v355 = 2048;
    v356 = v140;
    v357 = 2048;
    v358 = v142 * 1000.0;
    _os_log_error_impl(&dword_2304B3000, v94, OS_LOG_TYPE_ERROR, "%@:%@,cluster index >= cluster count,options,%@,index,%lu,count,%lu,queryResponseTimeMSec,%.2lf", buf, 0x3Eu);
  }

  v95 = MEMORY[0x277CCA9B8];
  v374 = *MEMORY[0x277CCA450];
  v375 = @"Internal error in cluster selection (1).";
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
  v290 = [v95 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v96];

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v290);
  v283 = [MEMORY[0x277CBEAA8] now];
  [v283 timeIntervalSinceDate:timeCopy];
  [(RTTripClusterManager *)selfCopy outputLearnedRouteSPICallDebuggingData:obj options:*&v272 queryStartTime:timeCopy queryResponseTimeMSec:0 learnedRoutes:@"CL-InvalidSelectedCluster" type:v97 * 1000.0];

LABEL_103:
  _Block_object_dispose(&v328, 8);

  _Block_object_dispose(&v334, 8);
  _Block_object_dispose(&v340, 8);

  _Block_object_dispose(v346, 8);
}

void __85__RTTripClusterManager__findRouteFromCurrentLocation_options_queryStartTime_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 tripLocations];

  if (v3)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = v4 >= 0.0 ? v4 + *(a1 + 80) : 1.79769313e308;
    [v16 distance_m];
    if (v6 <= v5)
    {
      [v16 distance_m];
      if (vabdd_f64(v7, *(*(*(a1 + 48) + 8) + 24)) > *(a1 + 80))
      {
        [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
        [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
        [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
      }

      [v16 distance_m];
      *(*(*(a1 + 48) + 8) + 24) = v8;
      [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 32)];
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) clusterID];
      v12 = [v11 UUIDString];
      [v9 setValue:v10 forKey:v12];

      v13 = *(*(*(a1 + 72) + 8) + 40);
      v14 = [*(a1 + 32) clusterID];
      v15 = [v14 UUIDString];
      [v13 setValue:v16 forKey:v15];
    }
  }
}

void __85__RTTripClusterManager__findRouteFromCurrentLocation_options_queryStartTime_handler___block_invoke_355(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [v5 tripLocations];

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)outputLearnedRouteSPICallDebuggingData:(id)data options:(id)options queryStartTime:(id)time queryResponseTimeMSec:(double)sec learnedRoutes:(id)routes type:(id)type
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  timeCopy = time;
  routesCopy = routes;
  typeCopy = type;
  if ([(RTTripClusterProcessorOptions *)self->_options recordDebuggingDataInFile])
  {
    bundleIdentifier = [optionsCopy bundleIdentifier];
    v20 = [bundleIdentifier isEqualToString:@"com.apple.routined.RoutineApp"];

    if ((v20 & 1) == 0)
    {
      v45 = timeCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setValue:typeCopy forKey:@"RTLR_SPI_QueryType_NSString"];
      v22 = objc_alloc(MEMORY[0x277D01140]);
      originVisit = [optionsCopy originVisit];
      [originVisit coordinate];
      v25 = v24;
      originVisit2 = [optionsCopy originVisit];
      [originVisit2 coordinate];
      v27 = [v22 initWithLatitude:0 longitude:1 course:v25 followedByUTurn:? locationReferenceFrame:?];
      [dictionary setValue:v27 forKey:@"RTLR_SPI_OriginCoordinate_RTLRLocation"];

      v28 = objc_alloc(MEMORY[0x277D01140]);
      destinationVisit = [optionsCopy destinationVisit];
      [destinationVisit coordinate];
      v31 = v30;
      destinationVisit2 = [optionsCopy destinationVisit];
      [destinationVisit2 coordinate];
      v33 = [v28 initWithLatitude:0 longitude:1 course:v31 followedByUTurn:? locationReferenceFrame:?];
      [dictionary setValue:v33 forKey:@"RTLR_SPI_DestinationCoordinate_RTLRLocation"];

      if (dataCopy)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dataCopy, "count")}];
        [dictionary setValue:v34 forKey:@"RTLR_SPI_ClusterCount_NSNumber"];
      }

      if (routesCopy)
      {
        [dictionary setValue:routesCopy forKey:@"RTLR_SPI_LearnedRoutes_NSArray"];
      }

      [dictionary setValue:timeCopy forKey:{@"RTLR_SPI_QueryTime_NSDate", typeCopy}];
      v35 = [MEMORY[0x277CCABB0] numberWithDouble:sec];
      [dictionary setValue:v35 forKey:@"RTLR_SPI_QueryResponseTimeMSec_NSNumber"];

      array = [MEMORY[0x277CBEB18] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v37 = dataCopy;
      v38 = [v37 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v47;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v47 != v40)
            {
              objc_enumerationMutation(v37);
            }

            clusterID = [*(*(&v46 + 1) + 8 * i) clusterID];
            [array addObject:clusterID];
          }

          v39 = [v37 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v39);
      }

      [dictionary setValue:array forKey:@"RTLR_SPI_ClusterIDArray_NSArray"];
      v43 = objc_alloc_init(MEMORY[0x277CBFCA8]);
      [v43 outputRouteLearningDebuggingDataInCLTSPFile:dictionary];

      typeCopy = v44;
      timeCopy = v45;
    }
  }
}

- (id)_getClusterLikelihoods:(id)likelihoods routeDate:(id)date
{
  v116 = a2;
  v161[16] = *MEMORY[0x277D85DE8];
  likelihoodsCopy = likelihoods;
  dateCopy = date;
  if ([likelihoodsCopy count])
  {
    v115 = dateCopy;
    v8 = [RTTripClusterSchedule getTimeIDFromDate:dateCopy];
    v133 = [RTTripClusterSchedule getWeekdayIDFromTimeID:v8];
    v132 = [RTTripClusterSchedule getHourIDFromTimeID:v8];
    v9 = [likelihoodsCopy count];
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v111 = objc_opt_class();
        v112 = NSStringFromClass(v111);
        v113 = NSStringFromSelector(v116);
        v146 = 138412802;
        v147 = v112;
        v148 = 2112;
        v149 = v113;
        v150 = 1024;
        LODWORD(v151) = v9;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@:%@,Finding best route among %d clusters", &v146, 0x1Cu);
      }
    }

    v124 = likelihoodsCopy;
    v114 = &v114;
    MEMORY[0x28223BE20](v10);
    v12 = (4 * v9 + 15) & 0x7FFFFFFF0;
    v129 = &v114 - v12;
    bzero(&v114 - v12, 4 * v9);
    MEMORY[0x28223BE20](v13);
    v128 = &v114 - v12;
    bzero(&v114 - v12, 4 * v9);
    v14 = 8 * v9;
    MEMORY[0x28223BE20](v15);
    v16 = (v14 + 15) & 0xFFFFFFFF0;
    v131 = &v114 - v16;
    bzero(&v114 - v16, v14);
    MEMORY[0x28223BE20](v17);
    v119 = &v114 - v16;
    bzero(&v114 - v16, v14);
    MEMORY[0x28223BE20](v18);
    bzero(&v114 - v16, v14);
    MEMORY[0x28223BE20](v19);
    bzero(&v114 - v16, v14);
    MEMORY[0x28223BE20](v20);
    v127 = (&v114 - v16);
    bzero(&v114 - v16, v14);
    array = [MEMORY[0x277CBEB18] array];
    if (v9 >= 1)
    {
      v117 = (&v114 - v16);
      v118 = (&v114 - v16);
      v21 = 0;
      v136 = 0;
      LODWORD(v137) = 0;
      v134 = 0;
      LODWORD(v135) = 0;
      v126 = v9 & 0x7FFFFFFF;
      v130 = *MEMORY[0x277CBE5C0];
      v22 = 0.0;
      v23 = v124;
      selfCopy = self;
      do
      {
        v24 = [v23 objectAtIndexedSubscript:v21];
        countOfTraversal = [v24 countOfTraversal];
        selfCopy2 = self;
        minimumTraversalCountForLearnedRoutes = [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes];

        if (countOfTraversal >= minimumTraversalCountForLearnedRoutes)
        {
          *&v131[8 * v21] = 0;
          v28 = v117;
          v118[v21] = 0.0;
          v28[v21] = 0.0;
          v127[v21] = 0.0;
          v29 = objc_alloc(MEMORY[0x277D01388]);
          v30 = [v23 objectAtIndexedSubscript:v21];
          clusterID = [v30 clusterID];
          v32 = [v29 initWithClusterID:clusterID];

          tripClusterRecencyStore = [(RTTripClusterManager *)selfCopy2 tripClusterRecencyStore];
          v122 = v32;
          v34 = [tripClusterRecencyStore getTripClusterRecencyWithOptions:v32];

          v121 = v34;
          if (v34)
          {
            [v34 count];
            v35 = [v34 count];
            v36 = [v23 objectAtIndexedSubscript:v21];
            v37 = 0.0;
            v38 = fmax(([v36 countOfTraversal] - v35), 0.0) * 0.5;
            *&v119[8 * v21] = v38;

            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v39 = v34;
            v40 = [v39 countByEnumeratingWithState:&v142 objects:v161 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v143;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v143 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v142 + 1) + 8 * i);
                  v45 = objc_alloc(MEMORY[0x277CBEA80]);
                  v46 = [v45 initWithCalendarIdentifier:v130];
                  startTime = [v44 startTime];
                  v48 = [MEMORY[0x277CBEAA8] now];
                  v49 = [v46 components:16 fromDate:startTime toDate:v48 options:0];

                  v37 = v37 + exp([v49 day] * -0.0247552564);
                  *&v131[8 * v21] = v37;
                }

                v41 = [v39 countByEnumeratingWithState:&v142 objects:v161 count:16];
              }

              while (v41);
            }

            v22 = v22 + v38 + v37;
            v23 = v124;
            v50 = selfCopy;
          }

          else
          {
            v50 = selfCopy2;
          }

          v51 = objc_alloc(MEMORY[0x277D013B8]);
          v52 = [v23 objectAtIndexedSubscript:v21];
          clusterID2 = [v52 clusterID];
          v54 = [v51 initWithClusterID:clusterID2];

          tripClusterScheduleStore = [(RTTripClusterManager *)v50 tripClusterScheduleStore];
          v120 = v54;
          v56 = [tripClusterScheduleStore getTripClusterScheduleWithOptions:v54];

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v57 = v56;
          v58 = [v57 countByEnumeratingWithState:&v138 objects:v160 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v139;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v139 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v138 + 1) + 8 * j);
                v63 = +[RTTripClusterSchedule getHourIDFromTimeID:](RTTripClusterSchedule, "getHourIDFromTimeID:", [v62 timeID]);
                v64 = +[RTTripClusterSchedule getWeekdayIDFromTimeID:](RTTripClusterSchedule, "getWeekdayIDFromTimeID:", [v62 timeID]);
                if (v64 == v133)
                {
                  v65 = [v62 count];
                  LODWORD(v137) = v65 + v137;
                  v66 = [v62 count];
                  *&v129[4 * v21] = v66;
                  v67 = LODWORD(v135);
                  if (v66 > SLODWORD(v135))
                  {
                    v67 = v66;
                  }

                  LODWORD(v135) = v67;
                }

                if (v63 == v132)
                {
                  v68 = [v62 count];
                  v136 += v68;
                  v69 = [v62 count];
                  *&v128[4 * v21] = v69;
                  if (v69 <= v134)
                  {
                    v70 = v134;
                  }

                  else
                  {
                    v70 = v69;
                  }

                  v134 = v70;
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v138 objects:v160 count:16];
            }

            while (v59);
          }

          v23 = v124;
        }

        ++v21;
        self = selfCopy;
      }

      while (v21 != v126);
      v71 = 0;
      v72 = v137;
      v135 = vcvtd_n_f64_u32(LODWORD(v135), 1uLL) / v137;
      v73 = v136;
      v74 = 0.0;
      v75 = vcvtd_n_f64_u32(v134, 1uLL) / v136;
      v77 = v117;
      v76 = v118;
      while (1)
      {
        v78 = 1.0;
        if (v22 > 0.0)
        {
          v78 = (*&v119[8 * v71] + *&v131[8 * v71]) / v22;
        }

        v76[v71] = v78;
        if (v137 < 1)
        {
          goto LABEL_44;
        }

        v79 = *&v129[4 * v71];
        if (v79 >= 1)
        {
          v80 = v79 / v72;
          goto LABEL_45;
        }

        v80 = v135;
        if (v79)
        {
LABEL_44:
          v80 = 1.0;
        }

LABEL_45:
        v77[v71] = v80;
        if (v136 < 1)
        {
          goto LABEL_49;
        }

        v81 = *&v128[4 * v71];
        if (v81 < 1)
        {
          v82 = v75;
          if (v81)
          {
LABEL_49:
            v82 = 1.0;
          }
        }

        else
        {
          v82 = v81 / v73;
        }

        v127[v71] = v82;
        v83 = [v23 objectAtIndexedSubscript:v71];
        countOfTraversal2 = [v83 countOfTraversal];
        minimumTraversalCountForLearnedRoutes2 = [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes];

        if (countOfTraversal2 >= minimumTraversalCountForLearnedRoutes2)
        {
          v74 = v74 + v78 * v80 * v82;
        }

        if (v126 == ++v71)
        {
          v87 = 0;
          v88 = off_2788C2000;
          v89 = MEMORY[0x277D86220];
          *&v86 = 138413826;
          v137 = v86;
          do
          {
            v90 = 1.0;
            if (v74 > 0.0)
            {
              v90 = *v76 * *v77 * *v127 / v74;
            }

            v91 = v77;
            v92 = v124;
            v93 = [v124 objectAtIndexedSubscript:v87];
            countOfTraversal3 = [v93 countOfTraversal];
            minimumTraversalCountForLearnedRoutes3 = [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes];

            if (countOfTraversal3 < minimumTraversalCountForLearnedRoutes3)
            {
              v90 = 0.0;
            }

            v96 = objc_alloc(v88[21]);
            v97 = [v92 objectAtIndexedSubscript:v87];
            v98 = [v96 initWithCluster:v97 likelihood:v90];
            [array setObject:v98 atIndexedSubscript:v87];

            if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
            {
              v99 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
              {
                v100 = objc_opt_class();
                v101 = NSStringFromClass(v100);
                v102 = NSStringFromSelector(v116);
                v103 = [array objectAtIndexedSubscript:v87];
                clusterID3 = [v103 clusterID];
                uUIDString = [clusterID3 UUIDString];
                v106 = *v76;
                v107 = *v91;
                v108 = *v127;
                v146 = v137;
                v147 = v101;
                v148 = 2112;
                v149 = v102;
                v150 = 2048;
                v151 = v90;
                v152 = 2112;
                v153 = uUIDString;
                v154 = 2048;
                v155 = v106;
                v156 = 2048;
                v157 = v107;
                v158 = 2048;
                v159 = v108;
                _os_log_impl(&dword_2304B3000, v99, OS_LOG_TYPE_INFO, "%@,%@,likelihood,%.2f,clusterID,%@,pRecency,%.2f,pDay,%.2f,pHour,%.2f", &v146, 0x48u);

                v88 = off_2788C2000;
                v89 = MEMORY[0x277D86220];
              }
            }

            ++v87;
            ++v127;
            v77 = v91 + 1;
            ++v76;
            self = selfCopy;
          }

          while (v126 != v87);
          break;
        }
      }
    }

    dateCopy = v115;
    likelihoodsCopy = v124;
  }

  else
  {
    array = 0;
  }

  v109 = array;

  return v109;
}

- (unint64_t)_bestScheduleRoute:(id)route routeDate:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  queue = [(RTNotifier *)self queue];

  if (queue)
  {
    if (date)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "[RTTripClusterManager _bestScheduleRoute:routeDate:]";
      v32 = 1024;
      LODWORD(v33) = 2723;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", &v30, 0x12u);
    }

    if (date)
    {
LABEL_3:
      if (routeCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v30 = 136315394;
    v31 = "[RTTripClusterManager _bestScheduleRoute:routeDate:]";
    v32 = 1024;
    LODWORD(v33) = 2724;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeDate (in %s:%d)", &v30, 0x12u);
  }

  if (!routeCopy)
  {
LABEL_11:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "[RTTripClusterManager _bestScheduleRoute:routeDate:]";
      v32 = 1024;
      LODWORD(v33) = 2725;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clustersWithLikelihood (in %s:%d)", &v30, 0x12u);
    }
  }

LABEL_14:
  if (![routeCopy count])
  {
    v14 = -1;
    goto LABEL_33;
  }

  if (!date)
  {
LABEL_32:
    v14 = [(RTTripClusterManager *)self _mostTravelledRoute:routeCopy];
    goto LABEL_33;
  }

  if (![routeCopy count])
  {
    goto LABEL_36;
  }

  v12 = 0;
  v13 = 0.0;
  LODWORD(v14) = -1;
  do
  {
    v15 = [routeCopy objectAtIndexedSubscript:v12];
    [v15 likelihood];
    v17 = v16;

    if (v17 <= v13)
    {
      v14 = v14;
    }

    else
    {
      v13 = v17;
      v14 = v12;
    }

    ++v12;
  }

  while ([routeCopy count] > v12);
  if ((v14 & 0x80000000) != 0)
  {
LABEL_36:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v30 = 138412546;
        v31 = v22;
        v32 = 2112;
        v33 = v23;
        _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%@:%@,Best route not found based on recency and schedule, returning mostTravelledRoute", &v30, 0x16u);
      }
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [routeCopy objectAtIndexedSubscript:v14];
      clusterID = [v27 clusterID];
      uUIDString = [clusterID UUIDString];
      v30 = 138412802;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = uUIDString;
      _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@:%@,Best route found to be clusterID %@", &v30, 0x20u);
    }
  }

LABEL_33:

  return v14;
}

- (void)_topListRoutes:(id)routes routeDate:(id)date handler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];

  if (queue)
  {
    if (date)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTTripClusterManager _topListRoutes:routeDate:handler:]";
      v40 = 1024;
      LODWORD(v41) = 2761;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", buf, 0x12u);
    }

    if (date)
    {
LABEL_3:
      if (routesCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTTripClusterManager _topListRoutes:routeDate:handler:]";
    v40 = 1024;
    LODWORD(v41) = 2762;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeDate (in %s:%d)", buf, 0x12u);
  }

  if (!routesCopy)
  {
LABEL_11:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTTripClusterManager _topListRoutes:routeDate:handler:]";
      v40 = 1024;
      LODWORD(v41) = 2763;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clustersWithLikelihood (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v15 = [defaultsManager objectForKey:@"RTDefaultsLearnedRoutesFetchSPITopListClusterMaxNum"];

  v16 = 3;
  if (v15)
  {
    intValue = [v15 intValue];
    if (intValue >= 0)
    {
      v18 = intValue;
    }

    else
    {
      v18 = 3;
    }

    v16 = v18;
  }

  v19 = [routesCopy sortedArrayUsingComparator:&__block_literal_global_412];

  v20 = [v19 count];
  if (v16 >= v20)
  {
    v16 = v20;
  }

  if (v16 >= 1)
  {
    v21 = 0;
    v22 = MEMORY[0x277D86220];
    v23 = v16 & 0x7FFFFFFF;
    do
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = objc_opt_class();
          NSStringFromClass(v25);
          v26 = v37 = v19;
          v27 = NSStringFromSelector(a2);
          [v37 objectAtIndexedSubscript:v21];
          v33 = v35 = v15;
          [v33 clusterID];
          v32 = v34 = v16;
          uUIDString = [v32 UUIDString];
          v29 = [v37 objectAtIndexedSubscript:v21];
          [v29 likelihood];
          *buf = 138413314;
          v39 = v26;
          v40 = 2112;
          v41 = v27;
          v42 = 1024;
          v43 = v21;
          v44 = 2112;
          v45 = uUIDString;
          v46 = 2048;
          v47 = v30;
          _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "%@:%@,top list route number %d,clusterID,%@,likelihood,%.2f", buf, 0x30u);

          v16 = v34;
          v15 = v35;

          v19 = v37;
        }
      }

      ++v21;
    }

    while (v23 != v21);
  }

  v31 = [v19 subarrayWithRange:{0, v16}];
  handlerCopy[2](handlerCopy, v31, 0);
}

uint64_t __57__RTTripClusterManager__topListRoutes_routeDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 likelihood];
  v7 = v6;
  [v5 likelihood];
  if (v7 <= v8)
  {
    [v4 likelihood];
    v11 = v10;
    [v5 likelihood];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_routeScoreForDate:(id)date learnedRouteLastDate:(id)lastDate distanceInWeekday:(unint64_t *)weekday distanceInHour:(unint64_t *)hour
{
  v32 = *MEMORY[0x277D85DE8];
  lastDateCopy = lastDate;
  dateCopy = date;
  queue = [(RTNotifier *)self queue];

  if (queue)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "[RTTripClusterManager _routeScoreForDate:learnedRouteLastDate:distanceInWeekday:distanceInHour:]";
      v30 = 1024;
      v31 = 2796;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", &v28, 0x12u);
    }

    if (dateCopy)
    {
LABEL_3:
      if (lastDateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "[RTTripClusterManager _routeScoreForDate:learnedRouteLastDate:distanceInWeekday:distanceInHour:]";
    v30 = 1024;
    v31 = 2797;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeDate (in %s:%d)", &v28, 0x12u);
  }

  if (lastDateCopy)
  {
LABEL_4:
    if (weekday)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "[RTTripClusterManager _routeScoreForDate:learnedRouteLastDate:distanceInWeekday:distanceInHour:]";
    v30 = 1024;
    v31 = 2798;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedRouteLastDate (in %s:%d)", &v28, 0x12u);
  }

  if (weekday)
  {
LABEL_5:
    if (hour)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "[RTTripClusterManager _routeScoreForDate:learnedRouteLastDate:distanceInWeekday:distanceInHour:]";
    v30 = 1024;
    v31 = 2799;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceInWeekday (in %s:%d)", &v28, 0x12u);
  }

  if (!hour)
  {
LABEL_19:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "[RTTripClusterManager _routeScoreForDate:learnedRouteLastDate:distanceInWeekday:distanceInHour:]";
      v30 = 1024;
      v31 = 2800;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceInHour (in %s:%d)", &v28, 0x12u);
    }
  }

LABEL_22:
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = [currentCalendar component:512 fromDate:dateCopy];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v21 = [currentCalendar2 component:512 fromDate:lastDateCopy];

  v22 = v19 - v21;
  if (v19 - v21 < 0)
  {
    v22 = v21 - v19;
  }

  *weekday = v22;
  currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
  v24 = [currentCalendar3 component:32 fromDate:dateCopy];

  currentCalendar4 = [MEMORY[0x277CBEA80] currentCalendar];
  v26 = [currentCalendar4 component:32 fromDate:lastDateCopy];

  v27 = v26 - v24;
  if (v24 >= v26)
  {
    v27 = v24 - v26;
  }

  *hour = v27;
}

- (unint64_t)_bestRoute:(id)route routeDate:(id)date
{
  v35 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  dateCopy = date;
  queue = [(RTNotifier *)self queue];

  if (queue)
  {
    if (routeCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *&v28[8] = 136315394;
      *&v28[12] = "[RTTripClusterManager _bestRoute:routeDate:]";
      v29 = 1024;
      LODWORD(v30) = 2823;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusters (in %s:%d)", &v28[8], 0x12u);
    }

    if (dateCopy)
    {
      goto LABEL_4;
    }

LABEL_20:
    v10 = [(RTTripClusterManager *)self _mostTravelledRoute:routeCopy];
    goto LABEL_21;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *&v28[8] = 136315394;
    *&v28[12] = "[RTTripClusterManager _bestRoute:routeDate:]";
    v29 = 1024;
    LODWORD(v30) = 2822;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", &v28[8], 0x12u);
  }

  if (!routeCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!dateCopy)
  {
    goto LABEL_20;
  }

LABEL_4:
  v10 = 0;
  if ([routeCopy count])
  {
    v11 = 0;
    v12 = 23;
    v13 = 6;
    do
    {
      *v28 = 0uLL;
      v14 = [routeCopy objectAtIndexedSubscript:v11];
      countOfTraversal = [v14 countOfTraversal];
      minimumTraversalCountForLearnedRoutes = [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes];

      if (countOfTraversal >= minimumTraversalCountForLearnedRoutes)
      {
        v17 = [routeCopy objectAtIndexedSubscript:v11];
        lastTimeTaken = [v17 lastTimeTaken];
        [(RTTripClusterManager *)self _routeScoreForDate:dateCopy learnedRouteLastDate:lastTimeTaken distanceInWeekday:&v28[8] distanceInHour:v28];

        if (*v28 < __PAIR128__(v13, v12))
        {
          v13 = *&v28[8];
          v12 = *v28;
          v10 = v11;
        }
      }

      ++v11;
    }

    while (v11 < [routeCopy count]);
  }

  if (v10 >= [routeCopy count])
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(aSelector);
      v26 = [routeCopy count];
      *&v28[8] = 138413058;
      *&v28[12] = v24;
      v29 = 2112;
      v30 = v25;
      v31 = 2048;
      v32 = v10;
      v33 = 2048;
      v34 = v26;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@:%@,Unexpected!!,selectedClusterIndex is out of range,index,%lu,cluster count,%lu", &v28[8], 0x2Au);
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (BOOL)_significantNonDriveClusterForFetchSPI:(id)i
{
  v30 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (!iCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[RTTripClusterManager _significantNonDriveClusterForFetchSPI:]";
      v26 = 1024;
      LODWORD(v27) = 2864;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster (in %s:%d)", &v24, 0x12u);
    }
  }

  modeOfTransport = [iCopy modeOfTransport];
  if ((modeOfTransport & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_23;
  }

  if (modeOfTransport == 1)
  {
    countOfWalkTraversal = [iCopy countOfWalkTraversal];
    if (countOfWalkTraversal >= [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes])
    {
      [iCopy avgWalkTime];
      if (v14 >= [(RTTripClusterManager *)self _minimumTravelTimeForSignificantNonDriveCluster])
      {
        [iCopy avgWalkDistance];
        if (v15 >= [(RTTripClusterManager *)self _minimumTravelDistanceForSignificantNonDriveCluster])
        {
          [iCopy avgWalkTime];
          if (v16 <= -[RTTripClusterManager _maximumTravelTimeForSignificantNonDriveCluster:](self, "_maximumTravelTimeForSignificantNonDriveCluster:", [iCopy clusterOrder]))
          {
            [iCopy avgWalkDistance];
LABEL_18:
            if (v12 <= -[RTTripClusterManager _maximumTravelDistanceForSignificantNonDriveCluster:](self, "_maximumTravelDistanceForSignificantNonDriveCluster:", [iCopy clusterOrder]))
            {
              v22 = 1;
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  else if (modeOfTransport == 3)
  {
    countOfBikeTraversal = [iCopy countOfBikeTraversal];
    if (countOfBikeTraversal >= [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes])
    {
      [iCopy avgBikeTime];
      if (v9 >= [(RTTripClusterManager *)self _minimumTravelTimeForSignificantNonDriveCluster])
      {
        [iCopy avgBikeDistance];
        if (v10 >= [(RTTripClusterManager *)self _minimumTravelDistanceForSignificantNonDriveCluster])
        {
          [iCopy avgBikeTime];
          if (v11 <= -[RTTripClusterManager _maximumTravelTimeForSignificantNonDriveCluster:](self, "_maximumTravelTimeForSignificantNonDriveCluster:", [iCopy clusterOrder]))
          {
            [iCopy avgBikeDistance];
            goto LABEL_18;
          }
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      clusterID = [iCopy clusterID];
      v24 = 138412802;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = clusterID;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@:%@ Skipping non drive cluster,%@", &v24, 0x20u);
    }
  }

LABEL_23:
  v22 = 0;
LABEL_24:

  return v22;
}

- (id)_learnedRouteForNoDriveCluster:(id)cluster routeStartLocation:(id)location routeEndLocation:(id)endLocation metricsCollector:(id)collector
{
  v67 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  locationCopy = location;
  endLocationCopy = endLocation;
  collectorCopy = collector;
  if (clusterCopy)
  {
    if (locationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v64 = "[RTTripClusterManager _learnedRouteForNoDriveCluster:routeStartLocation:routeEndLocation:metricsCollector:]";
      v65 = 1024;
      v66 = 2899;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster (in %s:%d)", buf, 0x12u);
    }

    if (locationCopy)
    {
LABEL_3:
      if (endLocationCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "[RTTripClusterManager _learnedRouteForNoDriveCluster:routeStartLocation:routeEndLocation:metricsCollector:]";
    v65 = 1024;
    v66 = 2900;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeStartLocation (in %s:%d)", buf, 0x12u);
  }

  if (endLocationCopy)
  {
LABEL_4:
    if (collectorCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "[RTTripClusterManager _learnedRouteForNoDriveCluster:routeStartLocation:routeEndLocation:metricsCollector:]";
    v65 = 1024;
    v66 = 2901;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeEndLocation (in %s:%d)", buf, 0x12u);
  }

  if (!collectorCopy)
  {
LABEL_15:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v64 = "[RTTripClusterManager _learnedRouteForNoDriveCluster:routeStartLocation:routeEndLocation:metricsCollector:]";
      v65 = 1024;
      v66 = 2902;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metricsCollector (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  if ([(RTTripClusterManager *)self _significantNonDriveClusterForFetchSPI:clusterCopy])
  {
    [clusterCopy avgWalkTime];
    v19 = v18;
    [clusterCopy avgWalkDistance];
    v21 = v20;
    if ([clusterCopy modeOfTransport] == 3)
    {
      [clusterCopy avgBikeTime];
      v19 = v22;
      [clusterCopy avgBikeDistance];
      v21 = v23;
    }

    v24 = objc_alloc(MEMORY[0x277D01148]);
    clusterOrderNoDrive_totalNumberOfRoutes = [collectorCopy clusterOrderNoDrive_totalNumberOfRoutes];
    clusterOrderNoDrive_sumOfTraversalCountOfAllRoutes = [collectorCopy clusterOrderNoDrive_sumOfTraversalCountOfAllRoutes];
    countOfTraversal = [clusterCopy countOfTraversal];
    lastTimeTaken = [clusterCopy lastTimeTaken];
    v62 = [v24 initWithAllRoutesCountForThisODPair:clusterOrderNoDrive_totalNumberOfRoutes allTraversalCountBetweenThisODPair:clusterOrderNoDrive_sumOfTraversalCountOfAllRoutes routeTraversalCount:countOfTraversal routeTraversalCountOnTravelDayOfWeek:0 routeTravelCountOnTravelDayOfWeekHourOfDay:0 lastTravelledDate:lastTimeTaken];

    v29 = objc_alloc(MEMORY[0x277D01150]);
    modeOfTransport = [clusterCopy modeOfTransport];
    v31 = v19;
    v32 = v21;
    LODWORD(v33) = -1.0;
    LODWORD(v34) = -1.0;
    LODWORD(v35) = -1.0;
    LODWORD(v36) = -1.0;
    *&v37 = v31;
    *&v38 = v32;
    v39 = [v29 initWithRouteTravelMode:modeOfTransport maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:0 meanTravelTimeEstimateInSeconds:v62 maxTravelledDistanceEstimateInMeters:v33 minTravelledDistanceEstimateInMeters:v34 meanTravelledDistanceEstimateInMeters:v37 routeLocations:v35 learnedRouteLocations:v36 learnedRouteMetrics:v38];
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v39];
    v41 = collectorCopy;
    v42 = objc_alloc(MEMORY[0x277D01140]);
    [locationCopy coordinate];
    v44 = v43;
    [locationCopy coordinate];
    v46 = v45;
    [locationCopy course];
    v48 = [v42 initWithLatitude:0 longitude:1 course:v44 followedByUTurn:v46 locationReferenceFrame:v47];
    v49 = objc_alloc(MEMORY[0x277D01140]);
    [endLocationCopy coordinate];
    v51 = v50;
    [endLocationCopy coordinate];
    v53 = v52;
    [endLocationCopy course];
    v55 = [v49 initWithLatitude:0 longitude:1 course:v51 followedByUTurn:v53 locationReferenceFrame:v54];
    v56 = objc_alloc(MEMORY[0x277D01130]);
    clusterID = [clusterCopy clusterID];
    *&v58 = v31;
    *&v59 = v32;
    v60 = [v56 initWithLearnedRouteId:clusterID routeStartLocation:locationCopy routeEndLocation:endLocationCopy travelTimeEntireRouteSec:array travelDistanceEntireRouteMeter:v48 travelModeRoutes:v55 routeStartLocationWithReferenceFrame:v58 routeEndLocationWithReferenceFrame:v59];

    collectorCopy = v41;
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

- (void)_routeLocationsForCluster:(id)cluster inRouteLocations:(id)locations learnedRouteLocations:(id)routeLocations fetchAllRouteLocations:(BOOL)allRouteLocations
{
  v106 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  locationsCopy = locations;
  routeLocationsCopy = routeLocations;
  array = [MEMORY[0x277CBEB18] array];
  v14 = array;
  if (allRouteLocations)
  {
    v15 = array;
    v85 = routeLocationsCopy;
    v86 = locationsCopy;
    v16 = objc_alloc(MEMORY[0x277D013A8]);
    v91 = clusterCopy;
    clusterID = [clusterCopy clusterID];
    v18 = [v16 initWithClusterID:clusterID];

    selfCopy = self;
    tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
    v20 = [tripClusterRouteStore getTripClusterRouteWithOptions:v18];

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v20;
    v21 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v96;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v96 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v95 + 1) + 8 * i);
          v26 = [RTTripClusterWaypoint alloc];
          clusterID2 = [v25 clusterID];
          clRoadID = [v25 clRoadID];
          [v25 latitude];
          v30 = v29;
          [v25 longitude];
          v32 = v31;
          [v25 course];
          v34 = -[RTTripClusterWaypoint initWithClusterID:clRoadID:latitude:longitude:course:sequence:followedByUTurn:](v26, "initWithClusterID:clRoadID:latitude:longitude:course:sequence:followedByUTurn:", clusterID2, clRoadID, [v25 sequence], objc_msgSend(v25, "followedByUTurn"), v30, v32, v33);
          [v15 addObject:v34];
        }

        v22 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v22);
    }

    v35 = 0;
    self = selfCopy;
    clusterCopy = v91;
    routeLocationsCopy = v85;
    locationsCopy = v86;
    v14 = v15;
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v36 = objc_alloc(MEMORY[0x277D013C8]);
    clusterID3 = [clusterCopy clusterID];
    v35 = [v36 initWithClusterID:clusterID3];

    tripClusterWaypointStore = [(RTTripClusterManager *)self tripClusterWaypointStore];
    v39 = [tripClusterWaypointStore getTripClusterWaypointWithOptions:v35];
    [v14 addObjectsFromArray:v39];

    if ([v14 count])
    {
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      clusterID4 = [clusterCopy clusterID];
      v63 = [(RTTripClusterManager *)self getWaypointsFromOldStore:clusterID4];
      [v14 addObjectsFromArray:v63];

      if (!v14)
      {
        goto LABEL_26;
      }
    }
  }

  if ([v14 count])
  {
    v92 = clusterCopy;
    obja = v35;
    selfCopy2 = self;
    maximumLocationsInALearnedRoute = [(RTTripClusterManager *)self maximumLocationsInALearnedRoute];
    v40 = [MEMORY[0x277CBEAA8] now];
    if ([v14 count])
    {
      v41 = 0;
      do
      {
        v42 = objc_autoreleasePoolPush();
        v43 = [v14 objectAtIndexedSubscript:v41];
        [v43 latitude];
        v45 = v44;
        v46 = [v14 objectAtIndexedSubscript:v41];
        [v46 longitude];
        v48 = CLLocationCoordinate2DMake(v45, v47);

        v49 = [v14 objectAtIndexedSubscript:v41];
        LODWORD(v46) = [v49 followedByUTurn];

        if (v46)
        {
          v50 = 20.0;
        }

        else
        {
          v50 = 10.0;
        }

        v51 = objc_alloc(MEMORY[0x277CE41F8]);
        v52 = [v14 objectAtIndexedSubscript:v41];
        [v52 course];
        v54 = v53;
        v55 = [v14 objectAtIndexedSubscript:v41];
        v56 = [v51 initWithCoordinate:v40 altitude:v48.latitude horizontalAccuracy:v48.longitude verticalAccuracy:-1.0 course:-1.0 courseAccuracy:-1.0 speed:v54 speedAccuracy:v50 timestamp:{-1.0, objc_msgSend(v55, "sequence")}];

        [locationsCopy addObject:v56];
        objc_autoreleasePoolPop(v42);
        ++v41;
      }

      while (v41 < [v14 count]);
    }

    v57 = [locationsCopy count];
    if (maximumLocationsInALearnedRoute && v57 > maximumLocationsInALearnedRoute)
    {
      v58 = [MEMORY[0x277D01168] downsampleLocations:locationsCopy outputSize:?];
      v59 = [(RTTripClusterManager *)selfCopy2 _createUnionOfLocations:locationsCopy decimatedLocations:v58];
      v60 = v59;
      if (v59 && [v59 count])
      {
        [locationsCopy removeAllObjects];
        v61 = locationsCopy;
        locationsCopy = [v60 copy];
      }

      else
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          v84 = [locationsCopy count];
          *buf = 138412546;
          v100 = v83;
          v101 = 2048;
          v102 = v84;
          _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "%@,downsampleLocations failed,falling back to using all route locations,count,%lu", buf, 0x16u);
        }
      }
    }

    if ([locationsCopy count])
    {
      v69 = 0;
      do
      {
        v70 = [locationsCopy objectAtIndexedSubscript:v69];
        [v70 courseAccuracy];
        v71 = [RTTripClusterProcessor uTurnFlagFromCourseAccuracy:?];

        v72 = objc_alloc(MEMORY[0x277D01140]);
        v73 = [locationsCopy objectAtIndexedSubscript:v69];
        [v73 coordinate];
        v75 = v74;
        v76 = [locationsCopy objectAtIndexedSubscript:v69];
        [v76 coordinate];
        v78 = v77;
        v79 = [locationsCopy objectAtIndexedSubscript:v69];
        [v79 course];
        v81 = [v72 initWithLatitude:v71 longitude:1 course:v75 followedByUTurn:v78 locationReferenceFrame:v80];

        [routeLocationsCopy addObject:v81];
        ++v69;
      }

      while (v69 < [locationsCopy count]);
    }

    clusterCopy = v92;
    v35 = obja;
    goto LABEL_36;
  }

LABEL_26:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = NSStringFromSelector(a2);
      [clusterCopy clusterID];
      v68 = v67 = clusterCopy;
      *buf = 138412802;
      v100 = v65;
      v101 = 2112;
      v102 = v66;
      v103 = 2112;
      v104 = v68;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@:%@,Zero routes/locations fetched from table4,clusterId,%@", buf, 0x20u);

      clusterCopy = v67;
    }

LABEL_36:
  }
}

- (id)_createUnionOfLocations:(id)locations decimatedLocations:(id)decimatedLocations
{
  v42 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  decimatedLocationsCopy = decimatedLocations;
  v7 = [locationsCopy count];
  if (v7 <= [decimatedLocationsCopy count] || !objc_msgSend(locationsCopy, "count") || !objc_msgSend(decimatedLocationsCopy, "count"))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      array = 0;
      goto LABEL_21;
    }

    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    if (locationsCopy)
    {
      v33 = [locationsCopy count];
      if (decimatedLocationsCopy)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0;
      if (decimatedLocationsCopy)
      {
LABEL_26:
        v34 = [decimatedLocationsCopy count];
LABEL_29:
        *buf = 138412802;
        v37 = v32;
        v38 = 2048;
        v39 = v33;
        v40 = 2048;
        v41 = v34;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@,_createUnionOfLocations input arguments are bad,inRouteLoc count,%lu, decimatedLoc count,%lu", buf, 0x20u);

        goto LABEL_20;
      }
    }

    v34 = 0;
    goto LABEL_29;
  }

  array = [MEMORY[0x277CBEB18] array];
  if ([locationsCopy count])
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x277D86220];
    *&v9 = 138412546;
    v35 = v9;
    while (v10 < [decimatedLocationsCopy count])
    {
      v13 = [locationsCopy objectAtIndexedSubscript:v11];
      [v13 speedAccuracy];
      v15 = v14;

      v16 = [decimatedLocationsCopy objectAtIndexedSubscript:v10];
      [v16 speedAccuracy];
      v18 = v17;

      if (v15 != v18)
      {
        break;
      }

      v19 = [decimatedLocationsCopy objectAtIndexedSubscript:v10];
      [array addObject:v19];

      ++v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = v35;
          v37 = v22;
          v38 = 2048;
          v39 = v10;
          v23 = v20;
          v24 = "%@,_createUnionOfLocations selecting decmatedLoc index,%lu";
          goto LABEL_18;
        }

        goto LABEL_14;
      }

LABEL_15:
      if (++v11 >= [locationsCopy count])
      {
        goto LABEL_21;
      }
    }

    v25 = [locationsCopy objectAtIndexedSubscript:v11];
    [v25 courseAccuracy];
    v26 = [RTTripClusterProcessor uTurnFlagFromCourseAccuracy:?];

    if (!v26)
    {
      goto LABEL_15;
    }

    v27 = [locationsCopy objectAtIndexedSubscript:v11];
    [array addObject:v27];

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v22 = NSStringFromClass(v28);
      *buf = v35;
      v37 = v22;
      v38 = 2048;
      v39 = v11;
      v23 = v20;
      v24 = "%@,_createUnionOfLocations selecting inRouteLoc index with uturn flag,%lu";
LABEL_18:
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0x16u);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_21:

  return array;
}

- (void)_findNonDriveClusterForCommuteID:(id)d tripClusters:(id)clusters beforeDriveCluster:(id *)cluster afterDriveCluster:(id *)driveCluster
{
  selfCopy = self;
  aSelector = a2;
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clustersCopy = clusters;
  v11 = clustersCopy;
  if (dCopy)
  {
    if (clustersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTTripClusterManager _findNonDriveClusterForCommuteID:tripClusters:beforeDriveCluster:afterDriveCluster:]";
      v40 = 1024;
      LODWORD(v41) = 3089;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: commuteID (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
LABEL_3:
      if (cluster)
      {
        goto LABEL_4;
      }

LABEL_12:
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[RTTripClusterManager _findNonDriveClusterForCommuteID:tripClusters:beforeDriveCluster:afterDriveCluster:]";
        v40 = 1024;
        LODWORD(v41) = 3091;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: beforeDriveCluster (in %s:%d)", buf, 0x12u);
      }

      if (driveCluster)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTTripClusterManager _findNonDriveClusterForCommuteID:tripClusters:beforeDriveCluster:afterDriveCluster:]";
    v40 = 1024;
    LODWORD(v41) = 3090;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusters (in %s:%d)", buf, 0x12u);
  }

  if (!cluster)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!driveCluster)
  {
LABEL_15:
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTTripClusterManager _findNonDriveClusterForCommuteID:tripClusters:beforeDriveCluster:afterDriveCluster:]";
      v40 = 1024;
      LODWORD(v41) = 3092;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: afterDriveCluster (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (!v17)
  {
    goto LABEL_33;
  }

  v18 = v17;
  v19 = *v35;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v34 + 1) + 8 * i);
      commuteID = [v21 commuteID];
      v23 = [commuteID isEqual:dCopy];

      if (v23)
      {
        if ([v21 clusterOrder] == 1)
        {
          v24 = v21;
          *cluster = v21;
          if (!v21)
          {
            continue;
          }
        }

        else
        {
          if ([v21 clusterOrder] == 2)
          {
            v25 = v21;
            *driveCluster = v21;
          }

          if (!*cluster)
          {
            continue;
          }
        }

        if (*driveCluster)
        {
          goto LABEL_33;
        }
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v34 objects:v48 count:16];
  }

  while (v18);
LABEL_33:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(aSelector);
      v30 = *cluster;
      v31 = *driveCluster;
      *buf = 138413314;
      v39 = v28;
      v40 = 2112;
      v41 = v29;
      v42 = 2112;
      v43 = dCopy;
      v44 = 2112;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@:%@ NonDrive cluster for commuteID,%@,before,%@,after,%@", buf, 0x34u);
    }
  }
}

- (id)_createNonDriveRTLearnedRouteTravelMode:(id)mode totalNumberOfRoutes:(int)routes sumOfTraversalCountOfAllRoutes:(int)allRoutes
{
  v41 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  if (!modeCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v35 = 136315394;
      v36 = "[RTTripClusterManager _createNonDriveRTLearnedRouteTravelMode:totalNumberOfRoutes:sumOfTraversalCountOfAllRoutes:]";
      v37 = 1024;
      LODWORD(v38) = 3118;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripCluster (in %s:%d)", &v35, 0x12u);
    }
  }

  if ([modeCopy modeOfTransport] == 1)
  {
    [modeCopy avgWalkTime];
    v11 = v10;
    [modeCopy avgWalkDistance];
    v13 = v12;
    countOfWalkTraversal = [modeCopy countOfWalkTraversal];
LABEL_9:
    v17 = countOfWalkTraversal;
    v18 = objc_alloc(MEMORY[0x277D01148]);
    lastTimeTaken = [modeCopy lastTimeTaken];
    v20 = [v18 initWithAllRoutesCountForThisODPair:routes allTraversalCountBetweenThisODPair:allRoutes routeTraversalCount:v17 routeTraversalCountOnTravelDayOfWeek:0 routeTravelCountOnTravelDayOfWeekHourOfDay:0 lastTravelledDate:lastTimeTaken];

    v21 = objc_alloc(MEMORY[0x277D01150]);
    modeOfTransport = [modeCopy modeOfTransport];
    *&v23 = v11;
    *&v24 = v13;
    LODWORD(v25) = -1.0;
    LODWORD(v26) = -1.0;
    LODWORD(v27) = -1.0;
    LODWORD(v28) = -1.0;
    v29 = [v21 initWithRouteTravelMode:modeOfTransport maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:0 meanTravelTimeEstimateInSeconds:v20 maxTravelledDistanceEstimateInMeters:v25 minTravelledDistanceEstimateInMeters:v26 meanTravelledDistanceEstimateInMeters:v23 routeLocations:v27 learnedRouteLocations:v28 learnedRouteMetrics:v24];
    goto LABEL_13;
  }

  if ([modeCopy modeOfTransport] == 3)
  {
    [modeCopy avgBikeTime];
    v11 = v15;
    [modeCopy avgBikeDistance];
    v13 = v16;
    countOfWalkTraversal = [modeCopy countOfBikeTraversal];
    goto LABEL_9;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromSelector(a2);
    modeOfTransport2 = [modeCopy modeOfTransport];
    v35 = 138412802;
    v36 = v32;
    v37 = 2112;
    v38 = v33;
    v39 = 1024;
    v40 = modeOfTransport2;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@:%@ unexpected cluster transport mode,%d", &v35, 0x1Cu);
  }

  v29 = 0;
LABEL_13:

  return v29;
}

- (id)_odPairMetricsPerClusterOrder:(id)order
{
  v24 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  if (!orderCopy)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTTripClusterManager _odPairMetricsPerClusterOrder:]";
      v22 = 1024;
      v23 = 3162;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: allODTripClusters (in %s:%d)", buf, 0x12u);
    }
  }

  if ([orderCopy count])
  {
    v5 = objc_alloc_init(RTTripClusterMetricsCollector);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = orderCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = v7;
    v9 = *v16;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([MEMORY[0x277D01370] _isValidClusterOrder:{objc_msgSend(v11, "clusterOrder", v15)}])
        {
          if (![v11 clusterOrder])
          {
            goto LABEL_18;
          }

          if ([v11 modeOfTransport] == 1)
          {
            countOfWalkTraversal = [v11 countOfWalkTraversal];
            goto LABEL_17;
          }

          if ([v11 modeOfTransport] == 3)
          {
            countOfWalkTraversal = [v11 countOfBikeTraversal];
LABEL_17:
            v13 = countOfWalkTraversal;
          }

          else
          {
LABEL_18:
            v13 = 0;
          }

          if ([v11 clusterOrder])
          {
            if ([v11 clusterOrder] == 1)
            {
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderBeforeDrive_totalNumberOfRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderBeforeDrive_totalNumberOfRoutes]+ 1];
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderBeforeDrive_sumOfTraversalCountOfAllRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderBeforeDrive_sumOfTraversalCountOfAllRoutes]+ v13];
            }

            else if ([v11 clusterOrder] == 2)
            {
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderAfterDrive_totalNumberOfRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderAfterDrive_totalNumberOfRoutes]+ 1];
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderAfterDrive_sumOfTraversalCountOfAllRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderAfterDrive_sumOfTraversalCountOfAllRoutes]+ v13];
            }

            else if ([v11 clusterOrder] == 3)
            {
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderNoDrive_totalNumberOfRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderNoDrive_totalNumberOfRoutes]+ 1];
              [(RTTripClusterMetricsCollector *)v5 setClusterOrderNoDrive_sumOfTraversalCountOfAllRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderNoDrive_sumOfTraversalCountOfAllRoutes]+ v13];
            }
          }

          else
          {
            [(RTTripClusterMetricsCollector *)v5 setClusterOrderDefault_totalNumberOfRoutes:[(RTTripClusterMetricsCollector *)v5 clusterOrderDefault_totalNumberOfRoutes]+ 1];
            -[RTTripClusterMetricsCollector setClusterOrderDefault_sumOfTraversalCountOfAllRoutes:](v5, "setClusterOrderDefault_sumOfTraversalCountOfAllRoutes:", -[RTTripClusterMetricsCollector clusterOrderDefault_sumOfTraversalCountOfAllRoutes](v5, "clusterOrderDefault_sumOfTraversalCountOfAllRoutes") + [v11 countOfTraversal]);
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v8)
      {
LABEL_29:

        goto LABEL_31;
      }
    }
  }

  v5 = 0;
LABEL_31:

  return v5;
}

- (id)_learnedRouteForDriveCluster:(id)cluster tripClusters:(id)clusters routeStartLocation:(id)location routeEndLocation:(id)endLocation fetchAllRouteLocations:(BOOL)locations metricsCollector:(id)collector excludeRouteLocations:(BOOL)routeLocations
{
  locationsCopy = locations;
  v122 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  clustersCopy = clusters;
  locationCopy = location;
  endLocationCopy = endLocation;
  collectorCopy = collector;
  if (clusterCopy)
  {
    if (clustersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:]";
      v118 = 1024;
      LODWORD(v119) = 3213;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: driveCluster (in %s:%d)", buf, 0x12u);
    }

    if (clustersCopy)
    {
LABEL_3:
      if (locationCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v117 = "[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:]";
    v118 = 1024;
    LODWORD(v119) = 3214;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: odTripClusters (in %s:%d)", buf, 0x12u);
  }

  if (locationCopy)
  {
LABEL_4:
    if (endLocationCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v117 = "[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:]";
    v118 = 1024;
    LODWORD(v119) = 3215;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeStartLocation (in %s:%d)", buf, 0x12u);
  }

  if (endLocationCopy)
  {
LABEL_5:
    if (collectorCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v117 = "[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:]";
    v118 = 1024;
    LODWORD(v119) = 3216;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: routeEndLocation (in %s:%d)", buf, 0x12u);
  }

  if (!collectorCopy)
  {
LABEL_19:
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:]";
      v118 = 1024;
      LODWORD(v119) = 3217;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metricsCollector (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_22:
  if ([clusterCopy clusterOrder])
  {
    v26 = 0;
  }

  else
  {
    v113 = clustersCopy;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    [(RTTripClusterManager *)self _routeLocationsForCluster:clusterCopy inRouteLocations:array learnedRouteLocations:array2 fetchAllRouteLocations:locationsCopy];
    if ([array2 count])
    {
      selfCopy = self;
      if (routeLocations)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v109 = array;
          v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            clusterID = [clusterCopy clusterID];
            *buf = 138412802;
            v117 = v31;
            v118 = 2112;
            v119 = v32;
            v120 = 2112;
            v121 = clusterID;
            _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@:%@,excludeRouteLocations,dropping route locations for clusterID,%@", buf, 0x20u);
          }

          array = v109;
        }

        array2 = 0;
        v110 = 0;
      }

      else
      {
        v110 = array;
      }

      v35 = objc_alloc(MEMORY[0x277D01148]);
      clusterOrderDefault_totalNumberOfRoutes = [collectorCopy clusterOrderDefault_totalNumberOfRoutes];
      clusterOrderDefault_sumOfTraversalCountOfAllRoutes = [collectorCopy clusterOrderDefault_sumOfTraversalCountOfAllRoutes];
      countOfTraversal = [clusterCopy countOfTraversal];
      lastTimeTaken = [clusterCopy lastTimeTaken];
      v40 = [v35 initWithAllRoutesCountForThisODPair:clusterOrderDefault_totalNumberOfRoutes allTraversalCountBetweenThisODPair:clusterOrderDefault_sumOfTraversalCountOfAllRoutes routeTraversalCount:countOfTraversal routeTraversalCountOnTravelDayOfWeek:0 routeTravelCountOnTravelDayOfWeekHourOfDay:0 lastTravelledDate:lastTimeTaken];

      v41 = objc_alloc(MEMORY[0x277D01150]);
      modeOfTransport = [clusterCopy modeOfTransport];
      [clusterCopy maxTripTime];
      v44 = v43;
      [clusterCopy minTripTime];
      v46 = v45;
      [clusterCopy avgTripTime];
      v48 = v47;
      [clusterCopy maxTripDistance];
      v50 = v49;
      [clusterCopy minTripDistance];
      v52 = v51;
      [clusterCopy avgTripDistance];
      *&v54 = v53;
      *&v53 = v44;
      *&v55 = v46;
      *&v56 = v48;
      *&v57 = v50;
      *&v58 = v52;
      v106 = v40;
      v59 = [v41 initWithRouteTravelMode:modeOfTransport maxTravelTimeEstimateInSeconds:0 minTravelTimeEstimateInSeconds:array2 meanTravelTimeEstimateInSeconds:v40 maxTravelledDistanceEstimateInMeters:v53 minTravelledDistanceEstimateInMeters:v55 meanTravelledDistanceEstimateInMeters:v56 routeLocations:v57 learnedRouteLocations:v58 learnedRouteMetrics:v54];
      array3 = [MEMORY[0x277CBEB18] array];
      commuteID = [clusterCopy commuteID];
      v114 = 0;
      v115 = 0;
      v62 = selfCopy;
      [(RTTripClusterManager *)selfCopy _findNonDriveClusterForCommuteID:commuteID tripClusters:v113 beforeDriveCluster:&v115 afterDriveCluster:&v114];
      v63 = v115;
      v111 = v114;

      v64 = 0.0;
      v107 = v63;
      if (v63)
      {
        v65 = [(RTTripClusterManager *)selfCopy _significantNonDriveClusterForFetchSPI:v63];
        v66 = 0.0;
        v67 = v111;
        if (v65)
        {
          v68 = -[RTTripClusterManager _createNonDriveRTLearnedRouteTravelMode:totalNumberOfRoutes:sumOfTraversalCountOfAllRoutes:](selfCopy, "_createNonDriveRTLearnedRouteTravelMode:totalNumberOfRoutes:sumOfTraversalCountOfAllRoutes:", v107, [collectorCopy clusterOrderBeforeDrive_totalNumberOfRoutes], objc_msgSend(collectorCopy, "clusterOrderBeforeDrive_sumOfTraversalCountOfAllRoutes"));
          v69 = v68;
          if (v68)
          {
            [v68 meanTravelTimeEstimateInSeconds];
            v66 = v70 + 0.0;
            [v69 meanTravelledDistanceEstimateInMeters];
            v64 = v71 + 0.0;
            [array3 addObject:v69];
          }

          v62 = selfCopy;
        }
      }

      else
      {
        v66 = 0.0;
        v67 = v111;
      }

      [v59 meanTravelTimeEstimateInSeconds];
      v73 = v66 + v72;
      [v59 meanTravelledDistanceEstimateInMeters];
      v75 = v64 + v74;
      [array3 addObject:v59];
      v105 = v59;
      if (v67 && [(RTTripClusterManager *)v62 _significantNonDriveClusterForFetchSPI:v67])
      {
        v76 = -[RTTripClusterManager _createNonDriveRTLearnedRouteTravelMode:totalNumberOfRoutes:sumOfTraversalCountOfAllRoutes:](v62, "_createNonDriveRTLearnedRouteTravelMode:totalNumberOfRoutes:sumOfTraversalCountOfAllRoutes:", v67, [collectorCopy clusterOrderAfterDrive_totalNumberOfRoutes], objc_msgSend(collectorCopy, "clusterOrderAfterDrive_sumOfTraversalCountOfAllRoutes"));
        v77 = v76;
        if (v76)
        {
          [v76 meanTravelTimeEstimateInSeconds];
          v73 = v73 + v78;
          [v77 meanTravelledDistanceEstimateInMeters];
          v75 = v75 + v79;
          v80 = array3;
          [array3 addObject:v77];
        }

        else
        {
          v80 = array3;
        }
      }

      else
      {
        v80 = array3;
      }

      v81 = objc_alloc(MEMORY[0x277D01140]);
      [locationCopy coordinate];
      v83 = v82;
      [locationCopy coordinate];
      v85 = v84;
      [locationCopy course];
      v87 = [v81 initWithLatitude:0 longitude:1 course:v83 followedByUTurn:v85 locationReferenceFrame:v86];
      v88 = objc_alloc(MEMORY[0x277D01140]);
      [endLocationCopy coordinate];
      v90 = v89;
      [endLocationCopy coordinate];
      v92 = v91;
      [endLocationCopy course];
      v94 = [v88 initWithLatitude:0 longitude:1 course:v90 followedByUTurn:v92 locationReferenceFrame:v93];
      v95 = objc_alloc(MEMORY[0x277D01130]);
      clusterID2 = [clusterCopy clusterID];
      *&v97 = v73;
      *&v98 = v75;
      v26 = [v95 initWithLearnedRouteId:clusterID2 routeStartLocation:locationCopy routeEndLocation:endLocationCopy travelTimeEntireRouteSec:v80 travelDistanceEntireRouteMeter:v87 travelModeRoutes:v94 routeStartLocationWithReferenceFrame:v97 routeEndLocationWithReferenceFrame:v98];

      array = v110;
      v34 = v106;
    }

    else
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v100 = objc_opt_class();
        NSStringFromClass(v100);
        v112 = array2;
        v102 = v101 = array;
        v103 = NSStringFromSelector(a2);
        clusterID3 = [clusterCopy clusterID];
        *buf = 138412802;
        v117 = v102;
        v118 = 2112;
        v119 = v103;
        v120 = 2112;
        v121 = clusterID3;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@:%@ Zero route locations for cluster,%@, skipping...", buf, 0x20u);

        array = v101;
        array2 = v112;
      }

      v26 = 0;
    }

    clustersCopy = v113;
  }

  return v26;
}

- (void)_processAllFetchedRouteClustersForIndexRange:(id)range handler:(id)handler tripClusters:(id)clusters originLatitude:(double)latitude originLongitude:(double)longitude destLatitude:(double)destLatitude destLongitude:(double)destLongitude startIndexIncluded:(unint64_t)self0 endIndexExcluded:(unint64_t)self1 queryStartTime:(id)self2 excludeRouteLocations:(BOOL)self3
{
  v104[1] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  handlerCopy = handler;
  clustersCopy = clusters;
  timeCopy = time;
  if (clustersCopy)
  {
    if (rangeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTTripClusterManager _processAllFetchedRouteClustersForIndexRange:handler:tripClusters:originLatitude:originLongitude:destLatitude:destLongitude:startIndexIncluded:endIndexExcluded:queryStartTime:excludeRouteLocations:]";
      v91 = 1024;
      LODWORD(v92) = 3342;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripClusters (in %s:%d)", buf, 0x12u);
    }

    if (rangeCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v90 = "[RTTripClusterManager _processAllFetchedRouteClustersForIndexRange:handler:tripClusters:originLatitude:originLongitude:destLatitude:destLongitude:startIndexIncluded:endIndexExcluded:queryStartTime:excludeRouteLocations:]";
    v91 = 1024;
    LODWORD(v92) = 3343;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTTripClusterManager _processAllFetchedRouteClustersForIndexRange:handler:tripClusters:originLatitude:originLongitude:destLatitude:destLongitude:startIndexIncluded:endIndexExcluded:queryStartTime:excludeRouteLocations:]";
      v91 = 1024;
      LODWORD(v92) = 3344;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  excludedCopy = excluded;
  if ([clustersCopy count] > included)
  {
    v30 = [clustersCopy count];
    if (included < excluded && v30 >= excluded)
    {
      v84 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
      v83 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:destLatitude longitude:destLongitude];
      v82 = [(RTTripClusterManager *)self _odPairMetricsPerClusterOrder:clustersCopy];
      array = [MEMORY[0x277CBEB18] array];
      v80 = 0;
      v76 = handlerCopy;
      v77 = timeCopy;
      while (1)
      {
        v31 = [clustersCopy objectAtIndexedSubscript:included];
        countOfTraversal = [v31 countOfTraversal];
        if (countOfTraversal >= [(RTTripClusterManager *)self minimumTraversalCountForLearnedRoutes])
        {
          break;
        }

        v33 = [clustersCopy objectAtIndexedSubscript:included];
        modeOfTransport = [v33 modeOfTransport];

        if (modeOfTransport != 2)
        {
          goto LABEL_22;
        }

        v80 = 1;
LABEL_37:
        if (excluded == ++included)
        {
          if ([array count])
          {
            v52 = 0;
          }

          else
          {
            v57 = MEMORY[0x277CCA9B8];
            v58 = *MEMORY[0x277D01448];
            if (v80)
            {
              v87 = *MEMORY[0x277CCA450];
              v88 = @"Insufficient learning for all routes.";
              v59 = MEMORY[0x277CBEAC0];
              v60 = &v88;
              v61 = &v87;
            }

            else
            {
              v85 = *MEMORY[0x277CCA450];
              v86 = @"No routes found.";
              v59 = MEMORY[0x277CBEAC0];
              v60 = &v86;
              v61 = &v85;
            }

            v62 = [v59 dictionaryWithObjects:v60 forKeys:v61 count:1];
            v52 = [v57 errorWithDomain:v58 code:5 userInfo:v62];
          }

          v63 = [MEMORY[0x277CBEAA8] now];
          [v63 timeIntervalSinceDate:timeCopy];
          v65 = v64 * 1000.0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              v67 = objc_opt_class();
              v68 = NSStringFromClass(v67);
              v69 = NSStringFromSelector(a2);
              v70 = [array count];
              *buf = 138413570;
              v90 = v68;
              v91 = 2112;
              v92 = v69;
              v93 = 2048;
              includedCopy = v70;
              v95 = 2112;
              v96 = v52;
              v97 = 2112;
              v98 = rangeCopy;
              v99 = 2048;
              v100 = v65;
              _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%@:%@,Learned route count,%lu,error,%@,options,%@,queryResponseTimeMSec,%.2lf,type,ODPair", buf, 0x3Eu);
            }

            timeCopy = v77;
          }

          handlerCopy[2](handlerCopy, array, 0, v52);
          [(RTTripClusterManager *)self outputLearnedRouteSPICallDebuggingData:clustersCopy options:rangeCopy queryStartTime:timeCopy queryResponseTimeMSec:array learnedRoutes:@"ODPair" type:v65];

          goto LABEL_52;
        }
      }

LABEL_22:
      v35 = [clustersCopy objectAtIndexedSubscript:included];
      clusterOrder = [v35 clusterOrder];

      v37 = [clustersCopy objectAtIndexedSubscript:included];
      v38 = v37;
      if (clusterOrder)
      {
        clusterOrder2 = [v37 clusterOrder];

        if (clusterOrder2 != 3)
        {
          goto LABEL_35;
        }

        v38 = [clustersCopy objectAtIndexedSubscript:included];
        v40 = [(RTTripClusterManager *)self _learnedRouteForNoDriveCluster:v38 routeStartLocation:v84 routeEndLocation:v83 metricsCollector:v82];
      }

      else
      {
        LOBYTE(v75) = locations;
        v40 = -[RTTripClusterManager _learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:](self, "_learnedRouteForDriveCluster:tripClusters:routeStartLocation:routeEndLocation:fetchAllRouteLocations:metricsCollector:excludeRouteLocations:", v37, clustersCopy, v84, v83, [rangeCopy fetchAllRouteLocations], v82, v75);
      }

      v41 = v40;

      v42 = [clustersCopy objectAtIndexedSubscript:included];
      [v42 likelihood];
      [v41 setLikelihood:?];

      if (v41)
      {
        [array addObject:v41];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_36:

          goto LABEL_37;
        }

        v43 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(a2);
          *buf = 138413058;
          v90 = v45;
          v91 = 2112;
          v92 = v46;
          v93 = 2112;
          includedCopy = v41;
          v95 = 2112;
          v96 = rangeCopy;
          _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@:%@,Found learned route,%@,options,%@", buf, 0x2Au);

          excluded = excludedCopy;
LABEL_33:

          goto LABEL_34;
        }

        goto LABEL_34;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v45 = NSStringFromClass(v47);
          NSStringFromSelector(a2);
          v49 = v48 = rangeCopy;
          v50 = [clustersCopy objectAtIndexedSubscript:included];
          clusterID = [v50 clusterID];
          *buf = 138413058;
          v90 = v45;
          v91 = 2112;
          v92 = v49;
          v93 = 2112;
          includedCopy = v48;
          v95 = 2112;
          v96 = clusterID;
          _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@:%@,Learned route nil,options,%@,clusterId,%@", buf, 0x2Au);

          excluded = excludedCopy;
          handlerCopy = v76;

          rangeCopy = v48;
          timeCopy = v77;
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_36;
      }

LABEL_35:
      v41 = 0;
      goto LABEL_36;
    }
  }

  v53 = MEMORY[0x277CCA9B8];
  v54 = *MEMORY[0x277D01448];
  v103 = *MEMORY[0x277CCA450];
  v104[0] = @"Internal array indexes inconsistent.";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:&v103 count:1];
  v52 = [v53 errorWithDomain:v54 code:0 userInfo:v55];

  v56 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v73 = NSStringFromSelector(a2);
    v74 = [clustersCopy count];
    *buf = 138413826;
    v90 = v72;
    v91 = 2112;
    v92 = v73;
    v93 = 2048;
    includedCopy = included;
    v95 = 2048;
    v96 = excludedCopy;
    v97 = 2048;
    v98 = v74;
    v99 = 2112;
    v100 = *&v52;
    v101 = 2112;
    v102 = rangeCopy;
    _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@:%@,startIndex,%lu,endIndex,%lu,cluster count,%lu,error,%@,options,%@", buf, 0x48u);
  }

  handlerCopy[2](handlerCopy, 0, 0, v52);
LABEL_52:
}

- (id)_removeEmptyWaypointClusters:(id)clusters
{
  v39 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v5 = [clustersCopy count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    v7 = MEMORY[0x277D86220];
    do
    {
      --v6;
      tripClusterWaypointStore = [(RTTripClusterManager *)self tripClusterWaypointStore];
      v9 = [clustersCopy objectAtIndexedSubscript:v6];
      clusterID = [v9 clusterID];
      v11 = [tripClusterWaypointStore getTripClusterWaypointDataCountForClusterID:clusterID];

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v13 = [clustersCopy objectAtIndexedSubscript:v6];
        clusterID2 = [v13 clusterID];
        v15 = [RTTripClusterProcessor getWaypointIDFromClusterID:clusterID2];

        v12 = [objc_alloc(MEMORY[0x277D013A8]) initWithClusterID:v15];
        tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
        v17 = [tripClusterRouteStore getTripClusterRouteWithOptions:v12];

        if (![v17 count])
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = objc_opt_class();
              v30 = NSStringFromClass(v25);
              v26 = NSStringFromSelector(a2);
              v31 = [clustersCopy objectAtIndexedSubscript:v6];
              clusterID3 = [v31 clusterID];
              uUIDString = [clusterID3 UUIDString];
              *buf = 138412802;
              v34 = v30;
              v35 = 2112;
              v36 = v26;
              v37 = 2112;
              v38 = uUIDString;
              _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@,%@,Removing empty waypoints cluster from SPI fetch clusterID,%@", buf, 0x20u);

              v7 = MEMORY[0x277D86220];
            }
          }

          [clustersCopy removeObjectAtIndex:v6];

          goto LABEL_15;
        }
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          v21 = [clustersCopy objectAtIndexedSubscript:v6];
          clusterID4 = [v21 clusterID];
          uUIDString2 = [clusterID4 UUIDString];
          *buf = 138412802;
          v34 = v19;
          v35 = 2112;
          v36 = v20;
          v37 = 2112;
          v38 = uUIDString2;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@,%@,Possible SPI fetch clusterID,%@", buf, 0x20u);

          v7 = MEMORY[0x277D86220];
        }

LABEL_15:
      }
    }

    while (v6 > 0);
  }

  return clustersCopy;
}

- (int64_t)_fetchLearnedRoutesWithOptions:(id)options handler:(id)handler
{
  v166[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager _fetchLearnedRoutesWithOptions:handler:]";
      v156 = 1024;
      LODWORD(v157) = 3464;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager _fetchLearnedRoutesWithOptions:handler:]";
      v156 = 1024;
      LODWORD(v157) = 3465;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v119 = [MEMORY[0x277CBEAA8] now];
  originVisit = [optionsCopy originVisit];
  if (originVisit)
  {

    goto LABEL_12;
  }

  destinationVisit = [optionsCopy destinationVisit];
  v11 = destinationVisit == 0;

  if (!v11)
  {
LABEL_12:
    originVisit2 = [optionsCopy originVisit];
    if (originVisit2)
    {
      originVisit3 = [optionsCopy originVisit];
      [originVisit3 coordinate];
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    originVisit4 = [optionsCopy originVisit];
    if (originVisit4)
    {
      originVisit5 = [optionsCopy originVisit];
      [originVisit5 coordinate];
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    destinationVisit2 = [optionsCopy destinationVisit];
    if (destinationVisit2)
    {
      destinationVisit3 = [optionsCopy destinationVisit];
      [destinationVisit3 coordinate];
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    destinationVisit4 = [optionsCopy destinationVisit];
    if (destinationVisit4)
    {
      destinationVisit5 = [optionsCopy destinationVisit];
      [destinationVisit5 coordinate];
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }

    v123 = [objc_alloc(MEMORY[0x277D01368]) initWithStartAndEndVisitLatitude:v15 startLongitude:v19 endLatitude:v23 endLongitude:v27];
    array = [MEMORY[0x277CBEB18] array];
    v140 = 0;
    v141 = &v140;
    v142 = 0x3032000000;
    v143 = __Block_byref_object_copy__72;
    v144 = __Block_byref_object_dispose__72;
    v145 = 0;
    v29 = dispatch_semaphore_create(0);
    tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __63__RTTripClusterManager__fetchLearnedRoutesWithOptions_handler___block_invoke;
    v136[3] = &unk_2788C9568;
    v139 = &v140;
    v122 = array;
    v137 = v122;
    v31 = v29;
    v138 = v31;
    [tripClusterStore fetchTripClustersWithOptions:v123 handler:v136];

    v32 = v31;
    v33 = [MEMORY[0x277CBEAA8] now];
    v34 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v32, v34))
    {
      v35 = [MEMORY[0x277CBEAA8] now];
      [v35 timeIntervalSinceDate:v33];
      v37 = v36;
      v38 = objc_opt_new();
      v39 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v41 = [callStackSymbols filteredArrayUsingPredicate:v39];
      firstObject = [v41 firstObject];

      [v38 submitToCoreAnalytics:firstObject type:1 duration:v37];
      v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v44 = MEMORY[0x277CCA9B8];
      v166[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v166 count:1];
      v46 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v45];

      if (v46)
      {
        v47 = v46;
      }
    }

    else
    {
      v46 = 0;
    }

    v120 = v46;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = [v122 count];
        *buf = 134217984;
        *&buf[4] = v49;
        _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "Fetched %lu clusters", buf, 0xCu);
      }
    }

    v50 = v141[5];
    if (v50 || (v50 = v120) != 0)
    {
      array2 = v50;
      v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        v75 = NSStringFromSelector(a2);
        v76 = v141[5];
        *buf = 138413314;
        *&buf[4] = v74;
        v156 = 2112;
        v157 = v75;
        v158 = 2112;
        v159 = v76;
        v160 = 2112;
        v161 = v120;
        v162 = 2112;
        v163 = optionsCopy;
        _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "%@:%@,Error in fetching tripClusters,fetchErr,%@,semaErr,%@,options,%@", buf, 0x34u);
      }

      v53 = MEMORY[0x277CCA9B8];
      v153 = *MEMORY[0x277CCA450];
      v154 = @"Internal error in fetching route clusters.";
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
      v55 = [v53 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v54];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v55);
LABEL_39:
      v56 = 2;
      goto LABEL_40;
    }

    if ([(RTTripClusterProcessorOptions *)self->_options learnedRoutesCurrentLocationSPIEnabled])
    {
      if (v122)
      {
        v63 = [v122 count];
        v64 = v122;
        if (v63)
        {
          goto LABEL_58;
        }
      }

      if (fabs(v15) > 2.22044605e-16 && fabs(v19) > 2.22044605e-16)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v67;
            v156 = 2112;
            v157 = v68;
            v158 = 2112;
            v159 = optionsCopy;
            _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@:%@,Zero TripClusters fetched,options,%@,trying with only destination", buf, 0x20u);
          }
        }

        v57 = [objc_alloc(MEMORY[0x277D01368]) initWithStartAndEndVisitLatitude:0.0 startLongitude:0.0 endLatitude:v23 endLongitude:v27];

        tripClusterStore2 = [(RTTripClusterManager *)self tripClusterStore];
        v70 = [tripClusterStore2 getTripClustersWithOptions:v57];
        [v122 addObjectsFromArray:v70];

        if ([v122 count])
        {
          v58 = [(RTTripClusterManager *)self _removeEmptyWaypointClusters:v122];

          [(RTTripClusterManager *)self _findRouteFromCurrentLocation:v58 options:optionsCopy queryStartTime:v119 handler:handlerCopy];
          v56 = 1;
          goto LABEL_41;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v107 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            v108 = objc_opt_class();
            v109 = NSStringFromClass(v108);
            v110 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v109;
            v156 = 2112;
            v157 = v110;
            v158 = 2112;
            v159 = optionsCopy;
            _os_log_impl(&dword_2304B3000, v107, OS_LOG_TYPE_INFO, "%@:%@,Zero TripClusters available for current location SPI,options,%@", buf, 0x20u);
          }
        }

        v111 = MEMORY[0x277CCA9B8];
        v151 = *MEMORY[0x277CCA450];
        v152 = @"Did not find any route clusters.";
        v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
        array2 = [v111 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v112];

        (*(handlerCopy + 2))(handlerCopy, 0, 0, array2);
        v56 = 2;
        v123 = v57;
LABEL_40:

        v58 = v122;
        v57 = v123;
LABEL_41:

        _Block_object_dispose(&v140, 8);
        goto LABEL_42;
      }
    }

    v64 = v122;
    if (!v122)
    {
LABEL_60:
      v122 = 0;
LABEL_70:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v80 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          v83 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v82;
          v156 = 2112;
          v157 = v83;
          v158 = 2112;
          v159 = optionsCopy;
          _os_log_impl(&dword_2304B3000, v80, OS_LOG_TYPE_INFO, "%@:%@,Zero TripClusters fetched,options,%@", buf, 0x20u);
        }
      }

      v84 = MEMORY[0x277CCA9B8];
      v149 = *MEMORY[0x277CCA450];
      v150 = @"Did not find any route clusters.";
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      array2 = [v84 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v85];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, array2);
      goto LABEL_39;
    }

LABEL_58:
    if ([v64 count])
    {
      v71 = [(RTTripClusterManager *)self _removeEmptyWaypointClusters:v122];

      v72 = v71;
      if (!v71)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v72 = v122;
    }

    v122 = v72;
    if (![v72 count])
    {
      goto LABEL_70;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v77 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v78 = [v122 count];
        *buf = 134217984;
        *&buf[4] = v78;
        _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "Potential %lu clusters", buf, 0xCu);
      }
    }

    array2 = [MEMORY[0x277CBEB18] array];
    routeDate = [optionsCopy routeDate];
    if (routeDate)
    {
      if ([optionsCopy routeFetchType] == 1)
      {

LABEL_76:
        routeDate2 = [optionsCopy routeDate];
        v88 = [(RTTripClusterManager *)self _getClusterLikelihoods:v122 routeDate:routeDate2];

        array2 = v88;
        goto LABEL_84;
      }

      v86 = [optionsCopy routeFetchType] == 3;

      if (v86)
      {
        goto LABEL_76;
      }
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    routeDate2 = v122;
    v89 = [routeDate2 countByEnumeratingWithState:&v132 objects:v148 count:16];
    if (v89)
    {
      v90 = *v133;
      do
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v133 != v90)
          {
            objc_enumerationMutation(routeDate2);
          }

          v92 = [[RTTripClusterWithLikelihood alloc] initWithCluster:*(*(&v132 + 1) + 8 * i) likelihood:1.0];
          [array2 addObject:v92];
        }

        v89 = [routeDate2 countByEnumeratingWithState:&v132 objects:v148 count:16];
      }

      while (v89);
    }

LABEL_84:

    routeFetchType = [optionsCopy routeFetchType];
    if (routeFetchType == 1)
    {
      routeDate3 = [optionsCopy routeDate];
      v97 = [(RTTripClusterManager *)self _bestScheduleRoute:array2 routeDate:routeDate3];
    }

    else
    {
      if (routeFetchType != 2)
      {
        if (routeFetchType != 3)
        {
          v99 = [v122 count];
          v97 = 0;
LABEL_97:
          LOBYTE(v117) = 0;
          [(RTTripClusterManager *)self _processAllFetchedRouteClustersForIndexRange:optionsCopy handler:handlerCopy tripClusters:array2 originLatitude:v97 originLongitude:v99 destLatitude:v119 destLongitude:v15 startIndexIncluded:v19 endIndexExcluded:v23 queryStartTime:v27 excludeRouteLocations:v117];

          goto LABEL_98;
        }

        routeDate4 = [optionsCopy routeDate];
        v95 = routeDate4 == 0;

        if (!v95)
        {
          routeDate5 = [optionsCopy routeDate];
          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __63__RTTripClusterManager__fetchLearnedRoutesWithOptions_handler___block_invoke_430;
          v124[3] = &unk_2788CAA98;
          v124[4] = self;
          v125 = optionsCopy;
          v127 = handlerCopy;
          v128 = v15;
          v129 = v19;
          v130 = v23;
          v131 = v27;
          v126 = v119;
          [(RTTripClusterManager *)self _topListRoutes:array2 routeDate:routeDate5 handler:v124];

LABEL_98:
          v122 = 0;
          v56 = 1;
          goto LABEL_40;
        }
      }

      v97 = [(RTTripClusterManager *)self _mostTravelledRoute:array2];
    }

    if (v97 >= [v122 count])
    {
      v100 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v113 = objc_opt_class();
        v114 = NSStringFromClass(v113);
        v115 = NSStringFromSelector(a2);
        v116 = [v122 count];
        *buf = 138413314;
        *&buf[4] = v114;
        v156 = 2112;
        v157 = v115;
        v158 = 2112;
        v159 = optionsCopy;
        v160 = 2048;
        v161 = v97;
        v162 = 2048;
        v163 = v116;
        _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, "%@:%@,cluster index >= cluster count,options,%@,index,%lu,count,%lu", buf, 0x34u);
      }

      v101 = MEMORY[0x277CCA9B8];
      v146 = *MEMORY[0x277CCA450];
      v147 = @"Internal error in cluster selection.";
      v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
      v103 = [v101 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v102];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v103);
      goto LABEL_39;
    }

    v99 = v97 + 1;
    goto LABEL_97;
  }

  v60 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v104 = objc_opt_class();
    v105 = NSStringFromClass(v104);
    v106 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v105;
    v156 = 2112;
    v157 = v106;
    _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@:%@,BOTH origin and destination visits are nil", buf, 0x16u);
  }

  v61 = MEMORY[0x277CCA9B8];
  v164 = *MEMORY[0x277CCA450];
  v165 = @"Origination and destination visits are nil.";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
  v57 = [v61 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v62];

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v57);
  v56 = 2;
LABEL_42:

  return v56;
}

void __63__RTTripClusterManager__fetchLearnedRoutesWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:a2];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __63__RTTripClusterManager__fetchLearnedRoutesWithOptions_handler___block_invoke_430(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 7);
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  v9 = a1[11];
  v11 = a2;
  LOBYTE(v10) = 0;
  [v3 _processAllFetchedRouteClustersForIndexRange:v4 handler:v5 tripClusters:v11 originLatitude:0 originLongitude:objc_msgSend(v11 destLatitude:"count") destLongitude:*(a1 + 6) startIndexIncluded:v6 endIndexExcluded:v7 queryStartTime:v8 excludeRouteLocations:{v9, v10}];
}

- (BOOL)areTwoPointsTooClose:(id)close location2:(id)location2
{
  location2Copy = location2;
  closeCopy = close;
  v7 = objc_alloc_init(RTDistanceCalculator);
  [closeCopy coordinate];
  v9 = v8;
  [closeCopy coordinate];
  v11 = v10;

  v22 = CLLocationCoordinate2DMake(v9, v11);
  [location2Copy coordinate];
  v13 = v12;
  [location2Copy coordinate];
  v15 = v14;

  v21 = CLLocationCoordinate2DMake(v13, v15);
  v20 = 0;
  [(RTDistanceCalculator *)v7 distanceFromLocationCoordinate:&v22 toLocationCoordinate:&v21 error:&v20];
  v18 = v16 < 250.0 && v20 == 0;

  return v18;
}

- (void)_updateSPIMetricReasonCodeAndSubmit:(int64_t)submit
{
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v7 = [RTClusterLearnedRouteMetrics sharedInstance:defaultsManager];

  if (v7)
  {
    spiStatMetrics = [v7 spiStatMetrics];

    if (spiStatMetrics)
    {
      spiStatMetrics2 = [v7 spiStatMetrics];
      [spiStatMetrics2 setFetchReasonCode:submit];

      [v7 submitToCoreAnalytics:5];
    }
  }
}

- (void)_computeSPIStatisticMetrics:(id)metrics learnedRoutes:(id)routes error:(id)error spiStatisticReasonCode:(int64_t)code fetchRequestTime:(id)time
{
  v81 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  routesCopy = routes;
  timeCopy = time;
  v14 = objc_alloc_init(RTLearnedRouteSPIStatisticsMetrics);
  if (v14)
  {
    -[RTLearnedRouteSPIStatisticsMetrics setSpiQueryType:](v14, "setSpiQueryType:", [metricsCopy routeFetchType]);
    [(RTLearnedRouteSPIStatisticsMetrics *)v14 setIsSPISuccess:error == 0];
    if (routesCopy)
    {
      -[RTLearnedRouteSPIStatisticsMetrics setDidSPIReturned2Routes:](v14, "setDidSPIReturned2Routes:", [routesCopy count] == 2);
      v15 = [routesCopy count] == 3;
    }

    else
    {
      [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturned2Routes:0];
      v15 = 0;
    }

    [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturned3Routes:v15];
    v16 = [MEMORY[0x277CBEAA8] now];
    v64 = timeCopy;
    [v16 timeIntervalSinceDate:timeCopy];
    *&v17 = v17;
    [(RTLearnedRouteSPIStatisticsMetrics *)v14 setSpiResponseTime:v17];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v65 = routesCopy;
    v18 = routesCopy;
    v70 = [v18 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v70)
    {
      v67 = *v76;
      selfCopy = self;
      v69 = metricsCopy;
      obj = v18;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v76 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v75 + 1) + 8 * i);
          v21 = objc_alloc(MEMORY[0x277CE41F8]);
          learnedRouteStartLocationWithReferenceFrame = [v20 learnedRouteStartLocationWithReferenceFrame];
          [learnedRouteStartLocationWithReferenceFrame latitude];
          v24 = v23;
          learnedRouteStartLocationWithReferenceFrame2 = [v20 learnedRouteStartLocationWithReferenceFrame];
          [learnedRouteStartLocationWithReferenceFrame2 longitude];
          v27 = [v21 initWithLatitude:v24 longitude:v26];

          v28 = objc_alloc(MEMORY[0x277CE41F8]);
          learnedRouteEndLocationWithReferenceFrame = [v20 learnedRouteEndLocationWithReferenceFrame];
          [learnedRouteEndLocationWithReferenceFrame latitude];
          v31 = v30;
          learnedRouteEndLocationWithReferenceFrame2 = [v20 learnedRouteEndLocationWithReferenceFrame];
          [learnedRouteEndLocationWithReferenceFrame2 longitude];
          v34 = [v28 initWithLatitude:v31 longitude:v33];

          if ([(RTLearnedRouteSPIStatisticsMetrics *)v14 didSPIReturnOriginVisit])
          {
            [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnOriginVisit:1];
          }

          else
          {
            originVisit = [metricsCopy originVisit];
            [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnOriginVisit:[(RTTripClusterManager *)self areTwoPointsTooClose:v27 location2:originVisit]];
          }

          if ([(RTLearnedRouteSPIStatisticsMetrics *)v14 didSPIReturnDestinationVisit])
          {
            [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnDestinationVisit:1];
          }

          else
          {
            destinationVisit = [metricsCopy destinationVisit];
            [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnDestinationVisit:[(RTTripClusterManager *)self areTwoPointsTooClose:v34 location2:destinationVisit]];
          }

          if ([(RTLearnedRouteSPIStatisticsMetrics *)v14 didSPIReturnODPair])
          {
            [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnODPair:1];
          }

          else
          {
            originVisit2 = [metricsCopy originVisit];
            if ([(RTTripClusterManager *)self areTwoPointsTooClose:v27 location2:originVisit2])
            {
              destinationVisit2 = [metricsCopy destinationVisit];
              [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnODPair:[(RTTripClusterManager *)self areTwoPointsTooClose:v34 location2:destinationVisit2]];
            }

            else
            {
              [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnODPair:0];
            }
          }

          if ([(RTLearnedRouteSPIStatisticsMetrics *)v14 didSPIReturnOriginVisit])
          {
            v39 = 0;
          }

          else
          {
            v39 = [(RTLearnedRouteSPIStatisticsMetrics *)v14 didSPIReturnDestinationVisit]^ 1;
          }

          [(RTLearnedRouteSPIStatisticsMetrics *)v14 setDidSPIReturnNonVisit:v39];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          travelModeRoutes = [v20 travelModeRoutes];
          v41 = [travelModeRoutes countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v72;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v72 != v43)
                {
                  objc_enumerationMutation(travelModeRoutes);
                }

                learnedRouteLocations = [*(*(&v71 + 1) + 8 * j) learnedRouteLocations];
                -[RTLearnedRouteSPIStatisticsMetrics setNumSPIReturnWaypointsAvg:](v14, "setNumSPIReturnWaypointsAvg:", -[RTLearnedRouteSPIStatisticsMetrics numSPIReturnWaypointsAvg](v14, "numSPIReturnWaypointsAvg") + [learnedRouteLocations count]);
              }

              v42 = [travelModeRoutes countByEnumeratingWithState:&v71 objects:v79 count:16];
            }

            while (v42);
          }

          [v20 travelledDistanceEstimateForEntireRouteInMeters];
          v47 = v46;
          [(RTLearnedRouteSPIStatisticsMetrics *)v14 spiReturnRouteLengthAvg];
          *&v49 = v47 + v48;
          [(RTLearnedRouteSPIStatisticsMetrics *)v14 setSpiReturnRouteLengthAvg:v49];
          [v20 likelihood];
          [(RTLearnedRouteSPIStatisticsMetrics *)v14 setIsSPIResponseRouteHighLikelihood:v50 > 0.7];
          [v20 likelihood];
          [(RTLearnedRouteSPIStatisticsMetrics *)v14 setIsSPIResponseRouteLowLikelihood:v51 < 0.3];
          [v20 likelihood];
          [(RTLearnedRouteSPIStatisticsMetrics *)v14 setIsSPIBestRouteLikelihood:v52 > 0.5];

          metricsCopy = v69;
          self = selfCopy;
        }

        v18 = obj;
        v70 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v70);
    }

    if ([v18 count])
    {
      numSPIReturnWaypointsAvg = [(RTLearnedRouteSPIStatisticsMetrics *)v14 numSPIReturnWaypointsAvg];
      v54 = numSPIReturnWaypointsAvg / [v18 count];
    }

    else
    {
      v54 = 0;
    }

    routesCopy = v65;
    [(RTLearnedRouteSPIStatisticsMetrics *)v14 setNumSPIReturnWaypointsAvg:v54];
    if ([v18 count])
    {
      [(RTLearnedRouteSPIStatisticsMetrics *)v14 spiReturnRouteLengthAvg];
      *&v56 = v55 / [v18 count];
    }

    else
    {
      v56 = 0.0;
    }

    timeCopy = v64;
    [(RTLearnedRouteSPIStatisticsMetrics *)v14 setSpiReturnRouteLengthAvg:v56];
    defaultsManager = [(RTTripClusterManager *)self defaultsManager];
    v58 = [RTClusterLearnedRouteMetrics sharedInstance:defaultsManager];

    if (v58)
    {
      timeOfLastSPIQuery = [v58 timeOfLastSPIQuery];
      if (timeOfLastSPIQuery)
      {
        v60 = [MEMORY[0x277CBEAA8] now];
        timeOfLastSPIQuery2 = [v58 timeOfLastSPIQuery];
        [v60 timeIntervalSinceDate:timeOfLastSPIQuery2];
        *&v62 = v62;
        [(RTLearnedRouteSPIStatisticsMetrics *)v14 setTimeBetweenSPIQueries:v62];
      }

      else
      {
        [(RTLearnedRouteSPIStatisticsMetrics *)v14 setTimeBetweenSPIQueries:0.0];
      }

      v63 = [MEMORY[0x277CBEAA8] now];
      [v58 setTimeOfLastSPIQuery:v63];

      [v58 setSpiStatMetrics:v14];
    }
  }
}

- (void)fetchLearnedRoutesWithOptions:(id)options handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager fetchLearnedRoutesWithOptions:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 3725;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(RTTripClusterManager *)self _shouldMockLearnedRoutesSPI])
  {
    [(RTTripClusterManager *)self _fetchLearnedRoutesWithOptionsMock:optionsCopy handler:handlerCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    if ([optionsCopy routeFetchType] == 4 || objc_msgSend(optionsCopy, "routeFetchType") == 5 || objc_msgSend(optionsCopy, "routeFetchType") == 6)
    {
      queue = [(RTNotifier *)self queue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_3;
      v19[3] = &unk_2788CAAC0;
      v22[1] = buf;
      v19[4] = self;
      v11 = &v20;
      v20 = optionsCopy;
      v12 = v22;
      v13 = handlerCopy;
      v14 = &v21;
      v21 = v9;
      v22[0] = v13;
      v15 = v9;
      v16 = v19;
    }

    else
    {
      queue = [(RTNotifier *)self queue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke;
      v23[3] = &unk_2788CAAC0;
      v26[1] = buf;
      v23[4] = self;
      v11 = &v24;
      v24 = optionsCopy;
      v12 = v26;
      v17 = handlerCopy;
      v14 = &v25;
      v25 = v9;
      v26[0] = v17;
      v18 = v9;
      v16 = v23;
    }

    dispatch_async(queue, v16);

    _Block_object_dispose(buf, 8);
  }
}

void __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_2;
  v8[3] = &unk_2788CAAE8;
  v4 = *(a1 + 56);
  v7 = *(a1 + 32);
  v5 = *(&v7 + 1);
  v11 = *(a1 + 64);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v9 = v7;
  v10 = v6;
  *(*(*(a1 + 64) + 8) + 24) = [v2 _fetchLearnedRoutesWithOptions:v3 handler:v8];
  [*(a1 + 32) _updateSPIMetricReasonCodeAndSubmit:*(*(*(a1 + 64) + 8) + 24)];
}

void __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + 16);
  v9 = a4;
  v10 = a2;
  v8(v7, v10, a3, v9);
  [*(a1 + 32) _computeSPIStatisticMetrics:*(a1 + 40) learnedRoutes:v10 error:v9 spiStatisticReasonCode:*(*(*(a1 + 64) + 8) + 24) fetchRequestTime:*(a1 + 48)];
}

void __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_4;
  v9[3] = &unk_2788CAAE8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v8 = v5;
  v6 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  *(*(*(a1 + 64) + 8) + 24) = [v3 _fetchLearnedRoutesForFetchTypeAny:v4 handler:v9];
  [*(a1 + 32) _updateSPIMetricReasonCodeAndSubmit:*(*(*(a1 + 64) + 8) + 24)];
}

void __62__RTTripClusterManager_fetchLearnedRoutesWithOptions_handler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  if ([v7 count] || objc_msgSend(*(a1 + 32), "routeFetchType") != 6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) _fetchLearnedRoutesWithOptionsDefault:*(a1 + 32) handler:*(a1 + 56)];
  }

  [*(a1 + 40) _computeSPIStatisticMetrics:*(a1 + 32) learnedRoutes:v7 error:v6 spiStatisticReasonCode:*(*(*(a1 + 64) + 8) + 24) fetchRequestTime:*(a1 + 48)];
}

- (int64_t)_fetchLearnedRoutesForFetchTypeAny:(id)any handler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  anyCopy = any;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!anyCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v77 = "[RTTripClusterManager _fetchLearnedRoutesForFetchTypeAny:handler:]";
      v78 = 1024;
      v79 = 3780;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!handlerCopy)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v77 = "[RTTripClusterManager _fetchLearnedRoutesForFetchTypeAny:handler:]";
      v78 = 1024;
      v79 = 3781;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [objc_alloc(MEMORY[0x277D01368]) initWithMinCountOfTraversal:-[RTTripClusterManager minimumTraversalCountForLearnedRoutes](self startLatitude:"minimumTraversalCountForLearnedRoutes") startLongitude:0.0 endLatitude:0.0 endLongitude:{0.0, 0.0}];
  tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
  v14 = [tripClusterStore getTripClustersWithOptions:v12];

  if (!v14 || ![v14 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412290;
        v77 = v32;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@:No tripClusters found for RTLearnedRouteFetchType_Any", buf, 0xCu);
      }
    }

    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277D01448];
    v74 = *MEMORY[0x277CCA450];
    v75 = @"No valid learned route found.";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v15 = [v33 errorWithDomain:v34 code:7 userInfo:v35];

    (v8)[2](v8, 0, 0, v15);
    v36 = 4;
    goto LABEL_49;
  }

  v65 = v12;
  if (![v14 count])
  {
    v15 = 0;
    goto LABEL_43;
  }

  v62 = v11;
  v63 = v8;
  v64 = anyCopy;
  v15 = 0;
  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  selfCopy = self;
  while (1)
  {
    v18 = [v14 objectAtIndexedSubscript:v16];
    v19 = objc_alloc(MEMORY[0x277D013A8]);
    clusterID = [v18 clusterID];
    v21 = [v19 initWithClusterID:clusterID];

    tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
    v23 = [tripClusterRouteStore getTripClusterRouteWithOptions:v21];

    if ([v23 count])
    {
      break;
    }

LABEL_22:

    if (++v16 >= [v14 count])
    {
      goto LABEL_31;
    }
  }

  if (v17 == 0x7FFFFFFFFFFFFFFFLL || !v15)
  {
    v24 = v18;

    v15 = v24;
    v17 = v16;
  }

  countOfTraversal = [v18 countOfTraversal];
  if (countOfTraversal >= [v15 countOfTraversal])
  {
    lastTimeTaken = [v18 lastTimeTaken];
    lastTimeTaken2 = [v15 lastTimeTaken];
    v28 = [lastTimeTaken compare:lastTimeTaken2];

    if (v28 == 1)
    {
      v29 = v18;

      v15 = v29;
      v17 = v16;
    }

    self = selfCopy;
    goto LABEL_22;
  }

LABEL_31:
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    anyCopy = v64;
  }

  else
  {
    anyCopy = v64;
    if (v15)
    {
      array = [MEMORY[0x277CBEB18] array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v38 = v14;
      v39 = [v38 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v68;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v68 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = [[RTTripClusterWithLikelihood alloc] initWithCluster:*(*(&v67 + 1) + 8 * i) likelihood:1.0];
            [array addObject:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v67 objects:v71 count:16];
        }

        while (v40);
      }

      v44 = [v64 routeFetchType] == 5;
      [v15 startLatitude];
      v46 = v45;
      [v15 startLongitude];
      v48 = v47;
      [v15 endLatitude];
      v50 = v49;
      [v15 endLongitude];
      LOBYTE(v61) = v44;
      v51 = v17 + 1;
      v8 = v63;
      v52 = v17;
      v11 = v62;
      [(RTTripClusterManager *)selfCopy _processAllFetchedRouteClustersForIndexRange:v64 handler:v63 tripClusters:array originLatitude:v52 originLongitude:v51 destLatitude:v62 destLongitude:v46 startIndexIncluded:v48 endIndexExcluded:v50 queryStartTime:v53 excludeRouteLocations:v61];

      v14 = 0;
      v36 = 1;
      goto LABEL_48;
    }
  }

  v11 = v62;
  v8 = v63;
LABEL_43:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v54 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138412290;
      v77 = v56;
      _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%@:No tripClusters with valid routes found for RTLearnedRouteFetchType_Any", buf, 0xCu);
    }
  }

  v57 = MEMORY[0x277CCA9B8];
  v58 = *MEMORY[0x277D01448];
  v72 = *MEMORY[0x277CCA450];
  v73 = @"No valid learned route found.";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  array = [v57 errorWithDomain:v58 code:7 userInfo:v59];

  (v8)[2](v8, 0, 0, array);
  v36 = 4;
LABEL_48:

  v12 = v65;
LABEL_49:

  return v36;
}

- (void)_fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler
{
  v156[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v130 = optionsCopy;
  v99 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v152 = 136315394;
    *&v152[4] = "[RTTripClusterManager _fetchTripClusterMetadataWithOptions:handler:]";
    *&v152[12] = 1024;
    *&v152[14] = 3874;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", v152, 0x12u);
  }

  if (!v99)
  {
LABEL_7:
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v152 = 136315394;
      *&v152[4] = "[RTTripClusterManager _fetchTripClusterMetadataWithOptions:handler:]";
      *&v152[12] = 1024;
      *&v152[14] = 3875;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v152, 0x12u);
    }
  }

LABEL_10:
  v9 = objc_alloc(MEMORY[0x277D01368]);
  [optionsCopy originVisitLatitude];
  v11 = v10;
  [optionsCopy originVisitLongitude];
  v13 = v12;
  [optionsCopy destinationVisitLatitude];
  v15 = v14;
  [optionsCopy destinationVisitLongitude];
  v98 = [v9 initWithStartAndEndVisitLatitude:v11 startLongitude:v13 endLatitude:v15 endLongitude:v16];
  *v152 = 0;
  *&v152[8] = v152;
  *&v152[16] = 0x3032000000;
  v153 = __Block_byref_object_copy__72;
  v154 = __Block_byref_object_dispose__72;
  v155 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = __Block_byref_object_copy__72;
  v139 = __Block_byref_object_dispose__72;
  v140 = 0;
  v17 = dispatch_semaphore_create(0);
  tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
  v131[0] = MEMORY[0x277D85DD0];
  v131[1] = 3221225472;
  v131[2] = __69__RTTripClusterManager__fetchTripClusterMetadataWithOptions_handler___block_invoke;
  v131[3] = &unk_2788C4490;
  v133 = &v135;
  v134 = v152;
  v19 = v17;
  v132 = v19;
  [tripClusterStore fetchTripClustersWithOptions:v98 handler:v131];

  dsema = v19;
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = dispatch_time(0, 3600000000000);
  v22 = dispatch_semaphore_wait(dsema, v21);
  v23 = MEMORY[0x277CCA450];
  if (v22)
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v24 timeIntervalSinceDate:v20];
    v26 = v25;
    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v30 = [callStackSymbols filteredArrayUsingPredicate:v28];
    firstObject = [v30 firstObject];

    [v27 submitToCoreAnalytics:firstObject type:1 duration:v26];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v33 = MEMORY[0x277CCA9B8];
    v156[0] = *v23;
    *buf = @"semaphore wait timeout";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v156 count:1];
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
  v38 = v136[5];
  v96 = v37;
  if (v38 || (v38 = v37) != 0)
  {
    v39 = v38;
    v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v88 = objc_opt_class();
      v89 = NSStringFromClass(v88);
      v90 = NSStringFromSelector(a2);
      v91 = v136[5];
      *buf = 138413058;
      *&buf[4] = v89;
      v146 = 2112;
      v147 = v90;
      v148 = 2112;
      v149 = v91;
      v150 = 2112;
      v151 = v96;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@:%@,Error in fetching tripClusters,fetchErr,%@,semaErr,%@", buf, 0x2Au);
    }

    v41 = MEMORY[0x277CCA9B8];
    v143 = *v23;
    v144 = @"Internal error in fetching trip clusters.";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v42];

    (v99)[2](v99, 0, v43);
LABEL_21:

    goto LABEL_22;
  }

  v44 = *(*&v152[8] + 40);
  if (!v44 || ![v44 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v82 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v84;
        v146 = 2112;
        v147 = v85;
        _os_log_impl(&dword_2304B3000, v82, OS_LOG_TYPE_INFO, "%@:%@,Zero TripClusters fetched", buf, 0x16u);
      }
    }

    v86 = MEMORY[0x277CCA9B8];
    v141 = *v23;
    v142 = @"Did not find any trip clusters.";
    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    v39 = [v86 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v87];

    (v99)[2](v99, 0, v39);
    goto LABEL_21;
  }

  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i < [*(*&v152[8] + 40) count]; ++i)
  {
    v109 = objc_alloc(MEMORY[0x277D01370]);
    v128 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    clusterID = [v128 clusterID];
    v127 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    lastTimeTaken = [v127 lastTimeTaken];
    v126 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    modeOfTransport = [v126 modeOfTransport];
    v125 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    countOfTraversal = [v125 countOfTraversal];
    v124 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v124 startLatitude];
    v106 = v46;
    v123 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v123 startLongitude];
    v105 = v47;
    v122 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v122 endLatitude];
    v104 = v48;
    v121 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v121 endLongitude];
    v103 = v49;
    v120 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v120 avgTripTime];
    v102 = v50;
    v119 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v119 avgTripDistance];
    v101 = v51;
    v118 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v118 minTripTime];
    v53 = v52;
    v117 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v117 maxTripTime];
    v55 = v54;
    v116 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v116 minTripDistance];
    v57 = v56;
    v115 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v115 maxTripDistance];
    v59 = v58;
    v114 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    commuteID = [v114 commuteID];
    v113 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    isLocked = [v113 isLocked];
    v60 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v60 avgBikeDistance];
    v62 = v61;
    v63 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v63 avgBikeTime];
    v65 = v64;
    v66 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v66 avgWalkDistance];
    v68 = v67;
    v69 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    [v69 avgWalkTime];
    v71 = v70;
    v72 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    countOfBikeTraversal = [v72 countOfBikeTraversal];
    v74 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    countOfWalkTraversal = [v74 countOfWalkTraversal];
    v76 = [*(*&v152[8] + 40) objectAtIndexedSubscript:i];
    LOWORD(v92) = [v76 clusterOrder];
    v77 = [v109 initWithTripClusterId:clusterID dateOfMostRecentTrip:lastTimeTaken modeOfTransport:modeOfTransport countOfTraversal:countOfTraversal originLatitude:commuteID originLongitude:isLocked destinationLatitude:v106 destinationLongitude:v105 averageTripTime:v104 averageTripDistance:v103 minimumTripTime:v102 maximumTripTime:v101 minimumTripDistance:v53 maximumTripDistance:v55 commuteID:v57 isLocked:v59 avgBikeDistance:v62 avgBikeTime:v65 avgWalkDistance:v68 avgWalkTime:v71 bikeTraversalCount:__PAIR64__(countOfWalkTraversal walkTraversalCount:countOfBikeTraversal) clusterOrder:v92];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v78 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v80;
        v146 = 2112;
        v147 = v81;
        v148 = 2112;
        v149 = v77;
        _os_log_debug_impl(&dword_2304B3000, v78, OS_LOG_TYPE_DEBUG, "%@:%@,Found trip cluster,%@", buf, 0x20u);
      }
    }

    [array addObject:v77];
  }

  (v99)[2](v99, array, 0);

  objc_autoreleasePoolPop(context);
LABEL_22:

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(v152, 8);
}

void __69__RTTripClusterManager__fetchTripClusterMetadataWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[RTTripClusterManager fetchTripClusterMetadataWithOptions:handler:]";
    v18 = 1024;
    v19 = 3961;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (!optionsCopy)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTTripClusterManager fetchTripClusterMetadataWithOptions:handler:]";
      v18 = 1024;
      v19 = 3962;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTTripClusterManager_fetchTripClusterMetadataWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v14 = optionsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)purgeTripClusterTable:(int)table handler:(id)handler
{
  v214[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTTripClusterManager purgeTripClusterTable:handler:]";
      v212 = 1024;
      v213 = 3973;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = dispatch_semaphore_create(0);
  if (table < 6)
  {
    if (table > 2)
    {
      if (table == 3)
      {
        tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterScheduleStore];
        v202[0] = MEMORY[0x277D85DD0];
        v202[1] = 3221225472;
        v202[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_449;
        v202[3] = &unk_2788C7E48;
        v202[4] = self;
        v14 = &v203;
        v34 = v8;
        v203 = v34;
        [tripClusterScheduleStore purgeTripClusterScheduleWithHandler:v202];
      }

      else if (table == 4)
      {
        tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterRouteStore];
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_450;
        v200[3] = &unk_2788C7E48;
        v200[4] = self;
        v14 = &v201;
        v34 = v8;
        v201 = v34;
        [tripClusterScheduleStore purgeTripClusterRouteWithHandler:v200];
      }

      else
      {
        tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterRouteRoadTransitionsStore];
        v198[0] = MEMORY[0x277D85DD0];
        v198[1] = 3221225472;
        v198[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_451;
        v198[3] = &unk_2788C7E48;
        v198[4] = self;
        v14 = &v199;
        v34 = v8;
        v199 = v34;
        [tripClusterScheduleStore purgeTripClusterRoadTransitionsWithHandler:v198];
      }
    }

    else
    {
      if (!table)
      {
        tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
        v195[0] = MEMORY[0x277D85DD0];
        v195[1] = 3221225472;
        v195[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_452;
        v195[3] = &unk_2788C6508;
        v195[4] = self;
        v197 = handlerCopy;
        v183 = v8;
        v36 = v8;
        v196 = v36;
        [tripClusterStore purgeTripClustersWithHandler:v195];

        v37 = v36;
        v38 = 0x277CBE000uLL;
        v39 = [MEMORY[0x277CBEAA8] now];
        v40 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v37, v40))
        {
          v176 = [MEMORY[0x277CBEAA8] now];
          [v176 timeIntervalSinceDate:v39];
          v42 = v41;
          v43 = objc_opt_new();
          v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v46 = [callStackSymbols filteredArrayUsingPredicate:v44];
          firstObject = [v46 firstObject];

          [v43 submitToCoreAnalytics:firstObject type:1 duration:v42];
          v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v49 = MEMORY[0x277CCA9B8];
          v50 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v52 = [v49 errorWithDomain:v50 code:15 userInfo:v51];

          if (v52)
          {
            v53 = v52;
          }

          v38 = 0x277CBE000;
        }

        else
        {
          v52 = 0;
        }

        v71 = v52;
        tripClusterRecencyStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
        v193[0] = MEMORY[0x277D85DD0];
        v193[1] = 3221225472;
        v193[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_453;
        v193[3] = &unk_2788C7E48;
        v193[4] = self;
        v73 = v37;
        v194 = v73;
        [tripClusterRecencyStore purgeTripClusterRecencyWithHandler:v193];

        v74 = v73;
        v75 = [*(v38 + 2728) now];
        v76 = dispatch_time(0, 3600000000000);
        v77 = v71;
        if (dispatch_semaphore_wait(v74, v76))
        {
          v178 = [*(v38 + 2728) now];
          [v178 timeIntervalSinceDate:v75];
          v79 = v78;
          v80 = objc_opt_new();
          v81 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          v83 = [callStackSymbols2 filteredArrayUsingPredicate:v81];
          firstObject2 = [v83 firstObject];

          v171 = v80;
          [v80 submitToCoreAnalytics:firstObject2 type:1 duration:v79];
          v85 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v85, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v86 = MEMORY[0x277CCA9B8];
          v87 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v89 = [v86 errorWithDomain:v87 code:15 userInfo:v88];

          v77 = v71;
          v38 = 0x277CBE000uLL;
          if (v89)
          {
            v90 = v89;

            v77 = v89;
          }
        }

        v91 = v77;
        tripClusterScheduleStore2 = [(RTTripClusterManager *)self tripClusterScheduleStore];
        v191[0] = MEMORY[0x277D85DD0];
        v191[1] = 3221225472;
        v191[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_454;
        v191[3] = &unk_2788C7E48;
        v191[4] = self;
        v93 = v74;
        v192 = v93;
        [tripClusterScheduleStore2 purgeTripClusterScheduleWithHandler:v191];

        v94 = v93;
        v95 = [*(v38 + 2728) now];
        v96 = dispatch_time(0, 3600000000000);
        v97 = v91;
        if (dispatch_semaphore_wait(v94, v96))
        {
          v179 = [*(v38 + 2728) now];
          [v179 timeIntervalSinceDate:v95];
          v99 = v98;
          v100 = objc_opt_new();
          v101 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
          v103 = [callStackSymbols3 filteredArrayUsingPredicate:v101];
          firstObject3 = [v103 firstObject];

          v172 = v100;
          [v100 submitToCoreAnalytics:firstObject3 type:1 duration:v99];
          v105 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v105, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v106 = MEMORY[0x277CCA9B8];
          v107 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v109 = [v106 errorWithDomain:v107 code:15 userInfo:v108];

          v97 = v91;
          v38 = 0x277CBE000uLL;
          if (v109)
          {
            v110 = v109;

            v97 = v109;
          }
        }

        v111 = v97;
        tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
        v189[0] = MEMORY[0x277D85DD0];
        v189[1] = 3221225472;
        v189[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_455;
        v189[3] = &unk_2788C7E48;
        v189[4] = self;
        v113 = v94;
        v190 = v113;
        [tripClusterRouteStore purgeTripClusterRouteWithHandler:v189];

        v114 = v113;
        v115 = [*(v38 + 2728) now];
        v116 = dispatch_time(0, 3600000000000);
        v117 = v111;
        if (dispatch_semaphore_wait(v114, v116))
        {
          v180 = [*(v38 + 2728) now];
          [v180 timeIntervalSinceDate:v115];
          v119 = v118;
          v120 = objc_opt_new();
          v121 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
          v123 = [callStackSymbols4 filteredArrayUsingPredicate:v121];
          firstObject4 = [v123 firstObject];

          v173 = v120;
          [v120 submitToCoreAnalytics:firstObject4 type:1 duration:v119];
          v125 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v125, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v126 = MEMORY[0x277CCA9B8];
          v127 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v129 = [v126 errorWithDomain:v127 code:15 userInfo:v128];

          v117 = v111;
          v38 = 0x277CBE000uLL;
          if (v129)
          {
            v130 = v129;

            v117 = v129;
          }
        }

        v131 = v117;
        tripClusterWaypointStore = [(RTTripClusterManager *)self tripClusterWaypointStore];
        v187[0] = MEMORY[0x277D85DD0];
        v187[1] = 3221225472;
        v187[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_456;
        v187[3] = &unk_2788C7E48;
        v187[4] = self;
        v133 = v114;
        v188 = v133;
        [tripClusterWaypointStore purgeTripClusterWaypointWithHandler:v187];

        v134 = v133;
        v135 = [*(v38 + 2728) now];
        v136 = dispatch_time(0, 3600000000000);
        v137 = v131;
        if (dispatch_semaphore_wait(v134, v136))
        {
          v174 = [*(v38 + 2728) now];
          v181 = v135;
          [v174 timeIntervalSinceDate:v135];
          v139 = v138;
          v140 = objc_opt_new();
          v141 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols5 = [MEMORY[0x277CCACC8] callStackSymbols];
          v143 = [callStackSymbols5 filteredArrayUsingPredicate:v141];
          firstObject5 = [v143 firstObject];

          [v140 submitToCoreAnalytics:firstObject5 type:1 duration:v139];
          v145 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v145, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v146 = MEMORY[0x277CCA9B8];
          v147 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v149 = [v146 errorWithDomain:v147 code:15 userInfo:v148];

          v137 = v131;
          v38 = 0x277CBE000uLL;
          v135 = v181;
          if (v149)
          {
            v150 = v149;

            v137 = v149;
          }
        }

        v14 = &v197;

        v151 = v137;
        tripClusterRouteRoadTransitionsStore = [(RTTripClusterManager *)self tripClusterRouteRoadTransitionsStore];
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_457;
        v185[3] = &unk_2788C7E48;
        v185[4] = self;
        v153 = v134;
        v186 = v153;
        [tripClusterRouteRoadTransitionsStore purgeTripClusterRoadTransitionsWithHandler:v185];

        v154 = v153;
        v155 = [*(v38 + 2728) now];
        v156 = dispatch_time(0, 3600000000000);
        v157 = v151;
        if (dispatch_semaphore_wait(v154, v156))
        {
          v175 = [*(v38 + 2728) now];
          [v175 timeIntervalSinceDate:v155];
          v159 = v158;
          v160 = objc_opt_new();
          v161 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols6 = [MEMORY[0x277CCACC8] callStackSymbols];
          v163 = [callStackSymbols6 filteredArrayUsingPredicate:v161];
          firstObject6 = [v163 firstObject];

          [v160 submitToCoreAnalytics:firstObject6 type:1 duration:v159];
          v165 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v165, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v166 = MEMORY[0x277CCA9B8];
          v167 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v169 = [v166 errorWithDomain:v167 code:15 userInfo:v168];

          v157 = v151;
          v14 = &v197;
          if (v169)
          {
            v170 = v169;

            v157 = v169;
          }
        }

        v12 = v157;
        v8 = v183;
        goto LABEL_36;
      }

      if (table == 1)
      {
        tripClusterStore2 = [(RTTripClusterManager *)self tripClusterStore];
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke;
        v206[3] = &unk_2788C6508;
        v206[4] = self;
        v14 = &v208;
        v208 = handlerCopy;
        v15 = v8;
        v207 = v15;
        [tripClusterStore2 purgeTripClustersWithHandler:v206];

        v16 = v15;
        v17 = [MEMORY[0x277CBEAA8] now];
        v18 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v16, v18))
        {
          v182 = v8;
          v19 = [MEMORY[0x277CBEAA8] now];
          [v19 timeIntervalSinceDate:v17];
          v21 = v20;
          v22 = objc_opt_new();
          v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
          callStackSymbols7 = [MEMORY[0x277CCACC8] callStackSymbols];
          v25 = [callStackSymbols7 filteredArrayUsingPredicate:v23];
          firstObject7 = [v25 firstObject];

          [v22 submitToCoreAnalytics:firstObject7 type:1 duration:v21];
          v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v28 = MEMORY[0x277CCA9B8];
          v29 = *MEMORY[0x277D01448];
          v214[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
          v31 = [v28 errorWithDomain:v29 code:15 userInfo:v30];

          if (v31)
          {
            v32 = v31;
          }

          v14 = &v208;
          v8 = v182;
        }

        else
        {
          v31 = 0;
        }

        v12 = v31;
LABEL_36:

        goto LABEL_37;
      }

      tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
      v204[0] = MEMORY[0x277D85DD0];
      v204[1] = 3221225472;
      v204[2] = __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_448;
      v204[3] = &unk_2788C7E48;
      v204[4] = self;
      v14 = &v205;
      v34 = v8;
      v205 = v34;
      [tripClusterScheduleStore purgeTripClusterRecencyWithHandler:v204];
    }

    v54 = v34;
    v55 = [MEMORY[0x277CBEAA8] now];
    v56 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v54, v56))
    {
      v177 = v14;
      v184 = v8;
      v57 = [MEMORY[0x277CBEAA8] now];
      [v57 timeIntervalSinceDate:v55];
      v59 = v58;
      v60 = objc_opt_new();
      v61 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
      callStackSymbols8 = [MEMORY[0x277CCACC8] callStackSymbols];
      v63 = [callStackSymbols8 filteredArrayUsingPredicate:v61];
      firstObject8 = [v63 firstObject];

      [v60 submitToCoreAnalytics:firstObject8 type:1 duration:v59];
      v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v65, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v66 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277D01448];
      v214[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
      v69 = [v66 errorWithDomain:v67 code:15 userInfo:v68];

      if (v69)
      {
        v70 = v69;
      }

      v14 = v177;
      v8 = v184;
    }

    else
    {
      v69 = 0;
    }

    v12 = v69;
    goto LABEL_36;
  }

  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D01448];
  v209 = *MEMORY[0x277CCA450];
  v210 = @"Not a valid table number to purge";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
  v12 = [v9 errorWithDomain:v10 code:7 userInfo:v11];

LABEL_37:
  (*(handlerCopy + 2))(handlerCopy, v12);
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 localizedDescription];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging clusters,%@", &v11, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@,Successfully purged all clusters (Table 1)", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_448(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster recencys,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster recency (Table 2)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_449(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster schedules,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster schedules (Table 3)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_450(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster routes,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster routes (Table 4)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_451(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging road transitions,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all road transitions (Table 5)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_452(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 localizedDescription];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging clusters,%@", &v11, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@,Successfully purged all clusters (Table 1)", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_453(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster recencys,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster recency (Table 2)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_454(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster schedules,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster schedules (Table 3)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_455(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster routes,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster routes (Table 4)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_456(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster waypoints,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster waypoints (Table 4.5)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __54__RTTripClusterManager_purgeTripClusterTable_handler___block_invoke_457(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging road transitions,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all road transitions (Table 5)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)purgeClustersDatabaseWithTripClusterStore:(id)store tripClusterRouteStore:(id)routeStore tripClusterRoadTransitionStore:(id)transitionStore
{
  v83 = *MEMORY[0x277D85DE8];
  transitionStoreCopy = transitionStore;
  routeStoreCopy = routeStore;
  storeCopy = store;
  v10 = dispatch_semaphore_create(0);
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke;
  v79[3] = &unk_2788C7E48;
  v79[4] = self;
  v11 = v10;
  v80 = v11;
  [storeCopy purgeTripClustersWithHandler:v79];

  v12 = v11;
  v13 = 0x277CBE000uLL;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  v16 = 0x277CCA000uLL;
  v17 = 0x277CCA000uLL;
  selfCopy = self;
  if (dispatch_semaphore_wait(v12, v15))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v14];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_739_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
    firstObject = [v24 firstObject];

    [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v81 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v81 count:1];
    v30 = [v27 errorWithDomain:v28 code:15 userInfo:v29];

    if (v30)
    {
      v31 = v30;
    }

    self = selfCopy;
    v17 = 0x277CCA000;
    v13 = 0x277CBE000;
    v16 = 0x277CCA000;
  }

  else
  {
    v30 = 0;
  }

  v32 = v30;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke_458;
  v77[3] = &unk_2788C7E48;
  v77[4] = self;
  v33 = v12;
  v78 = v33;
  [routeStoreCopy purgeTripClusterRouteWithHandler:v77];

  v34 = v33;
  v35 = [*(v13 + 2728) now];
  v36 = dispatch_time(0, 3600000000000);
  v37 = v32;
  if (dispatch_semaphore_wait(v34, v36))
  {
    v38 = [*(v13 + 2728) now];
    [v38 timeIntervalSinceDate:v35];
    v40 = v39;
    v41 = objc_opt_new();
    v42 = [*(v16 + 3120) predicateWithBlock:&__block_literal_global_739_0];
    callStackSymbols2 = [*(v17 + 3272) callStackSymbols];
    v44 = [callStackSymbols2 filteredArrayUsingPredicate:v42];
    firstObject2 = [v44 firstObject];

    [v41 submitToCoreAnalytics:firstObject2 type:1 duration:v40];
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v47 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277D01448];
    v81 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v81 count:1];
    v50 = [v47 errorWithDomain:v48 code:15 userInfo:v49];

    v37 = v32;
    self = selfCopy;
    v17 = 0x277CCA000uLL;
    v13 = 0x277CBE000uLL;
    v16 = 0x277CCA000uLL;
    if (v50)
    {
      v51 = v50;

      v37 = v50;
    }
  }

  v52 = v37;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke_459;
  v75[3] = &unk_2788C7E48;
  v75[4] = self;
  v53 = v34;
  v76 = v53;
  [transitionStoreCopy purgeTripClusterRoadTransitionsWithHandler:v75];

  v54 = v53;
  v55 = [*(v13 + 2728) now];
  v56 = dispatch_time(0, 3600000000000);
  v57 = v52;
  if (dispatch_semaphore_wait(v54, v56))
  {
    v58 = [*(v13 + 2728) now];
    [v58 timeIntervalSinceDate:v55];
    v60 = v59;
    v61 = objc_opt_new();
    v62 = [*(v16 + 3120) predicateWithBlock:&__block_literal_global_739_0];
    callStackSymbols3 = [*(v17 + 3272) callStackSymbols];
    v64 = [callStackSymbols3 filteredArrayUsingPredicate:v62];
    firstObject3 = [v64 firstObject];

    [v61 submitToCoreAnalytics:firstObject3 type:1 duration:v60];
    v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v66, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v67 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277D01448];
    v81 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v81 count:1];
    v70 = [v67 errorWithDomain:v68 code:15 userInfo:v69];

    v57 = v52;
    if (v70)
    {
      v71 = v70;

      v57 = v70;
    }
  }

  v72 = v57;
}

void __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging clusters,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all clusters (Table 1)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke_458(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging cluster routes,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all cluster routes (Table 4)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __119__RTTripClusterManager_purgeClustersDatabaseWithTripClusterStore_tripClusterRouteStore_tripClusterRoadTransitionStore___block_invoke_459(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v3 localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Error purging road transitions,%@", &v9, 0x16u);

LABEL_9:
    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully purged all road transitions (Table 5)", &v9, 0xCu);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)purgeTripClusterWithClusterID:(id)d handler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        uUIDString = [dCopy UUIDString];
        v21 = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = uUIDString;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,purgeTripClusterWithClusterID,%@", &v21, 0x16u);
      }
    }

    tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
    [tripClusterRouteStore deleteTripClusterRouteWithClusterID:dCopy];

    tripClusterWaypointStore = [(RTTripClusterManager *)self tripClusterWaypointStore];
    [tripClusterWaypointStore deleteTripClusterWaypointWithClusterID:dCopy];

    tripClusterRouteRoadTransitionsStore = [(RTTripClusterManager *)self tripClusterRouteRoadTransitionsStore];
    [tripClusterRouteRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:dCopy];

    tripClusterRecencyStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
    [tripClusterRecencyStore deleteTripClusterRecencyWithClusterID:dCopy];

    tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterScheduleStore];
    [tripClusterScheduleStore deleteTripClusterScheduleWithClusterID:dCopy];

    tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
    [tripClusterStore deleteTripClusterWithUUID:dCopy];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Need a valid clusterID to delete";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    tripClusterStore = [v18 initWithDomain:v19 code:7 userInfo:v20];

    handlerCopy[2](handlerCopy, tripClusterStore);
  }
}

- (void)_deleteAllTripClusterDataForClusterID:(id)d
{
  v40[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  clusterID = [dCopy clusterID];
  v6 = [RTTripClusterProcessor getWaypointIDFromClusterID:clusterID];

  tripClusterRouteStore = [(RTTripClusterManager *)self tripClusterRouteStore];
  [tripClusterRouteStore deleteTripClusterRouteWithClusterID:v6];

  tripClusterRouteStore2 = [(RTTripClusterManager *)self tripClusterRouteStore];
  clusterID2 = [dCopy clusterID];
  [tripClusterRouteStore2 deleteTripClusterRouteWithClusterID:clusterID2];

  tripSegmentRoadTransitionsStore = [(RTTripClusterManager *)self tripSegmentRoadTransitionsStore];
  clusterID3 = [dCopy clusterID];
  [tripSegmentRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:clusterID3];

  tripClusterWaypointStore = [(RTTripClusterManager *)self tripClusterWaypointStore];
  clusterID4 = [dCopy clusterID];
  [tripClusterWaypointStore deleteTripClusterWaypointWithClusterID:clusterID4];

  tripClusterRouteRoadTransitionsStore = [(RTTripClusterManager *)self tripClusterRouteRoadTransitionsStore];
  clusterID5 = [dCopy clusterID];
  [tripClusterRouteRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:clusterID5];

  tripClusterRecencyStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
  clusterID6 = [dCopy clusterID];
  [tripClusterRecencyStore deleteTripClusterRecencyWithClusterID:clusterID6];

  tripClusterScheduleStore = [(RTTripClusterManager *)self tripClusterScheduleStore];
  clusterID7 = [dCopy clusterID];
  [tripClusterScheduleStore deleteTripClusterScheduleWithClusterID:clusterID7];

  tripClusterStore = [(RTTripClusterManager *)self tripClusterStore];
  commuteID = [dCopy commuteID];
  [tripClusterStore deleteTripClusterWithCommuteID:commuteID];

  if ([(RTTripClusterProcessorOptions *)self->_options recordDebuggingDataInFile])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v23 = objc_alloc(MEMORY[0x277CBFC00]);
    [dCopy startLatitude];
    v25 = v24;
    [dCopy startLongitude];
    v27 = [v23 initWithLatitude:v25 longitude:v26];
    v28 = objc_alloc(MEMORY[0x277CBFC00]);
    [dCopy endLatitude];
    v30 = v29;
    [dCopy endLongitude];
    v32 = [v28 initWithLatitude:v30 longitude:v31];
    clusterID8 = [dCopy clusterID];
    [dictionary setValue:clusterID8 forKey:@"RTTCM_PurgeCluster_UUID"];

    v40[0] = v27;
    v40[1] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [dictionary setValue:v34 forKey:@"RTTCM_PurgeCluster_StartAndStopCoord"];

    lastTimeTaken = [dCopy lastTimeTaken];
    [dictionary setValue:lastTimeTaken forKey:@"RTTCM_PurgeCluster_LastTimeTaken"];

    v36 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dCopy, "countOfTraversal")}];
    [dictionary setValue:v36 forKey:@"RTTCM_PurgeCluster_TraversalCount"];

    v37 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dCopy, "modeOfTransport")}];
    [dictionary setValue:v37 forKey:@"RTTCM_PurgeCluster_ModeOfTransport"];

    v38 = [MEMORY[0x277CBEAA8] now];
    [dictionary setValue:v38 forKey:@"RTTCM_PurgeCluster_PurgeTime"];

    v39 = objc_alloc_init(MEMORY[0x277CBFCA8]);
    [v39 outputRouteLearningDebuggingDataInCLTSPFile:dictionary];
  }
}

- (id)_getPurgePolicyOverrideDaysToPersistTripClusterData:(id)data
{
  dataCopy = data;
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentClusterDataPurgeAge"];

  if (v6)
  {
    [v6 floatValue];
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:v7 * -86400.0];
  }

  else
  {
    v8 = dataCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_getPurgePolicyOverrideDaysToPersistTripClusterDataShort:(id)short
{
  v4 = [short dateByAddingTimeInterval:2419200.0];
  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentClusterDataPurgeAge"];

  if (v6)
  {
    [v6 floatValue];
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:v7 * -86400.0];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [v4 earlierDate:date];
  }

  return v8;
}

- (void)purgeClusterDatabasesPredating:(id)predating handler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  v7 = handlerCopy;
  v61 = predatingCopy;
  if (!predatingCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v81 = "[RTTripClusterManager purgeClusterDatabasesPredating:handler:]";
      v82 = 1024;
      LODWORD(v83) = 4248;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!handlerCopy)
  {
LABEL_7:
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v81 = "[RTTripClusterManager purgeClusterDatabasesPredating:handler:]";
      v82 = 1024;
      LODWORD(v83) = 4249;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v10 = [(RTTripClusterManager *)self _getPurgePolicyOverrideDaysToPersistTripClusterData:predatingCopy];
  v11 = [(RTTripClusterManager *)self _getPurgePolicyOverrideDaysToPersistTripClusterDataShort:predatingCopy];
  tripClusterRecencyStore = [(RTTripClusterManager *)self tripClusterRecencyStore];
  [tripClusterRecencyStore deleteTripClusterRecencyPredating:v11];

  v13 = [objc_alloc(MEMORY[0x277D01368]) initWithbatchSize:3000];
  v14 = [(RTTripClusterStore *)self->_tripClusterStore getTripClustersWithOptions:v13];
  v15 = v14;
  if (!v14 || ![v14 count])
  {
    v7[2](v7, 0);
    goto LABEL_50;
  }

  v57 = v13;
  v58 = v7;
  v16 = [v15 count];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v56 = v15;
  obj = v15;
  v59 = v10;
  v60 = v11;
  v68 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (!v68)
  {
    goto LABEL_33;
  }

  v67 = *v76;
  do
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v76 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v75 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v66 = v16;
        v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v62 = NSStringFromClass(v20);
          getFormattedDateString = [v61 getFormattedDateString];
          v22 = v11;
          v23 = getFormattedDateString;
          getFormattedDateString2 = [v22 getFormattedDateString];
          getFormattedDateString3 = [v10 getFormattedDateString];
          lastTimeTaken = [v18 lastTimeTaken];
          getFormattedDateString4 = [lastTimeTaken getFormattedDateString];
          [v18 clusterID];
          v27 = v64 = v15;
          uUIDString = [v27 UUIDString];
          countOfTraversal = [v18 countOfTraversal];
          *buf = 138413826;
          v81 = v62;
          v82 = 2112;
          v83 = v23;
          v84 = 2112;
          v85 = getFormattedDateString2;
          v86 = 2112;
          v87 = getFormattedDateString3;
          v88 = 2112;
          v89 = getFormattedDateString4;
          v90 = 2112;
          v91 = uUIDString;
          v92 = 1024;
          v93 = countOfTraversal;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@,checking,inputDate,%@,purgeDateShort,%@,purgeDate,%@,lastTimeTaken,%@,clusterID,%@,countOfTraversal,%d", buf, 0x44u);

          v15 = v64;
          v10 = v59;

          v11 = v60;
        }

        v16 = v66;
      }

      countOfTraversal2 = [v18 countOfTraversal];
      if (countOfTraversal2 == 1 && ([v18 lastTimeTaken], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "compare:", v15) == 1))
      {
      }

      else
      {
        v31 = v15;
        lastTimeTaken2 = [v18 lastTimeTaken];
        v33 = [v10 compare:lastTimeTaken2];

        if (countOfTraversal2 == 1)
        {
          v15 = v31;

          if (v33 != 1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v15 = v31;
          if (v33 != 1)
          {
            goto LABEL_31;
          }
        }
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        NSStringFromClass(v35);
        v37 = v36 = v15;
        clusterID = [v18 clusterID];
        uUIDString2 = [clusterID UUIDString];
        *buf = 138412546;
        v81 = v37;
        v82 = 2112;
        v83 = uUIDString2;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEFAULT, "%@,deleteTripCluster,clusterID,%@", buf, 0x16u);

        v15 = v36;
      }

      [(RTTripClusterManager *)self _deleteAllTripClusterDataForClusterID:v18];
      --v16;
LABEL_31:
      objc_autoreleasePoolPop(context);
    }

    v68 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
  }

  while (v68);
LABEL_33:

  defaultsManager = [(RTTripClusterManager *)self defaultsManager];
  v41 = [defaultsManager objectForKey:@"RTDefaultsTripClusterManagerMaxClusterCountOnDevice"];

  v42 = 500;
  if (v41)
  {
    intValue = [v41 intValue];
    if (intValue >= 0)
    {
      v44 = intValue;
    }

    else
    {
      v44 = 500;
    }

    v42 = v44;
  }

  v13 = v57;
  v7 = v58;
  if (v16 > v42)
  {
    v45 = MEMORY[0x277CBEB18];
    v46 = [(RTTripClusterStore *)self->_tripClusterStore getTripClustersWithOptions:v57];
    v47 = [v45 arrayWithArray:v46];

    v48 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastTimeTaken" ascending:1];
    v49 = [MEMORY[0x277CBEA60] arrayWithObject:v48];
    [v47 sortUsingDescriptors:v49];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = v47;
    v51 = [v50 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
LABEL_41:
      v54 = 0;
      v55 = v16 - 1;
      v16 -= v52;
      while (1)
      {
        if (*v72 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(RTTripClusterManager *)self _deleteAllTripClusterDataForClusterID:*(*(&v71 + 1) + 8 * v54)];
        if (v55 < v42)
        {
          break;
        }

        ++v54;
        --v55;
        if (v52 == v54)
        {
          v52 = [v50 countByEnumeratingWithState:&v71 objects:v79 count:16];
          if (v52)
          {
            goto LABEL_41;
          }

          break;
        }
      }
    }

    v13 = v57;
    v7 = v58;
    v10 = v59;
  }

  v7[2](v7, 0);

  v11 = v60;
  v15 = v56;
LABEL_50:
}

@end