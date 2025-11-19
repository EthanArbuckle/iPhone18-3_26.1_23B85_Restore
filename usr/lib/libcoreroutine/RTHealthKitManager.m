@interface RTHealthKitManager
+ (BOOL)isFakeRunningUpdate:(id)a3;
+ (id)getWorkoutAllPredictableTypes;
+ (id)stringFromDate:(id)a3 dateFormat:(id)a4;
+ (id)stringFromHealthKitDecimationLevel:(unint64_t)a3;
+ (id)stringFromRTHealthKitWorkoutActivityType:(int64_t)a3;
+ (id)stringFromRTWorkoutEndReminderAlertDismissedReason:(unint64_t)a3;
+ (id)stringFromTimeInterval:(double)a3;
+ (id)stringFromWorkoutActivityType:(unint64_t)a3;
+ (id)workoutSessionStateToString:(unint64_t)a3;
+ (int64_t)RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:(unint64_t)a3;
+ (unint64_t)HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:(int64_t)a3;
+ (unint64_t)RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:(int64_t)a3;
- (BOOL)_createWorkoutClusterWithWorkoutUUIDs:(id)a3 bestWorkoutUUID:(id)a4 lastWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8 error:(id *)a9;
- (BOOL)_deleteWorkoutCluster:(id)a3 error:(id *)a4;
- (BOOL)_doesWorkoutHaveSubsetRoute:(id)a3;
- (BOOL)_dumpHealthKitMetaData:(id)a3 dir:(id)a4 stats:(id)a5 error:(id *)a6;
- (BOOL)_dumpWorkoutClusterAtDir:(id)a3 stats:(id)a4 error:(id *)a5;
- (BOOL)_dumpWorkoutLocationsUsingData:(id)a3 dir:(id)a4 stats:(id)a5 error:(id *)a6;
- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4;
- (BOOL)_isWorkoutFiltered:(id)a3 currentLocation:(id)a4 distanceThreshold:(double)a5 error:(id *)a6;
- (BOOL)_saveEntireHealthKitDataToURL:(id)a3 outAbsoluteURL:(id *)a4 includeWorkoutData:(BOOL)a5 includeLocations:(BOOL)a6 includeOdometerReadings:(BOOL)a7 odometerSamplingIntervalComponents:(id)a8 includeClustersData:(BOOL)a9 error:(id *)a10;
- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 newBestWorkoutUUID:(id)a4 newLastWorkoutUUID:(id)a5 newRelevance:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 error:(id *)a9;
- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 workoutRouteLabel:(id)a4 error:(id *)a5;
- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 workoutRouteSnapshot:(id)a4 error:(id *)a5;
- (BOOL)_writeLocations:(id)a3 csvFileURL:(id)a4 error:(id *)a5;
- (BOOL)_writeToFileAtURL:(id)a3 contentString:(id)a4 error:(id *)a5;
- (BOOL)_writeToJSONAtURL:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)createWorkoutClusterWithWorkoutUUIDs:(id)a3 bestWorkoutUUID:(id)a4 lastWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8 error:(id *)a9;
- (BOOL)deleteWorkoutCluster:(id)a3 error:(id *)a4;
- (BOOL)isWorkoutActivityType:(unint64_t)a3 inTypes:(id)a4;
- (BOOL)saveEntireHealthKitDataToURL:(id)a3 outAbsoluteURL:(id *)a4 includeWorkoutData:(BOOL)a5 includeLocations:(BOOL)a6 includeOdometerReadings:(BOOL)a7 odometerSamplingIntervalComponents:(id)a8 includeClustersData:(BOOL)a9 error:(id *)a10;
- (BOOL)updateWorkoutClusterWithUUID:(id)a3 newBestWorkoutUUID:(id)a4 newLastWorkoutUUID:(id)a5 newRelevance:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 error:(id *)a9;
- (BOOL)updateWorkoutClusterWithUUID:(id)a3 workoutRouteLabel:(id)a4 error:(id *)a5;
- (BOOL)updateWorkoutClusterWithUUID:(id)a3 workoutRouteSnapshot:(id)a4 error:(id *)a5;
- (RTHealthKitManager)initWithContactsManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 healthKitStore:(id)a6 platform:(id)a7 workoutClusterStore:(id)a8;
- (RTHealthKitManager)initWithContactsManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6;
- (double)_getDurationForWorkout:(id)a3;
- (id)_convertHealthKitDataToJSONCompatibleType:(id)a3 stats:(id)a4;
- (id)_getEndDateForWorkout:(id)a3;
- (id)_getHealthKitDataWithStartDate:(id)a3 limit:(int64_t)a4 includeLocations:(BOOL)a5 includeOdometerReadings:(BOOL)a6 odometerSamplingIntervalComponents:(id)a7 error:(id *)a8;
- (id)_getLatestWorkoutDateIntervalWithStartDate:(id)a3 error:(id *)a4;
- (id)_getLatestWorkoutWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 workoutTypes:(id)a8 error:(id *)a9;
- (id)_getOdometerReadingUsingWorkout:(id)a3 samplingIntervalComponents:(id)a4 error:(id *)a5;
- (id)_getPredicatesFromRTWorkoutDefaultTypes:(id)a3;
- (id)_getRTContactsFromHKEmergencyContacts:(id)a3 error:(id *)a4;
- (id)_getRTWorkoutDefaultTypesForRaceRoute;
- (id)_getRTWorkoutDefaultTypesForSMSuggestions;
- (id)_getRelevantWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 workoutTypes:(id)a5 error:(id *)a6;
- (id)_getStartDateForWorkout:(id)a3;
- (id)_getTotalDistanceForWorkout:(id)a3;
- (id)_getWorkoutAllTypes;
- (id)_getWorkoutDefaultStartDateForRaceRoute;
- (id)_getWorkoutRouteUsingWorkout:(id)a3 error:(id *)a4;
- (id)_getWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 sortDescriptors:(id)a5 nearLocation:(id)a6 distanceThreshold:(double)a7 onlySourcedFromFitnessApp:(BOOL)a8 includePastureModeRoutes:(BOOL)a9 workoutTypes:(id)a10 error:(id *)a11;
- (id)_getWorkoutsWithUUIDs:(id)a3 error:(id *)a4;
- (id)getHealthKitDataWithStartDate:(id)a3 limit:(int64_t)a4 includeLocations:(BOOL)a5 includeOdometerReadings:(BOOL)a6 odometerSamplingIntervalComponents:(id)a7 error:(id *)a8;
- (id)getLatestWorkoutDateIntervalWithStartDate:(id)a3 error:(id *)a4;
- (id)getLatestWorkoutWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 workoutTypes:(id)a8 error:(id *)a9;
- (id)getOdometerReadingUsingWorkout:(id)a3 samplingIntervalComponents:(id)a4 error:(id *)a5;
- (id)getRelevantWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 workoutTypes:(id)a5 error:(id *)a6;
- (id)getWorkoutDefaultSortDescriptors;
- (id)getWorkoutRouteUsingWorkout:(id)a3 error:(id *)a4;
- (id)getWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 sortDescriptors:(id)a5 nearLocation:(id)a6 distanceThreshold:(double)a7 onlySourcedFromFitnessApp:(BOOL)a8 includePastureModeRoutes:(BOOL)a9 workoutTypes:(id)a10 error:(id *)a11;
- (id)getWorkoutsWithUUIDs:(id)a3 error:(id *)a4;
- (int64_t)_getWorkoutsCountWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 error:(id *)a8;
- (int64_t)getWorkoutsCountWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 error:(id *)a8;
- (unint64_t)_getDecimationSkipAheadFactorForDuration:(double)a3;
- (void)_createNewWorkoutClusterStore;
- (void)_decimateLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 totalDuration:(double)a5 decimationLevel:(unint64_t)a6 handler:(id)a7;
- (void)_fetchCurrentCMWorkoutSnapshotWithHandler:(id)a3;
- (void)_fetchCurrentWorkoutSnapshotWithHandler:(id)a3;
- (void)_fetchEmergencyContactsWithHandler:(id)a3;
- (void)_fetchWorkoutClusterContainingWorkoutUUID:(id)a3 handler:(id)a4;
- (void)_fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:(id)a3 handler:(id)a4;
- (void)_fetchWorkoutClustersWithHandler:(id)a3;
- (void)_fetchWorkoutRouteLocationsUsingWorkoutRoute:(id)a3 batchSize:(unint64_t)a4 fetchOnlyFirstFew:(BOOL)a5 handler:(id)a6;
- (void)_fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 handler:(id)a4;
- (void)_fetchWorkoutUUIDsForClusterUUID:(id)a3 handler:(id)a4;
- (void)_generateRaceRouteClustersWithLimit:(unint64_t)a3 handler:(id)a4;
- (void)_getRouteLocationsUsingWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(unint64_t)a5 shift:(BOOL)a6 handler:(id)a7;
- (void)_listenForNewWorkoutsForRaceRoute;
- (void)_onNewWorkoutForRaceRouteNotification;
- (void)_onNewWorkoutForSMSuggestionsNotification;
- (void)_onWorkoutOngoingChangedNotification:(id)a3;
- (void)_onWorkoutSnapshotUpdateNotification:(id)a3;
- (void)_postWorkoutOngoingChangedNotificationIfNecessary:(BOOL)a3;
- (void)_setup;
- (void)_setupEvalMode;
- (void)_shiftLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateHealthKitStartDatesUsingData:(id)a3 currentStartDate:(id *)a4 nextStartDate:(id *)a5;
- (void)_updateWorkoutStateWithSnapshot:(id)a3;
- (void)createNewWorkoutClusterStore;
- (void)didUpdateWorkoutSnapshot:(id)a3;
- (void)fetchCurrentCMWorkoutSnapshotWithHandler:(id)a3;
- (void)fetchCurrentWorkoutSnapshotWithHandler:(id)a3;
- (void)fetchEmergencyContactsWithHandler:(id)a3;
- (void)fetchMostRecentWorkoutInfoWithHandler:(id)a3;
- (void)fetchMostRecentWorkoutLocationTypeWithHandler:(id)a3;
- (void)fetchRouteLocationsUsingWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(unint64_t)a5 shift:(BOOL)a6 handler:(id)a7;
- (void)fetchWorkoutClusterContainingWorkoutUUID:(id)a3 handler:(id)a4;
- (void)fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:(id)a3 handler:(id)a4;
- (void)fetchWorkoutClustersWithHandler:(id)a3;
- (void)fetchWorkoutRouteLocationsUsingWorkoutRoute:(id)a3 batchSize:(unint64_t)a4 fetchOnlyFirstFew:(BOOL)a5 handler:(id)a6;
- (void)fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 handler:(id)a4;
- (void)fetchWorkoutUUIDsForClusterUUID:(id)a3 handler:(id)a4;
- (void)generateRaceRouteClustersWithLimit:(unint64_t)a3 handler:(id)a4;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onNewWorkoutForRaceRouteNotification;
- (void)onNewWorkoutForSMSuggestionsNotification;
- (void)onWorkoutOngoingChangedNotification:(id)a3;
- (void)onWorkoutSnapshotUpdateNotification:(id)a3;
- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5;
- (void)setListenForNewWorkoutsForRaceRouteEnabled:(BOOL)a3;
- (void)workoutManager:(id)a3 willPauseWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 willResumeWorkout:(id)a4 atDate:(id)a5;
@end

@implementation RTHealthKitManager

+ (id)stringFromRTHealthKitWorkoutActivityType:(int64_t)a3
{
  if (a3 <= 36)
  {
    if (a3 == 13)
    {
      return @"Cycling";
    }

    if (a3 == 24)
    {
      return @"Hiking";
    }
  }

  else
  {
    switch(a3)
    {
      case 'G':
        return @"Wheelchair Run";
      case '4':
        return @"Walking";
      case '%':
        return @"Running";
    }
  }

  return @"Unknown";
}

+ (id)stringFromRTWorkoutEndReminderAlertDismissedReason:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D1A38[a3 - 1];
  }
}

+ (id)workoutSessionStateToString:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"RTHealthKitWorkoutSessionStateUnknown";
  }

  else
  {
    return off_2788D1A60[a3 - 1];
  }
}

- (RTHealthKitManager)initWithContactsManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v25 = 0;
    v19 = "Invalid parameter not satisfying: contactsManager";
    v20 = &v25;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_15;
  }

  if (!v11)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v24 = 0;
    v19 = "Invalid parameter not satisfying: defaultsManager";
    v20 = &v24;
    goto LABEL_14;
  }

  if (!v12)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: distanceCalculator";
    v20 = &v23;
    goto LABEL_14;
  }

  if (!v13)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v19 = "Invalid parameter not satisfying: platform";
      v20 = &v22;
      goto LABEL_14;
    }

LABEL_15:

    v17 = 0;
    goto LABEL_16;
  }

  v15 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v16 = [objc_alloc(MEMORY[0x277CCDC28]) initWithHealthStore:v15];
  self = [(RTHealthKitManager *)self initWithContactsManager:v10 defaultsManager:v11 distanceCalculator:v12 healthKitStore:v15 platform:v14 workoutClusterStore:v16];

  v17 = self;
LABEL_16:

  return v17;
}

- (RTHealthKitManager)initWithContactsManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 healthKitStore:(id)a6 platform:(id)a7 workoutClusterStore:(id)a8
{
  v33 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v34 = a7;
  v18 = a8;
  v32 = v18;
  if (!v15)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: defaultsManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_20;
  }

  if (!v16)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!v17)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: healthStore";
    goto LABEL_19;
  }

  if (!v34)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: platform";
    goto LABEL_19;
  }

  if (!v18)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: workoutClusterStore";
      goto LABEL_19;
    }

LABEL_20:

    v28 = 0;
    goto LABEL_21;
  }

  v35.receiver = self;
  v35.super_class = RTHealthKitManager;
  v19 = [(RTNotifier *)&v35 init];
  if (v19)
  {
    v20 = [MEMORY[0x277D01168] createErrorFunctionWithPerpendicularDistance];
    errorFunction = v19->_errorFunction;
    v19->_errorFunction = v20;

    objc_storeStrong(&v19->_contactsManager, a3);
    objc_storeStrong(&v19->_defaultsManager, a4);
    objc_storeStrong(&v19->_distanceCalculator, a5);
    v22 = [objc_alloc(MEMORY[0x277CCDE60]) initWithHealthStore:v17 reportInactiveSessions:1];
    workoutObserver = v19->_workoutObserver;
    v19->_workoutObserver = v22;

    [(_HKWorkoutObserver *)v19->_workoutObserver setDelegate:v19];
    objc_storeStrong(&v19->_healthStore, a6);
    v24 = objc_alloc_init(MEMORY[0x277CC1DA0]);
    workoutManager = v19->_workoutManager;
    v19->_workoutManager = v24;

    [(CMWorkoutManager *)v19->_workoutManager setDelegate:v19];
    [(CMWorkoutManager *)v19->_workoutManager muteAutoPauseForWorkoutType:15 mute:0];
    [(CMWorkoutManager *)v19->_workoutManager muteAutoPauseForWorkoutType:16 mute:0];
    [(CMWorkoutManager *)v19->_workoutManager muteAutoPauseForWorkoutType:24 mute:0];
    v26 = [objc_alloc(MEMORY[0x277CCD5E8]) initWithHealthStore:v17];
    medicalIDStore = v19->_medicalIDStore;
    v19->_medicalIDStore = v26;

    objc_storeStrong(&v19->_platform, a7);
    objc_storeStrong(&v19->_workoutClusterStore, a8);
    v19->_listenForNewWorkoutsForRaceRouteEnabled = 0;
    v19->_listenForNewWorkoutsForSMSuggestionsEnabled = 0;
    v19->_listenForWorkoutSnapshotUpdatesEnabled = 0;
    v19->_listenForWorkoutOngoingChangedEnabled = 0;
    [(RTService *)v19 setup];
  }

  self = v19;
  v28 = self;
LABEL_21:

  return v28;
}

- (void)_setup
{
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    objc_initWeak(&location, self);
    out_token = 0;
    v3 = [@"RTHealthKitManagerObservedNewWorkoutForRaceRoute" UTF8String];
    v4 = [(RTNotifier *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__RTHealthKitManager__setup__block_invoke;
    handler[3] = &unk_2788CA130;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(v3, &out_token, v4, handler);

    v5 = [@"RTHealthKitManagerObservedNewWorkoutForSMSuggestions" UTF8String];
    v6 = [(RTNotifier *)self queue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __28__RTHealthKitManager__setup__block_invoke_625;
    v18 = &unk_2788CA130;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch(v5, &out_token, v6, &v15);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v7 = [(RTHealthKitManager *)self defaultsManager:v15];
  v8 = [v7 objectForKey:@"RTDefaultsWorkoutMinDistance"];

  if (v8)
  {
    v9 = [(RTHealthKitManager *)self defaultsManager];
    v10 = [v9 objectForKey:@"RTDefaultsWorkoutMinDistance"];
    self->_workoutMinDistance = [v10 unsignedIntegerValue];
  }

  else
  {
    self->_workoutMinDistance = 1000;
  }

  v11 = [(RTHealthKitManager *)self defaultsManager];
  v12 = [v11 objectForKey:@"RTDefaultsWorkoutMinDistanceCycling"];

  if (v12)
  {
    v13 = [(RTHealthKitManager *)self defaultsManager];
    v14 = [v13 objectForKey:@"RTDefaultsWorkoutMinDistanceCycling"];
    self->_workoutMinDistanceCycling = [v14 unsignedIntegerValue];
  }

  else
  {
    self->_workoutMinDistanceCycling = 5000;
  }

  [(RTHealthKitManager *)self _setupEvalMode];
}

void __28__RTHealthKitManager__setup__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onNewWorkoutForRaceRouteNotification];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = @"RTHealthKitManagerObservedNewWorkoutForRaceRoute";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Registering for %@", &v3, 0xCu);
    }
  }
}

void __28__RTHealthKitManager__setup__block_invoke_625(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onNewWorkoutForSMSuggestionsNotification];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = @"RTHealthKitManagerObservedNewWorkoutForSMSuggestions";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Registering for %@", &v3, 0xCu);
    }
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  healthStore = self->_healthStore;
  theNewWorkoutsForRaceRouteQuery = self->_theNewWorkoutsForRaceRouteQuery;
  v6 = a3;
  [(HKHealthStore *)healthStore stopQuery:theNewWorkoutsForRaceRouteQuery];
  [(HKHealthStore *)self->_healthStore stopQuery:self->_theNewWorkoutsForSMSuggestionsQuery];
  v6[2](v6, 0);
}

+ (id)stringFromWorkoutActivityType:(unint64_t)a3
{
  v3 = @"WheelChairRunPace";
  v4 = @"Unknown";
  if (a3 == 37)
  {
    v4 = @"Running";
  }

  if (a3 != 71)
  {
    v3 = v4;
  }

  if (a3 == 13)
  {
    return @"Cycling";
  }

  else
  {
    return v3;
  }
}

+ (id)stringFromHealthKitDecimationLevel:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D1A90[a3 - 1];
  }
}

+ (id)stringFromTimeInterval:(double)a3
{
  if (qword_2814A7C98 != -1)
  {
    dispatch_once(&qword_2814A7C98, &__block_literal_global_139);
  }

  v4 = _MergedGlobals_1_1;

  return [v4 stringFromTimeInterval:a3];
}

uint64_t __45__RTHealthKitManager_stringFromTimeInterval___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_1_1;
  _MergedGlobals_1_1 = v0;

  [_MergedGlobals_1_1 setAllowedUnits:224];
  v2 = _MergedGlobals_1_1;

  return [v2 setZeroFormattingBehavior:0x10000];
}

+ (id)stringFromDate:(id)a3 dateFormat:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_2814A7CB0 != -1)
  {
    dispatch_once(&qword_2814A7CB0, &__block_literal_global_647);
  }

  v7 = [v6 isEqualToString:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v8 = 2;
  if (v7)
  {
    v8 = 3;
  }

  v9 = _MergedGlobals_1_1[v8];
  v10 = [v9 stringFromDate:v5];

  return v10;
}

uint64_t __48__RTHealthKitManager_stringFromDate_dateFormat___block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_2814A7CA0;
  qword_2814A7CA0 = v0;

  v2 = qword_2814A7CA0;
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v2 setTimeZone:v3];

  [qword_2814A7CA0 setDateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
  v4 = objc_opt_new();
  v5 = qword_2814A7CA8;
  qword_2814A7CA8 = v4;

  v6 = qword_2814A7CA8;
  v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v6 setTimeZone:v7];

  v8 = qword_2814A7CA8;

  return [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

+ (int64_t)RTHealthKitWorkoutActivityTypeFromHKWorkoutActivityType:(unint64_t)a3
{
  if (a3 - 13 > 0x3A || ((1 << (a3 - 13)) & 0x400008001000001) == 0)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:(int64_t)a3
{
  if ((a3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:(int64_t)a3
{
  if ((a3 - 13) > 0x3A || ((1 << (a3 - 13)) & 0x400008001000801) == 0)
  {
    return 3000;
  }

  else
  {
    return a3;
  }
}

- (void)createNewWorkoutClusterStore
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTHealthKitManager_createNewWorkoutClusterStore__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_createNewWorkoutClusterStore
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Creating new HKWorkoutClusterStore", v7, 2u);
    }
  }

  [(RTHealthKitManager *)self setWorkoutClusterStore:0];
  v4 = objc_alloc(MEMORY[0x277CCDC28]);
  v5 = [(RTHealthKitManager *)self healthStore];
  v6 = [v4 initWithHealthStore:v5];
  [(RTHealthKitManager *)self setWorkoutClusterStore:v6];
}

- (void)workoutManager:(id)a3 willPauseWorkout:(id)a4 atDate:(id)a5
{
  v7 = [(RTNotifier *)self queue:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__RTHealthKitManager_workoutManager_willPauseWorkout_atDate___block_invoke;
  v8[3] = &unk_2788C52E8;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void __61__RTHealthKitManager_workoutManager_willPauseWorkout_atDate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = +[(RTNotification *)RTHealthKitManagerWorkoutWillPauseWorkoutNotification];
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, posting, %@", &v9, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  [v7 postNotification:v8];
}

- (void)workoutManager:(id)a3 willResumeWorkout:(id)a4 atDate:(id)a5
{
  v7 = [(RTNotifier *)self queue:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__RTHealthKitManager_workoutManager_willResumeWorkout_atDate___block_invoke;
  v8[3] = &unk_2788C52E8;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(v7, v8);
}

void __62__RTHealthKitManager_workoutManager_willResumeWorkout_atDate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = +[(RTNotification *)RTHealthKitManagerWorkoutWillResumeWorkoutNotification];
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, posting, %@", &v9, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_new();
  [v7 postNotification:v8];
}

+ (BOOL)isFakeRunningUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 internalState] - 11;
  if (v5 <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [v4 sessionIdentifier];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, ignore fake WorkoutSessionRunning Update for workout with UUID, %@", &v12, 0x20u);
    }
  }

  return v5 < 3;
}

- (void)didUpdateWorkoutSnapshot:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTHealthKitManager_didUpdateWorkoutSnapshot___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __47__RTHealthKitManager_didUpdateWorkoutSnapshot___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v1 = NSStringFromClass(v5);
      v2 = NSStringFromSelector(*(a1 + 48));
      v6 = [*(a1 + 40) configuration];
      v7 = [v6 activityType];
      v8 = [*(a1 + 40) configuration];
      v9 = [v8 locationType];
      v10 = [*(a1 + 40) sessionState];
      v11 = [*(a1 + 40) sessionError];
      *buf = 138544642;
      v53 = v1;
      v54 = 2114;
      v55 = v2;
      v56 = 1024;
      *v57 = v7;
      *&v57[4] = 1024;
      *&v57[6] = v9;
      v58 = 1024;
      v59 = v10;
      v60 = 2114;
      v61 = v11;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, incoming workout snapshot, activityType, %d, locationType, %d, sessionState, %d, sessionError, %{public}@", buf, 0x32u);
    }
  }

  if ([*(a1 + 40) sessionState] == 2)
  {
    if (([objc_opt_class() isFakeRunningUpdate:*(a1 + 40)] & 1) == 0)
    {
      v12 = [*(a1 + 32) currentWorkoutSessionIdentifier];
      if (!v12 || ([*(a1 + 32) currentWorkoutSessionIdentifier], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "sessionIdentifier"), v2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v1, "isEqual:", v2)))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) configuration];
        v15 = [v14 activityType];
        v16 = [*(a1 + 32) _getRTWorkoutDefaultTypesForSMSuggestions];
        v17 = [v13 isWorkoutActivityType:v15 inTypes:v16];

        if (v12)
        {

          if ((v17 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (!v17)
        {
          goto LABEL_19;
        }

        v18 = [*(a1 + 40) sessionIdentifier];
        [*(a1 + 32) setCurrentWorkoutSessionIdentifier:v18];

        [*(a1 + 32) setCurrentWorkoutIsFirstPartyWorkout:{objc_msgSend(*(a1 + 40), "isFirstPartyWorkout")}];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = NSStringFromSelector(*(a1 + 48));
            v23 = [*(a1 + 40) sessionIdentifier];
            *buf = 138543874;
            v53 = v21;
            v54 = 2114;
            v55 = v22;
            v56 = 2112;
            *v57 = v23;
            _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, new workout started with uuid, %@", buf, 0x20u);
          }
        }

        [*(a1 + 32) onNewWorkoutForSMSuggestionsNotification];
        goto LABEL_19;
      }
    }

LABEL_19:
    v24 = [*(a1 + 40) configuration];
    v25 = [v24 locationType];

    v26 = [*(a1 + 32) defaultsManager];
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
    [v26 setObject:v27 forKey:@"RTDefaultsMostRecentWorkoutLocationType"];

    v28 = [*(a1 + 40) configuration];
    v29 = [v28 activityType];

    v30 = [*(a1 + 32) defaultsManager];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    [v30 setObject:v31 forKey:@"RTDefaultsMostRecentWorkoutActivityType"];

    v32 = [*(a1 + 40) sessionIdentifier];
    v33 = [v32 UUIDString];

    v34 = [*(a1 + 32) defaultsManager];
    [v34 setObject:v33 forKey:@"RTDefaultsMostRecentWorkoutSessionID"];

    v35 = [*(a1 + 40) sessionType];
    v36 = [*(a1 + 32) defaultsManager];
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:v35];
    [v36 setObject:v37 forKey:@"RTDefaultsMostRecentWorkoutMirrorType"];
  }

  if (*(a1 + 40) && (v38 = [[RTCurrentWorkoutSnapshot alloc] initWithHKCurrentWorkoutSnapshot:*(a1 + 40)]) != 0)
  {
    v39 = v38;
  }

  else
  {
    v40 = [RTCurrentWorkoutSnapshot alloc];
    v41 = [*(a1 + 32) currentWorkoutSessionIdentifier];
    v42 = [*(a1 + 32) currentWorkoutIsFirstPartyWorkout];
    v43 = [*(a1 + 40) builderStartDate];
    v44 = [*(a1 + 40) snapshotDate];
    v45 = [*(a1 + 40) sessionError];
    v39 = [(RTCurrentWorkoutSnapshot *)v40 initWithSessionIdentifier:v41 activityType:0 locationType:1 swimmingLocationType:0 sessionType:0 isFirstPartyWorkout:v42 sessionState:3 workoutStartDate:v43 snapshotDate:v44 sessionError:v45];
  }

  v46 = [[RTHealthKitManagerWorkoutSnapshotUpdateNotification alloc] initWithWorkoutSnapshot:v39];
  [*(a1 + 32) onWorkoutSnapshotUpdateNotification:v46];
  v47 = *(a1 + 40);
  if (!v47 || [v47 sessionState] == 3)
  {
    [*(a1 + 32) setCurrentWorkoutSessionIdentifier:0];
    [*(a1 + 32) setCurrentWorkoutIsFirstPartyWorkout:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(*(a1 + 48));
        *buf = 138543618;
        v53 = v50;
        v54 = 2114;
        v55 = v51;
        _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, setting current workout session to nil", buf, 0x16u);
      }
    }
  }

  [*(a1 + 32) _updateWorkoutStateWithSnapshot:*(a1 + 40)];
}

- (void)_updateWorkoutStateWithSnapshot:(id)a3
{
  v14 = a3;
  v4 = [(RTHealthKitManager *)self defaultsManager];
  v5 = [v4 objectForKey:@"RTDefaultsWorkoutOngoing"];
  v6 = [v5 BOOLValue];

  if (v14)
  {
    v7 = [v14 sessionState] - 1;
    if (v7 > 5)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    else
    {
      v8 = qword_2788D1AA8[v7];
    }

    v11 = [(RTHealthKitManager *)self defaultsManager];
    [v11 setObject:v8 forKey:@"RTDefaultsWorkoutOngoing"];

    v12 = [objc_opt_class() RTHealthKitWorkoutSessionStateFromHKWorkoutSessionState:{objc_msgSend(v14, "sessionState")}];
    v10 = [(RTHealthKitManager *)self defaultsManager];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v10 setObject:v13 forKey:@"RTDefaultsMostRecentWorkoutState"];
  }

  else
  {
    v9 = [(RTHealthKitManager *)self defaultsManager];
    [v9 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsWorkoutOngoing"];

    v10 = [(RTHealthKitManager *)self defaultsManager];
    [v10 setObject:&unk_28459FAB0 forKey:@"RTDefaultsMostRecentWorkoutState"];
  }

  [(RTHealthKitManager *)self _postWorkoutOngoingChangedNotificationIfNecessary:v6];
}

- (void)_postWorkoutOngoingChangedNotificationIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(RTHealthKitManager *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsWorkoutOngoing"];
  v7 = [v6 BOOLValue];

  if (v7 != v3)
  {
    v8 = objc_alloc_init(RTHealthKitManagerWorkoutOngoingChangedNotification);
    [(RTHealthKitManager *)self onWorkoutOngoingChangedNotification:v8];
  }
}

- (void)fetchCurrentWorkoutSnapshotWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTHealthKitManager_fetchCurrentWorkoutSnapshotWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchCurrentWorkoutSnapshotWithHandler:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__170;
  v13[4] = __Block_byref_object_dispose__170;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__170;
  v11[4] = __Block_byref_object_dispose__170;
  v12 = 0;
  v5 = [(RTHealthKitManager *)self workoutObserver];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTHealthKitManager__fetchCurrentWorkoutSnapshotWithHandler___block_invoke;
  v7[3] = &unk_2788D1630;
  v7[4] = self;
  v9 = v11;
  v10 = v13;
  v6 = v4;
  v8 = v6;
  [v5 currentWorkoutSnapshotWithCompletion:v7];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __62__RTHealthKitManager__fetchCurrentWorkoutSnapshotWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTHealthKitManager__fetchCurrentWorkoutSnapshotWithHandler___block_invoke_2;
  block[3] = &unk_2788D1608;
  v16 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __62__RTHealthKitManager__fetchCurrentWorkoutSnapshotWithHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(*(*(a1 + 56) + 8) + 40) builderStartDate];
        v6 = [*(*(*(a1 + 56) + 8) + 40) sessionType];
        v9 = 136315650;
        v10 = "[RTHealthKitManager _fetchCurrentWorkoutSnapshotWithHandler:]_block_invoke_2";
        v11 = 2112;
        v12 = v5;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, Current workout, start date: %@, session type: %ld", &v9, 0x20u);
      }
    }

    v7 = [[RTCurrentWorkoutSnapshot alloc] initWithHKCurrentWorkoutSnapshot:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    if (v3)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[RTHealthKitManager _fetchCurrentWorkoutSnapshotWithHandler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, Current workout snapshot is nil", &v9, 0xCu);
      }
    }

    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchCurrentCMWorkoutSnapshotWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTHealthKitManager_fetchCurrentCMWorkoutSnapshotWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchCurrentCMWorkoutSnapshotWithHandler:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__170;
  v13[4] = __Block_byref_object_dispose__170;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__170;
  workoutManager = self->_workoutManager;
  v11[4] = __Block_byref_object_dispose__170;
  v12 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTHealthKitManager__fetchCurrentCMWorkoutSnapshotWithHandler___block_invoke;
  v7[3] = &unk_2788D1658;
  v7[4] = self;
  v9 = v11;
  v10 = v13;
  v6 = v4;
  v8 = v6;
  [(CMWorkoutManager *)workoutManager snapshotWithCompletion:v7];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __64__RTHealthKitManager__fetchCurrentCMWorkoutSnapshotWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTHealthKitManager__fetchCurrentCMWorkoutSnapshotWithHandler___block_invoke_2;
  block[3] = &unk_2788D1608;
  v16 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__RTHealthKitManager__fetchCurrentCMWorkoutSnapshotWithHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(*(*(a1 + 56) + 8) + 40) entryDate];
        v7 = 136315394;
        v8 = "[RTHealthKitManager _fetchCurrentCMWorkoutSnapshotWithHandler:]_block_invoke_2";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, Current workout, start date: %@", &v7, 0x16u);
      }

LABEL_8:
    }
  }

  else if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[RTHealthKitManager _fetchCurrentCMWorkoutSnapshotWithHandler:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, Current workout snapshot is nil", &v7, 0xCu);
    }

    goto LABEL_8;
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)setListenForNewWorkoutsForRaceRouteEnabled:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_listenForNewWorkoutsForRaceRouteEnabled != a3)
  {
    v3 = a3;
    self->_listenForNewWorkoutsForRaceRouteEnabled = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if (self->_listenForNewWorkoutsForRaceRouteEnabled)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "listening for new workouts for Race Route enabled, %@", &v7, 0xCu);
      }

      if (!self->_listenForNewWorkoutsForRaceRouteEnabled)
      {
        goto LABEL_9;
      }
    }

    else if (!v3)
    {
LABEL_9:
      [(HKHealthStore *)self->_healthStore stopQuery:self->_theNewWorkoutsForRaceRouteQuery];
      return;
    }

    [(RTHealthKitManager *)self _listenForNewWorkoutsForRaceRoute];
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(RTNotifier *)self getNumberOfObservers:v5];
  v7 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForRaceRouteNotification];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    [(RTHealthKitManager *)self setListenForNewWorkoutsForRaceRouteEnabled:v6 != 0];
  }

  else
  {
    v9 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForSMSuggestionsNotification];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      [(RTHealthKitManager *)self setListenForNewWorkoutsForSMSuggestionsEnabled:v6 != 0];
    }

    else
    {
      v11 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        [(RTHealthKitManager *)self setListenForWorkoutSnapshotUpdatesEnabled:v6 != 0];
      }

      else
      {
        v13 = +[(RTNotification *)RTHealthKitManagerWorkoutOngoingChangedNotification];
        v14 = [v5 isEqualToString:v13];

        if (v14)
        {
          [(RTHealthKitManager *)self setListenForWorkoutOngoingChangedEnabled:v6 != 0];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = 138412290;
            v17 = v5;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v16, 0xCu);
          }
        }
      }
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(RTNotifier *)self getNumberOfObservers:v5];
  v7 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForRaceRouteNotification];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    [(RTHealthKitManager *)self setListenForNewWorkoutsForRaceRouteEnabled:v6 != 0];
  }

  else
  {
    v9 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForSMSuggestionsNotification];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      [(RTHealthKitManager *)self setListenForNewWorkoutsForSMSuggestionsEnabled:v6 != 0];
    }

    else
    {
      v11 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        [(RTHealthKitManager *)self setListenForWorkoutSnapshotUpdatesEnabled:v6 != 0];
      }

      else
      {
        v13 = +[(RTNotification *)RTHealthKitManagerWorkoutOngoingChangedNotification];
        v14 = [v5 isEqualToString:v13];

        if (v14)
        {
          [(RTHealthKitManager *)self setListenForWorkoutOngoingChangedEnabled:v6 != 0];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = 138412290;
            v17 = v5;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v16, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_listenForNewWorkoutsForRaceRoute
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!self->_theNewWorkoutsForRaceRouteQuery)
  {
    v3 = MEMORY[0x277CCA920];
    v4 = [(RTHealthKitManager *)self _getRTWorkoutDefaultTypesForRaceRoute];
    v5 = [(RTHealthKitManager *)self _getPredicatesFromRTWorkoutDefaultTypes:v4];
    v6 = [v3 orPredicateWithSubpredicates:v5];

    v7 = MEMORY[0x277CCA920];
    v16[0] = v6;
    v8 = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
    v16[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v7 andPredicateWithSubpredicates:v9];

    v11 = objc_alloc(MEMORY[0x277CCD730]);
    v12 = [MEMORY[0x277CCD8D8] workoutType];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__RTHealthKitManager__listenForNewWorkoutsForRaceRoute__block_invoke;
    v15[3] = &unk_2788D1680;
    v15[4] = self;
    v13 = [v11 initWithSampleType:v12 predicate:v10 updateHandler:v15];
    theNewWorkoutsForRaceRouteQuery = self->_theNewWorkoutsForRaceRouteQuery;
    self->_theNewWorkoutsForRaceRouteQuery = v13;

    [(HKHealthStore *)self->_healthStore executeQuery:self->_theNewWorkoutsForRaceRouteQuery];
  }
}

void __55__RTHealthKitManager__listenForNewWorkoutsForRaceRoute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v3 onNewWorkoutForRaceRouteNotification];
  v4[2]();
}

- (void)onNewWorkoutForRaceRouteNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTHealthKitManager_onNewWorkoutForRaceRouteNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onNewWorkoutForRaceRouteNotification
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(RTHealthKitManager *)self receivedInitialNewWorkoutsQueryResponse])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(a2);
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, posting New Workout Notification", &v9, 0x16u);
      }
    }

    v8 = objc_opt_new();
    [(RTNotifier *)self postNotification:v8];
  }

  else
  {

    [(RTHealthKitManager *)self setReceivedInitialNewWorkoutsQueryResponse:1];
  }
}

- (void)onNewWorkoutForSMSuggestionsNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTHealthKitManager_onNewWorkoutForSMSuggestionsNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onNewWorkoutForSMSuggestionsNotification
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(RTHealthKitManager *)self listenForNewWorkoutsForSMSuggestionsEnabled];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v5)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, Posting New Workout Notification For SM Suggestions", &v14, 0x16u);
      }
    }

    v10 = objc_opt_new();
    [(RTNotifier *)self postNotification:v10];
LABEL_7:

    return;
  }

  if (v5)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, No active listeners for Workout Notification For SM Suggestions. Hence skipping the notification", &v14, 0x16u);
    }

    goto LABEL_7;
  }
}

- (void)onWorkoutSnapshotUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTHealthKitManager_onWorkoutSnapshotUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWorkoutSnapshotUpdateNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(RTHealthKitManager *)self listenForWorkoutSnapshotUpdatesEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315394;
        v12 = "[RTHealthKitManager _onWorkoutSnapshotUpdateNotification:]";
        v13 = 2112;
        v14 = v5;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, Posting New Workout Snapshot Update Notification, %@", &v11, 0x16u);
      }
    }

    [(RTNotifier *)self postNotification:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, No active listeners for Workout Snapshot Update Notification. Hence skipping the notification", &v11, 0x16u);
    }
  }
}

- (void)onWorkoutOngoingChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTHealthKitManager_onWorkoutOngoingChangedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWorkoutOngoingChangedNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(RTHealthKitManager *)self listenForWorkoutOngoingChangedEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136315394;
        v12 = "[RTHealthKitManager _onWorkoutOngoingChangedNotification:]";
        v13 = 2112;
        v14 = v5;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%s, Posting WorkoutOnGoingChanged Notification, %@", &v11, 0x16u);
      }
    }

    [(RTNotifier *)self postNotification:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, No active listeners for WorkoutOnGoingChanged Notification. Hence skipping the notification", &v11, 0x16u);
    }
  }
}

- (BOOL)_doesWorkoutHaveSubsetRoute:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 metadata];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE0B8]];
    if (v6)
    {
      v7 = [v4 metadata];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCE0C0]];
      if (v8)
      {
        v9 = [v4 metadata];
        v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCE0C8]];
        if (v10)
        {
          v11 = [v4 metadata];
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCE098]];
          if (v12)
          {
            v20 = v11;
            v19 = [v4 metadata];
            v13 = [v19 objectForKeyedSubscript:*MEMORY[0x277CCE0A0]];
            if (v13)
            {
              v18 = [v4 metadata];
              v14 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCE0A8]];
              v15 = v14 != 0;
            }

            else
            {
              v15 = 0;
            }

            v11 = v20;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_getTotalDistanceForWorkout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTHealthKitManager *)self _doesWorkoutHaveSubsetRoute:v4])
    {
      v5 = [v4 metadata];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE0A0]];
      [v6 doubleValue];
      v8 = v7;
      v9 = [v4 metadata];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCE0C0]];
      [v10 doubleValue];
      v12 = v8 - v11;

      v13 = MEMORY[0x277CCD7E8];
      v14 = [MEMORY[0x277CCDAB0] meterUnit];
      v15 = [v13 quantityWithUnit:v14 doubleValue:v12];
    }

    else
    {
      v15 = [v4 totalDistance];
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (double)_getDurationForWorkout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTHealthKitManager *)self _doesWorkoutHaveSubsetRoute:v4])
    {
      v5 = [v4 metadata];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE0A8]];
      [v6 doubleValue];
      v8 = v7;
      v9 = [v4 metadata];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCE0C8]];
      [v10 doubleValue];
      v12 = v8 - v11;
    }

    else
    {
      [v4 duration];
      v12 = v14;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", v16, 2u);
    }

    v12 = 0.0;
  }

  return v12;
}

- (id)_getStartDateForWorkout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTHealthKitManager *)self _doesWorkoutHaveSubsetRoute:v4])
    {
      v5 = [v4 metadata];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE0B8]];
    }

    else
    {
      v6 = [v4 startDate];
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_getEndDateForWorkout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTHealthKitManager *)self _doesWorkoutHaveSubsetRoute:v4])
    {
      v5 = [v4 metadata];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE098]];
    }

    else
    {
      v6 = [v4 endDate];
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)getRelevantWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 workoutTypes:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a6)
    {
      *a6 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    goto LABEL_19;
  }

  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a6)
    {
      *a6 = _RTErrorInvalidParameterCreate(@"workoutTypes");
    }

LABEL_19:
    v15 = [MEMORY[0x277CBEA60] array];
    goto LABEL_20;
  }

  if (a4 < 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager getRelevantWorkoutsWithStartDate:limit:workoutTypes:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 1211;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__170;
  v33 = __Block_byref_object_dispose__170;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__170;
  v29 = __Block_byref_object_dispose__170;
  v30 = 0;
  v14 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__RTHealthKitManager_getRelevantWorkoutsWithStartDate_limit_workoutTypes_error___block_invoke;
  v19[3] = &unk_2788D16A8;
  v22 = buf;
  v19[4] = self;
  v20 = v10;
  v24 = a4;
  v21 = v12;
  v23 = &v25;
  dispatch_sync(v14, v19);

  if (a6)
  {
    *a6 = v26[5];
  }

  v15 = *(*&buf[8] + 40);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

LABEL_20:

  return v15;
}

void __80__RTHealthKitManager_getRelevantWorkoutsWithStartDate_limit_workoutTypes_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 _getRelevantWorkoutsWithStartDate:v3 limit:v5 workoutTypes:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)_getRelevantWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 workoutTypes:(id)a5 error:(id *)a6
{
  v120[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v80 = v9;
  v82 = v10;
  if (!v9)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a6)
    {
      *a6 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a6)
    {
      *a6 = _RTErrorInvalidParameterCreate(@"workoutTypes");
    }

LABEL_19:
    v14 = [MEMORY[0x277CBEA60] array];
    goto LABEL_61;
  }

  if (![v10 count])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _getRelevantWorkoutsWithStartDate:limit:workoutTypes:error:]";
      v108 = 1024;
      LODWORD(v109) = 1234;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "workout types cannot be zero (in %s:%d)", buf, 0x12u);
    }
  }

  aSelector = a2;
  if (a4 < 0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _getRelevantWorkoutsWithStartDate:limit:workoutTypes:error:]";
      v108 = 1024;
      LODWORD(v109) = 1235;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_23;
  }

  if (a4 >= 0x1389)
  {
LABEL_23:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(aSelector);
        *buf = 138413314;
        *&buf[4] = v18;
        v108 = 2112;
        v109 = v19;
        v110 = 2048;
        v111 = 5000;
        v112 = 2048;
        v113 = 5000;
        v114 = 2048;
        v115 = 5000;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, limit, %lu, excedded maximum value, %lu. Reducing limit to max of %lu", buf, 0x34u);
      }
    }

    a4 = 5000;
  }

  v20 = objc_opt_new();
  v78 = objc_opt_new();
  v75 = v9;
  v79 = objc_opt_new();
  v74 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v75 endDate:0 options:1];
  [v79 addObject:v74];
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__170;
  v105 = __Block_byref_object_dispose__170;
  v106 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__170;
  v99 = __Block_byref_object_dispose__170;
  v100 = 0;
  v73 = dispatch_semaphore_create(0);
  if ([v82 count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v82, "count")}];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v22 = v82;
    v23 = [v22 countByEnumeratingWithState:&v91 objects:v119 count:16];
    if (v23)
    {
      v24 = *v92;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v92 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v91 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          v28 = [v26 unsignedIntegerValue];
          v29 = [MEMORY[0x277CCD838] predicateForWorkoutsWithWorkoutActivityType:v28];
          [v21 addObject:v29];

          objc_autoreleasePoolPop(v27);
        }

        v23 = [v22 countByEnumeratingWithState:&v91 objects:v119 count:16];
      }

      while (v23);
    }

    v30 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:2 subpredicates:v21];
    [v79 addObject:v30];
  }

  v31 = objc_alloc(MEMORY[0x277CCCFF0]);
  v32 = [MEMORY[0x277CCD720] workoutType];
  v33 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v79];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __81__RTHealthKitManager__getRelevantWorkoutsWithStartDate_limit_workoutTypes_error___block_invoke;
  v87[3] = &unk_2788D16D0;
  v89 = &v101;
  v90 = &v95;
  v34 = v73;
  v88 = v34;
  v35 = [v31 initWithType:v32 predicate:v33 anchor:0 limit:a4 resultsHandler:v87];

  [v35 setIgnoreDeletedObjects:1];
  [v35 setDebugIdentifier:@"CoreRoutine.predictedWorkoutsAnchoredQuery"];
  [(HKHealthStore *)self->_healthStore executeQuery:v35];
  v36 = v34;
  v37 = [MEMORY[0x277CBEAA8] now];
  v38 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v36, v38))
  {
    v39 = [MEMORY[0x277CBEAA8] now];
    [v39 timeIntervalSinceDate:v37];
    v41 = v40;
    v42 = objc_opt_new();
    v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v44 = [MEMORY[0x277CCACC8] callStackSymbols];
    v45 = [v44 filteredArrayUsingPredicate:v43];
    v46 = [v45 firstObject];

    [v42 submitToCoreAnalytics:v46 type:1 duration:v41];
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v48 = MEMORY[0x277CCA9B8];
    v120[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v120 count:1];
    v50 = [v48 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v49];

    if (v50)
    {
      v51 = v50;
    }
  }

  else
  {
    v50 = 0;
  }

  v52 = v50;
  if (v52)
  {
    [v78 addObject:v52];
  }

  if (v96[5])
  {
    [v78 addObject:?];
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v53 = v102[5];
  v54 = [v53 countByEnumeratingWithState:&v83 objects:v118 count:16];
  if (v54)
  {
    v55 = *v84;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v84 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v83 + 1) + 8 * j);
        v58 = objc_autoreleasePoolPush();
        [v20 addObject:v57];
        objc_autoreleasePoolPop(v58);
      }

      v54 = [v53 countByEnumeratingWithState:&v83 objects:v118 count:16];
    }

    while (v54);
  }

  v59 = [v102[5] count];
  v60 = MEMORY[0x277CBEAA8];
  v61 = [v102[5] lastObject];
  v62 = [v61 startDate];
  v63 = [v60 dateWithTimeInterval:v62 sinceDate:0.001];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(aSelector);
      v77 = [v20 count];
      v70 = [v63 stringFromDate];
      +[RTRuntime footprint];
      *buf = 138413570;
      *&buf[4] = v68;
      v108 = 2112;
      v109 = v69;
      v110 = 2048;
      v111 = v77;
      v112 = 2048;
      v113 = v59;
      v114 = 2112;
      v115 = v70;
      v116 = 2048;
      v117 = v71;
      _os_log_debug_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEBUG, "%@, %@, workouts count, %lu, batchedWorkoutsCount, %lu, next startDate, %@, footprint, %.2f MB", buf, 0x3Eu);
    }
  }

  if (a6)
  {
    v65 = _RTSafeArray();
    *a6 = _RTMultiErrorCreate();
  }

  v14 = v20;

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v101, 8);

LABEL_61:

  return v14;
}

void __81__RTHealthKitManager__getRelevantWorkoutsWithStartDate_limit_workoutTypes_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v15 = v8;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v14 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 sortDescriptors:(id)a5 nearLocation:(id)a6 distanceThreshold:(double)a7 onlySourcedFromFitnessApp:(BOOL)a8 includePastureModeRoutes:(BOOL)a9 workoutTypes:(id)a10 error:(id *)a11
{
  v51 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a10;
  v22 = v21;
  if (!v18)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a11)
    {
      *a11 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    goto LABEL_19;
  }

  if (!v21)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a11)
    {
      *a11 = _RTErrorInvalidParameterCreate(@"workoutTypes");
    }

LABEL_19:
    v25 = [MEMORY[0x277CBEA60] array];
    goto LABEL_20;
  }

  if (a4 < 0)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager getWorkoutsWithStartDate:limit:sortDescriptors:nearLocation:distanceThreshold:onlySourcedFromFitnessApp:includePastureModeRoutes:workoutTypes:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 1328;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__170;
  v49 = __Block_byref_object_dispose__170;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__170;
  v45 = __Block_byref_object_dispose__170;
  v46 = 0;
  v24 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__RTHealthKitManager_getWorkoutsWithStartDate_limit_sortDescriptors_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke;
  block[3] = &unk_2788D16F8;
  v35 = buf;
  block[4] = self;
  v31 = v18;
  v37 = a4;
  v32 = v19;
  v33 = v20;
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v34 = v29;
  v36 = &v41;
  v22 = v29;
  dispatch_sync(v24, block);

  if (a11)
  {
    *a11 = v42[5];
  }

  v25 = *(*&buf[8] + 40);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);

LABEL_20:

  return v25;
}

void __170__RTHealthKitManager_getWorkoutsWithStartDate_limit_sortDescriptors_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 105);
  v10 = *(a1 + 88);
  v11 = *(*(a1 + 80) + 8);
  obj = *(v11 + 40);
  v12 = [v2 _getWorkoutsWithStartDate:v3 limit:v10 sortDescriptors:v4 nearLocation:v5 distanceThreshold:v8 onlySourcedFromFitnessApp:v9 includePastureModeRoutes:v7 workoutTypes:v6 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)_getWorkoutsWithStartDate:(id)a3 limit:(int64_t)a4 sortDescriptors:(id)a5 nearLocation:(id)a6 distanceThreshold:(double)a7 onlySourcedFromFitnessApp:(BOOL)a8 includePastureModeRoutes:(BOOL)a9 workoutTypes:(id)a10 error:(id *)a11
{
  v105 = a8;
  v147[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v91 = a5;
  v102 = a6;
  v15 = a10;
  v88 = v14;
  v92 = v15;
  if (!v14)
  {
    v83 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v83, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a11)
    {
      *a11 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    goto LABEL_77;
  }

  if (!v15)
  {
    v85 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v85, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a11)
    {
      *a11 = _RTErrorInvalidParameterCreate(@"workoutTypes");
    }

LABEL_77:
    v106 = [MEMORY[0x277CBEA60] array];
    goto LABEL_78;
  }

  if (![v15 count])
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _getWorkoutsWithStartDate:limit:sortDescriptors:nearLocation:distanceThreshold:onlySourcedFromFitnessApp:includePastureModeRoutes:workoutTypes:error:]";
      v134 = 1024;
      LODWORD(v135) = 1361;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "workout types cannot be zero (in %s:%d)", buf, 0x12u);
    }
  }

  if (a4 < 0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _getWorkoutsWithStartDate:limit:sortDescriptors:nearLocation:distanceThreshold:onlySourcedFromFitnessApp:includePastureModeRoutes:workoutTypes:error:]";
      v134 = 1024;
      LODWORD(v135) = 1362;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v91)
  {
    v18 = objc_alloc(MEMORY[0x277CCAC98]);
    v19 = [v18 initWithKey:*MEMORY[0x277CCCD50] ascending:1];
    v146 = v19;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  }

  if (a4 >= 0x1389 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138413314;
      *&buf[4] = v22;
      v134 = 2112;
      v135 = v23;
      v136 = 2048;
      v137 = a4;
      v138 = 2048;
      v139 = 5000;
      v140 = 2048;
      v141 = 5000;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, limit, %lu, excedded maximum value, %lu. Reducing limit to max of %lu", buf, 0x34u);
    }
  }

  v106 = objc_opt_new();
  v100 = objc_opt_new();
  v97 = v14;
  v89 = *MEMORY[0x277D01448];
  v90 = *MEMORY[0x277CCA450];
  v101 = *MEMORY[0x277CCE188];
  do
  {
    context = objc_autoreleasePoolPush();
    v98 = objc_opt_new();
    if (v105)
    {
      v24 = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
      [v98 addObject:v24];
    }

    v96 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v97 endDate:0 options:1];
    [v98 addObject:v96];
    if ([v92 count])
    {
      v25 = objc_opt_new();
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v26 = v92;
      v27 = [v26 countByEnumeratingWithState:&v129 objects:v145 count:16];
      if (v27)
      {
        v28 = *v130;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v130 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = +[RTHealthKitManager HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:](RTHealthKitManager, "HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:", [*(*(&v129 + 1) + 8 * i) unsignedIntegerValue]);
            v31 = [MEMORY[0x277CCD838] predicateForWorkoutsWithWorkoutActivityType:v30];
            [v25 addObject:v31];
          }

          v27 = [v26 countByEnumeratingWithState:&v129 objects:v145 count:16];
        }

        while (v27);
      }

      v95 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:2 subpredicates:v25];
    }

    else
    {
      v32 = MEMORY[0x277CCA920];
      v25 = [(RTHealthKitManager *)self _getRTWorkoutDefaultTypesForRaceRoute];
      v33 = [(RTHealthKitManager *)self _getPredicatesFromRTWorkoutDefaultTypes:v25];
      v95 = [v32 orPredicateWithSubpredicates:v33];
    }

    [v98 addObject:v95];
    v123 = 0;
    v124 = &v123;
    v125 = 0x3032000000;
    v126 = __Block_byref_object_copy__170;
    v127 = __Block_byref_object_dispose__170;
    v128 = 0;
    v117 = 0;
    v118 = &v117;
    v119 = 0x3032000000;
    v120 = __Block_byref_object_copy__170;
    v121 = __Block_byref_object_dispose__170;
    v122 = 0;
    v34 = dispatch_semaphore_create(0);
    v35 = [(RTHealthKitManager *)self workoutClusterStore];
    v36 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v98];
    v37 = a4 - [v106 count];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __171__RTHealthKitManager__getWorkoutsWithStartDate_limit_sortDescriptors_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke;
    v113[3] = &unk_2788C4490;
    v115 = &v123;
    v116 = &v117;
    v38 = v34;
    v114 = v38;
    [v35 fetchWorkoutsWithPredicate:v36 limit:v37 sortDescriptors:v91 completion:v113];

    dsema = v38;
    v39 = [MEMORY[0x277CBEAA8] now];
    v40 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v40))
    {
      v41 = [MEMORY[0x277CBEAA8] now];
      [v41 timeIntervalSinceDate:v39];
      v43 = v42;
      v44 = objc_opt_new();
      v45 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v46 = [MEMORY[0x277CCACC8] callStackSymbols];
      v47 = [v46 filteredArrayUsingPredicate:v45];
      v48 = [v47 firstObject];

      [v44 submitToCoreAnalytics:v48 type:1 duration:v43];
      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v49, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v50 = MEMORY[0x277CCA9B8];
      v147[0] = v90;
      *buf = @"semaphore wait timeout";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v147 count:1];
      v52 = [v50 errorWithDomain:v89 code:15 userInfo:v51];

      if (v52)
      {
        v53 = v52;
      }
    }

    else
    {
      v52 = 0;
    }

    v94 = v52;
    if (v94)
    {
      [v100 addObject:v94];
    }

    if (v118[5])
    {
      [v100 addObject:?];
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v54 = v124[5];
    v55 = [v54 countByEnumeratingWithState:&v109 objects:v144 count:16];
    if (v55)
    {
      v56 = *v110;
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v110 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v58 = *(*(&v109 + 1) + 8 * j);
          v59 = objc_autoreleasePoolPush();
          if (!a4 || [v106 count] != a4)
          {
            if (!v105 || ([v58 sourceRevision], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "source"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "bundleIdentifier"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "rangeOfString:", @"com.apple.health") == 0x7FFFFFFFFFFFFFFFLL, v62, v61, v60, !v63))
            {
              if (a9 || ([v58 metadata], v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "valueForKey:", v101), v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "BOOLValue"), v65, v64, (v66 & 1) == 0))
              {
                v67 = (v118 + 5);
                obj = v118[5];
                v68 = [(RTHealthKitManager *)self _isWorkoutFiltered:v58 currentLocation:v102 distanceThreshold:&obj error:a7];
                objc_storeStrong(v67, obj);
                if (v118[5])
                {
                  [v100 addObject:?];
                  v69 = v118[5];
                  v118[5] = 0;
                }

                else if (!v68)
                {
                  [v106 addObject:v58];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v59);
        }

        v55 = [v54 countByEnumeratingWithState:&v109 objects:v144 count:16];
      }

      while (v55);
    }

    v70 = [v124[5] count];
    v71 = MEMORY[0x277CBEAA8];
    v72 = [v124[5] lastObject];
    v73 = [v72 startDate];
    v74 = [v71 dateWithTimeInterval:v73 sinceDate:0.001];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v75 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        v79 = NSStringFromSelector(a2);
        v80 = [v106 count];
        v81 = [v74 stringFromDate];
        +[RTRuntime footprint];
        *buf = 138413570;
        *&buf[4] = v78;
        v134 = 2112;
        v135 = v79;
        v136 = 2048;
        v137 = v80;
        v138 = 2048;
        v139 = v70;
        v140 = 2112;
        v141 = v81;
        v142 = 2048;
        v143 = v82;
        _os_log_debug_impl(&dword_2304B3000, v75, OS_LOG_TYPE_DEBUG, "%@, %@, workouts count, %lu, batchedWorkoutsCount, %lu, next startDate, %@, footprint, %.2f MB", buf, 0x3Eu);
      }
    }

    v76 = v124[5];
    v124[5] = 0;

    _Block_object_dispose(&v117, 8);
    _Block_object_dispose(&v123, 8);

    objc_autoreleasePoolPop(context);
    if (!v70)
    {
      break;
    }

    v97 = v74;
  }

  while ([v106 count] < a4);
  if (a11)
  {
    v84 = _RTSafeArray();
    *a11 = _RTMultiErrorCreate();
  }

LABEL_78:

  return v106;
}

void __171__RTHealthKitManager__getWorkoutsWithStartDate_limit_sortDescriptors_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_isWorkoutFiltered:(id)a3 currentLocation:(id)a4 distanceThreshold:(double)a5 error:(id *)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (v11)
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__170;
    v45[4] = __Block_byref_object_dispose__170;
    v46 = 0;
    v13 = [(RTHealthKitManager *)self _getTotalDistanceForWorkout:v11];
    v14 = [MEMORY[0x277CCDAB0] meterUnit];
    [v13 doubleValueForUnit:v14];
    v16 = v15;

    [(RTHealthKitManager *)self _getDurationForWorkout:v11];
    v18 = v17;
    if (([v11 workoutActivityType] == 37 || objc_msgSend(v11, "workoutActivityType") == 71) && (v16 >= -[RTHealthKitManager workoutMinDistance](self, "workoutMinDistance") ? (v19 = v18 < 60.0) : (v19 = 1), v19))
    {
      v20 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = NSStringFromSelector(a2);
          v25 = [v11 UUID];
          v26 = [(RTHealthKitManager *)self workoutMinDistance];
          *buf = 138413826;
          *&buf[4] = v23;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2112;
          v48 = v25;
          v49 = 2048;
          v50 = v16;
          v51 = 2048;
          v52 = v26;
          v53 = 2048;
          v54 = v18;
          v55 = 2048;
          v56 = 60;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, UUID, %@, workout filtered, YES, reason, short workout, workout distance, %.4f, min distance threshold, %lu, workout duration, %lu, min duration threshold, %lu", buf, 0x48u);
        }

        goto LABEL_33;
      }
    }

    else if ([v11 workoutActivityType] == 13 && (v16 < -[RTHealthKitManager workoutMinDistanceCycling](self, "workoutMinDistanceCycling") || v18 < 60.0))
    {
      v20 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromSelector(a2);
          v35 = [v11 UUID];
          v36 = [(RTHealthKitManager *)self workoutMinDistanceCycling];
          *buf = 138413826;
          *&buf[4] = v33;
          *&buf[12] = 2112;
          *&buf[14] = v34;
          *&buf[22] = 2112;
          v48 = v35;
          v49 = 2048;
          v50 = v16;
          v51 = 2048;
          v52 = v36;
          v53 = 2048;
          v54 = v18;
          v55 = 2048;
          v56 = 60;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, UUID, %@, workout filtered, YES, reason, short workout, workout distance, %.4f, min distance threshold, %lu, workout duration, %lu, min duration threshold, %lu", buf, 0x48u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v16 <= 250000.0 && v18 <= 72000.0)
      {
        v20 = 0;
        if (v12 && a5 != 1.79769313e308)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v48) = 0;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __81__RTHealthKitManager__isWorkoutFiltered_currentLocation_distanceThreshold_error___block_invoke;
          v38[3] = &unk_2788D1720;
          v41 = v45;
          v38[4] = self;
          v39 = v12;
          v43 = a5;
          v44 = a2;
          v40 = v11;
          v42 = buf;
          [(RTHealthKitManager *)self _getRouteLocationsUsingWorkout:v40 decimationLevel:3 limit:1 shift:0 handler:v38];
          v20 = *(*&buf[8] + 24);

          _Block_object_dispose(buf, 8);
        }

        goto LABEL_34;
      }

      v20 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = NSStringFromSelector(a2);
          v31 = [v11 UUID];
          *buf = 138413826;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v30;
          *&buf[22] = 2112;
          v48 = v31;
          v49 = 2048;
          v50 = v16;
          v51 = 2048;
          v52 = 250000;
          v53 = 2048;
          v54 = v18;
          v55 = 2048;
          v56 = 72000;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, UUID, %@, workout filtered, YES, reason, long workout, workout distance, %.4f, max distance threshold, %lu, workout duration, %lu, max duration threshold, %lu", buf, 0x48u);
        }

LABEL_33:

        v20 = 1;
      }
    }

LABEL_34:
    _Block_object_dispose(v45, 8);

    goto LABEL_35;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
  }

  if (a6)
  {
    *a6 = _RTErrorInvalidParameterCreate(@"workout");
  }

  v20 = 1;
LABEL_35:

  return v20 & 1;
}

void __81__RTHealthKitManager__isWorkoutFiltered_currentLocation_distanceThreshold_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else if (a3)
  {
    v10 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocationCoordinate2D:a2];
    v11 = [*(a1 + 32) distanceCalculator];
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    [v11 distanceFromLocation:v10 toLocation:v12 error:&obj];
    v15 = v14;
    objc_storeStrong((v13 + 40), obj);

    if (v15 > *(a1 + 72))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(*(a1 + 80));
          v20 = [*(a1 + 48) UUID];
          v21 = *(a1 + 72);
          *buf = 138413314;
          v24 = v18;
          v25 = 2112;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          v29 = 2048;
          v30 = v15;
          v31 = 2048;
          v32 = v21;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, UUID, %@, workout filtered, YES, reason, distance to the location exceeds distance threshold, distance, %.2f, distance threshold, %.2f,", buf, 0x34u);
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (int64_t)getWorkoutsCountWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  if (v14)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__170;
    v32 = __Block_byref_object_dispose__170;
    v33 = 0;
    v16 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __140__RTHealthKitManager_getWorkoutsCountWithStartDate_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_error___block_invoke;
    block[3] = &unk_2788D1748;
    v23 = &v34;
    block[4] = self;
    v21 = v14;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v22 = v15;
    v24 = buf;
    dispatch_sync(v16, block);

    if (a8)
    {
      *a8 = *(v29 + 5);
    }

    v17 = v35[3];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a8)
    {
      _RTErrorInvalidParameterCreate(@"startDate");
      *a8 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

void __140__RTHealthKitManager_getWorkoutsCountWithStartDate_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 81);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v2 _getWorkoutsCountWithStartDate:v3 nearLocation:v4 distanceThreshold:v6 onlySourcedFromFitnessApp:v7 includePastureModeRoutes:&obj error:v5];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v9;
}

- (int64_t)_getWorkoutsCountWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 error:(id *)a8
{
  v28 = a6;
  v29 = a7;
  v12 = a3;
  v30 = a4;
  if (v12)
  {
    v27 = a8;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v13;
      v16 = objc_autoreleasePoolPush();
      v17 = [(RTHealthKitManager *)self getWorkoutDefaultSortDescriptors];
      v18 = [(RTHealthKitManager *)self _getRTWorkoutDefaultTypesForRaceRoute];
      v31 = 0;
      v13 = [(RTHealthKitManager *)self _getWorkoutsWithStartDate:v12 limit:50 sortDescriptors:v17 nearLocation:v30 distanceThreshold:v28 onlySourcedFromFitnessApp:v29 includePastureModeRoutes:a5 workoutTypes:v18 error:&v31];
      v19 = v31;

      if (v19)
      {
        break;
      }

      v14 += [v13 count];
      v20 = MEMORY[0x277CBEAA8];
      v21 = [v13 lastObject];
      v22 = [v21 startDate];
      v23 = [v20 dateWithTimeInterval:v22 sinceDate:0.001];

      objc_autoreleasePoolPop(v16);
      v12 = v23;
      if (![v13 count])
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v16);
    v23 = v12;
LABEL_11:
    if (v27)
    {
      v25 = v19;
      *v27 = v19;
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a8)
    {
      _RTErrorInvalidParameterCreate(@"startDate");
      *a8 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)getLatestWorkoutWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 workoutTypes:(id)a8 error:(id *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = v18;
  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a9)
    {
      v23 = @"startDate";
LABEL_14:
      _RTErrorInvalidParameterCreate(v23);
      *a9 = v21 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (!v18)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a9)
    {
      v23 = @"workoutTypes";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__170;
  v45 = __Block_byref_object_dispose__170;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__170;
  v39 = __Block_byref_object_dispose__170;
  v40 = 0;
  v20 = [(RTNotifier *)self queue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __153__RTHealthKitManager_getLatestWorkoutWithStartDate_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke;
  v26[3] = &unk_2788D1770;
  v30 = buf;
  v26[4] = self;
  v27 = v16;
  v28 = v17;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v29 = v19;
  v31 = &v35;
  dispatch_sync(v20, v26);

  if (a9)
  {
    *a9 = v36[5];
  }

  v21 = *(v42 + 5);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:

  return v21;
}

void __153__RTHealthKitManager_getLatestWorkoutWithStartDate_nearLocation_distanceThreshold_onlySourcedFromFitnessApp_includePastureModeRoutes_workoutTypes_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 89);
  v8 = *(a1 + 56);
  v9 = *(*(a1 + 72) + 8);
  obj = *(v9 + 40);
  v10 = [v2 _getLatestWorkoutWithStartDate:v3 nearLocation:v4 distanceThreshold:v6 onlySourcedFromFitnessApp:v7 includePastureModeRoutes:v8 workoutTypes:&obj error:v5];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)_getLatestWorkoutWithStartDate:(id)a3 nearLocation:(id)a4 distanceThreshold:(double)a5 onlySourcedFromFitnessApp:(BOOL)a6 includePastureModeRoutes:(BOOL)a7 workoutTypes:(id)a8 error:(id *)a9
{
  v50 = a7;
  v11 = a6;
  v61 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v51 = a4;
  v17 = a8;
  v18 = v17;
  if (!v16)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a9)
    {
      v39 = _RTErrorInvalidParameterCreate(@"startDate");
      v16 = 0;
LABEL_24:
      v41 = 0;
      *a9 = v39;
      goto LABEL_32;
    }

    v16 = 0;
LABEL_29:
    v41 = 0;
    goto LABEL_32;
  }

  if (!v17)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    if (a9)
    {
      v39 = _RTErrorInvalidParameterCreate(@"workoutTypes");
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  aSelector = a2;
  v48 = a9;
  v19 = 0;
  v20 = 0;
  v49 = v17;
  while (1)
  {
    v21 = v20;
    v22 = objc_autoreleasePoolPush();
    v23 = [(RTHealthKitManager *)self getWorkoutDefaultSortDescriptors];
    v52 = 0;
    v20 = [(RTHealthKitManager *)self _getWorkoutsWithStartDate:v16 limit:50 sortDescriptors:v23 nearLocation:v51 distanceThreshold:v11 onlySourcedFromFitnessApp:v50 includePastureModeRoutes:a5 workoutTypes:v18 error:&v52];
    v24 = v52;

    if (v24)
    {
      break;
    }

    if ([v20 count])
    {
      v25 = [v20 lastObject];

      v19 = v25;
    }

    v26 = MEMORY[0x277CBEAA8];
    v27 = [v20 lastObject];
    v28 = [v27 startDate];
    v29 = [v26 dateWithTimeInterval:v28 sinceDate:0.001];

    objc_autoreleasePoolPop(v22);
    v16 = v29;
    v18 = v49;
    if (![v20 count])
    {
      v30 = v48 != 0;
      v16 = v29;
      if (!v19)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v22);
  v36 = v48;
  if (v48)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

  v30 = 0;
  if (!v19)
  {
LABEL_9:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v53 = *MEMORY[0x277CCA450];
    v54 = @"workouts count is zero";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v34 = [v31 errorWithDomain:v32 code:7 userInfo:v33];

    v24 = v34;
  }

LABEL_10:
  if (v24)
  {
    v35 = v30;
  }

  else
  {
    v35 = 0;
  }

  v36 = v48;
  if (v35)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    v18 = v49;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      v42 = v24;
      v41 = 0;
      *v36 = v24;
      goto LABEL_31;
    }

LABEL_37:
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = NSStringFromSelector(aSelector);
    *buf = 138412802;
    v56 = v45;
    v57 = 2112;
    v58 = v46;
    v59 = 2112;
    v60 = v24;
    _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

    v36 = v48;
    goto LABEL_27;
  }

  v19 = v19;
  v41 = v19;
  v18 = v49;
LABEL_31:

LABEL_32:

  return v41;
}

- (id)getLatestWorkoutDateIntervalWithStartDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__170;
    v25 = __Block_byref_object_dispose__170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__170;
    v19 = __Block_byref_object_dispose__170;
    v20 = 0;
    v7 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__RTHealthKitManager_getLatestWorkoutDateIntervalWithStartDate_error___block_invoke;
    v11[3] = &unk_2788D1798;
    v13 = buf;
    v11[4] = self;
    v12 = v6;
    v14 = &v15;
    dispatch_sync(v7, v11);

    if (a4)
    {
      *a4 = v16[5];
    }

    v8 = *(v22 + 5);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"startDate");
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __70__RTHealthKitManager_getLatestWorkoutDateIntervalWithStartDate_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _getLatestWorkoutDateIntervalWithStartDate:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getLatestWorkoutDateIntervalWithStartDate:(id)a3 error:(id *)a4
{
  v77[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    *v64 = 0;
    v65 = v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__170;
    v68 = __Block_byref_object_dispose__170;
    v69 = 0;
    v6 = dispatch_semaphore_create(0);
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__170;
    v62 = __Block_byref_object_dispose__170;
    v63 = 0;
    v7 = [(RTHealthKitManager *)self workoutObserver];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __71__RTHealthKitManager__getLatestWorkoutDateIntervalWithStartDate_error___block_invoke;
    v54[3] = &unk_2788D17C0;
    v56 = &v58;
    v57 = v64;
    v8 = v6;
    v55 = v8;
    [v7 currentWorkoutSnapshotWithCompletion:v54];

    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
      v77[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v77 count:1];
      v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

      if (v23)
      {
        v24 = v23;

        v25 = 0;
LABEL_13:

        v51 = v23;
        if ((v25 & 1) == 0)
        {
          objc_storeStrong(v65 + 5, v23);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "Current workout snapshot fetch timed out", buf, 2u);
            }
          }
        }

        v29 = v59[5];
        if (v29)
        {
          v30 = [v29 builderStartDate];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [v30 stringFromDate];
              *buf = 138412290;
              *&buf[4] = v32;
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "Current workout snapshot retrieved with builder start date, %@", buf, 0xCu);
            }
          }

          if (v30)
          {
            if (a4)
            {
              *a4 = *(v65 + 5);
            }

            v33 = objc_alloc(MEMORY[0x277CCA970]);
            v34 = [MEMORY[0x277CBEAA8] date];
            v27 = [v33 initWithStartDate:v30 endDate:v34];

            goto LABEL_42;
          }

          if (a4)
          {
            v46 = *(v65 + 5);
LABEL_40:
            v30 = 0;
            v27 = 0;
            *a4 = v46;
LABEL_42:

            _Block_object_dispose(&v58, 8);
            _Block_object_dispose(v64, 8);

            goto LABEL_43;
          }
        }

        else
        {
          v35 = [(RTHealthKitManager *)self _getWorkoutAllTypes];
          v36 = (v65 + 40);
          obj = *(v65 + 5);
          v30 = [(RTHealthKitManager *)self _getLatestWorkoutWithStartDate:v5 nearLocation:0 distanceThreshold:0 onlySourcedFromFitnessApp:1 includePastureModeRoutes:v35 workoutTypes:&obj error:1.79769313e308];
          objc_storeStrong(v36, obj);

          if (v30)
          {
            v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v30 startDate];
              v38 = [v50 stringFromDate];
              v39 = [v30 endDate];
              v40 = [v39 stringFromDate];
              v41 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v30 workoutActivityType]);
              v42 = *(v65 + 5);
              *buf = 138413058;
              *&buf[4] = v38;
              v71 = 2112;
              v72 = v40;
              v73 = 2112;
              v74 = v41;
              v75 = 2112;
              v76 = v42;
              _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEFAULT, "recent workout retrieved, workout start, %@, workout end, %@, workout type, %@, error, %@", buf, 0x2Au);
            }

            if (a4)
            {
              *a4 = *(v65 + 5);
            }

            v43 = objc_alloc(MEMORY[0x277CCA970]);
            v44 = [v30 startDate];
            v45 = [v30 endDate];
            v27 = [v43 initWithStartDate:v44 endDate:v45];

            goto LABEL_42;
          }

          v47 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(v65 + 5);
            *buf = 138412290;
            *&buf[4] = v48;
            _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_DEFAULT, "no recent workout retrieved, error, %@", buf, 0xCu);
          }

          if (a4)
          {
            v46 = *(v65 + 5);
            goto LABEL_40;
          }
        }

        v30 = 0;
        v27 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = 1;
    goto LABEL_13;
  }

  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v64 = 0;
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", v64, 2u);
  }

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"startDate");
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_43:

  return v27;
}

void __71__RTHealthKitManager__getLatestWorkoutDateIntervalWithStartDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)getWorkoutsWithUUIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__170;
    v25 = __Block_byref_object_dispose__170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__170;
    v19 = __Block_byref_object_dispose__170;
    v20 = 0;
    v7 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__RTHealthKitManager_getWorkoutsWithUUIDs_error___block_invoke;
    v11[3] = &unk_2788D1798;
    v13 = buf;
    v11[4] = self;
    v12 = v6;
    v14 = &v15;
    dispatch_sync(v7, v11);

    if (a4)
    {
      *a4 = v16[5];
    }

    v8 = *(v22 + 5);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    }

    v8 = [MEMORY[0x277CBEA60] array];
  }

  return v8;
}

void __49__RTHealthKitManager_getWorkoutsWithUUIDs_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _getWorkoutsWithUUIDs:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getWorkoutsWithUUIDs:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v47 = a4;
    v45 = objc_opt_new();
    v43 = objc_opt_new();
    v7 = dispatch_semaphore_create(0);
    v8 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v48 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [MEMORY[0x277CCD838] predicateForObjectWithUUID:v14];
          [v8 addObject:v16];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v11);
    }

    v17 = [(RTHealthKitManager *)self workoutClusterStore];
    v18 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v8];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __50__RTHealthKitManager__getWorkoutsWithUUIDs_error___block_invoke;
    v49[3] = &unk_2788D17E8;
    v19 = v45;
    v50 = v19;
    v20 = v43;
    v51 = v20;
    v21 = v7;
    v52 = v21;
    [v17 fetchWorkoutsWithPredicate:v18 anchor:0 limit:0 completion:v49];

    v22 = v21;
    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v22, v24))
    {
      v46 = v19;
      v44 = [MEMORY[0x277CBEAA8] now];
      [v44 timeIntervalSinceDate:v23];
      v26 = v25;
      v27 = objc_opt_new();
      v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v29 = [MEMORY[0x277CCACC8] callStackSymbols];
      v30 = [v29 filteredArrayUsingPredicate:v28];
      v31 = [v30 firstObject];

      [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277D01448];
      v58 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v58 count:1];
      v36 = [v33 errorWithDomain:v34 code:15 userInfo:v35];

      if (v36)
      {
        v37 = v36;
      }

      v19 = v46;
    }

    else
    {
      v36 = 0;
    }

    v40 = v36;
    if (v40)
    {
      [v20 addObject:v40];
    }

    if (v47)
    {
      v41 = _RTSafeArray();
      *v47 = _RTMultiErrorCreate();
    }

    v39 = v19;

    v6 = v48;
  }

  else
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    }

    v39 = [MEMORY[0x277CBEA60] array];
  }

  return v39;
}

void __50__RTHealthKitManager__getWorkoutsWithUUIDs_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        [*(a1 + 32) addObject:{v15, v20}];
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  if (v9)
  {
    [*(a1 + 40) addObject:v9];
  }

  v17 = objc_alloc(MEMORY[0x277CCAC98]);
  v18 = [v17 initWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v24 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

  [*(a1 + 32) sortUsingDescriptors:v19];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)_getWorkoutAllTypes
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28459FAC8, &unk_28459FAE0, &unk_28459FAF8, &unk_28459FB10, &unk_28459FB28, 0}];

  return v2;
}

- (id)_getRTWorkoutDefaultTypesForRaceRoute
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28459FAC8, &unk_28459FAE0, &unk_28459FAF8, 0}];

  return v2;
}

- (id)_getRTWorkoutDefaultTypesForSMSuggestions
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28459FAC8, &unk_28459FAE0, &unk_28459FB10, &unk_28459FB28, 0}];

  return v2;
}

- (id)_getPredicatesFromRTWorkoutDefaultTypes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = +[RTHealthKitManager HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:](RTHealthKitManager, "HKHealthKitWorkoutActivityTypeFromRTWorkoutActivityType:", [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue]);
          v11 = [MEMORY[0x277CCD838] predicateForWorkoutsWithWorkoutActivityType:v10];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutTypes", buf, 2u);
    }

    v4 = [MEMORY[0x277CBEA60] array];
  }

  return v4;
}

- (BOOL)isWorkoutActivityType:(unint64_t)a3 inTypes:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 unsignedIntValue];
        objc_autoreleasePoolPop(v11);
        if (v12 == a3)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_getWorkoutDefaultStartDateForRaceRoute
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 dateByAddingUnit:4 value:-10 toDate:v3 options:0];

  return v4;
}

- (id)getWorkoutDefaultSortDescriptors
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCAC98]);
  v3 = [v2 initWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)getWorkoutRouteUsingWorkout:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__170;
    v25 = __Block_byref_object_dispose__170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__170;
    v19 = __Block_byref_object_dispose__170;
    v20 = 0;
    v7 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__RTHealthKitManager_getWorkoutRouteUsingWorkout_error___block_invoke;
    v11[3] = &unk_2788D1798;
    v13 = buf;
    v11[4] = self;
    v12 = v6;
    v14 = &v15;
    dispatch_sync(v7, v11);

    if (a4)
    {
      *a4 = v16[5];
    }

    v8 = *(v22 + 5);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workout");
    }

    v8 = [MEMORY[0x277CBEA60] array];
  }

  return v8;
}

void __56__RTHealthKitManager_getWorkoutRouteUsingWorkout_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _getWorkoutRouteUsingWorkout:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getWorkoutRouteUsingWorkout:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    *v41 = 0;
    v42 = v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__170;
    v45 = __Block_byref_object_dispose__170;
    v46 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = dispatch_semaphore_create(0);
    v35 = [MEMORY[0x277CCD838] predicateForObjectsFromWorkout:v5];
    v8 = objc_alloc(MEMORY[0x277CCCFF0]);
    v9 = [MEMORY[0x277CCD920] workoutRouteType];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __57__RTHealthKitManager__getWorkoutRouteUsingWorkout_error___block_invoke;
    v37[3] = &unk_2788D1810;
    v40 = v41;
    v10 = v6;
    v38 = v10;
    v11 = v7;
    v39 = v11;
    v34 = [v8 initWithType:v9 predicate:v35 anchor:0 limit:0 resultsHandler:v37];

    v12 = [(RTHealthKitManager *)self healthStore];
    [v12 executeQuery:v34];

    v13 = v11;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
      v47 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v47 count:1];
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

    v31 = v27;
    if (v31)
    {
      [v10 addObject:v31];
    }

    if (a4)
    {
      v32 = _RTSafeArray();
      *a4 = _RTMultiErrorCreate();
    }

    v30 = *(v42 + 5);

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v41 = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", v41, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"workout");
    }

    v30 = [MEMORY[0x277CBEA60] array];
  }

  return v30;
}

void __57__RTHealthKitManager__getWorkoutRouteUsingWorkout_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        [*(*(*(a1 + 48) + 8) + 40) addObject:v20];
        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  if (v14)
  {
    [*(a1 + 32) addObject:v14];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)fetchWorkoutRouteLocationsUsingWorkoutRoute:(id)a3 batchSize:(unint64_t)a4 fetchOnlyFirstFew:(BOOL)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__RTHealthKitManager_fetchWorkoutRouteLocationsUsingWorkoutRoute_batchSize_fetchOnlyFirstFew_handler___block_invoke;
  block[3] = &unk_2788CBD18;
  block[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

- (void)_fetchWorkoutRouteLocationsUsingWorkoutRoute:(id)a3 batchSize:(unint64_t)a4 fetchOnlyFirstFew:(BOOL)a5 handler:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v40 = v10;
  if (v10)
  {
    v39 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52 = @"workoutRoute cannot be nil";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v39 = [v12 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v13];

    v14 = [MEMORY[0x277CBEA60] array];
    v11[2](v11, v14, v39);
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__170;
  v49[4] = __Block_byref_object_dispose__170;
  v50 = objc_opt_new();
  v15 = dispatch_semaphore_create(0);
  v16 = objc_alloc(MEMORY[0x277CCDC88]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __103__RTHealthKitManager__fetchWorkoutRouteLocationsUsingWorkoutRoute_batchSize_fetchOnlyFirstFew_handler___block_invoke;
  v41[3] = &unk_2788D1838;
  v17 = v11;
  v45 = v17;
  v18 = v15;
  v48 = a5;
  v42 = v18;
  v43 = self;
  v46 = v49;
  v47 = a4;
  v44 = 0;
  v19 = [v16 initWithRoute:v40 dataHandler:v41];
  v20 = [(RTHealthKitManager *)self healthStore];
  [v20 executeQuery:v19];

  v21 = v18;
  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v21, v23))
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v24 timeIntervalSinceDate:v22];
    v26 = v25;
    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v29 = [MEMORY[0x277CCACC8] callStackSymbols];
    v30 = [v29 filteredArrayUsingPredicate:v28];
    v31 = [v30 firstObject];

    [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v33 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
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
  if (v37)
  {
    v38 = [MEMORY[0x277CBEA60] array];
    v17[2](v17, v38, v37);
  }

  _Block_object_dispose(v49, 8);
}

void __103__RTHealthKitManager__fetchWorkoutRouteLocationsUsingWorkoutRoute_batchSize_fetchOnlyFirstFew_handler___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v11)
  {
    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CBEA60] array];
    (*(v12 + 16))(v12, v13, v11);
LABEL_3:

    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_4;
  }

  if (*(a1 + 80) == 1)
  {
    if (![*(*(*(a1 + 64) + 8) + 40) count])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v51;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v51 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v50 + 1) + 8 * i);
            v20 = objc_autoreleasePoolPush();
            [*(*(*(a1 + 64) + 8) + 40) addObject:v19];
            objc_autoreleasePoolPop(v20);
          }

          v16 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v16);
      }

      v21 = [*(a1 + 40) healthStore];
      [v21 stopQuery:*(a1 + 48)];

      v22 = *(a1 + 56);
      v23 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(*(a1 + 64) + 8) + 40)];
      (*(v22 + 16))(v22, v23, 0);

      v24 = *(a1 + 56);
      v25 = [MEMORY[0x277CBEA60] array];
      (*(v24 + 16))(v24, v25, 0);

      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v45 = v9;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v10;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v46 + 1) + 8 * j);
          v32 = objc_autoreleasePoolPush();
          [*(*(*(a1 + 64) + 8) + 40) addObject:v31];
          objc_autoreleasePoolPop(v32);
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v28);
    }

    v9 = v45;
    while ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      if ([*(*(*(a1 + 64) + 8) + 40) count] < *(a1 + 72))
      {
        break;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = [*(*(*(a1 + 64) + 8) + 40) count];
      v35 = *(a1 + 72);
      if (v34 == v35 || v35 == 0)
      {
        v37 = *(a1 + 56);
        v38 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(*(a1 + 64) + 8) + 40)];
        (*(v37 + 16))(v37, v38, 0);

        [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      }

      else if ([*(*(*(a1 + 64) + 8) + 40) count] > *(a1 + 72))
      {
        v39 = *(*(*(a1 + 64) + 8) + 40);
        v40 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, *(a1 + 72)}];
        v41 = [v39 objectsAtIndexes:v40];

        [*(*(*(a1 + 64) + 8) + 40) removeObjectsInRange:{0, *(a1 + 72)}];
        (*(*(a1 + 56) + 16))();
      }

      objc_autoreleasePoolPop(v33);
    }

    if (![v26 count] || a4)
    {
      if ([*(*(*(a1 + 64) + 8) + 40) count])
      {
        v42 = *(a1 + 56);
        v43 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(*(a1 + 64) + 8) + 40)];
        (*(v42 + 16))(v42, v43, 0);

        [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      }

      v44 = *(a1 + 56);
      v13 = [MEMORY[0x277CBEA60] array];
      (*(v44 + 16))(v44, v13, 0);
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (void)fetchRouteLocationsUsingWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(unint64_t)a5 shift:(BOOL)a6 handler:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  if (!v12)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTHealthKitManager fetchRouteLocationsUsingWorkout:decimationLevel:limit:shift:handler:]";
      v26 = 1024;
      v27 = 2144;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout (in %s:%d)", buf, 0x12u);
    }
  }

  v15 = [(RTNotifier *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__RTHealthKitManager_fetchRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke;
  v18[3] = &unk_2788D1860;
  v18[4] = self;
  v19 = v12;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v20 = v13;
  v16 = v13;
  v17 = v12;
  dispatch_async(v15, v18);
}

- (void)_getRouteLocationsUsingWorkout:(id)a3 decimationLevel:(unint64_t)a4 limit:(unint64_t)a5 shift:(BOOL)a6 handler:(id)a7
{
  v72 = a6;
  v136[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v75 = a7;
  v10 = MEMORY[0x277D01448];
  v11 = MEMORY[0x277CCA450];
  v84 = v9;
  if (!v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v134 = *MEMORY[0x277CCA450];
    v135 = @"workout is nil";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v14 = [v12 errorWithDomain:*v10 code:7 userInfo:v13];

    (*(v75 + 2))(v75, 0, 0, v14);
  }

  v74 = [MEMORY[0x277CBEAA8] date];
  v15 = 7200;
  if (a5)
  {
    v15 = a5;
  }

  v83 = v15;
  size = 16 * v15;
  ptr = malloc_type_malloc(16 * v15, 0x1000040451B5BE8uLL);
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = __Block_byref_object_copy__170;
  v113 = __Block_byref_object_dispose__170;
  v114 = [(RTHealthKitManager *)self _getStartDateForWorkout:v84];
  v82 = [(RTHealthKitManager *)self _getEndDateForWorkout:v84];
  v16 = 0;
  v78 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__170;
  v107 = __Block_byref_object_dispose__170;
  v108 = 0;
  v79 = *v10;
  v80 = *v11;
  do
  {
    context = objc_autoreleasePoolPush();
    v97 = 0;
    v98 = &v97;
    v99 = 0x3032000000;
    v100 = __Block_byref_object_copy__170;
    v101 = __Block_byref_object_dispose__170;
    v102 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 0;
    v17 = malloc_type_malloc(size, 0x1000040451B5BE8uLL);
    v116[3] = v17;
    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [v18 initWithStartDate:v110[5] endDate:v82];
    v20 = dispatch_semaphore_create(0);
    v21 = [(RTHealthKitManager *)self workoutClusterStore];
    v22 = [v84 UUID];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke;
    v92[3] = &unk_2788D1888;
    v92[4] = &v115;
    v92[5] = &v93;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke_2;
    v88[3] = &unk_2788D18B0;
    v90 = &v109;
    v91 = &v97;
    v23 = v20;
    v89 = v23;
    [v21 fetchRouteCoordinatesForWorkoutUUID:v22 dateInterval:v19 limit:v83 handler:v92 completion:v88];

    v24 = v23;
    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v24, v26))
    {
      v27 = [MEMORY[0x277CBEAA8] now];
      [v27 timeIntervalSinceDate:v25];
      v29 = v28;
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
      v136[0] = v80;
      *buf = @"semaphore wait timeout";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v136 count:1];
      v38 = [v36 errorWithDomain:v79 code:15 userInfo:v37];

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
    v41 = v40;
    if (v40 || (v41 = v98[5]) != 0)
    {
      objc_storeStrong(v104 + 5, v41);
LABEL_15:
      v42 = 1;
      goto LABEL_16;
    }

    if (a4 - 1 <= 1)
    {
      v43 = v116[3];
      v44 = v94[3];
      [(RTHealthKitManager *)self _getDurationForWorkout:v84];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke_3;
      v87[3] = &unk_2788D0520;
      v87[4] = &v115;
      v87[5] = &v93;
      v87[6] = &v103;
      [(RTHealthKitManager *)self _decimateLocations:v43 locationsCount:v44 totalDuration:a4 decimationLevel:v87 handler:?];
      if (v104[5])
      {
        goto LABEL_15;
      }
    }

    if (v94[3])
    {
      v45 = 0;
      v46 = 0;
      v47 = &ptr[16 * v16];
      do
      {
        v48 = objc_autoreleasePoolPush();
        *&v47[v45] = *(v116[3] + v45);
        objc_autoreleasePoolPop(v48);
        v16 = v16 + 1;
        ++v46;
        v45 += 16;
      }

      while (v46 < v94[3]);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = NSStringFromSelector(a2);
        v53 = [v84 UUID];
        v54 = v94[3];
        v55 = [v110[5] stringFromDate];
        +[RTRuntime footprint];
        *buf = 138414082;
        *&buf[4] = v51;
        v120 = 2112;
        v121 = v52;
        v122 = 2112;
        v123 = v53;
        v124 = 2048;
        v125 = v16;
        v126 = 2048;
        v127 = v54;
        v128 = 2048;
        v129 = v83;
        v130 = 2112;
        v131 = v55;
        v132 = 2048;
        v133 = v56;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, workout uuid, %@, total locations count, %lu, buffer locations count, %lu, limit, %lu, next startDate, %@, footprint, %.4f", buf, 0x52u);
      }
    }

    v57 = v116;
    v58 = v116[3];
    if (v58)
    {
      free(v58);
      v57 = v116;
    }

    v57[3] = 0;
    if (v110[5])
    {
      v42 = 1;
      if (!v104[5] && v83 != v16 && (v78 & 1) == 0)
      {
        ptr = malloc_type_realloc(ptr, 16 * (v16 + v83), 0x1000040451B5BE8uLL);
        v42 = 0;
        v78 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v42 = 1;
    }

    v78 = 1;
LABEL_16:

    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(&v97, 8);

    objc_autoreleasePoolPop(context);
  }

  while (!v42);
  v59 = v116;
  v60 = v116[3];
  if (v104[5])
  {
    if (v60)
    {
      free(v60);
      v59 = v116;
    }

    v59[3] = 0;
    if (ptr)
    {
      free(ptr);
    }

    v61 = 0;
    v16 = 0;
  }

  else
  {
    if (v60)
    {
      free(v60);
      v59 = v116;
    }

    v59[3] = 0;
    if (v16)
    {
      v61 = malloc_type_realloc(ptr, 16 * v16, 0x1000040451B5BE8uLL);
    }

    else
    {
      if (ptr)
      {
        free(ptr);
      }

      v61 = 0;
    }

    if (v72)
    {
      [(RTHealthKitManager *)self _shiftLocations:v61 locationsCount:v16];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v62 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = NSStringFromSelector(a2);
        v66 = [objc_opt_class() stringFromHealthKitDecimationLevel:a4];
        if (v72)
        {
          v67 = @"YES";
        }

        else
        {
          v67 = @"NO";
        }

        v68 = [MEMORY[0x277CBEAA8] date];
        [v68 timeIntervalSinceDate:v74];
        v70 = v69;
        +[RTRuntime footprint];
        *buf = 138413826;
        *&buf[4] = v64;
        v120 = 2112;
        v121 = v65;
        v122 = 2048;
        v123 = v16;
        v124 = 2112;
        v125 = v66;
        v126 = 2112;
        v127 = v67;
        v128 = 2048;
        v129 = v70;
        v130 = 2048;
        v131 = v71;
        _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, %@, fetched locations count, %lu, decimation level, %@, shift, %@, latency, %.4f, footprint, %.4f", buf, 0x48u);
      }
    }
  }

  (*(v75 + 2))(v75, v61, v16, v104[5]);
  _Block_object_dispose(&v103, 8);

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v115, 8);
}

void __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  *(v3 + 16 * v5) = CLLocationCoordinate2DMake(a2, a3);
}

void __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __89__RTHealthKitManager__getRouteLocationsUsingWorkout_decimationLevel_limit_shift_handler___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 24);
  if (v9)
  {
    free(v9);
    v8 = *(a1[4] + 8);
  }

  *(v8 + 24) = 0;
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (void)_shiftLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4
{
  v64[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _shiftLocations:locationsCount:]";
      *&buf[12] = 1024;
      *&buf[14] = 2313;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations (in %s:%d)", buf, 0x12u);
    }
  }

  v49 = [MEMORY[0x277CBEAA8] date];
  context = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  if (a4)
  {
    p_longitude = &a3->longitude;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:*(p_longitude - 1) longitude:*p_longitude];
      [v7 addObject:v10];

      objc_autoreleasePoolPop(v9);
      p_longitude += 2;
      --a4;
    }

    while (a4);
  }

  if ([MEMORY[0x277CCDDD8] isShiftRequiredForLocations:v7])
  {
    v11 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__170;
    *&v63 = __Block_byref_object_dispose__170;
    *(&v63 + 1) = 0;
    v12 = objc_opt_new();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __53__RTHealthKitManager__shiftLocations_locationsCount___block_invoke;
    v51[3] = &unk_2788D18D8;
    v53 = buf;
    v13 = v11;
    v52 = v13;
    [v12 shiftLocations:v7 withCompletion:v51];

    v14 = v13;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v54 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v54, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v64[0] = *MEMORY[0x277CCA450];
      *v54 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v64 count:1];
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

    v37 = v28;
    v38 = *(*&buf[8] + 40);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __53__RTHealthKitManager__shiftLocations_locationsCount___block_invoke_2;
    v50[3] = &__block_descriptor_40_e27_v32__0__CLLocation_8Q16_B24l;
    v50[4] = a3;
    [v38 enumerateObjectsUsingBlock:v50];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = [MEMORY[0x277CBEAA8] date];
        [v43 timeIntervalSinceDate:v49];
        v45 = v44;
        +[RTRuntime footprint];
        *v54 = 138413058;
        *&v54[4] = v41;
        v55 = 2112;
        v56 = v42;
        v57 = 2048;
        v58 = v45;
        v59 = 2048;
        v60 = v46;
        _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@, %@, shifting complete, latency, %.4f, footprint, %.4f", v54, 0x2Au);
      }
    }

    _Block_object_dispose(buf, 8);
LABEL_23:

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      v33 = [MEMORY[0x277CBEAA8] date];
      [v33 timeIntervalSinceDate:v49];
      v35 = v34;
      +[RTRuntime footprint];
      *buf = 138413058;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      *&buf[22] = 2048;
      v62 = v35;
      LOWORD(v63) = 2048;
      *(&v63 + 2) = v36;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "%@, %@, shifting not required, latency, %.4f, footprint, %.4f", buf, 0x2Au);
    }

    goto LABEL_23;
  }

LABEL_24:
  objc_autoreleasePoolPop(context);
}

void __53__RTHealthKitManager__shiftLocations_locationsCount___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __53__RTHealthKitManager__shiftLocations_locationsCount___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (*(a1 + 32) + 16 * a3);
  result = [a2 coordinate];
  *v3 = v5;
  v3[1] = v6;
  return result;
}

- (void)_decimateLocations:(CLLocationCoordinate2D *)a3 locationsCount:(unint64_t)a4 totalDuration:(double)a5 decimationLevel:(unint64_t)a6 handler:(id)a7
{
  v90 = *MEMORY[0x277D85DE8];
  v12 = a7;
  if (!a3)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v74 = "[RTHealthKitManager _decimateLocations:locationsCount:totalDuration:decimationLevel:handler:]";
      v75 = 1024;
      LODWORD(v76) = 2369;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations (in %s:%d)", buf, 0x12u);
    }
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = objc_autoreleasePoolPush();
  v16 = v15;
  v62 = a6;
  if (a6 == 2)
  {
    v64 = v15;
    v65 = v14;
    v61 = v12;
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CBEA60] array];
    if (a4)
    {
      p_longitude = &a3->longitude;
      v29 = a4;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:*(p_longitude - 1) longitude:*p_longitude];
        [v26 addObject:v31];

        objc_autoreleasePoolPop(v30);
        p_longitude += 2;
        --v29;
      }

      while (v29);
    }

    v32 = MEMORY[0x277D01168];
    v33 = [(RTHealthKitManager *)self errorFunction];
    v34 = [v32 downsampleLocations:v26 errorFunction:v33 errorThreshold:0 outputSize:10.0];

    v35 = malloc_type_malloc(16 * [v34 count], 0x1000040451B5BE8uLL);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v36 = v34;
    v37 = [v36 countByEnumeratingWithState:&v69 objects:v89 count:16];
    v67 = v35;
    if (v37)
    {
      v38 = v37;
      v21 = 0;
      v39 = *v70;
      v40 = v35 + 8;
      do
      {
        v41 = 0;
        v42 = &v40[16 * v21];
        v21 += v38;
        do
        {
          if (*v70 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v43 = *(*(&v69 + 1) + 8 * v41);
          v44 = objc_autoreleasePoolPush();
          [v43 coordinate];
          *(v42 - 1) = v45;
          *v42 = v46;
          objc_autoreleasePoolPop(v44);
          ++v41;
          v42 += 16;
        }

        while (v38 != v41);
        v38 = [v36 countByEnumeratingWithState:&v69 objects:v89 count:16];
      }

      while (v38);
    }

    else
    {
      v21 = 0;
    }

    v18 = 1;
    v12 = v61;
    goto LABEL_34;
  }

  if (a6 == 1)
  {
    v64 = v15;
    v65 = v14;
    v17 = [(RTHealthKitManager *)self _getDecimationSkipAheadFactorForDuration:a5];
    v18 = v17;
    if (a4 % v17)
    {
      v19 = a4 / v17 + 1;
    }

    else
    {
      v19 = a4 / v17;
    }

    v20 = malloc_type_malloc(16 * v19, 0x1000040451B5BE8uLL);
    v67 = v20;
    v21 = 0;
    if (a4)
    {
      v22 = 0;
      v23 = v20 + 8;
      v24 = &a3->longitude;
      do
      {
        v25 = objc_autoreleasePoolPush();
        ++v21;
        *(v23 - 8) = CLLocationCoordinate2DMake(*(v24 - 1), *v24);
        objc_autoreleasePoolPop(v25);
        v22 += v18;
        v23 += 16;
        v24 += 2 * v18;
      }

      while (v22 < a4);
    }

    if (v19 == v21)
    {
      v21 = v19;
LABEL_34:
      v16 = v64;
      v14 = v65;
      v48 = v67;
      goto LABEL_35;
    }

    v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    v48 = v67;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = NSStringFromSelector(a2);
      *buf = 138413058;
      v74 = v59;
      v75 = 2112;
      v76 = v60;
      v77 = 2048;
      v78 = v19;
      v79 = 2048;
      v80 = v21;
      _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, %@, outputLocationsCount, %lu, outputLocationsCount, %lu", buf, 0x2Au);
    }

    v16 = v64;
    v14 = v65;
  }

  else
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "invalid decimation level", buf, 2u);
    }

    (*(v12 + 2))(v12, 0, 0, 0);
    v21 = 0;
    v48 = 0;
    v18 = 1;
  }

LABEL_35:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = objc_opt_class();
      v66 = NSStringFromClass(v51);
      v52 = NSStringFromSelector(a2);
      v53 = [objc_opt_class() stringFromHealthKitDecimationLevel:v62];
      [MEMORY[0x277CBEAA8] date];
      v54 = v68 = v48;
      [v54 timeIntervalSinceDate:v14];
      v56 = v55;
      +[RTRuntime footprint];
      *buf = 138414082;
      v74 = v66;
      v75 = 2112;
      v76 = v52;
      v77 = 2112;
      v78 = v53;
      v79 = 2048;
      v80 = v18;
      v81 = 2048;
      v82 = a4;
      v83 = 2048;
      v84 = v21;
      v85 = 2048;
      v86 = v56;
      v87 = 2048;
      v88 = v57;
      _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "%@, %@, decimation, decimation level, %@, skip ahead factor, %lu, input locations count, %lu, actual outputLocations count, %lu, latency, %.4f, footprint, %.4f", buf, 0x52u);

      v48 = v68;
    }
  }

  objc_autoreleasePoolPop(v16);
  (*(v12 + 2))(v12, v48, v21, 0);
}

- (unint64_t)_getDecimationSkipAheadFactorForDuration:(double)a3
{
  v3 = 6;
  if (a3 > 36000.0)
  {
    v3 = 9;
  }

  if (a3 <= 18000.0)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (id)getOdometerReadingUsingWorkout:(id)a3 samplingIntervalComponents:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_15;
    }

    v14 = @"workout";
    goto LABEL_14;
  }

  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samplingIntervalComponents", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_15;
    }

    v14 = @"samplingIntervalComponents";
LABEL_14:
    *a5 = _RTErrorInvalidParameterCreate(v14);
LABEL_15:
    v12 = [MEMORY[0x277CBEA60] array];
    goto LABEL_16;
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__170;
  v32 = __Block_byref_object_dispose__170;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__170;
  v26 = __Block_byref_object_dispose__170;
  v27 = 0;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTHealthKitManager_getOdometerReadingUsingWorkout_samplingIntervalComponents_error___block_invoke;
  block[3] = &unk_2788CC288;
  v20 = buf;
  block[4] = self;
  v18 = v8;
  v19 = v10;
  v21 = &v22;
  dispatch_sync(v11, block);

  if (a5)
  {
    *a5 = v23[5];
  }

  v12 = *(v29 + 5);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:

  return v12;
}

void __86__RTHealthKitManager_getOdometerReadingUsingWorkout_samplingIntervalComponents_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _getOdometerReadingUsingWorkout:v3 samplingIntervalComponents:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_getOdometerReadingUsingWorkout:(id)a3 samplingIntervalComponents:(id)a4 error:(id *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workout", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"workout");
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samplingIntervalComponents", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"samplingIntervalComponents");
    }

LABEL_14:
    v19 = [MEMORY[0x277CBEA60] array];
    goto LABEL_33;
  }

  *buf = 0;
  v58 = buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__170;
  v61 = __Block_byref_object_dispose__170;
  v62 = objc_opt_new();
  v52 = objc_opt_new();
  v51 = [MEMORY[0x277CCD838] predicateForObjectsFromWorkout:v8];
  v11 = MEMORY[0x277CCD838];
  v12 = [v8 startDate];
  v13 = [v8 endDate];
  v50 = [v11 predicateForSamplesWithStartDate:v12 endDate:v13 options:0];

  v14 = MEMORY[0x277CCA920];
  v65[0] = v51;
  v65[1] = v50;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v49 = [v14 andPredicateWithSubpredicates:v15];

  if ([v8 workoutActivityType] == 37)
  {
    v16 = MEMORY[0x277CCCB40];
  }

  else if ([v8 workoutActivityType] == 13)
  {
    v16 = MEMORY[0x277CCCB10];
  }

  else
  {
    if ([v8 workoutActivityType] != 71)
    {
      goto LABEL_25;
    }

    v16 = MEMORY[0x277CCCB48];
  }

  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*v16];
  if (v20)
  {
    v21 = dispatch_semaphore_create(0);
    v22 = objc_alloc(MEMORY[0x277CCDA60]);
    v23 = [v8 startDate];
    v48 = [v22 initWithQuantityType:v20 quantitySamplePredicate:v49 options:16 anchorDate:v23 intervalComponents:v10];

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __87__RTHealthKitManager__getOdometerReadingUsingWorkout_samplingIntervalComponents_error___block_invoke;
    v53[3] = &unk_2788D1900;
    v56 = buf;
    v45 = v52;
    v54 = v45;
    v24 = v21;
    v55 = v24;
    [v48 setInitialResultsHandler:v53];
    v25 = [(RTHealthKitManager *)self healthStore];
    [v25 executeQuery:v48];

    v26 = v24;
    v47 = [MEMORY[0x277CBEAA8] now];
    v27 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v26, v27))
    {
      v46 = [MEMORY[0x277CBEAA8] now];
      [v46 timeIntervalSinceDate:v47];
      v29 = v28;
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v32 = [MEMORY[0x277CCACC8] callStackSymbols];
      v33 = [v32 filteredArrayUsingPredicate:v31];
      v34 = [v33 firstObject];

      [v30 submitToCoreAnalytics:v34 type:1 duration:v29];
      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *v67 = 0;
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v67, 2u);
      }

      v36 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA450];
      *v67 = @"semaphore wait timeout";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
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

    v42 = v38;
    if (v42)
    {
      [v45 addObject:v42];
    }

    goto LABEL_30;
  }

LABEL_25:
  v40 = MEMORY[0x277CCA9B8];
  v63 = *MEMORY[0x277CCA450];
  v64 = @"Only workouts of type Running or Cycling is currently considered to get odometer readings.";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v26 = [v40 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v41];

  [v52 addObject:v26];
  v20 = 0;
LABEL_30:

  if (a5)
  {
    v43 = _RTSafeArray();
    *a5 = _RTMultiErrorCreate();
  }

  v19 = *(v58 + 5);

  _Block_object_dispose(buf, 8);
LABEL_33:

  return v19;
}

void __87__RTHealthKitManager__getOdometerReadingUsingWorkout_samplingIntervalComponents_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  v6 = [a3 statistics];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v9)
  {
    [*(a1 + 32) addObject:v9];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)createWorkoutClusterWithWorkoutUUIDs:(id)a3 bestWorkoutUUID:(id)a4 lastWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8 error:(id *)a9
{
  v60 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  if (!v17)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_28;
    }

    v26 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    goto LABEL_27;
  }

  if (!v19)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lastWorkoutUUID", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_28;
    }

    v26 = _RTErrorInvalidParameterCreate(@"lastWorkoutUUID");
    goto LABEL_27;
  }

  if (!v18)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bestWorkoutUUID", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_28;
    }

    v26 = _RTErrorInvalidParameterCreate(@"bestWorkoutUUID");
LABEL_27:
    v24 = 0;
    *a9 = v26;
    goto LABEL_29;
  }

  if (!v20)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteSnapshot", buf, 2u);
    }

    if (a9)
    {
      v26 = _RTErrorInvalidParameterCreate(@"workoutRouteSnapshot");
      goto LABEL_27;
    }

LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__170;
  v48 = __Block_byref_object_dispose__170;
  v49 = 0;
  v22 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __151__RTHealthKitManager_createWorkoutClusterWithWorkoutUUIDs_bestWorkoutUUID_lastWorkoutUUID_relevanceValue_workoutRouteSnapshot_workoutRouteLabel_error___block_invoke;
  block[3] = &unk_2788D1928;
  v41 = &v50;
  block[4] = self;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v43 = a6;
  v39 = v20;
  v40 = v21;
  v42 = buf;
  dispatch_sync(v22, block);

  if (a9 && *(v45 + 5))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v34 = *(v45 + 5);
      *v54 = 138412802;
      v55 = v32;
      v56 = 2112;
      v57 = v33;
      v58 = 2112;
      v59 = v34;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v54, 0x20u);
    }

    *a9 = *(v45 + 5);
  }

  v24 = *(v51 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v50, 8);
LABEL_29:

  return v24 & 1;
}

void __151__RTHealthKitManager_createWorkoutClusterWithWorkoutUUIDs_bestWorkoutUUID_lastWorkoutUUID_relevanceValue_workoutRouteSnapshot_workoutRouteLabel_error___block_invoke(double *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v7 = a1[12];
  v8 = *(a1 + 9);
  v9 = *(*(a1 + 11) + 8);
  obj = *(v9 + 40);
  v10 = [v2 _createWorkoutClusterWithWorkoutUUIDs:v3 bestWorkoutUUID:v4 lastWorkoutUUID:v5 relevanceValue:v6 workoutRouteSnapshot:v8 workoutRouteLabel:&obj error:v7];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 10) + 8) + 24) = v10;
}

- (BOOL)_createWorkoutClusterWithWorkoutUUIDs:(id)a3 bestWorkoutUUID:(id)a4 lastWorkoutUUID:(id)a5 relevanceValue:(double)a6 workoutRouteSnapshot:(id)a7 workoutRouteLabel:(id)a8 error:(id *)a9
{
  v99[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = v21;
  if (!v17)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v43 = _RTErrorInvalidParameterCreate(@"workoutUUIDs");
    goto LABEL_41;
  }

  if (!v19)
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lastWorkoutUUID", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v43 = _RTErrorInvalidParameterCreate(@"lastWorkoutUUID");
    goto LABEL_41;
  }

  if (!v18)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bestWorkoutUUID", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v43 = _RTErrorInvalidParameterCreate(@"bestWorkoutUUID");
    goto LABEL_41;
  }

  if (!v20)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteSnapshot", buf, 2u);
    }

    if (!a9)
    {
      goto LABEL_42;
    }

    v43 = _RTErrorInvalidParameterCreate(@"workoutRouteSnapshot");
LABEL_41:
    v53 = 0;
    *a9 = v43;
    goto LABEL_52;
  }

  if (!v21)
  {
    v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteLabel", buf, 2u);
    }

    if (a9)
    {
      v43 = _RTErrorInvalidParameterCreate(@"workoutRouteLabel");
      goto LABEL_41;
    }

LABEL_42:
    v53 = 0;
    goto LABEL_52;
  }

  v68 = self;
  aSelector = a2;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  *buf = 0;
  v81 = buf;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__170;
  v84 = __Block_byref_object_dispose__170;
  v85 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v97[0] = v19;
  v97[1] = v18;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
  v24 = [v23 countByEnumeratingWithState:&v76 objects:v98 count:16];
  v71 = v22;
  if (v24)
  {
    v25 = *v77;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v77 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v76 + 1) + 8 * i);
        if (([v17 containsObject:v27] & 1) == 0)
        {
          dsemaa = MEMORY[0x277CCA9B8];
          v95 = *MEMORY[0x277CCA450];
          v47 = MEMORY[0x277CCACA8];
          [v27 UUIDString];
          v48 = v22 = v71;
          v49 = [v47 stringWithFormat:@"UUID %@ not found in cluster list", v48];
          v96 = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v51 = [dsemaa errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v50];
          v52 = *(v81 + 5);
          *(v81 + 5) = v51;

          v53 = 0;
          if (a9)
          {
            *a9 = *(v81 + 5);
          }

          goto LABEL_51;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v76 objects:v98 count:16];
      v22 = v71;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v23 = [objc_alloc(MEMORY[0x277CCDC20]) initWithWorkoutUUIDs:v17 lastWorkoutUUID:v19 bestWorkoutUUID:v18 relevanceValue:v20 workoutRouteSnapshot:v22 workoutRouteLabel:a6];
  v28 = dispatch_semaphore_create(0);
  v29 = [(RTHealthKitManager *)v68 workoutClusterStore];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __152__RTHealthKitManager__createWorkoutClusterWithWorkoutUUIDs_bestWorkoutUUID_lastWorkoutUUID_relevanceValue_workoutRouteSnapshot_workoutRouteLabel_error___block_invoke;
  v72[3] = &unk_2788C6148;
  v74 = buf;
  v75 = &v86;
  v30 = v28;
  v73 = v30;
  [v29 createWorkoutCluster:v23 completion:v72];

  v31 = (v81 + 40);
  obj = *(v81 + 5);
  dsema = v30;
  v67 = [MEMORY[0x277CBEAA8] now];
  v32 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v32))
  {
    v64 = [MEMORY[0x277CBEAA8] now];
    [v64 timeIntervalSinceDate:v67];
    v34 = v33;
    v62 = objc_opt_new();
    v63 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v35 = [MEMORY[0x277CCACC8] callStackSymbols];
    v36 = [v35 filteredArrayUsingPredicate:v63];
    v61 = [v36 firstObject];

    [v62 submitToCoreAnalytics:v61 type:1 duration:v34];
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *v90 = 0;
      _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v90, 2u);
    }

    v38 = MEMORY[0x277CCA9B8];
    v99[0] = *MEMORY[0x277CCA450];
    *v90 = @"semaphore wait timeout";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v99 count:1];
    v40 = [v38 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v39];

    v22 = v71;
    if (v40)
    {
      v41 = v40;

      obj = v40;
    }
  }

  else
  {
    v22 = v71;
  }

  objc_storeStrong(v31, obj);
  if (a9 && *(v81 + 5))
  {
    v55 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(aSelector);
      v60 = *(v81 + 5);
      *v90 = 138412802;
      *&v90[4] = v58;
      v91 = 2112;
      v92 = v59;
      v93 = 2112;
      v94 = v60;
      _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v90, 0x20u);
    }

    *a9 = *(v81 + 5);
  }

  v53 = *(v87 + 24);

LABEL_51:
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v86, 8);
LABEL_52:

  return v53 & 1;
}

void __152__RTHealthKitManager__createWorkoutClusterWithWorkoutUUIDs_bestWorkoutUUID_lastWorkoutUUID_relevanceValue_workoutRouteSnapshot_workoutRouteLabel_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)updateWorkoutClusterWithUUID:(id)a3 newBestWorkoutUUID:(id)a4 newLastWorkoutUUID:(id)a5 newRelevance:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 error:(id *)a9
{
  v58 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v21;
  if (v16)
  {
    v23 = v21;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    *buf = 0;
    v43 = buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__170;
    v46 = __Block_byref_object_dispose__170;
    v47 = 0;
    v24 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __159__RTHealthKitManager_updateWorkoutClusterWithUUID_newBestWorkoutUUID_newLastWorkoutUUID_newRelevance_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke;
    block[3] = &unk_2788D1950;
    v40 = &v48;
    block[4] = self;
    v34 = v16;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v20;
    v22 = v23;
    v39 = v23;
    v41 = buf;
    dispatch_sync(v24, block);

    if (a9 && *(v43 + 5))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v32 = *(v43 + 5);
        *v52 = 138412802;
        v53 = v30;
        v54 = 2112;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v52, 0x20u);
      }

      *a9 = *(v43 + 5);
    }

    v26 = *(v49 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", buf, 2u);
    }

    if (a9)
    {
      _RTErrorInvalidParameterCreate(@"clusterUUID");
      *a9 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  return v26 & 1;
}

void __159__RTHealthKitManager_updateWorkoutClusterWithUUID_newBestWorkoutUUID_newLastWorkoutUUID_newRelevance_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  v9 = *(a1[12] + 8);
  obj = *(v9 + 40);
  v10 = [v2 _updateWorkoutClusterWithUUID:v3 newBestWorkoutUUID:v4 newLastWorkoutUUID:v5 newRelevance:v6 newWorkoutAssociations:v7 workoutAssociationsToRemove:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[11] + 8) + 24) = v10;
}

- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 newBestWorkoutUUID:(id)a4 newLastWorkoutUUID:(id)a5 newRelevance:(id)a6 newWorkoutAssociations:(id)a7 workoutAssociationsToRemove:(id)a8 error:(id *)a9
{
  v70[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  if (v15)
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    *v55 = 0;
    v56 = v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__170;
    v59 = __Block_byref_object_dispose__170;
    v60 = 0;
    v16 = dispatch_semaphore_create(0);
    v17 = [(RTHealthKitManager *)self workoutClusterStore];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __160__RTHealthKitManager__updateWorkoutClusterWithUUID_newBestWorkoutUUID_newLastWorkoutUUID_newRelevance_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke;
    v51[3] = &unk_2788C6148;
    v53 = v55;
    v54 = &v61;
    v18 = v16;
    v52 = v18;
    [v17 updateWorkoutClusterWithUUID:v15 newRelevance:v48 newLastWorkoutUUID:v47 newBestWorkoutUUID:v46 newWorkoutAssociations:v49 workoutAssociationsToRemove:v50 completion:v51];

    v19 = (v56 + 40);
    obj = *(v56 + 5);
    v20 = v18;
    v21 = [MEMORY[0x277CBEAA8] now];
    v22 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v20, v22))
    {
      v23 = [MEMORY[0x277CBEAA8] now];
      [v23 timeIntervalSinceDate:v21];
      v25 = v24;
      v26 = objc_opt_new();
      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v28 = [MEMORY[0x277CCACC8] callStackSymbols];
      v29 = [v28 filteredArrayUsingPredicate:v27];
      v30 = [v29 firstObject];

      [v26 submitToCoreAnalytics:v30 type:1 duration:v25];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      v70[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v70 count:1];
      v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v33];

      if (v34)
      {
        v35 = v34;

        obj = v34;
      }
    }

    objc_storeStrong(v19, obj);
    if (a9 && *(v56 + 5))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = *(v56 + 5);
        *buf = 138412802;
        *&buf[4] = v41;
        v66 = 2112;
        v67 = v42;
        v68 = 2112;
        v69 = v43;
        _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      *a9 = *(v56 + 5);
    }

    v37 = *(v62 + 24);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(&v61, 8);
  }

  else
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *v55 = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", v55, 2u);
    }

    if (a9)
    {
      _RTErrorInvalidParameterCreate(@"clusterUUID");
      *a9 = v37 = 0;
    }

    else
    {
      v37 = 0;
    }
  }

  return v37 & 1;
}

void __160__RTHealthKitManager__updateWorkoutClusterWithUUID_newBestWorkoutUUID_newLastWorkoutUUID_newRelevance_newWorkoutAssociations_workoutAssociationsToRemove_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)updateWorkoutClusterWithUUID:(id)a3 workoutRouteSnapshot:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", buf, 2u);
    }

    if (a5)
    {
      v16 = _RTErrorInvalidParameterCreate(@"clusterUUID");
LABEL_17:
      v14 = 0;
      *a5 = v16;
      goto LABEL_19;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteSnapshot", buf, 2u);
    }

    if (a5)
    {
      v16 = _RTErrorInvalidParameterCreate(@"workoutRouteSnapshot");
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__170;
  v32 = __Block_byref_object_dispose__170;
  v33 = 0;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTHealthKitManager_updateWorkoutClusterWithUUID_workoutRouteSnapshot_error___block_invoke;
  block[3] = &unk_2788CC288;
  v26 = &v34;
  block[4] = self;
  v24 = v9;
  v25 = v11;
  v27 = buf;
  dispatch_sync(v12, block);

  if (a5 && *(v29 + 5))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v22 = *(v29 + 5);
      *v38 = 138412802;
      v39 = v20;
      v40 = 2112;
      v41 = v21;
      v42 = 2112;
      v43 = v22;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v38, 0x20u);
    }

    *a5 = *(v29 + 5);
  }

  v14 = *(v35 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v34, 8);
LABEL_19:

  return v14 & 1;
}

void __78__RTHealthKitManager_updateWorkoutClusterWithUUID_workoutRouteSnapshot_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _updateWorkoutClusterWithUUID:v3 workoutRouteSnapshot:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 workoutRouteSnapshot:(id)a4 error:(id *)a5
{
  v64[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", buf, 2u);
    }

    if (a5)
    {
      v34 = _RTErrorInvalidParameterCreate(@"clusterUUID");
LABEL_22:
      v32 = 0;
      *a5 = v34;
      goto LABEL_24;
    }

LABEL_23:
    v32 = 0;
    goto LABEL_24;
  }

  if (!v10)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteSnapshot", buf, 2u);
    }

    if (a5)
    {
      v34 = _RTErrorInvalidParameterCreate(@"workoutRouteSnapshot");
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  aSelector = a2;
  v12 = self;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__170;
  v53 = __Block_byref_object_dispose__170;
  v54 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = [(RTHealthKitManager *)v12 workoutClusterStore];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __79__RTHealthKitManager__updateWorkoutClusterWithUUID_workoutRouteSnapshot_error___block_invoke;
  v45[3] = &unk_2788C6148;
  v47 = buf;
  v48 = &v55;
  v15 = v13;
  v46 = v15;
  [v14 updateWorkoutRouteSnapshot:v11 forClusterUUID:v9 completion:v45];

  v16 = (v50 + 40);
  obj = *(v50 + 5);
  v17 = v15;
  v44 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v17, v18))
  {
    v42 = [MEMORY[0x277CBEAA8] now];
    [v42 timeIntervalSinceDate:v44];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v23 = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [v23 filteredArrayUsingPredicate:v22];
    v25 = [v24 firstObject];

    [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *v59 = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v59, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v64[0] = *MEMORY[0x277CCA450];
    *v59 = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v64 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;

      obj = v29;
    }
  }

  objc_storeStrong(v16, obj);
  if (a5 && *(v50 + 5))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(aSelector);
      v40 = *(v50 + 5);
      *v59 = 138412802;
      *&v59[4] = v38;
      v60 = 2112;
      v61 = v39;
      v62 = 2112;
      v63 = v40;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v59, 0x20u);
    }

    *a5 = *(v50 + 5);
  }

  v32 = *(v56 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v55, 8);
LABEL_24:

  return v32 & 1;
}

void __79__RTHealthKitManager__updateWorkoutClusterWithUUID_workoutRouteSnapshot_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)updateWorkoutClusterWithUUID:(id)a3 workoutRouteLabel:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", buf, 2u);
    }

    if (a5)
    {
      v16 = _RTErrorInvalidParameterCreate(@"clusterUUID");
LABEL_17:
      v14 = 0;
      *a5 = v16;
      goto LABEL_19;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteLabel", buf, 2u);
    }

    if (a5)
    {
      v16 = _RTErrorInvalidParameterCreate(@"workoutRouteLabel");
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__170;
  v32 = __Block_byref_object_dispose__170;
  v33 = 0;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTHealthKitManager_updateWorkoutClusterWithUUID_workoutRouteLabel_error___block_invoke;
  block[3] = &unk_2788CC288;
  v26 = &v34;
  block[4] = self;
  v24 = v9;
  v25 = v11;
  v27 = buf;
  dispatch_sync(v12, block);

  if (a5 && *(v29 + 5))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v22 = *(v29 + 5);
      *v38 = 138412802;
      v39 = v20;
      v40 = 2112;
      v41 = v21;
      v42 = 2112;
      v43 = v22;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v38, 0x20u);
    }

    *a5 = *(v29 + 5);
  }

  v14 = *(v35 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v34, 8);
LABEL_19:

  return v14 & 1;
}

void __75__RTHealthKitManager_updateWorkoutClusterWithUUID_workoutRouteLabel_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _updateWorkoutClusterWithUUID:v3 workoutRouteLabel:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (BOOL)_updateWorkoutClusterWithUUID:(id)a3 workoutRouteLabel:(id)a4 error:(id *)a5
{
  v64[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID", buf, 2u);
    }

    if (a5)
    {
      v34 = _RTErrorInvalidParameterCreate(@"clusterUUID");
LABEL_22:
      v32 = 0;
      *a5 = v34;
      goto LABEL_24;
    }

LABEL_23:
    v32 = 0;
    goto LABEL_24;
  }

  if (!v10)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutRouteLabel", buf, 2u);
    }

    if (a5)
    {
      v34 = _RTErrorInvalidParameterCreate(@"workoutRouteLabel");
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  aSelector = a2;
  v12 = self;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__170;
  v53 = __Block_byref_object_dispose__170;
  v54 = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = [(RTHealthKitManager *)v12 workoutClusterStore];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __76__RTHealthKitManager__updateWorkoutClusterWithUUID_workoutRouteLabel_error___block_invoke;
  v45[3] = &unk_2788C6148;
  v47 = buf;
  v48 = &v55;
  v15 = v13;
  v46 = v15;
  [v14 updateWorkoutRouteLabel:v11 forClusterUUID:v9 completion:v45];

  v16 = (v50 + 40);
  obj = *(v50 + 5);
  v17 = v15;
  v44 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v17, v18))
  {
    v42 = [MEMORY[0x277CBEAA8] now];
    [v42 timeIntervalSinceDate:v44];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v23 = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [v23 filteredArrayUsingPredicate:v22];
    v25 = [v24 firstObject];

    [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *v59 = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v59, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v64[0] = *MEMORY[0x277CCA450];
    *v59 = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v64 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;

      obj = v29;
    }
  }

  objc_storeStrong(v16, obj);
  if (a5 && *(v50 + 5))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(aSelector);
      v40 = *(v50 + 5);
      *v59 = 138412802;
      *&v59[4] = v38;
      v60 = 2112;
      v61 = v39;
      v62 = 2112;
      v63 = v40;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v59, 0x20u);
    }

    *a5 = *(v50 + 5);
  }

  v32 = *(v56 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v55, 8);
LABEL_24:

  return v32 & 1;
}

void __76__RTHealthKitManager__updateWorkoutClusterWithUUID_workoutRouteLabel_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchWorkoutClustersWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTHealthKitManager fetchWorkoutClustersWithHandler:]";
      v12 = 1024;
      v13 = 2822;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__RTHealthKitManager_fetchWorkoutClustersWithHandler___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)_fetchWorkoutClustersWithHandler:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _fetchWorkoutClustersWithHandler:]";
      v36 = 1024;
      v37 = 2833;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = dispatch_semaphore_create(0);
  v7 = [(RTHealthKitManager *)self workoutClusterStore];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __55__RTHealthKitManager__fetchWorkoutClustersWithHandler___block_invoke;
  v32 = &unk_2788C4550;
  v8 = v4;
  v34 = v8;
  v9 = v6;
  v33 = v9;
  [v7 fetchWorkoutClustersWithCompletion:&v29];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
    v23 = *MEMORY[0x277D01448];
    v38[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v38 count:1];
    v25 = [v22 errorWithDomain:v23 code:15 userInfo:v24];

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
    v28 = [MEMORY[0x277CBEA60] array];
    (*(v8 + 2))(v8, v28, v27);
  }
}

intptr_t __55__RTHealthKitManager__fetchWorkoutClustersWithHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)fetchWorkoutClusterContainingWorkoutUUID:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTHealthKitManager fetchWorkoutClusterContainingWorkoutUUID:handler:]";
    v19 = 1024;
    v20 = 2853;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTHealthKitManager fetchWorkoutClusterContainingWorkoutUUID:handler:]";
      v19 = 1024;
      v20 = 2854;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTHealthKitManager_fetchWorkoutClusterContainingWorkoutUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)_fetchWorkoutClusterContainingWorkoutUUID:(id)a3 handler:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _fetchWorkoutClusterContainingWorkoutUUID:handler:]";
      v43 = 1024;
      v44 = 2867;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"requires valid UUID.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v31 errorWithDomain:v32 code:0 userInfo:v13];
    (v8)[2](v8, 0, v33);
    goto LABEL_21;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[RTHealthKitManager _fetchWorkoutClusterContainingWorkoutUUID:handler:]";
    v43 = 1024;
    v44 = 2866;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = dispatch_semaphore_create(0);
  v10 = [(RTHealthKitManager *)self workoutClusterStore];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __72__RTHealthKitManager__fetchWorkoutClusterContainingWorkoutUUID_handler___block_invoke;
  v37[3] = &unk_2788D1978;
  v11 = v8;
  v39 = v11;
  v12 = v9;
  v38 = v12;
  [v10 fetchWorkoutClusterContainingWorkoutUUID:v6 completion:v37];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = v14;
    [v35 timeIntervalSinceDate:v14];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
    v25 = *MEMORY[0x277D01448];
    v45[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v45 count:1];
    v27 = [v24 errorWithDomain:v25 code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }

    v14 = v36;
  }

  else
  {
    v27 = 0;
  }

  v34 = v27;
  if (v34)
  {
    (*(v11 + 2))(v11, 0, v34);
  }

  v33 = v39;
LABEL_21:
}

intptr_t __72__RTHealthKitManager__fetchWorkoutClusterContainingWorkoutUUID_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTHealthKitManager fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:handler:]";
    v19 = 1024;
    v20 = 2896;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTHealthKitManager fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:handler:]";
      v19 = 1024;
      v20 = 2897;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTHealthKitManager_fetchWorkoutClusterUUIDsContainingWorkoutUUIDs_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)_fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:(id)a3 handler:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:handler:]";
      v43 = 1024;
      v44 = 2910;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[RTHealthKitManager _fetchWorkoutClusterUUIDsContainingWorkoutUUIDs:handler:]";
    v43 = 1024;
    v44 = 2909;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUIDs (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (![v6 count])
  {
LABEL_18:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"requires valid UUID.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v31 errorWithDomain:v32 code:0 userInfo:v15];
    (v8)[2](v8, 0, v33);
    goto LABEL_23;
  }

  v11 = dispatch_semaphore_create(0);
  v12 = [(RTHealthKitManager *)self workoutClusterStore];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __78__RTHealthKitManager__fetchWorkoutClusterUUIDsContainingWorkoutUUIDs_handler___block_invoke;
  v37[3] = &unk_2788C4550;
  v13 = v8;
  v39 = v13;
  v14 = v11;
  v38 = v14;
  [v12 fetchWorkoutClustersContainingWorkoutUUIDs:v6 completion:v37];

  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = v16;
    [v35 timeIntervalSinceDate:v16];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
    v27 = *MEMORY[0x277D01448];
    v45[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v45 count:1];
    v29 = [v26 errorWithDomain:v27 code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;
    }

    v16 = v36;
  }

  else
  {
    v29 = 0;
  }

  v34 = v29;
  if (v34)
  {
    (*(v13 + 2))(v13, 0, v34);
  }

  v33 = v39;
LABEL_23:
}

intptr_t __78__RTHealthKitManager__fetchWorkoutClusterUUIDsContainingWorkoutUUIDs_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)fetchWorkoutUUIDsForClusterUUID:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTHealthKitManager fetchWorkoutUUIDsForClusterUUID:handler:]";
    v19 = 1024;
    v20 = 2939;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTHealthKitManager fetchWorkoutUUIDsForClusterUUID:handler:]";
      v19 = 1024;
      v20 = 2940;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTHealthKitManager_fetchWorkoutUUIDsForClusterUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)_fetchWorkoutUUIDsForClusterUUID:(id)a3 handler:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _fetchWorkoutUUIDsForClusterUUID:handler:]";
      v43 = 1024;
      v44 = 2953;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"requires valid UUID.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v31 errorWithDomain:v32 code:0 userInfo:v13];
    (v8)[2](v8, 0, v33);
    goto LABEL_21;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[RTHealthKitManager _fetchWorkoutUUIDsForClusterUUID:handler:]";
    v43 = 1024;
    v44 = 2952;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = dispatch_semaphore_create(0);
  v10 = [(RTHealthKitManager *)self workoutClusterStore];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __63__RTHealthKitManager__fetchWorkoutUUIDsForClusterUUID_handler___block_invoke;
  v37[3] = &unk_2788C4550;
  v11 = v8;
  v39 = v11;
  v12 = v9;
  v38 = v12;
  [v10 fetchWorkoutUUIDsForClusterUUID:v6 completion:v37];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = v14;
    [v35 timeIntervalSinceDate:v14];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
    v25 = *MEMORY[0x277D01448];
    v45[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v45 count:1];
    v27 = [v24 errorWithDomain:v25 code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }

    v14 = v36;
  }

  else
  {
    v27 = 0;
  }

  v34 = v27;
  if (v34)
  {
    (*(v11 + 2))(v11, 0, v34);
  }

  v33 = v39;
LABEL_21:
}

intptr_t __63__RTHealthKitManager__fetchWorkoutUUIDsForClusterUUID_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTHealthKitManager fetchWorkoutRouteSnapshotForClusterUUID:handler:]";
    v19 = 1024;
    v20 = 2982;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTHealthKitManager fetchWorkoutRouteSnapshotForClusterUUID:handler:]";
      v19 = 1024;
      v20 = 2983;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTHealthKitManager_fetchWorkoutRouteSnapshotForClusterUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)_fetchWorkoutRouteSnapshotForClusterUUID:(id)a3 handler:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTHealthKitManager _fetchWorkoutRouteSnapshotForClusterUUID:handler:]";
      v43 = 1024;
      v44 = 2996;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"requires valid UUID.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v31 errorWithDomain:v32 code:0 userInfo:v13];
    (v8)[2](v8, 0, v33);
    goto LABEL_21;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[RTHealthKitManager _fetchWorkoutRouteSnapshotForClusterUUID:handler:]";
    v43 = 1024;
    v44 = 2995;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clusterUUID (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = dispatch_semaphore_create(0);
  v10 = [(RTHealthKitManager *)self workoutClusterStore];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __71__RTHealthKitManager__fetchWorkoutRouteSnapshotForClusterUUID_handler___block_invoke;
  v37[3] = &unk_2788D19A0;
  v11 = v8;
  v39 = v11;
  v12 = v9;
  v38 = v12;
  [v10 fetchWorkoutRouteSnapshotForClusterUUID:v6 completion:v37];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = v14;
    [v35 timeIntervalSinceDate:v14];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
    v25 = *MEMORY[0x277D01448];
    v45[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v45 count:1];
    v27 = [v24 errorWithDomain:v25 code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }

    v14 = v36;
  }

  else
  {
    v27 = 0;
  }

  v34 = v27;
  if (v34)
  {
    (*(v11 + 2))(v11, 0, v34);
  }

  v33 = v39;
LABEL_21:
}

intptr_t __71__RTHealthKitManager__fetchWorkoutRouteSnapshotForClusterUUID_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)deleteWorkoutCluster:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__170;
    v19 = __Block_byref_object_dispose__170;
    v20 = 0;
    v7 = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__RTHealthKitManager_deleteWorkoutCluster_error___block_invoke;
    v11[3] = &unk_2788D1798;
    v13 = &v21;
    v11[4] = self;
    v12 = v6;
    v14 = buf;
    dispatch_sync(v7, v11);

    if (a4)
    {
      *a4 = *(v16 + 5);
    }

    v8 = *(v22 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutClusterUUID", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"workoutClusterUUID");
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

void __49__RTHealthKitManager_deleteWorkoutCluster_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _deleteWorkoutCluster:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_deleteWorkoutCluster:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    aSelector = a2;
    *v43 = 0;
    v44 = v43;
    v45 = 0x2020000000;
    v46 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = self;
    v10 = v8;
    v11 = [(RTHealthKitManager *)v9 workoutClusterStore];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __50__RTHealthKitManager__deleteWorkoutCluster_error___block_invoke;
    v40[3] = &unk_2788CCCB0;
    v42 = v43;
    v12 = v10;
    v41 = v12;
    [v11 deleteWorkoutClusterWithUUID:v7 completion:v40];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
      v52[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
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

    v31 = v27;
    v32 = v31;
    if (a4 && v31)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v37;
        v48 = 2112;
        v49 = v38;
        v50 = 2112;
        v51 = v32;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v34 = v32;
      *a4 = v32;
    }

    v30 = v44[24];

    _Block_object_dispose(v43, 8);
  }

  else
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v43 = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutClusterUUID", v43, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"workoutClusterUUID");
      *a4 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }
  }

  return v30 & 1;
}

- (void)generateRaceRouteClustersWithLimit:(unint64_t)a3 handler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTHealthKitManager generateRaceRouteClustersWithLimit:handler:]";
      v15 = 1024;
      v16 = 3067;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTHealthKitManager_generateRaceRouteClustersWithLimit_handler___block_invoke;
  block[3] = &unk_2788C6300;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)_generateRaceRouteClustersWithLimit:(unint64_t)a3 handler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTHealthKitManager _generateRaceRouteClustersWithLimit:handler:]";
      v14 = 1024;
      v15 = 3079;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = [(RTHealthKitManager *)self workoutClusterStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__RTHealthKitManager__generateRaceRouteClustersWithLimit_handler___block_invoke;
  v10[3] = &unk_2788C7D58;
  v11 = v6;
  v9 = v6;
  [v8 generateRaceRouteClustersWithLimit:a3 completion:v10];
}

- (id)getHealthKitDataWithStartDate:(id)a3 limit:(int64_t)a4 includeLocations:(BOOL)a5 includeOdometerReadings:(BOOL)a6 odometerSamplingIntervalComponents:(id)a7 error:(id *)a8
{
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  if (v14)
  {
    if (a4 < 0)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[RTHealthKitManager getHealthKitDataWithStartDate:limit:includeLocations:includeOdometerReadings:odometerSamplingIntervalComponents:error:]";
        *&buf[12] = 1024;
        *&buf[14] = 3098;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__170;
    v37 = __Block_byref_object_dispose__170;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__170;
    v33 = __Block_byref_object_dispose__170;
    v34 = 0;
    v17 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __140__RTHealthKitManager_getHealthKitDataWithStartDate_limit_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_error___block_invoke;
    block[3] = &unk_2788D1748;
    v24 = buf;
    block[4] = self;
    v22 = v14;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v23 = v15;
    v25 = &v29;
    dispatch_sync(v17, block);

    if (a8)
    {
      *a8 = v30[5];
    }

    v18 = *(*&buf[8] + 40);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a8)
    {
      *a8 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    v18 = [MEMORY[0x277CBEA60] array];
  }

  return v18;
}

void __140__RTHealthKitManager_getHealthKitDataWithStartDate_limit_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 81);
  v7 = *(a1 + 72);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v2 _getHealthKitDataWithStartDate:v3 limit:v7 includeLocations:v5 includeOdometerReadings:v6 odometerSamplingIntervalComponents:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)_getHealthKitDataWithStartDate:(id)a3 limit:(int64_t)a4 includeLocations:(BOOL)a5 includeOdometerReadings:(BOOL)a6 odometerSamplingIntervalComponents:(id)a7 error:(id *)a8
{
  v80 = a6;
  v93 = a5;
  v157[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v76 = a7;
  v68 = v10;
  if (v10)
  {
    if (a4 < 0)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[RTHealthKitManager _getHealthKitDataWithStartDate:limit:includeLocations:includeOdometerReadings:odometerSamplingIntervalComponents:error:]";
        v127 = 1024;
        LODWORD(v128) = 3124;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "limit value cannot be less than 0 (in %s:%d)", buf, 0x12u);
      }
    }

    v79 = objc_opt_new();
    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = __Block_byref_object_copy__170;
    v124 = __Block_byref_object_dispose__170;
    v125 = objc_opt_new();
    v12 = [(RTHealthKitManager *)self getWorkoutDefaultSortDescriptors];
    v13 = [(RTHealthKitManager *)self _getRTWorkoutDefaultTypesForRaceRoute];
    v119 = 0;
    v14 = [(RTHealthKitManager *)self _getWorkoutsWithStartDate:v68 limit:a4 sortDescriptors:v12 nearLocation:0 distanceThreshold:1 onlySourcedFromFitnessApp:0 includePastureModeRoutes:1.79769313e308 workoutTypes:v13 error:&v119];
    v82 = v119;

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v14;
    v78 = [obj countByEnumeratingWithState:&v115 objects:v156 count:16];
    if (v78)
    {
      v77 = *v116;
      if (v93)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v86 = *MEMORY[0x277D01448];
      if (v80)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v69 = v16;
      v70 = v15;
      v87 = *MEMORY[0x277CCA450];
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v116 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v115 + 1) + 8 * i);
          v81 = objc_autoreleasePoolPush();
          v17 = objc_opt_new();
          [v17 setObject:v85 forKeyedSubscript:@"Workout"];
          v84 = v17;
          v18 = self;
          v19 = v82;
          if (v80)
          {
            v114 = v82;
            v20 = [(RTHealthKitManager *)self _getOdometerReadingUsingWorkout:v85 samplingIntervalComponents:v76 error:&v114];
            v19 = v114;

            if (v20 && [v20 count])
            {
              [v84 setObject:v20 forKeyedSubscript:@"Odometer"];
            }

            v18 = self;
          }

          v113 = v19;
          v21 = [(RTHealthKitManager *)v18 _getWorkoutRouteUsingWorkout:v85 error:&v113];
          v82 = v113;

          v96 = objc_opt_new();
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v90 = v21;
          v22 = [v90 countByEnumeratingWithState:&v109 objects:v155 count:16];
          if (v22)
          {
            v99 = 0;
            v94 = *v110;
            do
            {
              v97 = v22;
              for (j = 0; j != v97; ++j)
              {
                if (*v110 != v94)
                {
                  objc_enumerationMutation(v90);
                }

                v102 = *(*(&v109 + 1) + 8 * j);
                context = objc_autoreleasePoolPush();
                v24 = objc_opt_new();
                v25 = objc_opt_new();
                if (v93)
                {
                  v26 = dispatch_semaphore_create(0);
                  v104[0] = MEMORY[0x277D85DD0];
                  v104[1] = 3221225472;
                  v104[2] = __141__RTHealthKitManager__getHealthKitDataWithStartDate_limit_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_error___block_invoke;
                  v104[3] = &unk_2788C6EA0;
                  v107 = &v120;
                  v104[4] = self;
                  v108 = a2;
                  v27 = v26;
                  v105 = v27;
                  v106 = v25;
                  [(RTHealthKitManager *)self _fetchWorkoutRouteLocationsUsingWorkoutRoute:v102 batchSize:0 fetchOnlyFirstFew:0 handler:v104];
                  v28 = v27;
                  v29 = [MEMORY[0x277CBEAA8] now];
                  v30 = dispatch_time(0, 3600000000000);
                  if (dispatch_semaphore_wait(v28, v30))
                  {
                    v91 = [MEMORY[0x277CBEAA8] now];
                    [v91 timeIntervalSinceDate:v29];
                    v32 = v31;
                    v33 = objc_opt_new();
                    v34 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
                    v35 = [MEMORY[0x277CCACC8] callStackSymbols];
                    v36 = [v35 filteredArrayUsingPredicate:v34];
                    v37 = [v36 firstObject];

                    [v33 submitToCoreAnalytics:v37 type:1 duration:v32];
                    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_2304B3000, v38, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                    }

                    v39 = MEMORY[0x277CCA9B8];
                    v157[0] = v87;
                    *buf = @"semaphore wait timeout";
                    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v157 count:1];
                    v41 = [v39 errorWithDomain:v86 code:15 userInfo:v40];

                    if (v41)
                    {
                      v42 = v41;
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v43 = v41;
                  v44 = v43;
                  if (v121[5] && v43)
                  {
                    v45 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      v46 = objc_opt_class();
                      v47 = NSStringFromClass(v46);
                      v48 = NSStringFromSelector(a2);
                      *buf = 138412802;
                      *&buf[4] = v47;
                      v127 = 2112;
                      v128 = v48;
                      v129 = 2112;
                      v130 = v44;
                      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
                    }

                    [v121[5] addObject:v44];
                    v44 = 0;
                  }
                }

                [v24 setObject:v102 forKeyedSubscript:@"WorkoutRoute"];
                if ([v25 count])
                {
                  [v24 setObject:v25 forKeyedSubscript:@"WorkoutRouteLocations"];
                  v99 += [v25 count];
                }

                [v96 addObject:v24];

                objc_autoreleasePoolPop(context);
              }

              v22 = [v90 countByEnumeratingWithState:&v109 objects:v155 count:16];
            }

            while (v22);
          }

          else
          {
            v99 = 0;
          }

          if ([v96 count])
          {
            [v84 setObject:v96 forKeyedSubscript:@"WorkoutRoutes"];
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = objc_opt_class();
              v98 = NSStringFromClass(v50);
              contexta = NSStringFromSelector(a2);
              v74 = [v85 UUID];
              v92 = [v85 device];
              v73 = [v92 name];
              v95 = [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v85, "workoutActivityType")}];
              v75 = [v85 startDate];
              v103 = [v75 stringFromDate];
              v51 = [v85 endDate];
              v52 = [v51 stringFromDate];
              v53 = objc_opt_class();
              [(RTHealthKitManager *)self _getDurationForWorkout:v85];
              v54 = [v53 stringFromTimeInterval:?];
              v55 = [(RTHealthKitManager *)self _getTotalDistanceForWorkout:v85];
              v56 = [MEMORY[0x277CCDAB0] meterUnit];
              [v55 doubleValueForUnit:v56];
              v58 = v57;
              v59 = [v84 objectForKeyedSubscript:@"Odometer"];
              v60 = [v59 count];
              if (v60)
              {
                v71 = [v84 objectForKeyedSubscript:@"Odometer"];
                v61 = v71;
              }

              else
              {
                v61 = 0;
              }

              if (v76)
              {
                v62 = [v76 second];
              }

              else
              {
                v62 = 0;
              }

              +[RTRuntime footprint];
              *buf = 138415874;
              *&buf[4] = v98;
              v127 = 2112;
              v128 = contexta;
              v129 = 2112;
              v130 = v74;
              v131 = 2112;
              v132 = v73;
              v133 = 2112;
              v134 = v95;
              v135 = 2112;
              v136 = v103;
              v137 = 2112;
              v138 = v52;
              v139 = 2112;
              v140 = v54;
              v141 = 2048;
              v142 = v58;
              v143 = 2048;
              v144 = v99;
              v145 = 2048;
              v146 = v61;
              v147 = 2112;
              v148 = v70;
              v149 = 2112;
              v150 = v69;
              v151 = 2048;
              v152 = v62;
              v153 = 2048;
              v154 = v63;
              _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, workout UUID, %@, device, %@, workoutType, %@, startDate, %@, endDate, %@, duration, %@, totalDistance, %.3f meters, number of locations, %lu, number of odometer readings, %lu, include locations, %@, include Odometer Readings, %@, odometer sampling rate in seconds, %lu, footprint, %.2f MB", buf, 0x98u);
              if (v60)
              {
              }
            }
          }

          [v79 addObject:v84];

          objc_autoreleasePoolPop(v81);
        }

        v78 = [obj countByEnumeratingWithState:&v115 objects:v156 count:16];
      }

      while (v78);
    }

    if (a8)
    {
      v64 = _RTSafeArray();
      *a8 = _RTMultiErrorCreate();
    }

    _Block_object_dispose(&v120, 8);
  }

  else
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (a8)
    {
      *a8 = _RTErrorInvalidParameterCreate(@"startDate");
    }

    v79 = [MEMORY[0x277CBEA60] array];
  }

  return v79;
}

void __141__RTHealthKitManager__getHealthKitDataWithStartDate_limit_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && (v7 = [v5 count], !v6) && v7)
  {
    [*(a1 + 48) addObjectsFromArray:v5];
  }

  else
  {
    if (v6 && *(*(*(a1 + 56) + 8) + 40))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 64));
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", &v12, 0x20u);
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
      v6 = 0;
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (BOOL)saveEntireHealthKitDataToURL:(id)a3 outAbsoluteURL:(id *)a4 includeWorkoutData:(BOOL)a5 includeLocations:(BOOL)a6 includeOdometerReadings:(BOOL)a7 odometerSamplingIntervalComponents:(id)a8 includeClustersData:(BOOL)a9 error:(id *)a10
{
  v17 = a3;
  v18 = a8;
  v19 = v18;
  if (!v17)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    if (a10)
    {
      v23 = @"url";
LABEL_14:
      _RTErrorInvalidParameterCreate(v23);
      *a10 = v21 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (!a4)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAbsoluteURL", buf, 2u);
    }

    if (a10)
    {
      v23 = @"outAbsoluteURL";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26 = v18;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__170;
  v48 = __Block_byref_object_dispose__170;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__170;
  v42 = __Block_byref_object_dispose__170;
  v43 = 0;
  v20 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __187__RTHealthKitManager_saveEntireHealthKitDataToURL_outAbsoluteURL_includeWorkoutData_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_includeClustersData_error___block_invoke;
  block[3] = &unk_2788D19C8;
  v33 = a2;
  block[4] = self;
  v30 = &v50;
  v28 = v17;
  v31 = buf;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a9;
  v29 = v26;
  v32 = &v38;
  dispatch_sync(v20, block);

  *a4 = *(v45 + 5);
  if (a10)
  {
    *a10 = v39[5];
  }

  v21 = *(v51 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v50, 8);
  v19 = v26;
LABEL_16:

  return v21 & 1;
}

void __187__RTHealthKitManager_saveEntireHealthKitDataToURL_outAbsoluteURL_includeWorkoutData_includeLocations_includeOdometerReadings_odometerSamplingIntervalComponents_includeClustersData_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 80));
      +[RTRuntime footprint];
      *buf = 138412802;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      v35 = 2048;
      v36 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "---------> %@, %@, start _saveEntireHealthKitDataToURL, footprint, %.2f MB <---------", buf, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  v12 = *(a1 + 88);
  v13 = *(a1 + 89);
  v14 = *(a1 + 90);
  v15 = *(a1 + 48);
  v16 = *(a1 + 91);
  v17 = *(*(a1 + 72) + 8);
  v29 = *(v17 + 40);
  obj = v11;
  LOBYTE(v28) = v16;
  v18 = [v8 _saveEntireHealthKitDataToURL:v9 outAbsoluteURL:&obj includeWorkoutData:v12 includeLocations:v13 includeOdometerReadings:v14 odometerSamplingIntervalComponents:v15 includeClustersData:v28 error:&v29];
  objc_storeStrong((v10 + 40), obj);
  objc_storeStrong((v17 + 40), v29);
  *(*(*(a1 + 56) + 8) + 24) = v18;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 80));
      +[RTRuntime footprint];
      v24 = v23;
      v25 = *(*(*(a1 + 72) + 8) + 40);
      v26 = [MEMORY[0x277CBEAA8] date];
      [v26 timeIntervalSinceDate:v2];
      *buf = 138413314;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      v35 = 2048;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = v27;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "---------> %@, %@, finished _saveEntireHealthKitDataToURL, footprint, %.2f MB, error, %@, latency, %.2f <---------", buf, 0x34u);
    }
  }
}

- (BOOL)_saveEntireHealthKitDataToURL:(id)a3 outAbsoluteURL:(id *)a4 includeWorkoutData:(BOOL)a5 includeLocations:(BOOL)a6 includeOdometerReadings:(BOOL)a7 odometerSamplingIntervalComponents:(id)a8 includeClustersData:(BOOL)a9 error:(id *)a10
{
  v131 = a7;
  v11 = a6;
  v12 = a5;
  v163 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v134 = a8;
  if (!v16)
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    if (a10)
    {
      v63 = @"url";
LABEL_52:
      _RTErrorInvalidParameterCreate(v63);
      *a10 = v65 = 0;
      goto LABEL_92;
    }

LABEL_53:
    v65 = 0;
    goto LABEL_92;
  }

  if (!a4)
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outAbsoluteURL", buf, 2u);
    }

    if (a10)
    {
      v63 = @"outAbsoluteURL";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v116 = a4;
  aSelector = a2;
  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v20 stringFromDate:v21 dateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
  v23 = [v19 stringWithFormat:@"RaceRoute-%@", v22];

  v121 = v23;
  v129 = [v16 URLByAppendingPathComponent:v23];
  v24 = [v129 path];
  LOBYTE(v22) = [v18 fileExistsAtPath:v24 isDirectory:0];

  v25 = 0;
  if ((v22 & 1) == 0)
  {
    v144 = 0;
    [v18 createDirectoryAtURL:v129 withIntermediateDirectories:1 attributes:0 error:&v144];
    v26 = v144;
    v25 = v26;
    if (v17)
    {
      if (v26)
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v103 = objc_opt_class();
          v104 = NSStringFromClass(v103);
          NSStringFromSelector(aSelector);
          v105 = v120 = v11;
          *buf = 138412802;
          v148 = v104;
          v149 = 2112;
          v150 = v105;
          v151 = 2112;
          v152 = v25;
          _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);

          v11 = v120;
        }

        [v17 addObject:v25];
        v25 = 0;
      }
    }
  }

  v28 = objc_opt_new();
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"Workout"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"WorkoutRoute"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"WorkoutRouteLocations"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"Odometer"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalWorkoutRouteLocations"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalOdometer"];
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalClusters"];
  v124 = v28;
  [v28 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalWorkoutsInClusters"];
  v29 = [MEMORY[0x277CBEAA8] distantPast];
  v130 = [MEMORY[0x277CBEAA8] distantFuture];
  v30 = 0;
  v122 = v16;
  v123 = v18;
  if (!v12 || !v29)
  {
    v35 = v25;
    v31 = 0;
    v37 = 0x277CCA000;
    v32 = self;
    goto LABEL_56;
  }

  v118 = v11;
  v31 = 0;
  v30 = 0;
  v32 = self;
  while (1)
  {
    v33 = v31;
    v34 = objc_autoreleasePoolPush();
    v143 = v25;
    v31 = [(RTHealthKitManager *)v32 _getHealthKitDataWithStartDate:v29 limit:1 includeLocations:0 includeOdometerReadings:v131 odometerSamplingIntervalComponents:v134 error:&v143];
    v35 = v143;

    if (v17 && v35)
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        NSStringFromSelector(aSelector);
        v55 = v54 = v32;
        *buf = 138412802;
        v148 = v53;
        v149 = 2112;
        v150 = v55;
        v151 = 2112;
        v152 = v35;
        _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);

        v32 = v54;
      }

      [v17 addObject:v35];
      v25 = 0;
      goto LABEL_41;
    }

    v37 = 0x277CCA000uLL;
    if (!v31 || ![v31 count])
    {
      break;
    }

    v38 = v34;
    v39 = v32;
    v40 = v17;
    v142 = v29;
    v141 = v130;
    [(RTHealthKitManager *)v39 _updateHealthKitStartDatesUsingData:v31 currentStartDate:&v142 nextStartDate:&v141];
    v41 = v142;

    v125 = v141;
    v42 = MEMORY[0x277CCACA8];
    v43 = v39;
    v127 = v41;
    v44 = [objc_opt_class() stringFromDate:v41 dateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
    v45 = [v42 stringWithFormat:@"Workouts-StartDate-%@", v44];
    v46 = [v129 URLByAppendingPathComponent:v45];

    v30 = v46;
    v47 = [v46 path];
    LOBYTE(v44) = [v123 fileExistsAtPath:v47 isDirectory:0];

    if (v44)
    {
      v17 = v40;
LABEL_21:
      v32 = v43;
      v34 = v38;
      goto LABEL_22;
    }

    v140 = v35;
    [v123 createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:&v140];
    v50 = v140;

    v17 = v40;
    if (!v40)
    {
      v35 = v50;
      goto LABEL_21;
    }

    v32 = v43;
    v34 = v38;
    if (v50)
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v35 = 0;
LABEL_22:
    v48 = v35;
    v139 = v35;
    [(RTHealthKitManager *)v32 _dumpHealthKitMetaData:v31 dir:v30 stats:v124 error:&v139];
    v35 = v139;

    if (v17 && v35)
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v148 = v57;
        v149 = 2112;
        v150 = v58;
        v151 = 2112;
        v152 = v35;
        _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
      }

      [v17 addObject:v35];
      v25 = 0;
      goto LABEL_36;
    }

    if (!v118)
    {
      goto LABEL_40;
    }

    v138 = v35;
    [(RTHealthKitManager *)v32 _dumpWorkoutLocationsUsingData:v31 dir:v30 stats:v124 error:&v138];
    v50 = v138;

    if (!v17 || !v50)
    {
      v35 = v50;
LABEL_40:
      v25 = v35;
      v29 = v125;
      v35 = v127;
      v130 = v29;
      goto LABEL_41;
    }

    v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
LABEL_43:
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v148 = v60;
      v149 = 2112;
      v150 = v61;
      v151 = 2112;
      v152 = v50;
      _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorContinueAndClearError, error, %@", buf, 0x20u);
    }

LABEL_35:

    [v17 addObject:v50];
    v25 = 0;
    v35 = v50;
LABEL_36:
    v29 = v127;
    v130 = v125;
LABEL_41:

    objc_autoreleasePoolPop(v34);
    if (!v29)
    {
      v35 = v25;
      v37 = 0x277CCA000;
      goto LABEL_56;
    }
  }

  objc_autoreleasePoolPop(v34);
LABEL_56:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v66 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      v132 = NSStringFromClass(v67);
      v128 = NSStringFromSelector(aSelector);
      v126 = [v124 objectForKeyedSubscript:@"Workout"];
      v113 = [v126 integerValue];
      v119 = [v124 objectForKeyedSubscript:@"WorkoutRoute"];
      v112 = [v119 integerValue];
      v115 = [v124 objectForKeyedSubscript:@"WorkoutRouteLocations"];
      v110 = [v115 integerValue];
      v114 = [v124 objectForKeyedSubscript:@"TotalWorkoutRouteLocations"];
      v109 = [v114 integerValue];
      v111 = [v124 objectForKeyedSubscript:@"Odometer"];
      v68 = v32;
      v69 = [v111 integerValue];
      v70 = [v124 objectForKeyedSubscript:@"TotalOdometer"];
      v71 = [v70 integerValue];
      *buf = 138414082;
      v148 = v132;
      v149 = 2112;
      v150 = v128;
      v151 = 2048;
      v152 = v113;
      v153 = 2048;
      v154 = v112;
      v155 = 2048;
      v156 = v110;
      v157 = 2048;
      v158 = v109;
      v159 = 2048;
      v160 = v69;
      v32 = v68;
      v161 = 2048;
      v162 = v71;
      _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_INFO, "%@, %@, For running or cycling, workouts count, %lu, workout routes count, %lu, workout route locations count, %lu, total workout route locations count, %lu, odometer readings count, %lu, total odometer readings count, %lu", buf, 0x52u);

      v37 = 0x277CCA000uLL;
    }
  }

  if (a9)
  {
    v72 = [v129 URLByAppendingPathComponent:@"1_Clusters"];
    v137 = v35;
    [(RTHealthKitManager *)v32 _dumpWorkoutClusterAtDir:v72 stats:v124 error:&v137];
    v73 = v137;

    if (v17 && v73)
    {
      v74 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v106 = objc_opt_class();
        v107 = NSStringFromClass(v106);
        v108 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v148 = v107;
        v149 = 2112;
        v150 = v108;
        v151 = 2112;
        v152 = v73;
        _os_log_error_impl(&dword_2304B3000, v74, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
      }

      [v17 addObject:v73];
      v35 = 0;
    }

    else
    {
      v35 = v73;
    }
  }

  v75 = [v129 URLByAppendingPathComponent:@"2_Summary.json"];
  v136 = v35;
  [(RTHealthKitManager *)v32 _writeToJSONAtURL:v75 data:v124 error:&v136];
  v76 = v136;

  if (v17 && v76)
  {
    v77 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v97 = objc_opt_class();
      v98 = NSStringFromClass(v97);
      v99 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v148 = v98;
      v149 = 2112;
      v150 = v99;
      v151 = 2112;
      v152 = v76;
      _os_log_error_impl(&dword_2304B3000, v77, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
    }

    [v17 addObject:v76];
    v76 = 0;
  }

  v78 = [*(v37 + 3240) stringWithFormat:@"%@.tar.gz", v121];
  v79 = [v122 URLByAppendingPathComponent:v78];

  v80 = [[RTArchiver alloc] initWithOutputURL:v79 compress:1];
  v133 = v80;
  if (v80)
  {
    v81 = v80;
    [(RTArchiver *)v80 addDirectoryToArchive:v129];
    [(RTArchiver *)v81 closeArchive];
    v82 = v79;
    *v116 = v79;
    v83 = a10;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v84 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        v85 = [v79 absoluteString];
        *buf = 138412290;
        v148 = v85;
        _os_log_impl(&dword_2304B3000, v84, OS_LOG_TYPE_INFO, "Archive created at, %@", buf, 0xCu);

        v83 = a10;
      }
    }

    v135 = v76;
    [v123 removeItemAtURL:v129 error:&v135];
    v86 = v135;

    if (v17 && v86)
    {
      v87 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v100 = objc_opt_class();
        v101 = NSStringFromClass(v100);
        v102 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v148 = v101;
        v149 = 2112;
        v150 = v102;
        v151 = 2112;
        v152 = v86;
        _os_log_error_impl(&dword_2304B3000, v87, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);

        v83 = a10;
      }

      [v17 addObject:v86];
      v86 = 0;
    }

    if ([v17 count])
    {
      if (v83)
      {
        _RTSafeArray();
        v89 = v88 = v83;
        *v88 = _RTMultiErrorCreate();
      }

      goto LABEL_89;
    }

    v65 = 1;
  }

  else
  {
    v90 = MEMORY[0x277CCA9B8];
    v91 = *MEMORY[0x277D01448];
    v145 = *MEMORY[0x277CCA450];
    v92 = [*(v37 + 3240) stringWithFormat:@"error while creating archive at destination url, %@", v79];
    v146 = v92;
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    v86 = [v90 errorWithDomain:v91 code:7 userInfo:v93];

    v94 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v148 = v86;
      _os_log_error_impl(&dword_2304B3000, v94, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
    }

    if (a10)
    {
      v95 = v86;
      v65 = 0;
      *a10 = v86;
    }

    else
    {
LABEL_89:
      v65 = 0;
    }
  }

  v16 = v122;
LABEL_92:

  return v65;
}

- (void)_updateHealthKitStartDatesUsingData:(id)a3 currentStartDate:(id *)a4 nextStartDate:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *a4 = [MEMORY[0x277CBEAA8] distantFuture];
  *a5 = [MEMORY[0x277CBEAA8] distantPast];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * v12) objectForKeyedSubscript:{@"Workout", v23}];
        v14 = [v13 startDate];

        if (v14)
        {
          v15 = *a5;
          v16 = [v13 startDate];
          v17 = [v15 compare:v16];

          if (v17 == -1)
          {
            *a5 = [v13 startDate];
          }

          v18 = *a4;
          v19 = [v13 startDate];
          v20 = [v18 compare:v19];

          if (v20 == 1)
          {
            *a4 = [v13 startDate];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v21 = *a5;
  v22 = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(v21) = [v21 isEqualToDate:v22];

  if ((v21 & 1) == 0)
  {
    *a5 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*a5 sinceDate:0.001];
  }
}

- (id)_convertHealthKitDataToJSONCompatibleType:(id)a3 stats:(id)a4
{
  v233 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v166 = v6;
    v177 = objc_opt_new();
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v167 = v5;
    obj = v5;
    v178 = [obj countByEnumeratingWithState:&v224 objects:v232 count:16];
    if (v178)
    {
      v186 = 0;
      v182 = 0;
      v202 = 0;
      v198 = 0;
      v199 = 0;
      v179 = 0;
      v173 = *MEMORY[0x277CCE0B8];
      v172 = *MEMORY[0x277CCE0C0];
      v170 = *MEMORY[0x277CCE098];
      v171 = *MEMORY[0x277CCE0C8];
      v168 = *MEMORY[0x277CCE0A8];
      v169 = *MEMORY[0x277CCE0A0];
      v8 = @"WorkoutRoute";
      v9 = @"WorkoutRouteLocations";
      v175 = *MEMORY[0x277CCE0B0];
      v176 = *v225;
      do
      {
        v10 = 0;
        do
        {
          if (*v225 != v176)
          {
            v11 = v10;
            objc_enumerationMutation(obj);
            v10 = v11;
          }

          v181 = v10;
          v12 = *(*(&v224 + 1) + 8 * v10);
          v180 = objc_autoreleasePoolPush();
          v13 = objc_opt_new();
          v183 = v12;
          v14 = [v12 objectForKeyedSubscript:@"Workout"];
          v184 = v13;
          v185 = v14;
          if (v14)
          {
            v15 = v14;
            v16 = [v14 UUID];
            v17 = [v16 UUIDString];
            [v13 setObject:v17 forKeyedSubscript:@"UUID"];

            v18 = [v15 device];
            v19 = [v18 name];
            [v13 setObject:v19 forKeyedSubscript:@"Device"];

            v20 = [v15 sourceRevision];

            if (v20)
            {
              v21 = [v15 sourceRevision];
              v22 = [v21 source];
              v23 = [v22 name];
              [v13 setObject:v23 forKeyedSubscript:@"SourceName"];

              v24 = [v185 sourceRevision];
              v25 = [v24 source];
              v26 = [v25 bundleIdentifier];
              [v13 setObject:v26 forKeyedSubscript:@"SourceBundleIdentifier"];

              v27 = [v185 sourceRevision];
              v28 = [v27 version];
              [v13 setObject:v28 forKeyedSubscript:@"Version"];

              v29 = [v185 sourceRevision];
              v30 = [v29 productType];
              [v13 setObject:v30 forKeyedSubscript:@"ProductType"];

              v31 = MEMORY[0x277CCACA8];
              v32 = [v185 sourceRevision];
              v33 = v32;
              if (v32)
              {
                [v32 operatingSystemVersion];
                v34 = v221;
              }

              else
              {
                v34 = 0;
                v222 = 0;
                v221 = 0;
                v223 = 0;
              }

              v35 = [v185 sourceRevision];
              v36 = v35;
              if (v35)
              {
                [v35 operatingSystemVersion];
                v37 = v219;
              }

              else
              {
                v37 = 0;
                v219 = 0;
                v218 = 0;
                v220 = 0;
              }

              v38 = [v185 sourceRevision];
              v39 = v38;
              if (v38)
              {
                [v38 operatingSystemVersion];
                v40 = v217;
              }

              else
              {
                v40 = 0;
                v215 = 0;
                v216 = 0;
                v217 = 0;
              }

              v41 = [v31 stringWithFormat:@"%lu.%lu.%lu", v34, v37, v40];
              [v13 setObject:v41 forKeyedSubscript:@"OperatingSystemVersion"];

              v15 = v185;
            }

            v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "workoutActivityType")}];
            [v13 setObject:v42 forKeyedSubscript:@"WorkoutEnum"];

            v43 = [objc_opt_class() stringFromWorkoutActivityType:{objc_msgSend(v15, "workoutActivityType")}];
            [v13 setObject:v43 forKeyedSubscript:@"WorkoutType"];

            v44 = objc_opt_class();
            v45 = [v15 startDate];
            v46 = [v44 stringFromDate:v45 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
            [v13 setObject:v46 forKeyedSubscript:@"StartDate"];

            v47 = objc_opt_class();
            v48 = [v185 endDate];
            v49 = [v47 stringFromDate:v48 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
            [v13 setObject:v49 forKeyedSubscript:@"EndDate"];

            v50 = MEMORY[0x277CCABB0];
            [v185 duration];
            v51 = [v50 numberWithDouble:?];
            [v13 setObject:v51 forKeyedSubscript:@"TotalDuration"];

            v52 = MEMORY[0x277CCABB0];
            v53 = [v185 totalDistance];
            v54 = [MEMORY[0x277CCDAB0] meterUnit];
            [v53 doubleValueForUnit:v54];
            v55 = [v52 numberWithDouble:?];
            [v13 setObject:v55 forKeyedSubscript:@"TotalDistance"];

            v56 = MEMORY[0x277CCABB0];
            v57 = [v185 totalEnergyBurned];
            v58 = [MEMORY[0x277CCDAB0] largeCalorieUnit];
            [v57 doubleValueForUnit:v58];
            v59 = [v56 numberWithDouble:?];
            [v13 setObject:v59 forKeyedSubscript:@"TotalEnergyBurned"];

            v60 = MEMORY[0x277CCABB0];
            v61 = [v185 totalFlightsClimbed];
            v62 = [MEMORY[0x277CCDAB0] countUnit];
            [v61 doubleValueForUnit:v62];
            v63 = [v60 numberWithDouble:?];
            [v13 setObject:v63 forKeyedSubscript:@"TotalFlightsClimbed"];

            v64 = v185;
            if ([(RTHealthKitManager *)self _doesWorkoutHaveSubsetRoute:v185])
            {
              v65 = objc_opt_class();
              v66 = [v185 metadata];
              v67 = [v66 objectForKeyedSubscript:v173];
              v68 = [v65 stringFromDate:v67 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
              [v13 setObject:v68 forKeyedSubscript:v173];

              v69 = [v185 metadata];
              v70 = [v69 objectForKeyedSubscript:v172];
              [v13 setObject:v70 forKeyedSubscript:v172];

              v71 = [v185 metadata];
              v72 = [v71 objectForKeyedSubscript:v171];
              [v13 setObject:v72 forKeyedSubscript:v171];

              v73 = objc_opt_class();
              v74 = [v185 metadata];
              v75 = [v74 objectForKeyedSubscript:v170];
              v76 = [v73 stringFromDate:v75 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
              [v13 setObject:v76 forKeyedSubscript:v170];

              v77 = [v185 metadata];
              v78 = [v77 objectForKeyedSubscript:v169];
              [v13 setObject:v78 forKeyedSubscript:v169];

              v79 = [v185 metadata];
              v80 = [v79 objectForKeyedSubscript:v168];
              v64 = v185;
              [v13 setObject:v80 forKeyedSubscript:v168];
            }

            ++v179;
            v81 = [v64 metadata];
            v82 = [v81 objectForKeyedSubscript:v175];

            if (v82)
            {
              v83 = [v64 metadata];
              v84 = [v83 objectForKeyedSubscript:v175];
              [v13 setObject:v84 forKeyedSubscript:v175];
            }

            v9 = @"WorkoutRouteLocations";
          }

          v85 = objc_opt_new();
          v211 = 0u;
          v212 = 0u;
          v213 = 0u;
          v214 = 0u;
          v187 = [v183 objectForKeyedSubscript:@"WorkoutRoutes"];
          v191 = v85;
          v192 = [v187 countByEnumeratingWithState:&v211 objects:v231 count:16];
          if (v192)
          {
            v188 = *v212;
            do
            {
              for (i = 0; i != v192; ++i)
              {
                if (*v212 != v188)
                {
                  objc_enumerationMutation(v187);
                }

                v87 = *(*(&v211 + 1) + 8 * i);
                v88 = objc_autoreleasePoolPush();
                v89 = objc_opt_new();
                v90 = [v87 objectForKeyedSubscript:v8];

                context = v89;
                if (v90)
                {
                  ++v198;
                  v91 = v8;
                  v92 = [v87 objectForKeyedSubscript:v8];
                  [v92 UUID];
                  v94 = v93 = v9;
                  v95 = [v94 UUIDString];
                  [v89 setObject:v95 forKeyedSubscript:@"UUID"];

                  v9 = v93;
                }

                else
                {
                  v91 = v8;
                }

                v96 = [v87 objectForKeyedSubscript:v9];

                if (v96)
                {
                  v194 = v88;
                  v196 = i;
                  v97 = [v87 objectForKeyedSubscript:v9];
                  v98 = objc_opt_new();
                  v99 = [v97 count];
                  v100 = v199;
                  if (v99)
                  {
                    v100 = v199 + 1;
                  }

                  v199 = v100;
                  v207 = 0u;
                  v208 = 0u;
                  v209 = 0u;
                  v210 = 0u;
                  v101 = v97;
                  v102 = [v101 countByEnumeratingWithState:&v207 objects:v230 count:16];
                  if (v102)
                  {
                    v103 = v102;
                    v104 = *v208;
                    do
                    {
                      for (j = 0; j != v103; ++j)
                      {
                        if (*v208 != v104)
                        {
                          objc_enumerationMutation(v101);
                        }

                        v106 = *(*(&v207 + 1) + 8 * j);
                        v107 = objc_autoreleasePoolPush();
                        v108 = [v106 jsonObject];
                        v109 = [v108 mutableCopy];

                        v110 = MEMORY[0x277CCABB0];
                        v111 = [v106 timestamp];
                        [v111 timeIntervalSince1970];
                        v112 = [v110 numberWithDouble:?];
                        [v109 setObject:v112 forKeyedSubscript:@"timestamp"];

                        [v98 addObject:v109];
                        objc_autoreleasePoolPop(v107);
                      }

                      v202 += v103;
                      v103 = [v101 countByEnumeratingWithState:&v207 objects:v230 count:16];
                    }

                    while (v103);
                  }

                  v113 = context;
                  [context setObject:v98 forKeyedSubscript:@"Locations"];
                  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v98, "count")}];
                  [context setObject:v114 forKeyedSubscript:@"LocationsCount"];

                  v8 = @"WorkoutRoute";
                  v9 = @"WorkoutRouteLocations";
                  v85 = v191;
                  v88 = v194;
                  i = v196;
                }

                else
                {
                  v113 = v89;
                  v8 = v91;
                  v85 = v191;
                }

                if ([v113 count])
                {
                  [v85 addObject:v113];
                }

                objc_autoreleasePoolPop(v88);
              }

              v192 = [v187 countByEnumeratingWithState:&v211 objects:v231 count:16];
            }

            while (v192);
          }

          if ([v85 count])
          {
            [v184 setObject:v85 forKeyedSubscript:@"WorkoutRoutes"];
          }

          v115 = objc_opt_new();
          v116 = [v183 objectForKeyedSubscript:@"Odometer"];

          v117 = v182;
          if (v116)
          {
            v117 = v182 + 1;
          }

          v182 = v117;
          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          v189 = [v183 objectForKeyedSubscript:@"Odometer"];
          v197 = [v189 countByEnumeratingWithState:&v203 objects:v229 count:16];
          if (v197)
          {
            v193 = *v204;
            v195 = v115;
            do
            {
              for (k = 0; k != v197; ++k)
              {
                if (*v204 != v193)
                {
                  objc_enumerationMutation(v189);
                }

                v119 = *(*(&v203 + 1) + 8 * k);
                contexta = objc_autoreleasePoolPush();
                v120 = objc_opt_new();
                v121 = MEMORY[0x277CCABB0];
                v122 = [v119 startDate];
                [v122 timeIntervalSince1970];
                v123 = [v121 numberWithDouble:?];
                [v120 setObject:v123 forKeyedSubscript:@"StartDate"];

                v124 = MEMORY[0x277CCABB0];
                v125 = [v119 endDate];
                [v125 timeIntervalSince1970];
                v126 = [v124 numberWithDouble:?];
                [v120 setObject:v126 forKeyedSubscript:@"EndDate"];

                v127 = objc_opt_class();
                v128 = [v119 startDate];
                v129 = [v127 stringFromDate:v128 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
                [v120 setObject:v129 forKeyedSubscript:@"StartDate"];

                v130 = objc_opt_class();
                v131 = [v119 endDate];
                v132 = [v130 stringFromDate:v131 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
                [v120 setObject:v132 forKeyedSubscript:@"EndDate"];

                v133 = MEMORY[0x277CCABB0];
                v134 = [v119 sumQuantity];
                v135 = [MEMORY[0x277CCDAB0] meterUnit];
                [v134 doubleValueForUnit:v135];
                v136 = [v133 numberWithDouble:?];
                [v120 setObject:v136 forKeyedSubscript:@"SumQuantity"];

                v115 = v195;
                [v195 addObject:v120];

                objc_autoreleasePoolPop(contexta);
              }

              v186 += v197;
              v197 = [v189 countByEnumeratingWithState:&v203 objects:v229 count:16];
            }

            while (v197);
          }

          if ([v115 count])
          {
            [v184 setObject:v115 forKeyedSubscript:@"Odometer"];
            v137 = MEMORY[0x277CCABB0];
            v138 = [v183 objectForKeyedSubscript:@"Odometer"];
            v139 = [v137 numberWithUnsignedInteger:{objc_msgSend(v138, "count")}];
            [v184 setObject:v139 forKeyedSubscript:@"OdometerCount"];
          }

          [v177 addObject:v184];

          objc_autoreleasePoolPop(v180);
          v10 = v181 + 1;
          v8 = @"WorkoutRoute";
          v9 = @"WorkoutRouteLocations";
        }

        while (v181 + 1 != v178);
        v178 = [obj countByEnumeratingWithState:&v224 objects:v232 count:16];
      }

      while (v178);
    }

    else
    {
      v186 = 0;
      v182 = 0;
      v202 = 0;
      v198 = 0;
      v199 = 0;
      v179 = 0;
    }

    v7 = v166;
    if (v166)
    {
      v141 = [v166 objectForKeyedSubscript:@"Workout"];

      v5 = v167;
      if (v141)
      {
        v142 = MEMORY[0x277CCABB0];
        v143 = [v166 objectForKeyedSubscript:@"Workout"];
        v144 = [v142 numberWithInteger:{objc_msgSend(v143, "integerValue") + v179}];
        [v166 setObject:v144 forKeyedSubscript:@"Workout"];
      }

      v145 = [v166 objectForKeyedSubscript:@"WorkoutRoute"];

      if (v145)
      {
        v146 = MEMORY[0x277CCABB0];
        v147 = [v166 objectForKeyedSubscript:@"WorkoutRoute"];
        v148 = [v146 numberWithInteger:{objc_msgSend(v147, "integerValue") + v198}];
        [v166 setObject:v148 forKeyedSubscript:@"WorkoutRoute"];
      }

      v149 = [v166 objectForKeyedSubscript:@"WorkoutRouteLocations"];

      if (v149)
      {
        v150 = MEMORY[0x277CCABB0];
        v151 = [v166 objectForKeyedSubscript:@"WorkoutRouteLocations"];
        v152 = [v150 numberWithInteger:{objc_msgSend(v151, "integerValue") + v199}];
        [v166 setObject:v152 forKeyedSubscript:@"WorkoutRouteLocations"];
      }

      v153 = [v166 objectForKeyedSubscript:@"Odometer"];

      if (v153)
      {
        v154 = MEMORY[0x277CCABB0];
        v155 = [v166 objectForKeyedSubscript:@"Odometer"];
        v156 = [v154 numberWithInteger:{objc_msgSend(v155, "integerValue") + v182}];
        [v166 setObject:v156 forKeyedSubscript:@"Odometer"];
      }

      v157 = [v166 objectForKeyedSubscript:@"TotalWorkoutRouteLocations"];

      if (v157)
      {
        v158 = MEMORY[0x277CCABB0];
        v159 = [v166 objectForKeyedSubscript:@"TotalWorkoutRouteLocations"];
        v160 = [v158 numberWithInteger:{objc_msgSend(v159, "integerValue") + v202}];
        [v166 setObject:v160 forKeyedSubscript:@"TotalWorkoutRouteLocations"];
      }

      v161 = [v166 objectForKeyedSubscript:@"TotalOdometer"];

      if (v161)
      {
        v162 = MEMORY[0x277CCABB0];
        v163 = [v166 objectForKeyedSubscript:@"TotalOdometer"];
        v164 = [v162 numberWithInteger:{objc_msgSend(v163, "integerValue") + v186}];
        [v166 setObject:v164 forKeyedSubscript:@"TotalOdometer"];
      }
    }

    else
    {
      v5 = v167;
    }
  }

  else
  {
    v140 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v140, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    v177 = [MEMORY[0x277CBEA60] array];
  }

  return v177;
}

- (BOOL)_dumpHealthKitMetaData:(id)a3 dir:(id)a4 stats:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v11)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (a6)
    {
      v30 = @"data";
LABEL_15:
      _RTErrorInvalidParameterCreate(v30);
      *a6 = v26 = 0;
      goto LABEL_23;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_23;
  }

  if (!v12)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: srcDir", buf, 2u);
    }

    if (a6)
    {
      v30 = @"srcDir";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v40 = v13;
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v12 path];
  v17 = [v15 fileExistsAtPath:v16 isDirectory:0];

  v18 = 0;
  if ((v17 & 1) == 0 && ([MEMORY[0x277CCAA00] defaultManager], v32 = objc_claimAutoreleasedReturnValue(), v44 = 0, objc_msgSend(v32, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v12, 1, 0, &v44), v18 = v44, v32, a6) && v18)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = v37;
      v47 = 2112;
      v48 = v38;
      v49 = 2112;
      v50 = v18;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v34 = v18;
    v26 = 0;
    *a6 = v18;
    v27 = v18;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    [(RTHealthKitManager *)self _updateHealthKitStartDatesUsingData:v11 currentStartDate:&v43 nextStartDate:&v42];
    v19 = v43;
    v39 = v42;
    v20 = MEMORY[0x277CCACA8];
    v21 = [v11 count];
    v22 = [objc_opt_class() stringFromDate:v19 dateFormat:@"yyyy-MM-dd-HH-mm-ss-SSS"];
    v23 = [v20 stringWithFormat:@"Metadata-count-%lu-StartDate-%@.json", v21, v22];

    v24 = [v12 URLByAppendingPathComponent:v23];
    v25 = [(RTHealthKitManager *)self _convertHealthKitDataToJSONCompatibleType:v11 stats:v40];
    v41 = v18;
    v26 = [(RTHealthKitManager *)self _writeToJSONAtURL:v24 data:v25 error:&v41];
    v27 = v41;

    if (a6)
    {
      v28 = v27;
      *a6 = v27;
    }
  }

  v14 = v40;
LABEL_23:

  return v26;
}

- (BOOL)_dumpWorkoutLocationsUsingData:(id)a3 dir:(id)a4 stats:(id)a5 error:(id *)a6
{
  v159[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v91 = v8;
  v92 = a5;
  v102 = v9;
  if (!v8)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (a6)
    {
      v18 = _RTErrorInvalidParameterCreate(@"data");
LABEL_58:
      v16 = 0;
      *a6 = v18;
      goto LABEL_74;
    }

LABEL_59:
    v16 = 0;
    goto LABEL_74;
  }

  if (!v9)
  {
    v75 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v75, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: srcDir", buf, 2u);
    }

    if (a6)
    {
      v18 = _RTErrorInvalidParameterCreate(@"srcDir");
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy__170;
  v146 = __Block_byref_object_dispose__170;
  v147 = objc_opt_new();
  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy__170;
  v140 = __Block_byref_object_dispose__170;
  v141 = 0;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v9 path];
  v12 = [v10 fileExistsAtPath:v11 isDirectory:0];

  if ((v12 & 1) == 0 && ([MEMORY[0x277CCAA00] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), v14 = (v137 + 5), obj = v137[5], objc_msgSend(v13, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v102, 1, 0, &obj), objc_storeStrong(v14, obj), v13, a6) && v137[5])
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v89 = NSStringFromSelector(a2);
      v90 = v137[5];
      *buf = 138412802;
      *&buf[4] = v88;
      v149 = 2112;
      v150 = v89;
      v151 = 2112;
      v152 = v90;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v16 = 0;
    *a6 = v137[5];
  }

  else
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v94 = v91;
    v19 = [v94 countByEnumeratingWithState:&v131 objects:v158 count:16];
    if (v19)
    {
      v107 = 0;
      v108 = 0;
      v95 = *v132;
      v99 = *MEMORY[0x277D01448];
      v100 = *MEMORY[0x277CCA450];
      do
      {
        v98 = 0;
        v96 = v19;
        do
        {
          if (*v132 != v95)
          {
            objc_enumerationMutation(v94);
          }

          v20 = *(*(&v131 + 1) + 8 * v98);
          context = objc_autoreleasePoolPush();
          v21 = [v20 objectForKeyedSubscript:@"Workout"];
          if (v21)
          {
            v22 = [v20 objectForKeyedSubscript:@"WorkoutRoutes"];
            v23 = v22 == 0;

            if (v23)
            {
              v24 = [v20 objectForKeyedSubscript:@"Workout"];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = objc_opt_class();
                  v27 = NSStringFromClass(v26);
                  v28 = NSStringFromSelector(a2);
                  v29 = [v24 UUID];
                  v30 = [v29 UUIDString];
                  *buf = 138412802;
                  *&buf[4] = v27;
                  v149 = 2112;
                  v150 = v28;
                  v151 = 2112;
                  v152 = v30;
                  _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, No workoutRoutes found for Workout %@", buf, 0x20u);
                }
              }
            }
          }

          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v31 = [v20 objectForKeyedSubscript:@"WorkoutRoutes"];
          v32 = [v31 countByEnumeratingWithState:&v127 objects:v157 count:16];
          if (v32)
          {
            v105 = *v128;
            v101 = v31;
            do
            {
              v106 = v32;
              for (i = 0; i != v106; ++i)
              {
                if (*v128 != v105)
                {
                  objc_enumerationMutation(v101);
                }

                v34 = *(*(&v127 + 1) + 8 * i);
                v35 = objc_autoreleasePoolPush();
                v36 = [v34 objectForKeyedSubscript:@"WorkoutRoute"];

                if (v36)
                {
                  v37 = [v34 objectForKeyedSubscript:@"WorkoutRoute"];
                  v123 = 0;
                  v124 = &v123;
                  v125 = 0x2020000000;
                  v126 = 0;
                  v117 = 0;
                  v118 = &v117;
                  v119 = 0x3032000000;
                  v120 = __Block_byref_object_copy__170;
                  v121 = __Block_byref_object_dispose__170;
                  v38 = MEMORY[0x277CCACA8];
                  v109 = v37;
                  v39 = [v37 UUID];
                  v40 = [v39 UUIDString];
                  v41 = [v38 stringWithFormat:@"Locations-WorkoutRouteID-%@.csv", v40];
                  v122 = [v102 URLByAppendingPathComponent:v41];

                  v42 = dispatch_semaphore_create(0);
                  v110[0] = MEMORY[0x277D85DD0];
                  v110[1] = 3221225472;
                  v110[2] = __69__RTHealthKitManager__dumpWorkoutLocationsUsingData_dir_stats_error___block_invoke;
                  v110[3] = &unk_2788D19F0;
                  v112 = &v142;
                  v110[4] = self;
                  v116 = a2;
                  v43 = v42;
                  v111 = v43;
                  v113 = &v117;
                  v114 = &v136;
                  v115 = &v123;
                  [(RTHealthKitManager *)self _fetchWorkoutRouteLocationsUsingWorkoutRoute:v109 batchSize:0 fetchOnlyFirstFew:0 handler:v110];
                  v44 = v43;
                  v45 = [MEMORY[0x277CBEAA8] now];
                  v46 = dispatch_time(0, 3600000000000);
                  if (dispatch_semaphore_wait(v44, v46))
                  {
                    v47 = [MEMORY[0x277CBEAA8] now];
                    [v47 timeIntervalSinceDate:v45];
                    v49 = v48;
                    v50 = objc_opt_new();
                    v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
                    v52 = [MEMORY[0x277CCACC8] callStackSymbols];
                    v53 = [v52 filteredArrayUsingPredicate:v51];
                    v54 = [v53 firstObject];

                    [v50 submitToCoreAnalytics:v54 type:1 duration:v49];
                    v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_2304B3000, v55, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
                    }

                    v56 = MEMORY[0x277CCA9B8];
                    v159[0] = v100;
                    *buf = @"semaphore wait timeout";
                    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v159 count:1];
                    v58 = [v56 errorWithDomain:v99 code:15 userInfo:v57];

                    if (v58)
                    {
                      v59 = v58;
                    }
                  }

                  else
                  {
                    v58 = 0;
                  }

                  v60 = v58;
                  v61 = v60;
                  if (v143[5] && v60)
                  {
                    v62 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      v72 = objc_opt_class();
                      v73 = NSStringFromClass(v72);
                      v74 = NSStringFromSelector(a2);
                      *buf = 138412802;
                      *&buf[4] = v73;
                      v149 = 2112;
                      v150 = v74;
                      v151 = 2112;
                      v152 = v61;
                      _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
                    }

                    [v143[5] addObject:v61];
                    v61 = 0;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v63 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                    {
                      v64 = objc_opt_class();
                      v65 = NSStringFromClass(v64);
                      v66 = NSStringFromSelector(a2);
                      v67 = v124[3];
                      v68 = [v118[5] relativeString];
                      +[RTRuntime footprint];
                      *buf = 138413314;
                      *&buf[4] = v65;
                      v149 = 2112;
                      v150 = v66;
                      v151 = 2048;
                      v152 = v67;
                      v153 = 2112;
                      v154 = v68;
                      v155 = 2048;
                      v156 = v69;
                      _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "%@, %@, Saved CSV of %lu locations, %@ file, current footprint, %.2f MB", buf, 0x34u);
                    }
                  }

                  v70 = v124[3];
                  v71 = v108;
                  if (v70 > 0)
                  {
                    v71 = v108 + 1;
                  }

                  v108 = v71;

                  _Block_object_dispose(&v117, 8);
                  _Block_object_dispose(&v123, 8);

                  v107 += v70 & ~(v70 >> 63);
                }

                objc_autoreleasePoolPop(v35);
              }

              v31 = v101;
              v32 = [v101 countByEnumeratingWithState:&v127 objects:v157 count:16];
            }

            while (v32);
          }

          objc_autoreleasePoolPop(context);
          ++v98;
        }

        while (v98 != v96);
        v19 = [v94 countByEnumeratingWithState:&v131 objects:v158 count:16];
      }

      while (v19);
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    if (v92)
    {
      v76 = [v92 objectForKeyedSubscript:@"WorkoutRouteLocations"];

      if (v76)
      {
        v77 = MEMORY[0x277CCABB0];
        v78 = [v92 objectForKeyedSubscript:@"WorkoutRouteLocations"];
        v79 = [v77 numberWithInteger:{objc_msgSend(v78, "integerValue") + v108}];
        [v92 setObject:v79 forKeyedSubscript:@"WorkoutRouteLocations"];
      }

      v80 = [v92 objectForKeyedSubscript:@"TotalWorkoutRouteLocations"];

      if (v80)
      {
        v81 = MEMORY[0x277CCABB0];
        v82 = [v92 objectForKeyedSubscript:@"TotalWorkoutRouteLocations"];
        v83 = [v81 numberWithInteger:{objc_msgSend(v82, "integerValue") + v107}];
        [v92 setObject:v83 forKeyedSubscript:@"TotalWorkoutRouteLocations"];
      }
    }

    if ([v143[5] count])
    {
      if (a6)
      {
        v84 = _RTSafeArray();
        *a6 = _RTMultiErrorCreate();
      }

      v16 = 0;
    }

    else
    {
      if (a6)
      {
        v85 = _RTSafeArray();
        *a6 = _RTMultiErrorCreate();
      }

      v16 = 1;
    }
  }

  _Block_object_dispose(&v136, 8);

  _Block_object_dispose(&v142, 8);
LABEL_74:

  return v16;
}

void __69__RTHealthKitManager__dumpWorkoutLocationsUsingData_dir_stats_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && (v7 = [v5 count], !v6) && v7)
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    [v8 _writeLocations:v5 csvFileURL:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 64) + 8) + 40))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(*(a1 + 80));
        v21 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412802;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:*(*(*(a1 + 64) + 8) + 40)];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;
    }

    *(*(*(a1 + 72) + 8) + 24) += [v5 count];
  }

  else
  {
    if (v6 && *(*(*(a1 + 48) + 8) + 40))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412802;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v6;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, RTAppendErrorAndClearError, error, %@", buf, 0x20u);
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
      v6 = 0;
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (BOOL)_dumpWorkoutClusterAtDir:(id)a3 stats:(id)a4 error:(id *)a5
{
  v243 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v186 = a4;
  v187 = v6;
  if (!v6)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v217 = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: srcDir", v217, 2u);
    }

    if (a5)
    {
      _RTErrorInvalidParameterCreate(@"srcDir");
      *a5 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_108;
  }

  *v217 = 0;
  v218 = v217;
  v219 = 0x3032000000;
  v220 = __Block_byref_object_copy__170;
  v221 = __Block_byref_object_dispose__170;
  v222 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = (v218 + 40);
    obj = *(v218 + 5);
    [v10 createDirectoryAtURL:v187 withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong(v11, obj);

    if (a5)
    {
      if (*(v218 + 5))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v159 = objc_opt_class();
          v160 = NSStringFromClass(v159);
          v161 = NSStringFromSelector(a2);
          v162 = *(v218 + 5);
          *v237 = 138412802;
          *&v237[4] = v160;
          *&v237[12] = 2112;
          *&v237[14] = v161;
          *&v237[22] = 2112;
          v238 = v162;
          _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v237, 0x20u);
        }

        v13 = 0;
        *a5 = *(v218 + 5);
        goto LABEL_107;
      }
    }
  }

  v183 = [v187 URLByAppendingPathComponent:@"Cluster_Snapshots"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v183 path];
  v16 = [v14 fileExistsAtPath:v15 isDirectory:0];

  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = (v218 + 40);
    v215 = *(v218 + 5);
    [v17 createDirectoryAtURL:v183 withIntermediateDirectories:1 attributes:0 error:&v215];
    objc_storeStrong(v18, v215);

    if (a5)
    {
      if (*(v218 + 5))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v163 = objc_opt_class();
          v164 = NSStringFromClass(v163);
          v165 = NSStringFromSelector(a2);
          v166 = *(v218 + 5);
          *v237 = 138412802;
          *&v237[4] = v164;
          *&v237[12] = 2112;
          *&v237[14] = v165;
          *&v237[22] = 2112;
          v238 = v166;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v237, 0x20u);
        }

        v13 = 0;
        *a5 = *(v218 + 5);
        goto LABEL_106;
      }
    }
  }

  *v237 = 0;
  *&v237[8] = v237;
  *&v237[16] = 0x3032000000;
  v238 = __Block_byref_object_copy__170;
  v239 = __Block_byref_object_dispose__170;
  v240 = 0;
  v20 = dispatch_semaphore_create(0);
  v211[0] = MEMORY[0x277D85DD0];
  v211[1] = 3221225472;
  v211[2] = __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke;
  v211[3] = &unk_2788C4490;
  v213 = v237;
  v214 = v217;
  dsema = v20;
  v212 = dsema;
  [(RTHealthKitManager *)self _fetchWorkoutClustersWithHandler:v211];
  v21 = (v218 + 40);
  v22 = *(v218 + 5);
  if (a5 && v22)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v155 = objc_opt_class();
      v156 = NSStringFromClass(v155);
      v157 = NSStringFromSelector(a2);
      v158 = *(v218 + 5);
      *v232 = 138412802;
      *&v232[4] = v156;
      *&v232[12] = 2112;
      *&v232[14] = v157;
      *&v232[22] = 2112;
      v233 = v158;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v232, 0x20u);
    }

LABEL_32:

    v40 = *(v218 + 5);
    v13 = 0;
LABEL_104:
    *a5 = v40;
    goto LABEL_105;
  }

  dsema = dsema;
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v26))
  {
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:v25];
    v29 = v28;
    v30 = objc_opt_new();
    v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
    v32 = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [v32 filteredArrayUsingPredicate:v31];
    v34 = [v33 firstObject];

    [v30 submitToCoreAnalytics:v34 type:1 duration:v29];
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *v232 = 0;
      _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v232, 2u);
    }

    v36 = MEMORY[0x277CCA9B8];
    *buf = *MEMORY[0x277CCA450];
    *v232 = @"semaphore wait timeout";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:buf count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;

      v22 = v38;
    }
  }

  objc_storeStrong(v21, v22);
  if (a5 && *(v218 + 5))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v167 = objc_opt_class();
      v168 = NSStringFromClass(v167);
      v169 = NSStringFromSelector(a2);
      v170 = *(v218 + 5);
      *v232 = 138412802;
      *&v232[4] = v168;
      *&v232[12] = 2112;
      *&v232[14] = v169;
      *&v232[22] = 2112;
      v233 = v170;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v232, 0x20u);
    }

    goto LABEL_32;
  }

  if (![*(*&v237[8] + 40) count])
  {
    v177 = 0;
    v13 = 1;
    goto LABEL_97;
  }

  v178 = objc_opt_new();
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v182 = *(*&v237[8] + 40);
  v41 = [v182 countByEnumeratingWithState:&v207 objects:v236 count:16];
  if (!v41)
  {
    v177 = 0;
    goto LABEL_83;
  }

  v177 = 0;
  v185 = *v208;
  v179 = *MEMORY[0x277D01448];
  v180 = *MEMORY[0x277CCA450];
  do
  {
    v42 = 0;
    v184 = v41;
    do
    {
      if (*v208 != v185)
      {
        objc_enumerationMutation(v182);
      }

      v189 = v42;
      v43 = *(*(&v207 + 1) + 8 * v42);
      context = objc_autoreleasePoolPush();
      v44 = objc_opt_new();
      v45 = [v43 clusterUUID];
      v46 = [v45 UUIDString];
      [v44 setObject:v46 forKeyedSubscript:@"ClusterUUID"];

      v47 = [v43 bestWorkoutUUID];
      v48 = [v47 UUIDString];
      [v44 setObject:v48 forKeyedSubscript:@"BestWorkoutUUID"];

      v49 = [v43 lastWorkoutUUID];
      v50 = [v49 UUIDString];
      [v44 setObject:v50 forKeyedSubscript:@"LastWorkoutUUID"];

      v51 = [v43 workoutRouteLabel];
      [v44 setObject:v51 forKeyedSubscript:@"Label"];

      v52 = MEMORY[0x277CCABB0];
      [v43 relevanceValue];
      v53 = [v52 numberWithDouble:?];
      [v44 setObject:v53 forKeyedSubscript:@"RelevanceScore"];

      *v232 = 0;
      *&v232[8] = v232;
      *&v232[16] = 0x3032000000;
      v233 = __Block_byref_object_copy__170;
      v234 = __Block_byref_object_dispose__170;
      v235 = 0;
      v54 = dispatch_semaphore_create(0);

      v55 = [v43 clusterUUID];
      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke_838;
      v203[3] = &unk_2788C4490;
      v205 = v232;
      v206 = v217;
      dsema = v54;
      v204 = dsema;
      [(RTHealthKitManager *)self _fetchWorkoutUUIDsForClusterUUID:v55 handler:v203];

      v56 = (v218 + 40);
      if (*(v218 + 5))
      {
        goto LABEL_47;
      }

      dsema = dsema;
      v57 = [MEMORY[0x277CBEAA8] now];
      v58 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v58))
      {
        v59 = [MEMORY[0x277CBEAA8] now];
        [v59 timeIntervalSinceDate:v57];
        v61 = v60;
        v62 = objc_opt_new();
        v63 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
        v64 = [MEMORY[0x277CCACC8] callStackSymbols];
        v65 = [v64 filteredArrayUsingPredicate:v63];
        v66 = [v65 firstObject];

        [v62 submitToCoreAnalytics:v66 type:1 duration:v61];
        v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v67, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v68 = MEMORY[0x277CCA9B8];
        *v242 = v180;
        *buf = @"semaphore wait timeout";
        v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v242 count:1];
        v70 = [v68 errorWithDomain:v179 code:15 userInfo:v69];

        if (v70)
        {
          v71 = v70;
        }
      }

      else
      {
        v70 = 0;
      }

      objc_storeStrong(v56, v70);
      if (*(v218 + 5))
      {
LABEL_47:
        v72 = 0;
        goto LABEL_48;
      }

      v73 = objc_opt_new();
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v74 = *(*&v232[8] + 40);
      v75 = [v74 countByEnumeratingWithState:&v199 objects:v231 count:16];
      if (v75)
      {
        v76 = *v200;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v200 != v76)
            {
              objc_enumerationMutation(v74);
            }

            v78 = *(*(&v199 + 1) + 8 * i);
            v79 = objc_autoreleasePoolPush();
            v80 = [v78 UUIDString];
            [v73 addObject:v80];

            objc_autoreleasePoolPop(v79);
          }

          v75 = [v74 countByEnumeratingWithState:&v199 objects:v231 count:16];
        }

        while (v75);
      }

      [v44 setObject:v73 forKeyedSubscript:@"WorkoutUUIDs"];
      v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v73, "count")}];
      [v44 setObject:v81 forKeyedSubscript:@"WorkoutUUIDsCount"];

      [v44 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalDistance"];
      [v44 setObject:&unk_28459FB40 forKeyedSubscript:@"TotalDuration"];
      if (![*(*&v232[8] + 40) count])
      {
        goto LABEL_64;
      }

      v82 = [*(*&v232[8] + 40) firstObject];
      v230 = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v230 count:1];
      v84 = (v218 + 40);
      v198 = *(v218 + 5);
      v85 = [(RTHealthKitManager *)self _getWorkoutsWithUUIDs:v83 error:&v198];
      objc_storeStrong(v84, v198);

      if (!*(v218 + 5))
      {
        if ([v85 count])
        {
          v86 = MEMORY[0x277CCABB0];
          v87 = [v85 firstObject];
          v88 = [v87 totalDistance];
          v89 = [MEMORY[0x277CCDAB0] meterUnit];
          [v88 doubleValueForUnit:v89];
          v90 = [v86 numberWithDouble:?];
          [v44 setObject:v90 forKeyedSubscript:@"TotalDistance"];

          v91 = MEMORY[0x277CCABB0];
          v92 = [v85 firstObject];
          [v92 duration];
          v93 = [v91 numberWithDouble:?];
          [v44 setObject:v93 forKeyedSubscript:@"TotalDuration"];

          v94 = [v85 firstObject];
          v95 = +[RTHealthKitManager stringFromWorkoutActivityType:](RTHealthKitManager, "stringFromWorkoutActivityType:", [v94 workoutActivityType]);
          [v44 setObject:v95 forKeyedSubscript:@"WorkoutType"];
        }

LABEL_64:
        *buf = 0;
        v225 = buf;
        v226 = 0x3032000000;
        v227 = __Block_byref_object_copy__170;
        v228 = __Block_byref_object_dispose__170;
        v229 = 0;
        v96 = dispatch_semaphore_create(0);

        v97 = [v43 clusterUUID];
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke_2;
        v194[3] = &unk_2788D1A18;
        v196 = buf;
        v197 = v217;
        dsema = v96;
        v195 = dsema;
        [(RTHealthKitManager *)self _fetchWorkoutRouteSnapshotForClusterUUID:v97 handler:v194];

        v98 = (v218 + 40);
        if (*(v218 + 5))
        {
          goto LABEL_72;
        }

        v99 = dsema;
        v176 = [MEMORY[0x277CBEAA8] now];
        v100 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v99, v100))
        {
          v175 = [MEMORY[0x277CBEAA8] now];
          [v175 timeIntervalSinceDate:v176];
          v102 = v101;
          v103 = objc_opt_new();
          v104 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
          v105 = [MEMORY[0x277CCACC8] callStackSymbols];
          v106 = [v105 filteredArrayUsingPredicate:v104];
          v107 = [v106 firstObject];

          [v103 submitToCoreAnalytics:v107 type:1 duration:v102];
          v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            *v242 = 0;
            _os_log_fault_impl(&dword_2304B3000, v108, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v242, 2u);
          }

          v109 = MEMORY[0x277CCA9B8];
          v241 = v180;
          *v242 = @"semaphore wait timeout";
          v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v242 forKeys:&v241 count:1];
          v111 = [v109 errorWithDomain:v179 code:15 userInfo:v110];

          if (v111)
          {
            v112 = v111;
          }
        }

        else
        {
          v111 = 0;
        }

        objc_storeStrong(v98, v111);
        if (*(v218 + 5))
        {
LABEL_72:
          v72 = 0;
        }

        else
        {
          if (*(v225 + 5))
          {
            v113 = MEMORY[0x277CCACA8];
            v114 = [v73 count];
            [v43 relevanceValue];
            v116 = v115;
            v117 = [v43 workoutRouteLabel];
            v118 = [v44 objectForKeyedSubscript:@"TotalDistance"];
            [v118 doubleValue];
            v120 = v119;
            v121 = [v44 objectForKeyedSubscript:@"TotalDuration"];
            v122 = [v121 integerValue];
            v123 = [v43 clusterUUID];
            v124 = [v113 stringWithFormat:@"Count-%lu-score-[%.3f]-label-%@-dist-%.3f-dur-%lu-%@.png", v114, v116, v117, v120, v122, v123];

            v125 = [v183 URLByAppendingPathComponent:v124];
            [*(v225 + 5) writeToURL:v125 atomically:1];
          }

          v126 = [*(*&v232[8] + 40) count];
          [v178 addObject:v44];
          v177 += v126;
          v72 = 1;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_74;
      }

      v72 = 0;
LABEL_74:

LABEL_48:
      _Block_object_dispose(v232, 8);

      objc_autoreleasePoolPop(context);
      if (!v72)
      {
        goto LABEL_83;
      }

      v42 = v189 + 1;
    }

    while (v189 + 1 != v184);
    v41 = [v182 countByEnumeratingWithState:&v207 objects:v236 count:16];
  }

  while (v41);
LABEL_83:

  if (a5 && *(v218 + 5))
  {
    v127 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      v171 = objc_opt_class();
      v172 = NSStringFromClass(v171);
      v173 = NSStringFromSelector(a2);
      v174 = *(v218 + 5);
      *v232 = 138412802;
      *&v232[4] = v172;
      *&v232[12] = 2112;
      *&v232[14] = v173;
      *&v232[22] = 2112;
      v233 = v174;
      _os_log_error_impl(&dword_2304B3000, v127, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v232, 0x20u);
    }

    *a5 = *(v218 + 5);
    v13 = 0;
    goto LABEL_105;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v128 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      v129 = objc_opt_class();
      v130 = NSStringFromClass(v129);
      v131 = NSStringFromSelector(a2);
      *v232 = 138412546;
      *&v232[4] = v130;
      *&v232[12] = 2112;
      *&v232[14] = v131;
      _os_log_impl(&dword_2304B3000, v128, OS_LOG_TYPE_INFO, "%@, %@, sorting the clusters", v232, 0x16u);
    }
  }

  v132 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"RelevanceScore" ascending:1];
  v223[0] = v132;
  v133 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"TotalDistance" ascending:1];
  v223[1] = v133;
  v134 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"TotalDuration" ascending:1];
  v223[2] = v134;
  v135 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"Label" ascending:1];
  v223[3] = v135;
  v136 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"BestWorkoutUUID" ascending:1];
  v223[4] = v136;
  v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v223 count:5];
  [v178 sortUsingDescriptors:v137];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v138 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
    {
      v139 = objc_opt_class();
      v140 = NSStringFromClass(v139);
      v141 = NSStringFromSelector(a2);
      *v232 = 138412546;
      *&v232[4] = v140;
      *&v232[12] = 2112;
      *&v232[14] = v141;
      _os_log_impl(&dword_2304B3000, v138, OS_LOG_TYPE_INFO, "%@, %@, ready to save data", v232, 0x16u);
    }
  }

  v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"WorkoutClusters-Count-%lu.json", objc_msgSend(*(*&v237[8] + 40), "count")];
  v143 = [v187 URLByAppendingPathComponent:v142];
  v144 = (v218 + 40);
  v193 = *(v218 + 5);
  v13 = [(RTHealthKitManager *)self _writeToJSONAtURL:v143 data:v178 error:&v193];
  objc_storeStrong(v144, v193);

LABEL_97:
  if (v186)
  {
    v145 = [v186 objectForKeyedSubscript:@"TotalClusters"];

    if (v145)
    {
      v146 = MEMORY[0x277CCABB0];
      v147 = [v186 objectForKeyedSubscript:@"TotalClusters"];
      v148 = [v147 integerValue];
      v149 = [v146 numberWithUnsignedInteger:{objc_msgSend(*(*&v237[8] + 40), "count") + v148}];
      [v186 setObject:v149 forKeyedSubscript:@"TotalClusters"];
    }

    v150 = [v186 objectForKeyedSubscript:@"TotalWorkoutsInClusters"];

    if (v150)
    {
      v151 = MEMORY[0x277CCABB0];
      v152 = [v186 objectForKeyedSubscript:@"TotalWorkoutsInClusters"];
      v153 = [v151 numberWithInteger:{objc_msgSend(v152, "integerValue") + v177}];
      [v186 setObject:v153 forKeyedSubscript:@"TotalWorkoutsInClusters"];
    }
  }

  if (a5)
  {
    v40 = *(v218 + 5);
    goto LABEL_104;
  }

LABEL_105:

  _Block_object_dispose(v237, 8);
LABEL_106:

LABEL_107:
  _Block_object_dispose(v217, 8);

LABEL_108:
  return v13;
}

void __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke_838(uint64_t a1, void *a2, void *a3)
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

void __59__RTHealthKitManager__dumpWorkoutClusterAtDir_stats_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_writeLocations:(id)a3 csvFileURL:(id)a4 error:(id *)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [v10 path];
      v13 = [v11 fileExistsAtPath:v12];

      if (v13)
      {
        v47 = v11;
        v48 = a5;
        v49 = v10;
        v46 = 0;
      }

      else
      {
        v73 = 0;
        v17 = [(RTHealthKitManager *)self _writeToFileAtURL:v10 contentString:@"latitude error:longitude, altitude, horizontalAccuracy, verticalAccuracy, course, speed, signalEnvironmentType, timestamp, \n", &v73];
        v18 = v73;
        v19 = v18;
        if (a5 && v18)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = NSStringFromSelector(a2);
            *buf = 138412802;
            v76 = v44;
            v77 = 2112;
            v78 = v45;
            v79 = 2112;
            v80 = v19;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v21 = v19;
          *a5 = v19;
          goto LABEL_31;
        }

        v46 = v18;
        v47 = v11;
        v48 = a5;
        v49 = v10;
      }

      v53 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v50 = v8;
      obj = v8;
      v55 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v55)
      {
        v52 = *v70;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v70 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v69 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            v62 = MEMORY[0x277CCACA8];
            v24 = MEMORY[0x277CCABB0];
            [v23 coordinate];
            v65 = [v24 numberWithDouble:?];
            v60 = [v65 stringValue];
            v25 = MEMORY[0x277CCABB0];
            [v23 coordinate];
            v64 = [v25 numberWithDouble:v26];
            v67 = [v64 stringValue];
            v27 = MEMORY[0x277CCABB0];
            [v23 altitude];
            v63 = [v27 numberWithDouble:?];
            v58 = [v63 stringValue];
            v28 = MEMORY[0x277CCABB0];
            [v23 horizontalAccuracy];
            v61 = [v28 numberWithDouble:?];
            v56 = [v61 stringValue];
            v29 = MEMORY[0x277CCABB0];
            [v23 verticalAccuracy];
            v59 = [v29 numberWithDouble:?];
            v30 = [v59 stringValue];
            v31 = MEMORY[0x277CCABB0];
            [v23 course];
            v57 = [v31 numberWithDouble:?];
            v32 = [v57 stringValue];
            v33 = MEMORY[0x277CCABB0];
            [v23 speed];
            v34 = [v33 numberWithDouble:?];
            v35 = [v34 stringValue];
            v36 = [v23 signalEnvironmentType];
            v37 = objc_opt_class();
            v38 = [v23 timestamp];
            v39 = [v37 stringFromDate:v38 dateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
            v40 = [v62 stringWithFormat:@"%@, %@, %@, %@, %@, %@, %@, %lu, %@ \n", v60, v67, v58, v56, v30, v32, v35, v36, v39];
            [v53 appendString:v40];

            objc_autoreleasePoolPop(context);
          }

          v55 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v55);
      }

      v68 = v46;
      v10 = v49;
      v17 = [(RTHealthKitManager *)self _writeToFileAtURL:v49 contentString:v53 error:&v68];
      v19 = v68;

      if (v48)
      {
        v41 = v19;
        *v48 = v19;
      }

      v8 = v50;
      v11 = v47;
LABEL_31:

      goto LABEL_32;
    }

    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: csvFileURL", buf, 2u);
    }

    if (a5)
    {
      v15 = @"csvFileURL";
      goto LABEL_13;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_32;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations", buf, 2u);
  }

  if (!a5)
  {
    goto LABEL_14;
  }

  v15 = @"locations";
LABEL_13:
  _RTErrorInvalidParameterCreate(v15);
  *a5 = v17 = 0;
LABEL_32:

  return v17;
}

- (BOOL)_writeToFileAtURL:(id)a3 contentString:(id)a4 error:(id *)a5
{
  v59[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [v8 path];
      v13 = [v11 fileExistsAtPath:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [v8 path];
        v15 = [v11 createFileAtPath:v14 contents:0 attributes:0];

        if ((v15 & 1) == 0)
        {
          v32 = MEMORY[0x277CCA9B8];
          v33 = *MEMORY[0x277D01448];
          v58 = *MEMORY[0x277CCA450];
          v34 = MEMORY[0x277CCACA8];
          v35 = [v8 path];
          v36 = [v34 stringWithFormat:@"Could not create file at %@", v35];
          v59[0] = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
          v20 = [v32 errorWithDomain:v33 code:0 userInfo:v37];

          if (a5)
          {
            v38 = v20;
            v28 = 0;
            *a5 = v20;
          }

          else
          {
            v28 = 0;
          }

          goto LABEL_36;
        }
      }

      v16 = MEMORY[0x277CCA9F8];
      v17 = [v8 path];
      v18 = [v16 fileHandleForWritingAtPath:v17];

      if (!v18)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277D01448];
        v56 = *MEMORY[0x277CCA450];
        v57 = @"Could not open file descriptor to write diagnostics.";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v20 = [v29 errorWithDomain:v30 code:0 userInfo:v31];

        if (!a5)
        {
          v28 = 0;
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

LABEL_34:
        v41 = v20;
        v28 = 0;
        *a5 = v20;
        goto LABEL_35;
      }

      v49 = 0;
      [v18 truncateAtOffset:objc_msgSend(v18 error:{"seekToEndOfFile"), &v49}];
      v19 = v49;
      v20 = v19;
      if (a5 && v19)
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_33:

          goto LABEL_34;
        }

        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        v51 = v23;
        v52 = 2112;
        v53 = v24;
        v54 = 2112;
        v55 = v20;
      }

      else
      {
        v39 = [v10 dataUsingEncoding:4];
        v48 = 0;
        [v18 writeData:v39 error:&v48];
        v40 = v48;

        if (a5 && v40)
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = NSStringFromSelector(a2);
            *buf = 138412802;
            v51 = v44;
            v52 = 2112;
            v53 = v45;
            v54 = 2112;
            v55 = v40;
            _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v20 = v40;
          goto LABEL_33;
        }

        v47 = 0;
        [v18 closeAndReturnError:&v47];
        v20 = v47;

        v28 = 1;
        if (!a5 || !v20)
        {
          goto LABEL_35;
        }

        v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v46 = objc_opt_class();
        v23 = NSStringFromClass(v46);
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        v51 = v23;
        v52 = 2112;
        v53 = v24;
        v54 = 2112;
        v55 = v20;
      }

      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

      goto LABEL_33;
    }

    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contentString", buf, 2u);
    }

    if (a5)
    {
      v26 = @"contentString";
      goto LABEL_19;
    }

LABEL_20:
    v28 = 0;
    goto LABEL_37;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
  }

  if (!a5)
  {
    goto LABEL_20;
  }

  v26 = @"url";
LABEL_19:
  _RTErrorInvalidParameterCreate(v26);
  *a5 = v28 = 0;
LABEL_37:

  return v28;
}

- (BOOL)_writeToJSONAtURL:(id)a3 data:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a4 options:3 error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = v9;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v24 = v10;
    v12 = "Encountered error in creating labelled JSON file, %@";
    goto LABEL_8;
  }

  v13 = 1;
  if ([v8 writeToURL:v7 atomically:1])
  {
    v10 = 0;
    goto LABEL_12;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277D01448];
  v21 = *MEMORY[0x277CCA450];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"JSON file couldn't be created, %@", v7];
  v22 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v10 = [v14 errorWithDomain:v15 code:7 userInfo:v17];

  v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v10;
    v12 = "error, %@";
LABEL_8:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
  }

LABEL_9:

  if (a5)
  {
    v18 = v10;
    v13 = 0;
    *a5 = v10;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (void)fetchMostRecentWorkoutLocationTypeWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTHealthKitManager_fetchMostRecentWorkoutLocationTypeWithHandler___block_invoke;
  v7[3] = &unk_2788C4D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__RTHealthKitManager_fetchMostRecentWorkoutLocationTypeWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) defaultsManager];
  v2 = [v3 objectForKey:@"RTDefaultsMostRecentWorkoutLocationType"];
  (*(v1 + 16))(v1, [v2 intValue]);
}

- (void)fetchMostRecentWorkoutInfoWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTHealthKitManager_fetchMostRecentWorkoutInfoWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__RTHealthKitManager_fetchMostRecentWorkoutInfoWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultsManager];
  v12 = [v2 objectForKey:@"RTDefaultsMostRecentWorkoutMirrorType"];

  if (v12)
  {
    v3 = [v12 intValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [*(a1 + 32) defaultsManager];
  v7 = [v6 objectForKey:@"RTDefaultsMostRecentWorkoutSessionID"];
  v8 = [v7 stringValue];
  v9 = [v5 initWithUUIDString:v8];
  v10 = [*(a1 + 32) defaultsManager];
  v11 = [v10 objectForKey:@"RTDefaultsMostRecentWorkoutActivityType"];
  (*(v4 + 16))(v4, v9, [v11 intValue], v3);
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = [a3 URLByAppendingPathComponent:@"Location_Workout_Study"];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v18];
    v8 = v18;

    if (v8)
    {
      if (a4)
      {
        v9 = v8;
        v10 = 0;
        *a4 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      LOBYTE(v15) = 1;
      v10 = [(RTHealthKitManager *)self _saveEntireHealthKitDataToURL:v6 outAbsoluteURL:&v17 includeWorkoutData:1 includeLocations:1 includeOdometerReadings:0 odometerSamplingIntervalComponents:0 includeClustersData:v15 error:&v16];
      v12 = v17;
      v13 = v16;
      if (a4)
      {
        v13 = v13;
        *a4 = v13;
      }
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"url");
      *a4 = v10 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  if ([a4 hasMask:2])
  {
    v11 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__RTHealthKitManager_sendDiagnosticsToURL_options_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = v9;
    v14 = v10;
    dispatch_async(v11, v12);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __59__RTHealthKitManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      +[RTRuntime footprint];
      *buf = 138412802;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "---------> %@, %@, start _generateDiagnosticFilesAtURL, footprint, %.2f MB <---------", buf, 0x20u);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v21 = 0;
  [v9 _generateDiagnosticFilesAtURL:v10 error:&v21];
  v11 = v21;
  objc_autoreleasePoolPop(v8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      +[RTRuntime footprint];
      v17 = v16;
      v18 = [MEMORY[0x277CBEAA8] date];
      [v18 timeIntervalSinceDate:v2];
      *buf = 138413314;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      v27 = v17;
      v28 = 2112;
      v29 = v11;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "---------> %@, %@, finished _generateDiagnosticFilesAtURL, footprint, %.2f MB, error, %@, latency, %.2f <---------", buf, 0x34u);
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v11);
  }
}

- (void)fetchEmergencyContactsWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RTHealthKitManager_fetchEmergencyContactsWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTHealthKitManager fetchEmergencyContactsWithHandler:]";
      v11 = 1024;
      v12 = 4207;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchEmergencyContactsWithHandler:(id)a3
{
  v64[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    aSelector = a2;
    *v60 = 0;
    *&v60[8] = v60;
    *&v60[16] = 0x3032000000;
    v61 = __Block_byref_object_copy__170;
    v62 = __Block_byref_object_dispose__170;
    v63 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__170;
    v53 = __Block_byref_object_dispose__170;
    v54 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = [(RTHealthKitManager *)self medicalIDStore];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __57__RTHealthKitManager__fetchEmergencyContactsWithHandler___block_invoke;
    v45[3] = &unk_2788C4490;
    v47 = v60;
    v48 = &v49;
    v8 = v6;
    v46 = v8;
    [v7 fetchMedicalIDEmergencyContactsWithCompletion:v45];

    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
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
      v64[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v64 count:1];
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

    v26 = v23;
    v27 = v26;
    v28 = v50;
    v29 = v50[5];
    if (v29 || (v29 = v26) != 0)
    {
      v5[2](v5, 0, v29);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(aSelector);
          v34 = [*(*&v60[8] + 40) count];
          *buf = 138412802;
          *&buf[4] = v32;
          v56 = 2112;
          v57 = v33;
          v58 = 2048;
          v59 = v34;
          _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, fetched emergency contacts count, %lu", buf, 0x20u);
        }

        v28 = v50;
        v35 = v50[5];
      }

      else
      {
        v35 = 0;
      }

      v36 = *(*&v60[8] + 40);
      obj = v35;
      v37 = [(RTHealthKitManager *)self _getRTContactsFromHKEmergencyContacts:v36 error:&obj];
      objc_storeStrong(v28 + 5, obj);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(aSelector);
          v42 = [v37 count];
          *buf = 138412802;
          *&buf[4] = v40;
          v56 = 2112;
          v57 = v41;
          v58 = 2048;
          v59 = v42;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, RTContact count, %lu", buf, 0x20u);
        }
      }

      (v5)[2](v5, v37, v50[5]);
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(v60, 8);
  }

  else
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v60 = 136315394;
      *&v60[4] = "[RTHealthKitManager _fetchEmergencyContactsWithHandler:]";
      *&v60[12] = 1024;
      *&v60[14] = 4221;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v60, 0x12u);
    }
  }
}

void __57__RTHealthKitManager__fetchEmergencyContactsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getRTContactsFromHKEmergencyContacts:(id)a3 error:(id *)a4
{
  aSelector = a2;
  v76[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__170;
  v68 = __Block_byref_object_dispose__170;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__170;
  v62 = __Block_byref_object_dispose__170;
  v63 = 0;
  v5 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v75 count:16];
  if (v7)
  {
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 nameContactIdentifier];

        if (v12)
        {
          v13 = [v10 nameContactIdentifier];
          [v5 addObject:v13];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v54 objects:v75 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v14 = dispatch_semaphore_create(0);
    v15 = [(RTHealthKitManager *)self contactsManager];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __66__RTHealthKitManager__getRTContactsFromHKEmergencyContacts_error___block_invoke;
    v50[3] = &unk_2788C4490;
    v52 = &v64;
    v53 = &v58;
    v16 = v14;
    v51 = v16;
    [v15 fetchContactsUsingContactIdentifiers:v5 handler:v50];

    v17 = v16;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v17, v19))
    {
      v20 = [MEMORY[0x277CBEAA8] now];
      [v20 timeIntervalSinceDate:v18];
      v22 = v21;
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1389];
      v25 = [MEMORY[0x277CCACC8] callStackSymbols];
      v26 = [v25 filteredArrayUsingPredicate:v24];
      v27 = [v26 firstObject];

      [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
      v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v29 = MEMORY[0x277CCA9B8];
      v76[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

      if (v31)
      {
        v32 = v31;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = v31;
    v34 = v33;
    if (a4)
    {
      if (v59[5])
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(aSelector);
          v43 = v59[5];
          *buf = 138412802;
          *&buf[4] = v41;
          v71 = 2112;
          v72 = v42;
          v73 = 2112;
          v74 = v43;
          _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v36 = v59[5];
LABEL_26:
        *a4 = v36;
        v31 = [MEMORY[0x277CBEA60] array];
        v38 = 0;
        goto LABEL_28;
      }

      if (v33)
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          *&buf[4] = v45;
          v71 = 2112;
          v72 = v46;
          v73 = 2112;
          v74 = v34;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v36 = v34;
        goto LABEL_26;
      }
    }

    v38 = 1;
LABEL_28:

    if (!v38)
    {
      goto LABEL_30;
    }
  }

  v31 = v65[5];
LABEL_30:

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  return v31;
}

void __66__RTHealthKitManager__getRTContactsFromHKEmergencyContacts_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_setupEvalMode
{
  v3 = [(RTHealthKitManager *)self platform];
  v4 = [v3 internalInstall];

  if (v4)
  {
    out_token = 0;
    v5 = [@"RTDefaultsHealthKitManagerSpoofNotification" UTF8String];
    v6 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__RTHealthKitManager__setupEvalMode__block_invoke;
    v7[3] = &unk_2788CE9E8;
    v7[4] = self;
    notify_register_dispatch(v5, &out_token, v6, v7);
  }
}

void __36__RTHealthKitManager__setupEvalMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultsManager];
  v18 = [v2 objectForKey:@"RTDefaultsHealthKitManagerSpoofNotification"];

  v3 = +[(RTNotification *)RTHealthKitManagerWorkoutEndReminderShowAlertNotification];
  v4 = [v18 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
LABEL_3:
    v6 = objc_opt_new();
LABEL_6:
    v9 = v6;
    [v5 postNotification:v6];

    goto LABEL_7;
  }

  v7 = +[(RTNotification *)RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification];
  v8 = [v18 isEqualToString:v7];

  if (v8)
  {
    v5 = *(a1 + 32);
    v6 = [[RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification alloc] initWithAlertDimissedReason:5];
    goto LABEL_6;
  }

  v10 = +[(RTNotification *)RTHealthKitManagerWorkoutSuggestedStopWorkoutNotification];
  v11 = [v18 isEqualToString:v10];

  if (v11)
  {
    v5 = *(a1 + 32);
    goto LABEL_3;
  }

  v12 = +[(RTNotification *)RTHealthKitManagerWorkoutResumedNotification];
  v13 = [v18 isEqualToString:v12];

  if (v13)
  {
    v5 = *(a1 + 32);
    goto LABEL_3;
  }

  v14 = +[(RTNotification *)RTHealthKitManagerWorkoutWillPauseWorkoutNotification];
  v15 = [v18 isEqualToString:v14];

  if (v15)
  {
    v5 = *(a1 + 32);
    goto LABEL_3;
  }

  v16 = +[(RTNotification *)RTHealthKitManagerWorkoutWillResumeWorkoutNotification];
  v17 = [v18 isEqualToString:v16];

  if (v17)
  {
    v5 = *(a1 + 32);
    goto LABEL_3;
  }

LABEL_7:
}

+ (id)getWorkoutAllPredictableTypes
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&unk_28459FB58, &unk_28459FB70, &unk_28459FB88, &unk_28459FBA0, &unk_28459FBB8, &unk_28459FBD0, &unk_28459FBE8, &unk_28459FC00, &unk_28459FC18, &unk_28459FC30, &unk_28459FC48, &unk_28459FC60, &unk_28459FAE0, &unk_28459FC78, &unk_28459FC90, &unk_28459FCA8, &unk_28459FCC0, &unk_28459FCD8, &unk_28459FCF0, &unk_28459FD08, &unk_28459FD20, &unk_28459FB28, &unk_28459FD38, &unk_28459FD50, &unk_28459FD68, &unk_28459FD80, &unk_28459FD98, &unk_28459FDB0, &unk_28459FDC8, &unk_28459FDE0, &unk_28459FDF8, &unk_28459FE10, &unk_28459FE28, &unk_28459FAC8, &unk_28459FE40, &unk_28459FE58, &unk_28459FE70, &unk_28459FE88, &unk_28459FEA0, &unk_28459FEB8, &unk_28459FED0, &unk_28459FEE8, &unk_28459FF00, &unk_28459FF18, &unk_28459FF30, &unk_28459FF48, &unk_28459FF60, &unk_28459FF78, &unk_28459FB10, &unk_28459FF90, &unk_28459FFA8, &unk_28459FFC0, &unk_28459FFD8, &unk_28459FFF0, &unk_2845A0008, &unk_2845A0020, &unk_2845A0038, &unk_2845A0050, &unk_2845A0068, &unk_2845A0080, &unk_2845A0098}];

  return v2;
}

@end