@interface NLWorkout
+ (int64_t)experienceTypeForCatalogWorkout:(id)a3 isGymKitWorkout:(BOOL)a4 fitnessMachineSeymourStartSource:(unint64_t)a5;
+ (unint64_t)_workoutEndReasonForHKErrorCode:(int64_t)a3;
- (BOOL)advanceInterval;
- (BOOL)canTriggerAlerts;
- (BOOL)isGymKitWorkout;
- (BOOL)isMultiSportWorkout;
- (BOOL)shouldAutoDiscardBasedOnDuration:(double)a3;
- (BOOL)shouldSuppressAlert:(id)a3;
- (BOOL)workoutBuddyIsActive;
- (NLWorkout)initWithWorkoutConfiguration:(id)a3 healthStore:(id)a4 formattingManager:(id)a5 locationProvider:(id)a6;
- (NLWorkout)initWithWorkoutConfiguration:(id)a3 healthStore:(id)a4 formattingManager:(id)a5 session:(id)a6 locationProvider:(id)a7;
- (NLWorkoutAlertDelegate)workoutAlertDelegate;
- (NLWorkoutEndingDelegate)endingDelegate;
- (NLWorkoutProgressDelegate)progressDelegate;
- (NLWorkoutSuggestEndingDelegate)suggestEndingDelegate;
- (NSString)description;
- (double)elapsedTime;
- (id)activeZoneTracker;
- (id)keyValueDescription;
- (void)_beginNewActivityFromConfiguration:(id)a3 date:(id)a4;
- (void)_beginNewActivityWithHKConfiguration:(id)a3 date:(id)a4 metadata:(id)a5;
- (void)_clearTransitionMetadata;
- (void)_configureStateActions;
- (void)_configureStateMachineWithUUID:(id)a3;
- (void)_createZoneTracker:(id)a3 activityType:(id)a4;
- (void)_evaluateEnded;
- (void)_handleSplitStorageChanged:(id)a3;
- (void)_handleTargetZoneChanged:(id)a3;
- (void)_onEnded;
- (void)_onEnding;
- (void)_onPrepare;
- (void)_onRecovery;
- (void)_saveTargetZoneMetadata;
- (void)_setupForActivityType:(id)a3 startDate:(id)a4;
- (void)_updateDataSourcesForWorkoutSession:(id)a3 currentConfiguration:(id)a4 healthStore:(id)a5 builder:(id)a6;
- (void)_updateDistanceSplitsTracker:(id)a3 multiSportLegStartDate:(id)a4;
- (void)_updateState:(int64_t)a3;
- (void)_updateTargetZonesFromConfiguration:(id)a3;
- (void)_updateTimeSplitsTracker:(id)a3;
- (void)activityHeartRateDidBecomeStale:(id)a3;
- (void)activityRingsUpdatedWithSummary:(id)a3;
- (void)addActivityObserver:(id)a3;
- (void)addMultisportWorkoutProgressObserver:(id)a3;
- (void)addStateObserver:(id)a3;
- (void)advanceMultisportActivity;
- (void)alertSource:(id)a3 didTriggerAlert:(id)a4;
- (void)alertSource:(id)a3 speakUtterance:(id)a4;
- (void)completedActivityRing:(int64_t)a3 activitySummary:(id)a4;
- (void)currentMetricPlatterTypeDidChange:(id)a3;
- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4;
- (void)dataProvider:(id)a3 didReceiveSegmentMarker:(id)a4;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4;
- (void)dataProvider:(id)a3 didUpdateWorkout:(id)a4;
- (void)didCancelAutomaticTransition;
- (void)didDiscardSessionActivity:(id)a3;
- (void)didEnterManualTransitionWithDate:(id)a3;
- (void)didEnterNewLeg:(id)a3 date:(id)a4;
- (void)didFinishIntervalWorkout:(id)a3 date:(id)a4;
- (void)didMoveToNextStep:(id)a3 date:(id)a4 previousStepMetadata:(id)a5;
- (void)didRestoreActivityType:(id)a3 startDate:(id)a4 autoTransitionStartDate:(id)a5 autoTransitionUUID:(id)a6;
- (void)didUpdateLastLegValues:(id)a3;
- (void)didUpdateWorkoutLocationType:(int64_t)a3;
- (void)endCollectionWithEndDate:(id)a3;
- (void)endTrackingWithEndReason:(unint64_t)a3;
- (void)enterAutomaticTransitionWithSuggestedConfig:(id)a3 date:(id)a4;
- (void)enterNewLeg:(id)a3 date:(id)a4;
- (void)insertLocations:(id)a3 completion:(id)a4;
- (void)insertMetadataInCurrentActivityWithMetadata:(id)a3;
- (void)onChargerStateUpdatedWith:(BOOL)a3;
- (void)progressTracker:(id)a3 didProgressTowardsGoal:(id)a4 completionFactor:(double)a5;
- (void)removeActivityObserver:(id)a3;
- (void)removeStateObserver:(id)a3;
- (void)sessionActivity:(id)a3 didBeginActivity:(id)a4;
- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)sessionActivity:(id)a3 didEndActivity:(id)a4;
- (void)sessionActivity:(id)a3 didUpdateWorkout:(id)a4 workoutIsFinal:(BOOL)a5;
- (void)sessionActivity:(id)a3 willEndWithHKWorkoutSnapshot:(id)a4;
- (void)sessionController:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)sessionController:(id)a3 didRecieveWorkoutEvent:(id)a4;
- (void)sessionController:(id)a3 didSuggestWorkoutConfiguration:(id)a4 date:(id)a5;
- (void)sessionEncounteredSessionError:(id)a3;
- (void)setIntervalWorkoutProgressDelegate:(id)a3;
- (void)setPaused:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5;
- (void)setRaceTrackerDelegate:(id)a3;
- (void)startManualTransitionWithDate:(id)a3;
- (void)startTrackingWithStartDate:(id)a3;
- (void)suggestEndingWorkout;
- (void)unitPreferencesUpdatedWithUnitManager:(id)a3;
- (void)updateObserversWithPausedReasonsForStateChange:(unint64_t)a3;
- (void)wristStateUpdatedWithOnWrist:(BOOL)a3;
@end

@implementation NLWorkout

- (NLWorkout)initWithWorkoutConfiguration:(id)a3 healthStore:(id)a4 formattingManager:(id)a5 locationProvider:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = [location[0] topLevelHKWorkoutConfiguration];
  v18 = 0;
  v6 = objc_alloc(MEMORY[0x277CCDC90]);
  v16 = v18;
  v14 = [v6 initWithHealthStore:v22 configuration:v19 error:&v16];
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

  v8 = v24;
  v24 = 0;
  v24 = [(NLWorkout *)v8 initWithWorkoutConfiguration:location[0] healthStore:v22 formattingManager:v21 session:v17 locationProvider:v20, v7];
  v10 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  *MEMORY[0x277D85DE8];
  return v10;
}

- (NLWorkout)initWithWorkoutConfiguration:(id)a3 healthStore:(id)a4 formattingManager:(id)a5 session:(id)a6 locationProvider:(id)a7
{
  v117 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v115 = 0;
  objc_storeStrong(&v115, a4);
  v114 = 0;
  objc_storeStrong(&v114, a5);
  v113 = 0;
  objc_storeStrong(&v113, a6);
  v112 = 0;
  objc_storeStrong(&v112, a7);
  v111 = [location[0] currentActivityType];
  v7 = v117;
  v117 = 0;
  v110.receiver = v7;
  v110.super_class = NLWorkout;
  v94 = [(NLWorkout *)&v110 init];
  v117 = v94;
  objc_storeStrong(&v117, v94);
  if (v94)
  {
    v109 = [location[0] topLevelGoal];
    v75 = v113;
    v78 = [MEMORY[0x277CCD2E8] localDevice];
    v74 = [v109 goalTypeIdentifier];
    v77 = [v109 value];
    v76 = [v75 associatedWorkoutBuilderWithDevice:v78 goalType:v74 goal:?];
    v108 = [WOChronicleClass chronicleInstance:?];
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    objc_storeStrong(&v117->_formattingManager, v114);
    v79 = [(FIUIFormattingManager *)v117->_formattingManager unitManager];
    v107 = [v79 userDistanceHKUnitForActivityType:v111];
    *&v8 = MEMORY[0x277D82BD8](v79).n128_u64[0];
    v80 = [(FIUIFormattingManager *)v117->_formattingManager unitManager];
    v106 = MEMORY[0x20F2E8320]([v80 userDistanceElevationUnit]);
    *&v9 = MEMORY[0x277D82BD8](v80).n128_u64[0];
    v10 = [location[0] fitnessMachineSeymourStartSource];
    v117->_fitnessMachineSeymourStartSource = v10;
    v81 = [location[0] catalogWorkoutBridge];
    v11 = [v113 isGymKitSession];
    v82 = [NLWorkout experienceTypeForCatalogWorkout:v81 isGymKitWorkout:v11 fitnessMachineSeymourStartSource:v117->_fitnessMachineSeymourStartSource];
    MEMORY[0x277D82BD8](v81);
    v105[1] = v82;
    v84 = [NLSessionActivity alloc];
    v83 = location[0];
    v85 = [v113 identifier];
    v12 = [NLSessionActivity initWithConfiguration:v84 UUID:"initWithConfiguration:UUID:formattingManager:elevationUnit:healthStore:builder:experienceType:" formattingManager:v83 elevationUnit:v82 healthStore:? builder:? experienceType:?];
    sessionActivity = v117->_sessionActivity;
    v117->_sessionActivity = v12;
    MEMORY[0x277D82BD8](sessionActivity);
    *&v14 = MEMORY[0x277D82BD8](v85).n128_u64[0];
    [(NLSessionActivity *)v117->_sessionActivity addActivityChangeObserver:v117, v14];
    v15 = [NLSessionController alloc];
    v16 = [(NLSessionController *)v15 initWithWorkoutSession:v113];
    sessionController = v117->_sessionController;
    v117->_sessionController = v16;
    *&v18 = MEMORY[0x277D82BD8](sessionController).n128_u64[0];
    [(NLSessionController *)v117->_sessionController setDelegate:v117, v18];
    [(NLSessionController *)v117->_sessionController addSessionControllerStateObserver:v117];
    v87 = objc_alloc(MEMORY[0x277CCD598]);
    v86 = v115;
    v89 = [location[0] hkWorkoutConfiguration];
    v88 = [v87 initWithHealthStore:v86 workoutConfiguration:?];
    v19 = [WOChronicleClass chronicleInstance:?];
    liveWorkoutDataSource = v117->_liveWorkoutDataSource;
    v117->_liveWorkoutDataSource = v19;
    MEMORY[0x277D82BD8](liveWorkoutDataSource);
    MEMORY[0x277D82BD8](v88);
    *&v21 = MEMORY[0x277D82BD8](v89).n128_u64[0];
    v91 = v117;
    v90 = v113;
    v92 = [location[0] hkWorkoutConfiguration];
    [NLWorkout _updateDataSourcesForWorkoutSession:v91 currentConfiguration:"_updateDataSourcesForWorkoutSession:currentConfiguration:healthStore:builder:" healthStore:v90 builder:?];
    v22 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activityObservers = v117->_activityObservers;
    v117->_activityObservers = v22;
    v24 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v117->_stateObservers;
    v117->_stateObservers = v24;
    *&v26 = MEMORY[0x277D82BD8](stateObservers).n128_u64[0];
    [(NLSessionActivity *)v117->_sessionActivity addSessionStateObserver:v117->_sessionController, v26];
    [(NLSessionActivity *)v117->_sessionActivity addSessionStateObserver:v117];
    [(NLSessionActivity *)v117->_sessionActivity addSessionDataObserver:v117];
    [(NLSessionActivity *)v117->_sessionActivity setLifecycleDelegate:v117];
    v93 = dispatch_get_global_queue(25, 0);
    v99 = MEMORY[0x277D85DD0];
    v100 = -1073741824;
    v101 = 0;
    v102 = __97__NLWorkout_initWithWorkoutConfiguration_healthStore_formattingManager_session_locationProvider___block_invoke;
    v103 = &unk_277D88998;
    v104 = MEMORY[0x277D82BE0](location[0]);
    v105[0] = MEMORY[0x277D82BE0](v117);
    dispatch_async(v93, &v99);
    *&v27 = MEMORY[0x277D82BD8](v93).n128_u64[0];
    [(NLWorkout *)v117 _updateTimeSplitsTracker:v111, v27];
    [(NLWorkout *)v117 _updateDistanceSplitsTracker:v111 multiSportLegStartDate:0];
    if (([v111 supportsTrackRunning] & 1) != 0 && (objc_msgSend(location[0], "trackRunningIsSuspended") & 1) == 0)
    {
      v28 = [WOTrackRunningTracker alloc];
      v29 = [(WOTrackRunningTracker *)v28 initWithActivityType:v111 locationProvider:v112];
      trackRunningTracker = v117->_trackRunningTracker;
      v117->_trackRunningTracker = v29;
      *&v31 = MEMORY[0x277D82BD8](trackRunningTracker).n128_u64[0];
      [(WOTrackRunningTracker *)v117->_trackRunningTracker setWorkoutAlertDelegate:v117, v31];
      [(WOTrackRunningTracker *)v117->_trackRunningTracker setEventPersistenceDelegate:v117->_sessionActivity];
    }

    if ([location[0] isInterval])
    {
      v70 = [WOIntervalWorkoutTracker alloc];
      v68 = location[0];
      v69 = v108;
      v73 = [(NLSessionActivity *)v117->_sessionActivity dataProvider];
      v72 = [(NLSessionActivity *)v117->_sessionActivity powerAccumulator];
      v71 = [(NLSessionActivity *)v117->_sessionActivity swimmingAccumulator];
      v32 = [(WOIntervalWorkoutTracker *)v70 initWithConfiguration:v68 builder:v69 fallbackDataProvider:v73 powerAccumulator:v72 swimmingAccumulator:?];
      intervalWorkoutTracker = v117->_intervalWorkoutTracker;
      v117->_intervalWorkoutTracker = v32;
      MEMORY[0x277D82BD8](intervalWorkoutTracker);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      *&v34 = MEMORY[0x277D82BD8](v73).n128_u64[0];
      [(WOIntervalWorkoutTracker *)v117->_intervalWorkoutTracker setDelegate:v117, v34];
      [(WOIntervalWorkoutTracker *)v117->_intervalWorkoutTracker setAlertDelegate:v117];
      [(NLSessionActivity *)v117->_sessionActivity addSessionDataObserver:v117->_intervalWorkoutTracker];
    }

    else if ([location[0] isMultiSport])
    {
      v35 = [WOMultiSportWorkoutTracker alloc];
      v36 = [(WOMultiSportWorkoutTracker *)v35 initWithConfiguration:location[0] formattingManager:v114];
      multisportWorkoutTracker = v117->_multisportWorkoutTracker;
      v117->_multisportWorkoutTracker = v36;
      *&v38 = MEMORY[0x277D82BD8](multisportWorkoutTracker).n128_u64[0];
      [(WOMultiSportWorkoutTracker *)v117->_multisportWorkoutTracker setAlertDelegate:v117, v38];
      [(WOMultiSportWorkoutTracker *)v117->_multisportWorkoutTracker setProgressionRequestDelegate:v117];
      [(WOMultiSportWorkoutTracker *)v117->_multisportWorkoutTracker addObserver:v117];
      [(NLWorkout *)v117 addStateObserver:v117->_multisportWorkoutTracker];
      [(NLWorkout *)v117 addActivityObserver:v117->_multisportWorkoutTracker];
      [(NLSessionActivity *)v117->_sessionActivity addSessionDataObserver:v117->_multisportWorkoutTracker];
    }

    else if ([location[0] isRace])
    {
      v39 = [WORaceWorkoutTracker alloc];
      v40 = [(WORaceWorkoutTracker *)v39 initWithConfiguration:location[0]];
      raceWorkoutTracker = v117->_raceWorkoutTracker;
      v117->_raceWorkoutTracker = v40;
      *&v42 = MEMORY[0x277D82BD8](raceWorkoutTracker).n128_u64[0];
      [(WORaceWorkoutTracker *)v117->_raceWorkoutTracker setAlertDelegate:v117, v42];
      [(WORaceWorkoutTracker *)v117->_raceWorkoutTracker setMetadataSavingDelegate:v117->_sessionActivity];
      [(NLSessionActivity *)v117->_sessionActivity addSessionDataObserver:v117->_raceWorkoutTracker];
      [(NLSessionActivity *)v117->_sessionActivity setRaceCoordinatorDelegate:v117->_raceWorkoutTracker];
      [(NLSessionActivity *)v117->_sessionActivity setRaceRouteDelegate:v117->_raceWorkoutTracker];
    }

    else if ([location[0] isPacer])
    {
      [(NLSessionActivity *)v117->_sessionActivity setPacerAlertDelegate:v117];
    }

    else
    {
      v43 = [NLSessionActivityGoalProgressTracker alloc];
      v44 = [(NLSessionActivityGoalProgressTracker *)v43 initWithActivityType:v111 goal:v109];
      progressTracker = v117->_progressTracker;
      v117->_progressTracker = v44;
      *&v46 = MEMORY[0x277D82BD8](progressTracker).n128_u64[0];
      [(NLSessionActivityGoalProgressTracker *)v117->_progressTracker setDelegate:v117, v46];
      [(NLSessionActivity *)v117->_sessionActivity addSessionDataObserver:v117->_progressTracker];
    }

    [(NLWorkout *)v117 _createZoneTracker:v107 activityType:v111];
    v60 = v117;
    v61 = [(NLSessionActivity *)v117->_sessionActivity UUID];
    [(NLWorkout *)v60 _configureStateMachineWithUUID:?];
    MEMORY[0x277D82BD8](v61);
    v47 = objc_alloc_init(NLWristStateManager);
    wristStateManager = v117->_wristStateManager;
    v117->_wristStateManager = v47;
    *&v49 = MEMORY[0x277D82BD8](wristStateManager).n128_u64[0];
    [(NLWristStateManager *)v117->_wristStateManager setDelegate:v117, v49];
    v64 = [NLAnalyticsWorkoutEventBuilder alloc];
    v62 = location[0];
    v63 = v114;
    v65 = [(NLSessionActivity *)v117->_sessionActivity analyticsIdentifier];
    v50 = [(NLAnalyticsWorkoutEventBuilder *)v64 initWithLiveWorkoutConfiguration:v62 formattingManager:v63 analyticsIdentifier:?];
    analyticsEventBuilder = v117->_analyticsEventBuilder;
    v117->_analyticsEventBuilder = v50;
    MEMORY[0x277D82BD8](analyticsEventBuilder);
    *&v52 = MEMORY[0x277D82BD8](v65).n128_u64[0];
    v53 = [location[0] catalogWorkoutBridge];
    catalogWorkoutBridge = v117->_catalogWorkoutBridge;
    v117->_catalogWorkoutBridge = v53;
    *&v55 = MEMORY[0x277D82BD8](catalogWorkoutBridge).n128_u64[0];
    [(NLSessionActivity *)v117->_sessionActivity setWorkoutAlertDelegate:v117, v55];
    v56 = [location[0] configurationUUID];
    configurationIdentifier = v117->_configurationIdentifier;
    v117->_configurationIdentifier = v56;
    v66 = [MEMORY[0x277CCAB98] defaultCenter];
    [v66 addObserver:v117 selector:sel__handleTargetZoneChanged_ name:@"TargetZoneStorageChanged" object:?];
    v67 = [MEMORY[0x277CCAB98] defaultCenter];
    [v67 addObserver:v117 selector:sel__handleSplitStorageChanged_ name:*MEMORY[0x277D0A7B8] object:0];
    MEMORY[0x277D82BD8](v67);
    objc_storeStrong(v105, 0);
    objc_storeStrong(&v104, 0);
    objc_storeStrong(&v106, 0);
    objc_storeStrong(&v107, 0);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v109, 0);
  }

  v59 = MEMORY[0x277D82BE0](v117);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v113, 0);
  objc_storeStrong(&v114, 0);
  objc_storeStrong(&v115, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v117, 0);
  return v59;
}

- (void)setIntervalWorkoutProgressDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WOIntervalWorkoutTracker *)v4->_intervalWorkoutTracker updateProgressDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setRaceTrackerDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WORaceWorkoutTracker *)v4->_raceWorkoutTracker setTrackerDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addMultisportWorkoutProgressObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WOMultiSportWorkoutTracker *)v4->_multisportWorkoutTracker addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (id)activeZoneTracker
{
  if (self->_intervalWorkoutTracker)
  {
    v3 = [(WOIntervalWorkoutTracker *)self->_intervalWorkoutTracker zoneTracker];
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](self->_activityZoneTracker);
  }

  return v3;
}

- (void)_createZoneTracker:(id)a3 activityType:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if (v18->_intervalWorkoutTracker)
  {
    [(WOIntervalWorkoutTracker *)v18->_intervalWorkoutTracker updateZoneTrackerWithDistanceUnit:location[0] metadataSavingDelegate:v18->_sessionActivity];
    v15 = 1;
  }

  else
  {
    if (v18->_activityZoneTracker)
    {
      [(NLSessionActivity *)v18->_sessionActivity removeSessionDataObserver:v18->_activityZoneTracker];
      [(NLWorkoutZoneTracker *)v18->_activityZoneTracker setAlertDelegate:?];
      objc_storeStrong(&v18->_activityZoneTracker, 0);
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
    v9 = [(NLSessionActivity *)v18->_sessionActivity configuration];
    sessionActivity = v18->_sessionActivity;
    v11 = v12;
    v8 = [NLZoneTrackerFactory makeWithActivityType:"makeWithActivityType:liveWorkoutConfiguration:distanceUnit:metadataSavingDelegate:error:" liveWorkoutConfiguration:v7 distanceUnit:? metadataSavingDelegate:? error:?];
    objc_storeStrong(&v12, v11);
    activityZoneTracker = v18->_activityZoneTracker;
    v18->_activityZoneTracker = v8;
    MEMORY[0x277D82BD8](activityZoneTracker);
    *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [(NLWorkoutZoneTracker *)v18->_activityZoneTracker setAlertDelegate:v18, v6];
    [(NLSessionActivity *)v18->_sessionActivity addSessionDataObserver:v18->_activityZoneTracker];
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleTargetZoneChanged:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = v11;
  v4 = [(NLSessionActivity *)v11->_sessionActivity configuration];
  [(NLWorkout *)v3 _updateTargetZonesFromConfiguration:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_handleSplitStorageChanged:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v4 = v16;
  v6 = [(NLSessionActivity *)v16->_sessionActivity configuration];
  v5 = [(WOCoreLiveWorkoutConfiguration *)v6 currentActivityType];
  [NLWorkout _updateDistanceSplitsTracker:v4 multiSportLegStartDate:"_updateDistanceSplitsTracker:multiSportLegStartDate:"];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = v16;
  v9 = [(NLSessionActivity *)v16->_sessionActivity configuration];
  v8 = [(WOCoreLiveWorkoutConfiguration *)v9 currentActivityType];
  [(NLWorkout *)v7 _updateTimeSplitsTracker:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(location, 0);
}

- (void)_updateDistanceSplitsTracker:(id)a3 multiSportLegStartDate:(id)a4
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  if (v37->_splitsTracker)
  {
    [(NLSessionActivity *)v37->_sessionActivity setSplitsDelegate:?];
    [(NLSessionActivitySplitsTracker *)v37->_splitsTracker setAlertDelegate:0];
    objc_storeStrong(&v37->_splitsTracker, 0);
  }

  if (v37->_customDistanceSplitsTracker)
  {
    [(NLSessionActivity *)v37->_sessionActivity setCustomSplitsDelegate:?];
    [(NLWorkoutCustomDistanceSplitsTracker *)v37->_customDistanceSplitsTracker setAlertDelegate:0];
    objc_storeStrong(&v37->_customDistanceSplitsTracker, 0);
  }

  v26 = [(FIUIFormattingManager *)v37->_formattingManager unitManager];
  v34 = [v26 userDistanceHKUnitForActivityType:location[0]];
  *&v4 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v33 = [(NLSessionActivity *)v37->_sessionActivity configuration];
  v32 = [MEMORY[0x277D0A840] distanceSplitForActivityType:location[0] userDistanceUnit:v34];
  v28 = [MEMORY[0x277CCACC8] currentThread];
  v27 = [v28 threadDictionary];
  v29 = [v27 objectForKey:@"WOSplitsOverrideForTesting"];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  if (v29)
  {
    v25 = [MEMORY[0x277CCACC8] currentThread];
    v24 = [v25 threadDictionary];
    v6 = [v24 objectForKey:@"WOSplitsOverrideForTesting"];
    v7 = v32;
    v32 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v24);
    v5 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  }

  if ([v32 enabled] & 1) != 0 && (objc_msgSend(v33, "supportsDistanceSplits"))
  {
    v31 = FIUIDistanceTypeForActivityType();
    v22 = [MEMORY[0x277CCD7E8] quantityWithUnit:v34 doubleValue:NLDistanceNotificationIntervalForDistanceType(v31)];
    v21 = [MEMORY[0x277CCDAB0] meterUnit];
    [v22 doubleValueForUnit:?];
    v23 = v8;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    [v32 value];
    if (v23 == v9)
    {
      v19 = [NLSessionActivitySplitsTracker alloc];
      v18 = location[0];
      v20 = [(NLSessionActivity *)v37->_sessionActivity builder];
      v10 = [(NLSessionActivity *)v37->_sessionActivity activityMoveMode];
      v11 = [(NLSessionActivitySplitsTracker *)v19 initWithActivityType:v18 builder:v20 distanceUnit:v34 activityMoveMode:v10 multiSportLegStartDate:v35];
      splitsTracker = v37->_splitsTracker;
      v37->_splitsTracker = v11;
      MEMORY[0x277D82BD8](splitsTracker);
      *&v13 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      [(NLSessionActivitySplitsTracker *)v37->_splitsTracker setAlertDelegate:v37, v13];
      [(NLSessionActivity *)v37->_sessionActivity setSplitsDelegate:v37->_splitsTracker];
    }

    else
    {
      v17 = [NLWorkoutCustomDistanceSplitsTracker alloc];
      v14 = [(NLWorkoutCustomDistanceSplitsTracker *)v17 initWithActivityType:location[0] activityMoveMode:[(NLSessionActivity *)v37->_sessionActivity activityMoveMode]];
      customDistanceSplitsTracker = v37->_customDistanceSplitsTracker;
      v37->_customDistanceSplitsTracker = v14;
      *&v16 = MEMORY[0x277D82BD8](customDistanceSplitsTracker).n128_u64[0];
      [(NLWorkoutCustomDistanceSplitsTracker *)v37->_customDistanceSplitsTracker setAlertDelegate:v37, v16];
      [(NLSessionActivity *)v37->_sessionActivity setCustomSplitsDelegate:v37->_customDistanceSplitsTracker];
    }
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTimeSplitsTracker:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v11->_customTimeSplitsTracker)
  {
    [(NLSessionActivity *)v11->_sessionActivity removeSessionDataObserver:v11->_customTimeSplitsTracker];
    [(NLWorkoutCustomTimeSplitsTracker *)v11->_customTimeSplitsTracker setAlertDelegate:?];
    objc_storeStrong(&v11->_customTimeSplitsTracker, 0);
  }

  v9 = [(NLSessionActivity *)v11->_sessionActivity configuration];
  v8 = [MEMORY[0x277D0A840] timeSplitForActivityType:location[0]];
  v7 = [(NLWorkout *)v11 experienceType]== 3;
  if (([v8 enabled] & 1) != 0 && (objc_msgSend(v9, "supportsTimeSplits") & 1) != 0 && v7)
  {
    v6 = [NLWorkoutCustomTimeSplitsTracker alloc];
    [v8 value];
    v3 = [(NLWorkoutCustomTimeSplitsTracker *)v6 initWithTimeSpan:v11->_formattingManager formattingManager:?];
    customTimeSplitsTracker = v11->_customTimeSplitsTracker;
    v11->_customTimeSplitsTracker = v3;
    *&v5 = MEMORY[0x277D82BD8](customTimeSplitsTracker).n128_u64[0];
    [(NLWorkoutCustomTimeSplitsTracker *)v11->_customTimeSplitsTracker setAlertDelegate:v11, v5];
    [(NLSessionActivity *)v11->_sessionActivity addSessionDataObserver:v11->_customTimeSplitsTracker];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateDataSourcesForWorkoutSession:(id)a3 currentConfiguration:(id)a4 healthStore:(id)a5 builder:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = 0;
  objc_storeStrong(&v42, a5);
  v41 = 0;
  objc_storeStrong(&v41, a6);
  v30 = MEMORY[0x277CCDC48];
  v27 = [v43 activityType];
  v28 = [v43 locationType] == 2;
  v29 = [location[0] isGymKitSession];
  v31 = [v30 observedTypesForActivityType:v27 isIndoor:v28 connectedToFitnessMachine:v29 activityMode:{-[NLSessionActivity activityMoveMode](v45->_sessionActivity, "activityMoveMode")}];
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
    [(HKGymKitMetricsDataSource *)v45->_gymKitMetricsDataSource setDelegate:?];
    v6 = objc_alloc(MEMORY[0x277CCD490]);
    v7 = [v6 initWithHealthStore:v42 workoutConfiguration:v43];
    gymKitDataSource = v45->_gymKitDataSource;
    v45->_gymKitDataSource = v7;
    MEMORY[0x277D82BD8](gymKitDataSource);
    v9 = objc_alloc(MEMORY[0x277CCD498]);
    v10 = [v9 initWithHealthStore:v42 workoutConfiguration:v43];
    gymKitMetricsDataSource = v45->_gymKitMetricsDataSource;
    v45->_gymKitMetricsDataSource = v10;
    *&v12 = MEMORY[0x277D82BD8](gymKitMetricsDataSource).n128_u64[0];
    [(HKGymKitMetricsDataSource *)v45->_gymKitMetricsDataSource setDelegate:v45->_sessionActivity, v12];
    v48[0] = v45->_liveWorkoutDataSource;
    v48[1] = v45->_gymKitDataSource;
    v48[2] = v45->_gymKitMetricsDataSource;
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
    [(HKWorkoutRouteDataSource *)v45->_routesDataSource setDelegate:0];
    v15 = objc_alloc(MEMORY[0x277CCDC80]);
    v22 = [v15 initWithWorkoutSession:location[0]];
    v16 = [WOChronicleClass chronicleInstance:?];
    routesDataSource = v45->_routesDataSource;
    v45->_routesDataSource = v16;
    MEMORY[0x277D82BD8](routesDataSource);
    *&v18 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    [(HKWorkoutRouteDataSource *)v45->_routesDataSource setDelegate:v45->_sessionActivity, v18];
    v47[0] = v45->_liveWorkoutDataSource;
    v47[1] = v45->_routesDataSource;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v20 = v37;
    v37 = v19;
    MEMORY[0x277D82BD8](v20);
  }

  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [location[0] isGymKitSession];
    __os_log_helper_16_2_3_4_0_8_66_8_66(v46, v21, v43, v37);
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
  v3 = [(NLSessionController *)self->_sessionController workoutSession];
  v4 = [(HKWorkoutSession *)v3 isGymKitSession];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isMultiSportWorkout
{
  v3 = [(NLSessionActivity *)self->_sessionActivity configuration];
  v4 = [(WOCoreLiveWorkoutConfiguration *)v3 isMultiSport];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (double)elapsedTime
{
  v21 = self;
  location[1] = a2;
  if (self->_hkWorkout)
  {
    v19 = [(HKWorkout *)v21->_hkWorkout metadata];
    location[0] = [v19 objectForKey:*MEMORY[0x277CCC498]];
    *&v2 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    if (location[0])
    {
      v18 = [MEMORY[0x277CCDAB0] secondUnit];
      [location[0] doubleValueForUnit:?];
      v22 = v3;
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      [(HKWorkout *)v21->_hkWorkout duration];
      v22 = v4;
    }

    objc_storeStrong(location, 0);
  }

  else if ([(NLWorkout *)v21 isGymKitWorkout])
  {
    v17 = [(NLSessionActivity *)v21->_sessionActivity dataProvider];
    v16 = [(NLSessionDataProvider *)v17 elapsedTimeProvider];
    [v16 elapsedTime];
    v22 = v5;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    v15 = [(NLSessionActivity *)v21->_sessionActivity builder];
    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v15)
    {
      v14 = [(NLSessionActivity *)v21->_sessionActivity activityEndDate];
      *&v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
      if (v14)
      {
        v13 = [(NLSessionActivity *)v21->_sessionActivity builder];
        v12 = [(NLSessionActivity *)v21->_sessionActivity activityEndDate];
        [(HKLiveWorkoutBuilder *)v13 elapsedTimeAtDate:?];
        v22 = v8;
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
      }

      else
      {
        v11 = [(NLSessionActivity *)v21->_sessionActivity builder];
        [(HKLiveWorkoutBuilder *)v11 elapsedTime];
        v22 = v9;
        MEMORY[0x277D82BD8](v11);
      }
    }

    else
    {
      return 0.0;
    }
  }

  return v22;
}

+ (int64_t)experienceTypeForCatalogWorkout:(id)a3 isGymKitWorkout:(BOOL)a4 fitnessMachineSeymourStartSource:(unint64_t)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (([location[0] isGuidedRun] & 1) != 0 && a4)
    {
      v5 = 2;
      if (a5 != 11)
      {
        v5 = 4;
      }

      v11 = v5;
    }

    else if ([location[0] isGuidedRun])
    {
      v11 = 0;
    }

    else if (([location[0] isGuidedWalk] & 1) != 0 && a4)
    {
      v6 = 2;
      if (a5 != 11)
      {
        v6 = 4;
      }

      v11 = v6;
    }

    else if ([location[0] isGuidedWalk])
    {
      v11 = 0;
    }

    else if (a4)
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
  v26 = self;
  v25[1] = a2;
  v8 = [(NLWorkout *)self sessionActivity];
  v25[0] = [(NLSessionActivity *)v8 activityType];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v11 = MEMORY[0x277CCACA8];
  v23 = [(NLWorkout *)v26 identifier];
  v22 = FIUILastFourCharactersOfUUID();
  [v25[0] identifier];
  v21 = _HKWorkoutActivityNameForActivityType();
  v3 = [v25[0] isIndoor];
  v4 = @"YES";
  if ((v3 & 1) == 0)
  {
    v4 = @"NO";
  }

  v9 = v4;
  v20 = [(NLWorkout *)v26 sessionActivity];
  v5 = [(NLSessionActivity *)v20 isMachineWorkout];
  v6 = @"YES";
  if (!v5)
  {
    v6 = @"NO";
  }

  v10 = v6;
  v19 = [(NLWorkout *)v26 sessionActivity];
  v18 = [(NLSessionActivity *)v19 configuration];
  v17 = [(WOCoreLiveWorkoutConfiguration *)v18 currentGoal];
  v16 = _GoalPropertiesKeyValueString(v17);
  v15 = _SwimmingPropertiesKeyValueString(v25[0]);
  v14 = NLWorkoutExperienceTypeDescription([(NLWorkout *)v26 experienceType]);
  v13 = [(NLWorkout *)v26 catalogWorkoutBridge];
  v12 = [(WOCoreCatalogWorkout *)v13 identifier];
  v24 = [v11 stringWithFormat:@"workout: UUID=%@ activityType=%@ indoor=%@ isMachineWorkout=%@ %@%@experienceType=%@ catalogItem=%@ ", v22, v21, v9, v10, v16, v15, v14, v12];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  objc_storeStrong(v25, 0);

  return v24;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v8 = [(NLSessionActivity *)self->_sessionActivity activityType];
  v7 = [(NLSessionActivity *)self->_sessionActivity UUID];
  v6 = [(FIUIStateMachine *)self->_stateMachine state];
  v5 = NLWorkoutExperienceTypeDescription([(NLWorkout *)self experienceType]);
  v9 = [v4 stringWithFormat:@"NLWorkout<%p>(activityType=%@ UUID=%@ state=%@ experienceType=%@)", self, v8, v7, v6, v5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

- (void)_configureStateMachineWithUUID:(id)a3
{
  v128[7] = *MEMORY[0x277D85DE8];
  v126 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  stateMachine = v126->_stateMachine;
  v126->_stateMachine = v4;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  v6 = v126->_stateMachine;
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
      v119 = [v121 unsignedIntegerValue];
      v99 = objc_alloc(MEMORY[0x277D0A7F8]);
      v100 = NLWorkoutStateIdentifierDescription(v119);
      v118 = [v99 initWithLabel:?];
      *&v7 = MEMORY[0x277D82BD8](v100).n128_u64[0];
      [v122 setObject:v118 forKeyedSubscript:{v121, v7}];
      [(FIUIStateMachine *)v126->_stateMachine addState:v118];
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
  objc_storeStrong(&v126->_stateMap, v122);
  stateMap = v126->_stateMap;
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
  v27 = v126->_stateMap;
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
  v33 = v126->_stateMap;
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
  v39 = v126->_stateMap;
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
  v45 = v126->_stateMap;
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
  v51 = v126->_stateMap;
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
  v57 = v126->_stateMap;
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
  v63 = v126->_stateMap;
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
  v69 = v126->_stateMap;
  v74 = [MEMORY[0x277CCABB0] numberWithInteger:{__b[4], v15}];
  v73 = [(NSDictionary *)v69 objectForKeyedSubscript:?];
  v70 = v126->_stateMap;
  v72 = [MEMORY[0x277CCABB0] numberWithInteger:__b[3]];
  v71 = [(NSDictionary *)v70 objectForKeyedSubscript:?];
  _RegisterTransition_1(v73, v71, 4);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  *&v16 = MEMORY[0x277D82BD8](v74).n128_u64[0];
  v75 = v126->_stateMap;
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
  v81 = v126->_stateMap;
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
  v87 = v126->_stateMap;
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
  v93 = v126->_stateMap;
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
  [(FIUIStateMachine *)v126->_stateMachine export];
  [(NLWorkout *)v126 _configureStateActions];
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureStateActions
{
  v63 = self;
  __b[7] = a2;
  memset(__b, 0, 0x38uLL);
  NLWorkoutStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, v63);
  stateMap = v63->_stateMap;
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
  v21 = v63->_stateMap;
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
  v18 = v63->_stateMap;
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
  v15 = v63->_stateMap;
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
  v12 = v63->_stateMap;
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
  v9 = v63->_stateMap;
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
  v5 = self;
  v4[1] = a2;
  [(NLSessionActivity *)self->_sessionActivity _prepare];
  if (v5->_multisportWorkoutTracker)
  {
    v4[0] = [(WOMultiSportWorkoutTracker *)v5->_multisportWorkoutTracker allHKConfigurations];
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v6, v4[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] Populating automatic detection with %@", v6, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v2 = [(NLSessionController *)v5->_sessionController workoutSession];
    [(HKWorkoutSession *)v2 enableAutomaticDetectionForActivityConfigurations:v4[0]];
    MEMORY[0x277D82BD8](v2);
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
  v6 = [(NLSessionActivity *)self->_sessionActivity dataProvider];
  v5 = [(NLSessionActivity *)self->_sessionActivity activityType];
  [(NLSessionActivityGoalProgressTracker *)progressTracker recoverStateFromDataProvider:v6 activityType:?];
  MEMORY[0x277D82BD8](v5);
  v8 = [(NLWorkout *)self activeZoneTracker];
  v7 = [(NLSessionActivity *)self->_sessionActivity builder];
  [v8 recoverStateFromBuilder:?];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  splitsTracker = self->_splitsTracker;
  v10 = [(NLSessionActivity *)self->_sessionActivity currentWorkoutEvents];
  [(NLSessionActivitySplitsTracker *)splitsTracker recoverStateFromWorkoutEvents:?];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  intervalWorkoutTracker = self->_intervalWorkoutTracker;
  v12 = [(NLSessionActivity *)self->_sessionActivity builder];
  [(WOIntervalWorkoutTracker *)intervalWorkoutTracker recoverStateWithBuilder:?];
  [(NLAnalyticsWorkoutEventBuilder *)self->_analyticsEventBuilder recoverStateWithSessionActivity:self->_sessionActivity, MEMORY[0x277D82BD8](v12).n128_f64[0]];
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

- (void)_updateState:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  v12 = a3;
  self->_state = a3;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v14->_stateObservers);
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
      [v11 workout:v14 didMoveToState:{v12, v7}];
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
  v13 = self;
  location[1] = a2;
  if (![(NLSessionActivity *)self->_sessionActivity isInSession])
  {
    return 0;
  }

  if (!v13->_intervalWorkoutTracker)
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

  if ([(WOIntervalWorkoutTracker *)v13->_intervalWorkoutTracker firstActivityStarted])
  {
    [(WOIntervalWorkoutTracker *)v13->_intervalWorkoutTracker moveToNextStepManually];
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
  v15 = self;
  v14[1] = a2;
  if (self->_multisportWorkoutTracker)
  {
    if ([(WOMultiSportWorkoutTracker *)v15->_multisportWorkoutTracker firstActivityStarted])
    {
      v14[0] = objc_alloc_init(WOMultiSportTransitionsStore);
      multisportWorkoutTracker = v15->_multisportWorkoutTracker;
      v7 = [v14[0] transitions];
      [(WOMultiSportWorkoutTracker *)multisportWorkoutTracker manuallyMoveToNextActivityWithMultisportTransitions:?];
      MEMORY[0x277D82BD8](v7);
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

- (void)startTrackingWithStartDate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v4->_sessionActivity _startTrackingWithStartDate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)endTrackingWithEndReason:(unint64_t)a3
{
  self->_endReason = a3;
  [(NLSessionActivity *)self->_sessionActivity _endTracking];
  v3 = +[WOChronicle shared];
  [(WOChronicle *)v3 dumpReport];
  MEMORY[0x277D82BD8](v3);
}

- (void)setPaused:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(NLSessionActivity *)v9->_sessionActivity _setPauseTracking:v7 atDate:location eventSource:a5];
  objc_storeStrong(&location, 0);
}

- (void)_beginNewActivityWithHKConfiguration:(id)a3 date:(id)a4 metadata:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  _HKInitializeLogging();
  v8 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v13, location[0]);
    _os_log_impl(&dword_20AEA4000, v8, OS_LOG_TYPE_DEFAULT, "[multisport] NLWorkout is asking HKWorkoutSession to start config: %@", v13, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v5 = [(NLSessionController *)v12->_sessionController workoutSession];
  [(HKWorkoutSession *)v5 beginNewActivityWithConfiguration:location[0] date:v10 metadata:v9];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionActivity:(id)a3 didBeginActivity:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
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
  v8 = MEMORY[0x277D82BE0](v17->_activityObservers);
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
      [v12 workout:v17 didBeginNewActivity:v15];
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

- (void)sessionActivity:(id)a3 didEndActivity:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginNewActivityFromConfiguration:(id)a3 date:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [location[0] hkWorkoutConfiguration];
  v15 = [location[0] hkWorkoutConfigurationMetadata];
  if ([(NLWorkout *)v19 state]== 4 || [(NLWorkout *)v19 state]== 3)
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v22, v17, v16, v15);
      _os_log_impl(&dword_20AEA4000, v14, v13, "[multisport] Beginning a new activity at date %@ with config %@ metadata %@", v22, 0x20u);
    }

    objc_storeStrong(&v14, 0);
    [(NLWorkout *)v19 _beginNewActivityWithHKConfiguration:v16 date:v17 metadata:v15];
  }

  else if ([(NLWorkout *)v19 state]== 1)
  {
    _HKInitializeLogging();
    v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v21, v16);
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
      __os_log_helper_16_2_1_8_64(v20, v16);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] Pending beginning new activity until the session starts with config %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [(NLWorkout *)v19 _updateTargetZonesFromConfiguration:location[0]];
  v5 = v19;
  v8 = [(NLSessionController *)v19->_sessionController workoutSession];
  v4 = v16;
  v7 = [(NLSessionActivity *)v19->_sessionActivity healthStore];
  v6 = [(NLSessionActivity *)v19->_sessionActivity builder];
  [(NLWorkout *)v5 _updateDataSourcesForWorkoutSession:v8 currentConfiguration:v4 healthStore:v7 builder:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateTargetZonesFromConfiguration:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(NLWorkout *)v16 activeZoneTracker];
  [v7 updateTargetZonesFrom:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(NLWorkout *)v16 activeZoneTracker];
  [v8 clearRecoveryData];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v10 = [(NLSessionActivity *)v16->_sessionActivity heartRateZonesAccumulator];
  v9 = [location[0] currentHeartRateTargetZone];
  [(NLSessionActivityHeartRateZonesAccumulator *)v10 updateTargetZone:?];
  MEMORY[0x277D82BD8](v9);
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [(NLSessionActivity *)v16->_sessionActivity powerAccumulator];
  v11 = [location[0] currentPowerAlertTargetZone];
  [(NLSessionActivityPowerAccumulator *)v12 updateTargetZone:?];
  MEMORY[0x277D82BD8](v11);
  *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v14 = [(NLSessionActivity *)v16->_sessionActivity powerZonesAccumulator];
  v13 = [location[0] currentPowerZonesAlertTargetZone];
  [(NLSessionActivityPowerZonesAccumulator *)v14 updateTargetZone:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(location, 0);
}

- (void)didMoveToNextStep:(id)a3 date:(id)a4 previousStepMetadata:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  if (v10)
  {
    [(NLSessionActivity *)v13->_sessionActivity insertOrUpdateMetadataToSubActivity:v10];
  }

  _HKInitializeLogging();
  v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, v11);
    _os_log_impl(&dword_20AEA4000, v9, OS_LOG_TYPE_DEFAULT, "[intervalWorkout] Did move to next step at date: %@", v14, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v5 = v13;
  v6 = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v5 date:"_beginNewActivityFromConfiguration:date:"];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didFinishIntervalWorkout:(id)a3 date:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[intervalWorkout] Ending our last activity at date: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(NLSessionController *)v9->_sessionController workoutSession];
  [(HKWorkoutSession *)v4 endCurrentActivityOnDate:v7];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)insertMetadataInCurrentActivityWithMetadata:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v4->_sessionActivity insertOrUpdateMetadataToSubActivity:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_clearTransitionMetadata
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
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
      [(NLSessionActivity *)v12->_sessionActivity removeMetadata:v10 forceTopLevel:1, v6];
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

- (void)didUpdateLastLegValues:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)startManualTransitionWithDate:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(NLWorkout *)v6 _beginNewActivityWithHKConfiguration:v4 date:location[0] metadata:?];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)enterAutomaticTransitionWithSuggestedConfig:(id)a3 date:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [(NLWorkout *)v10 setDateOfLastAutoTransitionStart:v8];
  [(NLWorkout *)v10 setSuggestedAutoTransitionConfiguration:location[0]];
  sessionActivity = v10->_sessionActivity;
  v7 = [(WOMultiSportWorkoutTracker *)v10->_multisportWorkoutTracker autoTransitionMetadata];
  [NLSessionActivity insertOrUpdateMetadata:"insertOrUpdateMetadata:forceTopLevel:" forceTopLevel:?];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(NLSessionActivity *)v10->_sessionActivity enterAutomaticTransition];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didEnterManualTransitionWithDate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_setupForActivityType:(id)a3 startDate:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = [(FIUIFormattingManager *)v10->_formattingManager unitManager];
  v7 = [v6 userDistanceHKUnitForActivityType:location[0]];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(NLWorkout *)v10 _createZoneTracker:v7 activityType:location[0], v4];
  [(NLWorkout *)v10 _updateDistanceSplitsTracker:location[0] multiSportLegStartDate:v8];
  [(NLWorkout *)v10 _updateTimeSplitsTracker:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didEnterNewLeg:(id)a3 date:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = v10;
  v7 = [location[0] configuration];
  v6 = [v7 currentActivityType];
  [NLWorkout _setupForActivityType:v5 startDate:"_setupForActivityType:startDate:"];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)enterNewLeg:(id)a3 date:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v24 = [(NLWorkout *)v34 dateOfLastAutoTransitionStart];
  v30 = 0;
  v25 = 0;
  if (v24)
  {
    v31 = [(NLWorkout *)v34 suggestedAutoTransitionConfiguration];
    v30 = 1;
    v25 = v31 != 0;
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  *&v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v25)
  {
    v20 = v32;
    v21 = [(NLWorkout *)v34 dateOfLastAutoTransitionStart];
    v22 = [v20 compare:?];
    MEMORY[0x277D82BD8](v21);
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
      v17 = [(NLWorkout *)v34 dateOfLastAutoTransitionStart];
      v5 = [(NSDate *)v17 dateByAddingTimeInterval:1.0];
      v6 = v32;
      v32 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v17);
    }

    _HKInitializeLogging();
    v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NLWorkout *)v34 suggestedAutoTransitionConfiguration];
      v15 = [(NLWorkout *)v34 dateOfLastAutoTransitionStart];
      __os_log_helper_16_2_3_8_64_8_64_8_64(v35, v16, v15, v32);
      _os_log_impl(&dword_20AEA4000, v26, OS_LOG_TYPE_DEFAULT, "[MultiSport] Adding cached automatic transition %@ with start %@ end %@", v35, 0x20u);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v26, 0);
    v13 = [(NLSessionController *)v34->_sessionController workoutSession];
    v12 = [(NLWorkout *)v34 suggestedAutoTransitionConfiguration];
    v11 = [(NLWorkout *)v34 dateOfLastAutoTransitionStart];
    [HKWorkoutSession beginNewActivityWithConfiguration:v13 date:"beginNewActivityWithConfiguration:date:metadata:" metadata:v12];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = [(NLSessionController *)v34->_sessionController workoutSession];
    [(HKWorkoutSession *)v14 endCurrentActivityOnDate:v32];
    *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    [(NLWorkout *)v34 _clearTransitionMetadata];
  }

  [(NLWorkout *)v34 setDateOfLastAutoTransitionStart:v4];
  [(NLWorkout *)v34 setSuggestedAutoTransitionConfiguration:0];
  v9 = v34;
  v10 = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v9 date:"_beginNewActivityFromConfiguration:date:"];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didRestoreActivityType:(id)a3 startDate:(id)a4 autoTransitionStartDate:(id)a5 autoTransitionUUID:(id)a6
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  if (v28)
  {
    [(NLWorkout *)v31 setDateOfLastAutoTransitionStart:v28];
    v18 = objc_alloc_init(MEMORY[0x277CCDC38]);
    [(NLWorkout *)v31 setSuggestedAutoTransitionConfiguration:?];
    *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v19 = [(NLWorkout *)v31 suggestedAutoTransitionConfiguration];
    [(HKWorkoutConfiguration *)v19 setActivityType:83];
    *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v20 = v27;
    v21 = [(NLWorkout *)v31 suggestedAutoTransitionConfiguration];
    [(HKWorkoutConfiguration *)v21 setSuggestedActivityUUID:v20];
    *&v8 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    [(NLSessionActivity *)v31->_sessionActivity enterAutomaticTransition];
  }

  else
  {
    [(NLWorkout *)v31 setDateOfLastAutoTransitionStart:?];
    [(NLWorkout *)v31 setSuggestedAutoTransitionConfiguration:0];
  }

  v14 = [location[0] configuration];
  v13 = [v14 currentActivityType];
  [v12 _setupForActivityType:? startDate:?];
  MEMORY[0x277D82BD8](v13);
  *&v9 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = v31;
  v16 = [location[0] configuration];
  [NLWorkout _beginNewActivityFromConfiguration:v15 date:"_beginNewActivityFromConfiguration:date:"];
  *&v10 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v26 = [(NLSessionActivity *)v31->_sessionActivity builder];
  v17 = [(HKLiveWorkoutBuilder *)v26 workoutActivities];
  v25 = [v17 lastObject];
  *&v11 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [(NLSessionActivity *)v31->_sessionActivity _recoverIntoActivity:v25, v11];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
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

- (void)sessionActivity:(id)a3 willEndWithHKWorkoutSnapshot:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(NLWorkout *)v8 endingDelegate];
  [(NLWorkoutEndingDelegate *)v5 workout:v8 willEndWithHKWorkoutSnapshot:v6 endReason:v8->_endReason];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)sessionActivity:(id)a3 didUpdateWorkout:(id)a4 workoutIsFinal:(BOOL)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  objc_storeStrong(&v11->_hkWorkout, v9);
  if (a5)
  {
    v6 = [(NLWorkout *)v11 endingDelegate];
    [(NLWorkoutEndingDelegate *)v6 workout:v11 didEndWithHKWorkout:v9 endReason:v11->_endReason];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = [(NLWorkout *)v11 endingDelegate];
    [(NLWorkoutEndingDelegate *)v5 workout:v11 didUpdateHKWorkout:v9];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didDiscardSessionActivity:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5->_discarded = 1;
  v3 = [(NLWorkout *)v5 endingDelegate];
  [(NLWorkoutEndingDelegate *)v3 didDiscardWorkout:v5];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldAutoDiscardBasedOnDuration:(double)a3
{
  if (self->_disableAutoDiscard)
  {
    return 0;
  }

  if (self->_endReason == 14)
  {
    return 1;
  }

  return self->_endReason != 13 && self->_endReason != 12 && a3 <= NLWorkoutAutoDiscardDurationLimit();
}

- (void)currentMetricPlatterTypeDidChange:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(NLWorkout *)v10 analyticsEventBuilder];
  v7 = location[0];
  [(NLWorkout *)v10 elapsedTime];
  [(NLAnalyticsWorkoutEventBuilder *)v8 recordMetricPlatterType:v7 atElapsedTime:?];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if ([(NLSessionActivity *)v10->_sessionActivity isInSession])
  {
    sessionActivity = v10->_sessionActivity;
    v6 = [(NLWorkout *)v10 analyticsEventBuilder];
    v5 = [(NLAnalyticsWorkoutEventBuilder *)v6 encodedMetricPlatterStatistics];
    [NLSessionActivity insertOrUpdateMetadata:"insertOrUpdateMetadata:forceTopLevel:" forceTopLevel:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)workoutBuddyIsActive
{
  v3 = [(NLWorkout *)self sessionActivity];
  v4 = [(NLSessionActivity *)v3 configuration];
  v8 = 0;
  v6 = 0;
  LOBYTE(v5) = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)v4 configureWithWorkoutVoiceMotivationWithShouldLog:0])
  {
    v9 = [(NLWorkout *)self sessionActivity];
    v8 = 1;
    v7 = [(NLSessionActivity *)v9 configuration];
    v6 = 1;
    v5 = ![(WOCoreLiveWorkoutConfiguration *)v7 isWorkoutBuddyMuted];
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v3);
  return v5 & 1;
}

- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ((a4 == 3 || a4 == 8 || a4 == 5) && a5 == 6)
  {
    [(FIUIStateMachine *)v8->_stateMachine event:4];
  }

  else if (a5 == 10)
  {
    [(FIUIStateMachine *)v8->_stateMachine event:5];
  }

  else if (a5 == 7)
  {
    [(NLWorkout *)v8 _evaluateEnded];
  }

  else if (a4 == 4 || a5 != 3)
  {
    if (a4 == 6 && a5 == 8)
    {
      [(FIUIStateMachine *)v8->_stateMachine event:3];
      [(NLAnalyticsWorkoutEventBuilder *)v8->_analyticsEventBuilder recordAutoPause];
    }

    else if (a4 == 6 && a5 == 5)
    {
      [(FIUIStateMachine *)v8->_stateMachine event:3];
    }

    else if (a5 == 6)
    {
      [(FIUIStateMachine *)v8->_stateMachine event:2];
    }
  }

  else
  {
    [(FIUIStateMachine *)v8->_stateMachine event:3];
    [(NLAnalyticsWorkoutEventBuilder *)v8->_analyticsEventBuilder recordManualPause];
  }

  [(NLWorkout *)v8 updateObserversWithPausedReasonsForStateChange:a5];
  objc_storeStrong(location, 0);
}

- (void)updateObserversWithPausedReasonsForStateChange:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v9 = [(NLWorkout *)self sessionActivity];
  IsPaused_1 = 1;
  if (!NLSessionActivityIsActive_1(v9))
  {
    IsPaused_1 = NLSessionActivityStateIsPaused_1(v14);
  }

  MEMORY[0x277D82BD8](v9);
  if (IsPaused_1)
  {
    v13 = 0;
    switch(v14)
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
    obj = MEMORY[0x277D82BE0](v16->_stateObservers);
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
        [v12 workout:v16 pausedReasonsDidUpdate:v13];
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

- (void)sessionController:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = a4;
  v35 = a5;
  if (__PAIR128__(a4, a5) == __PAIR128__(3, 4))
  {
    if (v38->_intervalWorkoutTracker)
    {
      v34 = [(WOIntervalWorkoutTracker *)v38->_intervalWorkoutTracker configuration];
      v33 = [v34 hkWorkoutConfiguration];
      v32 = [v34 hkWorkoutConfigurationMetadata];
      _HKInitializeLogging();
      v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(NLWorkout *)v38 startDate];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v40, v23, v33, v32);
        _os_log_impl(&dword_20AEA4000, v31, v30, "[interval] Beginning a first activity at date %@ with config %@, metadata %@", v40, 0x20u);
        MEMORY[0x277D82BD8](v23);
      }

      objc_storeStrong(&v31, 0);
      v19 = v38;
      v18 = v33;
      v20 = [(NLWorkout *)v38 startDate];
      [NLWorkout _beginNewActivityWithHKConfiguration:v19 date:"_beginNewActivityWithHKConfiguration:date:metadata:" metadata:v18];
      *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      intervalWorkoutTracker = v38->_intervalWorkoutTracker;
      v22 = [(NLWorkout *)v38 startDate];
      [(WOIntervalWorkoutTracker *)intervalWorkoutTracker beginFirstActivityWithDate:?];
      *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      [(WOIntervalWorkoutTracker *)v38->_intervalWorkoutTracker setFirstActivityStarted:1, v6];
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    else if (v38->_multisportWorkoutTracker)
    {
      v29 = [(WOMultiSportWorkoutTracker *)v38->_multisportWorkoutTracker configuration];
      v28 = [v29 hkWorkoutConfiguration];
      v27 = [v29 hkWorkoutConfigurationMetadata];
      _HKInitializeLogging();
      v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(NLWorkout *)v38 startDate];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v39, v17, v28, v27);
        _os_log_impl(&dword_20AEA4000, v26, OS_LOG_TYPE_DEFAULT, "[multisport] Beginning a first activity at date %@ with config %@, metadata %@", v39, 0x20u);
        MEMORY[0x277D82BD8](v17);
      }

      objc_storeStrong(&v26, 0);
      v15 = v38;
      v14 = v28;
      v16 = [(NLWorkout *)v38 startDate];
      [NLWorkout _beginNewActivityWithHKConfiguration:v15 date:"_beginNewActivityWithHKConfiguration:date:metadata:" metadata:v14];
      *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
      [(WOMultiSportWorkoutTracker *)v38->_multisportWorkoutTracker setFirstActivityStarted:1, v7];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
    }
  }

  else if (v35 == 9)
  {
    v11 = v38;
    v13 = [location[0] workoutSession];
    v12 = [v13 endDate];
    [(NLWorkout *)v11 endCollectionWithEndDate:?];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  else if (v35 == 12)
  {
    [(NLSessionActivity *)v38->_sessionActivity removeSessionStateObserver:v38->_sessionController];
    if (!v38->_endReason)
    {
      [(NLWorkout *)v38 endTrackingWithEndReason:18];
    }

    v10 = [location[0] workoutSession];
    v9 = [v10 endDate];
    [v8 endCollectionWithEndDate:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionController:(id)a3 didRecieveWorkoutEvent:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [(NLSessionController *)v12->_sessionController workoutSession];
  v9 = [(HKWorkoutSession *)v8 isGymKitSession];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if ((v9 & 1) == 0)
  {
    sessionActivity = v12->_sessionActivity;
    v13[0] = v10;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{1, v4}];
    [(NLSessionActivity *)sessionActivity addWorkoutEvents:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionController:(id)a3 didSuggestWorkoutConfiguration:(id)a4 date:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  _HKInitializeLogging();
  v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, v21, v22);
    _os_log_impl(&dword_20AEA4000, v20, v19, "[multisport] We got a suggested change at date %@ to workout configuration %@", v25, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  objc_initWeak(&v18, v24->_multisportWorkoutTracker);
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

- (void)endCollectionWithEndDate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(NLSessionActivity *)v7->_sessionActivity activityType];
  v5 = [(FIUIWorkoutActivityType *)v4 requiresSessionStopDateForEndCollection];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5)
  {
    [(NLSessionActivity *)v7->_sessionActivity _endCollectionWithEndDate:location[0], v3];
  }

  else
  {
    [(NLSessionActivity *)v7->_sessionActivity _endCollection];
  }

  objc_storeStrong(location, 0);
}

- (void)sessionEncounteredSessionError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v15->_sessionActivity removeSessionStateObserver:v15->_sessionController];
  if (!v15->_endReason)
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
      v7 = [location[0] domain];
      v6 = [v3 stringWithFormat:@"Domain: %@", v7];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Code: %ld", objc_msgSend(location[0], "code")];
      [WOAutoBugCaptureReporter reportSnapshotWithType:v4 subtype:"reportSnapshotWithType:subtype:context:thresholdValues:" context:v8 thresholdValues:v6];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v9, 0);
    }

    [(NLWorkout *)v15 endTrackingWithEndReason:v13];
  }

  if ([(NLSessionActivity *)v15->_sessionActivity state]== 10)
  {
    [(NLSessionActivity *)v15->_sessionActivity _endCollection];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didUpdateWorkoutLocationType:(int64_t)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  if (a3 == 2)
  {
    [(NLSessionActivity *)v14->_sessionActivity setLocationTypeToIndoor:1];
    v13[0] = [MEMORY[0x277CBEB38] dictionary];
    [v13[0] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4C0]];
    [(NLSessionActivity *)v14->_sessionActivity insertOrUpdateMetadata:v13[0] forceTopLevel:0];
    v10 = [(NLSessionActivity *)v14->_sessionActivity builder];
    v9 = [(HKLiveWorkoutBuilder *)v10 additionalDataSources];
    v11 = [v9 containsObject:v14->_routesDataSource];
    MEMORY[0x277D82BD8](v9);
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      v6 = [(NLSessionActivity *)v14->_sessionActivity builder];
      v5 = [(HKLiveWorkoutBuilder *)v6 additionalDataSources];
      v12 = [v5 mutableCopy];
      MEMORY[0x277D82BD8](v5);
      *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      [v12 removeObject:{v14->_routesDataSource, v4}];
      v8 = [v12 copy];
      v7 = [(NLSessionActivity *)v14->_sessionActivity builder];
      [(HKLiveWorkoutBuilder *)v7 setAdditionalDataSources:v8];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v14->_routesDataSource, 0);
      [(NLSessionActivity *)v14->_sessionActivity removeMetadata:*MEMORY[0x277D0A7A0] forceTopLevel:1];
      [(NLSessionActivity *)v14->_sessionActivity removeMetadata:*MEMORY[0x277D0A790] forceTopLevel:1];
      [(NLSessionActivity *)v14->_sessionActivity removeMetadata:*MEMORY[0x277CCC488] forceTopLevel:1];
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(v13, 0);
  }
}

+ (unint64_t)_workoutEndReasonForHKErrorCode:(int64_t)a3
{
  if (a3 == 8)
  {
    return 4;
  }

  if (a3 == 1200)
  {
    return 19;
  }

  return 17;
}

- (void)alertSource:(id)a3 didTriggerAlert:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(NLWorkout *)v8 workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)v5 alertSource:v8 didTriggerAlert:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)alertSource:(id)a3 speakUtterance:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(NLWorkout *)v8 workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)v5 alertSource:v8 speakUtterance:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canTriggerAlerts
{
  v3 = [(NLWorkout *)self workoutAlertDelegate];
  v4 = [(NLWorkoutAlertDelegate *)v3 canTriggerAlerts];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)progressTracker:(id)a3 didProgressTowardsGoal:(id)a4 completionFactor:(double)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(NLWorkout *)v10 progressDelegate];
  [(NLWorkoutProgressDelegate *)v7 workout:v10 didProgressTowardsGoal:v8 completionFactor:a5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NLSessionActivity *)v7->_sessionActivity insertLocations:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)completedActivityRing:(int64_t)a3 activitySummary:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_initWeak(&v12, v16);
  queue = dispatch_get_global_queue(-2, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __51__NLWorkout_completedActivityRing_activitySummary___block_invoke;
  v9 = &unk_277D89430;
  v10 = MEMORY[0x277D82BE0](location);
  v11[1] = v14;
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

- (void)activityRingsUpdatedWithSummary:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_saveTargetZoneMetadata
{
  v4 = [(NLWorkout *)self activeZoneTracker];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v4)
  {
    v3 = [(NLWorkout *)self activeZoneTracker];
    [v3 saveTargetZonesMetadata];
    MEMORY[0x277D82BD8](v3);
  }
}

- (BOOL)shouldSuppressAlert:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [(NLSessionActivity *)v22->_sessionActivity configuration];
  v18 = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)v17 isUltraMode])
  {
    v18 = [location[0] type] != 26;
  }

  *&v3 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v15 = [(NLSessionActivity *)v22->_sessionActivity configuration];
    v16 = [(WOCoreLiveWorkoutConfiguration *)v15 isMultiSport];
    *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v16)
    {
      v23 = [(WOMultiSportWorkoutTracker *)v22->_multisportWorkoutTracker currentlyInTransition];
    }

    else
    {
      v13 = [(NLSessionActivity *)v22->_sessionActivity configuration];
      v14 = [(WOCoreLiveWorkoutConfiguration *)v13 isInterval];
      v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      if (v14)
      {
        if ([location[0] type] == 12)
        {
          v23 = 1;
          goto LABEL_23;
        }

        v11 = [(NLSessionActivity *)v22->_sessionActivity activityType];
        v12 = [WOTargetAlertsBridge intervalTargetAlertsEnabledForActivityType:?];
        v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
        if (!v12)
        {
          v23 = ([location[0] type] - 8) <= 2;
          goto LABEL_23;
        }
      }

      v9 = +[WOCoreTrackRunningCoordinator shared];
      v19 = 0;
      v10 = 0;
      if ([(WOCoreTrackRunningCoordinator *)v9 trackModeEnabledLocal])
      {
        v20 = [(NLSessionActivity *)v22->_sessionActivity activityType];
        v19 = 1;
        v10 = [WOTrackAlertsBridge lapAlertsEnabledForActivityType:?];
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10)
      {
        v23 = [location[0] type] == 6;
      }

      else if ([location[0] isPowerAlert])
      {
        v8 = 1;
        if ([(NLWorkout *)v22 experienceType]!= 2)
        {
          v8 = [(NLWorkout *)v22 experienceType]== 1;
        }

        v23 = v8;
      }

      else
      {
        v23 = 0;
      }
    }
  }

LABEL_23:
  objc_storeStrong(location, 0);
  return v23 & 1;
}

- (void)unitPreferencesUpdatedWithUnitManager:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = location[0];
  v6 = [(NLWorkout *)v10 activityType];
  v8 = [v5 userDistanceHKUnitForActivityType:?];
  MEMORY[0x277D82BD8](v6);
  _HKInitializeLogging();
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_66(v11, v10, v8);
    _os_log_impl(&dword_20AEA4000, v7, OS_LOG_TYPE_DEFAULT, "[Workout] Workout %{public}@ updating user distance unit to %{public}@", v11, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  v4 = [(NLWorkout *)v10 activeZoneTracker];
  [v4 updateDistanceUnit:v8];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(NLSessionActivitySplitsTracker *)v10->_splitsTracker updateDistanceUnit:v8, v3];
  [(NLSessionActivity *)v10->_sessionActivity updateDistanceUnit:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)wristStateUpdatedWithOnWrist:(BOOL)a3
{
  if (!a3)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:1 eventSource:?];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)onChargerStateUpdatedWith:(BOOL)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:1 eventSource:?];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)addActivityObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_activityObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeActivityObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_activityObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
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
  v9->_gpsUnavailable = !v7;
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dataProvider:(id)a3 didReceiveSegmentMarker:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v8 = [WOSegmentAlert alloc];
  v7 = v12;
  v9 = [(NLSessionActivity *)v14->_sessionActivity activityType];
  v4 = [(NLSessionActivity *)v14->_sessionActivity activityMoveMode];
  v11 = [(WOSegmentAlert *)v8 initWithWorkoutAlertType:26 segmentMarker:v7 activityType:v9 activityMoveMode:v4 gpsAvailable:!v14->_gpsUnavailable shouldHideTime:0];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(NLWorkout *)v14 workoutAlertDelegate];
  [(NLWorkoutAlertDelegate *)v10 alertSource:v14 didTriggerAlert:v11];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)activityHeartRateDidBecomeStale:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdateWorkout:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
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