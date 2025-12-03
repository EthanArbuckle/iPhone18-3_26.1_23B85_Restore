@interface NLWorkout
+ (int64_t)experienceTypeForCatalogWorkout:(id)workout isGymKitWorkout:(BOOL)kitWorkout fitnessMachineSeymourStartSource:(unint64_t)source;
+ (unint64_t)_workoutEndReasonForHKErrorCode:(int64_t)code;
- (BOOL)advanceInterval;
- (BOOL)canTriggerAlerts;
- (BOOL)isGymKitWorkout;
- (BOOL)isMultiSportWorkout;
- (BOOL)shouldAutoDiscardBasedOnDuration:(double)duration;
- (BOOL)shouldSuppressAlert:(id)alert;
- (BOOL)workoutBuddyIsActive;
- (NLWorkout)initWithWorkoutConfiguration:(id)configuration healthStore:(id)store formattingManager:(id)manager locationProvider:(id)provider;
- (NLWorkout)initWithWorkoutConfiguration:(id)configuration healthStore:(id)store formattingManager:(id)manager session:(id)session locationProvider:(id)provider;
- (NLWorkoutAlertDelegate)workoutAlertDelegate;
- (NLWorkoutEndingDelegate)endingDelegate;
- (NLWorkoutProgressDelegate)progressDelegate;
- (NLWorkoutSuggestEndingDelegate)suggestEndingDelegate;
- (NSString)description;
- (double)elapsedTime;
- (id)activeZoneTracker;
- (id)keyValueDescription;
- (void)_beginNewActivityFromConfiguration:(id)configuration date:(id)date;
- (void)_beginNewActivityWithHKConfiguration:(id)configuration date:(id)date metadata:(id)metadata;
- (void)_clearTransitionMetadata;
- (void)_configureStateActions;
- (void)_configureStateMachineWithUUID:(id)d;
- (void)_createZoneTracker:(id)tracker activityType:(id)type;
- (void)_evaluateEnded;
- (void)_handleSplitStorageChanged:(id)changed;
- (void)_handleTargetZoneChanged:(id)changed;
- (void)_onEnded;
- (void)_onEnding;
- (void)_onPrepare;
- (void)_onRecovery;
- (void)_saveTargetZoneMetadata;
- (void)_setupForActivityType:(id)type startDate:(id)date;
- (void)_updateDataSourcesForWorkoutSession:(id)session currentConfiguration:(id)configuration healthStore:(id)store builder:(id)builder;
- (void)_updateDistanceSplitsTracker:(id)tracker multiSportLegStartDate:(id)date;
- (void)_updateState:(int64_t)state;
- (void)_updateTargetZonesFromConfiguration:(id)configuration;
- (void)_updateTimeSplitsTracker:(id)tracker;
- (void)activityHeartRateDidBecomeStale:(id)stale;
- (void)activityRingsUpdatedWithSummary:(id)summary;
- (void)addActivityObserver:(id)observer;
- (void)addMultisportWorkoutProgressObserver:(id)observer;
- (void)addStateObserver:(id)observer;
- (void)advanceMultisportActivity;
- (void)alertSource:(id)source didTriggerAlert:(id)alert;
- (void)alertSource:(id)source speakUtterance:(id)utterance;
- (void)completedActivityRing:(int64_t)ring activitySummary:(id)summary;
- (void)currentMetricPlatterTypeDidChange:(id)change;
- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to;
- (void)dataProvider:(id)provider didReceiveSegmentMarker:(id)marker;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available;
- (void)dataProvider:(id)provider didUpdateWorkout:(id)workout;
- (void)didCancelAutomaticTransition;
- (void)didDiscardSessionActivity:(id)activity;
- (void)didEnterManualTransitionWithDate:(id)date;
- (void)didEnterNewLeg:(id)leg date:(id)date;
- (void)didFinishIntervalWorkout:(id)workout date:(id)date;
- (void)didMoveToNextStep:(id)step date:(id)date previousStepMetadata:(id)metadata;
- (void)didRestoreActivityType:(id)type startDate:(id)date autoTransitionStartDate:(id)startDate autoTransitionUUID:(id)d;
- (void)didUpdateLastLegValues:(id)values;
- (void)didUpdateWorkoutLocationType:(int64_t)type;
- (void)endCollectionWithEndDate:(id)date;
- (void)endTrackingWithEndReason:(unint64_t)reason;
- (void)enterAutomaticTransitionWithSuggestedConfig:(id)config date:(id)date;
- (void)enterNewLeg:(id)leg date:(id)date;
- (void)insertLocations:(id)locations completion:(id)completion;
- (void)insertMetadataInCurrentActivityWithMetadata:(id)metadata;
- (void)onChargerStateUpdatedWith:(BOOL)with;
- (void)progressTracker:(id)tracker didProgressTowardsGoal:(id)goal completionFactor:(double)factor;
- (void)removeActivityObserver:(id)observer;
- (void)removeStateObserver:(id)observer;
- (void)sessionActivity:(id)activity didBeginActivity:(id)beginActivity;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)sessionActivity:(id)activity didEndActivity:(id)endActivity;
- (void)sessionActivity:(id)activity didUpdateWorkout:(id)workout workoutIsFinal:(BOOL)final;
- (void)sessionActivity:(id)activity willEndWithHKWorkoutSnapshot:(id)snapshot;
- (void)sessionController:(id)controller didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)sessionController:(id)controller didRecieveWorkoutEvent:(id)event;
- (void)sessionController:(id)controller didSuggestWorkoutConfiguration:(id)configuration date:(id)date;
- (void)sessionEncounteredSessionError:(id)error;
- (void)setIntervalWorkoutProgressDelegate:(id)delegate;
- (void)setPaused:(BOOL)paused atDate:(id)date eventSource:(unint64_t)source;
- (void)setRaceTrackerDelegate:(id)delegate;
- (void)startManualTransitionWithDate:(id)date;
- (void)startTrackingWithStartDate:(id)date;
- (void)suggestEndingWorkout;
- (void)unitPreferencesUpdatedWithUnitManager:(id)manager;
- (void)updateObserversWithPausedReasonsForStateChange:(unint64_t)change;
- (void)wristStateUpdatedWithOnWrist:(BOOL)wrist;
@end

@implementation NLWorkout

- (NLWorkout)initWithWorkoutConfiguration:(id)configuration healthStore:(id)store formattingManager:(id)manager locationProvider:(id)provider
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v22 = 0;
  objc_storeStrong(&v22, store);
  v21 = 0;
  objc_storeStrong(&v21, manager);
  v20 = 0;
  objc_storeStrong(&v20, provider);
  topLevelHKWorkoutConfiguration = [location[0] topLevelHKWorkoutConfiguration];
  v18 = 0;
  v6 = objc_alloc(MEMORY[0x277CCDC90]);
  v16 = v18;
  v14 = [v6 initWithHealthStore:v22 configuration:topLevelHKWorkoutConfiguration error:&v16];
  objc_storeStrong(&v18, v16);
  v17 = [WOChronicleClass chronicleInstance:v14];
  *&v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v18)
  {
    _HKInitializeLogging();
    v15 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v25, v18);
      _os_log_error_impl(&dword_20AEA4000, v15, OS_LOG_TYPE_ERROR, "NLWorkout failed to create workout session with error %{public}@", v25, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  v8 = selfCopy;
  selfCopy = 0;
  selfCopy = [(NLWorkout *)v8 initWithWorkoutConfiguration:location[0] healthStore:v22 formattingManager:v21 session:v17 locationProvider:v20, v7];
  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&topLevelHKWorkoutConfiguration, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v10;
}

- (NLWorkout)initWithWorkoutConfiguration:(id)configuration healthStore:(id)store formattingManager:(id)manager session:(id)session locationProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v115 = 0;
  objc_storeStrong(&v115, store);
  v114 = 0;
  objc_storeStrong(&v114, manager);
  v113 = 0;
  objc_storeStrong(&v113, session);
  v112 = 0;
  objc_storeStrong(&v112, provider);
  currentActivityType = [location[0] currentActivityType];
  v7 = selfCopy;
  selfCopy = 0;
  v110.receiver = v7;
  v110.super_class = NLWorkout;
  v94 = [(NLWorkout *)&v110 init];
  selfCopy = v94;
  objc_storeStrong(&selfCopy, v94);
  if (v94)
  {
    topLevelGoal = [location[0] topLevelGoal];
    v75 = v113;
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    goalTypeIdentifier = [topLevelGoal goalTypeIdentifier];
    value = [topLevelGoal value];
    v76 = [v75 associatedWorkoutBuilderWithDevice:localDevice goalType:goalTypeIdentifier goal:?];
    v108 = [WOChronicleClass chronicleInstance:?];
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](value);
    MEMORY[0x277D82BD8](localDevice);
    objc_storeStrong(&selfCopy->_formattingManager, v114);
    unitManager = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
    v107 = [unitManager userDistanceHKUnitForActivityType:currentActivityType];
    *&v8 = MEMORY[0x277D82BD8](unitManager).n128_u64[0];
    unitManager2 = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
    v106 = MEMORY[0x20F2E8320]([unitManager2 userDistanceElevationUnit]);
    *&v9 = MEMORY[0x277D82BD8](unitManager2).n128_u64[0];
    fitnessMachineSeymourStartSource = [location[0] fitnessMachineSeymourStartSource];
    selfCopy->_fitnessMachineSeymourStartSource = fitnessMachineSeymourStartSource;
    catalogWorkoutBridge = [location[0] catalogWorkoutBridge];
    isGymKitSession = [v113 isGymKitSession];
    v82 = [NLWorkout experienceTypeForCatalogWorkout:catalogWorkoutBridge isGymKitWorkout:isGymKitSession fitnessMachineSeymourStartSource:selfCopy->_fitnessMachineSeymourStartSource];
    MEMORY[0x277D82BD8](catalogWorkoutBridge);
    v105[1] = v82;
    v84 = [NLSessionActivity alloc];
    v83 = location[0];
    identifier = [v113 identifier];
    v12 = [NLSessionActivity initWithConfiguration:v84 UUID:"initWithConfiguration:UUID:formattingManager:elevationUnit:healthStore:builder:experienceType:" formattingManager:v83 elevationUnit:v82 healthStore:? builder:? experienceType:?];
    sessionActivity = selfCopy->_sessionActivity;
    selfCopy->_sessionActivity = v12;
    MEMORY[0x277D82BD8](sessionActivity);
    *&v14 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
    [(NLSessionActivity *)selfCopy->_sessionActivity addActivityChangeObserver:selfCopy, v14];
    v15 = [NLSessionController alloc];
    v16 = [(NLSessionController *)v15 initWithWorkoutSession:v113];
    sessionController = selfCopy->_sessionController;
    selfCopy->_sessionController = v16;
    *&v18 = MEMORY[0x277D82BD8](sessionController).n128_u64[0];
    [(NLSessionController *)selfCopy->_sessionController setDelegate:selfCopy, v18];
    [(NLSessionController *)selfCopy->_sessionController addSessionControllerStateObserver:selfCopy];
    v87 = objc_alloc(MEMORY[0x277CCD598]);
    v86 = v115;
    hkWorkoutConfiguration = [location[0] hkWorkoutConfiguration];
    v88 = [v87 initWithHealthStore:v86 workoutConfiguration:?];
    v19 = [WOChronicleClass chronicleInstance:?];
    liveWorkoutDataSource = selfCopy->_liveWorkoutDataSource;
    selfCopy->_liveWorkoutDataSource = v19;
    MEMORY[0x277D82BD8](liveWorkoutDataSource);
    MEMORY[0x277D82BD8](v88);
    *&v21 = MEMORY[0x277D82BD8](hkWorkoutConfiguration).n128_u64[0];
    v91 = selfCopy;
    v90 = v113;
    hkWorkoutConfiguration2 = [location[0] hkWorkoutConfiguration];
    [NLWorkout _updateDataSourcesForWorkoutSession:v91 currentConfiguration:"_updateDataSourcesForWorkoutSession:currentConfiguration:healthStore:builder:" healthStore:v90 builder:?];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activityObservers = selfCopy->_activityObservers;
    selfCopy->_activityObservers = weakObjectsHashTable;
    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = selfCopy->_stateObservers;
    selfCopy->_stateObservers = weakObjectsHashTable2;
    *&v26 = MEMORY[0x277D82BD8](stateObservers).n128_u64[0];
    [(NLSessionActivity *)selfCopy->_sessionActivity addSessionStateObserver:selfCopy->_sessionController, v26];
    [(NLSessionActivity *)selfCopy->_sessionActivity addSessionStateObserver:selfCopy];
    [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy];
    [(NLSessionActivity *)selfCopy->_sessionActivity setLifecycleDelegate:selfCopy];
    v93 = dispatch_get_global_queue(25, 0);
    v99 = MEMORY[0x277D85DD0];
    v100 = -1073741824;
    v101 = 0;
    v102 = __97__NLWorkout_initWithWorkoutConfiguration_healthStore_formattingManager_session_locationProvider___block_invoke;
    v103 = &unk_277D88998;
    v104 = MEMORY[0x277D82BE0](location[0]);
    v105[0] = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(v93, &v99);
    *&v27 = MEMORY[0x277D82BD8](v93).n128_u64[0];
    [(NLWorkout *)selfCopy _updateTimeSplitsTracker:currentActivityType, v27];
    [(NLWorkout *)selfCopy _updateDistanceSplitsTracker:currentActivityType multiSportLegStartDate:0];
    if (([currentActivityType supportsTrackRunning] & 1) != 0 && (objc_msgSend(location[0], "trackRunningIsSuspended") & 1) == 0)
    {
      v28 = [WOTrackRunningTracker alloc];
      v29 = [(WOTrackRunningTracker *)v28 initWithActivityType:currentActivityType locationProvider:v112];
      trackRunningTracker = selfCopy->_trackRunningTracker;
      selfCopy->_trackRunningTracker = v29;
      *&v31 = MEMORY[0x277D82BD8](trackRunningTracker).n128_u64[0];
      [(WOTrackRunningTracker *)selfCopy->_trackRunningTracker setWorkoutAlertDelegate:selfCopy, v31];
      [(WOTrackRunningTracker *)selfCopy->_trackRunningTracker setEventPersistenceDelegate:selfCopy->_sessionActivity];
    }

    if ([location[0] isInterval])
    {
      v70 = [WOIntervalWorkoutTracker alloc];
      v68 = location[0];
      v69 = v108;
      dataProvider = [(NLSessionActivity *)selfCopy->_sessionActivity dataProvider];
      powerAccumulator = [(NLSessionActivity *)selfCopy->_sessionActivity powerAccumulator];
      swimmingAccumulator = [(NLSessionActivity *)selfCopy->_sessionActivity swimmingAccumulator];
      v32 = [(WOIntervalWorkoutTracker *)v70 initWithConfiguration:v68 builder:v69 fallbackDataProvider:dataProvider powerAccumulator:powerAccumulator swimmingAccumulator:?];
      intervalWorkoutTracker = selfCopy->_intervalWorkoutTracker;
      selfCopy->_intervalWorkoutTracker = v32;
      MEMORY[0x277D82BD8](intervalWorkoutTracker);
      MEMORY[0x277D82BD8](swimmingAccumulator);
      MEMORY[0x277D82BD8](powerAccumulator);
      *&v34 = MEMORY[0x277D82BD8](dataProvider).n128_u64[0];
      [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker setDelegate:selfCopy, v34];
      [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker setAlertDelegate:selfCopy];
      [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_intervalWorkoutTracker];
    }

    else if ([location[0] isMultiSport])
    {
      v35 = [WOMultiSportWorkoutTracker alloc];
      v36 = [(WOMultiSportWorkoutTracker *)v35 initWithConfiguration:location[0] formattingManager:v114];
      multisportWorkoutTracker = selfCopy->_multisportWorkoutTracker;
      selfCopy->_multisportWorkoutTracker = v36;
      *&v38 = MEMORY[0x277D82BD8](multisportWorkoutTracker).n128_u64[0];
      [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker setAlertDelegate:selfCopy, v38];
      [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker setProgressionRequestDelegate:selfCopy];
      [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker addObserver:selfCopy];
      [(NLWorkout *)selfCopy addStateObserver:selfCopy->_multisportWorkoutTracker];
      [(NLWorkout *)selfCopy addActivityObserver:selfCopy->_multisportWorkoutTracker];
      [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_multisportWorkoutTracker];
    }

    else if ([location[0] isRace])
    {
      v39 = [WORaceWorkoutTracker alloc];
      v40 = [(WORaceWorkoutTracker *)v39 initWithConfiguration:location[0]];
      raceWorkoutTracker = selfCopy->_raceWorkoutTracker;
      selfCopy->_raceWorkoutTracker = v40;
      *&v42 = MEMORY[0x277D82BD8](raceWorkoutTracker).n128_u64[0];
      [(WORaceWorkoutTracker *)selfCopy->_raceWorkoutTracker setAlertDelegate:selfCopy, v42];
      [(WORaceWorkoutTracker *)selfCopy->_raceWorkoutTracker setMetadataSavingDelegate:selfCopy->_sessionActivity];
      [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_raceWorkoutTracker];
      [(NLSessionActivity *)selfCopy->_sessionActivity setRaceCoordinatorDelegate:selfCopy->_raceWorkoutTracker];
      [(NLSessionActivity *)selfCopy->_sessionActivity setRaceRouteDelegate:selfCopy->_raceWorkoutTracker];
    }

    else if ([location[0] isPacer])
    {
      [(NLSessionActivity *)selfCopy->_sessionActivity setPacerAlertDelegate:selfCopy];
    }

    else
    {
      v43 = [NLSessionActivityGoalProgressTracker alloc];
      v44 = [(NLSessionActivityGoalProgressTracker *)v43 initWithActivityType:currentActivityType goal:topLevelGoal];
      progressTracker = selfCopy->_progressTracker;
      selfCopy->_progressTracker = v44;
      *&v46 = MEMORY[0x277D82BD8](progressTracker).n128_u64[0];
      [(NLSessionActivityGoalProgressTracker *)selfCopy->_progressTracker setDelegate:selfCopy, v46];
      [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_progressTracker];
    }

    [(NLWorkout *)selfCopy _createZoneTracker:v107 activityType:currentActivityType];
    v60 = selfCopy;
    uUID = [(NLSessionActivity *)selfCopy->_sessionActivity UUID];
    [(NLWorkout *)v60 _configureStateMachineWithUUID:?];
    MEMORY[0x277D82BD8](uUID);
    v47 = objc_alloc_init(NLWristStateManager);
    wristStateManager = selfCopy->_wristStateManager;
    selfCopy->_wristStateManager = v47;
    *&v49 = MEMORY[0x277D82BD8](wristStateManager).n128_u64[0];
    [(NLWristStateManager *)selfCopy->_wristStateManager setDelegate:selfCopy, v49];
    v64 = [NLAnalyticsWorkoutEventBuilder alloc];
    v62 = location[0];
    v63 = v114;
    analyticsIdentifier = [(NLSessionActivity *)selfCopy->_sessionActivity analyticsIdentifier];
    v50 = [(NLAnalyticsWorkoutEventBuilder *)v64 initWithLiveWorkoutConfiguration:v62 formattingManager:v63 analyticsIdentifier:?];
    analyticsEventBuilder = selfCopy->_analyticsEventBuilder;
    selfCopy->_analyticsEventBuilder = v50;
    MEMORY[0x277D82BD8](analyticsEventBuilder);
    *&v52 = MEMORY[0x277D82BD8](analyticsIdentifier).n128_u64[0];
    catalogWorkoutBridge2 = [location[0] catalogWorkoutBridge];
    catalogWorkoutBridge = selfCopy->_catalogWorkoutBridge;
    selfCopy->_catalogWorkoutBridge = catalogWorkoutBridge2;
    *&v55 = MEMORY[0x277D82BD8](catalogWorkoutBridge).n128_u64[0];
    [(NLSessionActivity *)selfCopy->_sessionActivity setWorkoutAlertDelegate:selfCopy, v55];
    configurationUUID = [location[0] configurationUUID];
    configurationIdentifier = selfCopy->_configurationIdentifier;
    selfCopy->_configurationIdentifier = configurationUUID;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__handleTargetZoneChanged_ name:@"TargetZoneStorageChanged" object:?];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:selfCopy selector:sel__handleSplitStorageChanged_ name:*MEMORY[0x277D0A7B8] object:0];
    MEMORY[0x277D82BD8](defaultCenter2);
    objc_storeStrong(v105, 0);
    objc_storeStrong(&v104, 0);
    objc_storeStrong(&v106, 0);
    objc_storeStrong(&v107, 0);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&topLevelGoal, 0);
  }

  v59 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&currentActivityType, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(&v114, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v59;
}

- (void)setIntervalWorkoutProgressDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker updateProgressDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setRaceTrackerDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  [(WORaceWorkoutTracker *)selfCopy->_raceWorkoutTracker setTrackerDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addMultisportWorkoutProgressObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (id)activeZoneTracker
{
  if (self->_intervalWorkoutTracker)
  {
    zoneTracker = [(WOIntervalWorkoutTracker *)self->_intervalWorkoutTracker zoneTracker];
  }

  else
  {
    zoneTracker = MEMORY[0x277D82BE0](self->_activityZoneTracker);
  }

  return zoneTracker;
}

- (void)_createZoneTracker:(id)tracker activityType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tracker);
  v16 = 0;
  objc_storeStrong(&v16, type);
  if (selfCopy->_intervalWorkoutTracker)
  {
    [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker updateZoneTrackerWithDistanceUnit:location[0] metadataSavingDelegate:selfCopy->_sessionActivity];
    v15 = 1;
  }

  else
  {
    if (selfCopy->_activityZoneTracker)
    {
      [(NLSessionActivity *)selfCopy->_sessionActivity removeSessionDataObserver:selfCopy->_activityZoneTracker];
      [(NLWorkoutZoneTracker *)selfCopy->_activityZoneTracker setAlertDelegate:?];
      objc_storeStrong(&selfCopy->_activityZoneTracker, 0);
    }

    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v19, v16);
      _os_log_impl(&dword_20AEA4000, v14, v13, "[multisport] Creating a zone tracker for current activity type %@", v19, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v12 = 0;
    v7 = v16;
    configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
    sessionActivity = selfCopy->_sessionActivity;
    v11 = v12;
    v8 = [NLZoneTrackerFactory makeWithActivityType:"makeWithActivityType:liveWorkoutConfiguration:distanceUnit:metadataSavingDelegate:error:" liveWorkoutConfiguration:v7 distanceUnit:? metadataSavingDelegate:? error:?];
    objc_storeStrong(&v12, v11);
    activityZoneTracker = selfCopy->_activityZoneTracker;
    selfCopy->_activityZoneTracker = v8;
    MEMORY[0x277D82BD8](activityZoneTracker);
    *&v6 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
    [(NLWorkoutZoneTracker *)selfCopy->_activityZoneTracker setAlertDelegate:selfCopy, v6];
    [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_activityZoneTracker];
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleTargetZoneChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  _HKInitializeLogging();
  v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_20AEA4000, log, type, "Handle target zone changed", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v3 = selfCopy;
  configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  [(NLWorkout *)v3 _updateTargetZonesFromConfiguration:?];
  MEMORY[0x277D82BD8](configuration);
  objc_storeStrong(location, 0);
}

- (void)_handleSplitStorageChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  _HKInitializeLogging();
  v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    v11 = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_20AEA4000, log, v11, "Handle split storage changed", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  v4 = selfCopy;
  configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  currentActivityType = [(WOCoreLiveWorkoutConfiguration *)configuration currentActivityType];
  [NLWorkout _updateDistanceSplitsTracker:v4 multiSportLegStartDate:"_updateDistanceSplitsTracker:multiSportLegStartDate:"];
  MEMORY[0x277D82BD8](currentActivityType);
  *&v3 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
  v7 = selfCopy;
  configuration2 = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  currentActivityType2 = [(WOCoreLiveWorkoutConfiguration *)configuration2 currentActivityType];
  [(NLWorkout *)v7 _updateTimeSplitsTracker:?];
  MEMORY[0x277D82BD8](currentActivityType2);
  MEMORY[0x277D82BD8](configuration2);
  objc_storeStrong(location, 0);
}

- (void)_updateDistanceSplitsTracker:(id)tracker multiSportLegStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tracker);
  v35 = 0;
  objc_storeStrong(&v35, date);
  if (selfCopy->_splitsTracker)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity setSplitsDelegate:?];
    [(NLSessionActivitySplitsTracker *)selfCopy->_splitsTracker setAlertDelegate:0];
    objc_storeStrong(&selfCopy->_splitsTracker, 0);
  }

  if (selfCopy->_customDistanceSplitsTracker)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity setCustomSplitsDelegate:?];
    [(NLWorkoutCustomDistanceSplitsTracker *)selfCopy->_customDistanceSplitsTracker setAlertDelegate:0];
    objc_storeStrong(&selfCopy->_customDistanceSplitsTracker, 0);
  }

  unitManager = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
  v34 = [unitManager userDistanceHKUnitForActivityType:location[0]];
  *&v4 = MEMORY[0x277D82BD8](unitManager).n128_u64[0];
  configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  v32 = [MEMORY[0x277D0A840] distanceSplitForActivityType:location[0] userDistanceUnit:v34];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v29 = [threadDictionary objectForKey:@"WOSplitsOverrideForTesting"];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](threadDictionary);
  v5 = MEMORY[0x277D82BD8](currentThread).n128_u64[0];
  if (v29)
  {
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    v6 = [threadDictionary2 objectForKey:@"WOSplitsOverrideForTesting"];
    v7 = v32;
    v32 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](threadDictionary2);
    v5 = MEMORY[0x277D82BD8](currentThread2).n128_u64[0];
  }

  if ([v32 enabled] & 1) != 0 && (objc_msgSend(configuration, "supportsDistanceSplits"))
  {
    v31 = FIUIDistanceTypeForActivityType();
    v22 = [MEMORY[0x277CCD7E8] quantityWithUnit:v34 doubleValue:NLDistanceNotificationIntervalForDistanceType(v31)];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    [v22 doubleValueForUnit:?];
    v23 = v8;
    MEMORY[0x277D82BD8](meterUnit);
    MEMORY[0x277D82BD8](v22);
    [v32 value];
    if (v23 == v9)
    {
      v19 = [NLSessionActivitySplitsTracker alloc];
      v18 = location[0];
      builder = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
      activityMoveMode = [(NLSessionActivity *)selfCopy->_sessionActivity activityMoveMode];
      v11 = [(NLSessionActivitySplitsTracker *)v19 initWithActivityType:v18 builder:builder distanceUnit:v34 activityMoveMode:activityMoveMode multiSportLegStartDate:v35];
      splitsTracker = selfCopy->_splitsTracker;
      selfCopy->_splitsTracker = v11;
      MEMORY[0x277D82BD8](splitsTracker);
      *&v13 = MEMORY[0x277D82BD8](builder).n128_u64[0];
      [(NLSessionActivitySplitsTracker *)selfCopy->_splitsTracker setAlertDelegate:selfCopy, v13];
      [(NLSessionActivity *)selfCopy->_sessionActivity setSplitsDelegate:selfCopy->_splitsTracker];
    }

    else
    {
      v17 = [NLWorkoutCustomDistanceSplitsTracker alloc];
      v14 = [(NLWorkoutCustomDistanceSplitsTracker *)v17 initWithActivityType:location[0] activityMoveMode:[(NLSessionActivity *)selfCopy->_sessionActivity activityMoveMode]];
      customDistanceSplitsTracker = selfCopy->_customDistanceSplitsTracker;
      selfCopy->_customDistanceSplitsTracker = v14;
      *&v16 = MEMORY[0x277D82BD8](customDistanceSplitsTracker).n128_u64[0];
      [(NLWorkoutCustomDistanceSplitsTracker *)selfCopy->_customDistanceSplitsTracker setAlertDelegate:selfCopy, v16];
      [(NLSessionActivity *)selfCopy->_sessionActivity setCustomSplitsDelegate:selfCopy->_customDistanceSplitsTracker];
    }
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&configuration, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTimeSplitsTracker:(id)tracker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tracker);
  if (selfCopy->_customTimeSplitsTracker)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity removeSessionDataObserver:selfCopy->_customTimeSplitsTracker];
    [(NLWorkoutCustomTimeSplitsTracker *)selfCopy->_customTimeSplitsTracker setAlertDelegate:?];
    objc_storeStrong(&selfCopy->_customTimeSplitsTracker, 0);
  }

  configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  v8 = [MEMORY[0x277D0A840] timeSplitForActivityType:location[0]];
  v7 = [(NLWorkout *)selfCopy experienceType]== 3;
  if (([v8 enabled] & 1) != 0 && (objc_msgSend(configuration, "supportsTimeSplits") & 1) != 0 && v7)
  {
    v6 = [NLWorkoutCustomTimeSplitsTracker alloc];
    [v8 value];
    v3 = [(NLWorkoutCustomTimeSplitsTracker *)v6 initWithTimeSpan:selfCopy->_formattingManager formattingManager:?];
    customTimeSplitsTracker = selfCopy->_customTimeSplitsTracker;
    selfCopy->_customTimeSplitsTracker = v3;
    *&v5 = MEMORY[0x277D82BD8](customTimeSplitsTracker).n128_u64[0];
    [(NLWorkoutCustomTimeSplitsTracker *)selfCopy->_customTimeSplitsTracker setAlertDelegate:selfCopy, v5];
    [(NLSessionActivity *)selfCopy->_sessionActivity addSessionDataObserver:selfCopy->_customTimeSplitsTracker];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&configuration, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateDataSourcesForWorkoutSession:(id)session currentConfiguration:(id)configuration healthStore:(id)store builder:(id)builder
{
  v50 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v43 = 0;
  objc_storeStrong(&v43, configuration);
  v42 = 0;
  objc_storeStrong(&v42, store);
  v41 = 0;
  objc_storeStrong(&v41, builder);
  v30 = MEMORY[0x277CCDC48];
  activityType = [v43 activityType];
  v28 = [v43 locationType] == 2;
  isGymKitSession = [location[0] isGymKitSession];
  v31 = [v30 observedTypesForActivityType:activityType isIndoor:v28 connectedToFitnessMachine:isGymKitSession activityMode:{-[NLSessionActivity activityMoveMode](selfCopy->_sessionActivity, "activityMoveMode")}];
  v40 = [v31 mutableCopy];
  MEMORY[0x277D82BD8](v31);
  _HKInitializeLogging();
  v39 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v49, v40);
    _os_log_impl(&dword_20AEA4000, v39, v38, "[Workout] Default collection types: %@", v49, 0xCu);
  }

  objc_storeStrong(&v39, 0);
  v37 = 0;
  if ([location[0] isGymKitSession])
  {
    [v41 setShouldCollectWorkoutEvents:1];
    v23 = MEMORY[0x277CCC918];
    v36 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
    [v40 removeObject:v36];
    v35 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
    [v40 removeObject:v35];
    v34 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
    [v40 removeObject:v34];
    [(HKGymKitMetricsDataSource *)selfCopy->_gymKitMetricsDataSource setDelegate:?];
    v6 = objc_alloc(MEMORY[0x277CCD490]);
    v7 = [v6 initWithHealthStore:v42 workoutConfiguration:v43];
    gymKitDataSource = selfCopy->_gymKitDataSource;
    selfCopy->_gymKitDataSource = v7;
    MEMORY[0x277D82BD8](gymKitDataSource);
    v9 = objc_alloc(MEMORY[0x277CCD498]);
    v10 = [v9 initWithHealthStore:v42 workoutConfiguration:v43];
    gymKitMetricsDataSource = selfCopy->_gymKitMetricsDataSource;
    selfCopy->_gymKitMetricsDataSource = v10;
    *&v12 = MEMORY[0x277D82BD8](gymKitMetricsDataSource).n128_u64[0];
    [(HKGymKitMetricsDataSource *)selfCopy->_gymKitMetricsDataSource setDelegate:selfCopy->_sessionActivity, v12];
    v48[0] = selfCopy->_liveWorkoutDataSource;
    v48[1] = selfCopy->_gymKitDataSource;
    v48[2] = selfCopy->_gymKitMetricsDataSource;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    v14 = v37;
    v37 = v13;
    v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{*v23, MEMORY[0x277D82BD8](v14).n128_f64[0]}];
    [v41 _setStatisticsMergeStrategy:1 forType:v33];
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    [v41 setShouldCollectWorkoutEvents:0];
    [(HKWorkoutRouteDataSource *)selfCopy->_routesDataSource setDelegate:0];
    v15 = objc_alloc(MEMORY[0x277CCDC80]);
    v22 = [v15 initWithWorkoutSession:location[0]];
    v16 = [WOChronicleClass chronicleInstance:?];
    routesDataSource = selfCopy->_routesDataSource;
    selfCopy->_routesDataSource = v16;
    MEMORY[0x277D82BD8](routesDataSource);
    *&v18 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    [(HKWorkoutRouteDataSource *)selfCopy->_routesDataSource setDelegate:selfCopy->_sessionActivity, v18];
    v47[0] = selfCopy->_liveWorkoutDataSource;
    v47[1] = selfCopy->_routesDataSource;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v20 = v37;
    v37 = v19;
    MEMORY[0x277D82BD8](v20);
  }

  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    isGymKitSession2 = [location[0] isGymKitSession];
    __os_log_helper_16_2_3_4_0_8_66_8_66(v46, isGymKitSession2, v43, v37);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[Workout] Configuring data sources with workout isGymKit=%{BOOL}d configuration=%{public}@ dataSources=%{public}@", v46, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  [v41 setAdditionalDataSources:v37];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isGymKitWorkout
{
  workoutSession = [(NLSessionController *)self->_sessionController workoutSession];
  isGymKitSession = [(HKWorkoutSession *)workoutSession isGymKitSession];
  MEMORY[0x277D82BD8](workoutSession);
  return isGymKitSession;
}

- (BOOL)isMultiSportWorkout
{
  configuration = [(NLSessionActivity *)self->_sessionActivity configuration];
  isMultiSport = [(WOCoreLiveWorkoutConfiguration *)configuration isMultiSport];
  MEMORY[0x277D82BD8](configuration);
  return isMultiSport;
}

- (double)elapsedTime
{
  selfCopy = self;
  location[1] = a2;
  if (self->_hkWorkout)
  {
    metadata = [(HKWorkout *)selfCopy->_hkWorkout metadata];
    location[0] = [metadata objectForKey:*MEMORY[0x277CCC498]];
    *&v2 = MEMORY[0x277D82BD8](metadata).n128_u64[0];
    if (location[0])
    {
      secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
      [location[0] doubleValueForUnit:?];
      v22 = v3;
      MEMORY[0x277D82BD8](secondUnit);
    }

    else
    {
      [(HKWorkout *)selfCopy->_hkWorkout duration];
      v22 = v4;
    }

    objc_storeStrong(location, 0);
  }

  else if ([(NLWorkout *)selfCopy isGymKitWorkout])
  {
    dataProvider = [(NLSessionActivity *)selfCopy->_sessionActivity dataProvider];
    elapsedTimeProvider = [(NLSessionDataProvider *)dataProvider elapsedTimeProvider];
    [elapsedTimeProvider elapsedTime];
    v22 = v5;
    MEMORY[0x277D82BD8](elapsedTimeProvider);
    MEMORY[0x277D82BD8](dataProvider);
  }

  else
  {
    builder = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
    *&v6 = MEMORY[0x277D82BD8](builder).n128_u64[0];
    if (builder)
    {
      activityEndDate = [(NLSessionActivity *)selfCopy->_sessionActivity activityEndDate];
      *&v7 = MEMORY[0x277D82BD8](activityEndDate).n128_u64[0];
      if (activityEndDate)
      {
        builder2 = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
        activityEndDate2 = [(NLSessionActivity *)selfCopy->_sessionActivity activityEndDate];
        [(HKLiveWorkoutBuilder *)builder2 elapsedTimeAtDate:?];
        v22 = v8;
        MEMORY[0x277D82BD8](activityEndDate2);
        MEMORY[0x277D82BD8](builder2);
      }

      else
      {
        builder3 = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
        [(HKLiveWorkoutBuilder *)builder3 elapsedTime];
        v22 = v9;
        MEMORY[0x277D82BD8](builder3);
      }
    }

    else
    {
      return 0.0;
    }
  }

  return v22;
}

+ (int64_t)experienceTypeForCatalogWorkout:(id)workout isGymKitWorkout:(BOOL)kitWorkout fitnessMachineSeymourStartSource:(unint64_t)source
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  if (location[0])
  {
    if (([location[0] isGuidedRun] & 1) != 0 && kitWorkout)
    {
      v5 = 2;
      if (source != 11)
      {
        v5 = 4;
      }

      v11 = v5;
    }

    else if ([location[0] isGuidedRun])
    {
      v11 = 0;
    }

    else if (([location[0] isGuidedWalk] & 1) != 0 && kitWorkout)
    {
      v6 = 2;
      if (source != 11)
      {
        v6 = 4;
      }

      v11 = v6;
    }

    else if ([location[0] isGuidedWalk])
    {
      v11 = 0;
    }

    else if (kitWorkout)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 3;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (id)keyValueDescription
{
  selfCopy = self;
  v25[1] = a2;
  sessionActivity = [(NLWorkout *)self sessionActivity];
  v25[0] = [(NLSessionActivity *)sessionActivity activityType];
  *&v2 = MEMORY[0x277D82BD8](sessionActivity).n128_u64[0];
  v11 = MEMORY[0x277CCACA8];
  identifier = [(NLWorkout *)selfCopy identifier];
  v22 = FIUILastFourCharactersOfUUID();
  [v25[0] identifier];
  v21 = _HKWorkoutActivityNameForActivityType();
  isIndoor = [v25[0] isIndoor];
  v4 = @"YES";
  if ((isIndoor & 1) == 0)
  {
    v4 = @"NO";
  }

  v9 = v4;
  sessionActivity2 = [(NLWorkout *)selfCopy sessionActivity];
  isMachineWorkout = [(NLSessionActivity *)sessionActivity2 isMachineWorkout];
  v6 = @"YES";
  if (!isMachineWorkout)
  {
    v6 = @"NO";
  }

  v10 = v6;
  sessionActivity3 = [(NLWorkout *)selfCopy sessionActivity];
  configuration = [(NLSessionActivity *)sessionActivity3 configuration];
  currentGoal = [(WOCoreLiveWorkoutConfiguration *)configuration currentGoal];
  v16 = _GoalPropertiesKeyValueString(currentGoal);
  v15 = _SwimmingPropertiesKeyValueString(v25[0]);
  v14 = NLWorkoutExperienceTypeDescription([(NLWorkout *)selfCopy experienceType]);
  catalogWorkoutBridge = [(NLWorkout *)selfCopy catalogWorkoutBridge];
  identifier2 = [(WOCoreCatalogWorkout *)catalogWorkoutBridge identifier];
  v24 = [v11 stringWithFormat:@"workout: UUID=%@ activityType=%@ indoor=%@ isMachineWorkout=%@ %@%@experienceType=%@ catalogItem=%@ ", v22, v21, v9, v10, v16, v15, v14, identifier2];
  MEMORY[0x277D82BD8](identifier2);
  MEMORY[0x277D82BD8](catalogWorkoutBridge);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](currentGoal);
  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](sessionActivity3);
  MEMORY[0x277D82BD8](sessionActivity2);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](identifier);
  objc_storeStrong(v25, 0);

  return v24;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  activityType = [(NLSessionActivity *)self->_sessionActivity activityType];
  uUID = [(NLSessionActivity *)self->_sessionActivity UUID];
  state = [(FIUIStateMachine *)self->_stateMachine state];
  v5 = NLWorkoutExperienceTypeDescription([(NLWorkout *)self experienceType]);
  v9 = [v4 stringWithFormat:@"NLWorkout<%p>(activityType=%@ UUID=%@ state=%@ experienceType=%@)", self, activityType, uUID, state, v5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](state);
  MEMORY[0x277D82BD8](uUID);
  MEMORY[0x277D82BD8](activityType);

  return v9;
}

- (void)_configureStateMachineWithUUID:(id)d
{
  v128[7] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  memset(__b, 0, sizeof(__b));
  NLWorkoutStateIdentifierShortHandStruct(__b);
  v111 = [MEMORY[0x277CCABB0] numberWithInteger:__b[0]];
  v128[0] = v111;
  v110 = [MEMORY[0x277CCABB0] numberWithInteger:__b[1]];
  v128[1] = v110;
  v109 = [MEMORY[0x277CCABB0] numberWithInteger:__b[2]];
  v128[2] = v109;
  v108 = [MEMORY[0x277CCABB0] numberWithInteger:__b[3]];
  v128[3] = v108;
  v107 = [MEMORY[0x277CCABB0] numberWithInteger:__b[4]];
  v128[4] = v107;
  v106 = [MEMORY[0x277CCABB0] numberWithInteger:__b[5]];
  v128[5] = v106;
  v105 = [MEMORY[0x277CCABB0] numberWithInteger:__b[6]];
  v128[6] = v105;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:7];
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v111);
  v113 = objc_alloc(MEMORY[0x277D0A800]);
  v115 = FIUIStateMachineLabel();
  v112 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v114 = v112;
  v4 = [v113 initWithLabel:v115 queue:?];
  stateMachine = selfCopy->_stateMachine;
  selfCopy->_stateMachine = v4;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  v6 = selfCopy->_stateMachine;
  FIUIStateMachineSetDiagnosticAndErrorHandler();
  v122 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v123, "count")}];
  memset(v120, 0, sizeof(v120));
  obj = MEMORY[0x277D82BE0](v123);
  v117 = [obj countByEnumeratingWithState:v120 objects:v127 count:16];
  if (v117)
  {
    v102 = *v120[2];
    v103 = 0;
    v104 = v117;
    while (1)
    {
      v101 = v103;
      if (*v120[2] != v102)
      {
        objc_enumerationMutation(obj);
      }

      v121 = *(v120[1] + 8 * v103);
      unsignedIntegerValue = [v121 unsignedIntegerValue];
      v99 = objc_alloc(MEMORY[0x277D0A7F8]);
      v100 = NLWorkoutStateIdentifierDescription(unsignedIntegerValue);
      v118 = [v99 initWithLabel:?];
      *&v7 = MEMORY[0x277D82BD8](v100).n128_u64[0];
      [v122 setObject:v118 forKeyedSubscript:{v121, v7}];
      [(FIUIStateMachine *)selfCopy->_stateMachine addState:v118];
      objc_storeStrong(&v118, 0);
      ++v103;
      if (v101 + 1 >= v104)
      {
        v103 = 0;
        v104 = [obj countByEnumeratingWithState:v120 objects:v127 count:16];
        if (!v104)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&selfCopy->_stateMap, v122);
  stateMap = selfCopy->_stateMap;
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:__b[0]];
  v25 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v22 = v122;
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:__b[2]];
  v23 = [v22 objectForKeyedSubscript:?];
  _RegisterTransition_1(v25, v23, 0);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  *&v8 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v27 = selfCopy->_stateMap;
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[0], v8}];
  v31 = [(NSDictionary *)v27 objectForKeyedSubscript:?];
  v28 = v122;
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:__b[1]];
  v29 = [v28 objectForKeyedSubscript:?];
  _RegisterTransition_1(v31, v29, 1);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  *&v9 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v33 = selfCopy->_stateMap;
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[1], v9}];
  v37 = [(NSDictionary *)v33 objectForKeyedSubscript:?];
  v34 = v122;
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:__b[3]];
  v35 = [v34 objectForKeyedSubscript:?];
  _RegisterTransition_1(v37, v35, 2);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  *&v10 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v39 = selfCopy->_stateMap;
  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[1], v10}];
  v43 = [(NSDictionary *)v39 objectForKeyedSubscript:?];
  v40 = v122;
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:__b[4]];
  v41 = [v40 objectForKeyedSubscript:?];
  _RegisterTransition_1(v43, v41, 3);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  *&v11 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  v45 = selfCopy->_stateMap;
  v50 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[2], v11}];
  v49 = [(NSDictionary *)v45 objectForKeyedSubscript:?];
  v46 = v122;
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:__b[3]];
  v47 = [v46 objectForKeyedSubscript:?];
  _RegisterTransition_1(v49, v47, 2);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  *&v12 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  v51 = selfCopy->_stateMap;
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[2], v12}];
  v55 = [(NSDictionary *)v51 objectForKeyedSubscript:?];
  v52 = v122;
  v54 = [MEMORY[0x277CCABB0] numberWithInteger:__b[5]];
  v53 = [v52 objectForKeyedSubscript:?];
  _RegisterTransition_1(v55, v53, 5);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  *&v13 = MEMORY[0x277D82BD8](v56).n128_u64[0];
  v57 = selfCopy->_stateMap;
  v62 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[2], v13}];
  v61 = [(NSDictionary *)v57 objectForKeyedSubscript:?];
  v58 = v122;
  v60 = [MEMORY[0x277CCABB0] numberWithInteger:__b[6]];
  v59 = [v58 objectForKeyedSubscript:?];
  _RegisterTransition_1(v61, v59, 6);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  *&v14 = MEMORY[0x277D82BD8](v62).n128_u64[0];
  v63 = selfCopy->_stateMap;
  v68 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[3], v14}];
  v67 = [(NSDictionary *)v63 objectForKeyedSubscript:?];
  v64 = v122;
  v66 = [MEMORY[0x277CCABB0] numberWithInteger:__b[4]];
  v65 = [v64 objectForKeyedSubscript:?];
  _RegisterTransition_1(v67, v65, 3);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  *&v15 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  v69 = selfCopy->_stateMap;
  v74 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[4], v15}];
  v73 = [(NSDictionary *)v69 objectForKeyedSubscript:?];
  v70 = selfCopy->_stateMap;
  v72 = [MEMORY[0x277CCABB0] numberWithInteger:__b[3]];
  v71 = [(NSDictionary *)v70 objectForKeyedSubscript:?];
  _RegisterTransition_1(v73, v71, 4);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  *&v16 = MEMORY[0x277D82BD8](v74).n128_u64[0];
  v75 = selfCopy->_stateMap;
  v80 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[4], v16}];
  v79 = [(NSDictionary *)v75 objectForKeyedSubscript:?];
  v76 = v122;
  v78 = [MEMORY[0x277CCABB0] numberWithInteger:__b[5]];
  v77 = [v76 objectForKeyedSubscript:?];
  _RegisterTransition_1(v79, v77, 5);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  *&v17 = MEMORY[0x277D82BD8](v80).n128_u64[0];
  v81 = selfCopy->_stateMap;
  v86 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[3], v17}];
  v85 = [(NSDictionary *)v81 objectForKeyedSubscript:?];
  v82 = v122;
  v84 = [MEMORY[0x277CCABB0] numberWithInteger:__b[5]];
  v83 = [v82 objectForKeyedSubscript:?];
  _RegisterTransition_1(v85, v83, 5);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  *&v18 = MEMORY[0x277D82BD8](v86).n128_u64[0];
  v87 = selfCopy->_stateMap;
  v92 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[5], v18}];
  v91 = [(NSDictionary *)v87 objectForKeyedSubscript:?];
  v88 = v122;
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:__b[6]];
  v89 = [v88 objectForKeyedSubscript:?];
  _RegisterTransition_1(v91, v89, 6);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  *&v19 = MEMORY[0x277D82BD8](v92).n128_u64[0];
  v93 = selfCopy->_stateMap;
  v98 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[3], v19}];
  v97 = [(NSDictionary *)v93 objectForKeyedSubscript:?];
  v94 = v122;
  v96 = [MEMORY[0x277CCABB0] numberWithInteger:__b[6]];
  v95 = [v94 objectForKeyedSubscript:?];
  _RegisterTransition_1(v97, v95, 6);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  *&v20 = MEMORY[0x277D82BD8](v98).n128_u64[0];
  [(FIUIStateMachine *)selfCopy->_stateMachine export];
  [(NLWorkout *)selfCopy _configureStateActions];
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureStateActions
{
  selfCopy = self;
  __b[7] = a2;
  memset(__b, 0, 0x38uLL);
  NLWorkoutStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, selfCopy);
  stateMap = selfCopy->_stateMap;
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:__b[2]];
  v22 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v55 = MEMORY[0x277D85DD0];
  v56 = -1073741824;
  v57 = 0;
  v58 = __35__NLWorkout__configureStateActions__block_invoke;
  v59 = &unk_277D88970;
  objc_copyWeak(v60, &location);
  [v22 setEntry:&v55];
  MEMORY[0x277D82BD8](v22);
  *&v2 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v21 = selfCopy->_stateMap;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[1], v2}];
  v19 = [(NSDictionary *)v21 objectForKeyedSubscript:?];
  v49 = MEMORY[0x277D85DD0];
  v50 = -1073741824;
  v51 = 0;
  v52 = __35__NLWorkout__configureStateActions__block_invoke_2;
  v53 = &unk_277D88970;
  objc_copyWeak(&v54, &location);
  [v19 setEntry:&v49];
  MEMORY[0x277D82BD8](v19);
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v18 = selfCopy->_stateMap;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[3], v3}];
  v16 = [(NSDictionary *)v18 objectForKeyedSubscript:?];
  v43 = MEMORY[0x277D85DD0];
  v44 = -1073741824;
  v45 = 0;
  v46 = __35__NLWorkout__configureStateActions__block_invoke_3;
  v47 = &unk_277D88970;
  objc_copyWeak(&v48, &location);
  [v16 setEntry:&v43];
  MEMORY[0x277D82BD8](v16);
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v15 = selfCopy->_stateMap;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[4], v4}];
  v13 = [(NSDictionary *)v15 objectForKeyedSubscript:?];
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __35__NLWorkout__configureStateActions__block_invoke_4;
  v41 = &unk_277D88970;
  objc_copyWeak(&v42, &location);
  [v13 setEntry:&v37];
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v12 = selfCopy->_stateMap;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[5], v5}];
  v10 = [(NSDictionary *)v12 objectForKeyedSubscript:?];
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __35__NLWorkout__configureStateActions__block_invoke_5;
  v35 = &unk_277D88970;
  objc_copyWeak(&v36, &location);
  [v10 setEntry:&v31];
  MEMORY[0x277D82BD8](v10);
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v9 = selfCopy->_stateMap;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[6], v6}];
  v7 = [(NSDictionary *)v9 objectForKeyedSubscript:?];
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __35__NLWorkout__configureStateActions__block_invoke_6;
  v29 = &unk_277D88970;
  objc_copyWeak(&v30, &location);
  [v7 setEntry:&v25];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v54);
  objc_destroyWeak(v60);
  objc_destroyWeak(&location);
}

void __35__NLWorkout__configureStateActions__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:2];
  MEMORY[0x277D82BD8](WeakRetained);
  v8 = objc_loadWeakRetained(a1 + 4);
  [v8 _onPrepare];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __35__NLWorkout__configureStateActions__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:1];
  MEMORY[0x277D82BD8](WeakRetained);
  v8 = objc_loadWeakRetained(a1 + 4);
  [v8 _onRecovery];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __35__NLWorkout__configureStateActions__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:4];
  MEMORY[0x277D82BD8](WeakRetained);
  v8 = objc_loadWeakRetained(a1 + 4);
  [v8 _onInSession];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __35__NLWorkout__configureStateActions__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:3];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __35__NLWorkout__configureStateActions__block_invoke_5(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:5];
  MEMORY[0x277D82BD8](WeakRetained);
  v8 = objc_loadWeakRetained(a1 + 4);
  [v8 _onEnding];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __35__NLWorkout__configureStateActions__block_invoke_6(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _updateState:6];
  MEMORY[0x277D82BD8](WeakRetained);
  v5 = objc_loadWeakRetained(a1 + 4);
  [v5 _onEnded];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_onPrepare
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4[1] = a2;
  [(NLSessionActivity *)self->_sessionActivity _prepare];
  if (selfCopy->_multisportWorkoutTracker)
  {
    v4[0] = [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker allHKConfigurations];
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v6, v4[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] Populating automatic detection with %@", v6, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
    [(HKWorkoutSession *)workoutSession enableAutomaticDetectionForActivityConfigurations:v4[0]];
    MEMORY[0x277D82BD8](workoutSession);
    objc_storeStrong(v4, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_onRecovery
{
  [(NLSessionController *)self->_sessionController prepareForRecovery];
  [(WOMultiSportWorkoutTracker *)self->_multisportWorkoutTracker recoverStateWithSessionActivity:self->_sessionActivity];
  [(NLSessionActivity *)self->_sessionActivity _startRecovery];
  progressTracker = self->_progressTracker;
  dataProvider = [(NLSessionActivity *)self->_sessionActivity dataProvider];
  activityType = [(NLSessionActivity *)self->_sessionActivity activityType];
  [(NLSessionActivityGoalProgressTracker *)progressTracker recoverStateFromDataProvider:dataProvider activityType:?];
  MEMORY[0x277D82BD8](activityType);
  activeZoneTracker = [(NLWorkout *)self activeZoneTracker];
  builder = [(NLSessionActivity *)self->_sessionActivity builder];
  [activeZoneTracker recoverStateFromBuilder:?];
  MEMORY[0x277D82BD8](builder);
  *&v2 = MEMORY[0x277D82BD8](activeZoneTracker).n128_u64[0];
  splitsTracker = self->_splitsTracker;
  currentWorkoutEvents = [(NLSessionActivity *)self->_sessionActivity currentWorkoutEvents];
  [(NLSessionActivitySplitsTracker *)splitsTracker recoverStateFromWorkoutEvents:?];
  *&v3 = MEMORY[0x277D82BD8](currentWorkoutEvents).n128_u64[0];
  intervalWorkoutTracker = self->_intervalWorkoutTracker;
  builder2 = [(NLSessionActivity *)self->_sessionActivity builder];
  [(WOIntervalWorkoutTracker *)intervalWorkoutTracker recoverStateWithBuilder:?];
  [(NLAnalyticsWorkoutEventBuilder *)self->_analyticsEventBuilder recoverStateWithSessionActivity:self->_sessionActivity, MEMORY[0x277D82BD8](builder2).n128_f64[0]];
}

- (void)_onEnding
{
  v2 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v2 emitWithSignpost:8];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&self->_trackRunningTracker, 0);
  objc_storeStrong(&self->_wristStateManager, 0);
  [(NLWorkoutZoneTracker *)self->_activityZoneTracker clearRecoveryData];
}

- (void)_onEnded
{
  v2 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v2 emitWithSignpost:9];
  [(NLAnalyticsWorkoutEventBuilder *)self->_analyticsEventBuilder recordWorkout:self, MEMORY[0x277D82BD8](v2).n128_f64[0]];
  [(NLAnalyticsWorkoutEventBuilder *)self->_analyticsEventBuilder sendEvent];
}

- (void)_updateState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  stateCopy = state;
  self->_state = state;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_stateObservers);
  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 workout:selfCopy didMoveToState:{stateCopy, v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (BOOL)advanceInterval
{
  selfCopy = self;
  location[1] = a2;
  if (![(NLSessionActivity *)self->_sessionActivity isInSession])
  {
    return 0;
  }

  if (!selfCopy->_intervalWorkoutTracker)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v3 = v9;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_20AEA4000, v3, v4, "[intervalWorkout] Attempted to advance interval activity, but we are not an interval session", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    return 0;
  }

  if ([(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker firstActivityStarted])
  {
    [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker moveToNextStepManually];
  }

  else
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_20AEA4000, log, type, "[intervalWorkout] Attempted to advance interval activity too early, first interval activity didn't start yet", v10, 2u);
    }

    objc_storeStrong(location, 0);
  }

  return 1;
}

- (void)advanceMultisportActivity
{
  selfCopy = self;
  v14[1] = a2;
  if (self->_multisportWorkoutTracker)
  {
    if ([(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker firstActivityStarted])
    {
      v14[0] = objc_alloc_init(WOMultiSportTransitionsStore);
      multisportWorkoutTracker = selfCopy->_multisportWorkoutTracker;
      transitions = [v14[0] transitions];
      [(WOMultiSportWorkoutTracker *)multisportWorkoutTracker manuallyMoveToNextActivityWithMultisportTransitions:?];
      MEMORY[0x277D82BD8](transitions);
      objc_storeStrong(v14, 0);
    }

    else
    {
      _HKInitializeLogging();
      v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_impl(&dword_20AEA4000, log, type, "[multisport] Attempted to advance multisport activity too early, first multisport activity didn't start yet", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v2 = v10;
      v3 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_20AEA4000, v2, v3, "[multisport] Attempted to advance multisport activity, but we are not a multisport session", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }
}

- (void)startTrackingWithStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  [(NLSessionActivity *)selfCopy->_sessionActivity _startTrackingWithStartDate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)endTrackingWithEndReason:(unint64_t)reason
{
  self->_endReason = reason;
  [(NLSessionActivity *)self->_sessionActivity _endTracking];
  v3 = +[WOChronicle shared];
  [(WOChronicle *)v3 dumpReport];
  MEMORY[0x277D82BD8](v3);
}

- (void)setPaused:(BOOL)paused atDate:(id)date eventSource:(unint64_t)source
{
  selfCopy = self;
  v8 = a2;
  pausedCopy = paused;
  location = 0;
  objc_storeStrong(&location, date);
  [(NLSessionActivity *)selfCopy->_sessionActivity _setPauseTracking:pausedCopy atDate:location eventSource:source];
  objc_storeStrong(&location, 0);
}

- (void)_beginNewActivityWithHKConfiguration:(id)configuration date:(id)date metadata:(id)metadata
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v10 = 0;
  objc_storeStrong(&v10, date);
  v9 = 0;
  objc_storeStrong(&v9, metadata);
  _HKInitializeLogging();
  v8 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v13, location[0]);
    _os_log_impl(&dword_20AEA4000, v8, OS_LOG_TYPE_DEFAULT, "[multisport] NLWorkout is asking HKWorkoutSession to start config: %@", v13, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
  [(HKWorkoutSession *)workoutSession beginNewActivityWithConfiguration:location[0] date:v10 metadata:v9];
  MEMORY[0x277D82BD8](workoutSession);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionActivity:(id)activity didBeginActivity:(id)beginActivity
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v15 = 0;
  objc_storeStrong(&v15, beginActivity);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v19, v15);
    _os_log_impl(&dword_20AEA4000, oslog, type, "[multisport] NLWorkout was told that we began a new activity: %@", v19, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  v8 = MEMORY[0x277D82BE0](selfCopy->_activityObservers);
  v9 = [v8 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(__b[1] + 8 * v6);
      [v12 workout:selfCopy didBeginNewActivity:v15];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionActivity:(id)activity didEndActivity:(id)endActivity
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v5 = 0;
  objc_storeStrong(&v5, endActivity);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginNewActivityFromConfiguration:(id)configuration date:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v17 = 0;
  objc_storeStrong(&v17, date);
  hkWorkoutConfiguration = [location[0] hkWorkoutConfiguration];
  hkWorkoutConfigurationMetadata = [location[0] hkWorkoutConfigurationMetadata];
  if ([(NLWorkout *)selfCopy state]== 4 || [(NLWorkout *)selfCopy state]== 3)
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v22, v17, hkWorkoutConfiguration, hkWorkoutConfigurationMetadata);
      _os_log_impl(&dword_20AEA4000, v14, v13, "[multisport] Beginning a new activity at date %@ with config %@ metadata %@", v22, 0x20u);
    }

    objc_storeStrong(&v14, 0);
    [(NLWorkout *)selfCopy _beginNewActivityWithHKConfiguration:hkWorkoutConfiguration date:v17 metadata:hkWorkoutConfigurationMetadata];
  }

  else if ([(NLWorkout *)selfCopy state]== 1)
  {
    _HKInitializeLogging();
    v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v21, hkWorkoutConfiguration);
      _os_log_impl(&dword_20AEA4000, v12, v11, "[multisport] Not starting a new HK activity for %@ since we are in recovery already.", v21, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v20, hkWorkoutConfiguration);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] Pending beginning new activity until the session starts with config %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [(NLWorkout *)selfCopy _updateTargetZonesFromConfiguration:location[0]];
  v5 = selfCopy;
  workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
  v4 = hkWorkoutConfiguration;
  healthStore = [(NLSessionActivity *)selfCopy->_sessionActivity healthStore];
  builder = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
  [(NLWorkout *)v5 _updateDataSourcesForWorkoutSession:workoutSession currentConfiguration:v4 healthStore:healthStore builder:?];
  MEMORY[0x277D82BD8](builder);
  MEMORY[0x277D82BD8](healthStore);
  MEMORY[0x277D82BD8](workoutSession);
  objc_storeStrong(&hkWorkoutConfigurationMetadata, 0);
  objc_storeStrong(&hkWorkoutConfiguration, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateTargetZonesFromConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  activeZoneTracker = [(NLWorkout *)selfCopy activeZoneTracker];
  [activeZoneTracker updateTargetZonesFrom:location[0]];
  *&v3 = MEMORY[0x277D82BD8](activeZoneTracker).n128_u64[0];
  activeZoneTracker2 = [(NLWorkout *)selfCopy activeZoneTracker];
  [activeZoneTracker2 clearRecoveryData];
  *&v4 = MEMORY[0x277D82BD8](activeZoneTracker2).n128_u64[0];
  heartRateZonesAccumulator = [(NLSessionActivity *)selfCopy->_sessionActivity heartRateZonesAccumulator];
  currentHeartRateTargetZone = [location[0] currentHeartRateTargetZone];
  [(NLSessionActivityHeartRateZonesAccumulator *)heartRateZonesAccumulator updateTargetZone:?];
  MEMORY[0x277D82BD8](currentHeartRateTargetZone);
  *&v5 = MEMORY[0x277D82BD8](heartRateZonesAccumulator).n128_u64[0];
  powerAccumulator = [(NLSessionActivity *)selfCopy->_sessionActivity powerAccumulator];
  currentPowerAlertTargetZone = [location[0] currentPowerAlertTargetZone];
  [(NLSessionActivityPowerAccumulator *)powerAccumulator updateTargetZone:?];
  MEMORY[0x277D82BD8](currentPowerAlertTargetZone);
  *&v6 = MEMORY[0x277D82BD8](powerAccumulator).n128_u64[0];
  powerZonesAccumulator = [(NLSessionActivity *)selfCopy->_sessionActivity powerZonesAccumulator];
  currentPowerZonesAlertTargetZone = [location[0] currentPowerZonesAlertTargetZone];
  [(NLSessionActivityPowerZonesAccumulator *)powerZonesAccumulator updateTargetZone:?];
  MEMORY[0x277D82BD8](currentPowerZonesAlertTargetZone);
  MEMORY[0x277D82BD8](powerZonesAccumulator);
  objc_storeStrong(location, 0);
}

- (void)didMoveToNextStep:(id)step date:(id)date previousStepMetadata:(id)metadata
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, step);
  v11 = 0;
  objc_storeStrong(&v11, date);
  v10 = 0;
  objc_storeStrong(&v10, metadata);
  if (v10)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity insertOrUpdateMetadataToSubActivity:v10];
  }

  _HKInitializeLogging();
  v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, v11);
    _os_log_impl(&dword_20AEA4000, v9, OS_LOG_TYPE_DEFAULT, "[intervalWorkout] Did move to next step at date: %@", v14, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v5 = selfCopy;
  configuration = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v5 date:"_beginNewActivityFromConfiguration:date:"];
  MEMORY[0x277D82BD8](configuration);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didFinishIntervalWorkout:(id)workout date:(id)date
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v7 = 0;
  objc_storeStrong(&v7, date);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[intervalWorkout] Ending our last activity at date: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
  [(HKWorkoutSession *)workoutSession endCurrentActivityOnDate:v7];
  MEMORY[0x277D82BD8](workoutSession);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)insertMetadataInCurrentActivityWithMetadata:(id)metadata
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  [(NLSessionActivity *)selfCopy->_sessionActivity insertOrUpdateMetadataToSubActivity:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_clearTransitionMetadata
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = [(WOMultiSportWorkoutTracker *)self->_multisportWorkoutTracker metadataKeysToDelete];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      [(NLSessionActivity *)selfCopy->_sessionActivity removeMetadata:v10 forceTopLevel:1, v6];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didCancelAutomaticTransition
{
  [(NLWorkout *)self setDateOfLastAutoTransitionStart:?];
  [(NLWorkout *)self setSuggestedAutoTransitionConfiguration:0];
  [(NLWorkout *)self _clearTransitionMetadata];
  [(NLSessionActivity *)self->_sessionActivity cancelAutomaticTransition];
}

- (void)didUpdateLastLegValues:(id)values
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, values);
  objc_storeStrong(location, 0);
}

- (void)startManualTransitionWithDate:(id)date
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v4 = objc_alloc_init(MEMORY[0x277CCDC38]);
  [v4 setActivityType:83];
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v7, v4);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[MultiSport] Beginning a transition with config %@", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLWorkout *)selfCopy _beginNewActivityWithHKConfiguration:v4 date:location[0] metadata:?];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)enterAutomaticTransitionWithSuggestedConfig:(id)config date:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v8 = 0;
  objc_storeStrong(&v8, date);
  [(NLWorkout *)selfCopy setDateOfLastAutoTransitionStart:v8];
  [(NLWorkout *)selfCopy setSuggestedAutoTransitionConfiguration:location[0]];
  sessionActivity = selfCopy->_sessionActivity;
  autoTransitionMetadata = [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker autoTransitionMetadata];
  [NLSessionActivity insertOrUpdateMetadata:"insertOrUpdateMetadata:forceTopLevel:" forceTopLevel:?];
  *&v4 = MEMORY[0x277D82BD8](autoTransitionMetadata).n128_u64[0];
  [(NLSessionActivity *)selfCopy->_sessionActivity enterAutomaticTransition];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didEnterManualTransitionWithDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_storeStrong(location, 0);
}

- (void)_setupForActivityType:(id)type startDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v8 = 0;
  objc_storeStrong(&v8, date);
  unitManager = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
  v7 = [unitManager userDistanceHKUnitForActivityType:location[0]];
  *&v4 = MEMORY[0x277D82BD8](unitManager).n128_u64[0];
  [(NLWorkout *)selfCopy _createZoneTracker:v7 activityType:location[0], v4];
  [(NLWorkout *)selfCopy _updateDistanceSplitsTracker:location[0] multiSportLegStartDate:v8];
  [(NLWorkout *)selfCopy _updateTimeSplitsTracker:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didEnterNewLeg:(id)leg date:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, leg);
  v8 = 0;
  objc_storeStrong(&v8, date);
  v5 = selfCopy;
  configuration = [location[0] configuration];
  currentActivityType = [configuration currentActivityType];
  [NLWorkout _setupForActivityType:v5 startDate:"_setupForActivityType:startDate:"];
  MEMORY[0x277D82BD8](currentActivityType);
  MEMORY[0x277D82BD8](configuration);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)enterNewLeg:(id)leg date:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, leg);
  v32 = 0;
  objc_storeStrong(&v32, date);
  dateOfLastAutoTransitionStart = [(NLWorkout *)selfCopy dateOfLastAutoTransitionStart];
  v30 = 0;
  v25 = 0;
  if (dateOfLastAutoTransitionStart)
  {
    suggestedAutoTransitionConfiguration = [(NLWorkout *)selfCopy suggestedAutoTransitionConfiguration];
    v30 = 1;
    v25 = suggestedAutoTransitionConfiguration != 0;
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](suggestedAutoTransitionConfiguration);
  }

  *&v4 = MEMORY[0x277D82BD8](dateOfLastAutoTransitionStart).n128_u64[0];
  if (v25)
  {
    v20 = v32;
    dateOfLastAutoTransitionStart2 = [(NLWorkout *)selfCopy dateOfLastAutoTransitionStart];
    v22 = [v20 compare:?];
    MEMORY[0x277D82BD8](dateOfLastAutoTransitionStart2);
    if (v22 == -1)
    {
      _HKInitializeLogging();
      v29 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        log = v29;
        type = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_impl(&dword_20AEA4000, log, type, "[MultiSport] The next activity overlaps our transition. Force the new start to one second after transition time.", v27, 2u);
      }

      objc_storeStrong(&v29, 0);
      dateOfLastAutoTransitionStart3 = [(NLWorkout *)selfCopy dateOfLastAutoTransitionStart];
      v5 = [(NSDate *)dateOfLastAutoTransitionStart3 dateByAddingTimeInterval:1.0];
      v6 = v32;
      v32 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](dateOfLastAutoTransitionStart3);
    }

    _HKInitializeLogging();
    v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      suggestedAutoTransitionConfiguration2 = [(NLWorkout *)selfCopy suggestedAutoTransitionConfiguration];
      dateOfLastAutoTransitionStart4 = [(NLWorkout *)selfCopy dateOfLastAutoTransitionStart];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v35, suggestedAutoTransitionConfiguration2, dateOfLastAutoTransitionStart4, v32);
      _os_log_impl(&dword_20AEA4000, v26, OS_LOG_TYPE_DEFAULT, "[MultiSport] Adding cached automatic transition %@ with start %@ end %@", v35, 0x20u);
      MEMORY[0x277D82BD8](dateOfLastAutoTransitionStart4);
      MEMORY[0x277D82BD8](suggestedAutoTransitionConfiguration2);
    }

    objc_storeStrong(&v26, 0);
    workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
    suggestedAutoTransitionConfiguration3 = [(NLWorkout *)selfCopy suggestedAutoTransitionConfiguration];
    dateOfLastAutoTransitionStart5 = [(NLWorkout *)selfCopy dateOfLastAutoTransitionStart];
    [HKWorkoutSession beginNewActivityWithConfiguration:workoutSession date:"beginNewActivityWithConfiguration:date:metadata:" metadata:suggestedAutoTransitionConfiguration3];
    MEMORY[0x277D82BD8](dateOfLastAutoTransitionStart5);
    MEMORY[0x277D82BD8](suggestedAutoTransitionConfiguration3);
    *&v7 = MEMORY[0x277D82BD8](workoutSession).n128_u64[0];
    workoutSession2 = [(NLSessionController *)selfCopy->_sessionController workoutSession];
    [(HKWorkoutSession *)workoutSession2 endCurrentActivityOnDate:v32];
    *&v8 = MEMORY[0x277D82BD8](workoutSession2).n128_u64[0];
    [(NLWorkout *)selfCopy _clearTransitionMetadata];
  }

  [(NLWorkout *)selfCopy setDateOfLastAutoTransitionStart:v4];
  [(NLWorkout *)selfCopy setSuggestedAutoTransitionConfiguration:0];
  v9 = selfCopy;
  configuration = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v9 date:"_beginNewActivityFromConfiguration:date:"];
  MEMORY[0x277D82BD8](configuration);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didRestoreActivityType:(id)type startDate:(id)date autoTransitionStartDate:(id)startDate autoTransitionUUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v29 = 0;
  objc_storeStrong(&v29, date);
  v28 = 0;
  objc_storeStrong(&v28, startDate);
  v27 = 0;
  objc_storeStrong(&v27, d);
  if (v28)
  {
    [(NLWorkout *)selfCopy setDateOfLastAutoTransitionStart:v28];
    v18 = objc_alloc_init(MEMORY[0x277CCDC38]);
    [(NLWorkout *)selfCopy setSuggestedAutoTransitionConfiguration:?];
    *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    suggestedAutoTransitionConfiguration = [(NLWorkout *)selfCopy suggestedAutoTransitionConfiguration];
    [(HKWorkoutConfiguration *)suggestedAutoTransitionConfiguration setActivityType:83];
    *&v7 = MEMORY[0x277D82BD8](suggestedAutoTransitionConfiguration).n128_u64[0];
    v20 = v27;
    suggestedAutoTransitionConfiguration2 = [(NLWorkout *)selfCopy suggestedAutoTransitionConfiguration];
    [(HKWorkoutConfiguration *)suggestedAutoTransitionConfiguration2 setSuggestedActivityUUID:v20];
    *&v8 = MEMORY[0x277D82BD8](suggestedAutoTransitionConfiguration2).n128_u64[0];
    [(NLSessionActivity *)selfCopy->_sessionActivity enterAutomaticTransition];
  }

  else
  {
    [(NLWorkout *)selfCopy setDateOfLastAutoTransitionStart:?];
    [(NLWorkout *)selfCopy setSuggestedAutoTransitionConfiguration:0];
  }

  configuration = [location[0] configuration];
  currentActivityType = [configuration currentActivityType];
  [v12 _setupForActivityType:? startDate:?];
  MEMORY[0x277D82BD8](currentActivityType);
  *&v9 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
  v15 = selfCopy;
  configuration2 = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v15 date:"_beginNewActivityFromConfiguration:date:"];
  *&v10 = MEMORY[0x277D82BD8](configuration2).n128_u64[0];
  builder = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
  workoutActivities = [(HKLiveWorkoutBuilder *)builder workoutActivities];
  lastObject = [workoutActivities lastObject];
  *&v11 = MEMORY[0x277D82BD8](workoutActivities).n128_u64[0];
  [(NLSessionActivity *)selfCopy->_sessionActivity _recoverIntoActivity:lastObject, v11];
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(&builder, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)suggestEndingWorkout
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestEndingDelegate);
  [WeakRetained suggestEndingWorkout:self];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (void)sessionActivity:(id)activity willEndWithHKWorkoutSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v6 = 0;
  objc_storeStrong(&v6, snapshot);
  endingDelegate = [(NLWorkout *)selfCopy endingDelegate];
  [(NLWorkoutEndingDelegate *)endingDelegate workout:selfCopy willEndWithHKWorkoutSnapshot:v6 endReason:selfCopy->_endReason];
  MEMORY[0x277D82BD8](endingDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)sessionActivity:(id)activity didUpdateWorkout:(id)workout workoutIsFinal:(BOOL)final
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v9 = 0;
  objc_storeStrong(&v9, workout);
  objc_storeStrong(&selfCopy->_hkWorkout, v9);
  if (final)
  {
    endingDelegate = [(NLWorkout *)selfCopy endingDelegate];
    [(NLWorkoutEndingDelegate *)endingDelegate workout:selfCopy didEndWithHKWorkout:v9 endReason:selfCopy->_endReason];
    MEMORY[0x277D82BD8](endingDelegate);
  }

  else
  {
    endingDelegate2 = [(NLWorkout *)selfCopy endingDelegate];
    [(NLWorkoutEndingDelegate *)endingDelegate2 workout:selfCopy didUpdateHKWorkout:v9];
    MEMORY[0x277D82BD8](endingDelegate2);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didDiscardSessionActivity:(id)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  selfCopy->_discarded = 1;
  endingDelegate = [(NLWorkout *)selfCopy endingDelegate];
  [(NLWorkoutEndingDelegate *)endingDelegate didDiscardWorkout:selfCopy];
  MEMORY[0x277D82BD8](endingDelegate);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldAutoDiscardBasedOnDuration:(double)duration
{
  if (self->_disableAutoDiscard)
  {
    return 0;
  }

  if (self->_endReason == 14)
  {
    return 1;
  }

  return self->_endReason != 13 && self->_endReason != 12 && duration <= NLWorkoutAutoDiscardDurationLimit();
}

- (void)currentMetricPlatterTypeDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  analyticsEventBuilder = [(NLWorkout *)selfCopy analyticsEventBuilder];
  v7 = location[0];
  [(NLWorkout *)selfCopy elapsedTime];
  [(NLAnalyticsWorkoutEventBuilder *)analyticsEventBuilder recordMetricPlatterType:v7 atElapsedTime:?];
  *&v3 = MEMORY[0x277D82BD8](analyticsEventBuilder).n128_u64[0];
  if ([(NLSessionActivity *)selfCopy->_sessionActivity isInSession])
  {
    sessionActivity = selfCopy->_sessionActivity;
    analyticsEventBuilder2 = [(NLWorkout *)selfCopy analyticsEventBuilder];
    encodedMetricPlatterStatistics = [(NLAnalyticsWorkoutEventBuilder *)analyticsEventBuilder2 encodedMetricPlatterStatistics];
    [NLSessionActivity insertOrUpdateMetadata:"insertOrUpdateMetadata:forceTopLevel:" forceTopLevel:?];
    MEMORY[0x277D82BD8](encodedMetricPlatterStatistics);
    MEMORY[0x277D82BD8](analyticsEventBuilder2);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)workoutBuddyIsActive
{
  sessionActivity = [(NLWorkout *)self sessionActivity];
  configuration = [(NLSessionActivity *)sessionActivity configuration];
  v8 = 0;
  v6 = 0;
  LOBYTE(v5) = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)configuration configureWithWorkoutVoiceMotivationWithShouldLog:0])
  {
    sessionActivity2 = [(NLWorkout *)self sessionActivity];
    v8 = 1;
    configuration2 = [(NLSessionActivity *)sessionActivity2 configuration];
    v6 = 1;
    v5 = ![(WOCoreLiveWorkoutConfiguration *)configuration2 isWorkoutBuddyMuted];
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](configuration2);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](sessionActivity2);
  }

  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](sessionActivity);
  return v5 & 1;
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  if ((state == 3 || state == 8 || state == 5) && toState == 6)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:4];
  }

  else if (toState == 10)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:5];
  }

  else if (toState == 7)
  {
    [(NLWorkout *)selfCopy _evaluateEnded];
  }

  else if (state == 4 || toState != 3)
  {
    if (state == 6 && toState == 8)
    {
      [(FIUIStateMachine *)selfCopy->_stateMachine event:3];
      [(NLAnalyticsWorkoutEventBuilder *)selfCopy->_analyticsEventBuilder recordAutoPause];
    }

    else if (state == 6 && toState == 5)
    {
      [(FIUIStateMachine *)selfCopy->_stateMachine event:3];
    }

    else if (toState == 6)
    {
      [(FIUIStateMachine *)selfCopy->_stateMachine event:2];
    }
  }

  else
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:3];
    [(NLAnalyticsWorkoutEventBuilder *)selfCopy->_analyticsEventBuilder recordManualPause];
  }

  [(NLWorkout *)selfCopy updateObserversWithPausedReasonsForStateChange:toState];
  objc_storeStrong(location, 0);
}

- (void)updateObserversWithPausedReasonsForStateChange:(unint64_t)change
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  changeCopy = change;
  sessionActivity = [(NLWorkout *)self sessionActivity];
  IsPaused_1 = 1;
  if (!NLSessionActivityIsActive_1(sessionActivity))
  {
    IsPaused_1 = NLSessionActivityStateIsPaused_1(changeCopy);
  }

  MEMORY[0x277D82BD8](sessionActivity);
  if (IsPaused_1)
  {
    v13 = 0;
    switch(changeCopy)
    {
      case 3uLL:
        v13 = 1;
        break;
      case 4uLL:
        v13 = 5;
        break;
      case 5uLL:
        v13 = 4;
        break;
      case 8uLL:
        v13 = 2;
        break;
      case 9uLL:
        v13 = 6;
        break;
    }

    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_stateObservers);
    v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(__b[1] + 8 * v5);
        [v12 workout:selfCopy pausedReasonsDidUpdate:v13];
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_evaluateEnded
{
  if ([(NLSessionActivity *)self->_sessionActivity state]== 7 && [(NLSessionController *)self->_sessionController sessionState]== 13)
  {
    [(FIUIStateMachine *)self->_stateMachine event:6];
  }
}

- (void)sessionController:(id)controller didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  stateCopy = state;
  toStateCopy = toState;
  if (__PAIR128__(state, toState) == __PAIR128__(3, 4))
  {
    if (selfCopy->_intervalWorkoutTracker)
    {
      configuration = [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker configuration];
      hkWorkoutConfiguration = [configuration hkWorkoutConfiguration];
      hkWorkoutConfigurationMetadata = [configuration hkWorkoutConfigurationMetadata];
      _HKInitializeLogging();
      v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        startDate = [(NLWorkout *)selfCopy startDate];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v40, startDate, hkWorkoutConfiguration, hkWorkoutConfigurationMetadata);
        _os_log_impl(&dword_20AEA4000, v31, v30, "[interval] Beginning a first activity at date %@ with config %@, metadata %@", v40, 0x20u);
        MEMORY[0x277D82BD8](startDate);
      }

      objc_storeStrong(&v31, 0);
      v19 = selfCopy;
      v18 = hkWorkoutConfiguration;
      startDate2 = [(NLWorkout *)selfCopy startDate];
      [NLWorkout _beginNewActivityWithHKConfiguration:v19 date:"_beginNewActivityWithHKConfiguration:date:metadata:" metadata:v18];
      *&v5 = MEMORY[0x277D82BD8](startDate2).n128_u64[0];
      intervalWorkoutTracker = selfCopy->_intervalWorkoutTracker;
      startDate3 = [(NLWorkout *)selfCopy startDate];
      [(WOIntervalWorkoutTracker *)intervalWorkoutTracker beginFirstActivityWithDate:?];
      *&v6 = MEMORY[0x277D82BD8](startDate3).n128_u64[0];
      [(WOIntervalWorkoutTracker *)selfCopy->_intervalWorkoutTracker setFirstActivityStarted:1, v6];
      objc_storeStrong(&hkWorkoutConfigurationMetadata, 0);
      objc_storeStrong(&hkWorkoutConfiguration, 0);
      objc_storeStrong(&configuration, 0);
    }

    else if (selfCopy->_multisportWorkoutTracker)
    {
      configuration2 = [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker configuration];
      hkWorkoutConfiguration2 = [configuration2 hkWorkoutConfiguration];
      hkWorkoutConfigurationMetadata2 = [configuration2 hkWorkoutConfigurationMetadata];
      _HKInitializeLogging();
      v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        startDate4 = [(NLWorkout *)selfCopy startDate];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v39, startDate4, hkWorkoutConfiguration2, hkWorkoutConfigurationMetadata2);
        _os_log_impl(&dword_20AEA4000, v26, OS_LOG_TYPE_DEFAULT, "[multisport] Beginning a first activity at date %@ with config %@, metadata %@", v39, 0x20u);
        MEMORY[0x277D82BD8](startDate4);
      }

      objc_storeStrong(&v26, 0);
      v15 = selfCopy;
      v14 = hkWorkoutConfiguration2;
      startDate5 = [(NLWorkout *)selfCopy startDate];
      [NLWorkout _beginNewActivityWithHKConfiguration:v15 date:"_beginNewActivityWithHKConfiguration:date:metadata:" metadata:v14];
      *&v7 = MEMORY[0x277D82BD8](startDate5).n128_u64[0];
      [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker setFirstActivityStarted:1, v7];
      objc_storeStrong(&hkWorkoutConfigurationMetadata2, 0);
      objc_storeStrong(&hkWorkoutConfiguration2, 0);
      objc_storeStrong(&configuration2, 0);
    }
  }

  else if (toStateCopy == 9)
  {
    v11 = selfCopy;
    workoutSession = [location[0] workoutSession];
    endDate = [workoutSession endDate];
    [(NLWorkout *)v11 endCollectionWithEndDate:?];
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](workoutSession);
  }

  else if (toStateCopy == 12)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity removeSessionStateObserver:selfCopy->_sessionController];
    if (!selfCopy->_endReason)
    {
      [(NLWorkout *)selfCopy endTrackingWithEndReason:18];
    }

    workoutSession2 = [location[0] workoutSession];
    endDate2 = [workoutSession2 endDate];
    [v8 endCollectionWithEndDate:?];
    MEMORY[0x277D82BD8](endDate2);
    MEMORY[0x277D82BD8](workoutSession2);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionController:(id)controller didRecieveWorkoutEvent:(id)event
{
  v13[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, event);
  workoutSession = [(NLSessionController *)selfCopy->_sessionController workoutSession];
  isGymKitSession = [(HKWorkoutSession *)workoutSession isGymKitSession];
  *&v4 = MEMORY[0x277D82BD8](workoutSession).n128_u64[0];
  if ((isGymKitSession & 1) == 0)
  {
    sessionActivity = selfCopy->_sessionActivity;
    v13[0] = v10;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{1, v4}];
    [(NLSessionActivity *)sessionActivity addWorkoutEvents:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionController:(id)controller didSuggestWorkoutConfiguration:(id)configuration date:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v22 = 0;
  objc_storeStrong(&v22, configuration);
  v21 = 0;
  objc_storeStrong(&v21, date);
  _HKInitializeLogging();
  v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, v21, v22);
    _os_log_impl(&dword_20AEA4000, v20, v19, "[multisport] We got a suggested change at date %@ to workout configuration %@", v25, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  objc_initWeak(&v18, selfCopy->_multisportWorkoutTracker);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __67__NLWorkout_sessionController_didSuggestWorkoutConfiguration_date___block_invoke;
  v14 = &unk_277D89408;
  objc_copyWeak(&v17, &v18);
  v15 = MEMORY[0x277D82BE0](v22);
  v16 = MEMORY[0x277D82BE0](v21);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

double __67__NLWorkout_sessionController_didSuggestWorkoutConfiguration_date___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleSuggestedConfiguration:*(a1 + 32) date:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)endCollectionWithEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  activityType = [(NLSessionActivity *)selfCopy->_sessionActivity activityType];
  requiresSessionStopDateForEndCollection = [(FIUIWorkoutActivityType *)activityType requiresSessionStopDateForEndCollection];
  *&v3 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  if (requiresSessionStopDateForEndCollection)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity _endCollectionWithEndDate:location[0], v3];
  }

  else
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity _endCollection];
  }

  objc_storeStrong(location, 0);
}

- (void)sessionEncounteredSessionError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(NLSessionActivity *)selfCopy->_sessionActivity removeSessionStateObserver:selfCopy->_sessionController];
  if (!selfCopy->_endReason)
  {
    v13 = +[NLWorkout _workoutEndReasonForHKErrorCode:](NLWorkout, "_workoutEndReasonForHKErrorCode:", [location[0] code]);
    v12 = v13 != 17;
    if (v13 == 17)
    {
      _HKInitializeLogging();
      v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v10 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_66(v16, location[0]);
        _os_log_fault_impl(&dword_20AEA4000, v11, v10, "Ending workout due to HKWorkoutSessionError  %{public}@", v16, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      v9 = objc_alloc_init(WOAutoBugCaptureReporter);
      v4 = v9;
      v8 = +[WOAutoBugCaptureReporterTypes endedUnexpectedSessionError];
      v3 = MEMORY[0x277CCACA8];
      domain = [location[0] domain];
      v6 = [v3 stringWithFormat:@"Domain: %@", domain];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Code: %ld", objc_msgSend(location[0], "code")];
      [WOAutoBugCaptureReporter reportSnapshotWithType:v4 subtype:"reportSnapshotWithType:subtype:context:thresholdValues:" context:v8 thresholdValues:v6];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](domain);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v9, 0);
    }

    [(NLWorkout *)selfCopy endTrackingWithEndReason:v13];
  }

  if ([(NLSessionActivity *)selfCopy->_sessionActivity state]== 10)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity _endCollection];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didUpdateWorkoutLocationType:(int64_t)type
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = type;
  if (type == 2)
  {
    [(NLSessionActivity *)selfCopy->_sessionActivity setLocationTypeToIndoor:1];
    v13[0] = [MEMORY[0x277CBEB38] dictionary];
    [v13[0] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4C0]];
    [(NLSessionActivity *)selfCopy->_sessionActivity insertOrUpdateMetadata:v13[0] forceTopLevel:0];
    builder = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
    additionalDataSources = [(HKLiveWorkoutBuilder *)builder additionalDataSources];
    v11 = [additionalDataSources containsObject:selfCopy->_routesDataSource];
    MEMORY[0x277D82BD8](additionalDataSources);
    *&v3 = MEMORY[0x277D82BD8](builder).n128_u64[0];
    if (v11)
    {
      builder2 = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
      additionalDataSources2 = [(HKLiveWorkoutBuilder *)builder2 additionalDataSources];
      v12 = [additionalDataSources2 mutableCopy];
      MEMORY[0x277D82BD8](additionalDataSources2);
      *&v4 = MEMORY[0x277D82BD8](builder2).n128_u64[0];
      [v12 removeObject:{selfCopy->_routesDataSource, v4}];
      v8 = [v12 copy];
      builder3 = [(NLSessionActivity *)selfCopy->_sessionActivity builder];
      [(HKLiveWorkoutBuilder *)builder3 setAdditionalDataSources:v8];
      MEMORY[0x277D82BD8](builder3);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&selfCopy->_routesDataSource, 0);
      [(NLSessionActivity *)selfCopy->_sessionActivity removeMetadata:*MEMORY[0x277D0A7A0] forceTopLevel:1];
      [(NLSessionActivity *)selfCopy->_sessionActivity removeMetadata:*MEMORY[0x277D0A790] forceTopLevel:1];
      [(NLSessionActivity *)selfCopy->_sessionActivity removeMetadata:*MEMORY[0x277CCC488] forceTopLevel:1];
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(v13, 0);
  }
}

+ (unint64_t)_workoutEndReasonForHKErrorCode:(int64_t)code
{
  if (code == 8)
  {
    return 4;
  }

  if (code == 1200)
  {
    return 19;
  }

  return 17;
}

- (void)alertSource:(id)source didTriggerAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v6 = 0;
  objc_storeStrong(&v6, alert);
  workoutAlertDelegate = [(NLWorkout *)selfCopy workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)workoutAlertDelegate alertSource:selfCopy didTriggerAlert:v6];
  MEMORY[0x277D82BD8](workoutAlertDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)alertSource:(id)source speakUtterance:(id)utterance
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v6 = 0;
  objc_storeStrong(&v6, utterance);
  workoutAlertDelegate = [(NLWorkout *)selfCopy workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)workoutAlertDelegate alertSource:selfCopy speakUtterance:v6];
  MEMORY[0x277D82BD8](workoutAlertDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canTriggerAlerts
{
  workoutAlertDelegate = [(NLWorkout *)self workoutAlertDelegate];
  canTriggerAlerts = [(NLWorkoutAlertDelegate *)workoutAlertDelegate canTriggerAlerts];
  MEMORY[0x277D82BD8](workoutAlertDelegate);
  return canTriggerAlerts;
}

- (void)progressTracker:(id)tracker didProgressTowardsGoal:(id)goal completionFactor:(double)factor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tracker);
  v8 = 0;
  objc_storeStrong(&v8, goal);
  progressDelegate = [(NLWorkout *)selfCopy progressDelegate];
  [(NLWorkoutProgressDelegate *)progressDelegate workout:selfCopy didProgressTowardsGoal:v8 completionFactor:factor];
  MEMORY[0x277D82BD8](progressDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)locations completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(NLSessionActivity *)selfCopy->_sessionActivity insertLocations:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)completedActivityRing:(int64_t)ring activitySummary:(id)summary
{
  selfCopy = self;
  v15 = a2;
  ringCopy = ring;
  location = 0;
  objc_storeStrong(&location, summary);
  objc_initWeak(&v12, selfCopy);
  queue = dispatch_get_global_queue(-2, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __51__NLWorkout_completedActivityRing_activitySummary___block_invoke;
  v9 = &unk_277D89430;
  v10 = MEMORY[0x277D82BE0](location);
  v11[1] = ringCopy;
  objc_copyWeak(v11, &v12);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(v11);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v12);
  objc_storeStrong(&location, 0);
}

void __51__NLWorkout_completedActivityRing_activitySummary___block_invoke(uint64_t a1)
{
  v3[2] = a1;
  v3[1] = a1;
  if ((FIAreGoalCompletionNotificationsEnabled() & 1) != 0 && ([*(a1 + 32) isPaused] & 1) == 0)
  {
    v3[0] = [NLWorkoutAlertRingCompletion ringCompletionAlertWithCompletedRing:*(a1 + 48) activitySummary:*(a1 + 32)];
    location = objc_loadWeakRetained((a1 + 40));
    if (location)
    {
      [location alertSource:location didTriggerAlert:v3[0]];
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v3, 0);
  }
}

- (void)activityRingsUpdatedWithSummary:(id)summary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, summary);
  objc_storeStrong(location, 0);
}

- (void)_saveTargetZoneMetadata
{
  activeZoneTracker = [(NLWorkout *)self activeZoneTracker];
  *&v2 = MEMORY[0x277D82BD8](activeZoneTracker).n128_u64[0];
  if (activeZoneTracker)
  {
    activeZoneTracker2 = [(NLWorkout *)self activeZoneTracker];
    [activeZoneTracker2 saveTargetZonesMetadata];
    MEMORY[0x277D82BD8](activeZoneTracker2);
  }
}

- (BOOL)shouldSuppressAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  configuration = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
  v18 = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)configuration isUltraMode])
  {
    v18 = [location[0] type] != 26;
  }

  *&v3 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
  if (v18)
  {
    currentlyInTransition = 1;
  }

  else
  {
    configuration2 = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
    isMultiSport = [(WOCoreLiveWorkoutConfiguration *)configuration2 isMultiSport];
    *&v4 = MEMORY[0x277D82BD8](configuration2).n128_u64[0];
    if (isMultiSport)
    {
      currentlyInTransition = [(WOMultiSportWorkoutTracker *)selfCopy->_multisportWorkoutTracker currentlyInTransition];
    }

    else
    {
      configuration3 = [(NLSessionActivity *)selfCopy->_sessionActivity configuration];
      isInterval = [(WOCoreLiveWorkoutConfiguration *)configuration3 isInterval];
      v5 = MEMORY[0x277D82BD8](configuration3).n128_u64[0];
      if (isInterval)
      {
        if ([location[0] type] == 12)
        {
          currentlyInTransition = 1;
          goto LABEL_23;
        }

        activityType = [(NLSessionActivity *)selfCopy->_sessionActivity activityType];
        v12 = [WOTargetAlertsBridge intervalTargetAlertsEnabledForActivityType:?];
        v5 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
        if (!v12)
        {
          currentlyInTransition = ([location[0] type] - 8) <= 2;
          goto LABEL_23;
        }
      }

      v9 = +[WOCoreTrackRunningCoordinator shared];
      v19 = 0;
      v10 = 0;
      if ([(WOCoreTrackRunningCoordinator *)v9 trackModeEnabledLocal])
      {
        activityType2 = [(NLSessionActivity *)selfCopy->_sessionActivity activityType];
        v19 = 1;
        v10 = [WOTrackAlertsBridge lapAlertsEnabledForActivityType:?];
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](activityType2);
      }

      *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10)
      {
        currentlyInTransition = [location[0] type] == 6;
      }

      else if ([location[0] isPowerAlert])
      {
        v8 = 1;
        if ([(NLWorkout *)selfCopy experienceType]!= 2)
        {
          v8 = [(NLWorkout *)selfCopy experienceType]== 1;
        }

        currentlyInTransition = v8;
      }

      else
      {
        currentlyInTransition = 0;
      }
    }
  }

LABEL_23:
  objc_storeStrong(location, 0);
  return currentlyInTransition & 1;
}

- (void)unitPreferencesUpdatedWithUnitManager:(id)manager
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = location[0];
  activityType = [(NLWorkout *)selfCopy activityType];
  v8 = [v5 userDistanceHKUnitForActivityType:?];
  MEMORY[0x277D82BD8](activityType);
  _HKInitializeLogging();
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_66(v11, selfCopy, v8);
    _os_log_impl(&dword_20AEA4000, v7, OS_LOG_TYPE_DEFAULT, "[Workout] Workout %{public}@ updating user distance unit to %{public}@", v11, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  activeZoneTracker = [(NLWorkout *)selfCopy activeZoneTracker];
  [activeZoneTracker updateDistanceUnit:v8];
  *&v3 = MEMORY[0x277D82BD8](activeZoneTracker).n128_u64[0];
  [(NLSessionActivitySplitsTracker *)selfCopy->_splitsTracker updateDistanceUnit:v8, v3];
  [(NLSessionActivity *)selfCopy->_sessionActivity updateDistanceUnit:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)wristStateUpdatedWithOnWrist:(BOOL)wrist
{
  if (!wrist)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:1 eventSource:?];
    MEMORY[0x277D82BD8](date);
  }
}

- (void)onChargerStateUpdatedWith:(BOOL)with
{
  if (with)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:1 eventSource:?];
    MEMORY[0x277D82BD8](date);
  }
}

- (void)addActivityObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_activityObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeActivityObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_activityObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  availableCopy = available;
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (availableCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_1_8_66(v10, v4);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[NLWorkout] GPS Reported as available:%{public}@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  selfCopy->_gpsUnavailable = !availableCopy;
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dataProvider:(id)provider didReceiveSegmentMarker:(id)marker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v12 = 0;
  objc_storeStrong(&v12, marker);
  v8 = [WOSegmentAlert alloc];
  v7 = v12;
  activityType = [(NLSessionActivity *)selfCopy->_sessionActivity activityType];
  activityMoveMode = [(NLSessionActivity *)selfCopy->_sessionActivity activityMoveMode];
  v11 = [(WOSegmentAlert *)v8 initWithWorkoutAlertType:26 segmentMarker:v7 activityType:activityType activityMoveMode:activityMoveMode gpsAvailable:!selfCopy->_gpsUnavailable shouldHideTime:0];
  *&v5 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  workoutAlertDelegate = [(NLWorkout *)selfCopy workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)workoutAlertDelegate alertSource:selfCopy didTriggerAlert:v11];
  MEMORY[0x277D82BD8](workoutAlertDelegate);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)activityHeartRateDidBecomeStale:(id)stale
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stale);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdateWorkout:(id)workout
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, workout);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, to);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (NLWorkoutProgressDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

- (NLWorkoutAlertDelegate)workoutAlertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutAlertDelegate);

  return WeakRetained;
}

- (NLWorkoutEndingDelegate)endingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_endingDelegate);

  return WeakRetained;
}

- (NLWorkoutSuggestEndingDelegate)suggestEndingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestEndingDelegate);

  return WeakRetained;
}

@end